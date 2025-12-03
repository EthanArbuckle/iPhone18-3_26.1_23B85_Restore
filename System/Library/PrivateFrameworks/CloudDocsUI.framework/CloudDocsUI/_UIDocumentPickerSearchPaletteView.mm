@interface _UIDocumentPickerSearchPaletteView
- (_UIDocumentPickerSearchPaletteView)initWithFrame:(CGRect)frame resultsController:(id)controller;
- (void)dealloc;
- (void)layoutSubviews;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchCanceled:(id)canceled;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UIDocumentPickerSearchPaletteView

- (_UIDocumentPickerSearchPaletteView)initWithFrame:(CGRect)frame resultsController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = _UIDocumentPickerSearchPaletteView;
  height = [(_UIDocumentPickerSearchPaletteView *)&v19 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(_UIDocumentPickerSearchPaletteView *)height setResultsController:controllerCopy];
    v12 = objc_alloc(MEMORY[0x277D759F0]);
    resultsController = [(_UIDocumentPickerSearchPaletteView *)v11 resultsController];
    v14 = [v12 initWithSearchResultsController:resultsController];
    [(_UIDocumentPickerSearchPaletteView *)v11 setSearchController:v14];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(_UIDocumentPickerSearchPaletteView *)v11 setBackgroundColor:systemBackgroundColor];

    searchController = [(_UIDocumentPickerSearchPaletteView *)v11 searchController];
    searchBar = [searchController searchBar];

    [searchBar setDelegate:v11];
    [(_UIDocumentPickerSearchPaletteView *)v11 bounds];
    [searchBar setFrame:?];
    [searchBar setAutoresizingMask:18];
    [(_UIDocumentPickerSearchPaletteView *)v11 addSubview:searchBar];
  }

  return v11;
}

- (void)dealloc
{
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar setDelegate:0];

  v4.receiver = self;
  v4.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v3 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, 44.0];
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, 44.0];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v16 layoutSubviews];
  searchController = [(_UIDocumentPickerSearchPaletteView *)self searchController];
  searchBar = [searchController searchBar];
  superview = [searchBar superview];

  if (superview == self)
  {
    [(_UIDocumentPickerSearchPaletteView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    searchController2 = [(_UIDocumentPickerSearchPaletteView *)self searchController];
    searchBar2 = [searchController2 searchBar];
    [searchBar2 setFrame:{v7, v9, v11, v13}];
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  text = [editing text];
  resultsController = [(_UIDocumentPickerSearchPaletteView *)self resultsController];
  [resultsController setQueryString:text];
}

- (void)searchCanceled:(id)canceled
{
  resultsController = [(_UIDocumentPickerSearchPaletteView *)self resultsController];
  [resultsController setQueryString:&stru_285690698];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  resultsController = [(_UIDocumentPickerSearchPaletteView *)self resultsController];
  [resultsController setQueryString:changeCopy];
}

@end