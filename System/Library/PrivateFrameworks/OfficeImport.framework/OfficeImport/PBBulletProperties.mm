@interface PBBulletProperties
+ (id)readBulletProperties:(PptParaProperty9 *)properties state:(id)state;
+ (int)readBulletNumberScheme:(int)scheme;
+ (int)writeBulletNumberScheme:(int)scheme;
@end

@implementation PBBulletProperties

+ (id)readBulletProperties:(PptParaProperty9 *)properties state:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (LOBYTE(properties->var1) == 1)
  {
    v8 = -[OADAutoNumberBulletProperties initWithAutoNumberSchemeType:startIndex:]([OADAutoNumberBulletProperties alloc], "initWithAutoNumberSchemeType:startIndex:", [self readBulletNumberScheme:*&properties->var3 & 0x3F], properties->var3.var1);
  }

  else
  {
    v9 = *(&properties->var0 + 1);
    if ((v9 & 0x80000000) != 0)
    {
      v8 = 0;
    }

    else
    {
      tgtPresentation = [stateCopy tgtPresentation];
      bulletBlipCount = [tgtPresentation bulletBlipCount];

      if (bulletBlipCount >= v9)
      {
        v12 = [[OADBlipRef alloc] initWithIndex:v9 name:0 blip:0];
      }

      else
      {
        v12 = 0;
      }

      v8 = [[OADImageBulletProperties alloc] initWithBlipRef:v12];
    }
  }

  return v8;
}

+ (int)readBulletNumberScheme:(int)scheme
{
  if (scheme > 0x28)
  {
    return 1;
  }

  else
  {
    return dword_25D70F13C[scheme];
  }
}

+ (int)writeBulletNumberScheme:(int)scheme
{
  if ((scheme - 1) > 0x28)
  {
    return 3;
  }

  else
  {
    return dword_25D70F1E0[scheme - 1];
  }
}

@end