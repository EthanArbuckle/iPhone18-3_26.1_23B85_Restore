@interface GKDynamicLabel
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
@end

@implementation GKDynamicLabel

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKDynamicLabel;
  [(GKDynamicLabel *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(GKDynamicLabel *)self window];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    [(GKDynamicLabel *)self contentSizeCategoryDidChangeNotification:0];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = [(GKDynamicLabel *)self font];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontAttributes];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D74378]];

  v7 = v9;
  if (v9)
  {
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
    [(GKDynamicLabel *)self setFont:v8];

    v7 = v9;
  }
}

@end