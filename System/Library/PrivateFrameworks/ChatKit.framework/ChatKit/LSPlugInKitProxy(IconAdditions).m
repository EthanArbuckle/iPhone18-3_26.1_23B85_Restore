@interface LSPlugInKitProxy(IconAdditions)
- (id)iconDataForInterfaceStyle:()IconAdditions;
- (id)iconForInterfaceStyle:()IconAdditions;
@end

@implementation LSPlugInKitProxy(IconAdditions)

- (id)iconDataForInterfaceStyle:()IconAdditions
{
  v4 = a3 == 2;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v7 = v6;

  v10 = v7;
  v8 = [a1 iconDataForVariant:objc_msgSend(MEMORY[0x1E69DCAB8] withOptions:{"_iconVariantForUIApplicationIconFormat:scale:", 14, &v10), (v4 << 16)}];

  return v8;
}

- (id)iconForInterfaceStyle:()IconAdditions
{
  v1 = [a1 iconDataForInterfaceStyle:?];
  if (v1 && (v2 = LICreateIconFromCachedBitmap()) != 0)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v2];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end