@interface DKEventClass
@end

@implementation DKEventClass

Class __get_DKEventClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1();
  }

  get_DKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_0();
  }

  get_DKEventClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_1(uint64_t a1)
{
  CoreDuetLibrary_1();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_1();
  }

  get_DKEventClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_2(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_2();
  }

  get_DKEventClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary_7)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreDuetLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6E53988;
    v6 = 0;
    CoreDuetLibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  if (!CoreDuetLibraryCore_frameworkLibrary_7)
  {
    __get_DKEventClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_3();
  }

  get_DKEventClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end