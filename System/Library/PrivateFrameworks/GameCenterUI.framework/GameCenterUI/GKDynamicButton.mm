@interface GKDynamicButton
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation GKDynamicButton

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKDynamicButton;
  [(GKDynamicButton *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(GKDynamicButton *)self window];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    [(GKDynamicButton *)self contentSizeCategoryDidChangeNotification:0];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = [(GKDynamicButton *)self titleLabel];
  v5 = [v4 font];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontAttributes];
  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277D74378]];

  v8 = v11;
  if (v11)
  {
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v11];
    v10 = [(GKDynamicButton *)self titleLabel];
    [v10 setFont:v9];

    v8 = v11;
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = GKDynamicButton;
  [(GKDynamicButton *)&v5 layoutSubviews];
  v3 = MEMORY[0x277D75508];
  [(GKDynamicButton *)self bounds];
  v4 = [v3 effectWithRoundedRect:*MEMORY[0x277CDA138] cornerRadius:? curve:?];
  [v4 setPosition:2];
  [(GKDynamicButton *)self setFocusEffect:v4];
}

@end