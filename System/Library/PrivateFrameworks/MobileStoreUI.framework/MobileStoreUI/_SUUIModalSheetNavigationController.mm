@interface _SUUIModalSheetNavigationController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
@end

@implementation _SUUIModalSheetNavigationController

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  topViewController = [(_SUUIModalSheetNavigationController *)self topViewController];

  if (topViewController != containerCopy)
  {
    v13.receiver = self;
    v13.super_class = _SUUIModalSheetNavigationController;
    [(_SUUIModalSheetNavigationController *)&v13 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
    width = v9;
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

@end