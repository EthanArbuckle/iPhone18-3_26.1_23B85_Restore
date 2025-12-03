@interface DURequest
- (NSArray)strategies;
- (_TtC21DocumentUnderstanding20DURequestContentType)contentType;
- (_TtC21DocumentUnderstanding8DUClient)client;
- (_TtC21DocumentUnderstanding9DURequest)initWithClient:(id)client contentType:(id)type strategies:(id)strategies;
- (void)executeWithDocument:(id)document completion:(id)completion;
- (void)executeWithResultWithDocument:(_TtC21DocumentUnderstanding10DUDocument *)document completionHandler:(id)handler;
@end

@implementation DURequest

- (_TtC21DocumentUnderstanding8DUClient)client
{
  v2 = sub_232B22C58();

  return v2;
}

- (_TtC21DocumentUnderstanding20DURequestContentType)contentType
{
  v2 = sub_232B22C98();

  return v2;
}

- (NSArray)strategies
{
  if (sub_232B22D08())
  {
    type metadata accessor for DURequestStrategy();
    v2 = sub_232CE9FD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC21DocumentUnderstanding9DURequest)initWithClient:(id)client contentType:(id)type strategies:(id)strategies
{
  strategiesCopy = strategies;
  if (strategies)
  {
    type metadata accessor for DURequestStrategy();
    strategiesCopy = sub_232CE9FE0();
  }

  return DURequest.init(client:contentType:strategies:)(client, type, strategiesCopy);
}

- (void)executeWithResultWithDocument:(_TtC21DocumentUnderstanding10DUDocument *)document completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = document;
  v7[3] = v6;
  v7[4] = self;
  documentCopy = document;
  selfCopy = self;

  sub_232C6F124(&unk_232CF6440, v7);
}

- (void)executeWithDocument:(id)document completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  documentCopy = document;
  selfCopy = self;
  sub_232B23BE4(document, sub_232B265AC, v7);
}

@end