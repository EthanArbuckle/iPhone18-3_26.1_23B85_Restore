@interface CUIKNotesFieldCIDNotationPattern
@end

@implementation CUIKNotesFieldCIDNotationPattern

uint64_t ___CUIKNotesFieldCIDNotationPattern_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\[cid:[^\\]]*\\]" options:0 error:0];
  v1 = _CUIKNotesFieldCIDNotationPattern_cidNotationPattern;
  _CUIKNotesFieldCIDNotationPattern_cidNotationPattern = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end