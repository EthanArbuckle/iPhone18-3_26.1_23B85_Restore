@interface PKFPANCardCanSaveResult
+ (id)empty;
- (PKFPANCardCanSaveResult)initWithCoder:(id)coder;
- (PKFPANCardCanSaveResult)initWithSavableFields:(unint64_t)fields updatableFields:(unint64_t)updatableFields;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFPANCardCanSaveResult

- (PKFPANCardCanSaveResult)initWithSavableFields:(unint64_t)fields updatableFields:(unint64_t)updatableFields
{
  v7.receiver = self;
  v7.super_class = PKFPANCardCanSaveResult;
  result = [(PKFPANCardCanSaveResult *)&v7 init];
  if (result)
  {
    result->_savableFields = fields;
    result->_updatableFields = updatableFields;
  }

  return result;
}

+ (id)empty
{
  v2 = [PKFPANCardCanSaveResult alloc];

  return [(PKFPANCardCanSaveResult *)v2 initWithSavableFields:0 updatableFields:0];
}

- (PKFPANCardCanSaveResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKFPANCardCanSaveResult;
  v5 = [(PKFPANCardCanSaveResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"savableFields"];
    v5->_savableFields = PKAutoFillCardCredentialRequestedFieldsFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatableFields"];
    v5->_updatableFields = PKAutoFillCardCredentialRequestedFieldsFromString(v7);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedCard"];
    matchedCard = v5->_matchedCard;
    v5->_matchedCard = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  savableFields = self->_savableFields;
  coderCopy = coder;
  v5 = PKAutoFillCardCredentialRequestedFieldsToString(savableFields);
  [coderCopy encodeObject:v5 forKey:@"savableFields"];

  v6 = PKAutoFillCardCredentialRequestedFieldsToString(self->_updatableFields);
  [coderCopy encodeObject:v6 forKey:@"updatableFields"];

  [coderCopy encodeObject:self->_matchedCard forKey:@"matchedCard"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = PKAutoFillCardCredentialRequestedFieldsToString(self->_savableFields);
  [v6 appendFormat:@"savableFields: '%@'; ", v7];

  v8 = PKAutoFillCardCredentialRequestedFieldsToString(self->_updatableFields);
  [v6 appendFormat:@"updatableFields: '%@'; ", v8];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

@end