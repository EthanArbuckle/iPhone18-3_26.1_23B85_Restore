@interface DKSystemEventStreamsClass
@end

@implementation DKSystemEventStreamsClass

Class __get_DKSystemEventStreamsClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKSystemEventStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKSystemEventStreamsClass_block_invoke_cold_1();
  }

  get_DKSystemEventStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKSystemEventStreamsClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKSystemEventStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKSystemEventStreamsClass_block_invoke_cold_1_0();
  }

  get_DKSystemEventStreamsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKSystemEventStreamsClass_block_invoke_1(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKSystemEventStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKSystemEventStreamsClass_block_invoke_cold_1_1();
  }

  get_DKSystemEventStreamsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end