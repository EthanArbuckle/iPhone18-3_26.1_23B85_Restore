@interface BMAdPlatformsOpportunity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAdPlatformsOpportunity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAdPlatformsOpportunity)initWithPlacement:(int)a3 numAds:(id)a4 numPassed:(id)a5 storefront:(id)a6 searchTerm:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAdPlatformsOpportunity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  v6 = [(BMAdPlatformsOpportunity *)self placement];
  if (v6 != [v5 placement])
  {
    goto LABEL_15;
  }

  if (-[BMAdPlatformsOpportunity hasNumAds](self, "hasNumAds") || [v5 hasNumAds])
  {
    if (![(BMAdPlatformsOpportunity *)self hasNumAds])
    {
      goto LABEL_15;
    }

    if (![v5 hasNumAds])
    {
      goto LABEL_15;
    }

    v7 = [(BMAdPlatformsOpportunity *)self numAds];
    if (v7 != [v5 numAds])
    {
      goto LABEL_15;
    }
  }

  if (-[BMAdPlatformsOpportunity hasNumPassed](self, "hasNumPassed") || [v5 hasNumPassed])
  {
    if (![(BMAdPlatformsOpportunity *)self hasNumPassed])
    {
      goto LABEL_15;
    }

    if (![v5 hasNumPassed])
    {
      goto LABEL_15;
    }

    v8 = [(BMAdPlatformsOpportunity *)self numPassed];
    if (v8 != [v5 numPassed])
    {
      goto LABEL_15;
    }
  }

  v9 = [(BMAdPlatformsOpportunity *)self storefront];
  v10 = [v5 storefront];
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_20;
  }

  v12 = [(BMAdPlatformsOpportunity *)self storefront];
  v13 = [v5 storefront];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
LABEL_20:
    v17 = [(BMAdPlatformsOpportunity *)self searchTerm];
    v18 = [v5 searchTerm];
    if (v17 == v18)
    {
      v15 = 1;
    }

    else
    {
      v19 = [(BMAdPlatformsOpportunity *)self searchTerm];
      v20 = [v5 searchTerm];
      v15 = [v19 isEqual:v20];
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = 0;
LABEL_16:

LABEL_18:
  return v15;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsOpportunity placement](self, "placement")}];
  if ([(BMAdPlatformsOpportunity *)self hasNumAds])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsOpportunity numAds](self, "numAds")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMAdPlatformsOpportunity *)self hasNumPassed])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsOpportunity numPassed](self, "numPassed")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMAdPlatformsOpportunity *)self storefront];
  v7 = [(BMAdPlatformsOpportunity *)self searchTerm];
  v18 = @"placement";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"numAds";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"numPassed";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"storefront";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"searchTerm";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v6)
    {
LABEL_19:
      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v5)
  {
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMAdPlatformsOpportunity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"placement"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v40 = 0;
LABEL_9:
    v9 = [v6 objectForKeyedSubscript:@"numAds"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_43;
        }

        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = a4;
        v18 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numAds"];
        v48 = v39;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v19 = [v16 initWithDomain:v18 code:2 userInfo:v10];
        a4 = 0;
        v15 = 0;
        *v17 = v19;
        goto LABEL_42;
      }

      v38 = v9;
    }

    else
    {
      v38 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"numPassed"];
    v37 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v39 = 0;
          v15 = 0;
          a4 = v38;
          goto LABEL_42;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numPassed"];
        v46 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v39 = 0;
        v15 = 0;
        *a4 = [v20 initWithDomain:v21 code:2 userInfo:v11];
        goto LABEL_50;
      }

      v39 = v10;
    }

    else
    {
      v39 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"storefront"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
LABEL_18:
      v13 = [v6 objectForKeyedSubscript:@"searchTerm"];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v14 = 0;
LABEL_21:
        a4 = v38;
        v15 = -[BMAdPlatformsOpportunity initWithPlacement:numAds:numPassed:storefront:searchTerm:](self, "initWithPlacement:numAds:numPassed:storefront:searchTerm:", [v40 intValue], v38, v39, v12, v14);
        self = v15;
LABEL_40:

LABEL_41:
        v7 = v37;
LABEL_42:

        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        goto LABEL_21;
      }

      if (a4)
      {
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"searchTerm"];
        v42 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        *a4 = [v36 initWithDomain:v34 code:2 userInfo:v26];
      }

      v14 = 0;
      v15 = 0;
LABEL_39:
      a4 = v38;
      goto LABEL_40;
    }

    if (a4)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = a4;
      v23 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"storefront"];
      v44 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v24 = [v22 initWithDomain:v23 code:2 userInfo:v13];
      v12 = 0;
      v15 = 0;
      *v35 = v24;
      goto LABEL_39;
    }

    v12 = 0;
    v15 = 0;
