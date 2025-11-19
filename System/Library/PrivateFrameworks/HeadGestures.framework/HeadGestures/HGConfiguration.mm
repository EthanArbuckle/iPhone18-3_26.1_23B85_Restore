@interface HGConfiguration
- (HGConfiguration)init;
- (void)setAudioFeedbackConfig:(id)a3;
- (void)setMlConfig:(id)a3;
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
    v6 = [(HGConfiguration *)v2 mlConfig];
    v7 = [v6 internal];
    v8 = [(HGConfiguration *)v2 audioFeedbackConfig];
    v9 = [v8 internal];
    v10 = [(HGConfigurationInternal *)v5 initWithML:v7 audioFeedbackConfig:v9];
    internal = v2->_internal;
    v2->_internal = v10;
  }

  return v2;
}

- (void)setAudioFeedbackConfig:(id)a3
{
  objc_storeStrong(&self->_audioFeedbackConfig, a3);
  v5 = a3;
  v6 = [v5 internal];
  [(HGConfigurationInternal *)self->_internal setAudioFeedbackConfig:v6];
}

- (void)setMlConfig:(id)a3
{
  objc_storeStrong(&self->_mlConfig, a3);
  v5 = a3;
  v6 = [v5 internal];
  [(HGConfigurationInternal *)self->_internal setMlConfig:v6];
}

@end