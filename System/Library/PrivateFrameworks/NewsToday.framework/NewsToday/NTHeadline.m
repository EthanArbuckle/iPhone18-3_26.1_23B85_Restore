@interface NTHeadline
- (BOOL)isEqual:(id)a3;
- (CGRect)thumbnailFocalFrame;
- (NSString)description;
- (NTHeadline)init;
- (NTHeadline)initWithCoder:(id)a3;
- (NTHeadline)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTHeadline

- (NTHeadline)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTHeadline init]";
    v10 = 2080;
    v11 = "NTHeadline.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTHeadline init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTHeadline)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadline initWithIdentifier:];
  }

  v9.receiver = self;
  v9.super_class = NTHeadline;
  v5 = [(NTHeadline *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = [(NTHeadline *)self identifier];
    v7 = [v5 identifier];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(NTHeadline *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D30F48] descriptionWithObject:self];
  v4 = [(NTHeadline *)self title];
  [v3 addField:@"title" value:v4];

  v5 = [(NTHeadline *)self identifier];
  [v3 addField:@"identifier" object:v5];

  v6 = [(NTHeadline *)self shortExcerpt];
  [v3 addField:@"shortExcerpt" object:v6];

  v7 = [(NTHeadline *)self sourceTagID];
  [v3 addField:@"sourceTagID" object:v7];

  v8 = [(NTHeadline *)self sourceName];
  [v3 addField:@"sourceName" object:v8];

  v9 = [(NTHeadline *)self sourceNameImageRemoteURL];
  [v3 addField:@"sourceNameImageRemoteURL" object:v9];

  v10 = [(NTHeadline *)self thumbnailRemoteURL];
  [v3 addField:@"thumbnailRemoteURL" object:v10];

  v11 = [v3 descriptionString];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NTHeadline allocWithZone:a3];
  v5 = [(NTHeadline *)self identifier];
  v6 = [(NTHeadline *)v4 initWithIdentifier:v5];

  v7 = [(NTHeadline *)self title];
  [(NTHeadline *)v6 setTitle:v7];

  v8 = [(NTHeadline *)self titleCompact];
  [(NTHeadline *)v6 setTitleCompact:v8];

  v9 = [(NTHeadline *)self shortExcerpt];
  [(NTHeadline *)v6 setShortExcerpt:v9];

  v10 = [(NTHeadline *)self ageDisplayDate];
  [(NTHeadline *)v6 setAgeDisplayDate:v10];

  v11 = [(NTHeadline *)self sourceName];
  [(NTHeadline *)v6 setSourceName:v11];

  v12 = [(NTHeadline *)self compactSourceName];
  [(NTHeadline *)v6 setCompactSourceName:v12];

  v13 = [(NTHeadline *)self sourceTagID];
  [(NTHeadline *)v6 setSourceTagID:v13];

  v14 = [(NTHeadline *)self language];
  [(NTHeadline *)v6 setLanguage:v14];

  v15 = [(NTHeadline *)self sourceNameImageRemoteURL];
  [(NTHeadline *)v6 setSourceNameImageRemoteURL:v15];

  [(NTHeadline *)self sourceNameImageScale];
  [(NTHeadline *)v6 setSourceNameImageScale:?];
  v16 = [(NTHeadline *)self compactSourceNameImageRemoteURL];
  [(NTHeadline *)v6 setCompactSourceNameImageRemoteURL:v16];

  v17 = [(NTHeadline *)self thumbnailRemoteURL];
  [(NTHeadline *)v6 setThumbnailRemoteURL:v17];

  v18 = [(NTHeadline *)self thumbnailIdentifier];
  [(NTHeadline *)v6 setThumbnailIdentifier:v18];

  [(NTHeadline *)v6 setThumbnailSizePreset:[(NTHeadline *)self thumbnailSizePreset]];
  [(NTHeadline *)self thumbnailFocalFrame];
  [(NTHeadline *)v6 setThumbnailFocalFrame:?];
  v19 = [(NTHeadline *)self NewsURL];
  [(NTHeadline *)v6 setNewsURL:v19];

  v20 = [(NTHeadline *)self storyType];
  [(NTHeadline *)v6 setStoryType:v20];

  v21 = [(NTHeadline *)self storyTypeColorLight];
  [(NTHeadline *)v6 setStoryTypeColorLight:v21];

  v22 = [(NTHeadline *)self storyTypeColorDark];
  [(NTHeadline *)v6 setStoryTypeColorDark:v22];

  v23 = [(NTHeadline(Placeholder) *)self topicIDs];
  [(NTHeadline *)v6 setTopicIDs:v23];

  v24 = [(NTHeadline *)self shortExcerpt];
  [(NTHeadline *)v6 setShortExcerpt:v24];

  v25 = [(NTHeadline *)self analyticsElement];
  [(NTHeadline *)v6 setAnalyticsElement:v25];

  v26 = [(NTHeadline *)self adElement];
  [(NTHeadline *)v6 setAdElement:v26];

  [(NTHeadline *)v6 setSupportsSavingForLater:[(NTHeadline *)self supportsSavingForLater]];
  [(NTHeadline *)v6 setHiddenFromAutoFavorites:[(NTHeadline(Placeholder) *)self isHiddenFromAutoFavorites]];
  v27 = [(NTHeadline *)self personalizationMetadata];
  [(NTHeadline *)v6 setPersonalizationMetadata:v27];

  v28 = [(NTHeadline *)self backingElement];
  [(NTHeadline *)v6 setBackingElement:v28];

  v29 = [(NTHeadline *)self flintDocumentURL];
  [(NTHeadline *)v6 setFlintDocumentURL:v29];

  [(NTHeadline *)v6 setIsBundlePaid:[(NTHeadline *)self isBundlePaid]];
  [(NTHeadline *)v6 setAiGenerated:[(NTHeadline *)self isAIGenerated]];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadline encodeWithCoder:];
  }

  v5 = [(NTHeadline *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(NTHeadline *)self titleCompact];
  [v4 encodeObject:v6 forKey:@"titleCompact"];

  v7 = [(NTHeadline *)self shortExcerpt];
  [v4 encodeObject:v7 forKey:@"shortExcerpt"];

  v8 = [(NTHeadline *)self identifier];
  [v4 encodeObject:v8 forKey:@"identifier"];

  v9 = [(NTHeadline *)self ageDisplayDate];
  [v4 encodeObject:v9 forKey:@"ageDisplayDate"];

  v10 = [(NTHeadline *)self sourceName];
  [v4 encodeObject:v10 forKey:@"sourceName"];

  v11 = [(NTHeadline *)self compactSourceName];
  [v4 encodeObject:v11 forKey:@"compactSourceName"];

  v12 = [(NTHeadline *)self sourceTagID];
  [v4 encodeObject:v12 forKey:@"sourceIdentifier"];

  v13 = [(NTHeadline *)self language];
  [v4 encodeObject:v13 forKey:@"language"];

  v14 = [(NTHeadline *)self sourceNameImageRemoteURL];
  if (v14)
  {
    [v4 encodeObject:v14 forKey:@"sourceNameImageRemoteURL"];
  }

  [(NTHeadline *)self sourceNameImageScale];
  [v4 encodeDouble:@"sourceNameImageScale" forKey:?];
  v15 = [(NTHeadline *)self compactSourceNameImageRemoteURL];
  if (v15)
  {
    [v4 encodeObject:v15 forKey:@"compactSourceNameImageRemoteURL"];
  }

  v16 = [(NTHeadline *)self thumbnailRemoteURL];
  if (v16)
  {
    [v4 encodeObject:v16 forKey:@"thumbnailRemoteURL"];
  }

  v17 = [(NTHeadline *)self thumbnailIdentifier];
  if (v17)
  {
    [v4 encodeObject:v17 forKey:@"thumbnailIdentifier"];
  }

  [v4 encodeInteger:-[NTHeadline thumbnailSizePreset](self forKey:{"thumbnailSizePreset"), @"thumbnailSizePreset"}];
  v18 = MEMORY[0x277CCAE60];
  [(NTHeadline *)self thumbnailFocalFrame];
  v19 = [v18 nf_valueWithCGRect:?];
  [v4 encodeObject:v19 forKey:@"thumbnailFocalFrame"];

  [v4 encodeBool:-[NTHeadline needsPlaceholderThumbnail](self forKey:{"needsPlaceholderThumbnail"), @"needsPlaceholderThumbnail"}];
  v20 = [(NTHeadline *)self NewsURL];
  [v4 encodeObject:v20 forKey:@"NewsURL"];

  v21 = [(NTHeadline *)self storyType];
  [v4 encodeObject:v21 forKey:@"storyType"];

  v22 = [(NTHeadline *)self storyTypeColorLight];
  [v4 encodeObject:v22 forKey:@"storyTypeColorLight"];

  v23 = [(NTHeadline *)self storyTypeColorDark];
  [v4 encodeObject:v23 forKey:@"storyTypeColorDark"];

  v24 = [(NTHeadline(Placeholder) *)self topicIDs];
  if (v24)
  {
    [v4 encodeObject:v24 forKey:@"topicIDs"];
  }

  v25 = [(NTHeadline *)self analyticsElement];
  [v4 encodeObject:v25 forKey:@"analyticsElement"];

  v26 = [(NTHeadline *)self personalizationMetadata];
  [v4 encodeObject:v26 forKey:@"personalizationMetadata"];

  v27 = [(NTHeadline *)self adElement];
  [v4 encodeObject:v27 forKey:@"adElement"];

  v28 = [(NTHeadline *)self backingElement];
  [v4 encodeObject:v28 forKey:@"backingElement"];

  [v4 encodeBool:-[NTHeadline supportsSavingForLater](self forKey:{"supportsSavingForLater"), @"supportsSavingForLater"}];
  [v4 encodeBool:-[NTHeadline(Placeholder) isHiddenFromAutoFavorites](self forKey:{"isHiddenFromAutoFavorites"), @"hiddenFromAutoFavorites"}];
  v29 = [(NTHeadline *)self flintDocumentURL];
  [v4 encodeObject:v29 forKey:@"flintDocumentURL"];

  [v4 encodeBool:-[NTHeadline isBundlePaid](self forKey:{"isBundlePaid"), @"bundlePaid"}];
  [v4 encodeBool:-[NTHeadline isAIGenerated](self forKey:{"isAIGenerated"), @"aiGenerated"}];
}

