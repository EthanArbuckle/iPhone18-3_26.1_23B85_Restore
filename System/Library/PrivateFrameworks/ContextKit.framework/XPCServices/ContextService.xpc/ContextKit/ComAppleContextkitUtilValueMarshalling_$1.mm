@interface ComAppleContextkitUtilValueMarshalling_$1
- (id)readValueWithOrgApacheLuceneStoreIndexInput:(id)input;
- (void)writeValueWithId:(id)id withOrgApacheLuceneStoreIndexOutput:(id)output;
@end

@implementation ComAppleContextkitUtilValueMarshalling_$1

- (void)writeValueWithId:(id)id withOrgApacheLuceneStoreIndexOutput:(id)output
{
  if (!output || !id)
  {
    JreThrowNullPointerException();
  }

  v5 = [id description];

  [output writeStringWithNSString:v5];
}

- (id)readValueWithOrgApacheLuceneStoreIndexInput:(id)input
{
  if (!input)
  {
    JreThrowNullPointerException();
  }

  return [input readString];
}

@end