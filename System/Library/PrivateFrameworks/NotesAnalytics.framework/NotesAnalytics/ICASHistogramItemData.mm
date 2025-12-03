@interface ICASHistogramItemData
- (ICASHistogramItemData)initWithLeftBound:(id)bound rightBound:(id)rightBound count:(id)count;
- (id)toDict;
@end

@implementation ICASHistogramItemData

- (ICASHistogramItemData)initWithLeftBound:(id)bound rightBound:(id)rightBound count:(id)count
{
  boundCopy = bound;
  rightBoundCopy = rightBound;
  countCopy = count;
  v15.receiver = self;
  v15.super_class = ICASHistogramItemData;
  v12 = [(ICASHistogramItemData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_leftBound, bound);
    objc_storeStrong(&v13->_rightBound, rightBound);
    objc_storeStrong(&v13->_count, count);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"leftBound";
  leftBound = [(ICASHistogramItemData *)self leftBound];
  if (leftBound)
  {
    leftBound2 = [(ICASHistogramItemData *)self leftBound];
  }

  else
  {
    leftBound2 = objc_opt_new();
  }

  v5 = leftBound2;
  v16[0] = leftBound2;
  v15[1] = @"rightBound";
  rightBound = [(ICASHistogramItemData *)self rightBound];
  if (rightBound)
  {
    rightBound2 = [(ICASHistogramItemData *)self rightBound];
  }

  else
  {
    rightBound2 = objc_opt_new();
  }

  v8 = rightBound2;
  v16[1] = rightBound2;
  v15[2] = @"count";
  v9 = [(ICASHistogramItemData *)self count];
  if (v9)
  {
    v10 = [(ICASHistogramItemData *)self count];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end