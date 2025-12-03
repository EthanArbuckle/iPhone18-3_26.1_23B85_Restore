@interface JavaNetURI_PartEncoder
- (JavaNetURI_PartEncoder)initWithNSString:(id)string;
- (void)dealloc;
@end

@implementation JavaNetURI_PartEncoder

- (JavaNetURI_PartEncoder)initWithNSString:(id)string
{
  LibcoreNetUriCodec_init(self, a2);
  JreStrongAssign(&self->extraLegalCharacters_, string);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetURI_PartEncoder;
  [(JavaNetURI_PartEncoder *)&v3 dealloc];
}

@end