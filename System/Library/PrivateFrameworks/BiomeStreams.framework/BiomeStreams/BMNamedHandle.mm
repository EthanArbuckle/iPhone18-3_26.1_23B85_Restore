@interface BMNamedHandle
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMNamedHandle)initWithCoder:(id)coder;
- (BMNamedHandle)initWithName:(id)name handleType:(id)type handle:(id)handle contactIdentifier:(id)identifier;
- (BMNamedHandle)initWithProto:(id)proto;
- (BMNamedHandle)initWithProtoData:(id)data;
- (BMNamedHandle)initWithString:(id)string;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMNamedHandle

- (id)proto
{
  v3 = objc_opt_new();
  name = [(BMNamedHandle *)self name];
  [v3 setName:name];

  handleType = [(BMNamedHandle *)self handleType];
  [v3 setHandleType:handleType];

  handle = [(BMNamedHandle *)self handle];
  [v3 setHandle:handle];

  contactIdentifier = [(BMNamedHandle *)self contactIdentifier];
  [v3 setContactIdentifier:contactIdentifier];

  return v3;
}

- (BMNamedHandle)initWithName:(id)name handleType:(id)type handle:(id)handle contactIdentifier:(id)identifier
{
  nameCopy = name;
  typeCopy = type;
  handleCopy = handle;
  identifierCopy = identifier;
  if (!handleCopy)
  {
    [BMNamedHandle initWithName:a2 handleType:self handle:? contactIdentifier:?];
  }

  v19.receiver = self;
  v19.super_class = BMNamedHandle;
  v16 = [(BMNamedHandle *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v17->_handleType, type);
    objc_storeStrong(&v17->_handle, handle);
    objc_storeStrong(&v17->_contactIdentifier, identifier);
  }

  return v17;
}

- (BMNamedHandle)initWithString:(id)string
{
  stringCopy = string;
  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" <>"];
  v6 = [stringCopy componentsSeparatedByCharactersInSet:v5];
  if (![v6 count])
  {
    v8 = stringCopy;
    goto LABEL_5;
  }

  v7 = [v6 count];
  v8 = [v6 objectAtIndexedSubscript:0];
  if (v7 == 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  [v6 objectAtIndexedSubscript:1];
  v8 = v9 = v8;
LABEL_6:
  v10 = [(BMNamedHandle *)self initWithName:v9 handleType:0 handle:v8 contactIdentifier:0];

  return v10;
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
      [BMNamedHandle eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"name";
  name = self->_name;
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"handleType";
  handleType = self->_handleType;
  null2 = handleType;
  if (!handleType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  handle = self->_handle;
  contactIdentifier = self->_contactIdentifier;
  v14[1] = null2;
  v14[2] = handle;
  v13[2] = @"handle";
  v13[3] = @"contactIdentfier";
  null3 = contactIdentifier;
  if (!contactIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (contactIdentifier)
  {
    if (handleType)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (name)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!handleType)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (name)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMNamedHandle *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMNamedHandle *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMNamedHandle *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMNamedHandle)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMNamedHandle *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMNamedHandle *)self proto];
  data = [proto data];

  return data;
}

- (BMNamedHandle)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      handle = [v5 handle];

      if (handle)
      {
        name = [v5 name];
        handleType = [v5 handleType];
        handle2 = [v5 handle];
        contactIdentifier = [v5 contactIdentifier];
        self = [(BMNamedHandle *)self initWithName:name handleType:handleType handle:handle2 contactIdentifier:contactIdentifier];

        selfCopy = self;
LABEL_12:

        goto LABEL_13;
      }

      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BMNamedHandle initWithProto:v12];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMNamedHandle initWithProto:v5];
      }
    }

    selfCopy = 0;
    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (BMNamedHandle)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBNamedHandle alloc] initWithData:dataCopy];

    self = [(BMNamedHandle *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_32;
  }

  v7 = equalCopy;
  v8 = v7;
  name = self->_name;
  v10 = name;
  if (!name)
  {
    name = [v7 name];
    if (!name)
    {
      v30 = 0;
      v12 = 0;
      goto LABEL_10;
    }

    v30 = name;
    v10 = self->_name;
  }

  name2 = [v8 name];
  if (![(NSString *)v10 isEqualToString:name2])
  {

    v13 = 0;
    goto LABEL_29;
  }

  v12 = 1;
LABEL_10:
  handleType = self->_handleType;
  v15 = handleType;
  if (!handleType)
  {
    handleType = [v8 handleType];
    if (!handleType)
    {
      v28 = 0;
      v29 = v12;
      v27 = 0;
      goto LABEL_17;
    }

    v27 = handleType;
    v15 = self->_handleType;
  }

  handleType2 = [v8 handleType];
  if (![(NSString *)v15 isEqualToString:handleType2])
  {

    v13 = 0;
    goto LABEL_26;
  }

  v28 = 1;
  v29 = v12;
LABEL_17:
  handle = self->_handle;
  handle = [v8 handle];
  if ([(NSString *)handle isEqualToString:handle])
  {
    contactIdentifier = self->_contactIdentifier;
    v20 = contactIdentifier;
    if (!contactIdentifier)
    {
      contactIdentifier = [v8 contactIdentifier];
      if (!contactIdentifier)
      {
        v26 = 0;
        v13 = 1;
        goto LABEL_36;
      }

      v25 = contactIdentifier;
      v20 = self->_contactIdentifier;
    }

    v22 = v20;
    contactIdentifier2 = [v8 contactIdentifier];
    v13 = [(NSString *)v22 isEqualToString:contactIdentifier2];

    if (!contactIdentifier)
    {
LABEL_36:

      v12 = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v13 = 0;
  }

  v12 = v29;
  if (v28)
  {
LABEL_25:
  }

LABEL_26:
  if (!handleType)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v12)
  {
LABEL_28:
  }

LABEL_29:
  if (!name)
  {
  }

LABEL_32:
  return v13;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  handle = self->_handle;
  if (error && !handle)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return handle != 0;
}

@end