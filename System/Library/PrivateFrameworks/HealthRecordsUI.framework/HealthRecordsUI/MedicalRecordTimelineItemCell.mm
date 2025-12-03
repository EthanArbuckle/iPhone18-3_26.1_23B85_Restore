@interface MedicalRecordTimelineItemCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)awakeFromNib;
@end

@implementation MedicalRecordTimelineItemCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MedicalRecordTimelineItemCell(0);
  v2 = v3.receiver;
  [(MedicalRecordTimelineItemCell *)&v3 awakeFromNib];
  sub_1D1274B3C();
  sub_1D1274D8C();
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