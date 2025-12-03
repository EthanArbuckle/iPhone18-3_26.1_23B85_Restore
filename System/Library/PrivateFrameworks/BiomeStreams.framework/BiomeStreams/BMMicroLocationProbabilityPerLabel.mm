@interface BMMicroLocationProbabilityPerLabel
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMicroLocationProbabilityPerLabel)initWithLabelIdentifier:(id)identifier probability:(double)probability;
- (BMMicroLocationProbabilityPerLabel)initWithProto:(id)proto;
- (BMMicroLocationProbabilityPerLabel)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMicroLocationProbabilityPerLabel

- (BMMicroLocationProbabilityPerLabel)initWithLabelIdentifier:(id)identifier probability:(double)probability
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = BMMicroLocationProbabilityPerLabel;
  v7 = [(BMMicroLocationProbabilityPerLabel *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    labelIdentifier = v7->_labelIdentifier;
    v7->_labelIdentifier = v8;

    v7->_probability = probability;
  }

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
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
  proto = [(BMMicroLocationProbabilityPerLabel *)self proto];
  data = [proto data];

  return data;
}

- (BMMicroLocationProbabilityPerLabel)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasLabel]&& ([v5 hasProbability]& 1) != 0)
      {
        v6 = objc_alloc(MEMORY[0x1E696AFB0]);
        label = [v5 label];
        v8 = [v6 initWithUUIDString:label];
        [v5 probability];
        self = [(BMMicroLocationProbabilityPerLabel *)self initWithLabelIdentifier:v8 probability:?];

        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMMicroLocationProbabilityPerLabel)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBProbabilityPerLabel alloc] initWithData:dataCopy];

    self = [(BMMicroLocationProbabilityPerLabel *)self initWithProto:v5];
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
  uUIDString = [(NSUUID *)self->_labelIdentifier UUIDString];
  [v3 setLabel:uUIDString];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v7 = equalCopy;
  v8 = v7;
  labelIdentifier = self->_labelIdentifier;
  v10 = labelIdentifier;
  if (!labelIdentifier)
  {
    labelIdentifier = [v7 labelIdentifier];
    if (!labelIdentifier)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = self->_labelIdentifier;
  }

  labelIdentifier2 = [v8 labelIdentifier];
  if (![(NSUUID *)v10 isEqual:labelIdentifier2])
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