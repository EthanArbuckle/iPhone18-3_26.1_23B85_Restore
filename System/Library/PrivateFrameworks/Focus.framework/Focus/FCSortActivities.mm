@interface FCSortActivities
@end

@implementation FCSortActivities

uint64_t ___FCSortActivities_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _dndMode];
  v3 = [v2 semanticType];

  if ((v3 - 1) > 4)
  {
    return 3;
  }

  else
  {
    return qword_24B87F820[v3 - 1];
  }
}

@end