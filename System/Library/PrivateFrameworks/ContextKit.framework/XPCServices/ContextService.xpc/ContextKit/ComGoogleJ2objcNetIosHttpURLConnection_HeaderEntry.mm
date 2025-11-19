@interface ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry
- (ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry)initWithNSString:(id)a3 withNSString:(id)a4;
- (void)dealloc;
@end

@implementation ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry

- (ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry)initWithNSString:(id)a3 withNSString:(id)a4
{
  JreStrongAssign(&self->key_, a3);
  JreStrongAssign(&self->value_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry;
  [(ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry *)&v3 dealloc];
}

@end