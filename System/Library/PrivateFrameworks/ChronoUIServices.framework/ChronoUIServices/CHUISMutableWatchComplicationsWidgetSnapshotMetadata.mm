@interface CHUISMutableWatchComplicationsWidgetSnapshotMetadata
- (void)setGauge:(id)gauge;
- (void)setGaugeMaximumLabelData:(id)data;
- (void)setGaugeMinimumLabelData:(id)data;
- (void)setGaugeProviderData:(id)data;
- (void)setLabelData:(id)data;
- (void)setOuterLabelData:(id)data;
@end

@implementation CHUISMutableWatchComplicationsWidgetSnapshotMetadata

- (void)setLabelData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy copy];
  labelData = self->super._labelData;
  self->super._labelData = v4;
}

- (void)setGauge:(id)gauge
{
  gaugeCopy = gauge;
  v4 = [gaugeCopy copy];
  gauge = self->super._gauge;
  self->super._gauge = v4;
}

- (void)setGaugeProviderData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy copy];
  gaugeProviderData = self->super._gaugeProviderData;
  self->super._gaugeProviderData = v4;
}

- (void)setGaugeMinimumLabelData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy copy];
  gaugeMinimumLabelData = self->super._gaugeMinimumLabelData;
  self->super._gaugeMinimumLabelData = v4;
}

- (void)setGaugeMaximumLabelData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy copy];
  gaugeMaximumLabelData = self->super._gaugeMaximumLabelData;
  self->super._gaugeMaximumLabelData = v4;
}

- (void)setOuterLabelData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy copy];
  outerLabelData = self->super._outerLabelData;
  self->super._outerLabelData = v4;
}

@end