@interface CIContext
@end

@implementation CIContext

void __67__CIContext_IconServicesAdditions___IS_sharedIconCompositorContext__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695F830];
  v8[0] = *MEMORY[0x1E695F7F0];
  v8[1] = v0;
  v9[0] = MEMORY[0x1E695E110];
  v9[1] = @"IconServices-Compositor";
  v1 = *MEMORY[0x1E695F800];
  v8[2] = *MEMORY[0x1E695F818];
  v8[3] = v1;
  v9[2] = &unk_1F1A65310;
  v9[3] = MEMORY[0x1E695E118];
  v9[4] = &unk_1F1A65328;
  v2 = *MEMORY[0x1E695F868];
  v8[4] = *MEMORY[0x1E695F860];
  v8[5] = v2;
  v3 = [MEMORY[0x1E695DFB0] null];
  v9[5] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];

  v5 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:v4];
  v6 = _IS_sharedIconCompositorContext_sharedContext;
  _IS_sharedIconCompositorContext_sharedContext = v5;

  v7 = *MEMORY[0x1E69E9840];
}

@end