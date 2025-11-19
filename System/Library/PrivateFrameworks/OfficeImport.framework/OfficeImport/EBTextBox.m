@interface EBTextBox
+ (id)edTextBoxFromXlGraphicsInfo:(void *)a3 edResources:(id)a4;
@end

@implementation EBTextBox

+ (id)edTextBoxFromXlGraphicsInfo:(void *)a3 edResources:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = +[EDTextBox textBox];
    v7 = [EBAlignmentInfo edAlignmentInfoFromXlGraphicsInfo:a3];
    [v6 setAlignmentInfo:v7];

    v8 = [EBProtection edProtectionFromXlGraphicsInfo:a3];
    [v6 setProtection:v8];

    v9 = [EBString edStringFromXlString:*(a3 + 7) edResources:v5];
    [v6 setText:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end