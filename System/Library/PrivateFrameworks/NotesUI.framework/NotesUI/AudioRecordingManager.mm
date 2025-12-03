@interface AudioRecordingManager
- (_TtC7NotesUI21AudioRecordingManager)init;
- (double)amplitudeForSliceWithTimeRange:(id)range fullTimeRangeSampled:(BOOL *)sampled;
- (void)analyticsSessionWillEnd:(id)end;
@end

@implementation AudioRecordingManager

- (void)analyticsSessionWillEnd:(id)end
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4416E54();
  selfCopy = self;
  sub_1D4416E74();
  sub_1D43024A0(1, v9);

  sub_1D41769C4(v9, &qword_1EC7C9720);
  (*(v5 + 8))(v7, v4);
}

- (_TtC7NotesUI21AudioRecordingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)amplitudeForSliceWithTimeRange:(id)range fullTimeRangeSampled:(BOOL *)sampled
{
  var1 = range.var1;
  var0 = range.var0;
  selfCopy = self;
  AudioRecordingManager.amplitudeForSlice(with:fullTimeRangeSampled:)(sampled, var0, var1);
  v9 = v8;

  return v9;
}

@end