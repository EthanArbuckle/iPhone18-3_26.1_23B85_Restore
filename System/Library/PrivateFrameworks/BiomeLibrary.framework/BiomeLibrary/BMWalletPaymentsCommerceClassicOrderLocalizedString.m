@interface BMWalletPaymentsCommerceClassicOrderLocalizedString
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderLocalizedString)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceClassicOrderLocalizedString)initWithKey:(id)a3 developmentLocalization:(id)a4 localizedStrings:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_localizedStringsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceClassicOrderLocalizedString

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self key];
    v7 = [v5 key];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self key];
      v10 = [v5 key];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self developmentLocalization];
    v14 = [v5 developmentLocalization];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self developmentLocalization];
      v17 = [v5 developmentLocalization];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self localizedStrings];
    v20 = [v5 localizedStrings];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self localizedStrings];
      v22 = [v5 localizedStrings];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self key];
  v4 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self developmentLocalization];
  v5 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self _localizedStringsJSONArray];
  v12[0] = @"key";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"developmentLocalization";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"localizedStrings";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_localizedStringsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self localizedStrings];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceClassicOrderLocalizedString)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"key"];
  v8 = 0x1E695D000uLL;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v27 = 0;
        goto LABEL_44;
      }

      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v72 = *MEMORY[0x1E696A578];
      v30 = a4;
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"key"];
      v73[0] = v31;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      a4 = 0;
      v27 = 0;
      *v30 = [v28 initWithDomain:v29 code:2 userInfo:v10];
      v11 = v31;
      goto LABEL_43;
    }

    v55 = a4;
    a4 = v7;
  }

  else
  {
    v55 = a4;
    a4 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"developmentLocalization"];
  v56 = v7;
  v57 = v9;
  if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = 0;
LABEL_7:
    v12 = [v6 objectForKeyedSubscript:@"localizedStrings"];
    v13 = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      v52 = v11;
      v53 = a4;
      v54 = v6;

      v12 = 0;
LABEL_12:
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v12 = v12;
      v16 = [v12 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = v16;
      v18 = *v60;
      v51 = self;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v59 + 1) + 8 * v19);
        v21 = *(v8 + 4016);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = v51;
          a4 = v53;
          v37 = v55;
          if (!v55)
          {
            goto LABEL_40;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"localizedStrings"];
          v64 = v23;
          v40 = MEMORY[0x1E695DF20];
          v41 = &v64;
          v42 = &v63;
          goto LABEL_35;
        }

        v22 = v8;
        v23 = v20;
        v24 = [BMWalletPaymentsCommerceClassicOrderLocalizedStringLocalization alloc];
        v58 = 0;
        v25 = [(BMWalletPaymentsCommerceClassicOrderLocalizedStringLocalization *)v24 initWithJSONDictionary:v23 error:&v58];
        v26 = v58;
        if (v26)
        {
          v43 = v26;
          if (v55)
          {
            v44 = v26;
            *v55 = v43;
          }

          self = v51;
          a4 = v53;
LABEL_39:

LABEL_40:
          v27 = 0;
          v6 = v54;
          v11 = v52;
          goto LABEL_41;
        }

        [v15 addObject:v25];

        ++v19;
        v8 = v22;
        if (v17 == v19)
        {
          v17 = [v12 countByEnumeratingWithState:&v59 objects:v67 count:16];
          self = v51;
          if (v17)
          {
            goto LABEL_14;
          }

LABEL_22:

          v11 = v52;
          a4 = v53;
          self = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self initWithKey:v53 developmentLocalization:v52 localizedStrings:v15];
          v27 = self;
          v6 = v54;
LABEL_41:

          v7 = v56;
          goto LABEL_42;
        }
      }

      self = v51;
      a4 = v53;
      v37 = v55;
      if (!v55)
      {
        goto LABEL_40;
      }

      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v65 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"localizedStrings"];
      v66 = v23;
      v40 = MEMORY[0x1E695DF20];
      v41 = &v66;
      v42 = &v65;
LABEL_35:
      v43 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:1];
      *v37 = [v38 initWithDomain:v39 code:2 userInfo:v43];
      goto LABEL_39;
    }

    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v52 = v11;
      v53 = a4;
      v54 = v6;
      goto LABEL_12;
    }

    if (v55)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v68 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"localizedStrings"];
      v69 = v15;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      *v55 = [v47 initWithDomain:v48 code:2 userInfo:v49];

      v27 = 0;
      goto LABEL_41;
    }

    v27 = 0;
LABEL_42:

    v10 = v57;
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    goto LABEL_7;
  }

  if (v55)
  {
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E698F240];
    v70 = *MEMORY[0x1E696A578];
    v34 = self;
    v35 = objc_alloc(MEMORY[0x1E696AEC0]);
    v50 = objc_opt_class();
    v36 = v35;
    self = v34;
    v12 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v50, @"developmentLocalization"];
    v71 = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v11 = 0;
    v27 = 0;
    *v55 = [v32 initWithDomain:v33 code:2 userInfo:v15];
    goto LABEL_41;
  }

  v11 = 0;
  v27 = 0;
LABEL_43:

LABEL_44:
  v45 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_developmentLocalization)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_localizedStrings;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BMWalletPaymentsCommerceClassicOrderLocalizedString;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v29 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v29[0] & 0x7F) << v8;
        if ((v29[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v29[0] = 0;
        v29[1] = 0;
        if (!PBReaderPlaceMark() || (v20 = [[BMWalletPaymentsCommerceClassicOrderLocalizedStringLocalization alloc] initByReadFrom:v4]) == 0)
        {
LABEL_33:

          goto LABEL_30;
        }

        v21 = v20;
        [v6 addObject:v20];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          v18 = 32;
          goto LABEL_23;
        }

        if (v16 == 1)
        {
          v17 = PBReaderReadString();
          v18 = 24;
LABEL_23:
          v19 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_28;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_28:
      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  v23 = [v6 copy];
  localizedStrings = v5->_localizedStrings;
  v5->_localizedStrings = v23;

  v25 = [v4 hasError];
  if (v25)
  {
LABEL_30:
    v26 = 0;
  }

  else
  {
LABEL_31:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self key];
  v5 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self developmentLocalization];
  v6 = [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self localizedStrings];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderLocalizedString with key: %@, developmentLocalization: %@, localizedStrings: %@", v4, v5, v6];

  return v7;
}

- (BMWalletPaymentsCommerceClassicOrderLocalizedString)initWithKey:(id)a3 developmentLocalization:(id)a4 localizedStrings:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = BMWalletPaymentsCommerceClassicOrderLocalizedString;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_key, a3);
    objc_storeStrong(&v12->_developmentLocalization, a4);
    objc_storeStrong(&v12->_localizedStrings, a5);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"key" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"developmentLocalization" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localizedStrings" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"key" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"developmentLocalization" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"localizedStrings_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_91462];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __62__BMWalletPaymentsCommerceClassicOrderLocalizedString_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _localizedStringsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMWalletPaymentsCommerceClassicOrderLocalizedString alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end