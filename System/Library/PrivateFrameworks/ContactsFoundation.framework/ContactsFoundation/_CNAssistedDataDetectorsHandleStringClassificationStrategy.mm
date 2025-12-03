@interface _CNAssistedDataDetectorsHandleStringClassificationStrategy
- (_CNAssistedDataDetectorsHandleStringClassificationStrategy)init;
- (_CNAssistedDataDetectorsHandleStringClassificationStrategy)initWithStrategy:(id)strategy;
- (unint64_t)classificationOfHandleString:(id)string;
- (void)makeAssistingStrategyIfNecessary;
@end

@implementation _CNAssistedDataDetectorsHandleStringClassificationStrategy

- (_CNAssistedDataDetectorsHandleStringClassificationStrategy)init
{
  v3 = objc_alloc_init(_CNDataDetectorsHandleStringClassificationStrategy);
  v4 = [(_CNAssistedDataDetectorsHandleStringClassificationStrategy *)self initWithStrategy:v3];

  return v4;
}

- (_CNAssistedDataDetectorsHandleStringClassificationStrategy)initWithStrategy:(id)strategy
{
  strategyCopy = strategy;
  v11.receiver = self;
  v11.super_class = _CNAssistedDataDetectorsHandleStringClassificationStrategy;
  v6 = [(_CNAssistedDataDetectorsHandleStringClassificationStrategy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_strategy, strategy);
    assistingStrategy = v7->_assistingStrategy;
    v7->_assistingStrategy = 0;

    v9 = v7;
  }

  return v7;
}

- (unint64_t)classificationOfHandleString:(id)string
{
  stringCopy = string;
  v5 = [(_CNHandleStringClassificationStrategy *)self->_strategy classificationOfHandleString:stringCopy];
  if (!v5)
  {
    [(_CNAssistedDataDetectorsHandleStringClassificationStrategy *)self makeAssistingStrategyIfNecessary];
    v5 = [(_CNHandleStringClassificationStrategy *)self->_assistingStrategy classificationOfHandleString:stringCopy];
  }

  return v5;
}

- (void)makeAssistingStrategyIfNecessary
{
  if (!self->_assistingStrategy)
  {
    v4 = objc_alloc_init(_CNRegExHandleStringClassificationStrategy);
    assistingStrategy = self->_assistingStrategy;
    self->_assistingStrategy = v4;

    MEMORY[0x1EEE66BB8](v4, assistingStrategy);
  }
}

@end