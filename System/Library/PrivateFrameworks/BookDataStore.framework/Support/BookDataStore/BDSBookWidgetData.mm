@interface BDSBookWidgetData
- (BDSBookWidgetData)initWithAssetID:(id)d title:(id)title pageProgressionDirection:(id)direction coverURL:(id)l readingProgress:(id)progress totalDuration:(id)duration cloudAssetType:(id)type libraryAssetType:(id)self0;
- (BDSBookWidgetData)initWithCoder:(id)coder;
- (BOOL)hasSignificantDifferenceWith:(id)with;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSBookWidgetData

- (BDSBookWidgetData)initWithAssetID:(id)d title:(id)title pageProgressionDirection:(id)direction coverURL:(id)l readingProgress:(id)progress totalDuration:(id)duration cloudAssetType:(id)type libraryAssetType:(id)self0
{
  dCopy = d;
  titleCopy = title;
  directionCopy = direction;
  lCopy = l;
  progressCopy = progress;
  durationCopy = duration;
  typeCopy = type;
  assetTypeCopy = assetType;
  v29.receiver = self;
  v29.super_class = BDSBookWidgetData;
  v19 = [(BDSBookWidgetData *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetID, d);
    objc_storeStrong(&v20->_title, title);
    objc_storeStrong(&v20->_pageProgressionDirection, direction);
    objc_storeStrong(&v20->_coverURL, l);
    objc_storeStrong(&v20->_readingProgress, progress);
    objc_storeStrong(&v20->_totalDuration, duration);
    objc_storeStrong(&v20->_cloudAssetType, type);
    if (assetTypeCopy)
    {
      v21 = assetTypeCopy;
    }

    else
    {
      v21 = @"LibraryContentAssetTypeUnknown";
    }

    objc_storeStrong(&v20->_libraryAssetType, v21);
  }

  return v20;
}

