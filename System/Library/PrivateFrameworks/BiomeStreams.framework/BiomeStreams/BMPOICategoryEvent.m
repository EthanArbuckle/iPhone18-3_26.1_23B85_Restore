@interface BMPOICategoryEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPOICategoryEvent)initWithPOICategory:(id)a3 rank:(unint64_t)a4 timeIntervalSince1970:(double)a5;
- (BMPOICategoryEvent)initWithProto:(id)a3;
- (BMPOICategoryEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMPOICategoryEvent

- (BMPOICategoryEvent)initWithPOICategory:(id)a3 rank:(unint64_t)a4 timeIntervalSince1970:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = BMPOICategoryEvent;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_poiCategory, a3);
    v11->_rank = a4;
    v11->_timeIntervalSince1970 = a5;
  }

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonDict
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"poiCategory";
  v3 = [(BMPOICategoryEvent *)self poiCategory];
  v11[0] = v3;
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
  v3 = [(BMPOICategoryEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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
  v2 = [(BMPOICategoryEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPOICategoryEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v10 = 0;
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

  v5 = v4;
  v6 = [v5 poiCategory];
  v7 = [v5 rank];
  [v5 timeIntervalSince1970];
  v9 = v8;

  self = [(BMPOICategoryEvent *)self initWithPOICategory:v6 rank:v7 timeIntervalSince1970:v9];
  v10 = self;
LABEL_8:

  return v10;
}

- (BMPOICategoryEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPOICategoryEvent alloc] initWithData:v4];

    self = [(BMPOICategoryEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMPOICategoryEvent *)self poiCategory];
  [v3 setPoiCategory:v4];

  [v3 setRank:{-[BMPOICategoryEvent rank](self, "rank")}];
  [(BMPOICategoryEvent *)self timeIntervalSince1970];
  [v3 setTimeIntervalSince1970:?];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [(BMPOICategoryEvent *)self rank];
  v8 = [v6 rank];
  [(BMPOICategoryEvent *)self timeIntervalSince1970];
  v10 = v9;
  [v6 timeIntervalSince1970];
  v12 = v11;
  v13 = [(BMPOICategoryEvent *)self poiCategory];
  if (!v13)
  {
    v3 = [v6 poiCategory];
    if (!v3)
    {
      v16 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v14 = [(BMPOICategoryEvent *)self poiCategory];
  v15 = [v6 poiCategory];
  v16 = [v14 isEqual:v15];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_9:

  if (v10 == v12)
  {
    v17 = (v7 == v8) & v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_13:
  return v17;
}

@end