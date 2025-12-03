@interface DCURLGenerator
- (id)URL;
@end

@implementation DCURLGenerator

- (id)URL
{
  query = [(DCURLGenerator *)self query];
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  scheme = [(DCURLGenerator *)self scheme];
  host = [(DCURLGenerator *)self host];
  v8 = host;
  if (host)
  {
    v9 = host;
  }

  else
  {
    v9 = &stru_282F53518;
  }

  path = [(DCURLGenerator *)self path];
  v11 = path;
  if (path)
  {
    v12 = path;
  }

  else
  {
    v12 = &stru_282F53518;
  }

  v13 = @"?";
  if (query)
  {
    v14 = query;
  }

  else
  {
    v13 = &stru_282F53518;
    v14 = &stru_282F53518;
  }

  v15 = [v5 stringWithFormat:@"%@://%@%@%@%@", scheme, v9, v12, v13, v14];
  v16 = [v4 URLWithString:v15];

  return v16;
}

@end