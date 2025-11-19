@interface ICDeviceSupport
@end

@implementation ICDeviceSupport

void __40__ICDeviceSupport_UI__isCameraAvailable__block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  isCameraAvailable_isCameraAvailable = (*(*(a1 + 32) + 16))();
  v3[0] = @"cameraRestriction";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v2 = *(a1 + 32);
  MGRegisterForUpdates();
}

uint64_t __40__ICDeviceSupport_UI__isCameraAvailable__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAD0] isSourceTypeAvailable:1];
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 BOOLForKey:*MEMORY[0x1E69B7B40]];

  return v0 & (v2 ^ 1u);
}

uint64_t __46__ICDeviceSupport_UI__isWritingToolsAvailable__block_invoke()
{
  result = [MEMORY[0x1E69DD318] isWritingToolsAvailable];
  isWritingToolsAvailable_isWritingToolsAvailable = result;
  return result;
}

uint64_t __40__ICDeviceSupport_UI__isCameraAvailable__block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  isCameraAvailable_isCameraAvailable = result;
  return result;
}

@end