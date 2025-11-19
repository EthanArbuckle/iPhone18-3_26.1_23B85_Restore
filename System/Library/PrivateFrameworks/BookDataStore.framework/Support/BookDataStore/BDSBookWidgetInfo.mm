@interface BDSBookWidgetInfo
- (BDSBookWidgetInfo)initWithAssetID:(id)a3;
- (BDSBookWidgetInfo)initWithAssetID:(id)a3 title:(id)a4 coverURL:(id)a5 pageProgressionDirection:(id)a6 cloudAssetType:(id)a7 libraryContentAssetType:(id)a8;
- (BDSBookWidgetInfo)initWithAssetID:(id)a3 title:(id)a4 coverURL:(id)a5 pageProgressionDirection:(id)a6 cloudAssetType:(id)a7 libraryContentAssetType:(id)a8 lastEngagedDate:(id)a9 isTrackedAsRecent:(BOOL)a10;
- (BDSBookWidgetInfo)initWithCoder:(id)a3;
- (id)description;
- (id)insertMatchingManagedObjectIntoContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSBookWidgetInfo

- (id)insertMatchingManagedObjectIntoContext:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100041CEC;
  v13 = sub_100041CFC;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100041D04;
  v6[3] = &unk_10023FA70;
  v6[4] = self;
  v3 = a3;
  v7 = v3;
  v8 = &v9;
  [v3 performBlockAndWait:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (BDSBookWidgetInfo)initWithAssetID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BDSBookWidgetInfo;
  v6 = [(BDSBookWidgetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetID, a3);
  }

  return v7;
}

- (BDSBookWidgetInfo)initWithAssetID:(id)a3 title:(id)a4 coverURL:(id)a5 pageProgressionDirection:(id)a6 cloudAssetType:(id)a7 libraryContentAssetType:(id)a8
{
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [(BDSBookWidgetInfo *)self initWithAssetID:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, a4);
    objc_storeStrong(&v19->_coverURL, a5);
    objc_storeStrong(&v19->_pageProgressionDirection, a6);
    objc_storeStrong(&v19->_cloudAssetType, a7);
    objc_storeStrong(&v19->_libraryContentAssetType, a8);
  }

  return v19;
}

- (BDSBookWidgetInfo)initWithAssetID:(id)a3 title:(id)a4 coverURL:(id)a5 pageProgressionDirection:(id)a6 cloudAssetType:(id)a7 libraryContentAssetType:(id)a8 lastEngagedDate:(id)a9 isTrackedAsRecent:(BOOL)a10
{
  v17 = a9;
  v18 = [(BDSBookWidgetInfo *)self initWithAssetID:a3 title:a4 coverURL:a5 pageProgressionDirection:a6 cloudAssetType:a7 libraryContentAssetType:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_lastEngagedDate, a9);
    v19->_isTrackedAsRecent = a10;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(BDSBookWidgetInfo *)self assetID];
  [v12 encodeObject:v4 forKey:@"assetID"];

  v5 = [(BDSBookWidgetInfo *)self title];
  [v12 encodeObject:v5 forKey:@"title"];

  v6 = [(BDSBookWidgetInfo *)self coverURL];
  [v12 encodeObject:v6 forKey:@"coverURL"];

  v7 = [(BDSBookWidgetInfo *)self pageProgressionDirection];
  [v12 encodeObject:v7 forKey:@"pageProgressionDirection"];

  v8 = [(BDSBookWidgetInfo *)self libraryContentAssetType];
  [v12 encodeObject:v8 forKey:@"libraryContentAssetType"];

  v9 = [(BDSBookWidgetInfo *)self cloudAssetType];
  [v12 encodeObject:v9 forKey:@"cloudAssetType"];

  v10 = [(BDSBookWidgetInfo *)self totalDuration];
  [v12 encodeObject:v10 forKey:@"totalDuration"];

  v11 = [(BDSBookWidgetInfo *)self lastEngagedDate];
  [v12 encodeObject:v11 forKey:@"lastEngagedDate"];

  [v12 encodeBool:-[BDSBookWidgetInfo isTrackedAsRecent](self forKey:{"isTrackedAsRecent"), @"isTrackedAsRecent"}];
  [v12 encodeBool:-[BDSBookWidgetInfo isExplicit](self forKey:{"isExplicit"), @"isExplicit"}];
}

- (BDSBookWidgetInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BDSBookWidgetInfo;
  v5 = [(BDSBookWidgetInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coverURL"];
    coverURL = v5->_coverURL;
    v5->_coverURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pageProgressionDirection"];
    pageProgressionDirection = v5->_pageProgressionDirection;
    v5->_pageProgressionDirection = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryContentAssetType"];
    libraryContentAssetType = v5->_libraryContentAssetType;
    v5->_libraryContentAssetType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudAssetType"];
    cloudAssetType = v5->_cloudAssetType;
    v5->_cloudAssetType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDuration"];
    totalDuration = v5->_totalDuration;
    v5->_totalDuration = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastEngagedDate"];
    lastEngagedDate = v5->_lastEngagedDate;
    v5->_lastEngagedDate = v20;

    v5->_isTrackedAsRecent = [v4 decodeBoolForKey:@"isTrackedAsRecent"];
    v5->_isExplicit = [v4 decodeBoolForKey:@"isExplicit"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v16 = [(BDSBookWidgetInfo *)self assetID];
  v4 = [(BDSBookWidgetInfo *)self title];
  v5 = [(BDSBookWidgetInfo *)self cloudAssetType];
  v6 = [(BDSBookWidgetInfo *)self lastEngagedDate];
  v7 = [(BDSBookWidgetInfo *)self isTrackedAsRecent];
  v8 = [(BDSBookWidgetInfo *)self coverURL];
  v9 = [NSNumber numberWithBool:[(BDSBookWidgetInfo *)self isExplicit]];
  v10 = [(BDSBookWidgetInfo *)self pageProgressionDirection];
  v11 = [(BDSBookWidgetInfo *)self libraryContentAssetType];
  v12 = [(BDSBookWidgetInfo *)self totalDuration];
  v13 = [NSString stringWithFormat:@"<%@:%p assetID=%@ title=%@ cloudAssetType=%@ lastEngagedDate=%@ isTrackedAsRecent=%d coverURL=%@ isExplicit=%@ pageProgressionDirection=%@ libraryContentAssetType=%@ duration=%@>", v15, self, v16, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end