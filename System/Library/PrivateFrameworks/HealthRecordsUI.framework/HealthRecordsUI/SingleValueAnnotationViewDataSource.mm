@interface SingleValueAnnotationViewDataSource
- (void)updateUsing:(id)using;
- (void)updateUsing:(id)using valueRange:(id)range dateRange:(id)dateRange timeScope:(int64_t)scope;
@end

@implementation SingleValueAnnotationViewDataSource

- (void)updateUsing:(id)using
{
  usingCopy = using;
  selfCopy = self;
  sub_1D106DBD8(usingCopy);
}

- (void)updateUsing:(id)using valueRange:(id)range dateRange:(id)dateRange timeScope:(int64_t)scope
{
  sub_1D106F97C();
  v9 = sub_1D139045C();
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0xB0);
  dateRangeCopy = dateRange;
  selfCopy = self;
  v11(dateRangeCopy, scope);
  v14 = sub_1D106E248(v9, type metadata accessor for SingleValueChartData);

  (*((*v10 & selfCopy->super.super.isa) + 0x118))(v14);
}

@end