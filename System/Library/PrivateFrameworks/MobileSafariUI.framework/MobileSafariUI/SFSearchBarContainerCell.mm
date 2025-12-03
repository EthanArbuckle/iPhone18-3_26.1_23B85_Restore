@interface SFSearchBarContainerCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setSearchBar:(id)bar;
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

- (void)setSearchBar:(id)bar
{
  barCopy = bar;
  searchBar = self->_searchBar;
  if (searchBar != barCopy)
  {
    v7 = barCopy;
    [(UISearchBar *)searchBar removeFromSuperview];
    objc_storeStrong(&self->_searchBar, bar);
    [(SFSearchBarContainerCell *)self addSubview:v7];
    [(SFSearchBarContainerCell *)self setNeedsLayout];
    barCopy = v7;
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = SFSearchBarContainerCell;
  v4 = [(SFSearchBarContainerCell *)&v8 preferredLayoutAttributesFittingAttributes:attributes];
  [(UISearchBar *)self->_searchBar frame];
  [v4 setSize:{v5, v6}];

  return v4;
}

@end