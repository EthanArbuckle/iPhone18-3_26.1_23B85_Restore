@interface MCLContentSizingView
- (CGSize)intrinsicContentSize;
- (void)setContentView:(id)view;
@end

@implementation MCLContentSizingView

- (void)setContentView:(id)view
{
  v31[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  [(TKKeyPathObserver *)selfCopy->_observer stopObserving];
  [(UIScrollView *)selfCopy->_contentView removeFromSuperview];
  objc_storeStrong(&selfCopy->_contentView, location[0]);
  if (location[0])
  {
    [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MCLContentSizingView *)selfCopy addSubview:location[0]];
    LODWORD(v3) = 1148846080;
    [(MCLContentSizingView *)selfCopy setContentCompressionResistancePriority:1 forAxis:v3];
    LODWORD(v4) = 1148846080;
    [(MCLContentSizingView *)selfCopy setContentHuggingPriority:1 forAxis:v4];
    v21 = MEMORY[0x277CCAAD0];
    leadingAnchor = [location[0] leadingAnchor];
    leadingAnchor2 = [(MCLContentSizingView *)selfCopy leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:?];
    v31[0] = v18;
    trailingAnchor = [location[0] trailingAnchor];
    trailingAnchor2 = [(MCLContentSizingView *)selfCopy trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:?];
    v31[1] = v15;
    topAnchor = [location[0] topAnchor];
    topAnchor2 = [(MCLContentSizingView *)selfCopy topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:?];
    v31[2] = v12;
    bottomAnchor = [location[0] bottomAnchor];
    bottomAnchor2 = [(MCLContentSizingView *)selfCopy bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:?];
    v31[3] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v21 activateConstraints:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    if (!selfCopy->_observer)
    {
      objc_initWeak(&from, selfCopy);
      v7 = [TKKeyPathObserver alloc];
      v22 = MEMORY[0x277D85DD0];
      v23 = -1073741824;
      v24 = 0;
      v25 = __39__MCLContentSizingView_setContentView___block_invoke;
      v26 = &unk_2797EE820;
      objc_copyWeak(&v27, &from);
      v6 = [(TKKeyPathObserver *)v7 initWithBlock:&v22];
      observer = selfCopy->_observer;
      selfCopy->_observer = v6;
      MEMORY[0x277D82BD8](observer);
      [(TKKeyPathObserver *)selfCopy->_observer observe:location[0] keyPath:@"contentSize"];
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