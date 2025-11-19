@interface DOCTagStringRenderingRequest
+ (id)requestForChainedTags:(id)a3 tagDimension:(double)a4 text:(id)a5 textAttributes:(id)a6;
+ (id)requestForTag:(id)a3 tagDimension:(double)a4 text:(id)a5 textAttributes:(id)a6 variant:(unint64_t)a7;
- (DOCTagStringRenderingRequest)init;
- (id)_UIImageCacheKeyWithAdditionalComponents:(id)a3;
@end

@implementation DOCTagStringRenderingRequest

+ (id)requestForTag:(id)a3 tagDimension:(double)a4 text:(id)a5 textAttributes:(id)a6 variant:(unint64_t)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [objc_opt_class() requestForTag:v13 tagDimension:a7 variant:a4];

  if (v14)
  {
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = &stru_285CBC3C8;
    }

    [v14 setText:v15];
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = MEMORY[0x277CBEC10];
    }

    [v14 setTextAttributes:v16];
  }

  return v14;
}

+ (id)requestForChainedTags:(id)a3 tagDimension:(double)a4 text:(id)a5 textAttributes:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [objc_opt_class() requestForChainedTags:v11 tagDimension:a4];

  if (v12)
  {
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &stru_285CBC3C8;
    }

    [v12 setText:v13];
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = MEMORY[0x277CBEC10];
    }

    [v12 setTextAttributes:v14];
  }

  return v12;
}

- (DOCTagStringRenderingRequest)init
{
  v3.receiver = self;
  v3.super_class = DOCTagStringRenderingRequest;
  result = [(DOCTagRenderingRequest *)&v3 init];
  if (result)
  {
    result->_tagToTitleSpacing = 8.0;
    result->_tagBaselineAdjustment = 0.0;
  }

  return result;
}

- (id)_UIImageCacheKeyWithAdditionalComponents:(id)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tagBaselineAdjustment];
  v13[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tagBaselineAdjustment];
  v13[1] = v6;
  v7 = [(DOCTagStringRenderingRequest *)self text];
  v13[2] = v7;
  v8 = [(DOCTagStringRenderingRequest *)self textAttributes];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v12.receiver = self;
  v12.super_class = DOCTagStringRenderingRequest;
  v10 = [(DOCTagRenderingRequest *)&v12 _UIImageCacheKeyWithAdditionalComponents:v9];

  if ([v4 count])
  {
    [v10 addObjectsFromArray:v4];
  }

  return v10;
}

@end