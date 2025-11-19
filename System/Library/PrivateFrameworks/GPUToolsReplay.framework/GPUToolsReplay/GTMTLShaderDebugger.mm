@interface GTMTLShaderDebugger
@end

@implementation GTMTLShaderDebugger

void __GTMTLShaderDebugger_executeCommandEncoder_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 status] == 5)
  {
    v3 = [v7 error];
    v4 = [v3 copy];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end