LABEL_50:
    a4 = v38;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v40 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMAdPlatformsOpportunityPlacementFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v40 = 0;
    v15 = 0;
    goto LABEL_44;
  }

  v29 = objc_alloc(MEMORY[0x1E696ABC0]);
  v30 = a4;
  v31 = *MEMORY[0x1E698F240];
  v49 = *MEMORY[0x1E696A578];
  v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placement"];
  v50[0] = v32;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v33 = v31;
  a4 = v32;
  v40 = 0;
  v15 = 0;
  *v30 = [v29 initWithDomain:v33 code:2 userInfo:v9];
LABEL_43:

LABEL_44:
  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAdPlatformsOpportunity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  placement = self->_placement;
  v9 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hasNumAds)
  {
    numAds = self->_numAds;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumPassed)
  {
    numPassed = self->_numPassed;
    PBDataWriterWriteInt32Field();
  }

  v8 = v9;
  if (self->_storefront)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }

  if (self->_searchTerm)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BMAdPlatformsOpportunity;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_72;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_70;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v44 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v44 & 0x7F) << v7;
        if ((v44 & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_70;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      switch(v15)
      {
        case 3:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasNumPassed = 1;
          while (1)
          {
            v44 = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v27 |= (v44 & 0x7F) << v25;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v13 = v26++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_59;
            }
          }

          if ([v4 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_59:
          v39 = 32;
LABEL_68:
          *(&v5->super.super.isa + v39) = v24;
          goto LABEL_69;
        case 4:
          v16 = PBReaderReadString();
          v17 = 40;
          break;
        case 5:
          v16 = PBReaderReadString();
          v17 = 48;
          break;
        default:
          goto LABEL_54;
      }

      v31 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_69:
      v40 = [v4 position];
      if (v40 >= [v4 length])
      {
        goto LABEL_70;
      }
    }

    if (v15 == 1)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      while (1)
      {
        v44 = 0;
        v35 = [v4 position] + 1;
        if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
        {
          v37 = [v4 data];
          [v37 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v34 |= (v44 & 0x7F) << v32;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        v13 = v33++ >= 9;
        if (v13)
        {
          v38 = 0;
          goto LABEL_63;
        }
      }

      if ([v4 hasError])
      {
        v38 = 0;
      }

      else
      {
        v38 = v34;
      }

LABEL_63:
      v5->_placement = BMAdPlatformsOpportunityPlacementDecode(v38);
      goto LABEL_69;
    }

    if (v15 != 2)
    {
LABEL_54:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_71;
      }

      goto LABEL_69;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v5->_hasNumAds = 1;
    while (1)
    {
      v44 = 0;
      v21 = [v4 position] + 1;
      if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
      {
        v23 = [v4 data];
        [v23 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v20 |= (v44 & 0x7F) << v18;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v13 = v19++ >= 9;
      if (v13)
      {
        v24 = 0;
        goto LABEL_67;
      }
    }

    if ([v4 hasError])
    {
      v24 = 0;
    }

    else
    {
      v24 = v20;
    }

LABEL_67:
    v39 = 28;
    goto LABEL_68;
  }

LABEL_70:
  if ([v4 hasError])
  {
LABEL_71:
    v41 = 0;
  }

  else
  {
LABEL_72:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAdPlatformsOpportunityPlacementAsString([(BMAdPlatformsOpportunity *)self placement]);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsOpportunity numAds](self, "numAds")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAdPlatformsOpportunity numPassed](self, "numPassed")}];
  v7 = [(BMAdPlatformsOpportunity *)self storefront];
  v8 = [(BMAdPlatformsOpportunity *)self searchTerm];
  v9 = [v3 initWithFormat:@"BMAdPlatformsOpportunity with placement: %@, numAds: %@, numPassed: %@, storefront: %@, searchTerm: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMAdPlatformsOpportunity)initWithPlacement:(int)a3 numAds:(id)a4 numPassed:(id)a5 storefront:(id)a6 searchTerm:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = BMAdPlatformsOpportunity;
  v16 = [(BMEventBase *)&v20 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    v16->_placement = a3;
    if (v12)
    {
      v16->_hasNumAds = 1;
      v17 = [v12 intValue];
    }

    else
    {
      v16->_hasNumAds = 0;
      v17 = -1;
    }

    v16->_numAds = v17;
    if (v13)
    {
      v16->_hasNumPassed = 1;
      v18 = [v13 intValue];
    }

    else
    {
      v16->_hasNumPassed = 0;
      v18 = -1;
    }

    v16->_numPassed = v18;
    objc_storeStrong(&v16->_storefront, a6);
    objc_storeStrong(&v16->_searchTerm, a7);
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placement" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numAds" number:2 type:2 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numPassed" number:3 type:2 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"storefront" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchTerm" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placement" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numAds" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numPassed" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"storefront" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchTerm" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMAdPlatformsOpportunity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end