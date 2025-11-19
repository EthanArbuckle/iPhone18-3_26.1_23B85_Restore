@interface DESRecordSet
- (id)description;
@end

@implementation DESRecordSet

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(NumOfDESRecord=%lu, NumOfCoreDuetEvent=%ld)", v5, -[NSDictionary count](self->_nativeRecordInfo, "count"), -[NSArray count](self->_coreDuetEvents, "count")];

  return v6;
}

@end