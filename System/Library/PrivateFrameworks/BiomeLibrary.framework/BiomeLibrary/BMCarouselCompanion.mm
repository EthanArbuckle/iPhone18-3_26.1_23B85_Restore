@interface BMCarouselCompanion
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCarouselCompanion)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMCarouselCompanion)initWithStarting:(id)starting connected:(id)connected nearby:(id)nearby cloud:(id)cloud;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCarouselCompanion

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMCarouselCompanion hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMCarouselCompanion *)self hasStarting])
      {
        goto LABEL_23;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_23;
      }

      starting = [(BMCarouselCompanion *)self starting];
      if (starting != [v5 starting])
      {
        goto LABEL_23;
      }
    }

    if (-[BMCarouselCompanion hasConnected](self, "hasConnected") || [v5 hasConnected])
    {
      if (![(BMCarouselCompanion *)self hasConnected])
      {
        goto LABEL_23;
      }

      if (![v5 hasConnected])
      {
        goto LABEL_23;
      }

      connected = [(BMCarouselCompanion *)self connected];
      if (connected != [v5 connected])
      {
        goto LABEL_23;
      }
    }

    if (-[BMCarouselCompanion hasNearby](self, "hasNearby") || [v5 hasNearby])
    {
      if (![(BMCarouselCompanion *)self hasNearby])
      {
        goto LABEL_23;
      }

      if (![v5 hasNearby])
      {
        goto LABEL_23;
      }

      nearby = [(BMCarouselCompanion *)self nearby];
      if (nearby != [v5 nearby])
      {
        goto LABEL_23;
      }
    }

    if (!-[BMCarouselCompanion hasCloud](self, "hasCloud") && ![v5 hasCloud])
    {
      LOBYTE(v10) = 1;
      goto LABEL_24;
    }

    if (-[BMCarouselCompanion hasCloud](self, "hasCloud") && [v5 hasCloud])
    {
      cloud = [(BMCarouselCompanion *)self cloud];
      v10 = cloud ^ [v5 cloud] ^ 1;
    }

    else
    {
LABEL_23:
      LOBYTE(v10) = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  LOBYTE(v10) = 0;
LABEL_25:

  return v10;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMCarouselCompanion *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMCarouselCompanion *)self hasConnected])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion connected](self, "connected")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMCarouselCompanion *)self hasNearby])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion nearby](self, "nearby")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMCarouselCompanion *)self hasCloud])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion cloud](self, "cloud")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"connected";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"nearby";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"cloud";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v5)
    {
LABEL_23:
      if (v4)
      {
        goto LABEL_24;
      }

LABEL_30:

      if (v3)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (v3)
  {
    goto LABEL_25;
  }

LABEL_31:

LABEL_25:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMCarouselCompanion)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"connected"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"connected"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"nearby"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nearby"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"cloud"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMCarouselCompanion *)selfCopy3 initWithStarting:v8 connected:v32 nearby:v12 cloud:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cloud"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCarouselCompanion *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasConnected)
  {
    connected = self->_connected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNearby)
  {
    nearby = self->_nearby;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCloud)
  {
    cloud = self->_cloud;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMCarouselCompanion;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_70;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v44 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v44 & 0x7F) << v7;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v35 = 0;
          v36 = 0;
          v18 = 0;
          v5->_hasNearby = 1;
          while (1)
          {
            v44 = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v44 & 0x7F) << v35;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v22 = v36++ > 8;
            if (v22)
            {
              LOBYTE(v23) = 0;
              v24 = &OBJC_IVAR___BMCarouselCompanion__nearby;
              goto LABEL_66;
            }
          }

          v24 = &OBJC_IVAR___BMCarouselCompanion__nearby;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          v25 = 0;
          v26 = 0;
          v18 = 0;
          v5->_hasCloud = 1;
          while (1)
          {
            v44 = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v44 & 0x7F) << v25;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v22 = v26++ > 8;
            if (v22)
            {
              LOBYTE(v23) = 0;
              v24 = &OBJC_IVAR___BMCarouselCompanion__cloud;
              goto LABEL_66;
            }
          }

          v24 = &OBJC_IVAR___BMCarouselCompanion__cloud;
        }
      }

      else if (v15 == 1)
      {
        v30 = 0;
        v31 = 0;
        v18 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          v44 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v44 & 0x7F) << v30;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v22 = v31++ > 8;
          if (v22)
          {
            LOBYTE(v23) = 0;
            v24 = &OBJC_IVAR___BMCarouselCompanion__starting;
            goto LABEL_66;
          }
        }

        v24 = &OBJC_IVAR___BMCarouselCompanion__starting;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasConnected = 1;
        while (1)
        {
          v44 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v44 & 0x7F) << v16;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            LOBYTE(v23) = 0;
            v24 = &OBJC_IVAR___BMCarouselCompanion__connected;
            goto LABEL_66;
          }
        }

        v24 = &OBJC_IVAR___BMCarouselCompanion__connected;
      }

      v23 = (v18 != 0) & ~[fromCopy hasError];
LABEL_66:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_67:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_69:
    v41 = 0;
  }

  else
  {
LABEL_70:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion starting](self, "starting")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion connected](self, "connected")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion nearby](self, "nearby")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarouselCompanion cloud](self, "cloud")}];
  v8 = [v3 initWithFormat:@"BMCarouselCompanion with starting: %@, connected: %@, nearby: %@, cloud: %@", v4, v5, v6, v7];

  return v8;
}

- (BMCarouselCompanion)initWithStarting:(id)starting connected:(id)connected nearby:(id)nearby cloud:(id)cloud
{
  startingCopy = starting;
  connectedCopy = connected;
  nearbyCopy = nearby;
  cloudCopy = cloud;
  v16.receiver = self;
  v16.super_class = BMCarouselCompanion;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v14->_hasStarting = 1;
      v14->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v14->_hasStarting = 0;
      v14->_starting = 0;
    }

    if (connectedCopy)
    {
      v14->_hasConnected = 1;
      v14->_connected = [connectedCopy BOOLValue];
    }

    else
    {
      v14->_hasConnected = 0;
      v14->_connected = 0;
    }

    if (nearbyCopy)
    {
      v14->_hasNearby = 1;
      v14->_nearby = [nearbyCopy BOOLValue];
    }

    else
    {
      v14->_hasNearby = 0;
      v14->_nearby = 0;
    }

    if (cloudCopy)
    {
      v14->_hasCloud = 1;
      v14->_cloud = [cloudCopy BOOLValue];
    }

    else
    {
      v14->_hasCloud = 0;
      v14->_cloud = 0;
    }
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"connected" number:2 type:12 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nearby" number:3 type:12 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cloud" number:4 type:12 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"connected" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nearby" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cloud" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMCarouselCompanion alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end