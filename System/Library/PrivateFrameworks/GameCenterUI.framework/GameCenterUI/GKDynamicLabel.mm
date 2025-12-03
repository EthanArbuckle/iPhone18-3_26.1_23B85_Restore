@interface GKDynamicLabel
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)didMoveToWindow;
@end

@implementation GKDynamicLabel

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKDynamicLabel;
  [(GKDynamicLabel *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  window = [(GKDynamicLabel *)self window];

  if (window)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    [(GKDynamicLabel *)self contentSizeCategoryDidChangeNotification:0];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  font = [(GKDynamicLabel *)self font];
  fontDescriptor = [font fontDescriptor];
  fontAttributes = [fontDescriptor fontAttributes];
  v9 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x277D74378]];

  v7 = v9;
  if (v9)
  {
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
    [(GKDynamicLabel *)self setFont:v8];

    v7 = v9;
  }
}

@end