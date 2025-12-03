@interface BMPOICategoryEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPOICategoryEvent)initWithPOICategory:(id)category rank:(unint64_t)rank timeIntervalSince1970:(double)since1970;
- (BMPOICategoryEvent)initWithProto:(id)proto;
- (BMPOICategoryEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMPOICategoryEvent

- (BMPOICategoryEvent)initWithPOICategory:(id)category rank:(unint64_t)rank timeIntervalSince1970:(double)since1970
{
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = BMPOICategoryEvent;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_poiCategory, category);
    v11->_rank = rank;
    v11->_timeIntervalSince1970 = since1970;
  }

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonDict
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"poiCategory";
  poiCategory = [(BMPOICategoryEvent *)self poiCategory];
  v11[0] = poiCategory;
  v10[1] = @"rank";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMPOICategoryEvent rank](self, "rank")}];
  v11[1] = v4;
  v10[2] = @"timeIntervalSince1970";
  v5 = MEMORY[0x1E696AD98];
  [(BMPOICategoryEvent *)self timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMPOICategoryEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMPOICategoryEvent *)v6 json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  proto = [(BMPOICategoryEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMPOICategoryEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(BMPOICategoryEvent *)self initWithProto:v11];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  poiCategory = [v5 poiCategory];
  rank = [v5 rank];
  [v5 timeIntervalSince1970];
  v9 = v8;

  self = [(BMPOICategoryEvent *)self initWithPOICategory:poiCategory rank:rank timeIntervalSince1970:v9];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMPOICategoryEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBPOICategoryEvent alloc] initWithData:dataCopy];

    self = [(BMPOICategoryEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  poiCategory = [(BMPOICategoryEvent *)self poiCategory];
  [v3 setPoiCategory:poiCategory];

  [v3 setRank:{-[BMPOICategoryEvent rank](self, "rank")}];
  [(BMPOICategoryEvent *)self timeIntervalSince1970];
  [v3 setTimeIntervalSince1970:?];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v6 = equalCopy;
  rank = [(BMPOICategoryEvent *)self rank];
  rank2 = [v6 rank];
  [(BMPOICategoryEvent *)self timeIntervalSince1970];
  v10 = v9;
  [v6 timeIntervalSince1970];
  v12 = v11;
  poiCategory = [(BMPOICategoryEvent *)self poiCategory];
  if (!poiCategory)
  {
    poiCategory2 = [v6 poiCategory];
    if (!poiCategory2)
    {
      v16 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  poiCategory3 = [(BMPOICategoryEvent *)self poiCategory];
  poiCategory4 = [v6 poiCategory];
  v16 = [poiCategory3 isEqual:poiCategory4];

  if (!poiCategory)
  {
    goto LABEL_8;
  }

LABEL_9:

  if (v10 == v12)
  {
    v17 = (rank == rank2) & v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_13:
  return v17;
}

@end