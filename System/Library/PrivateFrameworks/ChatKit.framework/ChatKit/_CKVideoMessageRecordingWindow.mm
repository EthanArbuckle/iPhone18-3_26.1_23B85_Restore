@interface _CKVideoMessageRecordingWindow
- (_CKVideoMessageRecordingWindow)initWithFrame:(CGRect)frame;
@end

@implementation _CKVideoMessageRecordingWindow

- (_CKVideoMessageRecordingWindow)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _CKVideoMessageRecordingWindow;
  v3 = [(_CKVideoMessageRecordingWindow *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_CKVideoMessageRecordingWindow *)v3 setBecomeKeyOnOrderFront:0];
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 videoControllerWindowLevel];
    [(_CKVideoMessageRecordingWindow *)v4 setWindowLevel:?];

    [(_CKVideoMessageRecordingWindow *)v4 setClipsToBounds:1];
  }

  return v4;
}

@end