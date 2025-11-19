@interface PKFPANCardDescriptor
+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)a3 credential:(id)a4;
+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)a3 displayableLastFour:(id)a4 credentialType:(unint64_t)a5;
+ (id)_createTaggedDescriptor;
@end

@implementation PKFPANCardDescriptor

+ (id)_createTaggedDescriptor
{
  v2 = [(PKAutoFillCardDescriptor *)[PKFPANCardDescriptor alloc] _initWithType:1];
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [v3 UUIDString];
  [v2 setIdentifier:v4];

  return v2;
}

+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)a3 displayableLastFour:(id)a4 credentialType:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[PKFPANCardDescriptor _createTaggedDescriptor];
  v10 = [v8 copy];

  [(PKAutoFillCardDescriptor *)v9 setCardNickname:v10];
  v11 = [v7 copy];

  [(PKAutoFillCardDescriptor *)v9 setDisplayableLastFour:v11];
  [(PKAutoFillCardDescriptor *)v9 setCredentialType:a5];
  return v9;
}

+ (PKFPANCardDescriptor)descriptorWithCardNickname:(id)a3 credential:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PKFPANCardDescriptor _createTaggedDescriptor];
  v8 = [v6 copy];

  [(PKAutoFillCardDescriptor *)v7 setCardNickname:v8];
  v9 = [v5 primaryAccountNumber];
  v10 = PKFPANSuffixFromFPAN(v9);
  [(PKAutoFillCardDescriptor *)v7 setDisplayableLastFour:v10];

  v11 = [v5 primaryAccountNumber];

  [(PKAutoFillCardDescriptor *)v7 setCredentialType:PKAutoFillCredentialTypeFromFPAN(v11)];
  return v7;
}

@end