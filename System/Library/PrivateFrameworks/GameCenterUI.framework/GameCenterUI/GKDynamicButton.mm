@interface GKDynamicButton
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation GKDynamicButton

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKDynamicButton;
  [(GKDynamicButton *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  window = [(GKDynamicButton *)self window];

  if (window)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    [(GKDynamicButton *)self contentSizeCategoryDidChangeNotification:0];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  titleLabel = [(GKDynamicButton *)self titleLabel];
  font = [titleLabel font];
  fontDescriptor = [font fontDescriptor];
  fontAttributes = [fontDescriptor fontAttributes];
  v11 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x277D74378]];

  v8 = v11;
  if (v11)
  {
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v11];
    titleLabel2 = [(GKDynamicButton *)self titleLabel];
    [titleLabel2 setFont:v9];

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