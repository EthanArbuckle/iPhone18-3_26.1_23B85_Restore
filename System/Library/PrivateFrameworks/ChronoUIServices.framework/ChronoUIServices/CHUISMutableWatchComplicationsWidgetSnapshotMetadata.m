@interface CHUISMutableWatchComplicationsWidgetSnapshotMetadata
- (void)setGauge:(id)a3;
- (void)setGaugeMaximumLabelData:(id)a3;
- (void)setGaugeMinimumLabelData:(id)a3;
- (void)setGaugeProviderData:(id)a3;
- (void)setLabelData:(id)a3;
- (void)setOuterLabelData:(id)a3;
@end

@implementation CHUISMutableWatchComplicationsWidgetSnapshotMetadata

- (void)setLabelData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  labelData = self->super._labelData;
  self->super._labelData = v4;
}

- (void)setGauge:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  gauge = self->super._gauge;
  self->super._gauge = v4;
}

- (void)setGaugeProviderData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  gaugeProviderData = self->super._gaugeProviderData;
  self->super._gaugeProviderData = v4;
}

- (void)setGaugeMinimumLabelData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  gaugeMinimumLabelData = self->super._gaugeMinimumLabelData;
  self->super._gaugeMinimumLabelData = v4;
}

- (void)setGaugeMaximumLabelData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  gaugeMaximumLabelData = self->super._gaugeMaximumLabelData;
  self->super._gaugeMaximumLabelData = v4;
}

- (void)setOuterLabelData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  outerLabelData = self->super._outerLabelData;
  self->super._outerLabelData = v4;
}

@end