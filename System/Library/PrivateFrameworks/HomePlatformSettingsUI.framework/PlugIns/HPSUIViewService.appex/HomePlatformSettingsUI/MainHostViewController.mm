@interface MainHostViewController
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (MainHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonTapped;
- (void)loadView;
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation MainHostViewController

- (void)loadView
{
  selfCopy = self;
  MainHostViewController.loadView()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  MainHostViewController.viewDidDisappear(_:)(disappear);
}

- (MainHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10008715C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MainHostViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  MainHostViewController.shouldAccept(_:)(connectionCopy);

  return 1;
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = identifiers;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100089D30;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100089D38;
  v17[5] = v16;
  dCopy = d;
  identifiersCopy = identifiers;
  selfCopy = self;
  sub_100040A24(0, 0, v12, &unk_100089D40, v17);
}

- (void)closeButtonTapped
{
  selfCopy = self;
  sub_10001BA7C();
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10008742C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100089D00;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100089D08;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_100040A24(0, 0, v10, &unk_100089D10, v15);
}

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = identifiers;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100089CE0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100089CE8;
  v17[5] = v16;
  dCopy = d;
  identifiersCopy = identifiers;
  selfCopy = self;
  sub_100040A24(0, 0, v12, &unk_100089CF0, v17);
}

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10008742C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100089CC0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100089CC8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_100040A24(0, 0, v10, &unk_100089CD0, v15);
}

@end