@interface IDSPseudonym
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPseudonym:(id)pseudonym;
- (IDSPseudonym)initWithCoder:(id)coder;
- (IDSPseudonym)initWithDictionaryRepresentation:(id)representation;
- (IDSPseudonym)initWithURI:(id)i maskedURI:(id)rI properties:(id)properties;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (id)destinationURIs;
- (id)withUpdatedProperties:(id)properties;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPseudonym

- (IDSPseudonym)initWithURI:(id)i maskedURI:(id)rI properties:(id)properties
{
  iCopy = i;
  rICopy = rI;
  propertiesCopy = properties;
  if (iCopy)
  {
    if (rICopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1A7E208E0();
    if (propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1A7E2086C();
  if (!rICopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (propertiesCopy)
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
    objc_storeStrong(&v12->_URI, i);
    objc_storeStrong(&v13->_maskedURI, rI);
    objc_storeStrong(&v13->_properties, properties);
  }

  return v13;
}

- (id)withUpdatedProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [objc_alloc(objc_opt_class()) initWithURI:self->_URI maskedURI:self->_maskedURI properties:propertiesCopy];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPseudonym *)self isEqualToPseudonym:equalCopy];

  return v5;
}

- (BOOL)isEqualToPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  if (self == pseudonymCopy)
  {
    v11 = 1;
  }

  else
  {
    v5 = [(IDSPseudonym *)self URI];
    v6 = [(IDSPseudonym *)pseudonymCopy URI];
    if ([v5 isEqualToURI:v6])
    {
      properties = [(IDSPseudonym *)self properties];
      properties2 = [(IDSPseudonym *)pseudonymCopy properties];
      if ([properties isEqualToPseudonymProperties:properties2])
      {
        maskedURI = [(IDSPseudonym *)self maskedURI];
        maskedURI2 = [(IDSPseudonym *)pseudonymCopy maskedURI];
        v11 = [maskedURI isEqualToURI:maskedURI2];
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
  properties = [(IDSPseudonym *)self properties];
  v6 = [properties hash];

  return v6 ^ v4;
}

- (id)destinationURIs
{
  v2 = [(IDSPseudonym *)self URI];
  destinationURIs = [v2 destinationURIs];

  return destinationURIs;
}

- (IDSPseudonym)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy _stringForKey:@"u"];
  v6 = [IDSURI URIWithPrefixedURI:v5];

  v7 = [representationCopy _stringForKey:@"m"];
  v8 = [IDSURI URIWithPrefixedURI:v7];

  v9 = [IDSPseudonymProperties alloc];
  v10 = [representationCopy _dictionaryForKey:@"p"];

  v11 = [(IDSPseudonymProperties *)v9 initWithDictionaryRepresentation:v10];
  selfCopy = 0;
  if (v6 && v8 && v11)
  {
    self = [(IDSPseudonym *)self initWithURI:v6 maskedURI:v8 properties:v11];
    selfCopy = self;
  }

  return selfCopy;
}

- (IDSPseudonym)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(IDSPseudonym *)self initWithURI:v5 maskedURI:v6 properties:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  URI = self->_URI;
  coderCopy = coder;
  [coderCopy encodeObject:URI forKey:@"u"];
  [coderCopy encodeObject:self->_maskedURI forKey:@"m"];
  [coderCopy encodeObject:self->_properties forKey:@"p"];
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  prefixedURI = [(IDSURI *)self->_URI prefixedURI];
  if (prefixedURI)
  {
    CFDictionarySetValue(v3, @"u", prefixedURI);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E209C8();
  }

  prefixedURI2 = [(IDSURI *)self->_maskedURI prefixedURI];
  if (prefixedURI2)
  {
    CFDictionarySetValue(v3, @"m", prefixedURI2);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E20A50();
  }

  dictionaryRepresentation = [(IDSPseudonymProperties *)self->_properties dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    CFDictionarySetValue(v3, @"p", dictionaryRepresentation);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E2075C();
  }

  v7 = [(__CFDictionary *)v3 copy];

  return v7;
}

@end