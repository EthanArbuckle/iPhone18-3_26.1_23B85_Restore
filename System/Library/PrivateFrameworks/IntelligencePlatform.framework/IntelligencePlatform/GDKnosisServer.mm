@interface GDKnosisServer
- (GDKnosisServer)initWithEntitySubgraphView;
- (void)executeIntent:(id)a3 completionHandler:(id)a4;
- (void)executeIntent:(id)a3 completionHandlerWithGraphObjectContext:(id)a4;
- (void)executeKGQ:(id)a3 completionHandler:(id)a4;
- (void)executeKGQ:(id)a3 completionHandlerWithGraphObjectContext:(id)a4;
@end

@implementation GDKnosisServer

- (void)executeKGQ:(id)a3 completionHandlerWithGraphObjectContext:(id)a4
{
  knosisServer = self->_knosisServer;
  v7 = a4;
  v8 = [(KnosisServer *)knosisServer executeKGQWithGraphObjectContextWithRequest:a3];
  (*(a4 + 2))(v7, v8);
}

- (void)executeIntent:(id)a3 completionHandlerWithGraphObjectContext:(id)a4
{
  knosisServer = self->_knosisServer;
  v7 = a4;
  v8 = [(KnosisServer *)knosisServer executeIntentsWithGraphObjectContextWithRequest:a3];
  (*(a4 + 2))(v7, v8);
}

- (void)executeKGQ:(id)a3 completionHandler:(id)a4
{
  knosisServer = self->_knosisServer;
  v7 = a4;
  v8 = [(KnosisServer *)knosisServer executeKGQWithRequest:a3];
  (*(a4 + 2))(v7, v8);
}

- (void)executeIntent:(id)a3 completionHandler:(id)a4
{
  knosisServer = self->_knosisServer;
  v7 = a4;
  v8 = [(KnosisServer *)knosisServer executeIntentsWithRequest:a3];
  (*(a4 + 2))(v7, v8);
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