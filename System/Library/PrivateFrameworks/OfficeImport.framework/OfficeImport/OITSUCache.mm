@interface OITSUCache
- (OITSUCache)initWithName:(id)name;
@end

@implementation OITSUCache

- (OITSUCache)initWithName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = OITSUCache;
  v5 = [(OITSUCache *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(OITSUCache *)v5 setName:nameCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D76670];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v6 selector:sel_p_didReceiveMemoryWarning_ name:v8 object:mEMORY[0x277D75128]];

    v10 = *MEMORY[0x277D76660];
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v6 selector:sel_p_didEnterBackground_ name:v10 object:mEMORY[0x277D75128]2];
  }

  return v6;
}

@end