@interface PKDynamicProvisioningPageLearnMoreContent
- (PKDynamicProvisioningPageLearnMoreContent)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKDynamicProvisioningPageLearnMoreContent

- (PKDynamicProvisioningPageLearnMoreContent)initWithDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PKDynamicProvisioningPageLearnMoreContent;
  v5 = [(PKDynamicProvisioningPageLearnMoreContent *)&v37 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"buttonTitle"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v4 PKStringForKey:@"learnMoreButtonTitle"];
    }

    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v8;

    v10 = [v4 PKURLForKey:@"buttonURL"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v4 PKURLForKey:@"learnMoreButtonURL"];
    }

    buttonURL = v5->_buttonURL;
    v5->_buttonURL = v12;

    v14 = [v4 PKStringForKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v14;

    v16 = [v4 PKStringForKey:@"title"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v4 PKStringForKey:@"learnMoreTitle"];
    }

    title = v5->_title;
    v5->_title = v18;

    v20 = [v4 PKStringForKey:@"subtitle"];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [v4 PKStringForKey:@"learnMoreSubtitle"];
    }

    subtitle = v5->_subtitle;
    v5->_subtitle = v22;

    v24 = [v4 PKStringForKey:@"body"];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [v4 PKStringForKey:@"learnMoreBody"];
    }

    body = v5->_body;
    v5->_body = v26;

    v28 = [v4 PKStringForKey:@"businessChatButtonTitle"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = [v4 PKStringForKey:@"learnMoreBusinessChatButtonTitle"];
    }

    businessChatButtonTitle = v5->_businessChatButtonTitle;
    v5->_businessChatButtonTitle = v30;

    v32 = [v4 PKStringForKey:@"businessChatIntentName"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = [v4 PKStringForKey:@"learnMoreBusinessChatIntentName"];
    }

    businessChatIntentName = v5->_businessChatIntentName;
    v5->_businessChatIntentName = v34;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKDynamicProvisioningPageLearnMoreContent allocWithZone:](PKDynamicProvisioningPageLearnMoreContent init];
  v6 = [(NSString *)self->_buttonTitle copyWithZone:a3];
  buttonTitle = v5->_buttonTitle;
  v5->_buttonTitle = v6;

  v8 = [(NSURL *)self->_buttonURL copyWithZone:a3];
  buttonURL = v5->_buttonURL;
  v5->_buttonURL = v8;

  v10 = [(NSString *)self->_termsIdentifier copyWithZone:a3];
  termsIdentifier = v5->_termsIdentifier;
  v5->_termsIdentifier = v10;

  v12 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v12;

  v14 = [(NSString *)self->_subtitle copyWithZone:a3];
  subtitle = v5->_subtitle;
  v5->_subtitle = v14;

  v16 = [(NSString *)self->_body copyWithZone:a3];
  body = v5->_body;
  v5->_body = v16;

  v18 = [(NSString *)self->_businessChatButtonTitle copyWithZone:a3];
  businessChatButtonTitle = v5->_businessChatButtonTitle;
  v5->_businessChatButtonTitle = v18;

  v20 = [(NSString *)self->_businessChatIntentName copyWithZone:a3];
  businessChatIntentName = v5->_businessChatIntentName;
  v5->_businessChatIntentName = v20;

  return v5;
}

@end