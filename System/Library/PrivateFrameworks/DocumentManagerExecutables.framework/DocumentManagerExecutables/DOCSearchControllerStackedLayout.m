@interface DOCSearchControllerStackedLayout
- (_TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout)init;
- (void)_searchBarWillLayoutSubviews:(id)a3 inSearchFieldContainer:(id)a4 searchTextFieldFrame:(CGRect)a5 cancelButtonFrame:(CGRect)a6;
@end

@implementation DOCSearchControllerStackedLayout

- (void)_searchBarWillLayoutSubviews:(id)a3 inSearchFieldContainer:(id)a4 searchTextFieldFrame:(CGRect)a5 cancelButtonFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.size.height;
  v11 = a5.size.width;
  v12 = a5.origin.y;
  v13 = a5.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = self;
  v21.origin.x = v13;
  v21.origin.y = v12;
  v21.size.width = v11;
  v21.size.height = v10;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:)(a3, a4, v21, v22);
}

- (_TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end