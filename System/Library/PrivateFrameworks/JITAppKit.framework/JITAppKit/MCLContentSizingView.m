@interface MCLContentSizingView
- (CGSize)intrinsicContentSize;
- (void)setContentView:(id)a3;
@end

@implementation MCLContentSizingView

- (void)setContentView:(id)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(TKKeyPathObserver *)v30->_observer stopObserving];
  [(UIScrollView *)v30->_contentView removeFromSuperview];
  objc_storeStrong(&v30->_contentView, location[0]);
  if (location[0])
  {
    [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MCLContentSizingView *)v30 addSubview:location[0]];
    LODWORD(v3) = 1148846080;
    [(MCLContentSizingView *)v30 setContentCompressionResistancePriority:1 forAxis:v3];
    LODWORD(v4) = 1148846080;
    [(MCLContentSizingView *)v30 setContentHuggingPriority:1 forAxis:v4];
    v21 = MEMORY[0x277CCAAD0];
    v20 = [location[0] leadingAnchor];
    v19 = [(MCLContentSizingView *)v30 leadingAnchor];
    v18 = [v20 constraintEqualToAnchor:?];
    v31[0] = v18;
    v17 = [location[0] trailingAnchor];
    v16 = [(MCLContentSizingView *)v30 trailingAnchor];
    v15 = [v17 constraintEqualToAnchor:?];
    v31[1] = v15;
    v14 = [location[0] topAnchor];
    v13 = [(MCLContentSizingView *)v30 topAnchor];
    v12 = [v14 constraintEqualToAnchor:?];
    v31[2] = v12;
    v11 = [location[0] bottomAnchor];
    v10 = [(MCLContentSizingView *)v30 bottomAnchor];
    v9 = [v11 constraintEqualToAnchor:?];
    v31[3] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v21 activateConstraints:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    if (!v30->_observer)
    {
      objc_initWeak(&from, v30);
      v7 = [TKKeyPathObserver alloc];
      v22 = MEMORY[0x277D85DD0];
      v23 = -1073741824;
      v24 = 0;
      v25 = __39__MCLContentSizingView_setContentView___block_invoke;
      v26 = &unk_2797EE820;
      objc_copyWeak(&v27, &from);
      v6 = [(TKKeyPathObserver *)v7 initWithBlock:&v22];
      observer = v30->_observer;
      v30->_observer = v6;
      MEMORY[0x277D82BD8](observer);
      [(TKKeyPathObserver *)v30->_observer observe:location[0] keyPath:@"contentSize"];
      objc_destroyWeak(&v27);
      objc_destroyWeak(&from);
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __39__MCLContentSizingView_setContentView___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained invalidateIntrinsicContentSize];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (CGSize)intrinsicContentSize
{
  if (self->_contentView)
  {
    [(UIScrollView *)self->_contentView contentSize];
    *&v6 = v2;
    *(&v6 + 1) = v3;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
  }

  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.height = v5;
  result.width = v4;
  return result;
}

@end