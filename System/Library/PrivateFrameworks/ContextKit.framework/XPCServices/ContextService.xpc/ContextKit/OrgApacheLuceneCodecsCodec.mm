@interface OrgApacheLuceneCodecsCodec
+ (id)availableCodecs;
+ (id)forNameWithNSString:(id)string;
+ (void)reloadCodecsWithJavaLangClassLoader:(id)loader;
- (OrgApacheLuceneCodecsCodec)initWithNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCodec

- (OrgApacheLuceneCodecsCodec)initWithNSString:(id)string
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(string);
  JreStrongAssign(&self->name_, string);
  return self;
}

+ (id)forNameWithNSString:(id)string
{
  v4 = sub_100099314();

  return [v4 lookupWithNSString:string];
}

+ (id)availableCodecs
{
  v2 = sub_100099314();

  return [v2 availableServices];
}

+ (void)reloadCodecsWithJavaLangClassLoader:(id)loader
{
  v4 = sub_100099314();

  [v4 reloadWithJavaLangClassLoader:loader];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCodec;
  [(OrgApacheLuceneCodecsCodec *)&v3 dealloc];
}

@end