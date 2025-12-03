@interface BDSBookWidgetInfoMO
- (id)getBookWidgetInfoObject;
- (id)initIntoManagedObjectContext:(id)context;
@end

@implementation BDSBookWidgetInfoMO

- (id)initIntoManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [NSEntityDescription entityForName:@"BDSBookWidgetInfoMO" inManagedObjectContext:contextCopy];
  v8.receiver = self;
  v8.super_class = BDSBookWidgetInfoMO;
  v6 = [(BDSBookWidgetInfoMO *)&v8 initWithEntity:v5 insertIntoManagedObjectContext:contextCopy];

  return v6;
}

- (id)getBookWidgetInfoObject
{
  v3 = [BDSBookWidgetInfo alloc];
  assetID = [(BDSBookWidgetInfoMO *)self assetID];
  title = [(BDSBookWidgetInfoMO *)self title];
  coverURL = [(BDSBookWidgetInfoMO *)self coverURL];
  pageProgressionDirection = [(BDSBookWidgetInfoMO *)self pageProgressionDirection];
  cloudAssetType = [(BDSBookWidgetInfoMO *)self cloudAssetType];
  libraryContentAssetType = [(BDSBookWidgetInfoMO *)self libraryContentAssetType];
  lastEngagedDate = [(BDSBookWidgetInfoMO *)self lastEngagedDate];
  LOBYTE(v13) = [(BDSBookWidgetInfoMO *)self isTrackedAsRecent];
  v11 = [(BDSBookWidgetInfo *)v3 initWithAssetID:assetID title:title coverURL:coverURL pageProgressionDirection:pageProgressionDirection cloudAssetType:cloudAssetType libraryContentAssetType:libraryContentAssetType lastEngagedDate:lastEngagedDate isTrackedAsRecent:v13];

  [(BDSBookWidgetInfo *)v11 setIsExplicit:[(BDSBookWidgetInfoMO *)self isExplicit]];

  return v11;
}

@end