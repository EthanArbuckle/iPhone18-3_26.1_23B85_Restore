@interface DKNowPlayingMetadataKeyClass
@end

@implementation DKNowPlayingMetadataKeyClass

Class __get_DKNowPlayingMetadataKeyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreDuetLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6E53318;
    v6 = 0;
    CoreDuetLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!CoreDuetLibraryCore_frameworkLibrary_1)
  {
    __get_DKNowPlayingMetadataKeyClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("_DKNowPlayingMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKNowPlayingMetadataKeyClass_block_invoke_cold_1();
  }

  get_DKNowPlayingMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end