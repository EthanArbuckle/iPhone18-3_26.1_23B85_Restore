@interface GTMTLReplayHost
@end

@implementation GTMTLReplayHost

void __GTMTLReplayHost_computeDerivedCountersFromData_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (g_runningInCI)
  {
    v3 = "#CI_ERROR# ";
  }

  else
  {
    v3 = "";
  }

  v4 = a3;
  v8 = [v4 toString];
  v5 = [v4 toDictionary];

  GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData_block_invoke_2", 103, 2, "%s%s %u: [DYJSScripting] %@ %@\n", v6, v7, v3);
}

void __GTMTLReplayHost_computeDerivedCountersFromData_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (g_runningInCI)
  {
    v8 = "#CI_ERROR# ";
  }

  else
  {
    v8 = "";
  }

  GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData_block_invoke", 99, 2, "%s%s %u: %@\n", a7, a8, v8);
}

@end