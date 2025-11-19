@interface SingleValueAnnotationViewDataSource
- (void)updateUsing:(id)a3;
- (void)updateUsing:(id)a3 valueRange:(id)a4 dateRange:(id)a5 timeScope:(int64_t)a6;
@end

@implementation SingleValueAnnotationViewDataSource

- (void)updateUsing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D106DBD8(v4);
}

- (void)updateUsing:(id)a3 valueRange:(id)a4 dateRange:(id)a5 timeScope:(int64_t)a6
{
  sub_1D106F97C();
  v9 = sub_1D139045C();
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0xB0);
  v12 = a5;
  v13 = self;
  v11(v12, a6);
  v14 = sub_1D106E248(v9, type metadata accessor for SingleValueChartData);

  (*((*v10 & v13->super.super.isa) + 0x118))(v14);
}

@end