@interface DURequest
- (NSArray)strategies;
- (_TtC21DocumentUnderstanding20DURequestContentType)contentType;
- (_TtC21DocumentUnderstanding8DUClient)client;
- (_TtC21DocumentUnderstanding9DURequest)initWithClient:(id)a3 contentType:(id)a4 strategies:(id)a5;
- (void)executeWithDocument:(id)a3 completion:(id)a4;
- (void)executeWithResultWithDocument:(_TtC21DocumentUnderstanding10DUDocument *)a3 completionHandler:(id)a4;
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

- (_TtC21DocumentUnderstanding9DURequest)initWithClient:(id)a3 contentType:(id)a4 strategies:(id)a5
{
  v5 = a5;
  if (a5)
  {
    type metadata accessor for DURequestStrategy();
    v5 = sub_232CE9FE0();
  }

  return DURequest.init(client:contentType:strategies:)(a3, a4, v5);
}

- (void)executeWithResultWithDocument:(_TtC21DocumentUnderstanding10DUDocument *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_232C6F124(&unk_232CF6440, v7);
}

- (void)executeWithDocument:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_232B23BE4(a3, sub_232B265AC, v7);
}

@end