@interface PKAccountSupportTopicExplanationLink
- (PKAccountSupportTopicExplanationLink)initWithDictionary:(id)a3;
@end

@implementation PKAccountSupportTopicExplanationLink

- (PKAccountSupportTopicExplanationLink)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKAccountSupportTopicExplanationLink;
  v5 = [(PKAccountSupportTopicExplanationLink *)&v16 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [v4 PKStringForKey:@"linkTitle"];
  text = v5->_text;
  v5->_text = v6;

  v8 = [v4 PKStringForKey:@"linkAction"];
  if ([v8 isEqualToString:@"openURL"])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 isEqualToString:@"showMerchantDetails"];
  }

  v5->_action = v9;

  if (v5->_action)
  {
LABEL_9:
    v13 = [v4 PKStringForKey:@"linkConfirmationTitle"];
    confirmationTitle = v5->_confirmationTitle;
    v5->_confirmationTitle = v13;

LABEL_10:
    v11 = v5;
    goto LABEL_11;
  }

  v10 = [v4 PKStringForKey:@"linkURL"];
  v11 = PKAccountSupportTopicURLFromActionString(v10);

  if (v11 || ([v4 PKURLForKey:@"linkURL"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    url = v5->_url;
    v5->_url = v11;

    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

@end