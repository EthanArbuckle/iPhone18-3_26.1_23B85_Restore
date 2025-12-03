@interface PKSubcredentialSharingAnalyticsData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharingAnalyticsData:(id)data;
- (PKSubcredentialSharingAnalyticsData)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSubcredentialSharingAnalyticsData

- (PKSubcredentialSharingAnalyticsData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKSubcredentialSharingAnalyticsData;
  v5 = [(PKSubcredentialSharingAnalyticsData *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharerKeyIdentifier"];
    sharerKeyIdentifier = v5->_sharerKeyIdentifier;
    v5->_sharerKeyIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInvitationFlow"];
    v9 = v8;
    if (v8)
    {
      v10 = PKSharingInvitationFlowFromString(v8);
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "sharingInvitationFlow value not found in archive. Setting to PKSharingInvitationFlowUnknown.", v13, 2u);
      }

      v10 = 0;
    }

    v5->_sharingInvitationFlow = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sharerKeyIdentifier = self->_sharerKeyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sharerKeyIdentifier forKey:@"sharerKeyIdentifier"];
  v6 = PKSharingInvitationFlowToString(self->_sharingInvitationFlow);
  [coderCopy encodeObject:v6 forKey:@"sharingInvitationFlow"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"sharerKeyIdentifier: '%@'; ", self->_sharerKeyIdentifier];
  v7 = PKSharingInvitationFlowToString(self->_sharingInvitationFlow);
  [v6 appendFormat:@"sharingInvitationFlow: '%@'; ", v7];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSubcredentialSharingAnalyticsData *)self isEqualToSharingAnalyticsData:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharingAnalyticsData:(id)data
{
  dataCopy = data;
  sharerKeyIdentifier = self->_sharerKeyIdentifier;
  v6 = dataCopy[1];
  if (sharerKeyIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (sharerKeyIdentifier == v6)
    {
LABEL_9:
      v8 = self->_sharingInvitationFlow == dataCopy[2];
      goto LABEL_10;
    }
  }

  else if (([(NSString *)sharerKeyIdentifier isEqual:?]& 1) != 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end