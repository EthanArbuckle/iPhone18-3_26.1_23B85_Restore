@interface BMSemanticLocationEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSemanticLocationEvent)initWithProto:(id)proto;
- (BMSemanticLocationEvent)initWithProtoData:(id)data;
- (BMSemanticLocationEvent)initWithUserSpecificPlaceType:(unint64_t)type placeType:(unint64_t)placeType loiIdentifier:(id)identifier starting:(BOOL)starting;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSemanticLocationEvent

- (BMSemanticLocationEvent)initWithUserSpecificPlaceType:(unint64_t)type placeType:(unint64_t)placeType loiIdentifier:(id)identifier starting:(BOOL)starting
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = BMSemanticLocationEvent;
  v12 = [(BMEventBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_userSpecificPlaceType = type;
    v12->_placeType = placeType;
    objc_storeStrong(&v12->_loiIdentifier, identifier);
    v13->_starting = starting;
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userSpecificPlaceType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_placeType];
  loiIdentifier = self->_loiIdentifier;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v8 = [v3 initWithFormat:@"SemanticLocation event with userSpecificPlaceType: %@, placeType: %@, loiIdentifier: %@, starting: %@", v4, v5, loiIdentifier, v7];

  return v8;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    selfCopy = BMSemanticLocationEvent_v1;
  }

  else
  {
    selfCopy = self;
  }

  dataCopy = data;
  v6 = [[selfCopy alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMSemanticLocationEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSemanticLocationEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      v6 = typeFromBMPBSemanticLocationUserSpecificPlaceType([v5 userSpecificPlaceType]);
      placeType = [v5 placeType];
      v8 = placeType;
      if (placeType >= 4)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMSemanticLocationEvent initWithProto:v8];
        }

        v9 = 0;
      }

      else
      {
        v9 = qword_184D27C08[placeType];
      }

      loiIdentifier = [v5 loiIdentifier];
      self = [(BMSemanticLocationEvent *)self initWithUserSpecificPlaceType:v6 placeType:v9 loiIdentifier:loiIdentifier starting:[v5 starting]];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSemanticLocationEvent initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMSemanticLocationEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSemanticLocationEvent alloc] initWithData:dataCopy];

    self = [(BMSemanticLocationEvent *)self initWithProto:v5];
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
  [v3 setStarting:{-[BMSemanticLocationEvent isStarting](self, "isStarting")}];
  userSpecificPlaceType = [(BMSemanticLocationEvent *)self userSpecificPlaceType];
  v5 = userSpecificPlaceType;
  if (userSpecificPlaceType > 1)
  {
    if (userSpecificPlaceType != 2 && userSpecificPlaceType != 3 && userSpecificPlaceType != 4)
    {
      goto LABEL_18;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (userSpecificPlaceType <= 1)
  {
    goto LABEL_7;
  }

LABEL_18:
  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(BMSemanticLocationEvent *)v5 proto];
  }

  v5 = 0xFFFFFFFFLL;
  v6 = 1;
LABEL_8:
  placeType = [(BMSemanticLocationEvent *)self placeType];
  v8 = placeType;
  if (placeType >= 4)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMSemanticLocationEvent *)v8 proto];
    }
  }

  else if ((v6 & 1) == 0)
  {
    v9 = dword_184D27C30[placeType];
    [v3 setUserSpecificPlaceType:v5];
    [v3 setPlaceType:v9];
    loiIdentifier = [(BMSemanticLocationEvent *)self loiIdentifier];
    [v3 setLoiIdentifier:loiIdentifier];

    v11 = v3;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    isStarting = [(BMSemanticLocationEvent *)self isStarting];
    if (isStarting != [v6 isStarting] || (v8 = -[BMSemanticLocationEvent userSpecificPlaceType](self, "userSpecificPlaceType"), v8 != objc_msgSend(v6, "userSpecificPlaceType")) || (v9 = -[BMSemanticLocationEvent placeType](self, "placeType"), v9 != objc_msgSend(v6, "placeType")))
    {
      v13 = 0;
LABEL_11:

      goto LABEL_12;
    }

    loiIdentifier = [(BMSemanticLocationEvent *)self loiIdentifier];
    if (loiIdentifier || ([v6 loiIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      loiIdentifier2 = [(BMSemanticLocationEvent *)self loiIdentifier];
      loiIdentifier3 = [v6 loiIdentifier];
      v13 = [loiIdentifier2 isEqualToString:loiIdentifier3];

      if (loiIdentifier)
      {
LABEL_15:

        goto LABEL_11;
      }
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_15;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSemanticLocationEvent isStarting](self, "isStarting")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMSemanticLocationEvent userSpecificPlaceType](self, "userSpecificPlaceType")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMSemanticLocationEvent placeType](self, "placeType")}];
  v8 = [v7 hash];
  loiIdentifier = [(BMSemanticLocationEvent *)self loiIdentifier];
  v10 = v8 ^ [loiIdentifier hash];

  return v6 ^ v10;
}

@end