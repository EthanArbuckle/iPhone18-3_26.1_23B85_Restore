@interface NNCLastNewsStoryResult
- (BOOL)isEqual:(id)a3;
- (NNCLastNewsStoryResult)init;
- (unint64_t)hash;
@end

@implementation NNCLastNewsStoryResult

- (NNCLastNewsStoryResult)init
{
  v3.receiver = self;
  v3.super_class = NNCLastNewsStoryResult;
  return [(NNCLastNewsStoryResult *)&v3 init];
}

- (unint64_t)hash
{
  v3 = [(NNCLastNewsStoryResult *)self headlineIdentifier];
  v4 = [v3 hash];
  v5 = [(NNCLastNewsStoryResult *)self headlineTitle];
  v6 = [v5 hash] ^ v4;
  v7 = [(NNCLastNewsStoryResult *)self sectionName];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(NNCLastNewsStoryResult *)self headlineIndex];
  v10 = [(NNCLastNewsStoryResult *)self totalHeadlineCount];

  return v9 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NNCLastNewsStoryResult *)self headlineIdentifier];
    v7 = [v5 headlineIdentifier];
    if (v6 == v7)
    {
      v11 = 0;
    }

    else
    {
      v8 = [(NNCLastNewsStoryResult *)self headlineIdentifier];
      v9 = [v5 headlineIdentifier];
      v10 = [v8 isEqualToString:v9];

      v11 = v10 ^ 1;
    }

    v13 = [(NNCLastNewsStoryResult *)self headlineTitle];
    v14 = [v5 headlineTitle];
    if (v13 == v14)
    {
      v18 = 0;
    }

    else
    {
      v15 = [(NNCLastNewsStoryResult *)self headlineTitle];
      v16 = [v5 headlineTitle];
      v17 = [v15 isEqualToString:v16];

      v18 = v17 ^ 1;
    }

    v19 = [(NNCLastNewsStoryResult *)self sectionName];
    v20 = [v5 sectionName];
    if (v19 == v20)
    {
      v24 = 0;
    }

    else
    {
      v21 = [(NNCLastNewsStoryResult *)self sectionName];
      v22 = [v5 sectionName];
      v23 = [v21 isEqualToString:v22];

      v24 = v23 ^ 1;
    }

    v25 = [(NNCLastNewsStoryResult *)self headlineIndex];
    v26 = [v5 headlineIndex];
    v27 = [(NNCLastNewsStoryResult *)self totalHeadlineCount];
    v28 = [v5 totalHeadlineCount];
    v12 = 0;
    if (((v11 | v18) & 1) == 0 && (v24 & 1) == 0)
    {
      v12 = v25 == v26 && v27 == v28;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end