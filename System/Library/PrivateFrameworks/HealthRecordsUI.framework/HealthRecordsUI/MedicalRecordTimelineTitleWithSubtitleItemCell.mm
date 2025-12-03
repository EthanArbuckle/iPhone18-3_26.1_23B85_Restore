@interface MedicalRecordTimelineTitleWithSubtitleItemCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation MedicalRecordTimelineTitleWithSubtitleItemCell

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