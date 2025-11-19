@interface DoStaticInit
@end

@implementation DoStaticInit

void ___DoStaticInit_block_invoke()
{
  v0 = +[MIDaemonConfiguration sharedInstance];
  sMaxAvailableMemoryForResourceValidation = [v0 estimatedAvailableMemoryForValidation];

  sAvailableMemoryForResourceValidation = sMaxAvailableMemoryForResourceValidation;
}

@end