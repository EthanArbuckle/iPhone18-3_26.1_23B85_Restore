@interface PKApplyVerificationPage
- (PKApplyVerificationPage)initWithDictionary:(id)dictionary type:(unint64_t)type codeLength:(unint64_t)length fieldOptions:(id)options;
- (PKApplyVerificationPage)initWithDictonary:(id)dictonary;
@end

@implementation PKApplyVerificationPage

- (PKApplyVerificationPage)initWithDictonary:(id)dictonary
{
  dictonaryCopy = dictonary;
  v5 = [dictonaryCopy PKStringForKey:@"verificationType"];
  v6 = PKApplyVerificationTypeFromString(v5);

  v7 = -[PKApplyVerificationPage initWithDictionary:type:codeLength:fieldOptions:](self, "initWithDictionary:type:codeLength:fieldOptions:", dictonaryCopy, v6, [dictonaryCopy PKIntegerForKey:@"verificationCodeLength"], 0);
  return v7;
}

- (PKApplyVerificationPage)initWithDictionary:(id)dictionary type:(unint64_t)type codeLength:(unint64_t)length fieldOptions:(id)options
{
  dictionaryCopy = dictionary;
  optionsCopy = options;
  if (type)
  {
    if (type != 1 || length)
    {
      v14.receiver = self;
      v14.super_class = PKApplyVerificationPage;
      v12 = [(PKDynamicProvisioningFieldsPageContent *)&v14 initWithDictionary:dictionaryCopy fieldOptions:optionsCopy businessChatIdentifier:0];
      if (v12)
      {
        v12->_verificationType = type;
        v12->_verificationCodeLength = length;
      }

      self = v12;
      length = self;
    }
  }

  else
  {
    length = 0;
  }

  return length;
}

@end