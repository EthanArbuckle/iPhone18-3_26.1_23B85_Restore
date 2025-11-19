@interface DebugFormatEditorViewController
- (_TtC8NewsFeed31DebugFormatEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doAccessibilityWithSender:(id)a3;
- (void)doBreakpointNext;
- (void)doBreakpointStepIn;
- (void)doBreakpointStepOut;
- (void)doBreakpointStepOver;
- (void)doInterfaceLayoutDirection;
- (void)doLightDarkMode;
- (void)doOptions;
- (void)doSnapshotWithSender:(id)a3;
- (void)doStartStopDebugger;
- (void)doToggleConsoleDisplay;
- (void)loadView;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)showDevicesWithSender:(id)a3;
- (void)showWorkspaces;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatEditorViewController

- (void)loadView
{
  v2 = self;
  sub_1D69FEDB0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D69FEF2C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1D6A04234(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D6A0438C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D6A05050();
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  sub_1D6A08374();
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_1D6A08A0C();
}

- (_TtC8NewsFeed31DebugFormatEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doLightDarkMode
{
  v2 = self;
  sub_1D6A0FD14();
}

- (void)doInterfaceLayoutDirection
{
  v2 = self;
  sub_1D6A0FDF8();
}

- (void)doAccessibilityWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6A0FEDC(v4);
}

- (void)doOptions
{
  v2 = self;
  sub_1D6A0DA70();
}

- (void)doSnapshotWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6A10778(v4);
}

- (void)doToggleConsoleDisplay
{
  v2 = self;
  sub_1D6A0D284();
}

- (void)doStartStopDebugger
{
  v2 = self;
  sub_1D6A10BD8();
}

- (void)doBreakpointNext
{
  v2 = self;
  sub_1D6A1143C(0);
}

- (void)doBreakpointStepOver
{
  v2 = self;
  sub_1D6A11654(sub_1D6D2CEF0);
}

- (void)doBreakpointStepIn
{
  v2 = self;
  sub_1D6A1143C(1);
}

- (void)doBreakpointStepOut
{
  v2 = self;
  sub_1D6A11654(sub_1D6D2CEF8);
}

- (void)showDevicesWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6A11824(v4);
}

- (void)showWorkspaces
{
  v2 = self;
  sub_1D6A0D180();
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6A10108(v4);
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1D6A13C28(v8, a5);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6A103C8(v4);
}

@end