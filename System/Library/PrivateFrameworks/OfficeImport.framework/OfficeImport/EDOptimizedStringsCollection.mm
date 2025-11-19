@interface EDOptimizedStringsCollection
- (EDOptimizedStringsCollection)init;
- (unint64_t)addObject:(id)a3;
@end

@implementation EDOptimizedStringsCollection

- (EDOptimizedStringsCollection)init
{
  v6.receiver = self;
  v6.super_class = EDOptimizedStringsCollection;
  v2 = [(EDCollection *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    mStringDictionary = v2->mStringDictionary;
    v2->mStringDictionary = v3;
  }

  return v2;
}

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->mStringDictionary objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 unsignedIntValue];
    }

    else
    {
      [(NSMutableArray *)self->super.mObjects addObject:v4];
      mStringDictionary = self->mStringDictionary;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->super.mObjects, "count") - 1}];
      [(NSMutableDictionary *)mStringDictionary setObject:v9 forKey:v4];

      v7 = [(NSMutableArray *)self->super.mObjects count]- 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end