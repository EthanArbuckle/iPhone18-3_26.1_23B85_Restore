@interface OrgApacheLuceneCodecsLucene53Lucene53Codec_$1
- (OrgApacheLuceneCodecsLucene53Lucene53Codec_$1)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(id)codec;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53Codec_$1

- (OrgApacheLuceneCodecsLucene53Lucene53Codec_$1)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(id)codec
{
  JreStrongAssign(&self->this$0_, codec);
  OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53Codec__1;
  [(OrgApacheLuceneCodecsPostingsFormat *)&v3 dealloc];
}

@end