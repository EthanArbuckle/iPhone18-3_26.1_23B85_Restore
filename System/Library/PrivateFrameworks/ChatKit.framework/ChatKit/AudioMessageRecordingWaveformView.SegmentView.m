@interface AudioMessageRecordingWaveformView.SegmentView
- (_TtCC7ChatKit33AudioMessageRecordingWaveformViewP33_68B4BF5DB603E8129B1C86442826AB4B11SegmentView)initWithCoder:(id)a3;
- (_TtCC7ChatKit33AudioMessageRecordingWaveformViewP33_68B4BF5DB603E8129B1C86442826AB4B11SegmentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AudioMessageRecordingWaveformView.SegmentView

- (_TtCC7ChatKit33AudioMessageRecordingWaveformViewP33_68B4BF5DB603E8129B1C86442826AB4B11SegmentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AudioMessageRecordingWaveformView.SegmentView();
  return [(AudioMessageRecordingWaveformView.SegmentView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC7ChatKit33AudioMessageRecordingWaveformViewP33_68B4BF5DB603E8129B1C86442826AB4B11SegmentView)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AudioMessageRecordingWaveformView.SegmentView();
  v2 = v4.receiver;
  [(AudioMessageRecordingWaveformView.SegmentView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

@end