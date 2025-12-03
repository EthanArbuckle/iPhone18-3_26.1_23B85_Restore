@interface PKAccountSupportTopicExplanationContent
- (PKAccountSupportTopicExplanationContent)initWithDictionary:(id)dictionary;
@end

@implementation PKAccountSupportTopicExplanationContent

- (PKAccountSupportTopicExplanationContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKAccountSupportTopicExplanationContent;
  v5 = [(PKAccountSupportTopicExplanationContent *)&v14 init];
  if (!v5 || ([dictionaryCopy PKStringForKey:@"contentTitle"], v6 = objc_claimAutoreleasedReturnValue(), title = v5->_title, v5->_title = v6, title, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"contentBody"), v8 = objc_claimAutoreleasedReturnValue(), subtitle = v5->_subtitle, v5->_subtitle = v8, subtitle, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"contentSystemImageName"), v10 = objc_claimAutoreleasedReturnValue(), systemImageName = v5->_systemImageName, v5->_systemImageName = v10, systemImageName, v5->_title) || v5->_subtitle)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end