- (NTHeadline)initWithCoder:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadline initWithCoder:];
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(NTHeadline *)self initWithIdentifier:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v6->_title;
    v6->_title = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleCompact"];
    titleCompact = v6->_titleCompact;
    v6->_titleCompact = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortExcerpt"];
    shortExcerpt = v6->_shortExcerpt;
    v6->_shortExcerpt = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ageDisplayDate"];
    ageDisplayDate = v6->_ageDisplayDate;
    v6->_ageDisplayDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceName"];
    sourceName = v6->_sourceName;
    v6->_sourceName = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compactSourceName"];
    compactSourceName = v6->_compactSourceName;
    v6->_compactSourceName = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    sourceTagID = v6->_sourceTagID;
    v6->_sourceTagID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v6->_language;
    v6->_language = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceNameImageRemoteURL"];
    sourceNameImageRemoteURL = v6->_sourceNameImageRemoteURL;
    v6->_sourceNameImageRemoteURL = v23;

    [v4 decodeDoubleForKey:@"sourceNameImageScale"];
    v6->_sourceNameImageScale = v25;
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compactSourceNameImageRemoteURL"];
    compactSourceNameImageRemoteURL = v6->_compactSourceNameImageRemoteURL;
    v6->_compactSourceNameImageRemoteURL = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailRemoteURL"];
    thumbnailRemoteURL = v6->_thumbnailRemoteURL;
    v6->_thumbnailRemoteURL = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailIdentifier"];
    thumbnailIdentifier = v6->_thumbnailIdentifier;
    v6->_thumbnailIdentifier = v30;

    v6->_thumbnailSizePreset = [v4 decodeIntegerForKey:@"thumbnailSizePreset"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailFocalFrame"];
    [v32 nf_CGRectValue];
    v6->_thumbnailFocalFrame.origin.x = v33;
    v6->_thumbnailFocalFrame.origin.y = v34;
    v6->_thumbnailFocalFrame.size.width = v35;
    v6->_thumbnailFocalFrame.size.height = v36;

    v6->_needsPlaceholderThumbnail = [v4 decodeBoolForKey:@"needsPlaceholderThumbnail"];
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NewsURL"];
    NewsURL = v6->_NewsURL;
    v6->_NewsURL = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storyType"];
    storyType = v6->_storyType;
    v6->_storyType = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storyTypeColorLight"];
    storyTypeColorLight = v6->_storyTypeColorLight;
    v6->_storyTypeColorLight = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storyTypeColorDark"];
    storyTypeColorDark = v6->_storyTypeColorDark;
    v6->_storyTypeColorDark = v43;

    v45 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"topicIDs"];
    topicIDs = v6->_topicIDs;
    v6->_topicIDs = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsElement"];
    analyticsElement = v6->_analyticsElement;
    v6->_analyticsElement = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adElement"];
    adElement = v6->_adElement;
    v6->_adElement = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personalizationMetadata"];
    personalizationMetadata = v6->_personalizationMetadata;
    v6->_personalizationMetadata = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backingElement"];
    backingElement = v6->_backingElement;
    v6->_backingElement = v56;

    v6->_supportsSavingForLater = [v4 decodeBoolForKey:@"supportsSavingForLater"];
    v6->_hiddenFromAutoFavorites = [v4 decodeBoolForKey:@"hiddenFromAutoFavorites"];
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flintDocumentURL"];
    flintDocumentURL = v6->_flintDocumentURL;
    v6->_flintDocumentURL = v58;

    v6->_isBundlePaid = [v4 decodeBoolForKey:@"bundlePaid"];
    v6->_aiGenerated = [v4 decodeBoolForKey:@"aiGenerated"];
  }

  return v6;
}

- (CGRect)thumbnailFocalFrame
{
  x = self->_thumbnailFocalFrame.origin.x;
  y = self->_thumbnailFocalFrame.origin.y;
  width = self->_thumbnailFocalFrame.size.width;
  height = self->_thumbnailFocalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "identifier != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "aCoder", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "aDecoder", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end