@interface OrgApacheLuceneCodecsCodec
+ (id)availableCodecs;
+ (id)forNameWithNSString:(id)a3;
+ (void)reloadCodecsWithJavaLangClassLoader:(id)a3;
- (OrgApacheLuceneCodecsCodec)initWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCodec

- (OrgApacheLuceneCodecsCodec)initWithNSString:(id)a3
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(a3);
  JreStrongAssign(&self->name_, a3);
  return self;
}

+ (id)forNameWithNSString:(id)a3
{
  v4 = sub_100099314();

  return [v4 lookupWithNSString:a3];
}

+ (id)availableCodecs
{
  v2 = sub_100099314();

  return [v2 availableServices];
}

+ (void)reloadCodecsWithJavaLangClassLoader:(id)a3
{
  v4 = sub_100099314();

  [v4 reloadWithJavaLangClassLoader:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCodec;
  [(OrgApacheLuceneCodecsCodec *)&v3 dealloc];
}

@end