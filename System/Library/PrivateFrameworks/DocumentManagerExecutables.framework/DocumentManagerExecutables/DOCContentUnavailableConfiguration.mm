@interface DOCContentUnavailableConfiguration
+ (id)emptyConfiguration;
+ (id)emptyExtraProminentConfiguration;
+ (id)emptyProminentConfiguration;
+ (id)loadingConfiguration;
+ (id)searchConfiguration;
- (DOCContentUnavailableButtonProperties)buttonProperties;
- (NSString)secondaryText;
- (NSString)text;
- (UIColor)textColor;
- (UIImage)image;
- (id)makeContentView;
- (id)updatedConfigurationForState:(id)state;
- (void)setImage:(id)image;
- (void)setSecondaryText:(id)text;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation DOCContentUnavailableConfiguration

+ (id)emptyConfiguration
{
  emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
  asDOC = [emptyConfiguration asDOC];

  return asDOC;
}

+ (id)emptyProminentConfiguration
{
  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  asDOC = [emptyProminentConfiguration asDOC];

  return asDOC;
}

+ (id)emptyExtraProminentConfiguration
{
  emptyExtraProminentConfiguration = [MEMORY[0x277D75390] emptyExtraProminentConfiguration];
  asDOC = [emptyExtraProminentConfiguration asDOC];

  return asDOC;
}

+ (id)loadingConfiguration
{
  loadingConfiguration = [MEMORY[0x277D75390] loadingConfiguration];
  asDOC = [loadingConfiguration asDOC];

  return asDOC;
}

+ (id)searchConfiguration
{
  searchConfiguration = [MEMORY[0x277D75390] searchConfiguration];
  asDOC = [searchConfiguration asDOC];

  return asDOC;
}

- (UIImage)image
{
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  image = [asUIKit image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setImage:imageCopy];
}

- (UIColor)textColor
{
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  textProperties = [asUIKit textProperties];
  color = [textProperties color];

  return color;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  textProperties = [asUIKit textProperties];
  [textProperties setColor:colorCopy];
}

- (NSString)text
{
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  text = [asUIKit text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setText:textCopy];
}

- (NSString)secondaryText
{
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  secondaryText = [asUIKit secondaryText];

  return secondaryText;
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setSecondaryText:textCopy];
}

- (DOCContentUnavailableButtonProperties)buttonProperties
{
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  buttonProperties = [asUIKit buttonProperties];
  asDOC = [buttonProperties asDOC];

  return asDOC;
}

- (id)makeContentView
{
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  makeContentView = [asUIKit makeContentView];

  return makeContentView;
}

- (id)updatedConfigurationForState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_class();
  asUIKit = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v7 = [asUIKit updatedConfigurationForState:stateCopy];

  v8 = [v5 instanceWrappingImpl:v7];

  return v8;
}

@end