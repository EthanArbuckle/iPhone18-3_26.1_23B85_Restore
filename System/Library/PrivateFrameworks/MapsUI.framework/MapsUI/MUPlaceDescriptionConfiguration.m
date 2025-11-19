@interface MUPlaceDescriptionConfiguration
+ (id)configurationWithEncyclopedicInfo:(id)a3;
- (MUPlaceDescriptionConfiguration)initWithTitle:(id)a3 descriptionText:(id)a4 attribution:(id)a5;
@end

@implementation MUPlaceDescriptionConfiguration

- (MUPlaceDescriptionConfiguration)initWithTitle:(id)a3 descriptionText:(id)a4 attribution:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MUPlaceDescriptionConfiguration;
  v12 = [(MUPlaceDescriptionConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_titleText, a3);
    objc_storeStrong(&v13->_textBlockText, a4);
    objc_storeStrong(&v13->_attribution, a5);
    v13->_showSectionTitle = 1;
  }

  return v13;
}

+ (id)configurationWithEncyclopedicInfo:(id)a3
{
  v3 = a3;
  v4 = [MUPlaceDescriptionConfiguration alloc];
  v5 = [v3 textBlockTitle];
  v6 = [v3 textBlockText];
  v7 = [v3 encyclopedicAttribution];

  v8 = [(MUPlaceDescriptionConfiguration *)v4 initWithTitle:v5 descriptionText:v6 attribution:v7];

  return v8;
}

@end