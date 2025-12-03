@interface GDKnosisServer
- (GDKnosisServer)initWithEntitySubgraphView;
- (void)executeIntent:(id)intent completionHandler:(id)handler;
- (void)executeIntent:(id)intent completionHandlerWithGraphObjectContext:(id)context;
- (void)executeKGQ:(id)q completionHandler:(id)handler;
- (void)executeKGQ:(id)q completionHandlerWithGraphObjectContext:(id)context;
@end

@implementation GDKnosisServer

- (void)executeKGQ:(id)q completionHandlerWithGraphObjectContext:(id)context
{
  knosisServer = self->_knosisServer;
  contextCopy = context;
  v8 = [(KnosisServer *)knosisServer executeKGQWithGraphObjectContextWithRequest:q];
  (*(context + 2))(contextCopy, v8);
}

- (void)executeIntent:(id)intent completionHandlerWithGraphObjectContext:(id)context
{
  knosisServer = self->_knosisServer;
  contextCopy = context;
  v8 = [(KnosisServer *)knosisServer executeIntentsWithGraphObjectContextWithRequest:intent];
  (*(context + 2))(contextCopy, v8);
}

- (void)executeKGQ:(id)q completionHandler:(id)handler
{
  knosisServer = self->_knosisServer;
  handlerCopy = handler;
  v8 = [(KnosisServer *)knosisServer executeKGQWithRequest:q];
  (*(handler + 2))(handlerCopy, v8);
}

- (void)executeIntent:(id)intent completionHandler:(id)handler
{
  knosisServer = self->_knosisServer;
  handlerCopy = handler;
  v8 = [(KnosisServer *)knosisServer executeIntentsWithRequest:intent];
  (*(handler + 2))(handlerCopy, v8);
}

- (GDKnosisServer)initWithEntitySubgraphView
{
  v6.receiver = self;
  v6.super_class = GDKnosisServer;
  v2 = [(GDKnosisServer *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC20IntelligencePlatform12KnosisServer initWithEntitySubgraphView];
    knosisServer = v2->_knosisServer;
    v2->_knosisServer = v3;
  }

  return v2;
}

@end