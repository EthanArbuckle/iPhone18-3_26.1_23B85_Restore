@interface PKFPANCardDescriptor
+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)nickname credential:(id)credential;
+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)nickname displayableLastFour:(id)four credentialType:(unint64_t)type;
+ (id)_createTaggedDescriptor;
@end

@implementation PKFPANCardDescriptor

+ (id)_createTaggedDescriptor
{
  v2 = [(PKAutoFillCardDescriptor *)[PKFPANCardDescriptor alloc] _initWithType:1];
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v3 UUIDString];
  [v2 setIdentifier:uUIDString];

  return v2;
}

+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)nickname displayableLastFour:(id)four credentialType:(unint64_t)type
{
  fourCopy = four;
  nicknameCopy = nickname;
  v9 = +[PKFPANCardDescriptor _createTaggedDescriptor];
  v10 = [nicknameCopy copy];

  [(PKAutoFillCardDescriptor *)v9 setCardNickname:v10];
  v11 = [fourCopy copy];

  [(PKAutoFillCardDescriptor *)v9 setDisplayableLastFour:v11];
  [(PKAutoFillCardDescriptor *)v9 setCredentialType:type];
  return v9;
}

+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)nickname credential:(id)credential
{
  credentialCopy = credential;
  nicknameCopy = nickname;
  v7 = +[PKFPANCardDescriptor _createTaggedDescriptor];
  v8 = [nicknameCopy copy];

  [(PKAutoFillCardDescriptor *)v7 setCardNickname:v8];
  primaryAccountNumber = [credentialCopy primaryAccountNumber];
  v10 = PKFPANSuffixFromFPAN(primaryAccountNumber);
  [(PKAutoFillCardDescriptor *)v7 setDisplayableLastFour:v10];

  primaryAccountNumber2 = [credentialCopy primaryAccountNumber];

  [(PKAutoFillCardDescriptor *)v7 setCredentialType:PKAutoFillCredentialTypeFromFPAN(primaryAccountNumber2)];
  return v7;
}

@end