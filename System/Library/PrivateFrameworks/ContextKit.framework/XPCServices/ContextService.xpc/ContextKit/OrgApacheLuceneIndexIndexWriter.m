@interface OrgApacheLuceneIndexIndexWriter
- (void)__javaClone;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexIndexWriter

- (void)dealloc
{
  JreReleaseVolatile(&self->tragedy_);

  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexWriter;
  [(OrgApacheLuceneIndexIndexWriter *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexWriter;
  [(OrgApacheLuceneIndexIndexWriter *)&v3 __javaClone];
  JreRetainVolatile(&self->tragedy_);
}

@end