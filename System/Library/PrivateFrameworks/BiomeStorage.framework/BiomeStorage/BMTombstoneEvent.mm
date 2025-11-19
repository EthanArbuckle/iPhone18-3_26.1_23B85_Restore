@interface BMTombstoneEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMTombstoneEvent)initWithCoder:(id)a3;
- (BMTombstoneEvent)initWithProto:(id)a3;
- (BMTombstoneEvent)initWithProtoData:(id)a3;
- (BMTombstoneEvent)initWithSegmentName:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 eventTimestamp:(double)a6 reason:(unint64_t)a7 policyID:(id)a8;
- (BOOL)isEqual:(id)a3;
- (id)_initWithSegmentName:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 eventTimestamp:(double)a6 reason:(unint64_t)a7 policyID:(id)a8 processName:(id)a9;
- (id)encodeAsProto;
- (id)jsonDictionary;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMTombstoneEvent

- (id)encodeAsProto
{
  v2 = [(BMTombstoneEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(BMPBTombstoneEvent *)v3 setSegmentName:?];
  [(BMPBTombstoneEvent *)v3 setOffset:?];
  [(BMPBTombstoneEvent *)v3 setLength:?];
  [(BMPBTombstoneEvent *)v3 setEventTimestamp:?];
  if (self->_deletionReason - 1 < 4)
  {
    deletionReason = self->_deletionReason;
  }

  else
  {
    deletionReason = 0;
  }

  [(BMPBTombstoneEvent *)v3 setReason:?];
  [(BMPBTombstoneEvent *)v3 setPolicyID:?];
  [(BMPBTombstoneEvent *)v3 setProcessName:?];

  return v3;
}

- (BMTombstoneEvent)initWithSegmentName:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 eventTimestamp:(double)a6 reason:(unint64_t)a7 policyID:(id)a8
{
  v14 = MEMORY[0x1E696AE30];
  v15 = a8;
  v16 = a3;
  v17 = [v14 processInfo];
  v18 = [v17 processName];

  v19 = [(BMTombstoneEvent *)self _initWithSegmentName:v16 offset:a4 length:a5 eventTimestamp:a7 reason:v15 policyID:v18 processName:a6];
  return v19;
}

- (id)_initWithSegmentName:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 eventTimestamp:(double)a6 reason:(unint64_t)a7 policyID:(id)a8 processName:(id)a9
{
  v16 = a3;
  v17 = a8;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = BMTombstoneEvent;
  v19 = [(BMTombstoneEvent *)&v27 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v20 = [v16 copy];
    segmentName = v19->_segmentName;
    v19->_segmentName = v20;

    v19->_offset = a4;
    v19->_length = a5;
    v19->_eventTimestamp = a6;
    v19->_deletionReason = a7;
    v22 = [v17 copy];
    policyID = v19->_policyID;
    v19->_policyID = v22;

    v24 = [v18 copy];
    processName = v19->_processName;
    v19->_processName = v24;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_segmentName hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_offset];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_length];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTimestamp];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_deletionReason];
  v11 = [v10 hash];
  v12 = v11 ^ [(NSString *)self->_policyID hash];
  v13 = v12 ^ [(NSString *)self->_processName hash];

  return v9 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    segmentName = self->_segmentName;
    if ((!(segmentName | *(v5 + 2)) || [(NSString *)segmentName isEqual:?]) && self->_offset == *(v5 + 3) && self->_length == *(v5 + 4) && self->_eventTimestamp == v5[7] && self->_deletionReason == *(v5 + 5) && ((policyID = self->_policyID, !(policyID | *(v5 + 6))) || [(NSString *)policyID isEqual:?]))
    {
      processName = self->_processName;
      if (processName | *(v5 + 8))
      {
        v9 = [(NSString *)processName isEqual:?];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
    v8 = v7;
    if (v7)
    {
      *(v7 + 8) = 2;
    }
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMTombstoneEvent eventWithData:a4 dataVersion:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)jsonDictionary
{
  v18[7] = *MEMORY[0x1E69E9840];
  v17[0] = @"segmentName";
  segmentName = self->_segmentName;
  v4 = segmentName;
  if (!segmentName)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v4;
  v17[1] = @"offset";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_offset];
  v18[1] = v5;
  v17[2] = @"length";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_length];
  v18[2] = v6;
  v17[3] = @"deletionReason";
  v7 = self->_deletionReason - 1;
  if (v7 > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E8338B78[v7];
  }

  v18[3] = v8;
  v17[4] = @"policyID";
  policyID = self->_policyID;
  v10 = policyID;
  if (!policyID)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = v10;
  v17[5] = @"eventTimestamp";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTimestamp];
  v18[5] = v11;
  v17[6] = @"processName";
  processName = self->_processName;
  v13 = processName;
  if (!processName)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[6] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];
  if (!processName)
  {
  }

  if (!policyID)
  {
  }

  if (!segmentName)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMTombstoneEvent)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPBTombstoneEvent *)v5 segmentName];
    v7 = [(BMPBTombstoneEvent *)v5 offset];
    v8 = [(BMPBTombstoneEvent *)v5 length];
    v9 = [(BMPBTombstoneEvent *)v5 eventTimestamp];
    v10 = [(BMPBTombstoneEvent *)v5 reason]- 1;
    if (v10 < 4)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(BMPBTombstoneEvent *)v5 policyID];
    v13 = [(BMPBTombstoneEvent *)v5 processName];
    self = [(BMTombstoneEvent *)self _initWithSegmentName:v6 offset:v7 length:v8 eventTimestamp:v11 reason:v12 policyID:v13 processName:v9];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BMTombstoneEvent)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[BMPBTombstoneEvent alloc] initWithData:v4];

  if (v5)
  {
    self = [(BMTombstoneEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMTombstoneEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"data"];
  [v4 encodeInt64:objc_msgSend(objc_opt_class() forKey:{"latestDataVersion"), @"dver"}];
}

- (BMTombstoneEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v5 || (v6 = [v4 decodeInt64ForKey:@"dver"], HIDWORD(v6)))
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_opt_class() eventWithData:v5 dataVersion:v6];
  }

  return v7;
}

+ (void)eventWithData:(int)a1 dataVersion:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1C928A000, a2, OS_LOG_TYPE_ERROR, "Unable to decode BMTombstoneEvent with dataVersion %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end