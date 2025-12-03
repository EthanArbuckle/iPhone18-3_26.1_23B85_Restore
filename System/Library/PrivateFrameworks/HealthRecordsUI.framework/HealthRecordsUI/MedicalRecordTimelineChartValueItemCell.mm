@interface MedicalRecordTimelineChartValueItemCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)awakeFromNib;
@end

@implementation MedicalRecordTimelineChartValueItemCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MedicalRecordTimelineChartValueItemCell(0);
  v2 = v3.receiver;
  [(MedicalRecordTimelineChartValueItemCell *)&v3 awakeFromNib];
  sub_1D11E81B4();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1D138F20C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F1FC();
  selfCopy = self;
  sub_1D137E118(v7);

  (*(v5 + 8))(v7, v4);
}

@end