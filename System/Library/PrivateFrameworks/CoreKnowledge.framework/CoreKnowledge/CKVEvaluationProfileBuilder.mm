@interface CKVEvaluationProfileBuilder
- (CKVEvaluationProfileBuilder)init;
- (CKVEvaluationProfileBuilder)initWithOmittedItemTypes:(id)types;
@end

@implementation CKVEvaluationProfileBuilder

- (CKVEvaluationProfileBuilder)initWithOmittedItemTypes:(id)types
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = CKVEvaluationProfileBuilder;
  v5 = [(CKVEvaluationProfileBuilder *)&v11 init];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getCESRRawSpeechProfileConverterClass_softClass;
    v16 = getCESRRawSpeechProfileConverterClass_softClass;
    if (!getCESRRawSpeechProfileConverterClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getCESRRawSpeechProfileConverterClass_block_invoke;
      v12[3] = &unk_1E831EBD0;
      v12[4] = &v13;
      __getCESRRawSpeechProfileConverterClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [[v6 alloc] initWithOmittedItemTypes:typesCopy];
    converter = v5->_converter;
    v5->_converter = v8;
  }

  return v5;
}

- (CKVEvaluationProfileBuilder)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

@end