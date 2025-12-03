@interface OrgApacheLuceneCodecsLucene53Lucene53NormsFormat
- (id)normsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)state;
- (id)normsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)state;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsFormat

- (id)normsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)state
{
  v3 = new_OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(state, @"Lucene53NormsData", @"nvd", @"Lucene53NormsMetadata", @"nvm");

  return v3;
}

- (id)normsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)state
{
  State_withNSString_withNSString_withNSString_withNSString = new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(state, @"Lucene53NormsData", @"nvd", @"Lucene53NormsMetadata", @"nvm");

  return State_withNSString_withNSString_withNSString_withNSString;
}

@end