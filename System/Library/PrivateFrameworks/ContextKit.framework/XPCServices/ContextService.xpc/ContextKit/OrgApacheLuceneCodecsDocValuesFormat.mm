@interface OrgApacheLuceneCodecsDocValuesFormat
+ (id)availableDocValuesFormats;
+ (id)forNameWithNSString:(id)string;
+ (void)reloadDocValuesFormatsWithJavaLangClassLoader:(id)loader;
- (OrgApacheLuceneCodecsDocValuesFormat)initWithNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesFormat

- (OrgApacheLuceneCodecsDocValuesFormat)initWithNSString:(id)string
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(string);
  JreStrongAssign(&self->name_, string);
  return self;
}

+ (id)forNameWithNSString:(id)string
{
  v4 = sub_100106F70();

  return [v4 lookupWithNSString:string];
}

+ (id)availableDocValuesFormats
{
  v2 = sub_100106F70();

  return [v2 availableServices];
}

+ (void)reloadDocValuesFormatsWithJavaLangClassLoader:(id)loader
{
  v4 = sub_100106F70();

  [v4 reloadWithJavaLangClassLoader:loader];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesFormat;
  [(OrgApacheLuceneCodecsDocValuesFormat *)&v3 dealloc];
}

@end