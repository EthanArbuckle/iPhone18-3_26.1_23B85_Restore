@interface PKFPANCardCanSaveResult
+ (id)empty;
- (PKFPANCardCanSaveResult)initWithCoder:(id)a3;
- (PKFPANCardCanSaveResult)initWithSavableFields:(unint64_t)a3 updatableFields:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFPANCardCanSaveResult

- (PKFPANCardCanSaveResult)initWithSavableFields:(unint64_t)a3 updatableFields:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKFPANCardCanSaveResult;
  result = [(PKFPANCardCanSaveResult *)&v7 init];
  if (result)
  {
    result->_savableFields = a3;
    result->_updatableFields = a4;
  }

  return result;
}

+ (id)empty
{
  v2 = [PKFPANCardCanSaveResult alloc];

  return [(PKFPANCardCanSaveResult *)v2 initWithSavableFields:0 updatableFields:0];
}

- (PKFPANCardCanSaveResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKFPANCardCanSaveResult;
  v5 = [(PKFPANCardCanSaveResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"savableFields"];
    v5->_savableFields = PKAutoFillCardCredentialRequestedFieldsFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatableFields"];
    v5->_updatableFields = PKAutoFillCardCredentialRequestedFieldsFromString(v7);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchedCard"];
    matchedCard = v5->_matchedCard;
    v5->_matchedCard = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  savableFields = self->_savableFields;
  v7 = a3;
  v5 = PKAutoFillCardCredentialRequestedFieldsToString(savableFields);
  [v7 encodeObject:v5 forKey:@"savableFields"];

  v6 = PKAutoFillCardCredentialRequestedFieldsToString(self->_updatableFields);
  [v7 encodeObject:v6 forKey:@"updatableFields"];

  [v7 encodeObject:self->_matchedCard forKey:@"matchedCard"];
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