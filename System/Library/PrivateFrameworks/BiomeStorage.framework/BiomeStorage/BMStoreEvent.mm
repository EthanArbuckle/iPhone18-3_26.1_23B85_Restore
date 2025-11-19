@interface BMStoreEvent
- (BMStoreEvent)initWithCoder:(id)a3;
- (BMStoreEvent)initWithEventBody:(id)a3 timestamp:(double)a4;
- (BMStoreEvent)initWithFrame:(id)a3 segmentName:(id)a4 error:(unsigned __int8)a5 eventCategory:(unint64_t)a6 metadata:(id)a7 dataType:(Class)a8;
- (BMStoreEvent)initWithFrame:(id)a3 segmentName:(id)a4 frameOffset:(unint64_t)a5 eventBodyData:(id)a6 eventBodyDataVersion:(unsigned int)a7 dataType:(Class)a8 eventCategory:(unint64_t)a9 timestamp:(double)a10 metadata:(id)a11 error:(unsigned __int8)a12;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)bookmark;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMStoreEvent

- (id)bookmark
{
  v3 = [(BMStoreEvent *)self metadata];
  v4 = [v3 streamId];
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  segmentName = self->_segmentName;

  if (segmentName)
  {
    v6 = [BMStoreBookmark alloc];
    v3 = [(BMStoreEvent *)self metadata];
    v7 = [v3 streamId];
    v8 = [(BMStoreBookmark *)v6 initWithStream:v7 segment:self->_segmentName iterationStartTime:self->_frameOffset offset:CFAbsoluteTimeGetCurrent()];

LABEL_5:
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BMStoreEvent)initWithFrame:(id)a3 segmentName:(id)a4 error:(unsigned __int8)a5 eventCategory:(unint64_t)a6 metadata:(id)a7 dataType:(Class)a8
{
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [v16 offset];
  v18 = [v16 data];
  v19 = [v16 dataVersion];
  [v16 creationTimestamp];
  LOBYTE(v22) = a5;
  v20 = [(BMStoreEvent *)self initWithFrame:v16 segmentName:v15 frameOffset:v17 eventBodyData:v18 eventBodyDataVersion:v19 dataType:a8 eventCategory:a6 timestamp:v14 metadata:v22 error:?];

  return v20;
}

- (BMStoreEvent)initWithFrame:(id)a3 segmentName:(id)a4 frameOffset:(unint64_t)a5 eventBodyData:(id)a6 eventBodyDataVersion:(unsigned int)a7 dataType:(Class)a8 eventCategory:(unint64_t)a9 timestamp:(double)a10 metadata:(id)a11 error:(unsigned __int8)a12
{
  v20 = a3;
  v21 = a4;
  v22 = a6;
  v23 = a11;
  v31.receiver = self;
  v31.super_class = BMStoreEvent;
  v24 = [(BMStoreEvent *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_frame, a3);
    v26 = [v21 copy];
    segmentName = v25->_segmentName;
    v25->_segmentName = v26;

    v25->_frameOffset = a5;
    if (v22)
    {
      v28 = [v22 copy];
    }

    else
    {
      v28 = [v20 data];
    }

    eventBodyData = v25->_eventBodyData;
    v25->_eventBodyData = v28;

    v25->_eventBodyDataVersion = a7;
    v25->_eventCategory = a9;
    if (!a8)
    {
      a8 = [v23 eventDataClass];
    }

    v25->_dataType = a8;
    v25->_timestamp = a10;
    objc_storeStrong(&v25->_metadata, a11);
    v25->_error = a12;
  }

  return v25;
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

- (BMStoreEvent)initWithCoder:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"segmentName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frameOffset"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classString"];
  if (!v7)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v10 = [v4 allowedClasses];
    v11 = [v9 setByAddingObjectsFromSet:v10];

    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"metadata"];
    v13 = [v12 eventDataClass];

    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (![(BMStoreEvent *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"classString" coder:v4 errorDomain:@"com.apple.Biome.BMStoreEvent" errorCode:-1])
  {
    v13 = NSClassFromString(v7);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v4 allowedClasses];
      v15 = [v14 containsObject:v13];

      if ((v15 & 1) == 0)
      {
        v16 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v47 = 16;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __30__BMStoreEvent_initWithCoder___block_invoke_40;
        v43[3] = &unk_1E8338B28;
        v43[4] = buf;
        if (initWithCoder__onceToken_39 != -1)
        {
          dispatch_once(&initWithCoder__onceToken_39, v43);
        }

        v17 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v16, v17))
        {
          v18 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          _os_log_impl(&dword_1C928A000, v16, v17, "Event class '%@' missing from %@ allowedClasses", buf, 0x16u);
        }
      }

      v12 = 0;
      if (v13)
      {
LABEL_14:
        if (!v12)
        {
          v19 = MEMORY[0x1E695DFD8];
          v45[0] = objc_opt_class();
          v45[1] = v13;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
          v21 = [v19 setWithArray:v20];

          v22 = [v4 allowedClasses];
          v23 = [v21 setByAddingObjectsFromSet:v22];

          v12 = [v4 decodeObjectOfClasses:v23 forKey:@"metadata"];
        }

        v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventBody"];
        if (![(BMStoreEvent *)self checkAndReportDecodingFailureIfNeededForid:v24 key:@"eventBody" coder:v4 errorDomain:@"com.apple.Biome.BMStoreEvent" errorCode:-1])
        {
          v42 = v6;
          v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDataVersion"];
          if ([(BMStoreEvent *)self checkAndReportDecodingFailureIfNeededForid:v25 key:@"eventDataVersion" coder:v4 errorDomain:@"com.apple.Biome.BMStoreEvent" errorCode:-1])
          {
            v8 = 0;
          }

          else
          {
            v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventCategory"];
            v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
            [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeError"];
            v29 = v41 = v25;
            v39 = [v42 unsignedIntValue];
            v38 = [v41 unsignedIntValue];
            v30 = v5;
            v31 = [v40 unsignedIntValue];
            [v28 doubleValue];
            v33 = v32;
            LOBYTE(v37) = [v29 unsignedIntValue];
            v36 = v31;
            v5 = v30;
            self = [(BMStoreEvent *)self initWithFrame:0 segmentName:v30 frameOffset:v39 eventBodyData:v24 eventBodyDataVersion:v38 dataType:v13 eventCategory:v33 timestamp:v36 metadata:v12 error:v37];

            v25 = v41;
            v8 = self;
          }

          v6 = v42;
          goto LABEL_29;
        }

LABEL_26:
        v8 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v26 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v47 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__BMStoreEvent_initWithCoder___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (initWithCoder__onceToken != -1)
      {
        dispatch_once(&initWithCoder__onceToken, block);
      }

      v27 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v26, v27))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&dword_1C928A000, v26, v27, "Class %@ doesn't conform to BMStoreData", buf, 0xCu);
      }

      v12 = 0;
    }

