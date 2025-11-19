@interface OrgApacheLuceneStoreIndexOutput
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreIndexOutput

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreIndexOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end