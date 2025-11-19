@interface BWLearnedMattingInferenceConfiguration
- (void)dealloc;
@end

@implementation BWLearnedMattingInferenceConfiguration

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWLearnedMattingInferenceConfiguration;
  [(BWTiledEspressoInferenceConfiguration *)&v2 dealloc];
}

@end