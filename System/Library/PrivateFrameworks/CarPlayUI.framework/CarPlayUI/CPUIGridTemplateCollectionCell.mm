@interface CPUIGridTemplateCollectionCell
- (void)prepareForReuse;
- (void)setButton:(id)button;
@end

@implementation CPUIGridTemplateCollectionCell

- (void)prepareForReuse
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CPUIGridTemplateCollectionCell;
  [(CPUIGridTemplateCollectionCell *)&v13 prepareForReuse];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  contentView = [(CPUIGridTemplateCollectionCell *)self contentView];
  subviews = [contentView subviews];

  v5 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(CPUIGridTemplateCollectionCell *)self setButton:0];
}

- (void)setButton:(id)button
{
  v25[4] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  if (self->_button != buttonCopy)
  {
    objc_storeStrong(&self->_button, button);
    if (buttonCopy)
    {
      contentView = [(CPUIGridTemplateCollectionCell *)self contentView];
      [contentView addSubview:buttonCopy];

      v18 = MEMORY[0x277CCAAD0];
      topAnchor = [(CPUIGridButton *)buttonCopy topAnchor];
      contentView2 = [(CPUIGridTemplateCollectionCell *)self contentView];
      topAnchor2 = [contentView2 topAnchor];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      v25[0] = v21;
      leftAnchor = [(CPUIGridButton *)buttonCopy leftAnchor];
      contentView3 = [(CPUIGridTemplateCollectionCell *)self contentView];
      leftAnchor2 = [contentView3 leftAnchor];
      v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:2.0];
      v25[1] = v16;
      rightAnchor = [(CPUIGridButton *)buttonCopy rightAnchor];
      contentView4 = [(CPUIGridTemplateCollectionCell *)self contentView];
      rightAnchor2 = [contentView4 rightAnchor];
      v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-2.0];
      v25[2] = v10;
      bottomAnchor = [(CPUIGridButton *)buttonCopy bottomAnchor];
      contentView5 = [(CPUIGridTemplateCollectionCell *)self contentView];
      bottomAnchor2 = [contentView5 bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-1.0];
      v25[3] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
      [v18 activateConstraints:v15];
    }
  }
}

@end