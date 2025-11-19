@interface BMNamedHandle
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMNamedHandle)initWithCoder:(id)a3;
- (BMNamedHandle)initWithName:(id)a3 handleType:(id)a4 handle:(id)a5 contactIdentifier:(id)a6;
- (BMNamedHandle)initWithProto:(id)a3;
- (BMNamedHandle)initWithProtoData:(id)a3;
- (BMNamedHandle)initWithString:(id)a3;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMNamedHandle

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMNamedHandle *)self name];
  [v3 setName:v4];

  v5 = [(BMNamedHandle *)self handleType];
  [v3 setHandleType:v5];

  v6 = [(BMNamedHandle *)self handle];
  [v3 setHandle:v6];

  v7 = [(BMNamedHandle *)self contactIdentifier];
  [v3 setContactIdentifier:v7];

  return v3;
}

- (BMNamedHandle)initWithName:(id)a3 handleType:(id)a4 handle:(id)a5 contactIdentifier:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v14)
  {
    [BMNamedHandle initWithName:a2 handleType:self handle:? contactIdentifier:?];
  }

  v19.receiver = self;
  v19.super_class = BMNamedHandle;
  v16 = [(BMNamedHandle *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, a3);
    objc_storeStrong(&v17->_handleType, a4);
    objc_storeStrong(&v17->_handle, a5);
    objc_storeStrong(&v17->_contactIdentifier, a6);
  }

  return v17;
}

- (BMNamedHandle)initWithString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" <>"];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];
  if (![v6 count])
  {
    v8 = v4;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMNamedHandle eventWithData:a4 dataVersion:v8];
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
  v4 = name;
  if (!name)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"handleType";
  handleType = self->_handleType;
  v6 = handleType;
  if (!handleType)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  handle = self->_handle;
  contactIdentifier = self->_contactIdentifier;
  v14[1] = v6;
  v14[2] = handle;
  v13[2] = @"handle";
  v13[3] = @"contactIdentfier";
  v9 = contactIdentifier;
  if (!contactIdentifier)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = v9;
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
  v3 = [(BMNamedHandle *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMNamedHandle *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMNamedHandle)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMNamedHandle *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMNamedHandle *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMNamedHandle)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 handle];

      if (v6)
      {
        v7 = [v5 name];
        v8 = [v5 handleType];
        v9 = [v5 handle];
        v10 = [v5 contactIdentifier];
        self = [(BMNamedHandle *)self initWithName:v7 handleType:v8 handle:v9 contactIdentifier:v10];

        v11 = self;
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

    v11 = 0;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (BMNamedHandle)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBNamedHandle alloc] initWithData:v4];

    self = [(BMNamedHandle *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_32;
  }

  v7 = v6;
  v8 = v7;
  name = self->_name;
  v10 = name;
  if (!name)
  {
    v11 = [v7 name];
    if (!v11)
    {
      v30 = 0;
      v12 = 0;
      goto LABEL_10;
    }

    v30 = v11;
    v10 = self->_name;
  }

  v3 = [v8 name];
  if (![(NSString *)v10 isEqualToString:v3])
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
    v16 = [v8 handleType];
    if (!v16)
    {
      v28 = 0;
      v29 = v12;
      v27 = 0;
      goto LABEL_17;
    }

    v27 = v16;
    v15 = self->_handleType;
  }

  v4 = [v8 handleType];
  if (![(NSString *)v15 isEqualToString:v4])
  {

    v13 = 0;
    goto LABEL_26;
  }

  v28 = 1;
  v29 = v12;
LABEL_17:
  handle = self->_handle;
  v18 = [v8 handle];
  if ([(NSString *)handle isEqualToString:v18])
  {
    contactIdentifier = self->_contactIdentifier;
    v20 = contactIdentifier;
    if (!contactIdentifier)
    {
      v21 = [v8 contactIdentifier];
      if (!v21)
      {
        v26 = 0;
        v13 = 1;
        goto LABEL_36;
      }

      v25 = v21;
      v20 = self->_contactIdentifier;
    }

    v22 = v20;
    v23 = [v8 contactIdentifier];
    v13 = [(NSString *)v22 isEqualToString:v23];

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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  handle = self->_handle;
  if (a4 && !handle)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return handle != 0;
}

@end