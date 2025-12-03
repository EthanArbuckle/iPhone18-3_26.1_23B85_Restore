@interface ComAppleContextkitUtilValueMarshalling_IntegerValueConverter
- (id)readValueWithOrgApacheLuceneStoreIndexInput:(id)input;
- (id)toEmbeddedValueWithId:(id)id;
- (void)writeValueWithId:(id)id withOrgApacheLuceneStoreIndexOutput:(id)output;
@end

@implementation ComAppleContextkitUtilValueMarshalling_IntegerValueConverter

- (void)writeValueWithId:(id)id withOrgApacheLuceneStoreIndexOutput:(id)output
{
  if (!output || (objc_opt_class(), !id))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  intValue = [id intValue];

  [output writeIntWithInt:intValue];
}

- (id)toEmbeddedValueWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  intValue = [id intValue];

  return JavaLangInteger_valueOfWithInt_(intValue);
}

- (id)readValueWithOrgApacheLuceneStoreIndexInput:(id)input
{
  if (!input)
  {
    JreThrowNullPointerException();
  }

  readInt = [input readInt];

  return JavaLangInteger_valueOfWithInt_(readInt);
}

@end