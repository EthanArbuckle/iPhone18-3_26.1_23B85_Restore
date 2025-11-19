@interface MNNanoFormattedStringFormatter
+ (id)sharedFormatter;
- (id)listInstructionForStep:(id)a3;
- (id)signInstructionsForStep:(id)a3;
@end

@implementation MNNanoFormattedStringFormatter

- (id)signInstructionsForStep:(id)a3
{
  v3 = a3;
  if ([v3 transportType] == 6 || objc_msgSend(v3, "transportType") == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 contentsForContext:1];
    v4 = [v5 instructionWithShorterAlternatives];
  }

  return v4;
}

- (id)listInstructionForStep:(id)a3
{
  v3 = a3;
  if ([v3 transportType] == 6 || objc_msgSend(v3, "transportType") == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 geoStep];
    v6 = [v5 hasInstructions];

    if (v6)
    {
      v7 = [v3 geoStep];
      v4 = [v7 instructions];
    }

    else
    {
      v7 = [v3 contentsForContext:2];
      [v7 setSuppressNames:1];
      v8 = [v7 instructionWithShorterAlternatives];
      v4 = [v8 lastObject];
    }
  }

  return v4;
}

+ (id)sharedFormatter
{
  if (sharedFormatter_onceToken != -1)
  {
    dispatch_once(&sharedFormatter_onceToken, &__block_literal_global_23075);
  }

  v3 = sharedFormatter_sharedInstance;

  return v3;
}

void __49__MNNanoFormattedStringFormatter_sharedFormatter__block_invoke()
{
  v0 = objc_alloc_init(MNNanoFormattedStringFormatter);
  v1 = sharedFormatter_sharedInstance;
  sharedFormatter_sharedInstance = v0;
}

@end