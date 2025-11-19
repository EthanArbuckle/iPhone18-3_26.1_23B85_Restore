@interface PXLegacyText
+ (void)readLegacyTextFromData:(id)a3 toShape:(id)a4 state:(id)a5;
+ (void)textMasterStyleOfType:(int)a3 state:(id)a4;
@end

@implementation PXLegacyText

+ (void)textMasterStyleOfType:(int)a3 state:(id)a4
{
  v4 = a3;
  v5 = a4;
  objc_opt_class();
  v6 = [v5 legacyTextGlobals];
  objc_opt_class();
  v7 = [v6 firstChildOfType:1010];
  v8 = [v7 childOfType:4003 instance:v4];
  v9 = [v8 eshObject];
  if (v9)
  {
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)readLegacyTextFromData:(id)a3 toShape:(id)a4 state:(id)a5
{
  v7 = a3;
  v8 = a4;
  [a5 legacyPresentationState];
  objc_claimAutoreleasedReturnValue();
  [v8 textBody];
  objc_claimAutoreleasedReturnValue();
  pptTreeWithData(v7);
}

@end