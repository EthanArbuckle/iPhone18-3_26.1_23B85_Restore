@interface FigEndpointUIAgentHelper
@end

@implementation FigEndpointUIAgentHelper

uint64_t __FigEndpointUIAgentHelper_GetSharedHelper_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DFC0 >= 0x100)
  {
    dword_1EB75DFC0 = 0;
  }

  result = FigSimpleMutexCreate();
  qword_1ED6D2E90 = 0;
  unk_1ED6D2E98 = 0;
  qword_1ED6D2E88 = result;
  return result;
}

@end