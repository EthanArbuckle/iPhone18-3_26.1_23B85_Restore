@interface BMDeviceMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceMetadata)initWithName:(id)name build:(id)build platform:(int)platform supplementalBuild:(id)supplementalBuild rapidSecurityResponsePreReboot:(id)reboot;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceMetadata

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"build" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"platform" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"supplementalBuild" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rapidSecurityResponsePreReboot" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMDeviceMetadata *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMDeviceMetadata *)self name];
      name4 = [v5 name];
      v11 = [name3 isEqual:name4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    build = [(BMDeviceMetadata *)self build];
    build2 = [v5 build];
    v15 = build2;
    if (build == build2)
    {
    }

    else
    {
      build3 = [(BMDeviceMetadata *)self build];
      build4 = [v5 build];
      v18 = [build3 isEqual:build4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    platform = [(BMDeviceMetadata *)self platform];
    if (platform == [v5 platform])
    {
      supplementalBuild = [(BMDeviceMetadata *)self supplementalBuild];
      supplementalBuild2 = [v5 supplementalBuild];
      v22 = supplementalBuild2;
      if (supplementalBuild == supplementalBuild2)
      {
      }

      else
      {
        supplementalBuild3 = [(BMDeviceMetadata *)self supplementalBuild];
        supplementalBuild4 = [v5 supplementalBuild];
        v25 = [supplementalBuild3 isEqual:supplementalBuild4];

        if (!v25)
        {
          goto LABEL_21;
        }
      }

      if (!-[BMDeviceMetadata hasRapidSecurityResponsePreReboot](self, "hasRapidSecurityResponsePreReboot") && ![v5 hasRapidSecurityResponsePreReboot])
      {
        LOBYTE(v12) = 1;
        goto LABEL_22;
      }

      if (-[BMDeviceMetadata hasRapidSecurityResponsePreReboot](self, "hasRapidSecurityResponsePreReboot") && [v5 hasRapidSecurityResponsePreReboot])
      {
        rapidSecurityResponsePreReboot = [(BMDeviceMetadata *)self rapidSecurityResponsePreReboot];
        v12 = rapidSecurityResponsePreReboot ^ [v5 rapidSecurityResponsePreReboot] ^ 1;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  name = [(BMDeviceMetadata *)self name];
  build = [(BMDeviceMetadata *)self build];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceMetadata platform](self, "platform")}];
  supplementalBuild = [(BMDeviceMetadata *)self supplementalBuild];
  if ([(BMDeviceMetadata *)self hasRapidSecurityResponsePreReboot])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceMetadata rapidSecurityResponsePreReboot](self, "rapidSecurityResponsePreReboot")}];
  }

  else
  {
    v7 = 0;
  }

  v18 = @"name";
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"build";
  null2 = build;
  if (!build)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"platform";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"supplementalBuild";
  null4 = supplementalBuild;
  if (!supplementalBuild)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"rapidSecurityResponsePreReboot";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (supplementalBuild)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (supplementalBuild)
    {
LABEL_16:
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v5)
  {
LABEL_17:
    if (build)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (name)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!build)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (name)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMDeviceMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"build"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_20;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"build"];
        v49 = v40;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v25;
        goto LABEL_19;
      }

      v37 = v9;
    }

    else
    {
      v37 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
    v38 = v7;
    v39 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v40 = 0;
            v15 = 0;
            error = v37;
            goto LABEL_19;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"platform"];
          v47 = v12;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v32 = [v41 initWithDomain:v31 code:2 userInfo:v11];
          v40 = 0;
          v15 = 0;
          *error = v32;
          goto LABEL_48;
        }

        v40 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceMetadataDevicePlatformFromString(v10)];
      }
    }

    else
    {
      v40 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"supplementalBuild"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
LABEL_13:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"rapidSecurityResponsePreReboot"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v33 = *MEMORY[0x1E698F240];
            v42 = *MEMORY[0x1E696A578];
            v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rapidSecurityResponsePreReboot"];
            v43 = v29;
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            *error = [v36 initWithDomain:v33 code:2 userInfo:v30];
          }

          v14 = 0;
          v15 = 0;
          error = v37;
          goto LABEL_17;
        }

        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      error = v37;
      v15 = -[BMDeviceMetadata initWithName:build:platform:supplementalBuild:rapidSecurityResponsePreReboot:](self, "initWithName:build:platform:supplementalBuild:rapidSecurityResponsePreReboot:", v39, v37, [v40 intValue], v12, v14);
      self = v15;
