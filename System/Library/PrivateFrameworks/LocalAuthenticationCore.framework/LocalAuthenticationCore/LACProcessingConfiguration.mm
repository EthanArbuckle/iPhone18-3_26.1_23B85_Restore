@interface LACProcessingConfiguration
+ (id)defaultConfiguration;
- (LACProcessingConfiguration)initWithNextProcessor:(id)processor;
@end

@implementation LACProcessingConfiguration

+ (id)defaultConfiguration
{
  v2 = [LACProcessingConfiguration alloc];
  v3 = objc_opt_new();
  v4 = [(LACProcessingConfiguration *)v2 initWithNextProcessor:v3];

  return v4;
}

- (LACProcessingConfiguration)initWithNextProcessor:(id)processor
{
  processorCopy = processor;
  v9.receiver = self;
  v9.super_class = LACProcessingConfiguration;
  v6 = [(LACProcessingConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nextProcessor, processor);
  }

  return v7;
}

@end