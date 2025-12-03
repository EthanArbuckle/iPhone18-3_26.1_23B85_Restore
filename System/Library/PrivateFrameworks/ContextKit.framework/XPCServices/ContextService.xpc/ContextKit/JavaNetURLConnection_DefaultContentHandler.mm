@interface JavaNetURLConnection_DefaultContentHandler
- (id)getContentWithJavaNetURLConnection:(id)connection;
@end

@implementation JavaNetURLConnection_DefaultContentHandler

- (id)getContentWithJavaNetURLConnection:(id)connection
{
  if (!connection)
  {
    JreThrowNullPointerException();
  }

  return [connection getInputStream];
}

@end