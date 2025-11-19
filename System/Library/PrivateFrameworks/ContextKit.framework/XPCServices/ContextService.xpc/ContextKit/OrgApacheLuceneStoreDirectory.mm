@interface OrgApacheLuceneStoreDirectory
- (NSString)description;
- (id)openChecksumInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4;
- (void)copyFromWithOrgApacheLuceneStoreDirectory:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6;
@end

@implementation OrgApacheLuceneStoreDirectory

- (id)openChecksumInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4
{
  v4 = new_OrgApacheLuceneStoreBufferedChecksumIndexInput_initWithOrgApacheLuceneStoreIndexInput_([(OrgApacheLuceneStoreDirectory *)self openInputWithNSString:a3 withOrgApacheLuceneStoreIOContext:a4]);

  return v4;
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneStoreDirectory getClass](self "getClass")];
  JavaLangInteger_toHexStringWithInt_([(OrgApacheLuceneStoreDirectory *)self hash]);
  return JreStrcat("$C$", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)copyFromWithOrgApacheLuceneStoreDirectory:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v9 = [a3 openInputWithNSString:a4 withOrgApacheLuceneStoreIOContext:a6];
  v10 = [(OrgApacheLuceneStoreDirectory *)self createOutputWithNSString:a5 withOrgApacheLuceneStoreIOContext:a6];
  if (!v10 || !v9)
  {
    JreThrowNullPointerException();
  }

  [v10 copyBytesWithOrgApacheLuceneStoreDataInput:v9 withLong:{objc_msgSend(v9, "length")}];
  [v10 close];
  [v9 close];
}

@end