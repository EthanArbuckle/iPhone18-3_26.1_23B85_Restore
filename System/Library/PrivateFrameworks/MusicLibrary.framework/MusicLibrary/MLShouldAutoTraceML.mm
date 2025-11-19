@interface MLShouldAutoTraceML
@end

@implementation MLShouldAutoTraceML

void ___MLShouldAutoTraceML_block_invoke()
{
  v0 = getenv("SQLITE_AUTO_TRACE_ML");
  if (v0 && *v0 == 49)
  {
    v1 = v0[1];
    _MLShouldAutoTraceML_shouldAutoTraceML = v0[1] == 0;
    if (!v1)
    {
      return;
    }
  }

  else
  {
    _MLShouldAutoTraceML_shouldAutoTraceML = 0;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _MLShouldAutoTraceML_shouldAutoTraceML = [v2 BOOLForKey:@"SQLITE_AUTO_TRACE_ML"];
}

@end