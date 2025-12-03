@interface CHDBubbleSeries
- (void)setCategoryData:(id)data;
- (void)setSizeData:(id)data;
@end

@implementation CHDBubbleSeries

- (void)setSizeData:(id)data
{
  dataCopy = data;
  if (self->mSizeData != dataCopy)
  {
    v8 = dataCopy;
    objc_storeStrong(&self->mSizeData, data);
    WeakRetained = objc_loadWeakRetained(&self->super.mChart);
    processors = [WeakRetained processors];
    [processors markObject:v8 processor:objc_opt_class()];

    dataCopy = v8;
  }
}

- (void)setCategoryData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = CHDBubbleSeries;
  [(CHDSeries *)&v7 setCategoryData:dataCopy];
  WeakRetained = objc_loadWeakRetained(&self->super.mChart);
  processors = [WeakRetained processors];
  [processors markObject:dataCopy processor:objc_opt_class()];
}

@end