- (BDSBookWidgetData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = BDSBookWidgetData;
  v5 = [(BDSBookWidgetData *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pageProgressionDirection"];
    pageProgressionDirection = v5->_pageProgressionDirection;
    v5->_pageProgressionDirection = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coverURL"];
    coverURL = v5->_coverURL;
    v5->_coverURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readingProgress"];
    readingProgress = v5->_readingProgress;
    v5->_readingProgress = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDuration"];
    totalDuration = v5->_totalDuration;
    v5->_totalDuration = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudAssetType"];
    cloudAssetType = v5->_cloudAssetType;
    v5->_cloudAssetType = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryContentAssetType"];
    libraryAssetType = v5->_libraryAssetType;
    v5->_libraryAssetType = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetID = [(BDSBookWidgetData *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetID"];

  title = [(BDSBookWidgetData *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  pageProgressionDirection = [(BDSBookWidgetData *)self pageProgressionDirection];
  [coderCopy encodeObject:pageProgressionDirection forKey:@"pageProgressionDirection"];

  coverURL = [(BDSBookWidgetData *)self coverURL];
  [coderCopy encodeObject:coverURL forKey:@"coverURL"];

  readingProgress = [(BDSBookWidgetData *)self readingProgress];
  [coderCopy encodeObject:readingProgress forKey:@"readingProgress"];

  totalDuration = [(BDSBookWidgetData *)self totalDuration];
  [coderCopy encodeObject:totalDuration forKey:@"totalDuration"];

  cloudAssetType = [(BDSBookWidgetData *)self cloudAssetType];
  [coderCopy encodeObject:cloudAssetType forKey:@"cloudAssetType"];

  libraryAssetType = [(BDSBookWidgetData *)self libraryAssetType];
  [coderCopy encodeObject:libraryAssetType forKey:@"libraryContentAssetType"];
}

- (BOOL)hasSignificantDifferenceWith:(id)with
{
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    if (withCopy == self)
    {
      goto LABEL_59;
    }

    assetID = [(BDSBookWidgetData *)self assetID];
    assetID2 = [(BDSBookWidgetData *)v5 assetID];
    v8 = assetID;
    v9 = assetID2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = v8;
      if (!v9)
      {
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

      v12 = [v8 isEqualToString:v9];

      if (!v12)
      {
        goto LABEL_43;
      }
    }

    readingProgress = [(BDSBookWidgetData *)self readingProgress];
    readingProgress2 = [(BDSBookWidgetData *)v5 readingProgress];
    v11 = readingProgress;
    v16 = readingProgress2;
    v17 = v16;
    if (v11 == v16)
    {
    }

    else
    {
      v18 = v11;
      if (!v16)
      {
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v19 = [v11 isEqualToNumber:v16];

      if (!v19)
      {
        goto LABEL_41;
      }
    }

    totalDuration = [(BDSBookWidgetData *)self totalDuration];
    totalDuration2 = [(BDSBookWidgetData *)v5 totalDuration];
    v18 = totalDuration;
    v22 = totalDuration2;
    v23 = v22;
    if (v18 == v22)
    {
    }

    else
    {
      v24 = v18;
      if (!v22)
      {
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }

      v25 = [v18 isEqualToNumber:v22];

      if (!v25)
      {
        goto LABEL_39;
      }
    }

    title = [(BDSBookWidgetData *)self title];
    title2 = [(BDSBookWidgetData *)v5 title];
    v24 = title;
    v28 = title2;
    v57 = v28;
    if (v24 == v28)
    {
    }

    else
    {
      v29 = v24;
      if (!v28)
      {
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      v55 = [v24 isEqualToString:v28];

      if (!v55)
      {
        goto LABEL_37;
      }
    }

    v56 = v24;
    coverURL = [(BDSBookWidgetData *)self coverURL];
    coverURL2 = [(BDSBookWidgetData *)v5 coverURL];
    v29 = coverURL;
    v32 = coverURL2;
    v33 = v32;
    v54 = v32;
    if (v29 == v32)
    {
    }

    else
    {
      if (!v32)
      {

LABEL_35:
        v24 = v56;
        goto LABEL_36;
      }

      v52 = [v29 isEqualToString:v32];

      if (!v52)
      {
        goto LABEL_35;
      }
    }

    v53 = v29;
    cloudAssetType = [(BDSBookWidgetData *)self cloudAssetType];
    cloudAssetType2 = [(BDSBookWidgetData *)v5 cloudAssetType];
    v36 = cloudAssetType;
    v37 = cloudAssetType2;
    v38 = v37;
    v50 = v37;
    v51 = v36;
    if (v36 == v37)
    {
    }

    else
    {
      if (!v37)
      {
        v49 = 1;
LABEL_57:
        v40 = v53;

        v39 = v49;
LABEL_58:

        if (v39)
        {
LABEL_44:
          v13 = sub_10000DE28();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v59 = v5;
            v60 = 2112;
            selfCopy2 = self;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

LABEL_59:
        v41 = 0;
        goto LABEL_60;
      }

      v48 = [v36 isEqualToString:v37];

      if (!v48)
      {
        v39 = 1;
        v40 = v53;
        goto LABEL_58;
      }
    }

    libraryAssetType = [(BDSBookWidgetData *)self libraryAssetType];
    libraryAssetType2 = [(BDSBookWidgetData *)v5 libraryAssetType];
    v36 = libraryAssetType;
    v44 = libraryAssetType2;
    v45 = v44;
    if (v36 == v44)
    {
      v49 = 0;
    }

    else
    {
      if (v44)
      {
        v46 = [v36 isEqualToString:v44] ^ 1;
      }

      else
      {
        LOBYTE(v46) = 1;
      }

      v49 = v46;
    }

    goto LABEL_57;
  }

  v13 = sub_10000DE28();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v59 = 0;
    v60 = 2112;
    selfCopy2 = self;
LABEL_46:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found changes between %@ and %@:", buf, 0x16u);
  }

LABEL_47:

  v41 = 1;
LABEL_60:

  return v41;
}

- (id)description
{
  assetID = [(BDSBookWidgetData *)self assetID];
  title = [(BDSBookWidgetData *)self title];
  pageProgressionDirection = [(BDSBookWidgetData *)self pageProgressionDirection];
  cloudAssetType = [(BDSBookWidgetData *)self cloudAssetType];
  libraryAssetType = [(BDSBookWidgetData *)self libraryAssetType];
  readingProgress = [(BDSBookWidgetData *)self readingProgress];
  [readingProgress doubleValue];
  v10 = v9 * 100.0;
  totalDuration = [(BDSBookWidgetData *)self totalDuration];
  coverURL = [(BDSBookWidgetData *)self coverURL];
  v13 = &stru_10024C800;
  if (!coverURL)
  {
    v13 = @" missing coverURL";
  }

  v14 = [NSString stringWithFormat:@"[%@ '%@' %@ %@ %@ (%.0f%%) %@%@]", assetID, title, pageProgressionDirection, cloudAssetType, libraryAssetType, *&v10, totalDuration, v13];

  return v14;
}

@end