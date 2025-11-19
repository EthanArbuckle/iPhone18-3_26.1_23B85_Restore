@interface ServerConnectionDiedNotificationSymbolLoc
@end

@implementation ServerConnectionDiedNotificationSymbolLoc

void *__getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_1();
  result = dlsym(v2, "AVSystemController_ServerConnectionDiedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end