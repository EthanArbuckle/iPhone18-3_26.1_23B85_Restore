@interface FSBlockDeviceBufferResource
+ (id)bufferFromResource:(id)a3;
+ (id)dynamicCast:(id)a3;
- (BOOL)asynchronousMetadataFlushWithError:(id *)a3;
- (BOOL)delayedMetadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (BOOL)metadataClear:(id)a3 withDelayedWrites:(BOOL)a4 error:(id *)a5;
- (BOOL)metadataFlushWithError:(id *)a3;
- (BOOL)metadataPurge:(id)a3 error:(id *)a4;
- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 readAheadExtents:(id *)a6 readAheadCount:(int64_t)a7 error:(id *)a8;
- (BOOL)metadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (FSBlockDeviceBufferResource)initWithCoder:(id)a3;
- (id)initBufferFromResource:(id)a3;
- (unint64_t)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (unint64_t)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
- (void)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6;
- (void)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation FSBlockDeviceBufferResource

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = FSBlockDeviceBufferResource;
  [(FSBlockDeviceResource *)&v6 encodeWithCoder:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v5);
  }

  [v4 encodeObject:self->_buffer forKey:@"FSResource.buffer"];
  [v4 encodeInteger:self->_headerLength forKey:@"FSResource.headerLength"];
  [v4 encodeInteger:self->_footerLength forKey:@"FSResource.footerLength"];
  [v4 encodeInteger:self->_size forKey:@"FSResource.size"];
}

- (FSBlockDeviceBufferResource)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  v10.receiver = self;
  v10.super_class = FSBlockDeviceBufferResource;
  v5 = [(FSBlockDeviceResource *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"FSResource.buffer"];
    buffer = v5->_buffer;
    v5->_buffer = v6;

    v5->_headerLength = [v4 decodeIntegerForKey:@"FSResource.headerLength"];
    v5->_footerLength = [v4 decodeIntegerForKey:@"FSResource.footerLength"];
    v5->_size = [v4 decodeIntegerForKey:@"FSResource.size"];
  }

  return v5;
}

- (id)initBufferFromResource:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = FSBlockDeviceBufferResource;
  v5 = [(FSBlockDeviceResource *)&v30 initWithResource:v4];
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

  v11 = [(FSBlockDeviceResource *)v6 blockSize];
  v12 = [(FSBlockDeviceResource *)v6 blockCount]* v11;
  v6->_size = v12;
  headerLength = v6->_headerLength;
  if (headerLength > v12 || v6->_footerLength + headerLength > v12)
  {
    v6->_headerLength = v12;
    v6->_footerLength = 0;
  }

  v14 = [(NSMutableData *)v6->_buffer mutableBytes];
  v15 = v6->_headerLength;
  v29 = 0;
  v16 = [v4 readInto:v14 startingAt:0 length:v15 error:&v29];
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

    v21 = [(NSMutableData *)v6->_buffer mutableBytes];
    v22 = v6->_headerLength;
    footerLength = v6->_footerLength;
    v24 = v6->_size - footerLength;
    v28 = 0;
    v25 = [v4 readInto:v21 + v22 startingAt:v24 length:footerLength error:&v28];
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

+ (id)bufferFromResource:(id)a3
{
  v3 = a3;
  v4 = [[FSBlockDeviceBufferResource alloc] initBufferFromResource:v3];

  return v4;
}

- (void)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = [(FSBlockDeviceResource *)self fsExecQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__FSBlockDeviceBufferResource_readInto_startingAt_length_completionHandler___block_invoke;
  v13[3] = &unk_278FED470;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 enqueue:v13];
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

- (unint64_t)readInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v10 = self;
  objc_sync_enter(v10);
  if ([(FSBlockDeviceResource *)v10 terminated])
  {
    v11 = fs_errorForPOSIXError(5);
    if (a6)
    {
      v11 = v11;
      *a6 = v11;
    }

    objc_sync_exit(v10);
    return 0;
  }

  objc_sync_exit(v10);

  if (!a3)
  {
    v14 = 14;
LABEL_13:
    v17 = fs_errorForPOSIXError(v14);
    if (a6)
    {
      v17 = v17;
      *a6 = v17;
    }

    return 0;
  }

  headerLength = v10->_headerLength;
  if (headerLength > a4)
  {
    if (a5 + a4 <= headerLength)
    {
      v13 = [(NSMutableData *)v10->_buffer mutableBytes]+ a4;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  size = v10->_size;
  v16 = size - v10->_footerLength;
  if (a4 <= v16 || a5 + a4 > size)
  {
LABEL_12:
    v14 = 22;
    goto LABEL_13;
  }

  v13 = [(NSMutableData *)v10->_buffer mutableBytes]+ headerLength + a4 - v16;
LABEL_19:
  memcpy(a3, v13, a5);
  if (a6)
  {
    *a6 = 0;
  }

  return a5;
}

- (void)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = fs_errorForPOSIXError(45);
  (*(a6 + 2))(v7, 0, v8);
}

- (unint64_t)writeFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v7 = fs_errorForPOSIXError(45);
  if (a6)
  {
    v7 = v7;
    *a6 = v7;
  }

  return 0;
}

- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v7 = fs_errorForPOSIXError(45);
  if (a6)
  {
    v7 = v7;
    *a6 = v7;
  }

  return 0;
}

- (BOOL)metadataReadInto:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 readAheadExtents:(id *)a6 readAheadCount:(int64_t)a7 error:(id *)a8
{
  v9 = fs_errorForPOSIXError(45);
  if (a8)
  {
    v9 = v9;
    *a8 = v9;
  }

  return 0;
}

- (BOOL)metadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v7 = fs_errorForPOSIXError(45);
  if (a6)
  {
    v7 = v7;
    *a6 = v7;
  }

  return 0;
}

- (BOOL)delayedMetadataWriteFrom:(void *)a3 startingAt:(int64_t)a4 length:(unint64_t)a5 error:(id *)a6
{
  v7 = fs_errorForPOSIXError(45);
  if (a6)
  {
    v7 = v7;
    *a6 = v7;
  }

  return 0;
}

- (BOOL)asynchronousMetadataFlushWithError:(id *)a3
{
  v4 = fs_errorForPOSIXError(45);
  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  return 0;
}

- (BOOL)metadataFlushWithError:(id *)a3
{
  v4 = fs_errorForPOSIXError(45);
  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  return 0;
}

- (BOOL)metadataClear:(id)a3 withDelayedWrites:(BOOL)a4 error:(id *)a5
{
  v6 = fs_errorForPOSIXError(45);
  if (a5)
  {
    v6 = v6;
    *a5 = v6;
  }

  return 0;
}

- (BOOL)metadataPurge:(id)a3 error:(id *)a4
{
  v5 = fs_errorForPOSIXError(45);
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

+ (id)dynamicCast:(id)a3
{
  v3 = a3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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