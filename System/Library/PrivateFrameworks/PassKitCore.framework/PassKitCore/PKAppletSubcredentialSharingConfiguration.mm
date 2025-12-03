@interface PKAppletSubcredentialSharingConfiguration
- (PKAppletSubcredentialSharingConfiguration)initWithCoder:(id)coder;
- (PKAppletSubcredentialSharingConfiguration)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppletSubcredentialSharingConfiguration

- (PKAppletSubcredentialSharingConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PKAppletSubcredentialSharingConfiguration *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"maxNumberOfSharedCredentials"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5->_maxNumberOfSharedCredentials = [v6 unsignedIntegerValue];
      v7 = [dictionaryCopy objectForKey:@"numberOfShareableCredentials"];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5->_numberOfShareableCredentials = [v7 unsignedIntegerValue];
          v5->_sharingRequiresPassword = [dictionaryCopy PKBoolForKey:@"sharingRequiresPassword"];
          v8 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"shareActivationOptions"];
          v9 = [[PKPassShareActivationOptions alloc] initWithCarKeyIdentifiers:v8];
          activationOptions = v5->_activationOptions;
          v5->_activationOptions = v9;

          v11 = [dictionaryCopy objectForKey:@"sharingPasswordLength"];
          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v5->_sharingPasswordLength = [v11 unsignedIntegerValue];
            }
          }

          v12 = [dictionaryCopy PKArrayForKey:@"entitlements"];
          entitlements = v5->_entitlements;
          v5->_entitlements = v12;

          goto LABEL_10;
        }
      }

      v15 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Received invalid credential entitlement dictionary - numberOfShareableCredentials", v17, 2u);
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Received invalid credential entitlement dictionary - maxNumberOfSharedCredentials", buf, 2u);
      }
    }

    v14 = 0;
    goto LABEL_17;
  }

LABEL_10:
  v14 = v5;
LABEL_17:

  return v14;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxNumberOfSharedCredentials];
  [v3 setObject:v4 forKeyedSubscript:@"maxNumberOfSharedCredentials"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfShareableCredentials];
  [v3 setObject:v5 forKeyedSubscript:@"numberOfShareableCredentials"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_sharingRequiresPassword];
  [v3 setObject:v6 forKeyedSubscript:@"sharingRequiresPassword"];

  identifiers = [(PKPassShareActivationOptions *)self->_activationOptions identifiers];
  [v3 setObject:identifiers forKeyedSubscript:@"shareActivationOptions"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sharingPasswordLength];
  [v3 setObject:v8 forKeyedSubscript:@"sharingPasswordLength"];

  [v3 setObject:self->_entitlements forKeyedSubscript:@"entitlements"];
  v9 = [v3 copy];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"shareableCredentials: '%ld' (%ld); ", self->_numberOfShareableCredentials, self->_maxNumberOfSharedCredentials];
  if (self->_sharingRequiresPassword)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v6 appendFormat:@"sharingRequiresPassword: '%@'; ", v7];
  [v6 appendFormat:@"activationOptions: '%@'; ", self->_activationOptions];
  [v6 appendFormat:@"sharingPasswordLength: '%ld'; ", self->_sharingPasswordLength];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  maxNumberOfSharedCredentials = self->_maxNumberOfSharedCredentials;
  coderCopy = coder;
  [coderCopy encodeInteger:maxNumberOfSharedCredentials forKey:@"maxNumberOfSharedCredentials"];
  [coderCopy encodeInteger:self->_numberOfShareableCredentials forKey:@"numberOfShareableCredentials"];
  [coderCopy encodeInteger:self->_sharingRequiresPassword forKey:@"sharingRequiresPassword"];
  [coderCopy encodeObject:self->_activationOptions forKey:@"shareActivationOptions"];
  [coderCopy encodeInteger:self->_sharingPasswordLength forKey:@"sharingPasswordLength"];
  [coderCopy encodeObject:self->_entitlements forKey:@"entitlements"];
}

- (PKAppletSubcredentialSharingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAppletSubcredentialSharingConfiguration *)self init];
  if (v5)
  {
    v5->_maxNumberOfSharedCredentials = [coderCopy decodeIntegerForKey:@"maxNumberOfSharedCredentials"];
    v5->_numberOfShareableCredentials = [coderCopy decodeIntegerForKey:@"numberOfShareableCredentials"];
    v5->_sharingRequiresPassword = [coderCopy decodeIntegerForKey:@"sharingRequiresPassword"] != 0;
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareActivationOptions"];
    activationOptions = v5->_activationOptions;
    v5->_activationOptions = v6;

    v5->_sharingPasswordLength = [coderCopy decodeIntegerForKey:@"sharingPasswordLength"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"entitlements"];
    entitlements = v5->_entitlements;
    v5->_entitlements = v13;
  }

  return v5;
}

@end