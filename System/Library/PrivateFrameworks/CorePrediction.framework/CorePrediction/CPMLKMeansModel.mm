@interface CPMLKMeansModel
- (id)betweenss;
- (id)centers;
- (id)cluster;
- (id)size;
- (id)totalWithinss;
- (id)withinss;
@end

@implementation CPMLKMeansModel

- (id)cluster
{
  v3 = objc_opt_new();
  v4 = *(self->super._mData + 4);
  if ((v4 + 6) >= 7)
  {
    v5 = 48;
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(self->super._mData + v5)];
      [v3 addObject:v6];

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  return v3;
}

- (id)centers
{
  v13 = objc_opt_new();
  mData = self->super._mData;
  v12 = mData[2];
  if (v12)
  {
    v4 = 0;
    v5 = mData[3];
    v6 = 8 * self->super._realBase[3];
    do
    {
      v7 = objc_opt_new();
      v8 = v6;
      for (i = v5; i; --i)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->super._realBase + v8)];
        [v7 addObject:v10];

        v8 += 8;
      }

      [v13 addObject:v7];

      ++v4;
      v6 += 8 * v5;
    }

    while (v4 != v12);
  }

  return v13;
}

- (id)withinss
{
  v3 = objc_opt_new();
  v4 = *(self->super._mData + 2);
  if (v4)
  {
    v5 = self->super._realBase[4];
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->super._realBase[v5]];
      [v3 addObject:v6];

      ++v5;
      --v4;
    }

    while (v4);
  }

  return v3;
}

- (id)totalWithinss
{
  v17 = *MEMORY[0x277D85DE8];
  withinss = [(CPMLKMeansModel *)self withinss];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [withinss countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(withinss);
        }

        [*(*(&v12 + 1) + 8 * i) doubleValue];
        v6 = v6 + v8;
      }

      v4 = [withinss countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)betweenss
{
  totss = [(CPMLKMeansModel *)self totss];
  [totss doubleValue];
  v5 = v4;
  totalWithinss = [(CPMLKMeansModel *)self totalWithinss];
  [totalWithinss doubleValue];
  v8 = v5 - v7;

  v9 = MEMORY[0x277CCABB0];

  return [v9 numberWithDouble:v8];
}

- (id)size
{
  v3 = objc_opt_new();
  mData = self->super._mData;
  v5 = mData[2];
  if (v5)
  {
    v6 = 8 * mData[5];
    do
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(self->super._mData + v6)];
      [v3 addObject:v7];

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return v3;
}

@end