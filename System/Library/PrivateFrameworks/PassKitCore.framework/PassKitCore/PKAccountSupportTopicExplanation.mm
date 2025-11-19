@interface PKAccountSupportTopicExplanation
- (PKAccountSupportTopicExplanation)initWithDictionary:(id)a3;
@end

@implementation PKAccountSupportTopicExplanation

- (PKAccountSupportTopicExplanation)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKAccountSupportTopicExplanation;
  v5 = [(PKAccountSupportTopicExplanation *)&v19 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"headerTitle"];
    headerTitle = v5->_headerTitle;
    v5->_headerTitle = v6;

    v8 = [v4 PKStringForKey:@"headerSubtitle"];
    headerSubtitle = v5->_headerSubtitle;
    v5->_headerSubtitle = v8;

    v10 = [v4 PKStringForKey:@"primaryActionTitle"];
    primaryActionTitle = v5->_primaryActionTitle;
    v5->_primaryActionTitle = v10;

    v12 = [v4 PKStringForKey:@"secondaryActionTitle"];
    secondaryActionTitle = v5->_secondaryActionTitle;
    v5->_secondaryActionTitle = v12;

    v14 = [[PKAccountSupportTopicExplanationContent alloc] initWithDictionary:v4];
    content = v5->_content;
    v5->_content = v14;

    v16 = [[PKAccountSupportTopicExplanationLink alloc] initWithDictionary:v4];
    link = v5->_link;
    v5->_link = v16;
  }

  return v5;
}

@end