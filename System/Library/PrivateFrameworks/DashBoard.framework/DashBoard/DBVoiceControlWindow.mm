@interface DBVoiceControlWindow
- (_TtC9DashBoard20DBVoiceControlWindow)initWithWindowScene:(id)scene frame:(CGRect)frame;
@end

@implementation DBVoiceControlWindow

- (_TtC9DashBoard20DBVoiceControlWindow)initWithWindowScene:(id)scene frame:(CGRect)frame
{
  sceneCopy = scene;
  v5 = sub_24832C6D0(sceneCopy, 10);
  v6 = objc_opt_self();
  v7 = v5;
  clearColor = [v6 clearColor];
  [(DBVoiceControlWindow *)v7 setBackgroundColor:clearColor];

  [(DBVoiceControlWindow *)v7 setUserInteractionEnabled:0];
  return v7;
}

@end