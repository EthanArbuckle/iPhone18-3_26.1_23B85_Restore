@interface OCXSStream
- (BOOL)popLevel;
- (OCXSStream)init;
- (int)currentContextDepth;
- (void)pushLevel:(int)a3 name:(const char *)a4;
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
  v3 = [(NSMutableArray *)self->mLevelStack lastObject];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 depth];
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

- (BOOL)popLevel
{
  v3 = [(OCXSStream *)self hasLevels];
  if (v3)
  {
    [(NSMutableArray *)self->mLevelStack removeLastObject];
  }

  return v3;
}

- (void)pushLevel:(int)a3 name:(const char *)a4
{
  v5 = *&a3;
  v7 = objc_alloc_init(OCXSStreamLevel);
  [(OCXSStreamLevel *)v7 setName:a4];
  [(OCXSStreamLevel *)v7 setDepth:v5];
  [(NSMutableArray *)self->mLevelStack addObject:v7];
}

@end