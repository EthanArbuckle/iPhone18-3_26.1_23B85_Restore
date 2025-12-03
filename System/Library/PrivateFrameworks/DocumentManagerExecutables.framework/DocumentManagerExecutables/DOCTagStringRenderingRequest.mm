@interface DOCTagStringRenderingRequest
+ (id)requestForChainedTags:(id)tags tagDimension:(double)dimension text:(id)text textAttributes:(id)attributes;
+ (id)requestForTag:(id)tag tagDimension:(double)dimension text:(id)text textAttributes:(id)attributes variant:(unint64_t)variant;
- (DOCTagStringRenderingRequest)init;
- (id)_UIImageCacheKeyWithAdditionalComponents:(id)components;
@end

@implementation DOCTagStringRenderingRequest

+ (id)requestForTag:(id)tag tagDimension:(double)dimension text:(id)text textAttributes:(id)attributes variant:(unint64_t)variant
{
  textCopy = text;
  attributesCopy = attributes;
  tagCopy = tag;
  v14 = [objc_opt_class() requestForTag:tagCopy tagDimension:variant variant:dimension];

  if (v14)
  {
    if (textCopy)
    {
      v15 = textCopy;
    }

    else
    {
      v15 = &stru_285CBC3C8;
    }

    [v14 setText:v15];
    if (attributesCopy)
    {
      v16 = attributesCopy;
    }

    else
    {
      v16 = MEMORY[0x277CBEC10];
    }

    [v14 setTextAttributes:v16];
  }

  return v14;
}

+ (id)requestForChainedTags:(id)tags tagDimension:(double)dimension text:(id)text textAttributes:(id)attributes
{
  textCopy = text;
  attributesCopy = attributes;
  tagsCopy = tags;
  v12 = [objc_opt_class() requestForChainedTags:tagsCopy tagDimension:dimension];

  if (v12)
  {
    if (textCopy)
    {
      v13 = textCopy;
    }

    else
    {
      v13 = &stru_285CBC3C8;
    }

    [v12 setText:v13];
    if (attributesCopy)
    {
      v14 = attributesCopy;
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

- (id)_UIImageCacheKeyWithAdditionalComponents:(id)components
{
  v13[4] = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tagBaselineAdjustment];
  v13[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tagBaselineAdjustment];
  v13[1] = v6;
  text = [(DOCTagStringRenderingRequest *)self text];
  v13[2] = text;
  textAttributes = [(DOCTagStringRenderingRequest *)self textAttributes];
  v13[3] = textAttributes;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v12.receiver = self;
  v12.super_class = DOCTagStringRenderingRequest;
  v10 = [(DOCTagRenderingRequest *)&v12 _UIImageCacheKeyWithAdditionalComponents:v9];

  if ([componentsCopy count])
  {
    [v10 addObjectsFromArray:componentsCopy];
  }

  return v10;
}

@end