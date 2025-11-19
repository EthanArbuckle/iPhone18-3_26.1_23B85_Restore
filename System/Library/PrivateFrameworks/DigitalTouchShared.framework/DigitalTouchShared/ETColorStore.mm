@interface ETColorStore
+ (id)defaultStore;
- (ETColorStore)init;
- (id)_colors;
- (unint64_t)selectedColorIndex;
- (void)addDefaultsObserver;
- (void)dealloc;
- (void)defaultsChanged:(id)a3;
- (void)saveColor:(id)a3 forIndex:(unint64_t)a4;
- (void)setSelectedColorIndex:(unint64_t)a3;
@end

@implementation ETColorStore

+ (id)defaultStore
{
  if (defaultStore_onceToken != -1)
  {
    +[ETColorStore defaultStore];
  }

  v3 = defaultStore_sharedStore;

  return v3;
}

uint64_t __28__ETColorStore_defaultStore__block_invoke()
{
  defaultStore_sharedStore = objc_alloc_init(ETColorStore);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"ETColorPrefsChangedExternallyNotification", 0);
  v5.receiver = self;
  v5.super_class = ETColorStore;
  [(ETColorStore *)&v5 dealloc];
}

- (ETColorStore)init
{
  v5.receiver = self;
  v5.super_class = ETColorStore;
  v2 = [(ETColorStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ETColorStore *)v2 addDefaultsObserver];
  }

  return v3;
}

- (void)addDefaultsObserver
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_defaultsChanged_ name:*MEMORY[0x277CCA858] object:0];
}

- (void)defaultsChanged:(id)a3
{
  colors = self->_colors;
  self->_colors = 0;

  self->_selectedIndexLoaded = 0;
}

- (id)_colors
{
  v20 = *MEMORY[0x277D85DE8];
  colors = self->_colors;
  if (!colors)
  {
    v4 = PaletteColorsDataArray();
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = bswap32([*(*(&v15 + 1) + 8 * v10) unsignedIntValue]);
          v12 = [MEMORY[0x277D75348] colorWithRed:v11 / 255.0 green:BYTE1(v11) / 255.0 blue:BYTE2(v11) / 255.0 alpha:HIBYTE(v11) / 255.0];
          [(NSMutableArray *)v5 addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = self->_colors;
    self->_colors = v5;

    colors = self->_colors;
  }

  return colors;
}

- (void)saveColor:(id)a3 forIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ETColorStore *)self _colors];
  [v7 setObject:v6 atIndexedSubscript:a4];
  v8 = PaletteColorsDataArray();
  v9 = [v8 mutableCopy];

  v10 = MEMORY[0x277CCABB0];
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  [v6 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];

  v11 = [v10 numberWithUnsignedInt:bswap32(((v15 * 255.0) << 16) | ((v14 * 255.0) << 24) | ((v16 * 255.0) << 8) | (v17 * 255.0))];
  [v9 setObject:v11 atIndexedSubscript:a4];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 removeObserver:self name:*MEMORY[0x277CCA858] object:0];

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v13 setObject:v9 forKey:@"ETColorPickerColorData"];
  [v13 synchronize];
  [(ETColorStore *)self addDefaultsObserver];
}

- (unint64_t)selectedColorIndex
{
  if (!self->_selectedIndexLoaded)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 synchronize];
    v4 = [v3 objectForKey:@"ETColorPickerSelectedIndex"];
    self->_selectedColorIndex = [v4 unsignedIntegerValue];

    if (self->_selectedColorIndex >= 8)
    {
      self->_selectedColorIndex = 0;
    }

    self->_selectedIndexLoaded = 1;
  }

  return self->_selectedColorIndex;
}

- (void)setSelectedColorIndex:(unint64_t)a3
{
  if (self->_selectedColorIndex != a3)
  {
    self->_selectedColorIndex = a3;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x277CCA858] object:0];

    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_selectedColorIndex];
    [v7 setObject:v6 forKey:@"ETColorPickerSelectedIndex"];

    [v7 synchronize];
    [(ETColorStore *)self addDefaultsObserver];
  }
}

@end