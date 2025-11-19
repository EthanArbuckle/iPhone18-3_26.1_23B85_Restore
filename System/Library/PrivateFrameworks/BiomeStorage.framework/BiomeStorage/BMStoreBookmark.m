@interface BMStoreBookmark
- (BMStoreBookmark)initWithCoder:(id)a3;
- (BMStoreBookmark)initWithProto:(id)a3;
- (BMStoreBookmark)initWithProtoData:(id)a3;
- (BMStoreBookmark)initWithStream:(id)a3 segment:(id)a4 iterationStartTime:(double)a5 offset:(unint64_t)a6;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionDict;
- (id)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMStoreBookmark

- (id)encodeAsProto
{
  v2 = [(BMStoreBookmark *)self proto];
  v3 = [v2 data];

  return v3;
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

- (BMStoreBookmark)initWithStream:(id)a3 segment:(id)a4 iterationStartTime:(double)a5 offset:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v19.receiver = self;
  v19.super_class = BMStoreBookmark;
  v12 = [(BMStoreBookmark *)&v19 init];
  if (!v12)
  {
    goto LABEL_12;
  }

  if (!v10)
  {
    [BMStoreBookmark initWithStream:segment:iterationStartTime:offset:];
  }

  if (![v10 length])
  {
    [BMStoreBookmark initWithStream:segment:iterationStartTime:offset:];
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    [BMStoreBookmark initWithStream:segment:iterationStartTime:offset:];
    goto LABEL_6;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (![v11 length])
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
    v15 = v10;
  }

  objc_storeStrong(&v12->_streamId, v15);

  v16 = [v11 copy];
  segmentName = v12->_segmentName;
  v12->_segmentName = v16;

  v12->_iterationStartTime = a5;
  v12->_offset = a6;
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
  v6 = [(BMStoreBookmark *)self _descriptionDict];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@ - %@", v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BMStoreBookmark *)v5 streamId];
      v7 = [(BMStoreBookmark *)self streamId];
      if ([v6 isEqual:v7])
      {
        v8 = [(BMStoreBookmark *)v5 segmentName];
        v9 = [(BMStoreBookmark *)self segmentName];
        if ([v8 isEqual:v9])
        {
          v10 = [(BMStoreBookmark *)v5 offset];
          v11 = v10 == [(BMStoreBookmark *)self offset];
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
  v3 = [(BMStoreBookmark *)self streamId];
  v4 = [v3 hash];
  v5 = [(BMStoreBookmark *)self segmentName];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[BMStoreBookmark offset](self, "offset")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BMStoreBookmark)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[BMPBStoreBookmark alloc] initWithData:v4];

  if (v5)
  {
    self = [(BMStoreBookmark *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BMStoreBookmark)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 streamId];
    v7 = [v5 segmentName];
    [v5 iterationStartTime];
    v9 = v8;
    v10 = [v5 offset];

    self = [(BMStoreBookmark *)self initWithStream:v6 segment:v7 iterationStartTime:v10 offset:v9];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", v11, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", v11, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMStoreBookmark *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (BMStoreBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v7)
  {
    self = [(BMStoreBookmark *)self initWithProtoData:v7];
    v8 = self;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"streamId"];
    if ([(BMStoreBookmark *)self checkAndReportDecodingFailureIfNeededForid:v9 key:@"streamId" coder:v4 errorDomain:v6 errorCode:-1])
    {
      v8 = 0;
    }

    else
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"segmentName"];
      if (-[BMStoreBookmark checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:", v10, @"segmentName", v4, v6, -1) || ([v4 decodeDoubleForKey:@"iterationStartTime"], v12 = v11, -[BMStoreBookmark checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"iterationStartTime", v4, v6, -1)))
      {
        v8 = 0;
      }

      else
      {
        v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offset"];
        if ([(BMStoreBookmark *)self checkAndReportDecodingFailureIfNeededForid:v13 key:@"offset" coder:v4 errorDomain:v6 errorCode:-1])
        {
          v8 = 0;
        }

        else
        {
          self = -[BMStoreBookmark initWithStream:segment:iterationStartTime:offset:](self, "initWithStream:segment:iterationStartTime:offset:", v9, v10, [v13 unsignedIntValue], v12);
          v8 = self;
        }
      }
    }
  }

  return v8;
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