@interface FWPlatformIDUtilities
+ (uint64_t)getFWPlatformID;
+ (void)getFWPlatformID;
@end

@implementation FWPlatformIDUtilities

+ (uint64_t)getFWPlatformID
{
  objc_opt_self();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = getFigCaptureGetModelSpecificNameSymbolLoc_ptr;
  v10 = getFigCaptureGetModelSpecificNameSymbolLoc_ptr;
  if (!getFigCaptureGetModelSpecificNameSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getFigCaptureGetModelSpecificNameSymbolLoc_block_invoke;
    v6[3] = &unk_1E833ABC8;
    v6[4] = &v7;
    __getFigCaptureGetModelSpecificNameSymbolLoc_block_invoke(v6);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v0)
  {
    +[FWPlatformIDUtilities getFWPlatformID];
  }

  v1 = v0();
  v2 = [&unk_1F48E6640 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)getFWPlatformID
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *soft_FigCaptureGetModelSpecificName(void)"];
  [v0 handleFailureInFunction:v1 file:@"FWPlatformIDUtilities.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

@end