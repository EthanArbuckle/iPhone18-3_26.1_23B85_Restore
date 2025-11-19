@interface DOCContentUnavailableHostableViewController
- (DOCContentUnavailableConfiguration)docContentUnavailableConfiguration;
- (DOCContentUnavailableConfigurationState)docContentUnavailableConfigurationState;
- (id)_contentUnavailableConfiguration;
- (id)_contentUnavailableConfigurationState;
- (void)_setContentUnavailableConfiguration:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)docUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)doc_setContentUnavailableConfiguration:(id)a3;
@end

@implementation DOCContentUnavailableHostableViewController

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [a3 asDOC];
  [(DOCContentUnavailableHostableViewController *)self docUpdateContentUnavailableConfigurationUsingState:v4];
}

- (void)docUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [a3 asUIKit];
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  [(DOCContentUnavailableHostableViewController *)&v5 _updateContentUnavailableConfigurationUsingState:v4];
}

- (id)_contentUnavailableConfigurationState
{
  v2 = [(DOCContentUnavailableHostableViewController *)self docContentUnavailableConfigurationState];
  v3 = [v2 asUIKit];

  return v3;
}

- (DOCContentUnavailableConfigurationState)docContentUnavailableConfigurationState
{
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  v2 = [(DOCContentUnavailableHostableViewController *)&v5 _contentUnavailableConfigurationState];
  v3 = [v2 asDOC];

  return v3;
}

- (void)_setContentUnavailableConfiguration:(id)a3
{
  v4 = [a3 asDOC];
  [(DOCContentUnavailableHostableViewController *)self doc_setContentUnavailableConfiguration:v4];
}

- (void)doc_setContentUnavailableConfiguration:(id)a3
{
  v4 = [a3 asUIKit];
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  [(DOCContentUnavailableHostableViewController *)&v5 _setContentUnavailableConfiguration:v4];
}

- (id)_contentUnavailableConfiguration
{
  v2 = [(DOCContentUnavailableHostableViewController *)self docContentUnavailableConfiguration];
  v3 = [v2 asUIKit];

  return v3;
}

- (DOCContentUnavailableConfiguration)docContentUnavailableConfiguration
{
  v5.receiver = self;
  v5.super_class = DOCContentUnavailableHostableViewController;
  v2 = [(DOCContentUnavailableHostableViewController *)&v5 _contentUnavailableConfiguration];
  v3 = [v2 asDOC];

  return v3;
}

@end