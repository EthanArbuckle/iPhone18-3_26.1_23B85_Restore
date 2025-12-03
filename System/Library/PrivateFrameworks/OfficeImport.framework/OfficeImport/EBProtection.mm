@interface EBProtection
+ (XlDXfProtect)xlDXfProtectFromEDProtection:(id)protection;
+ (id)edProtectionFromXlDXfProtect:(XlDXfProtect *)protect;
+ (id)edProtectionFromXlGraphicsInfo:(void *)info;
+ (id)edProtectionFromXlXf:(XlXf *)xf;
+ (void)writeProtection:(id)protection toXlGraphicsInfo:(void *)info;
+ (void)writeProtection:(id)protection toXlXf:(XlXf *)xf;
@end

@implementation EBProtection

+ (id)edProtectionFromXlXf:(XlXf *)xf
{
  if (xf)
  {
    v4 = [EDProtection protectionWithHidden:xf->var25 locked:xf->var24];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)edProtectionFromXlDXfProtect:(XlDXfProtect *)protect
{
  if (protect)
  {
    v4 = [EDProtection protectionWithHidden:protect->var1 locked:protect->var0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)edProtectionFromXlGraphicsInfo:(void *)info
{
  if (info)
  {
    v4 = [EDProtection protectionWithHidden:0 locked:*(info + 76)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)writeProtection:(id)protection toXlXf:(XlXf *)xf
{
  protectionCopy = protection;
  if (xf)
  {
    xf->var37 = protectionCopy != 0;
    if (protectionCopy)
    {
      v6 = protectionCopy;
      xf->var25 = [protectionCopy isHidden];
      xf->var24 = [v6 isLocked];
      protectionCopy = v6;
    }
  }
}

+ (void)writeProtection:(id)protection toXlGraphicsInfo:(void *)info
{
  protectionCopy = protection;
  if (protectionCopy && info)
  {
    v6 = protectionCopy;
    *(info + 76) = [protectionCopy isLocked];
    protectionCopy = v6;
  }
}

+ (XlDXfProtect)xlDXfProtectFromEDProtection:(id)protection
{
  if (protection)
  {
    operator new();
  }

  return 0;
}

@end