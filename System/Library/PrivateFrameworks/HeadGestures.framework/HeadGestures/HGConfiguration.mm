@interface HGConfiguration
- (HGConfiguration)init;
- (void)setAudioFeedbackConfig:(id)config;
- (void)setMlConfig:(id)config;
@end

@implementation HGConfiguration

- (HGConfiguration)init
{
  v13.receiver = self;
  v13.super_class = HGConfiguration;
  v2 = [(HGConfiguration *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(HGAudioFeedbackConfiguration);
    [(HGConfiguration *)v2 setAudioFeedbackConfig:v3];

    v4 = objc_alloc_init(HGMLConfiguration);
    [(HGConfiguration *)v2 setMlConfig:v4];

    v5 = [HGConfigurationInternal alloc];
    mlConfig = [(HGConfiguration *)v2 mlConfig];
    internal = [mlConfig internal];
    audioFeedbackConfig = [(HGConfiguration *)v2 audioFeedbackConfig];
    internal2 = [audioFeedbackConfig internal];
    v10 = [(HGConfigurationInternal *)v5 initWithML:internal audioFeedbackConfig:internal2];
    internal = v2->_internal;
    v2->_internal = v10;
  }

  return v2;
}

- (void)setAudioFeedbackConfig:(id)config
{
  objc_storeStrong(&self->_audioFeedbackConfig, config);
  configCopy = config;
  internal = [configCopy internal];
  [(HGConfigurationInternal *)self->_internal setAudioFeedbackConfig:internal];
}

- (void)setMlConfig:(id)config
{
  objc_storeStrong(&self->_mlConfig, config);
  configCopy = config;
  internal = [configCopy internal];
  [(HGConfigurationInternal *)self->_internal setMlConfig:internal];
}

@end