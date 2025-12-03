@interface WBListLevelOverride
+ (void)readFrom:(id)from listLevelOverride:(id)override formatOverride:(WrdListLevelFormatOverride *)formatOverride document:(id)document;
+ (void)write:(id)write listLevelOverride:(id)override wrdFormatOverride:(WrdListLevelFormatOverride *)formatOverride;
@end

@implementation WBListLevelOverride

+ (void)readFrom:(id)from listLevelOverride:(id)override formatOverride:(WrdListLevelFormatOverride *)formatOverride document:(id)document
{
  fromCopy = from;
  overrideCopy = override;
  documentCopy = document;
  v11 = *(formatOverride + 21);
  if (v11)
  {
    [overrideCopy setStartNumber:formatOverride->var2];
    v11 = *(formatOverride + 21);
  }

  if ((v11 & 2) != 0)
  {
    mutableListLevel = [overrideCopy mutableListLevel];
    [WBListLevel readFrom:fromCopy listLevel:mutableListLevel format:EshDataModelVisitor::getClientVisitor(formatOverride) document:documentCopy];
  }
}

+ (void)write:(id)write listLevelOverride:(id)override wrdFormatOverride:(WrdListLevelFormatOverride *)formatOverride
{
  writeCopy = write;
  overrideCopy = override;
  if ([overrideCopy isStartNumberOverridden])
  {
    *(formatOverride + 21) |= 1u;
    formatOverride->var2 = [overrideCopy startNumber];
  }

  formatOverride->var3 = [overrideCopy level];
  if ([overrideCopy isListLevelOverridden])
  {
    WrdListLevelFormatOverride::setFormatting(formatOverride, 1);
    listLevel = [overrideCopy listLevel];
    [WBListLevel write:writeCopy listLevel:listLevel format:EshDataModelVisitor::getClientVisitor(formatOverride)];
  }
}

@end