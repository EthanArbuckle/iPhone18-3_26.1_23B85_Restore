@interface SUUISpacePageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUISpacePageSection)initWithPageComponent:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (void)willAppearInContext:(id)a3;
@end

@implementation SUUISpacePageSection

- (SUUISpacePageSection)initWithPageComponent:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUISpacePageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:a3];
}

- (void)willAppearInContext:(id)a3
{
  v3 = [a3 collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUISpacePageSectionReuseIdentifier"];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SUUISpacePageSectionReuseIdentifier" forIndexPath:v4];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 collectionView];
  [v5 bounds];
  v7 = v6;

  v8 = [(SUUIStorePageSection *)self pageComponent];
  [v8 height];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end