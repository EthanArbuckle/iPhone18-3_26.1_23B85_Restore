@interface JavaNetURLConnection_DefaultContentHandler
- (id)getContentWithJavaNetURLConnection:(id)a3;
@end

@implementation JavaNetURLConnection_DefaultContentHandler

- (id)getContentWithJavaNetURLConnection:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 getInputStream];
}

@end