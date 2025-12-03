@interface PKAccountPostProvisioningContent
- (PKAccountPostProvisioningContent)initWithDictionary:(id)dictionary;
@end

@implementation PKAccountPostProvisioningContent

- (PKAccountPostProvisioningContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PKAccountPostProvisioningContent;
  v5 = [(PKAccountPostProvisioningContent *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    if ([v6 isEqualToString:@"makeDefaultCard"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"applePayEducation"])
    {
      v7 = 2;
    }

    else
    {
      if (![v6 isEqualToString:@"orderPhysicalCard"])
      {
        v5->_type = 0;
        goto LABEL_9;
      }

      v7 = 3;
    }

    v5->_type = v7;
LABEL_9:
    v8 = [dictionaryCopy PKStringForKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [dictionaryCopy PKStringForKey:@"subTitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v10;

    v12 = [dictionaryCopy PKStringForKey:@"body"];
    body = v5->_body;
    v5->_body = v12;

    v14 = [dictionaryCopy PKStringForKey:@"primaryButtonTitle"];
    primaryButtonTitle = v5->_primaryButtonTitle;
    v5->_primaryButtonTitle = v14;

    v16 = [dictionaryCopy PKStringForKey:@"secondaryButtonTitle"];
    secondaryButtonTitle = v5->_secondaryButtonTitle;
    v5->_secondaryButtonTitle = v16;
  }

  return v5;
}

@end