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
- (id)updatedConfigurationForState:(id)a3;
- (void)setImage:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation DOCContentUnavailableConfiguration

+ (id)emptyConfiguration
{
  v2 = [MEMORY[0x277D75390] emptyConfiguration];
  v3 = [v2 asDOC];

  return v3;
}

+ (id)emptyProminentConfiguration
{
  v2 = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v3 = [v2 asDOC];

  return v3;
}

+ (id)emptyExtraProminentConfiguration
{
  v2 = [MEMORY[0x277D75390] emptyExtraProminentConfiguration];
  v3 = [v2 asDOC];

  return v3;
}

+ (id)loadingConfiguration
{
  v2 = [MEMORY[0x277D75390] loadingConfiguration];
  v3 = [v2 asDOC];

  return v3;
}

+ (id)searchConfiguration
{
  v2 = [MEMORY[0x277D75390] searchConfiguration];
  v3 = [v2 asDOC];

  return v3;
}

- (UIImage)image
{
  v2 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  [v5 setImage:v4];
}

- (UIColor)textColor
{
  v2 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 textProperties];
  v4 = [v3 color];

  return v4;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v6 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v5 = [v6 textProperties];
  [v5 setColor:v4];
}

- (NSString)text
{
  v2 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  [v5 setText:v4];
}

- (NSString)secondaryText
{
  v2 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 secondaryText];

  return v3;
}

- (void)setSecondaryText:(id)a3
{
  v4 = a3;
  v5 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  [v5 setSecondaryText:v4];
}

- (DOCContentUnavailableButtonProperties)buttonProperties
{
  v2 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 buttonProperties];
  v4 = [v3 asDOC];

  return v4;
}

- (id)makeContentView
{
  v2 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 makeContentView];

  return v3;
}

- (id)updatedConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(DOCContentUnavailableConfiguration *)self asUIKit];
  v7 = [v6 updatedConfigurationForState:v4];

  v8 = [v5 instanceWrappingImpl:v7];

  return v8;
}

@end