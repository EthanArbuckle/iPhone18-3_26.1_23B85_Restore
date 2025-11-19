@interface BWMattingInferenceConfiguration
- (void)dealloc;
@end

@implementation BWMattingInferenceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMattingInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

@end