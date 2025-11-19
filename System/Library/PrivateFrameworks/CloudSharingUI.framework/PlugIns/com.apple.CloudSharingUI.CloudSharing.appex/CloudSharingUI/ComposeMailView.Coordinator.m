@interface ComposeMailView.Coordinator
- (_TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator)init;
- (void)mailComposeController:(MFMailComposeViewController *)a3 shouldSendMail:(NSString *)a4 toRecipients:(NSArray *)a5 completion:(id)a6;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
@end

@implementation ComposeMailView.Coordinator

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1000220E8(a4, a5);
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
  v18[4] = &unk_1000CCB68;
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

- (_TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end