LABEL_17:

LABEL_18:
      v7 = v38;
      v8 = v39;
LABEL_19:

      goto LABEL_20;
    }

    if (error)
    {
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v27 = *MEMORY[0x1E698F240];
      v44 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"supplementalBuild"];
      v45 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v28 = [v26 initWithDomain:v27 code:2 userInfo:v13];
      v12 = 0;
      v15 = 0;
      error = v37;
      *errorCopy2 = v28;
      goto LABEL_17;
    }

    v12 = 0;
    v15 = 0;
LABEL_48:
    error = v37;
    goto LABEL_18;
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
    goto LABEL_21;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v20 = *MEMORY[0x1E698F240];
  v50 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
  v51[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v22 = v20;
  error = v21;
  v8 = 0;
  v15 = 0;
  *errorCopy3 = [v18 initWithDomain:v22 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  platform = self->_platform;
  PBDataWriterWriteUint32Field();
  if (self->_supplementalBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRapidSecurityResponsePreReboot)
  {
    rapidSecurityResponsePreReboot = self->_rapidSecurityResponsePreReboot;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v36.receiver = self;
  v36.super_class = BMDeviceMetadata;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_57;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_55;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v37 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_55;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 5)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasRapidSecurityResponsePreReboot = 1;
        while (1)
        {
          v37 = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v37 & 0x7F) << v25;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v31) = 0;
            goto LABEL_49;
          }
        }

        v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_49:
        v5->_rapidSecurityResponsePreReboot = v31;
        goto LABEL_54;
      }

      if (v15 == 4)
      {
        v23 = PBReaderReadString();
        v24 = 48;
LABEL_45:
        v32 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        goto LABEL_54;
      }

      if (v15 != 3)
      {
        goto LABEL_46;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v37 = 0;
        v19 = [fromCopy position] + 1;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v18 |= (v37 & 0x7F) << v16;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ > 8)
        {
          goto LABEL_52;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v18 > 8)
      {
LABEL_52:
        LODWORD(v18) = 0;
      }

      v5->_platform = v18;
LABEL_54:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_55;
      }
    }

    if (v15 == 1)
    {
      v23 = PBReaderReadString();
      v24 = 32;
    }

    else
    {
      if (v15 != 2)
      {
LABEL_46:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      v23 = PBReaderReadString();
      v24 = 40;
    }

    goto LABEL_45;
  }

LABEL_55:
  if ([fromCopy hasError])
  {
LABEL_56:
    v34 = 0;
  }

  else
  {
LABEL_57:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(BMDeviceMetadata *)self name];
  build = [(BMDeviceMetadata *)self build];
  v6 = BMDeviceMetadataDevicePlatformAsString([(BMDeviceMetadata *)self platform]);
  supplementalBuild = [(BMDeviceMetadata *)self supplementalBuild];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceMetadata rapidSecurityResponsePreReboot](self, "rapidSecurityResponsePreReboot")}];
  v9 = [v3 initWithFormat:@"BMDeviceMetadata with name: %@, build: %@, platform: %@, supplementalBuild: %@, rapidSecurityResponsePreReboot: %@", name, build, v6, supplementalBuild, v8];

  return v9;
}

- (BMDeviceMetadata)initWithName:(id)name build:(id)build platform:(int)platform supplementalBuild:(id)supplementalBuild rapidSecurityResponsePreReboot:(id)reboot
{
  nameCopy = name;
  buildCopy = build;
  supplementalBuildCopy = supplementalBuild;
  rebootCopy = reboot;
  v19.receiver = self;
  v19.super_class = BMDeviceMetadata;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_name, name);
    objc_storeStrong(&v17->_build, build);
    v17->_platform = platform;
    objc_storeStrong(&v17->_supplementalBuild, supplementalBuild);
    if (rebootCopy)
    {
      v17->_hasRapidSecurityResponsePreReboot = 1;
      v17->_rapidSecurityResponsePreReboot = [rebootCopy BOOLValue];
    }

    else
    {
      v17->_hasRapidSecurityResponsePreReboot = 0;
      v17->_rapidSecurityResponsePreReboot = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"build" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"platform" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"supplementalBuild" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rapidSecurityResponsePreReboot" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMDeviceMetadata;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMDeviceMetadata_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 20) = version;
  }

LABEL_9:

  return v9;
}

@end