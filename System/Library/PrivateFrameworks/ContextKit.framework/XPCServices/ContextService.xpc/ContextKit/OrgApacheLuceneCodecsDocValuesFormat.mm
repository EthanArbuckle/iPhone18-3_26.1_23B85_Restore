@interface OrgApacheLuceneCodecsDocValuesFormat
+ (id)availableDocValuesFormats;
+ (id)forNameWithNSString:(id)a3;
+ (void)reloadDocValuesFormatsWithJavaLangClassLoader:(id)a3;
- (OrgApacheLuceneCodecsDocValuesFormat)initWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesFormat

- (OrgApacheLuceneCodecsDocValuesFormat)initWithNSString:(id)a3
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(a3);
  JreStrongAssign(&self->name_, a3);
  return self;
}

+ (id)forNameWithNSString:(id)a3
{
  v4 = sub_100106F70();

  return [v4 lookupWithNSString:a3];
}

+ (id)availableDocValuesFormats
{
  v2 = sub_100106F70();

  return [v2 availableServices];
}

+ (void)reloadDocValuesFormatsWithJavaLangClassLoader:(id)a3
{
  v4 = sub_100106F70();

  [v4 reloadWithJavaLangClassLoader:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesFormat;
  [(OrgApacheLuceneCodecsDocValuesFormat *)&v3 dealloc];
}

@end