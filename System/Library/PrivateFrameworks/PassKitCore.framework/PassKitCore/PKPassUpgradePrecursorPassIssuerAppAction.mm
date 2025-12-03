@interface PKPassUpgradePrecursorPassIssuerAppAction
- (PKPassUpgradePrecursorPassIssuerAppAction)initWithCoder:(id)coder;
- (PKPassUpgradePrecursorPassIssuerAppAction)initWithDictionary:(id)dictionary;
- (void)_dictionaryRepresentationInto:(id)into;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpgradePrecursorPassIssuerAppAction

- (PKPassUpgradePrecursorPassIssuerAppAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"app_url"];
    appUrl = v5->_appUrl;
    v5->_appUrl = v6;

    v8 = [dictionaryCopy PKStringForKey:@"app_identifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v8;

    if (!v5->_appUrl && !v5->_appIdentifier)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)_dictionaryRepresentationInto:(id)into
{
  intoCopy = into;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  [(PKPassUpgradePrecursorPassAction *)&v9 _dictionaryRepresentationInto:intoCopy];
  appUrl = self->_appUrl;
  if (appUrl)
  {
    v6 = [(NSString *)appUrl copy];
    [intoCopy setObject:v6 forKeyedSubscript:@"app_url"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    v8 = [(NSString *)appIdentifier copy];
    [intoCopy setObject:v8 forKeyedSubscript:@"app_identifier"];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  coderCopy = coder;
  [(PKPassUpgradePrecursorPassAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appUrl forKey:{@"app_url", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_appIdentifier forKey:@"app_identifier"];
}

- (PKPassUpgradePrecursorPassIssuerAppAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassUpgradePrecursorPassIssuerAppAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"app_url"];
    appUrl = v5->_appUrl;
    v5->_appUrl = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"app_identifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v8;
  }

  return v5;
}

@end