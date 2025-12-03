@interface OrgApacheLuceneStoreDirectory
- (NSString)description;
- (id)openChecksumInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (void)copyFromWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string withNSString:(id)sString withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneStoreDirectory

- (id)openChecksumInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  v4 = new_OrgApacheLuceneStoreBufferedChecksumIndexInput_initWithOrgApacheLuceneStoreIndexInput_([(OrgApacheLuceneStoreDirectory *)self openInputWithNSString:string withOrgApacheLuceneStoreIOContext:context]);

  return v4;
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneStoreDirectory getClass](self "getClass")];
  JavaLangInteger_toHexStringWithInt_([(OrgApacheLuceneStoreDirectory *)self hash]);
  return JreStrcat("$C$", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)copyFromWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string withNSString:(id)sString withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v9 = [directory openInputWithNSString:string withOrgApacheLuceneStoreIOContext:context];
  v10 = [(OrgApacheLuceneStoreDirectory *)self createOutputWithNSString:sString withOrgApacheLuceneStoreIOContext:context];
  if (!v10 || !v9)
  {
    JreThrowNullPointerException();
  }

  [v10 copyBytesWithOrgApacheLuceneStoreDataInput:v9 withLong:{objc_msgSend(v9, "length")}];
  [v10 close];
  [v9 close];
}

@end