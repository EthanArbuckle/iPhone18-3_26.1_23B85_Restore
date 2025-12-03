@interface PKDynamicProvisioningPageLearnMoreContent
- (PKDynamicProvisioningPageLearnMoreContent)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKDynamicProvisioningPageLearnMoreContent

- (PKDynamicProvisioningPageLearnMoreContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PKDynamicProvisioningPageLearnMoreContent;
  v5 = [(PKDynamicProvisioningPageLearnMoreContent *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"buttonTitle"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [dictionaryCopy PKStringForKey:@"learnMoreButtonTitle"];
    }

    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v8;

    v10 = [dictionaryCopy PKURLForKey:@"buttonURL"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [dictionaryCopy PKURLForKey:@"learnMoreButtonURL"];
    }

    buttonURL = v5->_buttonURL;
    v5->_buttonURL = v12;

    v14 = [dictionaryCopy PKStringForKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v14;

    v16 = [dictionaryCopy PKStringForKey:@"title"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [dictionaryCopy PKStringForKey:@"learnMoreTitle"];
    }

    title = v5->_title;
    v5->_title = v18;

    v20 = [dictionaryCopy PKStringForKey:@"subtitle"];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [dictionaryCopy PKStringForKey:@"learnMoreSubtitle"];
    }

    subtitle = v5->_subtitle;
    v5->_subtitle = v22;

    v24 = [dictionaryCopy PKStringForKey:@"body"];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [dictionaryCopy PKStringForKey:@"learnMoreBody"];
    }

    body = v5->_body;
    v5->_body = v26;

    v28 = [dictionaryCopy PKStringForKey:@"businessChatButtonTitle"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = [dictionaryCopy PKStringForKey:@"learnMoreBusinessChatButtonTitle"];
    }

    businessChatButtonTitle = v5->_businessChatButtonTitle;
    v5->_businessChatButtonTitle = v30;

    v32 = [dictionaryCopy PKStringForKey:@"businessChatIntentName"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = [dictionaryCopy PKStringForKey:@"learnMoreBusinessChatIntentName"];
    }

    businessChatIntentName = v5->_businessChatIntentName;
    v5->_businessChatIntentName = v34;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKDynamicProvisioningPageLearnMoreContent allocWithZone:](PKDynamicProvisioningPageLearnMoreContent init];
  v6 = [(NSString *)self->_buttonTitle copyWithZone:zone];
  buttonTitle = v5->_buttonTitle;
  v5->_buttonTitle = v6;

  v8 = [(NSURL *)self->_buttonURL copyWithZone:zone];
  buttonURL = v5->_buttonURL;
  v5->_buttonURL = v8;

  v10 = [(NSString *)self->_termsIdentifier copyWithZone:zone];
  termsIdentifier = v5->_termsIdentifier;
  v5->_termsIdentifier = v10;

  v12 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v12;

  v14 = [(NSString *)self->_subtitle copyWithZone:zone];
  subtitle = v5->_subtitle;
  v5->_subtitle = v14;

  v16 = [(NSString *)self->_body copyWithZone:zone];
  body = v5->_body;
  v5->_body = v16;

  v18 = [(NSString *)self->_businessChatButtonTitle copyWithZone:zone];
  businessChatButtonTitle = v5->_businessChatButtonTitle;
  v5->_businessChatButtonTitle = v18;

  v20 = [(NSString *)self->_businessChatIntentName copyWithZone:zone];
  businessChatIntentName = v5->_businessChatIntentName;
  v5->_businessChatIntentName = v20;

  return v5;
}

@end