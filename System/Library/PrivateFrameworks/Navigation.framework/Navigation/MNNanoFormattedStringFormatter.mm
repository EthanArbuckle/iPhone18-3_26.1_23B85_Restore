@interface MNNanoFormattedStringFormatter
+ (id)sharedFormatter;
- (id)listInstructionForStep:(id)step;
- (id)signInstructionsForStep:(id)step;
@end

@implementation MNNanoFormattedStringFormatter

- (id)signInstructionsForStep:(id)step
{
  stepCopy = step;
  if ([stepCopy transportType] == 6 || objc_msgSend(stepCopy, "transportType") == 1)
  {
    instructionWithShorterAlternatives = 0;
  }

  else
  {
    v5 = [stepCopy contentsForContext:1];
    instructionWithShorterAlternatives = [v5 instructionWithShorterAlternatives];
  }

  return instructionWithShorterAlternatives;
}

- (id)listInstructionForStep:(id)step
{
  stepCopy = step;
  if ([stepCopy transportType] == 6 || objc_msgSend(stepCopy, "transportType") == 1)
  {
    instructions = 0;
  }

  else
  {
    geoStep = [stepCopy geoStep];
    hasInstructions = [geoStep hasInstructions];

    if (hasInstructions)
    {
      geoStep2 = [stepCopy geoStep];
      instructions = [geoStep2 instructions];
    }

    else
    {
      geoStep2 = [stepCopy contentsForContext:2];
      [geoStep2 setSuppressNames:1];
      instructionWithShorterAlternatives = [geoStep2 instructionWithShorterAlternatives];
      instructions = [instructionWithShorterAlternatives lastObject];
    }
  }

  return instructions;
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