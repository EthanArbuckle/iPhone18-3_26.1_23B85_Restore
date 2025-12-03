@interface PKAccountSupportTopicExplanation
- (PKAccountSupportTopicExplanation)initWithDictionary:(id)dictionary;
@end

@implementation PKAccountSupportTopicExplanation

- (PKAccountSupportTopicExplanation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PKAccountSupportTopicExplanation;
  v5 = [(PKAccountSupportTopicExplanation *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"headerTitle"];
    headerTitle = v5->_headerTitle;
    v5->_headerTitle = v6;

    v8 = [dictionaryCopy PKStringForKey:@"headerSubtitle"];
    headerSubtitle = v5->_headerSubtitle;
    v5->_headerSubtitle = v8;

    v10 = [dictionaryCopy PKStringForKey:@"primaryActionTitle"];
    primaryActionTitle = v5->_primaryActionTitle;
    v5->_primaryActionTitle = v10;

    v12 = [dictionaryCopy PKStringForKey:@"secondaryActionTitle"];
    secondaryActionTitle = v5->_secondaryActionTitle;
    v5->_secondaryActionTitle = v12;

    v14 = [[PKAccountSupportTopicExplanationContent alloc] initWithDictionary:dictionaryCopy];
    content = v5->_content;
    v5->_content = v14;

    v16 = [[PKAccountSupportTopicExplanationLink alloc] initWithDictionary:dictionaryCopy];
    link = v5->_link;
    v5->_link = v16;
  }

  return v5;
}

@end