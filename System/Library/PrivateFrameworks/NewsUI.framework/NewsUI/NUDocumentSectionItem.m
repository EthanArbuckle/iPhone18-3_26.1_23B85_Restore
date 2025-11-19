@interface NUDocumentSectionItem
- (NUDocumentSectionItem)initWithViewController:(id)a3 heightProvider:(id)a4;
- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4;
@end

@implementation NUDocumentSectionItem

- (NUDocumentSectionItem)initWithViewController:(id)a3 heightProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUDocumentSectionItem;
  v9 = [(NUDocumentSectionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewController, a3);
    objc_storeStrong(&v10->_heightProvider, a4);
  }

  return v10;
}

- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(NUDocumentSectionItem *)self heightProvider];
  [v8 sectionItemHeightForSize:v7 traitCollection:{width, height}];
  v10 = v9;

  return v10;
}

@end