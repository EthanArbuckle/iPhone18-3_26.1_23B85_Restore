@interface BMTombstoneEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMTombstoneEvent)initWithCoder:(id)coder;
- (BMTombstoneEvent)initWithProto:(id)proto;
- (BMTombstoneEvent)initWithProtoData:(id)data;
- (BMTombstoneEvent)initWithSegmentName:(id)name offset:(unint64_t)offset length:(unint64_t)length eventTimestamp:(double)timestamp reason:(unint64_t)reason policyID:(id)d;
- (BOOL)isEqual:(id)equal;
- (id)_initWithSegmentName:(id)name offset:(unint64_t)offset length:(unint64_t)length eventTimestamp:(double)timestamp reason:(unint64_t)reason policyID:(id)d processName:(id)processName;
- (id)encodeAsProto;
- (id)jsonDictionary;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMTombstoneEvent

- (id)encodeAsProto
{
  proto = [(BMTombstoneEvent *)self proto];
  data = [proto data];

  return data;
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

- (BMTombstoneEvent)initWithSegmentName:(id)name offset:(unint64_t)offset length:(unint64_t)length eventTimestamp:(double)timestamp reason:(unint64_t)reason policyID:(id)d
{
  v14 = MEMORY[0x1E696AE30];
  dCopy = d;
  nameCopy = name;
  processInfo = [v14 processInfo];
  processName = [processInfo processName];

  v19 = [(BMTombstoneEvent *)self _initWithSegmentName:nameCopy offset:offset length:length eventTimestamp:reason reason:dCopy policyID:processName processName:timestamp];
  return v19;
}

- (id)_initWithSegmentName:(id)name offset:(unint64_t)offset length:(unint64_t)length eventTimestamp:(double)timestamp reason:(unint64_t)reason policyID:(id)d processName:(id)processName
{
  nameCopy = name;
  dCopy = d;
  processNameCopy = processName;
  v27.receiver = self;
  v27.super_class = BMTombstoneEvent;
  v19 = [(BMTombstoneEvent *)&v27 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v20 = [nameCopy copy];
    segmentName = v19->_segmentName;
    v19->_segmentName = v20;

    v19->_offset = offset;
    v19->_length = length;
    v19->_eventTimestamp = timestamp;
    v19->_deletionReason = reason;
    v22 = [dCopy copy];
    policyID = v19->_policyID;
    v19->_policyID = v22;

    v24 = [processNameCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
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
      [BMTombstoneEvent eventWithData:version dataVersion:v9];
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
  null = segmentName;
  if (!segmentName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
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
  null2 = policyID;
  if (!policyID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null2;
  v17[5] = @"eventTimestamp";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTimestamp];
  v18[5] = v11;
  v17[6] = @"processName";
  processName = self->_processName;
  null3 = processName;
  if (!processName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[6] = null3;
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

- (BMTombstoneEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    segmentName = [(BMPBTombstoneEvent *)v5 segmentName];
    offset = [(BMPBTombstoneEvent *)v5 offset];
    v8 = [(BMPBTombstoneEvent *)v5 length];
    eventTimestamp = [(BMPBTombstoneEvent *)v5 eventTimestamp];
    v10 = [(BMPBTombstoneEvent *)v5 reason]- 1;
    if (v10 < 4)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    policyID = [(BMPBTombstoneEvent *)v5 policyID];
    processName = [(BMPBTombstoneEvent *)v5 processName];
    self = [(BMTombstoneEvent *)self _initWithSegmentName:segmentName offset:offset length:v8 eventTimestamp:v11 reason:policyID policyID:processName processName:eventTimestamp];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMTombstoneEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[BMPBTombstoneEvent alloc] initWithData:dataCopy];

  if (v5)
  {
    self = [(BMTombstoneEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMTombstoneEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"data"];
  [coderCopy encodeInt64:objc_msgSend(objc_opt_class() forKey:{"latestDataVersion"), @"dver"}];
}

- (BMTombstoneEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v5 || (v6 = [coderCopy decodeInt64ForKey:@"dver"], HIDWORD(v6)))
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