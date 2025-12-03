@interface BMMicroLocationRestrictedLocalizationEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMicroLocationRestrictedLocalizationEvent)initWithAbsoluteTimeStamp:(double)stamp clientBundleIdentifier:(id)identifier maxProbabilityLabelIdentifier:(id)labelIdentifier maxProbability:(double)probability probabilityVector:(id)vector numDevicesVector:(id)devicesVector;
- (BMMicroLocationRestrictedLocalizationEvent)initWithProto:(id)proto;
- (BMMicroLocationRestrictedLocalizationEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMicroLocationRestrictedLocalizationEvent

- (BMMicroLocationRestrictedLocalizationEvent)initWithAbsoluteTimeStamp:(double)stamp clientBundleIdentifier:(id)identifier maxProbabilityLabelIdentifier:(id)labelIdentifier maxProbability:(double)probability probabilityVector:(id)vector numDevicesVector:(id)devicesVector
{
  identifierCopy = identifier;
  labelIdentifierCopy = labelIdentifier;
  vectorCopy = vector;
  devicesVectorCopy = devicesVector;
  v25.receiver = self;
  v25.super_class = BMMicroLocationRestrictedLocalizationEvent;
  v18 = [(BMMicroLocationRestrictedLocalizationEvent *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_absoluteTimestamp = stamp;
    v20 = [identifierCopy copy];
    clientBundleIdentifier = v19->_clientBundleIdentifier;
    v19->_clientBundleIdentifier = v20;

    v22 = [labelIdentifierCopy copy];
    maxProbabilityLabelIdentifier = v19->_maxProbabilityLabelIdentifier;
    v19->_maxProbabilityLabelIdentifier = v22;

    v19->_maxProbability = probability;
    objc_storeStrong(&v19->_probabilityVector, vector);
    objc_storeStrong(&v19->_numDevicesVector, devicesVector);
  }

  return v19;
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
      +[BMMicroLocationRestrictedLocalizationEvent eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  proto = [(BMMicroLocationRestrictedLocalizationEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMMicroLocationRestrictedLocalizationEvent)initWithProto:(id)proto
{
  v51 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = protoCopy;
      v5 = protoCopy;
      v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v38 = v5;
      probabilityVectors = [v5 probabilityVectors];
      v8 = [probabilityVectors countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v46;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v46 != v10)
            {
              objc_enumerationMutation(probabilityVectors);
            }

            v12 = *(*(&v45 + 1) + 8 * i);
            v13 = [BMMicroLocationProbabilityPerLabel alloc];
            v14 = objc_alloc(MEMORY[0x1E696AFB0]);
            label = [v12 label];
            v16 = [v14 initWithUUIDString:label];
            [v12 probability];
            v17 = [(BMMicroLocationProbabilityPerLabel *)v13 initWithLabelIdentifier:v16 probability:?];
            [v40 addObject:v17];
          }

          v9 = [probabilityVectors countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v9);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = v38;
      numDevicesVectors = [v38 numDevicesVectors];
      v20 = [numDevicesVectors countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v42;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(numDevicesVectors);
            }

            v24 = *(*(&v41 + 1) + 8 * j);
            v25 = [BMMicroLocationNumDevicesPerTechnology alloc];
            technologyString = [v24 technologyString];
            v27 = -[BMMicroLocationNumDevicesPerTechnology initWithTechnology:numDevices:](v25, "initWithTechnology:numDevices:", technologyString, [v24 number]);
            [v6 addObject:v27];
          }

          v21 = [numDevicesVectors countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v21);
      }

      [v38 absoluteTimeStamp];
      v29 = v28;
      clientBundleId = [v38 clientBundleId];
      v31 = objc_alloc(MEMORY[0x1E696AFB0]);
      maxProbabilityLabel = [v38 maxProbabilityLabel];
      v33 = [v31 initWithUUIDString:maxProbabilityLabel];
      [v38 maxProbability];
      self = [(BMMicroLocationRestrictedLocalizationEvent *)self initWithAbsoluteTimeStamp:clientBundleId clientBundleIdentifier:v33 maxProbabilityLabelIdentifier:v40 maxProbability:v6 probabilityVector:v29 numDevicesVector:v34];

      selfCopy = self;
      protoCopy = v39;
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(BMMicroLocationRestrictedLocalizationEvent *)self initWithProto:v18];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BMMicroLocationRestrictedLocalizationEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBMicroLocationRestrictedLocalizationEvent alloc] initWithData:dataCopy];

    self = [(BMMicroLocationRestrictedLocalizationEvent *)self initWithProto:v5];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_probabilityVector, "count")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_numDevicesVector, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_probabilityVector;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        proto = [*(*(&v25 + 1) + 8 * i) proto];
        [v3 addObject:proto];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_numDevicesVector;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        proto2 = [*(*(&v21 + 1) + 8 * j) proto];
        [v4 addObject:proto2];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  v17 = objc_opt_new();
  [v17 setAbsoluteTimeStamp:self->_absoluteTimestamp];
  [v17 setClientBundleId:self->_clientBundleIdentifier];
  uUIDString = [(NSUUID *)self->_maxProbabilityLabelIdentifier UUIDString];
  [v17 setMaxProbabilityLabel:uUIDString];

  [v17 setMaxProbability:self->_maxProbability];
  [v17 setProbabilityVectors:v3];
  [v17 setNumDevicesVectors:v4];

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_clientBundleIdentifier hash];
  v6 = v5 ^ [(NSUUID *)self->_maxProbabilityLabelIdentifier hash]^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxProbability];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_probabilityVector hash];
  v10 = [(NSArray *)self->_numDevicesVector hash];

  return v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_34;
  }

  v7 = equalCopy;
  absoluteTimestamp = self->_absoluteTimestamp;
  [v7 absoluteTimestamp];
  v10 = v9;
  clientBundleIdentifier = self->_clientBundleIdentifier;
  v12 = clientBundleIdentifier;
  if (clientBundleIdentifier)
  {
LABEL_5:
    clientBundleIdentifier = [v7 clientBundleIdentifier];
    v13 = [(NSString *)v12 isEqual:clientBundleIdentifier];

    if (clientBundleIdentifier)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  clientBundleIdentifier2 = [v7 clientBundleIdentifier];
  if (clientBundleIdentifier2)
  {
    v12 = self->_clientBundleIdentifier;
    goto LABEL_5;
  }

  v13 = 1;
LABEL_9:

LABEL_10:
  maxProbabilityLabelIdentifier = self->_maxProbabilityLabelIdentifier;
  v16 = maxProbabilityLabelIdentifier;
  if (maxProbabilityLabelIdentifier)
  {
    goto LABEL_13;
  }

  clientBundleIdentifier = [v7 maxProbabilityLabelIdentifier];
  if (clientBundleIdentifier)
  {
    v16 = self->_maxProbabilityLabelIdentifier;
LABEL_13:
    clientBundleIdentifier = [v7 maxProbabilityLabelIdentifier];
    v17 = [(NSUUID *)v16 isEqual:clientBundleIdentifier];

    if (maxProbabilityLabelIdentifier)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v17 = 1;
LABEL_16:

LABEL_17:
  maxProbability = self->_maxProbability;
  [v7 maxProbability];
  v20 = v19;
  probabilityVector = self->_probabilityVector;
  v22 = probabilityVector;
  if (probabilityVector)
  {
    goto LABEL_20;
  }

  clientBundleIdentifier = [v7 probabilityVector];
  if (clientBundleIdentifier)
  {
    v22 = self->_probabilityVector;
LABEL_20:
    probabilityVector = [v7 probabilityVector];
    v24 = [(NSArray *)v22 isEqual:probabilityVector];

    if (probabilityVector)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v24 = 1;
LABEL_23:

LABEL_24:
  v25 = vabdd_f64(absoluteTimestamp, v10);
  v26 = vabdd_f64(maxProbability, v20);
  numDevicesVector = self->_numDevicesVector;
  v28 = numDevicesVector;
  if (!numDevicesVector)
  {
    clientBundleIdentifier = [v7 numDevicesVector];
    if (!clientBundleIdentifier)
    {
      v30 = 1;
LABEL_30:

      goto LABEL_31;
    }

    v28 = self->_numDevicesVector;
  }

  numDevicesVector = [v7 numDevicesVector];
  v30 = [(NSArray *)v28 isEqual:numDevicesVector];

  if (!numDevicesVector)
  {
    goto LABEL_30;
  }

LABEL_31:
  v31 = (v25 < 2.22044605e-16) & v13 & v17;
  if (v26 >= 2.22044605e-16)
  {
    v31 = 0;
  }

  v14 = v31 & v24 & v30;

LABEL_34:
  return v14;
}

@end