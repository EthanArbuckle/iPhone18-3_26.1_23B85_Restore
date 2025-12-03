@interface PKFeatureFailure
- (BOOL)isEqual:(id)equal;
- (PKFeatureFailure)initWithCoder:(id)coder;
- (PKFeatureFailure)initWithDictionary:(id)dictionary;
- (id)description;
- (id)errorRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFeatureFailure

- (PKFeatureFailure)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKFeatureFailure;
  v5 = [(PKFeatureFailure *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"featureIdentifier"];
    v5->_featureIdentifier = PKFeatureIdentifierFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"errorCode"];
    v8 = v7;
    if (v7)
    {
      [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
    }

    else
    {
      [dictionaryCopy PKNumberForKey:@"errorCode"];
    }
    v9 = ;
    errorCode = v5->_errorCode;
    v5->_errorCode = v9;

    v11 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v11;

    v13 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v13;

    v15 = [dictionaryCopy PKStringForKey:@"debugDescription"];
    serverDescription = v5->_serverDescription;
    v5->_serverDescription = v15;
  }

  return v5;
}

- (id)errorRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    [v3 setObject:localizedTitle forKey:*MEMORY[0x1E696A578]];
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [v4 setObject:localizedDescription forKey:*MEMORY[0x1E696A588]];
  }

  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  integerValue = [(NSNumber *)self->_errorCode integerValue];
  v9 = [v4 copy];
  v10 = [v7 initWithDomain:@"PKAccountErrorDomain" code:integerValue userInfo:v9];

  return v10;
}

- (PKFeatureFailure)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKFeatureFailure;
  v5 = [(PKFeatureFailure *)&v15 init];
  if (v5)
  {
    v5->_featureIdentifier = [coderCopy decodeIntegerForKey:@"featureIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorCode"];
    errorCode = v5->_errorCode;
    v5->_errorCode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverDescription"];
    serverDescription = v5->_serverDescription;
    v5->_serverDescription = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  featureIdentifier = self->_featureIdentifier;
  coderCopy = coder;
  [coderCopy encodeInteger:featureIdentifier forKey:@"featureIdentifier"];
  [coderCopy encodeObject:self->_errorCode forKey:@"errorCode"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_serverDescription forKey:@"serverDescription"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_errorCode];
  [array safelyAddObject:self->_localizedTitle];
  [array safelyAddObject:self->_localizedDescription];
  [array safelyAddObject:self->_serverDescription];
  v4 = PKCombinedHash(17, array);
  v5 = self->_featureIdentifier - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6 || self->_featureIdentifier != v6[1])
  {
    goto LABEL_23;
  }

  errorCode = self->_errorCode;
  v9 = v7[2];
  if (errorCode && v9)
  {
    if (([(NSNumber *)errorCode isEqual:?]& 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (errorCode != v9)
  {
    goto LABEL_23;
  }

  localizedTitle = self->_localizedTitle;
  v11 = v7[3];
  if (localizedTitle && v11)
  {
    if (([(NSString *)localizedTitle isEqual:?]& 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (localizedTitle != v11)
  {
    goto LABEL_23;
  }

  localizedDescription = self->_localizedDescription;
  v13 = v7[4];
  if (!localizedDescription || !v13)
  {
    if (localizedDescription == v13)
    {
      goto LABEL_19;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if (([(NSString *)localizedDescription isEqual:?]& 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  serverDescription = self->_serverDescription;
  v15 = v7[5];
  if (serverDescription && v15)
  {
    v16 = [(NSString *)serverDescription isEqual:?];
  }

  else
  {
    v16 = serverDescription == v15;
  }

LABEL_24:

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKFeatureIdentifierToString(self->_featureIdentifier);
  [v3 appendFormat:@"featureIdentifier: '%@'; ", v4];

  [v3 appendFormat:@"errorCode: '%@'; ", self->_errorCode];
  [v3 appendFormat:@"localizedTitle: '%@'; ", self->_localizedTitle];
  [v3 appendFormat:@"localizedDescription: '%@'; ", self->_localizedDescription];
  [v3 appendFormat:@"serverDescription: '%@'; ", self->_serverDescription];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end