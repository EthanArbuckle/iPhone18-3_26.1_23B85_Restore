@interface NPStripQuotationMarks
@end

@implementation NPStripQuotationMarks

uint64_t ___NPStripQuotationMarks_block_invoke()
{
  _NPStripQuotationMarks_quotationMarksCharset = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'«»‘’‚‛“”„‟‹›「」『』〝〞〟﹁﹂﹃﹄＂＇｢｣"];

  return MEMORY[0x2821F96F8]();
}

@end