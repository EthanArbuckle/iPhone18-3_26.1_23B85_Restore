@interface PKPassUpgradePrecursorPassIssuerAppAction
- (PKPassUpgradePrecursorPassIssuerAppAction)initWithCoder:(id)a3;
- (PKPassUpgradePrecursorPassIssuerAppAction)initWithDictionary:(id)a3;
- (void)_dictionaryRepresentationInto:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpgradePrecursorPassIssuerAppAction

- (PKPassUpgradePrecursorPassIssuerAppAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"app_url"];
    appUrl = v5->_appUrl;
    v5->_appUrl = v6;

    v8 = [v4 PKStringForKey:@"app_identifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v8;

    if (!v5->_appUrl && !v5->_appIdentifier)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)_dictionaryRepresentationInto:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  [(PKPassUpgradePrecursorPassAction *)&v9 _dictionaryRepresentationInto:v4];
  appUrl = self->_appUrl;
  if (appUrl)
  {
    v6 = [(NSString *)appUrl copy];
    [v4 setObject:v6 forKeyedSubscript:@"app_url"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    v8 = [(NSString *)appIdentifier copy];
    [v4 setObject:v8 forKeyedSubscript:@"app_identifier"];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  v4 = a3;
  [(PKPassUpgradePrecursorPassAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_appUrl forKey:{@"app_url", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_appIdentifier forKey:@"app_identifier"];
}

- (PKPassUpgradePrecursorPassIssuerAppAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_url"];
    appUrl = v5->_appUrl;
    v5->_appUrl = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_identifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v8;
  }

  return v5;
}

@end