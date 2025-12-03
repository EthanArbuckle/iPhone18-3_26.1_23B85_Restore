@interface FSBlockDeviceBufferResource
+ (id)bufferFromResource:(id)resource;
+ (id)dynamicCast:(id)cast;
- (BOOL)asynchronousMetadataFlushWithError:(id *)error;
- (BOOL)delayedMetadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (BOOL)metadataClear:(id)clear withDelayedWrites:(BOOL)writes error:(id *)error;
- (BOOL)metadataFlushWithError:(id *)error;
- (BOOL)metadataPurge:(id)purge error:(id *)error;
- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length readAheadExtents:(id *)extents readAheadCount:(int64_t)count error:(id *)error;
- (BOOL)metadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (FSBlockDeviceBufferResource)initWithCoder:(id)coder;
- (id)initBufferFromResource:(id)resource;
- (unint64_t)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (unint64_t)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler;
- (void)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler;
@end

@implementation FSBlockDeviceBufferResource

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = FSBlockDeviceBufferResource;
  [(FSBlockDeviceResource *)&v6 encodeWithCoder:coderCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v5);
  }

  [coderCopy encodeObject:self->_buffer forKey:@"FSResource.buffer"];
  [coderCopy encodeInteger:self->_headerLength forKey:@"FSResource.headerLength"];
  [coderCopy encodeInteger:self->_footerLength forKey:@"FSResource.footerLength"];
  [coderCopy encodeInteger:self->_size forKey:@"FSResource.size"];
}

- (FSBlockDeviceBufferResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  v10.receiver = self;
  v10.super_class = FSBlockDeviceBufferResource;
  v5 = [(FSBlockDeviceResource *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"FSResource.buffer"];
    buffer = v5->_buffer;
    v5->_buffer = v6;

    v5->_headerLength = [coderCopy decodeIntegerForKey:@"FSResource.headerLength"];
    v5->_footerLength = [coderCopy decodeIntegerForKey:@"FSResource.footerLength"];
    v5->_size = [coderCopy decodeIntegerForKey:@"FSResource.size"];
  }

  return v5;
}

- (id)initBufferFromResource:(id)resource
{
  resourceCopy = resource;
  v30.receiver = self;
  v30.super_class = FSBlockDeviceBufferResource;
  v5 = [(FSBlockDeviceResource *)&v30 initWithResource:resourceCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_19;
  }

  v7 = 0x100000 / [(FSBlockDeviceResource *)v5 blockSize];
  v8 = [(FSBlockDeviceResource *)v6 blockSize]+ v7;
  v6->_headerLength = v8 * [(FSBlockDeviceResource *)v6 blockSize];
  v6->_footerLength = [(FSBlockDeviceResource *)v6 blockSize]* v8;
  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v6->_footerLength + v6->_headerLength];
  buffer = v6->_buffer;
  v6->_buffer = v9;

  blockSize = [(FSBlockDeviceResource *)v6 blockSize];
  v12 = [(FSBlockDeviceResource *)v6 blockCount]* blockSize;
  v6->_size = v12;
  headerLength = v6->_headerLength;
  if (headerLength > v12 || v6->_footerLength + headerLength > v12)
  {
    v6->_headerLength = v12;
    v6->_footerLength = 0;
  }

  mutableBytes = [(NSMutableData *)v6->_buffer mutableBytes];
  v15 = v6->_headerLength;
  v29 = 0;
  v16 = [resourceCopy readInto:mutableBytes startingAt:0 length:v15 error:&v29];
  v17 = v29;
  if (!v17)
  {
    if (v16 < v6->_headerLength)
    {
      v18 = fskit_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceBufferResource initBufferFromResource:?];
      }

      goto LABEL_9;
    }

    mutableBytes2 = [(NSMutableData *)v6->_buffer mutableBytes];
    v22 = v6->_headerLength;
    footerLength = v6->_footerLength;
    v24 = v6->_size - footerLength;
    v28 = 0;
    v25 = [resourceCopy readInto:mutableBytes2 + v22 startingAt:v24 length:footerLength error:&v28];
    v26 = v28;
    if (v26)
    {
      v18 = v26;
      v19 = fskit_std_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceBufferResource initBufferFromResource:];
      }

      goto LABEL_8;
    }

    if (v25 < v6->_footerLength)
    {
      v18 = fskit_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceBufferResource initBufferFromResource:?];
      }

      goto LABEL_9;
    }

