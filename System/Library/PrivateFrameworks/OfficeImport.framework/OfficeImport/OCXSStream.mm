@interface OCXSStream
- (BOOL)popLevel;
- (OCXSStream)init;
- (int)currentContextDepth;
- (void)pushLevel:(int)level name:(const char *)name;
@end

@implementation OCXSStream

- (OCXSStream)init
{
  v6.receiver = self;
  v6.super_class = OCXSStream;
  v2 = [(OCXSStream *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    mLevelStack = v2->mLevelStack;
    v2->mLevelStack = v3;
  }

  return v2;
}

- (int)currentContextDepth
{
  lastObject = [(NSMutableArray *)self->mLevelStack lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    depth = [lastObject depth];
  }

  if (v4)
  {
    return depth;
  }

  else
  {
    return -1;
  }
}

- (BOOL)popLevel
{
  hasLevels = [(OCXSStream *)self hasLevels];
  if (hasLevels)
  {
    [(NSMutableArray *)self->mLevelStack removeLastObject];
  }

  return hasLevels;
}

- (void)pushLevel:(int)level name:(const char *)name
{
  v5 = *&level;
  v7 = objc_alloc_init(OCXSStreamLevel);
  [(OCXSStreamLevel *)v7 setName:name];
  [(OCXSStreamLevel *)v7 setDepth:v5];
  [(NSMutableArray *)self->mLevelStack addObject:v7];
}

@end