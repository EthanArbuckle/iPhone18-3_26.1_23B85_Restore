@interface FigEndpointAuthRequestHandler
@end

@implementation FigEndpointAuthRequestHandler

uint64_t __FigEndpointAuthRequestHandler_GetAuthRequestList_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DE10 >= 0x100)
  {
    dword_1EB75DE10 = 0;
  }

  result = FigSimpleMutexCreate();
  FigEndpointAuthRequestHandler_GetAuthRequestList_authListObj = 0;
  xmmword_1EB75CB40 = 0uLL;
  qword_1EB75CB38 = result;
  return result;
}

@end