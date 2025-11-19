@interface MRTypeAuditCreateNumberFromString
@end

@implementation MRTypeAuditCreateNumberFromString

uint64_t ___MRTypeAuditCreateNumberFromString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _MRTypeAuditCreateNumberFromString_numberFormatter;
  _MRTypeAuditCreateNumberFromString_numberFormatter = v0;

  v2 = _MRTypeAuditCreateNumberFromString_numberFormatter;

  return [v2 setNumberStyle:0];
}

@end