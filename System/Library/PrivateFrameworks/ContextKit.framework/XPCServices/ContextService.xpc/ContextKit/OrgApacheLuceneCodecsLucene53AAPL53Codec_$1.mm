@interface OrgApacheLuceneCodecsLucene53AAPL53Codec_$1
- (OrgApacheLuceneCodecsLucene53AAPL53Codec_$1)initWithOrgApacheLuceneCodecsLucene53AAPL53Codec:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53AAPL53Codec_$1

- (OrgApacheLuceneCodecsLucene53AAPL53Codec_$1)initWithOrgApacheLuceneCodecsLucene53AAPL53Codec:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53AAPL53Codec__1;
  [(OrgApacheLuceneCodecsPostingsFormat *)&v3 dealloc];
}

@end