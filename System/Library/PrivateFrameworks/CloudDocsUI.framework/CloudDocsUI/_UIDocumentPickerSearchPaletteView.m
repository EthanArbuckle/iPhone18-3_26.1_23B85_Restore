@interface _UIDocumentPickerSearchPaletteView
- (_UIDocumentPickerSearchPaletteView)initWithFrame:(CGRect)a3 resultsController:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchCanceled:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UIDocumentPickerSearchPaletteView

- (_UIDocumentPickerSearchPaletteView)initWithFrame:(CGRect)a3 resultsController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = _UIDocumentPickerSearchPaletteView;
  v10 = [(_UIDocumentPickerSearchPaletteView *)&v19 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(_UIDocumentPickerSearchPaletteView *)v10 setResultsController:v9];
    v12 = objc_alloc(MEMORY[0x277D759F0]);
    v13 = [(_UIDocumentPickerSearchPaletteView *)v11 resultsController];
    v14 = [v12 initWithSearchResultsController:v13];
    [(_UIDocumentPickerSearchPaletteView *)v11 setSearchController:v14];

    v15 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(_UIDocumentPickerSearchPaletteView *)v11 setBackgroundColor:v15];

    v16 = [(_UIDocumentPickerSearchPaletteView *)v11 searchController];
    v17 = [v16 searchBar];

    [v17 setDelegate:v11];
    [(_UIDocumentPickerSearchPaletteView *)v11 bounds];
    [v17 setFrame:?];
    [v17 setAutoresizingMask:18];
    [(_UIDocumentPickerSearchPaletteView *)v11 addSubview:v17];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(UISearchController *)self->_searchController searchBar];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, 44.0];
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, 44.0];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = _UIDocumentPickerSearchPaletteView;
  [(_UIDocumentPickerSearchPaletteView *)&v16 layoutSubviews];
  v3 = [(_UIDocumentPickerSearchPaletteView *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 superview];

  if (v5 == self)
  {
    [(_UIDocumentPickerSearchPaletteView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(_UIDocumentPickerSearchPaletteView *)self searchController];
    v15 = [v14 searchBar];
    [v15 setFrame:{v7, v9, v11, v13}];
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v5 = [a3 text];
  v4 = [(_UIDocumentPickerSearchPaletteView *)self resultsController];
  [v4 setQueryString:v5];
}

- (void)searchCanceled:(id)a3
{
  v3 = [(_UIDocumentPickerSearchPaletteView *)self resultsController];
  [v3 setQueryString:&stru_285690698];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerSearchPaletteView *)self resultsController];
  [v6 setQueryString:v5];
}

@end