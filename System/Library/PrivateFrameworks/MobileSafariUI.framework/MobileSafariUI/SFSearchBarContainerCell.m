@interface SFSearchBarContainerCell
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setSearchBar:(id)a3;
@end

@implementation SFSearchBarContainerCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFSearchBarContainerCell;
  [(SFSearchBarContainerCell *)&v3 layoutSubviews];
  [(SFSearchBarContainerCell *)self bounds];
  [(UISearchBar *)self->_searchBar setFrame:?];
}

- (void)setSearchBar:(id)a3
{
  v5 = a3;
  searchBar = self->_searchBar;
  if (searchBar != v5)
  {
    v7 = v5;
    [(UISearchBar *)searchBar removeFromSuperview];
    objc_storeStrong(&self->_searchBar, a3);
    [(SFSearchBarContainerCell *)self addSubview:v7];
    [(SFSearchBarContainerCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = SFSearchBarContainerCell;
  v4 = [(SFSearchBarContainerCell *)&v8 preferredLayoutAttributesFittingAttributes:a3];
  [(UISearchBar *)self->_searchBar frame];
  [v4 setSize:{v5, v6}];

  return v4;
}

@end