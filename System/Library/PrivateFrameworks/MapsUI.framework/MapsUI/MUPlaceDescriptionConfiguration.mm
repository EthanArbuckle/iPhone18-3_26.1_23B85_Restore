@interface MUPlaceDescriptionConfiguration
+ (id)configurationWithEncyclopedicInfo:(id)info;
- (MUPlaceDescriptionConfiguration)initWithTitle:(id)title descriptionText:(id)text attribution:(id)attribution;
@end

@implementation MUPlaceDescriptionConfiguration

- (MUPlaceDescriptionConfiguration)initWithTitle:(id)title descriptionText:(id)text attribution:(id)attribution
{
  titleCopy = title;
  textCopy = text;
  attributionCopy = attribution;
  v15.receiver = self;
  v15.super_class = MUPlaceDescriptionConfiguration;
  v12 = [(MUPlaceDescriptionConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_titleText, title);
    objc_storeStrong(&v13->_textBlockText, text);
    objc_storeStrong(&v13->_attribution, attribution);
    v13->_showSectionTitle = 1;
  }

  return v13;
}

+ (id)configurationWithEncyclopedicInfo:(id)info
{
  infoCopy = info;
  v4 = [MUPlaceDescriptionConfiguration alloc];
  textBlockTitle = [infoCopy textBlockTitle];
  textBlockText = [infoCopy textBlockText];
  encyclopedicAttribution = [infoCopy encyclopedicAttribution];

  v8 = [(MUPlaceDescriptionConfiguration *)v4 initWithTitle:textBlockTitle descriptionText:textBlockText attribution:encyclopedicAttribution];

  return v8;
}

@end