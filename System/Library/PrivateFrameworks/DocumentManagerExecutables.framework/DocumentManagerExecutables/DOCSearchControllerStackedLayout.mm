@interface DOCSearchControllerStackedLayout
- (_TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout)init;
- (void)_searchBarWillLayoutSubviews:(id)subviews inSearchFieldContainer:(id)container searchTextFieldFrame:(CGRect)frame cancelButtonFrame:(CGRect)buttonFrame;
@end

@implementation DOCSearchControllerStackedLayout

- (void)_searchBarWillLayoutSubviews:(id)subviews inSearchFieldContainer:(id)container searchTextFieldFrame:(CGRect)frame cancelButtonFrame:(CGRect)buttonFrame
{
  height = buttonFrame.size.height;
  width = buttonFrame.size.width;
  y = buttonFrame.origin.y;
  x = buttonFrame.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  subviewsCopy = subviews;
  containerCopy = container;
  selfCopy = self;
  v21.origin.x = v13;
  v21.origin.y = v12;
  v21.size.width = v11;
  v21.size.height = v10;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:)(subviews, container, v21, v22);
}

- (_TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end