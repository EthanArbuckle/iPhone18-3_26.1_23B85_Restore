@interface OrgApacheLuceneCodecsLucene53Lucene53Codec_$2
- (OrgApacheLuceneCodecsLucene53Lucene53Codec_$2)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53Codec_$2

- (OrgApacheLuceneCodecsLucene53Lucene53Codec_$2)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53Codec__2;
  [(OrgApacheLuceneCodecsDocValuesFormat *)&v3 dealloc];
}

@end