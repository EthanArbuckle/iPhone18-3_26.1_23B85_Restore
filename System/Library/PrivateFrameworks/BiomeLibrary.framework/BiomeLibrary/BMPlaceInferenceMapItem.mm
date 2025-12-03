@interface BMPlaceInferenceMapItem
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPlaceInferenceMapItem)initWithIdentifier:(id)identifier name:(id)name address:(id)address category:(id)category;
- (BMPlaceInferenceMapItem)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPlaceInferenceMapItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMPlaceInferenceMapItem *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMPlaceInferenceMapItem *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    name = [(BMPlaceInferenceMapItem *)self name];
    name2 = [v5 name];
    v15 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMPlaceInferenceMapItem *)self name];
      name4 = [v5 name];
      v18 = [name3 isEqual:name4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    address = [(BMPlaceInferenceMapItem *)self address];
    address2 = [v5 address];
    v21 = address2;
    if (address == address2)
    {
    }

    else
    {
      address3 = [(BMPlaceInferenceMapItem *)self address];
      address4 = [v5 address];
      v24 = [address3 isEqual:address4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    category = [(BMPlaceInferenceMapItem *)self category];
    category2 = [v5 category];
    if (category == category2)
    {
      v12 = 1;
    }

    else
    {
      category3 = [(BMPlaceInferenceMapItem *)self category];
      category4 = [v5 category];
      v12 = [category3 isEqual:category4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  identifier = [(BMPlaceInferenceMapItem *)self identifier];
  uUIDString = [identifier UUIDString];

  name = [(BMPlaceInferenceMapItem *)self name];
  address = [(BMPlaceInferenceMapItem *)self address];
  category = [(BMPlaceInferenceMapItem *)self category];
  v15[0] = @"identifier";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"name";
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"address";
  null3 = address;
  if (!address)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"category";
  null4 = category;
  if (!category)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (category)
  {
    if (address)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (address)
    {
LABEL_11:
      if (name)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (uUIDString)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!name)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (uUIDString)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMPlaceInferenceMapItem)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v38 = v6;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          selfCopy9 = self;
          goto LABEL_35;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v45 = v11;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v15 = 0;
        *error = [v21 initWithDomain:v22 code:2 userInfo:v9];
        error = 0;
        selfCopy9 = self;
LABEL_34:

        v6 = v38;
LABEL_35:

        goto LABEL_36;
      }

      v37 = v8;
    }

    else
    {
      v37 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v15 = 0;
          selfCopy9 = self;
          error = v37;
          goto LABEL_34;
        }

        v10 = v7;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v25 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"address"];
        v43 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v26 = [v23 initWithDomain:v25 code:2 userInfo:v12];
        v11 = 0;
        v15 = 0;
        *errorCopy = v26;
        selfCopy9 = self;
        goto LABEL_32;
      }

      v10 = v7;
      v11 = v9;
    }

    else
    {
      v10 = v7;
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
      selfCopy9 = self;
LABEL_13:
      error = v37;
      selfCopy9 = [(BMPlaceInferenceMapItem *)selfCopy9 initWithIdentifier:v10 name:v37 address:v11 category:v13];
      v15 = selfCopy9;
LABEL_33:

      v7 = v10;
      goto LABEL_34;
    }

    objc_opt_class();
    selfCopy9 = self;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      goto LABEL_13;
    }

    if (error)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v40 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"category"];
      v41 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *error = [v36 initWithDomain:v35 code:2 userInfo:v28];
    }

    v13 = 0;
    v15 = 0;
LABEL_32:
    error = v37;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v15 = 0;
      selfCopy9 = self;
      goto LABEL_38;
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E698F240];
    v46 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v47 = v7;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v15 = 0;
    *error = [v18 initWithDomain:v19 code:2 userInfo:v20];
    error = v20;
    selfCopy9 = self;
    goto LABEL_36;
  }

  v7 = v6;
  v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  if (v16)
  {
    v17 = v16;

    v7 = v17;
    goto LABEL_4;
  }

  selfCopy9 = self;
  if (!error)
  {
    v15 = 0;
    goto LABEL_37;
  }

  v31 = objc_alloc(MEMORY[0x1E696ABC0]);
  v32 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
  v49[0] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  *error = [v31 initWithDomain:v32 code:2 userInfo:v34];
  error = v33;

  v15 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPlaceInferenceMapItem *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_raw_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_address)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMPlaceInferenceMapItem;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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

      v15 = (v14 >> 3) - 1;
      if (v15 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E99800[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMPlaceInferenceMapItem *)self identifier];
  name = [(BMPlaceInferenceMapItem *)self name];
  address = [(BMPlaceInferenceMapItem *)self address];
  category = [(BMPlaceInferenceMapItem *)self category];
  v8 = [v3 initWithFormat:@"BMPlaceInferenceMapItem with identifier: %@, name: %@, address: %@, category: %@", identifier, name, address, category];

  return v8;
}

- (BMPlaceInferenceMapItem)initWithIdentifier:(id)identifier name:(id)name address:(id)address category:(id)category
{
  identifierCopy = identifier;
  nameCopy = name;
  addressCopy = address;
  categoryCopy = category;
  v18.receiver = self;
  v18.super_class = BMPlaceInferenceMapItem;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (identifierCopy)
    {
      uUIDString = [identifierCopy UUIDString];
    }

    else
    {
      uUIDString = 0;
    }

    raw_identifier = v14->_raw_identifier;
    v14->_raw_identifier = uUIDString;

    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v14->_address, address);
    objc_storeStrong(&v14->_category, category);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"address" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"address" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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

    v8 = [[BMPlaceInferenceMapItem alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end