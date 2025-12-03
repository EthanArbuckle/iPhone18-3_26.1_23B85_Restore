@interface PKFeatureApplicationDeclineDetails
- (BOOL)isEqual:(id)equal;
- (PKFeatureApplicationDeclineDetails)initWithCoder:(id)coder;
- (PKFeatureApplicationDeclineDetails)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFeatureApplicationDeclineDetails

- (PKFeatureApplicationDeclineDetails)initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKFeatureApplicationDeclineDetails;
  v5 = [(PKFeatureApplicationDeclineDetails *)&v17 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [dictionaryCopy PKStringForKey:@"declineTermsIdentifier"];
  declinedTermsIdentifier = v5->_declinedTermsIdentifier;
  v5->_declinedTermsIdentifier = v6;

  if (v5->_declinedTermsIdentifier)
  {
    v8 = [dictionaryCopy PKStringForKey:@"pathTermsIdentifier"];
    pathTermsIdentifier = v5->_pathTermsIdentifier;
    v5->_pathTermsIdentifier = v8;

    v10 = [dictionaryCopy PKStringForKey:@"pathIdentifier"];
    pathIdentifier = v5->_pathIdentifier;
    v5->_pathIdentifier = v10;

LABEL_4:
    v12 = v5;
    goto LABEL_8;
  }

  v13 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error: Declined identifier missing from :%@", buf, 0xCu);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (PKFeatureApplicationDeclineDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKFeatureApplicationDeclineDetails;
  v5 = [(PKFeatureApplicationDeclineDetails *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"declinedTermsIdentifier"];
    declinedTermsIdentifier = v5->_declinedTermsIdentifier;
    v5->_declinedTermsIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathTermsIdentifier"];
    pathTermsIdentifier = v5->_pathTermsIdentifier;
    v5->_pathTermsIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathIdentifier"];
    pathIdentifier = v5->_pathIdentifier;
    v5->_pathIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  declinedTermsIdentifier = self->_declinedTermsIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:declinedTermsIdentifier forKey:@"declinedTermsIdentifier"];
  [coderCopy encodeObject:self->_pathTermsIdentifier forKey:@"pathTermsIdentifier"];
  [coderCopy encodeObject:self->_pathIdentifier forKey:@"pathIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"declinedTermsIdentifier: '%@'; ", self->_declinedTermsIdentifier];
  [v3 appendFormat:@"pathTermsIdentifier: '%@'; ", self->_pathTermsIdentifier];
  [v3 appendFormat:@"pathIdentifier: '%@'; ", self->_pathIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  declinedTermsIdentifier = self->_declinedTermsIdentifier;
  v6 = equalCopy[1];
  if (declinedTermsIdentifier && v6)
  {
    if (([(NSString *)declinedTermsIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (declinedTermsIdentifier != v6)
  {
    goto LABEL_14;
  }

  pathTermsIdentifier = self->_pathTermsIdentifier;
  v8 = equalCopy[2];
  if (!pathTermsIdentifier || !v8)
  {
    if (pathTermsIdentifier == v8)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (([(NSString *)pathTermsIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  pathIdentifier = self->_pathIdentifier;
  v10 = equalCopy[3];
  if (pathIdentifier && v10)
  {
    v11 = [(NSString *)pathIdentifier isEqual:?];
  }

  else
  {
    v11 = pathIdentifier == v10;
  }

LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_declinedTermsIdentifier];
  [array safelyAddObject:self->_pathTermsIdentifier];
  [array safelyAddObject:self->_pathIdentifier];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFeatureApplicationDeclineDetails allocWithZone:](PKFeatureApplicationDeclineDetails init];
  v6 = [(NSString *)self->_declinedTermsIdentifier copyWithZone:zone];
  declinedTermsIdentifier = v5->_declinedTermsIdentifier;
  v5->_declinedTermsIdentifier = v6;

  v8 = [(NSString *)self->_pathTermsIdentifier copyWithZone:zone];
  pathTermsIdentifier = v5->_pathTermsIdentifier;
  v5->_pathTermsIdentifier = v8;

  v10 = [(NSString *)self->_pathIdentifier copyWithZone:zone];
  pathIdentifier = v5->_pathIdentifier;
  v5->_pathIdentifier = v10;

  return v5;
}

@end