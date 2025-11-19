@interface PKFeatureApplicationDeclineDetails
- (BOOL)isEqual:(id)a3;
- (PKFeatureApplicationDeclineDetails)initWithCoder:(id)a3;
- (PKFeatureApplicationDeclineDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFeatureApplicationDeclineDetails

- (PKFeatureApplicationDeclineDetails)initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKFeatureApplicationDeclineDetails;
  v5 = [(PKFeatureApplicationDeclineDetails *)&v17 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 PKStringForKey:@"declineTermsIdentifier"];
  declinedTermsIdentifier = v5->_declinedTermsIdentifier;
  v5->_declinedTermsIdentifier = v6;

  if (v5->_declinedTermsIdentifier)
  {
    v8 = [v4 PKStringForKey:@"pathTermsIdentifier"];
    pathTermsIdentifier = v5->_pathTermsIdentifier;
    v5->_pathTermsIdentifier = v8;

    v10 = [v4 PKStringForKey:@"pathIdentifier"];
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

- (PKFeatureApplicationDeclineDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKFeatureApplicationDeclineDetails;
  v5 = [(PKFeatureApplicationDeclineDetails *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"declinedTermsIdentifier"];
    declinedTermsIdentifier = v5->_declinedTermsIdentifier;
    v5->_declinedTermsIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathTermsIdentifier"];
    pathTermsIdentifier = v5->_pathTermsIdentifier;
    v5->_pathTermsIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathIdentifier"];
    pathIdentifier = v5->_pathIdentifier;
    v5->_pathIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  declinedTermsIdentifier = self->_declinedTermsIdentifier;
  v5 = a3;
  [v5 encodeObject:declinedTermsIdentifier forKey:@"declinedTermsIdentifier"];
  [v5 encodeObject:self->_pathTermsIdentifier forKey:@"pathTermsIdentifier"];
  [v5 encodeObject:self->_pathIdentifier forKey:@"pathIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"declinedTermsIdentifier: '%@'; ", self->_declinedTermsIdentifier];
  [v3 appendFormat:@"pathTermsIdentifier: '%@'; ", self->_pathTermsIdentifier];
  [v3 appendFormat:@"pathIdentifier: '%@'; ", self->_pathIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  declinedTermsIdentifier = self->_declinedTermsIdentifier;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[3];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_declinedTermsIdentifier];
  [v3 safelyAddObject:self->_pathTermsIdentifier];
  [v3 safelyAddObject:self->_pathIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKFeatureApplicationDeclineDetails allocWithZone:](PKFeatureApplicationDeclineDetails init];
  v6 = [(NSString *)self->_declinedTermsIdentifier copyWithZone:a3];
  declinedTermsIdentifier = v5->_declinedTermsIdentifier;
  v5->_declinedTermsIdentifier = v6;

  v8 = [(NSString *)self->_pathTermsIdentifier copyWithZone:a3];
  pathTermsIdentifier = v5->_pathTermsIdentifier;
  v5->_pathTermsIdentifier = v8;

  v10 = [(NSString *)self->_pathIdentifier copyWithZone:a3];
  pathIdentifier = v5->_pathIdentifier;
  v5->_pathIdentifier = v10;

  return v5;
}

@end