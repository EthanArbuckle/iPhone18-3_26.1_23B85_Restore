@interface EBTextBox
+ (id)edTextBoxFromXlGraphicsInfo:(void *)info edResources:(id)resources;
@end

@implementation EBTextBox

+ (id)edTextBoxFromXlGraphicsInfo:(void *)info edResources:(id)resources
{
  resourcesCopy = resources;
  if (info)
  {
    v6 = +[EDTextBox textBox];
    v7 = [EBAlignmentInfo edAlignmentInfoFromXlGraphicsInfo:info];
    [v6 setAlignmentInfo:v7];

    v8 = [EBProtection edProtectionFromXlGraphicsInfo:info];
    [v6 setProtection:v8];

    v9 = [EBString edStringFromXlString:*(info + 7) edResources:resourcesCopy];
    [v6 setText:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end