@interface UIImage(IconAdditions)
+ (id)badgeIconForImageNamed:()IconAdditions inBundle:;
+ (id)placeholderExtensionIcon;
- (id)iconForInterfaceStyle:()IconAdditions;
@end

@implementation UIImage(IconAdditions)

- (id)iconForInterfaceStyle:()IconAdditions
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  v8 = v4;
  [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:14 scale:&v8];
  [self CGImage];
  v5 = LICreateIconForImage();
  v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v5 scale:0 orientation:v8];
  CGImageRelease(v5);

  return v6;
}

+ (id)badgeIconForImageNamed:()IconAdditions inBundle:
{
  if (a3)
  {
    v3 = [MEMORY[0x1E69DCAB8] imageNamed:? inBundle:?];
    [v3 size];
    v5 = v4;
    [v3 size];
    if (!CKFloatApproximatelyEqualToFloatWithTolerance(v5, v6, 0.1))
    {
      v7 = [v3 _applicationIconImageForFormat:15 precomposed:1];

      v3 = v7;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)placeholderExtensionIcon
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Generate placeholder image", buf, 2u);
    }
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v3 = v2;

  v8 = v3;
  [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:14 scale:&v8];
  v4 = LICreateDefaultIcon();
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end