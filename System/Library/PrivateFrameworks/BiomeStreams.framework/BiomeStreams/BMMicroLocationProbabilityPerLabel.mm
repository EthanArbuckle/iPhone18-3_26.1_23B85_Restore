@interface BMMicroLocationProbabilityPerLabel
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMicroLocationProbabilityPerLabel)initWithLabelIdentifier:(id)a3 probability:(double)a4;
- (BMMicroLocationProbabilityPerLabel)initWithProto:(id)a3;
- (BMMicroLocationProbabilityPerLabel)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMicroLocationProbabilityPerLabel

- (BMMicroLocationProbabilityPerLabel)initWithLabelIdentifier:(id)a3 probability:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BMMicroLocationProbabilityPerLabel;
  v7 = [(BMMicroLocationProbabilityPerLabel *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    labelIdentifier = v7->_labelIdentifier;
    v7->_labelIdentifier = v8;

    v7->_probability = a4;
  }

  return v7;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BMMicroLocationProbabilityPerLabel eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMMicroLocationProbabilityPerLabel *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMMicroLocationProbabilityPerLabel)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasLabel]&& ([v5 hasProbability]& 1) != 0)
      {
        v6 = objc_alloc(MEMORY[0x1E696AFB0]);
        v7 = [v5 label];
        v8 = [v6 initWithUUIDString:v7];
        [v5 probability];
        self = [(BMMicroLocationProbabilityPerLabel *)self initWithLabelIdentifier:v8 probability:?];

        v9 = self;
LABEL_13:

        goto LABEL_14;
      }

      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BMMicroLocationProbabilityPerLabel initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMMicroLocationProbabilityPerLabel initWithProto:];
      }
    }

    v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BMMicroLocationProbabilityPerLabel)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBProbabilityPerLabel alloc] initWithData:v4];

    self = [(BMMicroLocationProbabilityPerLabel *)self initWithProto:v5];
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
  v4 = [(NSUUID *)self->_labelIdentifier UUIDString];
  [v3 setLabel:v4];

  [v3 setProbability:self->_probability];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_labelIdentifier hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_probability];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = v7;
  labelIdentifier = self->_labelIdentifier;
  v10 = labelIdentifier;
  if (!labelIdentifier)
  {
    v3 = [v7 labelIdentifier];
    if (!v3)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = self->_labelIdentifier;
  }

  v4 = [v8 labelIdentifier];
  if (![(NSUUID *)v10 isEqual:v4])
  {
    v12 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = 1;
LABEL_10:
  probability = self->_probability;
  [v8 probability];
  v12 = vabdd_f64(probability, v14) < 2.22044605e-16;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!labelIdentifier)
  {
  }

LABEL_15:
  return v12;
}

@end