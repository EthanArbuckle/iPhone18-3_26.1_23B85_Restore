@interface BMStoreBookmark
- (BMStoreBookmark)initWithCoder:(id)coder;
- (BMStoreBookmark)initWithProto:(id)proto;
- (BMStoreBookmark)initWithProtoData:(id)data;
- (BMStoreBookmark)initWithStream:(id)stream segment:(id)segment iterationStartTime:(double)time offset:(unint64_t)offset;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionDict;
- (id)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMStoreBookmark

- (id)encodeAsProto
{
  proto = [(BMStoreBookmark *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setStreamId:self->_streamId];
  [v3 setSegmentName:self->_segmentName];
  [v3 setIterationStartTime:self->_iterationStartTime];
  [v3 setOffset:LODWORD(self->_offset)];

  return v3;
}

- (BMStoreBookmark)initWithStream:(id)stream segment:(id)segment iterationStartTime:(double)time offset:(unint64_t)offset
{
  streamCopy = stream;
  segmentCopy = segment;
  v19.receiver = self;
  v19.super_class = BMStoreBookmark;
  v12 = [(BMStoreBookmark *)&v19 init];
  if (!v12)
  {
    goto LABEL_12;
  }

  if (!streamCopy)
  {
    [BMStoreBookmark initWithStream:segment:iterationStartTime:offset:];
  }

  if (![streamCopy length])
  {
    [BMStoreBookmark initWithStream:segment:iterationStartTime:offset:];
    if (segmentCopy)
    {
      goto LABEL_6;
    }

LABEL_14:
    [BMStoreBookmark initWithStream:segment:iterationStartTime:offset:];
    goto LABEL_6;
  }

  if (!segmentCopy)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (![segmentCopy length])
  {
    [BMStoreBookmark initWithStream:segment:iterationStartTime:offset:];
  }

  v13 = BMBiomeLibraryStreamIdentifierForPremigratedStreamIdentifier();
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = streamCopy;
  }

  objc_storeStrong(&v12->_streamId, v15);

  v16 = [segmentCopy copy];
  segmentName = v12->_segmentName;
  v12->_segmentName = v16;

  v12->_iterationStartTime = time;
  v12->_offset = offset;
LABEL_12:

  return v12;
}

- (id)_descriptionDict
{
  v11[4] = *MEMORY[0x1E69E9840];
  offset = self->_offset;
  if (offset == 0xFFFFFFFF)
  {
    v4 = @"Start of segment";
  }

  else if (offset == 4294967294)
  {
    v4 = @"End of frames";
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%zu", self->_offset];
  }

  v10[0] = @"streamId";
  v10[1] = @"segmentName";
  segmentName = self->_segmentName;
  v11[0] = self->_streamId;
  v11[1] = segmentName;
  v10[2] = @"iterationStartTime";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_iterationStartTime];
  v10[3] = @"offset";
  v11[2] = v6;
  v11[3] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _descriptionDict = [(BMStoreBookmark *)self _descriptionDict];
  v7 = [_descriptionDict description];
  v8 = [v3 stringWithFormat:@"%@ - %@", v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      streamId = [(BMStoreBookmark *)v5 streamId];
      streamId2 = [(BMStoreBookmark *)self streamId];
      if ([streamId isEqual:streamId2])
      {
        segmentName = [(BMStoreBookmark *)v5 segmentName];
        segmentName2 = [(BMStoreBookmark *)self segmentName];
        if ([segmentName isEqual:segmentName2])
        {
          offset = [(BMStoreBookmark *)v5 offset];
          v11 = offset == [(BMStoreBookmark *)self offset];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  streamId = [(BMStoreBookmark *)self streamId];
  v4 = [streamId hash];
  segmentName = [(BMStoreBookmark *)self segmentName];
  v6 = [segmentName hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[BMStoreBookmark offset](self, "offset")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BMStoreBookmark)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[BMPBStoreBookmark alloc] initWithData:dataCopy];

  if (v5)
  {
    self = [(BMStoreBookmark *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMStoreBookmark)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    streamId = [v5 streamId];
    segmentName = [v5 segmentName];
    [v5 iterationStartTime];
    v9 = v8;
    offset = [v5 offset];

    self = [(BMStoreBookmark *)self initWithStream:streamId segment:segmentName iterationStartTime:offset offset:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMStoreBookmark *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"data"];
}

- (BMStoreBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v7)
  {
    self = [(BMStoreBookmark *)self initWithProtoData:v7];
    selfCopy2 = self;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streamId"];
    if ([(BMStoreBookmark *)self checkAndReportDecodingFailureIfNeededForid:v9 key:@"streamId" coder:coderCopy errorDomain:v6 errorCode:-1])
    {
      selfCopy2 = 0;
    }

    else
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"segmentName"];
      if (-[BMStoreBookmark checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:", v10, @"segmentName", coderCopy, v6, -1) || ([coderCopy decodeDoubleForKey:@"iterationStartTime"], v12 = v11, -[BMStoreBookmark checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"iterationStartTime", coderCopy, v6, -1)))
      {
        selfCopy2 = 0;
      }

      else
      {
        v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offset"];
        if ([(BMStoreBookmark *)self checkAndReportDecodingFailureIfNeededForid:v13 key:@"offset" coder:coderCopy errorDomain:v6 errorCode:-1])
        {
          selfCopy2 = 0;
        }

        else
        {
          self = -[BMStoreBookmark initWithStream:segment:iterationStartTime:offset:](self, "initWithStream:segment:iterationStartTime:offset:", v9, v10, [v13 unsignedIntValue], v12);
          selfCopy2 = self;
        }
      }
    }
  }

  return selfCopy2;
}

- (void)initWithStream:segment:iterationStartTime:offset:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"streamId != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithStream:segment:iterationStartTime:offset:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"[streamId length] != 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithStream:segment:iterationStartTime:offset:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"segmentName != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithStream:segment:iterationStartTime:offset:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"[segmentName length] != 0" object:? file:? lineNumber:? description:?];
}

@end