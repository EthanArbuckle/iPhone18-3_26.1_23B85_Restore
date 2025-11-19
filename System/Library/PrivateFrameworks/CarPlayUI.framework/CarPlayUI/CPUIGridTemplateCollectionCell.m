@interface CPUIGridTemplateCollectionCell
- (void)prepareForReuse;
- (void)setButton:(id)a3;
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
  v3 = [(CPUIGridTemplateCollectionCell *)self contentView];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(CPUIGridTemplateCollectionCell *)self setButton:0];
}

- (void)setButton:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_button != v5)
  {
    objc_storeStrong(&self->_button, a3);
    if (v5)
    {
      v6 = [(CPUIGridTemplateCollectionCell *)self contentView];
      [v6 addSubview:v5];

      v18 = MEMORY[0x277CCAAD0];
      v23 = [(CPUIGridButton *)v5 topAnchor];
      v24 = [(CPUIGridTemplateCollectionCell *)self contentView];
      v22 = [v24 topAnchor];
      v21 = [v23 constraintEqualToAnchor:v22 constant:0.0];
      v25[0] = v21;
      v19 = [(CPUIGridButton *)v5 leftAnchor];
      v20 = [(CPUIGridTemplateCollectionCell *)self contentView];
      v17 = [v20 leftAnchor];
      v16 = [v19 constraintEqualToAnchor:v17 constant:2.0];
      v25[1] = v16;
      v7 = [(CPUIGridButton *)v5 rightAnchor];
      v8 = [(CPUIGridTemplateCollectionCell *)self contentView];
      v9 = [v8 rightAnchor];
      v10 = [v7 constraintEqualToAnchor:v9 constant:-2.0];
      v25[2] = v10;
      v11 = [(CPUIGridButton *)v5 bottomAnchor];
      v12 = [(CPUIGridTemplateCollectionCell *)self contentView];
      v13 = [v12 bottomAnchor];
      v14 = [v11 constraintEqualToAnchor:v13 constant:-1.0];
      v25[3] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
      [v18 activateConstraints:v15];
    }
  }
}

@end