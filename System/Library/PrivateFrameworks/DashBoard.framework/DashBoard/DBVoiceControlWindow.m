@interface DBVoiceControlWindow
- (_TtC9DashBoard20DBVoiceControlWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4;
@end

@implementation DBVoiceControlWindow

- (_TtC9DashBoard20DBVoiceControlWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4
{
  v4 = a3;
  v5 = sub_24832C6D0(v4, 10);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [(DBVoiceControlWindow *)v7 setBackgroundColor:v8];

  [(DBVoiceControlWindow *)v7 setUserInteractionEnabled:0];
  return v7;
}

@end