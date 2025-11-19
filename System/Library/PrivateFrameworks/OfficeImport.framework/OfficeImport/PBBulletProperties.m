@interface PBBulletProperties
+ (id)readBulletProperties:(PptParaProperty9 *)a3 state:(id)a4;
+ (int)readBulletNumberScheme:(int)a3;
+ (int)writeBulletNumberScheme:(int)a3;
@end

@implementation PBBulletProperties

+ (id)readBulletProperties:(PptParaProperty9 *)a3 state:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (LOBYTE(a3->var1) == 1)
  {
    v8 = -[OADAutoNumberBulletProperties initWithAutoNumberSchemeType:startIndex:]([OADAutoNumberBulletProperties alloc], "initWithAutoNumberSchemeType:startIndex:", [a1 readBulletNumberScheme:*&a3->var3 & 0x3F], a3->var3.var1);
  }

  else
  {
    v9 = *(&a3->var0 + 1);
    if ((v9 & 0x80000000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v10 = [v6 tgtPresentation];
      v11 = [v10 bulletBlipCount];

      if (v11 >= v9)
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

+ (int)readBulletNumberScheme:(int)a3
{
  if (a3 > 0x28)
  {
    return 1;
  }

  else
  {
    return dword_25D70F13C[a3];
  }
}

+ (int)writeBulletNumberScheme:(int)a3
{
  if ((a3 - 1) > 0x28)
  {
    return 3;
  }

  else
  {
    return dword_25D70F1E0[a3 - 1];
  }
}

@end