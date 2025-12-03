@interface ComGoogleJ2objcNetIosHttpHandler
- (id)openConnectionWithJavaNetURL:(id)l;
@end

@implementation ComGoogleJ2objcNetIosHttpHandler

- (id)openConnectionWithJavaNetURL:(id)l
{
  v3 = new_ComGoogleJ2objcNetIosHttpURLConnection_initWithJavaNetURL_(l);

  return v3;
}

@end