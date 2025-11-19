@interface SFSearchEngineControllerWrapper
- (SFSearchEngineControllerWrapper)init;
@end

@implementation SFSearchEngineControllerWrapper

- (SFSearchEngineControllerWrapper)init
{
  v9.receiver = self;
  v9.super_class = SFSearchEngineControllerWrapper;
  v2 = [(SFSearchEngineControllerWrapper *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = get_SFSearchEngineControllerClass_softClass;
    v14 = get_SFSearchEngineControllerClass_softClass;
    if (!get_SFSearchEngineControllerClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __get_SFSearchEngineControllerClass_block_invoke;
      v10[3] = &unk_1E721C5D0;
      v10[4] = &v11;
      __get_SFSearchEngineControllerClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = objc_alloc_init(v3);
    searchEngineController = v2->_searchEngineController;
    v2->_searchEngineController = v5;

    v7 = v2;
  }

  return v2;
}

@end