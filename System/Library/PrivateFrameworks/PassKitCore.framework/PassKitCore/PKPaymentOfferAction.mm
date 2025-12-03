@interface PKPaymentOfferAction
- (BOOL)isEqual:(id)equal;
- (NSURL)actionURL;
- (PKPaymentOfferAction)initWithCoder:(id)coder;
- (PKPaymentOfferAction)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)populateChallenge:(id)challenge verifier:(id)verifier;
@end

@implementation PKPaymentOfferAction

- (PKPaymentOfferAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKPaymentOfferAction;
  v5 = [(PKPaymentOfferAction *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKURLForKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v8;

    v5->_useAuthenticationSession = [dictionaryCopy PKBoolForKey:@"useAuthenticationSession"];
    v10 = [dictionaryCopy PKDictionaryForKey:@"dynamicContent"];
    if ([v10 count])
    {
      v11 = [[PKPaymentOfferDynamicContent alloc] initWithDictionary:v10];
      dynamicContent = v5->_dynamicContent;
      v5->_dynamicContent = v11;
    }
  }

  return v5;
}

- (void)populateChallenge:(id)challenge verifier:(id)verifier
{
  challengeCopy = challenge;
  verifierCopy = verifier;
  challenge = self->_challenge;
  self->_challenge = challengeCopy;
  v10 = challengeCopy;

  verifier = self->_verifier;
  self->_verifier = verifierCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  actionURL = [(PKPaymentOfferAction *)self actionURL];
  absoluteString = [actionURL absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"actionURL"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_useAuthenticationSession];
  [v3 setObject:v6 forKeyedSubscript:@"useAuthenticationSession"];

  dictionaryRepresentation = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"dynamicContent"];

  [v3 setObject:self->_challenge forKeyedSubscript:@"challenge"];
  [v3 setObject:self->_verifier forKeyedSubscript:@"verifier"];
  v8 = [v3 copy];

  return v8;
}

- (NSURL)actionURL
{
  if (self->_verifier)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self->_actionURL resolvingAgainstBaseURL:0];
    queryItems = [v3 queryItems];
    v5 = [queryItems mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v9 = v7;

    v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"verifier" value:self->_verifier];
    [v9 addObject:v10];

    [v3 setQueryItems:v9];
    v8 = [v3 URL];
  }

  else
  {
    v8 = self->_actionURL;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = v6->_identifier;
        v8 = self->_identifier;
        v9 = identifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v9)
          {
            goto LABEL_34;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_35;
          }
        }

        actionURL = self->_actionURL;
        v13 = v6->_actionURL;
        if (actionURL && v13)
        {
          if (([(NSURL *)actionURL isEqual:?]& 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (actionURL != v13)
        {
          goto LABEL_27;
        }

        if (self->_useAuthenticationSession == v6->_useAuthenticationSession)
        {
          dynamicContent = self->_dynamicContent;
          v15 = v6->_dynamicContent;
          if (dynamicContent && v15)
          {
            if ([(PKPaymentOfferDynamicContent *)dynamicContent isEqual:?])
            {
LABEL_21:
              challenge = v6->_challenge;
              v8 = self->_challenge;
              v17 = challenge;
              v10 = v17;
              if (v8 == v17)
              {

LABEL_29:
                verifier = self->_verifier;
                v19 = v6->_verifier;
                v8 = verifier;
                v20 = v19;
                v10 = v20;
                if (v8 == v20)
                {
                  LOBYTE(v11) = 1;
                }

                else
                {
                  LOBYTE(v11) = 0;
                  if (v8 && v20)
                  {
                    LOBYTE(v11) = [(NSString *)v8 isEqualToString:v20];
                  }
                }

                goto LABEL_34;
              }

              LOBYTE(v11) = 0;
              if (v8 && v17)
              {
                v11 = [(NSString *)v8 isEqualToString:v17];

                if (!v11)
                {
                  goto LABEL_35;
                }

                goto LABEL_29;
              }

LABEL_34:

              goto LABEL_35;
            }
          }

          else if (dynamicContent == v15)
          {
            goto LABEL_21;
          }
        }

LABEL_27:
        LOBYTE(v11) = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_36:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_actionURL];
  [v3 safelyAddObject:self->_dynamicContent];
  [v3 safelyAddObject:self->_challenge];
  [v3 safelyAddObject:self->_verifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_useAuthenticationSession - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  actionURL = [(PKPaymentOfferAction *)self actionURL];
  [v3 appendFormat:@"actionURL: '%@'; ", actionURL];

  if (self->_useAuthenticationSession)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"useAuthenticationSession: '%@;", v5];
  [v3 appendFormat:@"challenge: '%@'; ", self->_challenge];
  [v3 appendFormat:@"verifier: '%@'; ", self->_verifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPaymentOfferAction;
  v5 = [(PKPaymentOfferAction *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v8;

    v5->_useAuthenticationSession = [coderCopy decodeBoolForKey:@"useAuthenticationSession"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicContent"];
    dynamicContent = v5->_dynamicContent;
    v5->_dynamicContent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    challenge = v5->_challenge;
    v5->_challenge = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verifier"];
    verifier = v5->_verifier;
    v5->_verifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
  [coderCopy encodeBool:self->_useAuthenticationSession forKey:@"useAuthenticationSession"];
  [coderCopy encodeObject:self->_dynamicContent forKey:@"dynamicContent"];
  [coderCopy encodeObject:self->_challenge forKey:@"challenge"];
  [coderCopy encodeObject:self->_verifier forKey:@"verifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferAction allocWithZone:](PKPaymentOfferAction init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSURL *)self->_actionURL copyWithZone:zone];
  actionURL = v5->_actionURL;
  v5->_actionURL = v8;

  v5->_useAuthenticationSession = self->_useAuthenticationSession;
  v10 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent copyWithZone:zone];
  dynamicContent = v5->_dynamicContent;
  v5->_dynamicContent = v10;

  v12 = [(NSString *)self->_challenge copyWithZone:zone];
  challenge = v5->_challenge;
  v5->_challenge = v12;

  v14 = [(NSString *)self->_verifier copyWithZone:zone];
  verifier = v5->_verifier;
  v5->_verifier = v14;

  return v5;
}

@end