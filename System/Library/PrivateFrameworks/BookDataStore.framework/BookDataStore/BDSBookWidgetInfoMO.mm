@interface BDSBookWidgetInfoMO
- (id)getBookWidgetInfoObject;
- (id)initIntoManagedObjectContext:(id)context;
@end

@implementation BDSBookWidgetInfoMO

- (id)initIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x1E695D5B8];
  contextCopy = context;
  v6 = [v4 entityForName:@"BDSBookWidgetInfoMO" inManagedObjectContext:contextCopy];
  v9.receiver = self;
  v9.super_class = BDSBookWidgetInfoMO;
  v7 = [(BDSBookWidgetInfoMO *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:contextCopy];

  return v7;
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