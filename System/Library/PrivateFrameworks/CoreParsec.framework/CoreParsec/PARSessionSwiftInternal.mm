@interface PARSessionSwiftInternal
- (BOOL)canLoadCard:(id)card;
- (BOOL)canLoadImage:(id)image context:(id)context;
- (NSXPCConnection)connection;
- (PARBag)bag;
- (PARSessionConfiguration)configuration;
- (PARSessionDelegate)delegate;
- (PARSessionSwiftInternal)initWithSession:(id)session configuration:(id)configuration connection:(id)connection delegate:(id)delegate;
- (_TtC10CoreParsec15PARSearchClient)client;
- (id)taskWith:(id)with completion:(id)completion;
- (unint64_t)enabledStatus;
- (unint64_t)safariAssistantEnabledStatus;
- (unint64_t)safariAssistantEnabledStatusForPageLanguage:(id)language;
- (void)addCompletion:(id)completion forInput:(id)input;
- (void)addEngagedResults:(id)results;
- (void)addEngagedResults:(id)results completion:(id)completion;
- (void)clearEngagedResults:(id)results completion:(id)completion;
- (void)clearEngagementsFrom:(id)from to:(id)to;
- (void)clearEngagementsWithTitle:(id)title type:(id)type;
- (void)clearSafariFeedback:(id)feedback;
- (void)fileHandleAndAttributesForResource:(id)resource completion:(id)completion;
- (void)loadImage:(SFImage *)image context:(SFImageContext *)context completionHandler:(id)handler;
- (void)loadWithTask:(id)task;
- (void)reportFeedback:(id)feedback queryId:(int64_t)id;
- (void)searchViewDidDisappear:(void *)disappear;
- (void)send:(id)send completion:(id)completion;
- (void)sendCBAEngagementFeedback:(id)feedback query:(unint64_t)query;
- (void)sendCustomFeedback:(id)feedback;
- (void)setBag:(id)bag;
- (void)setConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate;
- (void)start;
- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2;
@end

@implementation PARSessionSwiftInternal

- (PARSessionSwiftInternal)initWithSession:(id)session configuration:(id)configuration connection:(id)connection delegate:(id)delegate
{
  sessionCopy = session;
  configurationCopy = configuration;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  return PARSessionSwiftInternal.init(session:configuration:connection:delegate:)(sessionCopy, configurationCopy, connection);
}

- (void)start
{
  selfCopy = self;
  sub_1B10680C0();
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B1068FC8();
}

- (PARBag)bag
{
  selfCopy = self;
  v3 = sub_1B106903C();

  return v3;
}

- (void)reportFeedback:(id)feedback queryId:(int64_t)id
{
  feedbackCopy = feedback;
  selfCopy = self;
  PARSessionSwiftInternal.report(_:queryId:)(feedbackCopy, id);
}

- (unint64_t)enabledStatus
{
  selfCopy = self;
  v3 = sub_1B106F3A0();

  return v3;
}

- (id)taskWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  withCopy = with;
  selfCopy = self;
  v10 = sub_1B106F50C(withCopy, sub_1B10728B8, v7);

  return v10;
}

- (void)loadWithTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  sub_1B106F910();
}

- (PARSessionConfiguration)configuration
{
  selfCopy = self;
  v3 = sub_1B1068078();

  return v3;
}

- (void)searchViewDidDisappear:(void *)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  OUTLINED_FUNCTION_25_0();
  PARSessionSwiftInternal.didEndSearch(_:)(disappearCopy);
}

- (_TtC10CoreParsec15PARSearchClient)client
{
  v2 = PARSessionSwiftInternal.client.getter();

  return v2;
}

- (PARSessionDelegate)delegate
{
  selfCopy = self;
  v3 = sub_1B108E454();

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1B108E5C0(configurationCopy);
}

- (void)setBag:(id)bag
{
  bagCopy = bag;
  selfCopy = self;
  sub_1B106ECF0(bag);
}