LABEL_24:
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [BMStoreEvent initWithCoder:];
    }

    goto LABEL_26;
  }

  v8 = 0;
LABEL_30:

  v34 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  eventBodyData = self->_eventBodyData;
  v13 = v4;
  if (eventBodyData)
  {
    [v4 encodeObject:eventBodyData forKey:@"eventBody"];
  }

  else
  {
    v6 = [(BMStoreData *)self->_eventBody serialize];
    [v13 encodeObject:v6 forKey:@"eventBody"];
  }

  v7 = NSStringFromClass(self->_dataType);
  [v13 encodeObject:v7 forKey:@"classString"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_eventBodyDataVersion];
  [v13 encodeObject:v8 forKey:@"eventDataVersion"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v13 encodeObject:v9 forKey:@"timestamp"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_error];
  [v13 encodeObject:v10 forKey:@"storeError"];

  [v13 encodeObject:self->_metadata forKey:@"metadata"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventCategory];
  [v13 encodeObject:v11 forKey:@"eventCategory"];

  [v13 encodeObject:self->_segmentName forKey:@"segmentName"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_frameOffset];
  [v13 encodeObject:v12 forKey:@"frameOffset"];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [(BMStoreEvent *)self eventBody];
  if (!v8)
  {
    v3 = [v7 eventBody];
    if (!v3)
    {
      v10 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v4 = [(BMStoreEvent *)self eventBody];
  v9 = [v7 eventBody];
  v10 = [v4 isEqual:v9];

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  v12 = [(BMStoreEvent *)self metadata];
  if (!v12)
  {
    v4 = [v7 metadata];
    if (!v4)
    {
      v15 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v13 = [(BMStoreEvent *)self metadata];
  v14 = [v7 metadata];
  v15 = [v13 isEqual:v14];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_15:

  segmentName = self->_segmentName;
  if (segmentName | v7[3])
  {
    v17 = [(NSString *)segmentName isEqualToString:?];
  }

  else
  {
    v17 = 1;
  }

  if ((v10 & v15) == 1 && (-[BMStoreEvent timestamp](self, "timestamp"), v19 = v18, [v7 timestamp], v19 == v20) && (v21 = -[BMStoreEvent eventCategory](self, "eventCategory"), v21 == objc_msgSend(v7, "eventCategory")))
  {
    v11 = (self->_frameOffset == v7[4]) & v17;
  }

  else
  {
    v11 = 0;
  }

LABEL_24:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(BMStoreEvent *)self eventBody];
  v4 = [v3 hash];
  v5 = MEMORY[0x1E696AD98];
  [(BMStoreEvent *)self timestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];
  v8 = [(BMStoreEvent *)self metadata];
  v9 = v7 ^ v4 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMStoreEvent eventCategory](self, "eventCategory")}];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_frameOffset];
  v13 = v9 ^ v11 ^ [v12 hash];
  v14 = [(NSString *)self->_segmentName hash];

  return v13 ^ v14;
}

- (BMStoreEvent)initWithEventBody:(id)a3 timestamp:(double)a4
{
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(BMStoreEvent *)self initWithFrame:v8 error:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventBody, a3);
    v10->_timestamp = a4;
    v10->_dataType = objc_opt_class();
  }

  return v10;
}

- (void)eventBodyKeepingBackingData:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)eventWithEventType:(objc_class *)a1 eventData:(NSObject *)a2 dataVersion:.cold.1(objc_class *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1C928A000, a2, OS_LOG_TYPE_ERROR, "Event class - %@ doesn't - conform to BMStoreData protocol or Maybe the framework containing the event class isn't linked. We can't deserialize", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end