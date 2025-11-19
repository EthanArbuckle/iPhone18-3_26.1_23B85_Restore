@interface EBProtection
+ (XlDXfProtect)xlDXfProtectFromEDProtection:(id)a3;
+ (id)edProtectionFromXlDXfProtect:(XlDXfProtect *)a3;
+ (id)edProtectionFromXlGraphicsInfo:(void *)a3;
+ (id)edProtectionFromXlXf:(XlXf *)a3;
+ (void)writeProtection:(id)a3 toXlGraphicsInfo:(void *)a4;
+ (void)writeProtection:(id)a3 toXlXf:(XlXf *)a4;
@end

@implementation EBProtection

+ (id)edProtectionFromXlXf:(XlXf *)a3
{
  if (a3)
  {
    v4 = [EDProtection protectionWithHidden:a3->var25 locked:a3->var24];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)edProtectionFromXlDXfProtect:(XlDXfProtect *)a3
{
  if (a3)
  {
    v4 = [EDProtection protectionWithHidden:a3->var1 locked:a3->var0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)edProtectionFromXlGraphicsInfo:(void *)a3
{
  if (a3)
  {
    v4 = [EDProtection protectionWithHidden:0 locked:*(a3 + 76)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)writeProtection:(id)a3 toXlXf:(XlXf *)a4
{
  v5 = a3;
  if (a4)
  {
    a4->var37 = v5 != 0;
    if (v5)
    {
      v6 = v5;
      a4->var25 = [v5 isHidden];
      a4->var24 = [v6 isLocked];
      v5 = v6;
    }
  }
}

+ (void)writeProtection:(id)a3 toXlGraphicsInfo:(void *)a4
{
  v5 = a3;
  if (v5 && a4)
  {
    v6 = v5;
    *(a4 + 76) = [v5 isLocked];
    v5 = v6;
  }
}

+ (XlDXfProtect)xlDXfProtectFromEDProtection:(id)a3
{
  if (a3)
  {
    operator new();
  }

  return 0;
}

@end