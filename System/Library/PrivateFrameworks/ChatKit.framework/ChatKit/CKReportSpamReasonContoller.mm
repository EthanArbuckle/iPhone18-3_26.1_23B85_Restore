@interface CKReportSpamReasonContoller
- (CKReportSpamReasonContoller)initWithCoder:(id)a3;
- (CKReportSpamReasonContoller)initWithConversations:(id)a3 didReportBlock:(id)a4;
- (CKReportSpamReasonContoller)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissReportSpamController;
- (void)reportSpam;
- (void)viewDidLoad;
@end

@implementation CKReportSpamReasonContoller

- (CKReportSpamReasonContoller)initWithConversations:(id)a3 didReportBlock:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1902188FC(0, &qword_1EAD466B0);
  v6 = sub_190D57180();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self + OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR___CKReportSpamReasonContoller_conversations) = v6;
  *v8 = 0;
  v8[8] = 1;
  v9 = (self + OBJC_IVAR___CKReportSpamReasonContoller_didReportBlock);
  *v9 = sub_190841A8C;
  v9[1] = v7;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ReportSpamReasonContoller();
  return [(CKReportSpamReasonContoller *)&v11 initWithNibName:0 bundle:0];
}

- (CKReportSpamReasonContoller)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson;
  *v3 = 0;
  v3[8] = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_190ABC004();
}

- (void)dismissReportSpamController
{
  v2 = self;
  sub_190ABC730();
}

- (void)reportSpam
{
  v2 = self;
  sub_190ABC8E4();
}

- (CKReportSpamReasonContoller)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end