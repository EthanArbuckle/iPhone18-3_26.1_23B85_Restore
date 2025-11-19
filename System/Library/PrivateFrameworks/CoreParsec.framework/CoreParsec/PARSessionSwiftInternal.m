@interface PARSessionSwiftInternal
- (BOOL)canLoadCard:(id)a3;
- (BOOL)canLoadImage:(id)a3 context:(id)a4;
- (NSXPCConnection)connection;
- (PARBag)bag;
- (PARSessionConfiguration)configuration;
- (PARSessionDelegate)delegate;
- (PARSessionSwiftInternal)initWithSession:(id)a3 configuration:(id)a4 connection:(id)a5 delegate:(id)a6;
- (_TtC10CoreParsec15PARSearchClient)client;
- (id)taskWith:(id)a3 completion:(id)a4;
- (unint64_t)enabledStatus;
- (unint64_t)safariAssistantEnabledStatus;
- (unint64_t)safariAssistantEnabledStatusForPageLanguage:(id)a3;
- (void)addCompletion:(id)a3 forInput:(id)a4;
- (void)addEngagedResults:(id)a3;
- (void)addEngagedResults:(id)a3 completion:(id)a4;
- (void)clearEngagedResults:(id)a3 completion:(id)a4;
- (void)clearEngagementsFrom:(id)a3 to:(id)a4;
- (void)clearEngagementsWithTitle:(id)a3 type:(id)a4;
- (void)clearSafariFeedback:(id)a3;
- (void)fileHandleAndAttributesForResource:(id)a3 completion:(id)a4;
- (void)loadImage:(SFImage *)a3 context:(SFImageContext *)a4 completionHandler:(id)a5;
- (void)loadWithTask:(id)a3;
- (void)reportFeedback:(id)a3 queryId:(int64_t)a4;
- (void)searchViewDidDisappear:(void *)a3;
- (void)send:(id)a3 completion:(id)a4;
- (void)sendCBAEngagementFeedback:(id)a3 query:(unint64_t)a4;
- (void)sendCustomFeedback:(id)a3;
- (void)setBag:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setDelegate:(id)a3;
- (void)start;
- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4;
@end

@implementation PARSessionSwiftInternal

- (PARSessionSwiftInternal)initWithSession:(id)a3 configuration:(id)a4 connection:(id)a5 delegate:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  swift_unknownObjectRetain();
  return PARSessionSwiftInternal.init(session:configuration:connection:delegate:)(v8, v9, a5);
}

- (void)start
{
  v2 = self;
  sub_1B10680C0();
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B1068FC8();
}

- (PARBag)bag
{
  v2 = self;
  v3 = sub_1B106903C();

  return v3;
}

- (void)reportFeedback:(id)a3 queryId:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  PARSessionSwiftInternal.report(_:queryId:)(v6, a4);
}

- (unint64_t)enabledStatus
{
  v2 = self;
  v3 = sub_1B106F3A0();

  return v3;
}

- (id)taskWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_1B106F50C(v8, sub_1B10728B8, v7);

  return v10;
}

- (void)loadWithTask:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B106F910();
}

- (PARSessionConfiguration)configuration
{
  v2 = self;
  v3 = sub_1B1068078();

  return v3;
}

- (void)searchViewDidDisappear:(void *)a3
{
  v4 = a3;
  v5 = a1;
  OUTLINED_FUNCTION_25_0();
  PARSessionSwiftInternal.didEndSearch(_:)(v4);
}

- (_TtC10CoreParsec15PARSearchClient)client
{
  v2 = PARSessionSwiftInternal.client.getter();

  return v2;
}

- (PARSessionDelegate)delegate
{
  v2 = self;
  v3 = sub_1B108E454();

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B108E5C0(v4);
}

- (void)setBag:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B106ECF0(a3);
}

- (NSXPCConnection)connection
{
  v2 = sub_1B108E880();

  return v2;
}

- (void)fileHandleAndAttributesForResource:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B1122A5C();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1B108EA38();
}

- (unint64_t)safariAssistantEnabledStatusForPageLanguage:(id)a3
{
  v4 = sub_1B1122A5C();
  v6 = v5;
  v7 = self;
  v8 = sub_1B108EB1C(v4, v6);

  return v8;
}

- (unint64_t)safariAssistantEnabledStatus
{
  v2 = self;
  sub_1B108EB84();
  v4 = v3;

  return v4;
}

- (void)sendCBAEngagementFeedback:(id)a3 query:(unint64_t)a4
{
  v6 = sub_1B112186C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B112183C();
  v11 = self;
  sub_1B108F270(v10, a4);

  (*(v7 + 8))(v10, v6);
}

- (void)clearSafariFeedback:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B108F5D0(v5, v4);
  _Block_release(v4);
}

- (BOOL)canLoadImage:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = PARSessionSwiftInternal.canLoad(_:context:)(v6, a4);

  return a4 & 1;
}

- (void)loadImage:(SFImage *)a3 context:(SFImageContext *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1B10915E4(&unk_1B1134820, v9);
}

- (BOOL)canLoadCard:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PARSessionSwiftInternal.canLoad(_:)(v4);

  return v6;
}

- (void)send:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  PARSessionSwiftInternal.send(_:completion:)(v8, v6, v7);
  sub_1B106E740(v6);
}

- (void)sendCustomFeedback:(id)a3
{
  v4 = a3;
  v5 = self;
  PARSessionSwiftInternal.send(_:)(v4);
}

- (void)addCompletion:(id)a3 forInput:(id)a4
{
  v5 = sub_1B1122A5C();
  v7 = v6;
  v8 = sub_1B1122A5C();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  PARSessionSwiftInternal.addCompletion(_:forInput:)(v12, v13);
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
  PARSessionSwiftInternal.clearEngagements(from:to:)();

  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
}

- (void)clearEngagementsWithTitle:(id)a3 type:(id)a4
{
  v6 = sub_1B1122A5C();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  v13.value.super.super.isa = a4;
  PARSessionSwiftInternal.clearEngagements(withTitle:type:)(v11, v13);
}

- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PARSessionSwiftInternal.updateParameters(forSmartSearchV1:smartSearchV2:)(v6, v7);
}

- (void)addEngagedResults:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v4 = sub_1B1122B8C();
  v5 = self;
  PARSessionSwiftInternal.addEngagedResults(_:)(v4);
}

- (void)addEngagedResults:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

  v8 = self;
  PARSessionSwiftInternal.addEngagedResults(_:completion:)(v6, v5, v7);
  sub_1B106E740(v5);
}

- (void)clearEngagedResults:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v6 = sub_1B1122B8C();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1B10997C4;
  }

  v7 = self;
  PARSessionSwiftInternal.clearEngagedResults(_:completion:)(v6, v5);
  sub_1B106E740(v5);
}

@end