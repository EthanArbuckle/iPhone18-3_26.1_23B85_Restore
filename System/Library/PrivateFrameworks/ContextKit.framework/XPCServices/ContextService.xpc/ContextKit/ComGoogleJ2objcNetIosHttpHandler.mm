@interface ComGoogleJ2objcNetIosHttpHandler
- (id)openConnectionWithJavaNetURL:(id)a3;
@end

@implementation ComGoogleJ2objcNetIosHttpHandler

- (id)openConnectionWithJavaNetURL:(id)a3
{
  v3 = new_ComGoogleJ2objcNetIosHttpURLConnection_initWithJavaNetURL_(a3);

  return v3;
}

@end