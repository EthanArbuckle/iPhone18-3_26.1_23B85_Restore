@interface OITSUCache
- (OITSUCache)initWithName:(id)a3;
@end

@implementation OITSUCache

- (OITSUCache)initWithName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = OITSUCache;
  v5 = [(OITSUCache *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(OITSUCache *)v5 setName:v4];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D76670];
    v9 = [MEMORY[0x277D75128] sharedApplication];
    [v7 addObserver:v6 selector:sel_p_didReceiveMemoryWarning_ name:v8 object:v9];

    v10 = *MEMORY[0x277D76660];
    v11 = [MEMORY[0x277D75128] sharedApplication];
    [v7 addObserver:v6 selector:sel_p_didEnterBackground_ name:v10 object:v11];
  }

  return v6;
}

@end