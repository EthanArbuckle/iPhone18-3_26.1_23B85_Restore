@interface CDPCALocalSecretReporter
- (CDPCALocalSecretReporter)init;
- (void)didChangeLocalSecret;
- (void)didRemoveLocalSecret;
@end

@implementation CDPCALocalSecretReporter

- (CDPCALocalSecretReporter)init
{
  v3.receiver = self;
  v3.super_class = CDPCALocalSecretReporter;
  return [(CDPCAReporter *)&v3 initWithEvent:@"com.apple.CoreCDP.LocalSecret"];
}

- (void)didChangeLocalSecret
{
  [(CDPCAReporter *)self setObject:@"didChangeLocalSecret" forKeyedSubscript:@"LocalSecretResult"];

  [(CDPCAReporter *)self sendReport];
}

- (void)didRemoveLocalSecret
{
  [(CDPCAReporter *)self setObject:@"didRemoveLocalSecret" forKeyedSubscript:@"LocalSecretResult"];

  [(CDPCAReporter *)self sendReport];
}

@end