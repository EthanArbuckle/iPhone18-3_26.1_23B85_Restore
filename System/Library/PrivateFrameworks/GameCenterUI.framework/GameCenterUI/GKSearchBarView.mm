@interface GKSearchBarView
+ (void)initialize;
- (GKSearchBarView)initWithFrame:(CGRect)a3;
- (UISearchBarDelegate)delegate;
- (void)applyLayoutAttributes:(id)a3;
- (void)establishSearchBarConstraints;
- (void)prepareForReuse;
- (void)setDelegate:(id)a3;
- (void)setUsePadConstraints:(id)a3;
- (void)updateConstraints;
@end

@implementation GKSearchBarView

+ (void)initialize
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:1];
  v19 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:1];
  v18 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:2];
  v3 = MEMORY[0x277D75C80];
  v23[0] = v2;
  v23[1] = v19;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v5 = [v3 traitCollectionWithTraitsFromCollections:v4];

  v6 = MEMORY[0x277D75C80];
  v22[0] = v2;
  v22[1] = v18;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v8 = [v6 traitCollectionWithTraitsFromCollections:v7];

  v9 = [objc_opt_class() appearanceForTraitCollection:v5];
  v10 = MEMORY[0x277CBEC28];
  [v9 setUsePadConstraints:MEMORY[0x277CBEC28]];
  v11 = [objc_opt_class() appearanceForTraitCollection:v8];
  [v11 setUsePadConstraints:MEMORY[0x277CBEC38]];
  v12 = objc_opt_class();
  v21 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v14 = [v12 appearanceWhenContainedInInstancesOfClasses:v13];

  [v14 setUsePadConstraints:v10];
  v15 = objc_opt_class();
  v20 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v17 = [v15 appearanceWhenContainedInInstancesOfClasses:v16];

  [v17 setUsePadConstraints:v10];
}

- (GKSearchBarView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = GKSearchBarView;
  v3 = [(GKSearchBarView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(GKSearchBar);
    searchBar = v3->_searchBar;
    v3->_searchBar = v4;

    [(GKSearchBar *)v3->_searchBar setBackgroundColor:0];
    [(GKSearchBar *)v3->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKSearchBar *)v3->_searchBar setOpaque:0];
    [(GKSearchBar *)v3->_searchBar setSearchBarStyle:2];
    v6 = GKGameCenterUIFrameworkBundle();
    v7 = GKGetLocalizedStringFromTableInBundle();
    [(GKSearchBar *)v3->_searchBar setPlaceholder:v7];

    [(GKSearchBarView *)v3 addSubview:v3->_searchBar];
    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_searchBar attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
    [(GKSearchBarView *)v3 addConstraint:v8];

    v9 = MEMORY[0x277CCABB0];
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    v12 = 0;
    if (v11 == 1)
    {
      v12 = *MEMORY[0x277D0C258] ^ 1 | *MEMORY[0x277D0C8F0];
    }

    v13 = [v9 numberWithBool:v12 & 1];
    usePadConstraints = v3->_usePadConstraints;
    v3->_usePadConstraints = v13;
  }

  return v3;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = GKSearchBarView;
  [(GKSearchBarView *)&v3 updateConstraints];
  if (!self->_searchBarConstraints)
  {
    [(GKSearchBarView *)self establishSearchBarConstraints];
  }
}

- (void)establishSearchBarConstraints
{
  if (self->_searchBarConstraints)
  {
    [(GKSearchBarView *)self removeConstraints:?];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v3 = [(NSNumber *)self->_usePadConstraints BOOLValue];
  v4 = MEMORY[0x277CCAAD0];
  if (v3)
  {
    v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_searchBar attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:540.0];
    [v14 addObject:v5];

    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_searchBar attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [v14 addObject:v6];
  }

  else
  {
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Searchbar_1.isa, self->_searchBar, 0);
    v8 = [v4 constraintsWithVisualFormat:@"|[_searchBar]|" options:0 metrics:0 views:v7];
    [v14 addObjectsFromArray:v8];

    v9 = [v14 firstObject];
    v10 = [v14 lastObject];
    [(UICollectionReusableView *)self _gkSetLeadingGuideConstraint:v9 trailingGuideConstraint:v10];

    [(GKSearchBarView *)self leadingMargin];
    v12 = v11;
    [(GKSearchBarView *)self trailingMargin];
    if (v12 >= v13)
    {
      v13 = v12;
    }

    [MEMORY[0x277D75298] _gkAdjustConstraintMargins:v14 leading:v13 trailing:v13];
  }

  [(GKSearchBarView *)self setSearchBarConstraints:v14];
  [(GKSearchBarView *)self addConstraints:self->_searchBarConstraints];
}

- (void)setUsePadConstraints:(id)a3
{
  v5 = a3;
  if (self->_usePadConstraints != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_usePadConstraints, a3);
    if (self->_searchBarConstraints)
    {
      [(GKSearchBarView *)self removeConstraints:?];
      [(GKSearchBarView *)self setSearchBarConstraints:0];
    }

    [(GKSearchBarView *)self setNeedsUpdateConstraints];
    v5 = v6;
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = GKSearchBarView;
  [(GKSearchBarView *)&v26 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 dataSource];
    v7 = [(GKSearchBarView *)self searchBar];
    [v7 setDataSource:v6];

    [v5 leadingMargin];
    v9 = v8;
    [v5 trailingMargin];
    v11 = v10;
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (!v13)
    {
      if (([MEMORY[0x277D759A0] mainScreen], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v14, v16 >= 414.0) && v18 >= 736.0 || (v18 >= 414.0 ? (v19 = v16 < 736.0) : (v19 = 1), !v19))
      {
        v11 = v11 + -8.0;
        v9 = v9 + -8.0;
      }
    }

    [(GKSearchBarView *)self setLeadingMargin:v9];
    [(GKSearchBarView *)self setTrailingMargin:v11];
    v20 = [(GKSearchBarView *)self searchBarConstraints];
    if (v20)
    {
      if (v9 < v11)
      {
        v9 = v11;
      }

      v21 = MEMORY[0x277D75298];
      v22 = [(GKSearchBarView *)self searchBarConstraints];
      [v21 _gkAdjustConstraintMargins:v22 leading:v9 trailing:v9];
    }
  }

  v23 = [v4 indexPath];
  v24 = [v23 section];
  v25 = [(GKSearchBarView *)self searchBar];
  [v25 setSectionIndex:v24];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = GKSearchBarView;
  [(GKSearchBarView *)&v3 prepareForReuse];
  [(GKSearchBarView *)self setDelegate:0];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(GKSearchBar *)self->_searchBar setDelegate:obj];
  }
}

- (UISearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end