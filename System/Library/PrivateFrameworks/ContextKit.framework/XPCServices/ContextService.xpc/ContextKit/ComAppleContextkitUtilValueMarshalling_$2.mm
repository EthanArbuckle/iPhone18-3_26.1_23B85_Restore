@interface ComAppleContextkitUtilValueMarshalling_$2
- (id)readValueWithOrgApacheLuceneStoreIndexInput:(id)input;
- (void)writeValueWithId:(id)id withOrgApacheLuceneStoreIndexOutput:(id)output;
@end

@implementation ComAppleContextkitUtilValueMarshalling_$2

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

  [output writeVIntWithInt:intValue];
}

- (id)readValueWithOrgApacheLuceneStoreIndexInput:(id)input
{
  if (!input)
  {
    JreThrowNullPointerException();
  }

  readVInt = [input readVInt];

  return JavaLangInteger_valueOfWithInt_(readVInt);
}

@end