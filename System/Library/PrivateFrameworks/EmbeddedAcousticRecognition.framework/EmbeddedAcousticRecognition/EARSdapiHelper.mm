@interface EARSdapiHelper
+ (void)EnsureSDAPIInitialized;
@end

@implementation EARSdapiHelper

+ (void)EnsureSDAPIInitialized
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__EARSdapiHelper_EnsureSDAPIInitialized__block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = a2;
  v2[5] = self;
  if (+[EARSdapiHelper EnsureSDAPIInitialized]::onceToken != -1)
  {
    dispatch_once(&+[EARSdapiHelper EnsureSDAPIInitialized]::onceToken, v2);
  }
}

void __40__EARSdapiHelper_EnsureSDAPIInitialized__block_invoke(sdapi::SdapiUtil *a1)
{
  if ((sdapi::SdapiUtil::initializeSdapi(a1) & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    [v2 handleFailureInMethod:*(a1 + 4) object:*(a1 + 5) file:@"EARSdapiHelper.mm" lineNumber:21 description:@"Failed to initialize SDAPI"];
  }
}

@end