LABEL_19:
    v20 = v6;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = fskit_std_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [FSBlockDeviceBufferResource initBufferFromResource:];
  }

LABEL_8:

LABEL_9:
  v20 = 0;
LABEL_20:

  return v20;
}

+ (id)bufferFromResource:(id)resource
{
  resourceCopy = resource;
  v4 = [[FSBlockDeviceBufferResource alloc] initBufferFromResource:resourceCopy];

  return v4;
}

- (void)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler
{
  handlerCopy = handler;
  fsExecQueue = [(FSBlockDeviceResource *)self fsExecQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__FSBlockDeviceBufferResource_readInto_startingAt_length_completionHandler___block_invoke;
  v13[3] = &unk_278FED470;
  intoCopy = into;
  atCopy = at;
  lengthCopy = length;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [fsExecQueue enqueue:v13];
}

void __76__FSBlockDeviceBufferResource_readInto_startingAt_length_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v7 = 0;
  [v2 readInto:v3 startingAt:v4 length:v5 error:&v7];
  v6 = v7;
  (*(a1[5] + 16))();
}

- (unint64_t)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FSBlockDeviceResource *)selfCopy terminated])
  {
    v11 = fs_errorForPOSIXError(5);
    if (error)
    {
      v11 = v11;
      *error = v11;
    }

    objc_sync_exit(selfCopy);
    return 0;
  }

  objc_sync_exit(selfCopy);

  if (!into)
  {
    v14 = 14;
LABEL_13:
    v17 = fs_errorForPOSIXError(v14);
    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    return 0;
  }

  headerLength = selfCopy->_headerLength;
  if (headerLength > at)
  {
    if (length + at <= headerLength)
    {
      v13 = [(NSMutableData *)selfCopy->_buffer mutableBytes]+ at;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  size = selfCopy->_size;
  v16 = size - selfCopy->_footerLength;
  if (at <= v16 || length + at > size)
  {
LABEL_12:
    v14 = 22;
    goto LABEL_13;
  }

  v13 = [(NSMutableData *)selfCopy->_buffer mutableBytes]+ headerLength + at - v16;
LABEL_19:
  memcpy(into, v13, length);
  if (error)
  {
    *error = 0;
  }

  return length;
}

- (void)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = fs_errorForPOSIXError(45);
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (unint64_t)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  v7 = fs_errorForPOSIXError(45);
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  v7 = fs_errorForPOSIXError(45);
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length readAheadExtents:(id *)extents readAheadCount:(int64_t)count error:(id *)error
{
  v9 = fs_errorForPOSIXError(45);
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return 0;
}

- (BOOL)metadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  v7 = fs_errorForPOSIXError(45);
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)delayedMetadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  v7 = fs_errorForPOSIXError(45);
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)asynchronousMetadataFlushWithError:(id *)error
{
  v4 = fs_errorForPOSIXError(45);
  if (error)
  {
    v4 = v4;
    *error = v4;
  }

  return 0;
}

- (BOOL)metadataFlushWithError:(id *)error
{
  v4 = fs_errorForPOSIXError(45);
  if (error)
  {
    v4 = v4;
    *error = v4;
  }

  return 0;
}

- (BOOL)metadataClear:(id)clear withDelayedWrites:(BOOL)writes error:(id *)error
{
  v6 = fs_errorForPOSIXError(45);
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)metadataPurge:(id)purge error:(id *)error
{
  v5 = fs_errorForPOSIXError(45);
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

+ (id)dynamicCast:(id)cast
{
  castCopy = cast;
  if (objc_opt_isKindOfClass())
  {
    v4 = castCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)initBufferFromResource:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initBufferFromResource:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initBufferFromResource:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initBufferFromResource:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

@end