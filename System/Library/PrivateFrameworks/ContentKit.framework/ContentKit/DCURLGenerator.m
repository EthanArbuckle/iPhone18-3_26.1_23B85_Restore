@interface DCURLGenerator
- (id)URL;
@end

@implementation DCURLGenerator

- (id)URL
{
  v3 = [(DCURLGenerator *)self query];
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(DCURLGenerator *)self scheme];
  v7 = [(DCURLGenerator *)self host];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_282F53518;
  }

  v10 = [(DCURLGenerator *)self path];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_282F53518;
  }

  v13 = @"?";
  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v13 = &stru_282F53518;
    v14 = &stru_282F53518;
  }

  v15 = [v5 stringWithFormat:@"%@://%@%@%@%@", v6, v9, v12, v13, v14];
  v16 = [v4 URLWithString:v15];

  return v16;
}

@end