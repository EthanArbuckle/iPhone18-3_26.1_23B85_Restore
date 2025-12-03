@interface KnosisServer
+ (id)initWithEntitySubgraphView;
- (id)executeIntentsWithGraphObjectContextWithRequest:(id)request;
- (id)executeIntentsWithRequest:(id)request;
- (id)executeKGQWithGraphObjectContextWithRequest:(id)request;
- (id)executeKGQWithRequest:(id)request;
@end

@implementation KnosisServer

+ (id)initWithEntitySubgraphView
{
  v2 = static KnosisServer.withEntitySubgraphView()();

  return v2;
}

- (id)executeKGQWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  KnosisServer.executeKGQ(request:)(v6, requestCopy);
  v8 = v7;

  return v8;
}

- (id)executeKGQWithGraphObjectContextWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  KnosisServer.executeKGQWithGraphObjectContext(request:)(v6, requestCopy);
  v8 = v7;

  return v8;
}

- (id)executeIntentsWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  KnosisServer.executeIntents(request:)(v6, requestCopy);
  v8 = v7;

  return v8;
}

- (id)executeIntentsWithGraphObjectContextWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  KnosisServer.executeIntentsWithGraphObjectContext(request:)(v6, requestCopy);
  v8 = v7;

  return v8;
}

@end