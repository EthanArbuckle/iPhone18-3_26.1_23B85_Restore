@interface NUDocumentSectionItem
- (NUDocumentSectionItem)initWithViewController:(id)controller heightProvider:(id)provider;
- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection;
@end

@implementation NUDocumentSectionItem

- (NUDocumentSectionItem)initWithViewController:(id)controller heightProvider:(id)provider
{
  controllerCopy = controller;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = NUDocumentSectionItem;
  v9 = [(NUDocumentSectionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewController, controller);
    objc_storeStrong(&v10->_heightProvider, provider);
  }

  return v10;
}

- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  heightProvider = [(NUDocumentSectionItem *)self heightProvider];
  [heightProvider sectionItemHeightForSize:collectionCopy traitCollection:{width, height}];
  v10 = v9;

  return v10;
}

@end