@interface ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry
- (ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry)initWithNSString:(id)string withNSString:(id)sString;
- (void)dealloc;
@end

@implementation ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry

- (ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry)initWithNSString:(id)string withNSString:(id)sString
{
  JreStrongAssign(&self->key_, string);
  JreStrongAssign(&self->value_, sString);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry;
  [(ComGoogleJ2objcNetIosHttpURLConnection_HeaderEntry *)&v3 dealloc];
}

@end