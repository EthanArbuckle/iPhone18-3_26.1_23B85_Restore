@interface UIActivityTransportViewController
- (_TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)_prepareActivity:(id)a3 completion:(id)a4;
- (void)mailComposeController:(MFMailComposeViewController *)a3 shouldSendMail:(NSString *)a4 toRecipients:(NSArray *)a5 completion:(id)a6;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)messageComposeViewController:(MFMessageComposeViewController *)a3 shouldSendMessage:(NSString *)a4 toRecipients:(NSArray *)a5 completion:(id)a6;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation UIActivityTransportViewController

- (void)_prepareActivity:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = sub_1000BFB3C;
  v10[4] = v9;
  aBlock[4] = sub_1000BFB8C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008EFD4;
  aBlock[3] = &unk_10010B9B8;
  v11 = _Block_copy(aBlock);
  v12 = self;
  v13 = a3;

  v14.receiver = v12;
  v14.super_class = ObjectType;
  [(UIActivityTransportViewController *)&v14 _prepareActivity:v13 completion:v11];

  _Block_release(v11);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(UIActivityTransportViewController *)&v2 viewDidLoad];
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mailComposeController:(MFMailComposeViewController *)a3 shouldSendMail:(NSString *)a4 toRecipients:(NSArray *)a5 completion:(id)a6
{
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1000C6F44();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000D6028;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1000D6030;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_1000BF368(0, 0, v14, &unk_1000D6038, v19);
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1000BE148(v8, a4, a5);
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)a3 shouldSendMessage:(NSString *)a4 toRecipients:(NSArray *)a5 completion:(id)a6
{
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1000C6F44();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000D5FD8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1000CCB70;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_1000BF368(0, 0, v14, &unk_1000CCB78, v19);
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1000BE9B8(v6, a4);
}

@end