@interface VCPMovieCurationResults
- (VCPMovieCurationResults)initWithPHAsset:(id)a3;
@end

@implementation VCPMovieCurationResults

- (VCPMovieCurationResults)initWithPHAsset:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = VCPMovieCurationResults;
  v6 = [(VCPMovieCurationResults *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_phAsset, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    highlights = v7->_highlights;
    v7->_highlights = v8;

    if (v7->_highlights)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

@end