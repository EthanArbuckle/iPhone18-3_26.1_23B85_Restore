@interface PKSetupProductMethodInApp
- (PKSetupProductMethodInApp)init;
- (PKSetupProductMethodInApp)initWithCoder:(id)coder;
- (PKSetupProductMethodInApp)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier;
- (PKSetupProductMethodInApp)initWithURL:(id)l identifiers:(id)identifiers cardTypeSupport:(id)support identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCode:(id)code;
@end

@implementation PKSetupProductMethodInApp

- (PKSetupProductMethodInApp)init
{
  v3.receiver = self;
  v3.super_class = PKSetupProductMethodInApp;
  return [(PKSetupProductMethod *)&v3 initWithType:5];
}

- (PKSetupProductMethodInApp)initWithURL:(id)l identifiers:(id)identifiers cardTypeSupport:(id)support identifier:(id)identifier
{
  lCopy = l;
  identifiersCopy = identifiers;
  supportCopy = support;
  identifierCopy = identifier;
  if (([identifiersCopy count] || objc_msgSend(supportCopy, "count")) && ((v18.receiver = self, v18.super_class = PKSetupProductMethodInApp, v15 = -[PKSetupProductMethod initWithType:partnerIdentifier:](&v18, sel_initWithType_partnerIdentifier_, 5, identifierCopy), (self = v15) == 0) || (objc_storeStrong(&v15->_appLaunchURL, l), objc_storeStrong(&self->_associatedStoreIdentifiers, identifiers), objc_storeStrong(&self->_cardTypeSupport, support), -[NSArray count](self->_associatedStoreIdentifiers, "count")) || -[NSArray count](self->_cardTypeSupport, "count")))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKSetupProductMethodInApp)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PKSetupProductMethodInApp;
  v7 = [(PKSetupProductMethod *)&v24 initWithDictionary:dictionaryCopy partnerIdentifier:identifier];
  if (v7)
  {
    v8 = [dictionaryCopy PKStringForKey:@"appLaunchURL"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      appLaunchURL = v7->_appLaunchURL;
      v7->_appLaunchURL = v9;
    }

    else
    {
      appLaunchURL = [dictionaryCopy PKStringForKey:@"appLaunchURLScheme"];
      v11 = [dictionaryCopy PKStringForKey:@"appLaunchURLPath"];
      v12 = [(PKSetupProductMethod *)v7 _inAppProvisioningURLWthScheme:appLaunchURL path:v11];
      v13 = v7->_appLaunchURL;
      v7->_appLaunchURL = v12;
    }

    v14 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"associatedStoreIdentifiers"];
    associatedStoreIdentifiers = v7->_associatedStoreIdentifiers;
    v7->_associatedStoreIdentifiers = v14;

    v16 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"cardTypeSupport"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __66__PKSetupProductMethodInApp_initWithDictionary_partnerIdentifier___block_invoke;
    v22[3] = &unk_1E79CFDA8;
    v17 = v7;
    v23 = v17;
    v18 = [v16 pk_arrayByApplyingBlock:v22];
    v19 = v17[9];
    v17[9] = v18;

    if (!-[NSArray count](v7->_associatedStoreIdentifiers, "count") && ![v17[9] count])
    {

      v20 = 0;
      goto LABEL_9;
    }
  }

  v20 = v7;
LABEL_9:

  return v20;
}

- (void)_decorateDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodInApp;
  descriptionCopy = description;
  [(PKSetupProductMethod *)&v5 _decorateDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"appLaunchURL: '%@'; ", self->_appLaunchURL];
  [descriptionCopy appendFormat:@"associatedStoreIdentifiers: '%@'; ", self->_associatedStoreIdentifiers];
  [descriptionCopy appendFormat:@"cardTypeSupport: '%@'; ", self->_cardTypeSupport];
}

- (PKSetupProductMethodInApp)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKSetupProductMethodInApp;
  v5 = [(PKSetupProductMethod *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURL"];
    appLaunchURL = v5->_appLaunchURL;
    v5->_appLaunchURL = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v10 = [v8 initWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"associatedStoreIdentifiers"];
    associatedStoreIdentifiers = v5->_associatedStoreIdentifiers;
    v5->_associatedStoreIdentifiers = v11;

    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v13 initWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"cardTypeSupport"];
    cardTypeSupport = v5->_cardTypeSupport;
    v5->_cardTypeSupport = v16;
  }

  return v5;
}

- (void)encodeWithCode:(id)code
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodInApp;
  codeCopy = code;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:codeCopy];
  [codeCopy encodeObject:self->_appLaunchURL forKey:{@"appLaunchURL", v5.receiver, v5.super_class}];
  [codeCopy encodeObject:self->_associatedStoreIdentifiers forKey:@"associatedStoreIdentifiers"];
  [codeCopy encodeObject:self->_cardTypeSupport forKey:@"cardTypeSupport"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(PKSetupProductMethodInApp);
  [(PKSetupProductMethod *)self _copyInto:v5];
  v6 = [(NSURL *)self->_appLaunchURL copyWithZone:zone];
  appLaunchURL = v5->_appLaunchURL;
  v5->_appLaunchURL = v6;

  v8 = [(NSArray *)self->_associatedStoreIdentifiers copyWithZone:zone];
  associatedStoreIdentifiers = v5->_associatedStoreIdentifiers;
  v5->_associatedStoreIdentifiers = v8;

  v10 = [(NSArray *)self->_cardTypeSupport copyWithZone:zone];
  cardTypeSupport = v5->_cardTypeSupport;
  v5->_cardTypeSupport = v10;

  return v5;
}

@end