@interface FCPromoteOneHeadline
@end

@implementation FCPromoteOneHeadline

uint64_t ____FCPromoteOneHeadline_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithDouble:{FCScoreForHeadline(a3, 1)}];
  v7 = MEMORY[0x1E696AD98];
  v8 = FCScoreForHeadline(v5, 1);

  v9 = [v7 numberWithDouble:v8];
  v10 = [v6 compare:v9];

  return v10;
}

@end