@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __50__NSProcessInfo_FCAdditions__fc_processLaunchDate__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processIdentifier];

  *v7 = 0xE00000001;
  v8 = 1;
  v9 = v1;
  memset(v6, 0, 512);
  v5 = 648;
  sysctl(v7, 4u, v6, &v5, 0, 0);
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:*&v6[0]];
  v3 = _MergedGlobals_148;
  _MergedGlobals_148 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end