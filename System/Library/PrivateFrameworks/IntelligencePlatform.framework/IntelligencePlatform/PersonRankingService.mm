@interface PersonRankingService
- (id)rankedPersonsForObjCWithMaxCount:(int64_t)count error:(id *)error;
@end

@implementation PersonRankingService

- (id)rankedPersonsForObjCWithMaxCount:(int64_t)count error:(id *)error
{
  selfCopy = self;
  sub_1ABE32FB8(count);

  sub_1ABE34FC0();
  v6 = sub_1ABF240C4();

  return v6;
}

@end