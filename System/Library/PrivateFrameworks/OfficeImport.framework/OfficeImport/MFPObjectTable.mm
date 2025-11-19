@interface MFPObjectTable
- (MFPObjectTable)init;
- (id)objectAtIndex:(int)a3;
- (void)setObject:(id)a3 atIndex:(int)a4;
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

- (id)objectAtIndex:(int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&a3];
  v5 = [(NSMutableDictionary *)self->mObjects objectForKey:v4];

  return v5;
}

- (void)setObject:(id)a3 atIndex:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v4];
  [(NSMutableDictionary *)self->mObjects setObject:v7 forKey:v6];
}

@end