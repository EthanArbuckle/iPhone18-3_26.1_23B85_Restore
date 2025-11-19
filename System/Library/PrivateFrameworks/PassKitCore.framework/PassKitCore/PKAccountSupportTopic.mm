@interface PKAccountSupportTopic
- (PKAccountSupportTopic)initWithBeneficiaryTopicForAccount:(id)a3;
- (PKAccountSupportTopic)initWithDictionary:(id)a3;
- (PKAccountSupportTopic)initWithOtherTopicForAccount:(id)a3;
- (PKAccountSupportTopic)initWithUnavailableFundingSourceTopicForAccount:(id)a3;
@end

@implementation PKAccountSupportTopic

- (PKAccountSupportTopic)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKAccountSupportTopic;
  v5 = [(PKAccountSupportTopic *)&v20 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 PKStringForKey:@"bodyText"];
    bodyText = v5->_bodyText;
    v5->_bodyText = v8;

    v10 = [v4 PKStringForKey:@"page"];
    businessChatPage = v5->_businessChatPage;
    v5->_businessChatPage = v10;

    v12 = [v4 PKStringForKey:@"targetDialogue"];
    businessChatTargetDialog = v5->_businessChatTargetDialog;
    v5->_businessChatTargetDialog = v12;

    v14 = [v4 PKDictionaryForKey:@"explanation"];
    v15 = [v4 PKStringForKey:@"issueType"];
    if ([v15 isEqualToString:@"dispute"])
    {
      v16 = 2;
    }

    else if ([v15 isEqualToString:@"fraud"])
    {
      v16 = 3;
    }

    else if ([v15 isEqualToString:@"mapsFeedback"])
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    v5->_issueType = v16;
    if (v14)
    {
      v17 = [[PKAccountSupportTopicExplanation alloc] initWithDictionary:v14];
      explanation = v5->_explanation;
      v5->_explanation = v17;
    }
  }

  return v5;
}

- (PKAccountSupportTopic)initWithOtherTopicForAccount:(id)a3
{
  v4 = [a3 type];
  if (v4 == 1)
  {
    v10.receiver = self;
    v10.super_class = PKAccountSupportTopic;
    self = [(PKAccountSupportTopic *)&v10 init];
    if (self)
    {
      v5 = @"wallet_transaction_generalcontact";
      v6 = @"wallet::transaction::generalcontact";
      goto LABEL_7;
    }
  }

  else if (v4 == 4)
  {
    v11.receiver = self;
    v11.super_class = PKAccountSupportTopic;
    self = [(PKAccountSupportTopic *)&v11 init];
    if (self)
    {
      v5 = @"wallet_savings_other";
      v6 = @"wallet::savings::other";
LABEL_7:
      businessChatPage = self->_businessChatPage;
      self->_businessChatPage = &v6->isa;

      businessChatTargetDialog = self->_businessChatTargetDialog;
      self->_businessChatTargetDialog = &v5->isa;
    }
  }

  return self;
}

- (PKAccountSupportTopic)initWithUnavailableFundingSourceTopicForAccount:(id)a3
{
  if ([a3 type] == 4)
  {
    v10.receiver = self;
    v10.super_class = PKAccountSupportTopic;
    v4 = [(PKAccountSupportTopic *)&v10 init];
    v5 = v4;
    if (v4)
    {
      businessChatPage = v4->_businessChatPage;
      v4->_businessChatPage = @"wallet::savings::unavailablefundingsource";

      businessChatTargetDialog = v5->_businessChatTargetDialog;
      v5->_businessChatTargetDialog = @"wallet_savings_unavailablefundingsource";
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKAccountSupportTopic)initWithBeneficiaryTopicForAccount:(id)a3
{
  if ([a3 type] == 4)
  {
    v17.receiver = self;
    v17.super_class = PKAccountSupportTopic;
    v4 = [(PKAccountSupportTopic *)&v17 init];
    v5 = v4;
    if (v4)
    {
      businessChatPage = v4->_businessChatPage;
      v4->_businessChatPage = @"wallet::savings::beneficiary";

      businessChatTargetDialog = v5->_businessChatTargetDialog;
      v5->_businessChatTargetDialog = @"wallet_savings_beneficiary";

      v13 = PKLocalizedFeatureString(@"ADD_BENEFICIARY_MESSAGE_BODY", 5, 0, v8, v9, v10, v11, v12, v17.receiver);
      bodyText = v5->_bodyText;
      v5->_bodyText = v13;
    }

    self = v5;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end