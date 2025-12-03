@interface MFPObjectTable
- (MFPObjectTable)init;
- (id)objectAtIndex:(int)index;
- (void)setObject:(id)object atIndex:(int)index;
@end

@implementation MFPObjectTable

- (MFPObjectTable)init
{
  v6.receiver = self;
  v6.super_class = MFPObjectTable;
  v2 = [(MFPObjectTable *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mObjects = v2->mObjects;
    v2->mObjects = v3;
  }

  return v2;
}

- (id)objectAtIndex:(int)index
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&index];
  v5 = [(NSMutableDictionary *)self->mObjects objectForKey:v4];

  return v5;
}

- (void)setObject:(id)object atIndex:(int)index
{
  v4 = *&index;
  objectCopy = object;
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v4];
  [(NSMutableDictionary *)self->mObjects setObject:objectCopy forKey:v6];
}

@end