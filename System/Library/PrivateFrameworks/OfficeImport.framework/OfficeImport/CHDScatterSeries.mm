@interface CHDScatterSeries
- (void)setCategoryData:(id)a3;
@end

@implementation CHDScatterSeries

- (void)setCategoryData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CHDScatterSeries;
  [(CHDSeries *)&v7 setCategoryData:v4];
  WeakRetained = objc_loadWeakRetained(&self->super.super.mChart);
  v6 = [WeakRetained processors];
  [v6 markObject:v4 processor:objc_opt_class()];
}

@end