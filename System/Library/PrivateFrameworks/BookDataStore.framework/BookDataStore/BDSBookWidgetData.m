@interface BDSBookWidgetData
- (BDSBookWidgetData)initWithAssetID:(id)a3 title:(id)a4 pageProgressionDirection:(id)a5 coverURL:(id)a6 readingProgress:(id)a7 totalDuration:(id)a8 cloudAssetType:(id)a9 libraryAssetType:(id)a10;
- (BDSBookWidgetData)initWithCoder:(id)a3;
- (BOOL)hasSignificantDifferenceWith:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSBookWidgetData

- (BDSBookWidgetData)initWithAssetID:(id)a3 title:(id)a4 pageProgressionDirection:(id)a5 coverURL:(id)a6 readingProgress:(id)a7 totalDuration:(id)a8 cloudAssetType:(id)a9 libraryAssetType:(id)a10
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v17 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = BDSBookWidgetData;
  v19 = [(BDSBookWidgetData *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetID, a3);
    objc_storeStrong(&v20->_title, a4);
    objc_storeStrong(&v20->_pageProgressionDirection, a5);
    objc_storeStrong(&v20->_coverURL, a6);
    objc_storeStrong(&v20->_readingProgress, a7);
    objc_storeStrong(&v20->_totalDuration, a8);
    objc_storeStrong(&v20->_cloudAssetType, a9);
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = @"LibraryContentAssetTypeUnknown";
    }

    objc_storeStrong(&v20->_libraryAssetType, v21);
  }

  return v20;
}

- (BDSBookWidgetData)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BDSBookWidgetData;
  v5 = [(BDSBookWidgetData *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pageProgressionDirection"];
    pageProgressionDirection = v5->_pageProgressionDirection;
    v5->_pageProgressionDirection = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coverURL"];
    coverURL = v5->_coverURL;
    v5->_coverURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readingProgress"];
    readingProgress = v5->_readingProgress;
    v5->_readingProgress = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDuration"];
    totalDuration = v5->_totalDuration;
    v5->_totalDuration = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudAssetType"];
    cloudAssetType = v5->_cloudAssetType;
    v5->_cloudAssetType = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryContentAssetType"];
    libraryAssetType = v5->_libraryAssetType;
    v5->_libraryAssetType = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSBookWidgetData *)self assetID];
  [v4 encodeObject:v5 forKey:@"assetID"];

  v6 = [(BDSBookWidgetData *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(BDSBookWidgetData *)self pageProgressionDirection];
  [v4 encodeObject:v7 forKey:@"pageProgressionDirection"];

  v8 = [(BDSBookWidgetData *)self coverURL];
  [v4 encodeObject:v8 forKey:@"coverURL"];

  v9 = [(BDSBookWidgetData *)self readingProgress];
  [v4 encodeObject:v9 forKey:@"readingProgress"];

  v10 = [(BDSBookWidgetData *)self totalDuration];
  [v4 encodeObject:v10 forKey:@"totalDuration"];

  v11 = [(BDSBookWidgetData *)self cloudAssetType];
  [v4 encodeObject:v11 forKey:@"cloudAssetType"];

  v12 = [(BDSBookWidgetData *)self libraryAssetType];
  [v4 encodeObject:v12 forKey:@"libraryContentAssetType"];
}

- (BOOL)hasSignificantDifferenceWith:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      goto LABEL_59;
    }

    v6 = [(BDSBookWidgetData *)self assetID];
    v7 = [(BDSBookWidgetData *)v5 assetID];
    v8 = v6;
    v9 = v7;
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

    v14 = [(BDSBookWidgetData *)self readingProgress];
    v15 = [(BDSBookWidgetData *)v5 readingProgress];
    v11 = v14;
    v16 = v15;
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

    v20 = [(BDSBookWidgetData *)self totalDuration];
    v21 = [(BDSBookWidgetData *)v5 totalDuration];
    v18 = v20;
    v22 = v21;
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

    v26 = [(BDSBookWidgetData *)self title];
    v27 = [(BDSBookWidgetData *)v5 title];
    v24 = v26;
    v28 = v27;
    v58 = v28;
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

      v56 = [v24 isEqualToString:v28];

      if (!v56)
      {
        goto LABEL_37;
      }
    }

    v57 = v24;
    v30 = [(BDSBookWidgetData *)self coverURL];
    v31 = [(BDSBookWidgetData *)v5 coverURL];
    v29 = v30;
    v32 = v31;
    v33 = v32;
    v55 = v32;
    if (v29 == v32)
    {
    }

    else
    {
      if (!v32)
      {

LABEL_35:
        v24 = v57;
        goto LABEL_36;
      }

      v53 = [v29 isEqualToString:v32];

      if (!v53)
      {
        goto LABEL_35;
      }
    }

    v54 = v29;
    v34 = [(BDSBookWidgetData *)self cloudAssetType];
    v35 = [(BDSBookWidgetData *)v5 cloudAssetType];
    v36 = v34;
    v37 = v35;
    v38 = v37;
    v51 = v37;
    v52 = v36;
    if (v36 == v37)
    {
    }

    else
    {
      if (!v37)
      {
        v50 = 1;
LABEL_57:
        v40 = v54;

        v39 = v50;
LABEL_58:

        if (v39)
        {
LABEL_44:
          v13 = BDSWidgetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v60 = v5;
            v61 = 2112;
            v62 = self;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

LABEL_59:
        v41 = 0;
        goto LABEL_60;
      }

      v49 = [v36 isEqualToString:v37];

      if (!v49)
      {
        v39 = 1;
        v40 = v54;
        goto LABEL_58;
      }
    }

    v42 = [(BDSBookWidgetData *)self libraryAssetType];
    v43 = [(BDSBookWidgetData *)v5 libraryAssetType];
    v36 = v42;
    v44 = v43;
    v45 = v44;
    if (v36 == v44)
    {
      v50 = 0;
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

      v50 = v46;
    }

    goto LABEL_57;
  }

  v13 = BDSWidgetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v60 = 0;
    v61 = 2112;
    v62 = self;
LABEL_46:
    _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "Found changes between %@ and %@:", buf, 0x16u);
  }

LABEL_47:

  v41 = 1;
LABEL_60:

  v47 = *MEMORY[0x1E69E9840];
  return v41;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BDSBookWidgetData *)self assetID];
  v5 = [(BDSBookWidgetData *)self title];
  v6 = [(BDSBookWidgetData *)self pageProgressionDirection];
  v7 = [(BDSBookWidgetData *)self cloudAssetType];
  v8 = [(BDSBookWidgetData *)self libraryAssetType];
  v9 = [(BDSBookWidgetData *)self readingProgress];
  [v9 doubleValue];
  v11 = v10 * 100.0;
  v12 = [(BDSBookWidgetData *)self totalDuration];
  v13 = [(BDSBookWidgetData *)self coverURL];
  v14 = &stru_1F5E67610;
  if (!v13)
  {
    v14 = @" missing coverURL";
  }

  v15 = [v3 stringWithFormat:@"[%@ '%@' %@ %@ %@ (%.0f%%) %@%@]", v4, v5, v6, v7, v8, *&v11, v12, v14];

  return v15;
}

@end