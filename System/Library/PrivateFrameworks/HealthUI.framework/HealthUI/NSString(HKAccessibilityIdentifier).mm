@interface NSString(HKAccessibilityIdentifier)
+ (id)healthAccessibilityIdentifier:()HKAccessibilityIdentifier suffix:;
@end

@implementation NSString(HKAccessibilityIdentifier)

+ (id)healthAccessibilityIdentifier:()HKAccessibilityIdentifier suffix:
{
  v5 = a4;
  v6 = &stru_1F42FFBE0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v9 = @"UIA.Health";
      goto LABEL_12;
    }

    v8 = a3 == 1;
    v7 = @"ECG";
  }

  else
  {
    v7 = @"IRN";
    if (a3 == 4)
    {
      v6 = @"HypertensionNotifications";
    }

    if (a3 == 3)
    {
      v6 = @"HR";
    }

    v8 = a3 == 2;
  }

  if (v8)
  {
    v6 = v7;
  }

  v9 = [@"UIA.Health" stringByAppendingFormat:@".%@", v6];
LABEL_12:
  v10 = v9;
  v11 = [(__CFString *)v9 stringByAppendingFormat:@".%@", v5];

  return v11;
}

@end