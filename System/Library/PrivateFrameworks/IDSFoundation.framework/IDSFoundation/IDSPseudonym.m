@interface IDSPseudonym
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPseudonym:(id)a3;
- (IDSPseudonym)initWithCoder:(id)a3;
- (IDSPseudonym)initWithDictionaryRepresentation:(id)a3;
- (IDSPseudonym)initWithURI:(id)a3 maskedURI:(id)a4 properties:(id)a5;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (id)destinationURIs;
- (id)withUpdatedProperties:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPseudonym

- (IDSPseudonym)initWithURI:(id)a3 maskedURI:(id)a4 properties:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1A7E208E0();
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1A7E2086C();
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  sub_1A7E20954();
LABEL_4:
  v15.receiver = self;
  v15.super_class = IDSPseudonym;
  v12 = [(IDSPseudonym *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URI, a3);
    objc_storeStrong(&v13->_maskedURI, a4);
    objc_storeStrong(&v13->_properties, a5);
  }

  return v13;
}

- (id)withUpdatedProperties:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithURI:self->_URI maskedURI:self->_maskedURI properties:v4];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p URI:%@, maskedURI:%@, properties: %@>", v5, self, self->_URI, self->_maskedURI, self->_properties];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPseudonym *)self isEqualToPseudonym:v4];

  return v5;
}

- (BOOL)isEqualToPseudonym:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = [(IDSPseudonym *)self URI];
    v6 = [(IDSPseudonym *)v4 URI];
    if ([v5 isEqualToURI:v6])
    {
      v7 = [(IDSPseudonym *)self properties];
      v8 = [(IDSPseudonym *)v4 properties];
      if ([v7 isEqualToPseudonymProperties:v8])
      {
        v9 = [(IDSPseudonym *)self maskedURI];
        v10 = [(IDSPseudonym *)v4 maskedURI];
        v11 = [v9 isEqualToURI:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(IDSPseudonym *)self URI];
  v4 = [v3 hash];
  v5 = [(IDSPseudonym *)self properties];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)destinationURIs
{
  v2 = [(IDSPseudonym *)self URI];
  v3 = [v2 destinationURIs];

  return v3;
}

- (IDSPseudonym)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 _stringForKey:@"u"];
  v6 = [IDSURI URIWithPrefixedURI:v5];

  v7 = [v4 _stringForKey:@"m"];
  v8 = [IDSURI URIWithPrefixedURI:v7];

  v9 = [IDSPseudonymProperties alloc];
  v10 = [v4 _dictionaryForKey:@"p"];

  v11 = [(IDSPseudonymProperties *)v9 initWithDictionaryRepresentation:v10];
  v12 = 0;
  if (v6 && v8 && v11)
  {
    self = [(IDSPseudonym *)self initWithURI:v6 maskedURI:v8 properties:v11];
    v12 = self;
  }

  return v12;
}

- (IDSPseudonym)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    self = [(IDSPseudonym *)self initWithURI:v5 maskedURI:v6 properties:v7];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  URI = self->_URI;
  v5 = a3;
  [v5 encodeObject:URI forKey:@"u"];
  [v5 encodeObject:self->_maskedURI forKey:@"m"];
  [v5 encodeObject:self->_properties forKey:@"p"];
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSURI *)self->_URI prefixedURI];
  if (v4)
  {
    CFDictionarySetValue(v3, @"u", v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E209C8();
  }

  v5 = [(IDSURI *)self->_maskedURI prefixedURI];
  if (v5)
  {
    CFDictionarySetValue(v3, @"m", v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E20A50();
  }

  v6 = [(IDSPseudonymProperties *)self->_properties dictionaryRepresentation];
  if (v6)
  {
    CFDictionarySetValue(v3, @"p", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E2075C();
  }

  v7 = [(__CFDictionary *)v3 copy];

  return v7;
}

@end