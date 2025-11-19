@interface ApplicationWorkspaceObserver
- (_TtC7imagent28ApplicationWorkspaceObserver)init;
- (void)dealloc;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation ApplicationWorkspaceObserver

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    [v5 removeObserver:v4];

    v7.receiver = v4;
    v7.super_class = type metadata accessor for ApplicationWorkspaceObserver();
    [(ApplicationWorkspaceObserver *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7imagent28ApplicationWorkspaceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = self;
  v2 = sub_1000407E8();
  sub_100040BCC(v2 & 1);
}

@end