@interface BDSBookWidgetInfoMO
- (id)getBookWidgetInfoObject;
- (id)initIntoManagedObjectContext:(id)a3;
@end

@implementation BDSBookWidgetInfoMO

- (id)initIntoManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [NSEntityDescription entityForName:@"BDSBookWidgetInfoMO" inManagedObjectContext:v4];
  v8.receiver = self;
  v8.super_class = BDSBookWidgetInfoMO;
  v6 = [(BDSBookWidgetInfoMO *)&v8 initWithEntity:v5 insertIntoManagedObjectContext:v4];

  return v6;
}

- (id)getBookWidgetInfoObject
{
  v3 = [BDSBookWidgetInfo alloc];
  v4 = [(BDSBookWidgetInfoMO *)self assetID];
  v5 = [(BDSBookWidgetInfoMO *)self title];
  v6 = [(BDSBookWidgetInfoMO *)self coverURL];
  v7 = [(BDSBookWidgetInfoMO *)self pageProgressionDirection];
  v8 = [(BDSBookWidgetInfoMO *)self cloudAssetType];
  v9 = [(BDSBookWidgetInfoMO *)self libraryContentAssetType];
  v10 = [(BDSBookWidgetInfoMO *)self lastEngagedDate];
  LOBYTE(v13) = [(BDSBookWidgetInfoMO *)self isTrackedAsRecent];
  v11 = [(BDSBookWidgetInfo *)v3 initWithAssetID:v4 title:v5 coverURL:v6 pageProgressionDirection:v7 cloudAssetType:v8 libraryContentAssetType:v9 lastEngagedDate:v10 isTrackedAsRecent:v13];

  [(BDSBookWidgetInfo *)v11 setIsExplicit:[(BDSBookWidgetInfoMO *)self isExplicit]];

  return v11;
}

@end