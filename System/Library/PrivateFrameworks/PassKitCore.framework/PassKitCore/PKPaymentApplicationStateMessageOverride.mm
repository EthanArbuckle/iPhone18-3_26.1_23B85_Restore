@interface PKPaymentApplicationStateMessageOverride
- (PKPaymentApplicationStateMessageOverride)initWithCoder:(id)coder;
- (PKPaymentApplicationStateMessageOverride)initWithDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentApplicationStateMessageOverride

- (PKPaymentApplicationStateMessageOverride)initWithDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  privateBundleCopy = privateBundle;
  v11 = [dictionaryCopy PKStringForKey:@"title"];
  v12 = [dictionaryCopy PKStringForKey:@"description"];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKPaymentApplicationStateMessageOverride failed to initialize as title (%@) or description (%@) was missing", buf, 0x16u);
    }

    selfCopy = 0;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = PKPaymentApplicationStateMessageOverride;
    v17 = [(PKPaymentApplicationStateMessageOverride *)&v29 init];
    v18 = v17;
    if (v17)
    {
      v19 = PKLocalizedPassStringForPassBundle(v13, bundleCopy, privateBundleCopy);
      body = v18->_body;
      v18->_body = v19;

      v21 = PKLocalizedPassStringForPassBundle(v11, bundleCopy, privateBundleCopy);
      title = v18->_title;
      v18->_title = v21;

      v23 = [dictionaryCopy PKDictionaryForKey:@"action"];
      if (v23)
      {
        v24 = [bundleCopy pathForResource:@"pass" ofType:@"strings"];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v24];
        v26 = [[PKPaymentPassAction alloc] initWithDictionary:v23 localizations:v25];
        action = v18->_action;
        v18->_action = v26;
      }
    }

    self = v18;
    selfCopy = self;
  }

  return selfCopy;
}

- (PKPaymentApplicationStateMessageOverride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentApplicationStateMessageOverride;
  v5 = [(PKPaymentApplicationStateMessageOverride *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_body forKey:@"description"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_body copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PKPaymentPassAction *)self->_action copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

@end