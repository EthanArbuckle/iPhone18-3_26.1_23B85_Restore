@interface ICDeviceSupport(UI)
+ (BOOL)isLargerCompactHorizontalWidthDevice;
+ (uint64_t)isCameraAvailable;
+ (uint64_t)isWritingToolsAvailable;
@end

@implementation ICDeviceSupport(UI)

+ (uint64_t)isCameraAvailable
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ICDeviceSupport_UI__isCameraAvailable__block_invoke_2;
  block[3] = &unk_1E84690D0;
  v3 = &__block_literal_global_75;
  if (isCameraAvailable_onceToken != -1)
  {
    dispatch_once(&isCameraAvailable_onceToken, block);
  }

  v0 = isCameraAvailable_isCameraAvailable;

  return v0;
}

+ (uint64_t)isWritingToolsAvailable
{
  if (isWritingToolsAvailable_onceToken != -1)
  {
    +[ICDeviceSupport(UI) isWritingToolsAvailable];
  }

  return isWritingToolsAvailable_isWritingToolsAvailable;
}

+ (BOOL)isLargerCompactHorizontalWidthDevice
{
  if ([MEMORY[0x1E69DC938] ic_isiPad])
  {
    return 0;
  }

  v1 = +[ICUIApplicationShim sharedInstance];
  keyWindow = [v1 keyWindow];

  traitCollection = [keyWindow traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  [keyWindow bounds];
  v0 = CGRectGetWidth(v7) > 667.0 && horizontalSizeClass == 1;

  return v0;
}

@end