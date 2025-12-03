@interface DOCContentUnavailableHostableViewController
- (DOCContentUnavailableConfiguration)docContentUnavailableConfiguration;
- (DOCContentUnavailableConfigurationState)docContentUnavailableConfigurationState;
- (id)_contentUnavailableConfiguration;
- (id)_contentUnavailableConfigurationState;
- (void)_setContentUnavailableConfiguration:(id)configuration;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)docUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)doc_setContentUnavailableConfiguration:(id)configuration;
@end

@implementation DOCContentUnavailableHostableViewController

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  asDOC = [state asDOC];
  [(DOCContentUnavailableHostableViewController *)self docUpdateContentUnavailableConfigurationUsingState:asDOC];
}

- (void)docUpdateContentUnavailableConfigurationUsingState:(id)state
{
  asUIKit = [state asUIKit];
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  [(DOCContentUnavailableHostableViewController *)&v5 _updateContentUnavailableConfigurationUsingState:asUIKit];
}

- (id)_contentUnavailableConfigurationState
{
  docContentUnavailableConfigurationState = [(DOCContentUnavailableHostableViewController *)self docContentUnavailableConfigurationState];
  asUIKit = [docContentUnavailableConfigurationState asUIKit];

  return asUIKit;
}

- (DOCContentUnavailableConfigurationState)docContentUnavailableConfigurationState
{
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  _contentUnavailableConfigurationState = [(DOCContentUnavailableHostableViewController *)&v5 _contentUnavailableConfigurationState];
  asDOC = [_contentUnavailableConfigurationState asDOC];

  return asDOC;
}

- (void)_setContentUnavailableConfiguration:(id)configuration
{
  asDOC = [configuration asDOC];
  [(DOCContentUnavailableHostableViewController *)self doc_setContentUnavailableConfiguration:asDOC];
}

- (void)doc_setContentUnavailableConfiguration:(id)configuration
{
  asUIKit = [configuration asUIKit];
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  [(DOCContentUnavailableHostableViewController *)&v5 _setContentUnavailableConfiguration:asUIKit];
}

- (id)_contentUnavailableConfiguration
{
  docContentUnavailableConfiguration = [(DOCContentUnavailableHostableViewController *)self docContentUnavailableConfiguration];
  asUIKit = [docContentUnavailableConfiguration asUIKit];

  return asUIKit;
}

- (DOCContentUnavailableConfiguration)docContentUnavailableConfiguration
{
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  _contentUnavailableConfiguration = [(DOCContentUnavailableHostableViewController *)&v5 _contentUnavailableConfiguration];
  asDOC = [_contentUnavailableConfiguration asDOC];

  return asDOC;
}

@end