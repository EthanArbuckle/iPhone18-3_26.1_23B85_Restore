@interface BMSemanticLocationEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSemanticLocationEvent)initWithProto:(id)a3;
- (BMSemanticLocationEvent)initWithProtoData:(id)a3;
- (BMSemanticLocationEvent)initWithUserSpecificPlaceType:(unint64_t)a3 placeType:(unint64_t)a4 loiIdentifier:(id)a5 starting:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSemanticLocationEvent

- (BMSemanticLocationEvent)initWithUserSpecificPlaceType:(unint64_t)a3 placeType:(unint64_t)a4 loiIdentifier:(id)a5 starting:(BOOL)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMSemanticLocationEvent;
  v12 = [(BMEventBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_userSpecificPlaceType = a3;
    v12->_placeType = a4;
    objc_storeStrong(&v12->_loiIdentifier, a5);
    v13->_starting = a6;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = BMSemanticLocationEvent_v1;
  }

  else
  {
    v4 = a1;
  }

  v5 = a3;
  v6 = [[v4 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMSemanticLocationEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSemanticLocationEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = typeFromBMPBSemanticLocationUserSpecificPlaceType([v5 userSpecificPlaceType]);
      v7 = [v5 placeType];
      v8 = v7;
      if (v7 >= 4)
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
        v9 = qword_184D27C08[v7];
      }

      v12 = [v5 loiIdentifier];
      self = [(BMSemanticLocationEvent *)self initWithUserSpecificPlaceType:v6 placeType:v9 loiIdentifier:v12 starting:[v5 starting]];

      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSemanticLocationEvent initWithProto:];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BMSemanticLocationEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSemanticLocationEvent alloc] initWithData:v4];

    self = [(BMSemanticLocationEvent *)self initWithProto:v5];
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
  [v3 setStarting:{-[BMSemanticLocationEvent isStarting](self, "isStarting")}];
  v4 = [(BMSemanticLocationEvent *)self userSpecificPlaceType];
  v5 = v4;
  if (v4 > 1)
  {
    if (v4 != 2 && v4 != 3 && v4 != 4)
    {
      goto LABEL_18;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (v4 <= 1)
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
  v7 = [(BMSemanticLocationEvent *)self placeType];
  v8 = v7;
  if (v7 >= 4)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMSemanticLocationEvent *)v8 proto];
    }
  }

  else if ((v6 & 1) == 0)
  {
    v9 = dword_184D27C30[v7];
    [v3 setUserSpecificPlaceType:v5];
    [v3 setPlaceType:v9];
    v10 = [(BMSemanticLocationEvent *)self loiIdentifier];
    [v3 setLoiIdentifier:v10];

    v11 = v3;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(BMSemanticLocationEvent *)self isStarting];
    if (v7 != [v6 isStarting] || (v8 = -[BMSemanticLocationEvent userSpecificPlaceType](self, "userSpecificPlaceType"), v8 != objc_msgSend(v6, "userSpecificPlaceType")) || (v9 = -[BMSemanticLocationEvent placeType](self, "placeType"), v9 != objc_msgSend(v6, "placeType")))
    {
      v13 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v10 = [(BMSemanticLocationEvent *)self loiIdentifier];
    if (v10 || ([v6 loiIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [(BMSemanticLocationEvent *)self loiIdentifier];
      v12 = [v6 loiIdentifier];
      v13 = [v11 isEqualToString:v12];

      if (v10)
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
  v9 = [(BMSemanticLocationEvent *)self loiIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end