- (NSXPCConnection)connection
{
  v2 = sub_1B108E880();

  return v2;
}

- (void)fileHandleAndAttributesForResource:(id)resource completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1B1122A5C();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1B108EA38();
}

- (unint64_t)safariAssistantEnabledStatusForPageLanguage:(id)language
{
  v4 = sub_1B1122A5C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1B108EB1C(v4, v6);

  return v8;
}

- (unint64_t)safariAssistantEnabledStatus
{
  selfCopy = self;
  sub_1B108EB84();
  v4 = v3;

  return v4;
}

- (void)sendCBAEngagementFeedback:(id)feedback query:(unint64_t)query
{
  v6 = sub_1B112186C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B112183C();
  selfCopy = self;
  sub_1B108F270(v10, query);

  (*(v7 + 8))(v10, v6);
}

- (void)clearSafariFeedback:(id)feedback
{
  v4 = _Block_copy(feedback);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B108F5D0(selfCopy, v4);
  _Block_release(v4);
}

- (BOOL)canLoadImage:(id)image context:(id)context
{
  imageCopy = image;
  contextCopy = context;
  selfCopy = self;
  LOBYTE(context) = PARSessionSwiftInternal.canLoad(_:context:)(imageCopy, context);

  return context & 1;
}

- (void)loadImage:(SFImage *)image context:(SFImageContext *)context completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = image;
  v9[3] = context;
  v9[4] = v8;
  v9[5] = self;
  imageCopy = image;
  contextCopy = context;
  selfCopy = self;

  sub_1B10915E4(&unk_1B1134820, v9);
}

- (BOOL)canLoadCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  v6 = PARSessionSwiftInternal.canLoad(_:)(cardCopy);

  return v6;
}

- (void)send:(id)send completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1B10997CC;
  }

  else
  {
    v7 = 0;
  }

  sendCopy = send;
  selfCopy = self;
  PARSessionSwiftInternal.send(_:completion:)(sendCopy, v6, v7);
  sub_1B106E740(v6);
}

- (void)sendCustomFeedback:(id)feedback
{
  feedbackCopy = feedback;
  selfCopy = self;
  PARSessionSwiftInternal.send(_:)(feedbackCopy);
}

- (void)addCompletion:(id)completion forInput:(id)input
{
  v5 = sub_1B1122A5C();
  v7 = v6;
  v8 = sub_1B1122A5C();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  PARSessionSwiftInternal.addCompletion(_:forInput:)(v12, v13);
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
  PARSessionSwiftInternal.clearEngagements(from:to:)();

  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
}

- (void)clearEngagementsWithTitle:(id)title type:(id)type
{
  v6 = sub_1B1122A5C();
  v8 = v7;
  typeCopy = type;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  v13.value.super.super.isa = type;
  PARSessionSwiftInternal.clearEngagements(withTitle:type:)(v11, v13);
}

- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2
{
  v1Copy = v1;
  v2Copy = v2;
  selfCopy = self;
  PARSessionSwiftInternal.updateParameters(forSmartSearchV1:smartSearchV2:)(v1Copy, v2Copy);
}

- (void)addEngagedResults:(id)results
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v4 = sub_1B1122B8C();
  selfCopy = self;
  PARSessionSwiftInternal.addEngagedResults(_:)(v4);
}

- (void)addEngagedResults:(id)results completion:(id)completion
{
  v5 = _Block_copy(completion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v6 = sub_1B1122B8C();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B1099FB0;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  PARSessionSwiftInternal.addEngagedResults(_:completion:)(v6, v5, v7);
  sub_1B106E740(v5);
}

- (void)clearEngagedResults:(id)results completion:(id)completion
{
  v5 = _Block_copy(completion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v6 = sub_1B1122B8C();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1B10997C4;
  }

  selfCopy = self;
  PARSessionSwiftInternal.clearEngagedResults(_:completion:)(v6, v5);
  sub_1B106E740(v5);
}

@end