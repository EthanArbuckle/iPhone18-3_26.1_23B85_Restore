@interface BDSBookWidgetInfo
- (BDSBookWidgetInfo)initWithAssetID:(id)d;
- (BDSBookWidgetInfo)initWithAssetID:(id)d title:(id)title coverURL:(id)l pageProgressionDirection:(id)direction cloudAssetType:(id)type libraryContentAssetType:(id)assetType;
- (BDSBookWidgetInfo)initWithAssetID:(id)d title:(id)title coverURL:(id)l pageProgressionDirection:(id)direction cloudAssetType:(id)type libraryContentAssetType:(id)assetType lastEngagedDate:(id)date isTrackedAsRecent:(BOOL)self0;
- (BDSBookWidgetInfo)initWithCoder:(id)coder;
- (id)description;
- (id)insertMatchingManagedObjectIntoContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSBookWidgetInfo

- (BDSBookWidgetInfo)initWithAssetID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BDSBookWidgetInfo;
  v6 = [(BDSBookWidgetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetID, d);
  }

  return v7;
}

- (BDSBookWidgetInfo)initWithAssetID:(id)d title:(id)title coverURL:(id)l pageProgressionDirection:(id)direction cloudAssetType:(id)type libraryContentAssetType:(id)assetType
{
  titleCopy = title;
  lCopy = l;
  directionCopy = direction;
  typeCopy = type;
  assetTypeCopy = assetType;
  v18 = [(BDSBookWidgetInfo *)self initWithAssetID:d];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v19->_coverURL, l);
    objc_storeStrong(&v19->_pageProgressionDirection, direction);
    objc_storeStrong(&v19->_cloudAssetType, type);
    objc_storeStrong(&v19->_libraryContentAssetType, assetType);
  }

  return v19;
}

- (BDSBookWidgetInfo)initWithAssetID:(id)d title:(id)title coverURL:(id)l pageProgressionDirection:(id)direction cloudAssetType:(id)type libraryContentAssetType:(id)assetType lastEngagedDate:(id)date isTrackedAsRecent:(BOOL)self0
{
  dateCopy = date;
  v18 = [(BDSBookWidgetInfo *)self initWithAssetID:d title:title coverURL:l pageProgressionDirection:direction cloudAssetType:type libraryContentAssetType:assetType];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_lastEngagedDate, date);
    v19->_isTrackedAsRecent = recent;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetID = [(BDSBookWidgetInfo *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetID"];

  title = [(BDSBookWidgetInfo *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  coverURL = [(BDSBookWidgetInfo *)self coverURL];
  [coderCopy encodeObject:coverURL forKey:@"coverURL"];

  pageProgressionDirection = [(BDSBookWidgetInfo *)self pageProgressionDirection];
  [coderCopy encodeObject:pageProgressionDirection forKey:@"pageProgressionDirection"];

  libraryContentAssetType = [(BDSBookWidgetInfo *)self libraryContentAssetType];
  [coderCopy encodeObject:libraryContentAssetType forKey:@"libraryContentAssetType"];

  cloudAssetType = [(BDSBookWidgetInfo *)self cloudAssetType];
  [coderCopy encodeObject:cloudAssetType forKey:@"cloudAssetType"];

  totalDuration = [(BDSBookWidgetInfo *)self totalDuration];
  [coderCopy encodeObject:totalDuration forKey:@"totalDuration"];

  lastEngagedDate = [(BDSBookWidgetInfo *)self lastEngagedDate];
  [coderCopy encodeObject:lastEngagedDate forKey:@"lastEngagedDate"];

  [coderCopy encodeBool:-[BDSBookWidgetInfo isTrackedAsRecent](self forKey:{"isTrackedAsRecent"), @"isTrackedAsRecent"}];
  [coderCopy encodeBool:-[BDSBookWidgetInfo isExplicit](self forKey:{"isExplicit"), @"isExplicit"}];
}

- (BDSBookWidgetInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = BDSBookWidgetInfo;
  v5 = [(BDSBookWidgetInfo *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coverURL"];
    coverURL = v5->_coverURL;
    v5->_coverURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pageProgressionDirection"];
    pageProgressionDirection = v5->_pageProgressionDirection;
    v5->_pageProgressionDirection = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryContentAssetType"];
    libraryContentAssetType = v5->_libraryContentAssetType;
    v5->_libraryContentAssetType = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudAssetType"];
    cloudAssetType = v5->_cloudAssetType;
    v5->_cloudAssetType = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDuration"];
    totalDuration = v5->_totalDuration;
    v5->_totalDuration = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastEngagedDate"];
    lastEngagedDate = v5->_lastEngagedDate;
    v5->_lastEngagedDate = v20;

    v5->_isTrackedAsRecent = [coderCopy decodeBoolForKey:@"isTrackedAsRecent"];
    v5->_isExplicit = [coderCopy decodeBoolForKey:@"isExplicit"];
  }

  return v5;
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  assetID = [(BDSBookWidgetInfo *)self assetID];
  title = [(BDSBookWidgetInfo *)self title];
  cloudAssetType = [(BDSBookWidgetInfo *)self cloudAssetType];
  lastEngagedDate = [(BDSBookWidgetInfo *)self lastEngagedDate];
  isTrackedAsRecent = [(BDSBookWidgetInfo *)self isTrackedAsRecent];
  coverURL = [(BDSBookWidgetInfo *)self coverURL];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BDSBookWidgetInfo isExplicit](self, "isExplicit")}];
  pageProgressionDirection = [(BDSBookWidgetInfo *)self pageProgressionDirection];
  libraryContentAssetType = [(BDSBookWidgetInfo *)self libraryContentAssetType];
  totalDuration = [(BDSBookWidgetInfo *)self totalDuration];
  v13 = [v16 stringWithFormat:@"<%@:%p assetID=%@ title=%@ cloudAssetType=%@ lastEngagedDate=%@ isTrackedAsRecent=%d coverURL=%@ isExplicit=%@ pageProgressionDirection=%@ libraryContentAssetType=%@ duration=%@>", v15, self, assetID, title, cloudAssetType, lastEngagedDate, isTrackedAsRecent, coverURL, v9, pageProgressionDirection, libraryContentAssetType, totalDuration];

  return v13;
}

- (id)insertMatchingManagedObjectIntoContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1E4619250;
  v15 = sub_1E4619260;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E4619268;
  v8[3] = &unk_1E8759C68;
  v8[4] = self;
  v5 = contextCopy;
  v9 = v5;
  v10 = &v11;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end