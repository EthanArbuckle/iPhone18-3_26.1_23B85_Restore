@interface ESDObjectFactory
+ (id)threadLocalFactory;
- (ESDObjectFactory)init;
- (EshObject)createObjectWithType:(unsigned __int16)a3;
- (void)dealloc;
- (void)replaceHostEshFactoryWith:(EshObjectFactory *)a3;
- (void)restoreHostEshFactory;
- (void)setEshFactory:(EshObjectFactory *)a3;
@end

@implementation ESDObjectFactory

+ (id)threadLocalFactory
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"ESDObjectFactory"];
  if (!v4)
  {
    v4 = objc_alloc_init(ESDObjectFactory);
    [v3 setObject:v4 forKey:@"ESDObjectFactory"];
  }

  return v4;
}

- (ESDObjectFactory)init
{
  v6.receiver = self;
  v6.super_class = ESDObjectFactory;
  v2 = [(ESDObjectFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eshObjectFactoryStack = v2->eshObjectFactoryStack;
    v2->eshObjectFactoryStack = v3;
  }

  return v2;
}

- (void)dealloc
{
  eshObjectFactory = self->eshObjectFactory;
  if (eshObjectFactory)
  {
    (*(eshObjectFactory->var0 + 1))(eshObjectFactory, a2);
    self->eshObjectFactory = 0;
  }

  v4.receiver = self;
  v4.super_class = ESDObjectFactory;
  [(ESDObjectFactory *)&v4 dealloc];
}

- (EshObject)createObjectWithType:(unsigned __int16)a3
{
  result = self->eshObjectFactory;
  if (result)
  {
    if ((a3 + 4096) >= 6u)
    {
      EshAtom::versionForAtomType(a3);
      result = self->eshObjectFactory;
    }

    v5 = *(result->var0 + 2);

    return v5();
  }

  return result;
}

- (void)replaceHostEshFactoryWith:(EshObjectFactory *)a3
{
  eshObjectFactoryStack = self->eshObjectFactoryStack;
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:self->eshObjectFactory];
  [(NSMutableArray *)eshObjectFactoryStack addObject:v6];

  self->eshObjectFactory = a3;
}

- (void)restoreHostEshFactory
{
  v3 = [(NSMutableArray *)self->eshObjectFactoryStack lastObject];
  self->eshObjectFactory = [v3 pointerValue];

  eshObjectFactoryStack = self->eshObjectFactoryStack;

  [(NSMutableArray *)eshObjectFactoryStack removeLastObject];
}

- (void)setEshFactory:(EshObjectFactory *)a3
{
  eshObjectFactory = self->eshObjectFactory;
  if (eshObjectFactory)
  {
    (*(eshObjectFactory->var0 + 1))(eshObjectFactory, a2);
  }

  self->eshObjectFactory = a3;
}

@end