@interface DOCSourceByType
- (DOCSourceByType)init;
@end

@implementation DOCSourceByType

- (DOCSourceByType)init
{
  v3 = OBJC_IVAR___DOCSourceByType_orderedSources;
  *(&self->super.isa + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5.receiver = self;
  v5.super_class = DOCSourceByType;
  return [(DOCSourceByType *)&v5 init];
}

@end