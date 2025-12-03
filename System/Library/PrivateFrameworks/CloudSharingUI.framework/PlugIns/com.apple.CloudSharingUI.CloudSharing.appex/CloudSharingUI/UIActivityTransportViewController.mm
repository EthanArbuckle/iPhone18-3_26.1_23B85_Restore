@interface UIActivityTransportViewController
- (_TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)mailComposeController:(MFMailComposeViewController *)controller shouldSendMail:(NSString *)mail toRecipients:(NSArray *)recipients completion:(id)completion;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller shouldSendMessage:(NSString *)message toRecipients:(NSArray *)recipients completion:(id)completion;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)viewDidLoad;
@end

@implementation UIActivityTransportViewController

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
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
  selfCopy = self;
  activityCopy = activity;

  v14.receiver = selfCopy;
  v14.super_class = ObjectType;
  [(UIActivityTransportViewController *)&v14 _prepareActivity:activityCopy completion:v11];

  _Block_release(v11);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(UIActivityTransportViewController *)&v2 viewDidLoad];
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mailComposeController:(MFMailComposeViewController *)controller shouldSendMail:(NSString *)mail toRecipients:(NSArray *)recipients completion:(id)completion
{
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = controller;
  v16[3] = mail;
  v16[4] = recipients;
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
  controllerCopy = controller;
  mailCopy = mail;
  recipientsCopy = recipients;
  selfCopy = self;
  sub_1000BF368(0, 0, v14, &unk_1000D6038, v19);
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1000BE148(controllerCopy, result, error);
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller shouldSendMessage:(NSString *)message toRecipients:(NSArray *)recipients completion:(id)completion
{
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = controller;
  v16[3] = message;
  v16[4] = recipients;
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
  controllerCopy = controller;
  messageCopy = message;
  recipientsCopy = recipients;
  selfCopy = self;
  sub_1000BF368(0, 0, v14, &unk_1000CCB78, v19);
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000BE9B8(controllerCopy, result);
}

@end