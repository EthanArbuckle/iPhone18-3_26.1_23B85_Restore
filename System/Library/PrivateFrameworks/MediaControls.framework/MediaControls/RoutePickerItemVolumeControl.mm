@interface RoutePickerItemVolumeControl
- (void)layoutSubviews;
- (void)updateVisualStyling;
@end

@implementation RoutePickerItemVolumeControl

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RoutePickerItemVolumeControl(0);
  v2 = v4.receiver;
  [(RoutePickerItemVolumeControl *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider];
  [v2 bounds];
  [v3 setFrame_];
}

- (void)updateVisualStyling
{
  selfCopy = self;
  sub_1A224DBEC();
}

@end