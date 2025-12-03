@interface PXLegacyText
+ (void)readLegacyTextFromData:(id)data toShape:(id)shape state:(id)state;
+ (void)textMasterStyleOfType:(int)type state:(id)state;
@end

@implementation PXLegacyText

+ (void)textMasterStyleOfType:(int)type state:(id)state
{
  typeCopy = type;
  stateCopy = state;
  objc_opt_class();
  legacyTextGlobals = [stateCopy legacyTextGlobals];
  objc_opt_class();
  v7 = [legacyTextGlobals firstChildOfType:1010];
  v8 = [v7 childOfType:4003 instance:typeCopy];
  eshObject = [v8 eshObject];
  if (eshObject)
  {
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)readLegacyTextFromData:(id)data toShape:(id)shape state:(id)state
{
  dataCopy = data;
  shapeCopy = shape;
  [state legacyPresentationState];
  objc_claimAutoreleasedReturnValue();
  [shapeCopy textBody];
  objc_claimAutoreleasedReturnValue();
  pptTreeWithData(dataCopy);
}

@end