@interface PKPassUpgradePrecursorPassAction
+ (id)precursorActionFromDictionary:(id)dictionary;
- (PKPassUpgradePrecursorPassAction)initWithCoder:(id)coder;
- (PKPassUpgradePrecursorPassAction)initWithDictionary:(id)dictionary;
- (id)_initWithType:(unint64_t)type;
- (id)asDictionary;
- (void)_dictionaryRepresentationInto:(id)into;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpgradePrecursorPassAction

+ (id)precursorActionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"type"];
  v5 = PKPassUpgradePrecursorPassActionTypeFromString(v4);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = PKPassUpgradePrecursorPassGenericReprovisionAction;
    }

    else if (v5 == 4)
    {
      v6 = PKPassUpgradePrecursorPassIssuerAppAction;
    }

    else
    {
      v6 = PKPassUpgradePrecursorPassDPANIDSignatureAction;
    }

    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = PKPassUpgradePrecursorPassProofingAction;
    }

    else
    {
      v6 = PKPassUpgradePrecursorPassAction;
    }

LABEL_14:
    v8 = [[v6 alloc] initWithDictionary:dictionaryCopy];
    goto LABEL_15;
  }

  v7 = PKLogFacilityTypeGetObject(0x27uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Unknown Precursor pass action type request", v10, 2u);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (PKPassUpgradePrecursorPassAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v8 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = PKPassUpgradePrecursorPassActionTypeFromString(v6);
  }

  return v5;
}

- (id)_initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassAction;
  result = [(PKPassUpgradePrecursorPassAction *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PKPassUpgradePrecursorPassAction *)self _dictionaryRepresentationInto:v3];
  v4 = [v3 copy];

  return v4;
}

- (void)_dictionaryRepresentationInto:(id)into
{
  v4 = self->_type - 1;
  if (v4 > 4)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79D9DB0[v4];
  }

  [into setObject:v5 forKeyedSubscript:@"type"];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = self->_type - 1;
  if (v4 > 4)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79D9DB0[v4];
  }

  [coder encodeObject:v5 forKey:@"type"];
}

- (PKPassUpgradePrecursorPassAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPassUpgradePrecursorPassActionTypeFromString(v6);
  }

  return v5;
}

@end