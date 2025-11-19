@interface _EARCustomLMBuilder
- (BOOL)getFstGrammar:(id)a3 overrideFolder:(id)a4 weight:(float)a5 errorOut:(id *)a6;
- (_EARCustomLMBuilder)initWithConfiguration:(id)a3;
- (id).cxx_construct;
@end

@implementation _EARCustomLMBuilder

- (_EARCustomLMBuilder)initWithConfiguration:(id)a3
{
  v4 = a3;
  [_EARQuasarTokenizer tokenizerWithModelRoot:v4];
  ptr = self->_tokenizer.__ptr_;
  self->_tokenizer.__ptr_ = __p;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v6 = [v4 stringByAppendingPathComponent:{@"mini.json", 0}];
  if (v6)
  {
    [v6 ear_toString];
  }

  operator new();
}

- (BOOL)getFstGrammar:(id)a3 overrideFolder:(id)a4 weight:(float)a5 errorOut:(id *)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v13 = a5;
  v9 = [a3 mutableCopy];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x4812000000;
  v12[3] = __Block_byref_object_copy__10;
  v12[4] = __Block_byref_object_dispose__10;
  v12[5] = &unk_1B5CADD23;
  memset(&v12[6], 0, 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68___EARCustomLMBuilder_getFstGrammar_overrideFolder_weight_errorOut___block_invoke;
  v11[3] = &unk_1E7C1A410;
  v11[4] = v12;
  [v9 enumerateObjectsUsingBlock:v11];
  if (v8)
  {
    [v8 ear_toString];
  }

  quasar::CustomLMBuilder::getFstGrammar();
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end