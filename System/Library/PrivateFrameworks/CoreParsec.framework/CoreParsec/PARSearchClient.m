@interface PARSearchClient
- (NSXPCConnection)connection;
- (unint64_t)request:(id)a3 request:(id)a4 reply:(id)a5;
- (void)bagDidLoad:(id)a3 error:(id)a4;
- (void)clearEngagementsFrom:(id)a3 to:(id)a4;
- (void)clearEngagementsWith:(id)a3 type:(id)a4;
- (void)didReceiveFeedbackData:(id)a3 agent:(id)a4;
- (void)fileHandleAndAttributesForResource:(id)a3 completion:(id)a4;
- (void)getImageMap:(id)a3;
- (void)listSessions:(id)a3;
- (void)reportFeedback:(id)a3 feedback:(id)a4 queryId:(unint64_t)a5;
- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4;
@end

@implementation PARSearchClient

- (NSXPCConnection)connection
{
  v2 = PARSearchClient.connection.getter();

  return v2;
}

- (unint64_t)request:(id)a3 request:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = sub_1B109DA3C(v9, v10, v11, v8);
  _Block_release(v8);

  return v12;
}

- (void)reportFeedback:(id)a3 feedback:(id)a4 queryId:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1B106A998();
}

- (void)listSessions:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1B109E998(sub_1B10A3124, v5);
}

- (void)fileHandleAndAttributesForResource:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B1122A5C();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1B109EBDC();
}

- (void)getImageMap:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B109F104(v5, v4);
  _Block_release(v4);
}

- (void)clearEngagementsFrom:(id)a3 to:(id)a4
{
  v5 = sub_1B112194C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1B112192C();
  sub_1B112192C();
  v13 = self;
  sub_1B10A0964();

  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
}

- (void)clearEngagementsWith:(id)a3 type:(id)a4
{
  sub_1B1122A5C();
  v6 = a4;
  v7 = self;
  sub_1B10A0B40();
}

- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1B10A0FEC();
}

- (void)bagDidLoad:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  PARSearchClient.bagDidLoad(_:error:)();
}

- (void)didReceiveFeedbackData:(id)a3 agent:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    v8 = a3;
    v9 = sub_1B11218CC();
    v11 = v10;

    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v12 = a4;
  v13 = self;
  v9 = 0;
  v11 = 0xF000000000000000;
  if (a4)
  {
LABEL_3:
    sub_1B1122A5C();
  }

LABEL_5:
  PARSearchClient.didReceiveFeedbackData(_:agent:)();

  sub_1B106C1F0(v9, v11);
}

@end