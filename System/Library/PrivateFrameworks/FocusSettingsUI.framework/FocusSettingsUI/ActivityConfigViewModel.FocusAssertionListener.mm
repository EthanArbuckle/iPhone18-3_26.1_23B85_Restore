@interface ActivityConfigViewModel.FocusAssertionListener
- (_TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22FocusAssertionListener)init;
- (void)didUpdateActiveModesForActivationManager:(id)manager assertion:(id)assertion;
@end

@implementation ActivityConfigViewModel.FocusAssertionListener

- (void)didUpdateActiveModesForActivationManager:(id)manager assertion:(id)assertion
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22FocusAssertionListener_modeActivationDidChange);
  assertionCopy = assertion;
  selfCopy = self;

  v6(assertion);
}

- (_TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22FocusAssertionListener)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22FocusAssertionListener_modeActivationDidChange);
  *v2 = nullsub_1;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivityConfigViewModel.FocusAssertionListener();
  return [(ActivityConfigViewModel.FocusAssertionListener *)&v4 init];
}

@end