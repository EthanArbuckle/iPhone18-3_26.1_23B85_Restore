@interface _EARConfusionPair
- (_EARConfusionPair)init;
@end

@implementation _EARConfusionPair

- (_EARConfusionPair)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recognizedTokens = self->_recognizedTokens;
  self->_recognizedTokens = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  correctedTokens = self->_correctedTokens;
  self->_correctedTokens = v5;

  return self;
}

@end