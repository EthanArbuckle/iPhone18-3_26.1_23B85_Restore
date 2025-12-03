@interface DebugFormatEditorViewController
- (_TtC8NewsFeed31DebugFormatEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doAccessibilityWithSender:(id)sender;
- (void)doBreakpointNext;
- (void)doBreakpointStepIn;
- (void)doBreakpointStepOut;
- (void)doBreakpointStepOver;
- (void)doInterfaceLayoutDirection;
- (void)doLightDarkMode;
- (void)doOptions;
- (void)doSnapshotWithSender:(id)sender;
- (void)doStartStopDebugger;
- (void)doToggleConsoleDisplay;
- (void)loadView;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidZoom:(id)zoom;
- (void)showDevicesWithSender:(id)sender;
- (void)showWorkspaces;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatEditorViewController

- (void)loadView
{
  selfCopy = self;
  sub_1D69FEDB0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D69FEF2C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D6A04234(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D6A0438C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D6A05050();
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  sub_1D6A08374();
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_1D6A08A0C();
}

- (_TtC8NewsFeed31DebugFormatEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doLightDarkMode
{
  selfCopy = self;
  sub_1D6A0FD14();
}

- (void)doInterfaceLayoutDirection
{
  selfCopy = self;
  sub_1D6A0FDF8();
}

- (void)doAccessibilityWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D6A0FEDC(senderCopy);
}

- (void)doOptions
{
  selfCopy = self;
  sub_1D6A0DA70();
}

- (void)doSnapshotWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D6A10778(senderCopy);
}

- (void)doToggleConsoleDisplay
{
  selfCopy = self;
  sub_1D6A0D284();
}

- (void)doStartStopDebugger
{
  selfCopy = self;
  sub_1D6A10BD8();
}

- (void)doBreakpointNext
{
  selfCopy = self;
  sub_1D6A1143C(0);
}

- (void)doBreakpointStepOver
{
  selfCopy = self;
  sub_1D6A11654(sub_1D6D2CEF0);
}

- (void)doBreakpointStepIn
{
  selfCopy = self;
  sub_1D6A1143C(1);
}

- (void)doBreakpointStepOut
{
  selfCopy = self;
  sub_1D6A11654(sub_1D6D2CEF8);
}

- (void)showDevicesWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D6A11824(senderCopy);
}

- (void)showWorkspaces
{
  selfCopy = self;
  sub_1D6A0D180();
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  sub_1D6A10108(zoomCopy);
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  viewCopy = view;
  selfCopy = self;
  sub_1D6A13C28(zoomingCopy, scale);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1D6A103C8(scrollCopy);
}

@end