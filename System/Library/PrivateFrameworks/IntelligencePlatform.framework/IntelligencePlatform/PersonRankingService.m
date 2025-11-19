@interface PersonRankingService
- (id)rankedPersonsForObjCWithMaxCount:(int64_t)a3 error:(id *)a4;
@end

@implementation PersonRankingService

- (id)rankedPersonsForObjCWithMaxCount:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  sub_1ABE32FB8(a3);

  sub_1ABE34FC0();
  v6 = sub_1ABF240C4();

  return v6;
}

@end