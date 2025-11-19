@interface WBListLevelOverride
+ (void)readFrom:(id)a3 listLevelOverride:(id)a4 formatOverride:(WrdListLevelFormatOverride *)a5 document:(id)a6;
+ (void)write:(id)a3 listLevelOverride:(id)a4 wrdFormatOverride:(WrdListLevelFormatOverride *)a5;
@end

@implementation WBListLevelOverride

+ (void)readFrom:(id)a3 listLevelOverride:(id)a4 formatOverride:(WrdListLevelFormatOverride *)a5 document:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a6;
  v11 = *(a5 + 21);
  if (v11)
  {
    [v9 setStartNumber:a5->var2];
    v11 = *(a5 + 21);
  }

  if ((v11 & 2) != 0)
  {
    v12 = [v9 mutableListLevel];
    [WBListLevel readFrom:v13 listLevel:v12 format:EshDataModelVisitor::getClientVisitor(a5) document:v10];
  }
}

+ (void)write:(id)a3 listLevelOverride:(id)a4 wrdFormatOverride:(WrdListLevelFormatOverride *)a5
{
  v9 = a3;
  v7 = a4;
  if ([v7 isStartNumberOverridden])
  {
    *(a5 + 21) |= 1u;
    a5->var2 = [v7 startNumber];
  }

  a5->var3 = [v7 level];
  if ([v7 isListLevelOverridden])
  {
    WrdListLevelFormatOverride::setFormatting(a5, 1);
    v8 = [v7 listLevel];
    [WBListLevel write:v9 listLevel:v8 format:EshDataModelVisitor::getClientVisitor(a5)];
  }
}

@end