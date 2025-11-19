@interface CSLPRFAppViewChoiceView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CSLPRFAppViewChoiceView)initWithDelegate:(id)a3 horizontalOffset:(double)a4 choices:(id)a5;
- (CSLPRFWatchChoiceDelegate)delegate;
- (int64_t)currentWatchChoice;
- (void)_updateSelectedChoice:(int64_t)a3;
- (void)_withLock:(id)a3;
- (void)setHorizontalOffset:(double)a3;
- (void)setWatchChoice:(int64_t)a3;
@end

@implementation CSLPRFAppViewChoiceView

- (CSLPRFWatchChoiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateSelectedChoice:(int64_t)a3
{
  watchViews = self->_watchViews;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CSLPRFAppViewChoiceView__updateSelectedChoice___block_invoke;
  v7[3] = &__block_descriptor_40_e38_v32__0__CSLPRFWatchChoiceView_8Q16_B24l;
  v7[4] = a3;
  [(NSMutableArray *)watchViews enumerateObjectsUsingBlock:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained watchChooser:self madeChoice:a3];
}

void __49__CSLPRFAppViewChoiceView__updateSelectedChoice___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 choice];
  v5 = *(a1 + 32);
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v4 == v5)
  {
    if (v6)
    {
      *v10 = 138412290;
      *&v10[4] = v3;
      v7 = MEMORY[0x277D86220];
      v8 = ">>>> selecting %@";
LABEL_6:
      _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEFAULT, v8, v10, 0xCu);
    }
  }

  else if (v6)
  {
    *v10 = 138412290;
    *&v10[4] = v3;
    v7 = MEMORY[0x277D86220];
    v8 = ">>>> unselecting %@";
    goto LABEL_6;
  }

  [v3 setSelected:{v4 == v5, *v10}];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setHorizontalOffset:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  self->_horizontalOffset = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_watchViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setHorizontalOffset:{a3, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(CSLPRFAppViewChoiceView *)self setNeedsLayout];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setWatchChoice:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__CSLPRFAppViewChoiceView_setWatchChoice___block_invoke;
  v5[3] = &unk_278744EB8;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(CSLPRFAppViewChoiceView *)self _withLock:v5];
  if (*(v7 + 24) == 1)
  {
    [(CSLPRFAppViewChoiceView *)self _updateSelectedChoice:a3];
  }

  _Block_object_dispose(&v6, 8);
}

void __42__CSLPRFAppViewChoiceView_setWatchChoice___block_invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[6];
    v3 = *(a1[4] + 448);
    v7[0] = 67109376;
    v7[1] = v2;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> setting choice to %d was %d", v7, 0xEu);
  }

  v4 = a1[4];
  v5 = a1[6];
  if (*(v4 + 448) != v5)
  {
    *(v4 + 448) = v5;
    *(*(a1[5] + 8) + 24) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (int64_t)currentWatchChoice
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CSLPRFAppViewChoiceView_currentWatchChoice__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLPRFAppViewChoiceView *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(NSMutableArray *)self->_watchViews firstObject];
  *&v11 = a4;
  *&v12 = a5;
  [v10 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14 * [(NSMutableArray *)self->_watchViews count];
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CSLPRFAppViewChoiceView *)self systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CSLPRFAppViewChoiceView)initWithDelegate:(id)a3 horizontalOffset:(double)a4 choices:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21.receiver = self;
  v21.super_class = CSLPRFAppViewChoiceView;
  v10 = [(CSLPRFAppViewChoiceView *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    v11->_lock._os_unfair_lock_opaque = 0;
    [(CSLPRFAppViewChoiceView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSLPRFAppViewChoiceView *)v11 setAxis:0];
    [(CSLPRFAppViewChoiceView *)v11 setDistribution:1];
    [(CSLPRFAppViewChoiceView *)v11 setAlignment:1];
    LODWORD(v12) = 1148846080;
    [(CSLPRFAppViewChoiceView *)v11 setContentCompressionResistancePriority:1 forAxis:v12];
    v13 = [MEMORY[0x277CBEB18] array];
    watchViews = v11->_watchViews;
    v11->_watchViews = v13;

    objc_initWeak(&location, v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__CSLPRFAppViewChoiceView_initWithDelegate_horizontalOffset_choices___block_invoke;
    v16[3] = &unk_278744E90;
    v17 = v8;
    v19[1] = *&a4;
    objc_copyWeak(v19, &location);
    v18 = v11;
    [v9 enumerateObjectsUsingBlock:v16];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __69__CSLPRFAppViewChoiceView_initWithDelegate_horizontalOffset_choices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CSLPRFWatchChoiceView alloc];
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CSLPRFAppViewChoiceView_initWithDelegate_horizontalOffset_choices___block_invoke_2;
  v8[3] = &unk_278744E68;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = [(CSLPRFWatchChoiceView *)v4 initWithChoice:v3 delegate:v5 horizontalOffset:v8 selectionHandler:v6];
  [(CSLPRFWatchChoiceView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(*(a1 + 40) + 440) addObject:v7];
  [*(a1 + 40) addArrangedSubview:v7];

  objc_destroyWeak(&v9);
}

void __69__CSLPRFAppViewChoiceView_initWithDelegate_horizontalOffset_choices___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> %d selected", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setWatchChoice:a2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end