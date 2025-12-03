@interface SUUISpacePageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUISpacePageSection)initWithPageComponent:(id)component;
- (id)cellForIndexPath:(id)path;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUISpacePageSection

- (SUUISpacePageSection)initWithPageComponent:(id)component
{
  v4.receiver = self;
  v4.super_class = SUUISpacePageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:component];
}

- (void)willAppearInContext:(id)context
{
  collectionView = [context collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUISpacePageSectionReuseIdentifier"];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUISpacePageSectionReuseIdentifier" forIndexPath:pathCopy];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
  v7 = v6;

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  [pageComponent height];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end