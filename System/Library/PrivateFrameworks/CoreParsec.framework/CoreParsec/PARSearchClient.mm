@interface PARSearchClient
- (NSXPCConnection)connection;
- (unint64_t)request:(id)request request:(id)a4 reply:(id)reply;
- (void)bagDidLoad:(id)load error:(id)error;
- (void)clearEngagementsFrom:(id)from to:(id)to;
- (void)clearEngagementsWith:(id)with type:(id)type;
- (void)didReceiveFeedbackData:(id)data agent:(id)agent;
- (void)fileHandleAndAttributesForResource:(id)resource completion:(id)completion;
- (void)getImageMap:(id)map;
- (void)listSessions:(id)sessions;
- (void)reportFeedback:(id)feedback feedback:(id)a4 queryId:(unint64_t)id;
- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2;
@end

@implementation PARSearchClient

- (NSXPCConnection)connection
{
  v2 = PARSearchClient.connection.getter();

  return v2;
}

- (unint64_t)request:(id)request request:(id)a4 reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  requestCopy = request;
  v10 = a4;
  selfCopy = self;
  v12 = sub_1B109DA3C(requestCopy, v10, selfCopy, v8);
  _Block_release(v8);

  return v12;
}

- (void)reportFeedback:(id)feedback feedback:(id)a4 queryId:(unint64_t)id
{
  feedbackCopy = feedback;
  v8 = a4;
  selfCopy = self;
  sub_1B106A998();
}

- (void)listSessions:(id)sessions
{
  v4 = _Block_copy(sessions);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1B109E998(sub_1B10A3124, v5);
}

- (void)fileHandleAndAttributesForResource:(id)resource completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1B1122A5C();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1B109EBDC();
}

- (void)getImageMap:(id)map
{
  v4 = _Block_copy(map);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B109F104(selfCopy, v4);
  _Block_release(v4);
}

- (void)clearEngagementsFrom:(id)from to:(id)to
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
  selfCopy = self;
  sub_1B10A0964();

  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
}

- (void)clearEngagementsWith:(id)with type:(id)type
{
  sub_1B1122A5C();
  typeCopy = type;
  selfCopy = self;
  sub_1B10A0B40();
}

- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2
{
  v1Copy = v1;
  v2Copy = v2;
  selfCopy = self;
  sub_1B10A0FEC();
}

- (void)bagDidLoad:(id)load error:(id)error
{
  loadCopy = load;
  selfCopy = self;
  errorCopy = error;
  PARSearchClient.bagDidLoad(_:error:)();
}

- (void)didReceiveFeedbackData:(id)data agent:(id)agent
{
  if (data)
  {
    agentCopy = agent;
    selfCopy = self;
    dataCopy = data;
    v9 = sub_1B11218CC();
    v11 = v10;

    if (!agent)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  agentCopy2 = agent;
  selfCopy2 = self;
  v9 = 0;
  v11 = 0xF000000000000000;
  if (agent)
  {
LABEL_3:
    sub_1B1122A5C();
  }

LABEL_5:
  PARSearchClient.didReceiveFeedbackData(_:agent:)();

  sub_1B106C1F0(v9, v11);
}

@end