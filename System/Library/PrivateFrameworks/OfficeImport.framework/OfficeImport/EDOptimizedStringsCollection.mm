@interface EDOptimizedStringsCollection
- (EDOptimizedStringsCollection)init;
- (unint64_t)addObject:(id)object;
@end

@implementation EDOptimizedStringsCollection

- (EDOptimizedStringsCollection)init
{
  v6.receiver = self;
  v6.super_class = EDOptimizedStringsCollection;
  v2 = [(EDCollection *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mStringDictionary = v2->mStringDictionary;
    v2->mStringDictionary = dictionary;
  }

  return v2;
}

- (unint64_t)addObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = [(NSMutableDictionary *)self->mStringDictionary objectForKey:objectCopy];
    v6 = v5;
    if (v5)
    {
      unsignedIntValue = [v5 unsignedIntValue];
    }

    else
    {
      [(NSMutableArray *)self->super.mObjects addObject:objectCopy];
      mStringDictionary = self->mStringDictionary;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->super.mObjects, "count") - 1}];
      [(NSMutableDictionary *)mStringDictionary setObject:v9 forKey:objectCopy];

      unsignedIntValue = [(NSMutableArray *)self->super.mObjects count]- 1;
    }
  }

  else
  {
    unsignedIntValue = -1;
  }

  return unsignedIntValue;
}

@end