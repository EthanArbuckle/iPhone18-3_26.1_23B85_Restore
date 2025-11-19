@interface PKSetupProductMethodInApp
- (PKSetupProductMethodInApp)init;
- (PKSetupProductMethodInApp)initWithCoder:(id)a3;
- (PKSetupProductMethodInApp)initWithDictionary:(id)a3 partnerIdentifier:(id)a4;
- (PKSetupProductMethodInApp)initWithURL:(id)a3 identifiers:(id)a4 cardTypeSupport:(id)a5 identifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCode:(id)a3;
@end

@implementation PKSetupProductMethodInApp

- (PKSetupProductMethodInApp)init
{
  v3.receiver = self;
  v3.super_class = PKSetupProductMethodInApp;
  return [(PKSetupProductMethod *)&v3 initWithType:5];
}

- (PKSetupProductMethodInApp)initWithURL:(id)a3 identifiers:(id)a4 cardTypeSupport:(id)a5 identifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (([v12 count] || objc_msgSend(v13, "count")) && ((v18.receiver = self, v18.super_class = PKSetupProductMethodInApp, v15 = -[PKSetupProductMethod initWithType:partnerIdentifier:](&v18, sel_initWithType_partnerIdentifier_, 5, v14), (self = v15) == 0) || (objc_storeStrong(&v15->_appLaunchURL, a3), objc_storeStrong(&self->_associatedStoreIdentifiers, a4), objc_storeStrong(&self->_cardTypeSupport, a5), -[NSArray count](self->_associatedStoreIdentifiers, "count")) || -[NSArray count](self->_cardTypeSupport, "count")))
  {
    self = self;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (PKSetupProductMethodInApp)initWithDictionary:(id)a3 partnerIdentifier:(id)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = PKSetupProductMethodInApp;
  v7 = [(PKSetupProductMethod *)&v24 initWithDictionary:v6 partnerIdentifier:a4];
  if (v7)
  {
    v8 = [v6 PKStringForKey:@"appLaunchURL"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      appLaunchURL = v7->_appLaunchURL;
      v7->_appLaunchURL = v9;
    }

    else
    {
      appLaunchURL = [v6 PKStringForKey:@"appLaunchURLScheme"];
      v11 = [v6 PKStringForKey:@"appLaunchURLPath"];
      v12 = [(PKSetupProductMethod *)v7 _inAppProvisioningURLWthScheme:appLaunchURL path:v11];
      v13 = v7->_appLaunchURL;
      v7->_appLaunchURL = v12;
    }

    v14 = [v6 PKArrayContaining:objc_opt_class() forKey:@"associatedStoreIdentifiers"];
    associatedStoreIdentifiers = v7->_associatedStoreIdentifiers;
    v7->_associatedStoreIdentifiers = v14;

    v16 = [v6 PKArrayContaining:objc_opt_class() forKey:@"cardTypeSupport"];
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

- (void)_decorateDescription:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodInApp;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 _decorateDescription:v4];
  [v4 appendFormat:@"appLaunchURL: '%@'; ", self->_appLaunchURL];
  [v4 appendFormat:@"associatedStoreIdentifiers: '%@'; ", self->_associatedStoreIdentifiers];
  [v4 appendFormat:@"cardTypeSupport: '%@'; ", self->_cardTypeSupport];
}

- (PKSetupProductMethodInApp)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKSetupProductMethodInApp;
  v5 = [(PKSetupProductMethod *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURL"];
    appLaunchURL = v5->_appLaunchURL;
    v5->_appLaunchURL = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v10 = [v8 initWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"associatedStoreIdentifiers"];
    associatedStoreIdentifiers = v5->_associatedStoreIdentifiers;
    v5->_associatedStoreIdentifiers = v11;

    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v13 initWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"cardTypeSupport"];
    cardTypeSupport = v5->_cardTypeSupport;
    v5->_cardTypeSupport = v16;
  }

  return v5;
}

- (void)encodeWithCode:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodInApp;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_appLaunchURL forKey:{@"appLaunchURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_associatedStoreIdentifiers forKey:@"associatedStoreIdentifiers"];
  [v4 encodeObject:self->_cardTypeSupport forKey:@"cardTypeSupport"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(PKSetupProductMethodInApp);
  [(PKSetupProductMethod *)self _copyInto:v5];
  v6 = [(NSURL *)self->_appLaunchURL copyWithZone:a3];
  appLaunchURL = v5->_appLaunchURL;
  v5->_appLaunchURL = v6;

  v8 = [(NSArray *)self->_associatedStoreIdentifiers copyWithZone:a3];
  associatedStoreIdentifiers = v5->_associatedStoreIdentifiers;
  v5->_associatedStoreIdentifiers = v8;

  v10 = [(NSArray *)self->_cardTypeSupport copyWithZone:a3];
  cardTypeSupport = v5->_cardTypeSupport;
  v5->_cardTypeSupport = v10;

  return v5;
}

@end