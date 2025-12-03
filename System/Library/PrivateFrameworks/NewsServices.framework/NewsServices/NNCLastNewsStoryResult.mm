@interface NNCLastNewsStoryResult
- (BOOL)isEqual:(id)equal;
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
  headlineIdentifier = [(NNCLastNewsStoryResult *)self headlineIdentifier];
  v4 = [headlineIdentifier hash];
  headlineTitle = [(NNCLastNewsStoryResult *)self headlineTitle];
  v6 = [headlineTitle hash] ^ v4;
  sectionName = [(NNCLastNewsStoryResult *)self sectionName];
  v8 = [sectionName hash];
  v9 = v6 ^ v8 ^ [(NNCLastNewsStoryResult *)self headlineIndex];
  totalHeadlineCount = [(NNCLastNewsStoryResult *)self totalHeadlineCount];

  return v9 ^ totalHeadlineCount;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    headlineIdentifier = [(NNCLastNewsStoryResult *)self headlineIdentifier];
    headlineIdentifier2 = [v5 headlineIdentifier];
    if (headlineIdentifier == headlineIdentifier2)
    {
      v11 = 0;
    }

    else
    {
      headlineIdentifier3 = [(NNCLastNewsStoryResult *)self headlineIdentifier];
      headlineIdentifier4 = [v5 headlineIdentifier];
      v10 = [headlineIdentifier3 isEqualToString:headlineIdentifier4];

      v11 = v10 ^ 1;
    }

    headlineTitle = [(NNCLastNewsStoryResult *)self headlineTitle];
    headlineTitle2 = [v5 headlineTitle];
    if (headlineTitle == headlineTitle2)
    {
      v18 = 0;
    }

    else
    {
      headlineTitle3 = [(NNCLastNewsStoryResult *)self headlineTitle];
      headlineTitle4 = [v5 headlineTitle];
      v17 = [headlineTitle3 isEqualToString:headlineTitle4];

      v18 = v17 ^ 1;
    }

    sectionName = [(NNCLastNewsStoryResult *)self sectionName];
    sectionName2 = [v5 sectionName];
    if (sectionName == sectionName2)
    {
      v24 = 0;
    }

    else
    {
      sectionName3 = [(NNCLastNewsStoryResult *)self sectionName];
      sectionName4 = [v5 sectionName];
      v23 = [sectionName3 isEqualToString:sectionName4];

      v24 = v23 ^ 1;
    }

    headlineIndex = [(NNCLastNewsStoryResult *)self headlineIndex];
    headlineIndex2 = [v5 headlineIndex];
    totalHeadlineCount = [(NNCLastNewsStoryResult *)self totalHeadlineCount];
    totalHeadlineCount2 = [v5 totalHeadlineCount];
    v12 = 0;
    if (((v11 | v18) & 1) == 0 && (v24 & 1) == 0)
    {
      v12 = headlineIndex == headlineIndex2 && totalHeadlineCount == totalHeadlineCount2;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end