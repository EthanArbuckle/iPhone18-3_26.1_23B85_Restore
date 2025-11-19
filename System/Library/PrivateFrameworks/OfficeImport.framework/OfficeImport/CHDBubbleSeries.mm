@interface CHDBubbleSeries
- (void)setCategoryData:(id)a3;
- (void)setSizeData:(id)a3;
@end

@implementation CHDBubbleSeries

- (void)setSizeData:(id)a3
{
  v5 = a3;
  if (self->mSizeData != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->mSizeData, a3);
    WeakRetained = objc_loadWeakRetained(&self->super.mChart);
    v7 = [WeakRetained processors];
    [v7 markObject:v8 processor:objc_opt_class()];

    v5 = v8;
  }
}

- (void)setCategoryData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CHDBubbleSeries;
  [(CHDSeries *)&v7 setCategoryData:v4];
  WeakRetained = objc_loadWeakRetained(&self->super.mChart);
  v6 = [WeakRetained processors];
  [v6 markObject:v4 processor:objc_opt_class()];
}

@end