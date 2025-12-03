@interface ESDObjectFactory
+ (id)threadLocalFactory;
- (ESDObjectFactory)init;
- (EshObject)createObjectWithType:(unsigned __int16)type;
- (void)dealloc;
- (void)replaceHostEshFactoryWith:(EshObjectFactory *)with;
- (void)restoreHostEshFactory;
- (void)setEshFactory:(EshObjectFactory *)factory;
@end

@implementation ESDObjectFactory

+ (id)threadLocalFactory
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKey:@"ESDObjectFactory"];
  if (!v4)
  {
    v4 = objc_alloc_init(ESDObjectFactory);
    [threadDictionary setObject:v4 forKey:@"ESDObjectFactory"];
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

- (EshObject)createObjectWithType:(unsigned __int16)type
{
  result = self->eshObjectFactory;
  if (result)
  {
    if ((type + 4096) >= 6u)
    {
      EshAtom::versionForAtomType(type);
      result = self->eshObjectFactory;
    }

    v5 = *(result->var0 + 2);

    return v5();
  }

  return result;
}

- (void)replaceHostEshFactoryWith:(EshObjectFactory *)with
{
  eshObjectFactoryStack = self->eshObjectFactoryStack;
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:self->eshObjectFactory];
  [(NSMutableArray *)eshObjectFactoryStack addObject:v6];

  self->eshObjectFactory = with;
}

- (void)restoreHostEshFactory
{
  lastObject = [(NSMutableArray *)self->eshObjectFactoryStack lastObject];
  self->eshObjectFactory = [lastObject pointerValue];

  eshObjectFactoryStack = self->eshObjectFactoryStack;

  [(NSMutableArray *)eshObjectFactoryStack removeLastObject];
}

- (void)setEshFactory:(EshObjectFactory *)factory
{
  eshObjectFactory = self->eshObjectFactory;
  if (eshObjectFactory)
  {
    (*(eshObjectFactory->var0 + 1))(eshObjectFactory, a2);
  }

  self->eshObjectFactory = factory;
}

@end