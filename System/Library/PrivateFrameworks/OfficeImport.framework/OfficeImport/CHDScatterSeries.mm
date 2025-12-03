@interface CHDScatterSeries
- (void)setCategoryData:(id)data;
@end

@implementation CHDScatterSeries

- (void)setCategoryData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = CHDScatterSeries;
  [(CHDSeries *)&v7 setCategoryData:dataCopy];
  WeakRetained = objc_loadWeakRetained(&self->super.super.mChart);
  processors = [WeakRetained processors];
  [processors markObject:dataCopy processor:objc_opt_class()];
}

@end