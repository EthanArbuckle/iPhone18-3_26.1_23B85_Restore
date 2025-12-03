@interface NTHeadline
- (BOOL)isEqual:(id)equal;
- (CGRect)thumbnailFocalFrame;
- (NSString)description;
- (NTHeadline)init;
- (NTHeadline)initWithCoder:(id)coder;
- (NTHeadline)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (NTHeadline)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadline initWithIdentifier:];
  }

  v9.receiver = self;
  v9.super_class = NTHeadline;
  v5 = [(NTHeadline *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    identifier = [(NTHeadline *)self identifier];
    identifier2 = [v5 identifier];
    v8 = [identifier isEqual:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(NTHeadline *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D30F48] descriptionWithObject:self];
  title = [(NTHeadline *)self title];
  [v3 addField:@"title" value:title];

  identifier = [(NTHeadline *)self identifier];
  [v3 addField:@"identifier" object:identifier];

  shortExcerpt = [(NTHeadline *)self shortExcerpt];
  [v3 addField:@"shortExcerpt" object:shortExcerpt];

  sourceTagID = [(NTHeadline *)self sourceTagID];
  [v3 addField:@"sourceTagID" object:sourceTagID];

  sourceName = [(NTHeadline *)self sourceName];
  [v3 addField:@"sourceName" object:sourceName];

  sourceNameImageRemoteURL = [(NTHeadline *)self sourceNameImageRemoteURL];
  [v3 addField:@"sourceNameImageRemoteURL" object:sourceNameImageRemoteURL];

  thumbnailRemoteURL = [(NTHeadline *)self thumbnailRemoteURL];
  [v3 addField:@"thumbnailRemoteURL" object:thumbnailRemoteURL];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NTHeadline allocWithZone:zone];
  identifier = [(NTHeadline *)self identifier];
  v6 = [(NTHeadline *)v4 initWithIdentifier:identifier];

  title = [(NTHeadline *)self title];
  [(NTHeadline *)v6 setTitle:title];

  titleCompact = [(NTHeadline *)self titleCompact];
  [(NTHeadline *)v6 setTitleCompact:titleCompact];

  shortExcerpt = [(NTHeadline *)self shortExcerpt];
  [(NTHeadline *)v6 setShortExcerpt:shortExcerpt];

  ageDisplayDate = [(NTHeadline *)self ageDisplayDate];
  [(NTHeadline *)v6 setAgeDisplayDate:ageDisplayDate];

  sourceName = [(NTHeadline *)self sourceName];
  [(NTHeadline *)v6 setSourceName:sourceName];

  compactSourceName = [(NTHeadline *)self compactSourceName];
  [(NTHeadline *)v6 setCompactSourceName:compactSourceName];

  sourceTagID = [(NTHeadline *)self sourceTagID];
  [(NTHeadline *)v6 setSourceTagID:sourceTagID];

  language = [(NTHeadline *)self language];
  [(NTHeadline *)v6 setLanguage:language];

  sourceNameImageRemoteURL = [(NTHeadline *)self sourceNameImageRemoteURL];
  [(NTHeadline *)v6 setSourceNameImageRemoteURL:sourceNameImageRemoteURL];

  [(NTHeadline *)self sourceNameImageScale];
  [(NTHeadline *)v6 setSourceNameImageScale:?];
  compactSourceNameImageRemoteURL = [(NTHeadline *)self compactSourceNameImageRemoteURL];
  [(NTHeadline *)v6 setCompactSourceNameImageRemoteURL:compactSourceNameImageRemoteURL];

  thumbnailRemoteURL = [(NTHeadline *)self thumbnailRemoteURL];
  [(NTHeadline *)v6 setThumbnailRemoteURL:thumbnailRemoteURL];

  thumbnailIdentifier = [(NTHeadline *)self thumbnailIdentifier];
  [(NTHeadline *)v6 setThumbnailIdentifier:thumbnailIdentifier];

  [(NTHeadline *)v6 setThumbnailSizePreset:[(NTHeadline *)self thumbnailSizePreset]];
  [(NTHeadline *)self thumbnailFocalFrame];
  [(NTHeadline *)v6 setThumbnailFocalFrame:?];
  newsURL = [(NTHeadline *)self NewsURL];
  [(NTHeadline *)v6 setNewsURL:newsURL];

  storyType = [(NTHeadline *)self storyType];
  [(NTHeadline *)v6 setStoryType:storyType];

  storyTypeColorLight = [(NTHeadline *)self storyTypeColorLight];
  [(NTHeadline *)v6 setStoryTypeColorLight:storyTypeColorLight];

  storyTypeColorDark = [(NTHeadline *)self storyTypeColorDark];
  [(NTHeadline *)v6 setStoryTypeColorDark:storyTypeColorDark];

  topicIDs = [(NTHeadline(Placeholder) *)self topicIDs];
  [(NTHeadline *)v6 setTopicIDs:topicIDs];

  shortExcerpt2 = [(NTHeadline *)self shortExcerpt];
  [(NTHeadline *)v6 setShortExcerpt:shortExcerpt2];

  analyticsElement = [(NTHeadline *)self analyticsElement];
  [(NTHeadline *)v6 setAnalyticsElement:analyticsElement];

  adElement = [(NTHeadline *)self adElement];
  [(NTHeadline *)v6 setAdElement:adElement];

  [(NTHeadline *)v6 setSupportsSavingForLater:[(NTHeadline *)self supportsSavingForLater]];
  [(NTHeadline *)v6 setHiddenFromAutoFavorites:[(NTHeadline(Placeholder) *)self isHiddenFromAutoFavorites]];
  personalizationMetadata = [(NTHeadline *)self personalizationMetadata];
  [(NTHeadline *)v6 setPersonalizationMetadata:personalizationMetadata];

  backingElement = [(NTHeadline *)self backingElement];
  [(NTHeadline *)v6 setBackingElement:backingElement];

  flintDocumentURL = [(NTHeadline *)self flintDocumentURL];
  [(NTHeadline *)v6 setFlintDocumentURL:flintDocumentURL];

  [(NTHeadline *)v6 setIsBundlePaid:[(NTHeadline *)self isBundlePaid]];
  [(NTHeadline *)v6 setAiGenerated:[(NTHeadline *)self isAIGenerated]];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadline encodeWithCoder:];
  }

  title = [(NTHeadline *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  titleCompact = [(NTHeadline *)self titleCompact];
  [coderCopy encodeObject:titleCompact forKey:@"titleCompact"];

  shortExcerpt = [(NTHeadline *)self shortExcerpt];
  [coderCopy encodeObject:shortExcerpt forKey:@"shortExcerpt"];

  identifier = [(NTHeadline *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  ageDisplayDate = [(NTHeadline *)self ageDisplayDate];
  [coderCopy encodeObject:ageDisplayDate forKey:@"ageDisplayDate"];

  sourceName = [(NTHeadline *)self sourceName];
  [coderCopy encodeObject:sourceName forKey:@"sourceName"];

  compactSourceName = [(NTHeadline *)self compactSourceName];
  [coderCopy encodeObject:compactSourceName forKey:@"compactSourceName"];

  sourceTagID = [(NTHeadline *)self sourceTagID];
  [coderCopy encodeObject:sourceTagID forKey:@"sourceIdentifier"];

  language = [(NTHeadline *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  sourceNameImageRemoteURL = [(NTHeadline *)self sourceNameImageRemoteURL];
  if (sourceNameImageRemoteURL)
  {
    [coderCopy encodeObject:sourceNameImageRemoteURL forKey:@"sourceNameImageRemoteURL"];
  }

  [(NTHeadline *)self sourceNameImageScale];
  [coderCopy encodeDouble:@"sourceNameImageScale" forKey:?];
  compactSourceNameImageRemoteURL = [(NTHeadline *)self compactSourceNameImageRemoteURL];
  if (compactSourceNameImageRemoteURL)
  {
    [coderCopy encodeObject:compactSourceNameImageRemoteURL forKey:@"compactSourceNameImageRemoteURL"];
  }

  thumbnailRemoteURL = [(NTHeadline *)self thumbnailRemoteURL];
  if (thumbnailRemoteURL)
  {
    [coderCopy encodeObject:thumbnailRemoteURL forKey:@"thumbnailRemoteURL"];
  }

  thumbnailIdentifier = [(NTHeadline *)self thumbnailIdentifier];
  if (thumbnailIdentifier)
  {
    [coderCopy encodeObject:thumbnailIdentifier forKey:@"thumbnailIdentifier"];
  }

  [coderCopy encodeInteger:-[NTHeadline thumbnailSizePreset](self forKey:{"thumbnailSizePreset"), @"thumbnailSizePreset"}];
  v18 = MEMORY[0x277CCAE60];
  [(NTHeadline *)self thumbnailFocalFrame];
  v19 = [v18 nf_valueWithCGRect:?];
  [coderCopy encodeObject:v19 forKey:@"thumbnailFocalFrame"];

  [coderCopy encodeBool:-[NTHeadline needsPlaceholderThumbnail](self forKey:{"needsPlaceholderThumbnail"), @"needsPlaceholderThumbnail"}];
  newsURL = [(NTHeadline *)self NewsURL];
  [coderCopy encodeObject:newsURL forKey:@"NewsURL"];

  storyType = [(NTHeadline *)self storyType];
  [coderCopy encodeObject:storyType forKey:@"storyType"];

  storyTypeColorLight = [(NTHeadline *)self storyTypeColorLight];
  [coderCopy encodeObject:storyTypeColorLight forKey:@"storyTypeColorLight"];

  storyTypeColorDark = [(NTHeadline *)self storyTypeColorDark];
  [coderCopy encodeObject:storyTypeColorDark forKey:@"storyTypeColorDark"];

  topicIDs = [(NTHeadline(Placeholder) *)self topicIDs];
  if (topicIDs)
  {
    [coderCopy encodeObject:topicIDs forKey:@"topicIDs"];
  }

  analyticsElement = [(NTHeadline *)self analyticsElement];
  [coderCopy encodeObject:analyticsElement forKey:@"analyticsElement"];

  personalizationMetadata = [(NTHeadline *)self personalizationMetadata];
  [coderCopy encodeObject:personalizationMetadata forKey:@"personalizationMetadata"];

  adElement = [(NTHeadline *)self adElement];
  [coderCopy encodeObject:adElement forKey:@"adElement"];

  backingElement = [(NTHeadline *)self backingElement];
  [coderCopy encodeObject:backingElement forKey:@"backingElement"];

  [coderCopy encodeBool:-[NTHeadline supportsSavingForLater](self forKey:{"supportsSavingForLater"), @"supportsSavingForLater"}];
  [coderCopy encodeBool:-[NTHeadline(Placeholder) isHiddenFromAutoFavorites](self forKey:{"isHiddenFromAutoFavorites"), @"hiddenFromAutoFavorites"}];
  flintDocumentURL = [(NTHeadline *)self flintDocumentURL];
  [coderCopy encodeObject:flintDocumentURL forKey:@"flintDocumentURL"];

  [coderCopy encodeBool:-[NTHeadline isBundlePaid](self forKey:{"isBundlePaid"), @"bundlePaid"}];
  [coderCopy encodeBool:-[NTHeadline isAIGenerated](self forKey:{"isAIGenerated"), @"aiGenerated"}];
}

- (NTHeadline)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadline initWithCoder:];
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(NTHeadline *)self initWithIdentifier:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v6->_title;
    v6->_title = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleCompact"];
    titleCompact = v6->_titleCompact;
    v6->_titleCompact = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortExcerpt"];
    shortExcerpt = v6->_shortExcerpt;
    v6->_shortExcerpt = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ageDisplayDate"];
    ageDisplayDate = v6->_ageDisplayDate;
    v6->_ageDisplayDate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceName"];
    sourceName = v6->_sourceName;
    v6->_sourceName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compactSourceName"];
    compactSourceName = v6->_compactSourceName;
    v6->_compactSourceName = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    sourceTagID = v6->_sourceTagID;
    v6->_sourceTagID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v6->_language;
    v6->_language = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceNameImageRemoteURL"];
    sourceNameImageRemoteURL = v6->_sourceNameImageRemoteURL;
    v6->_sourceNameImageRemoteURL = v23;

    [coderCopy decodeDoubleForKey:@"sourceNameImageScale"];
    v6->_sourceNameImageScale = v25;
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compactSourceNameImageRemoteURL"];
    compactSourceNameImageRemoteURL = v6->_compactSourceNameImageRemoteURL;
    v6->_compactSourceNameImageRemoteURL = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailRemoteURL"];
    thumbnailRemoteURL = v6->_thumbnailRemoteURL;
    v6->_thumbnailRemoteURL = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailIdentifier"];
    thumbnailIdentifier = v6->_thumbnailIdentifier;
    v6->_thumbnailIdentifier = v30;

    v6->_thumbnailSizePreset = [coderCopy decodeIntegerForKey:@"thumbnailSizePreset"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailFocalFrame"];
    [v32 nf_CGRectValue];
    v6->_thumbnailFocalFrame.origin.x = v33;
    v6->_thumbnailFocalFrame.origin.y = v34;
    v6->_thumbnailFocalFrame.size.width = v35;
    v6->_thumbnailFocalFrame.size.height = v36;

    v6->_needsPlaceholderThumbnail = [coderCopy decodeBoolForKey:@"needsPlaceholderThumbnail"];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NewsURL"];
    NewsURL = v6->_NewsURL;
    v6->_NewsURL = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storyType"];
    storyType = v6->_storyType;
    v6->_storyType = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storyTypeColorLight"];
    storyTypeColorLight = v6->_storyTypeColorLight;
    v6->_storyTypeColorLight = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storyTypeColorDark"];
    storyTypeColorDark = v6->_storyTypeColorDark;
    v6->_storyTypeColorDark = v43;

    v45 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"topicIDs"];
    topicIDs = v6->_topicIDs;
    v6->_topicIDs = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsElement"];
    analyticsElement = v6->_analyticsElement;
    v6->_analyticsElement = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adElement"];
    adElement = v6->_adElement;
    v6->_adElement = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personalizationMetadata"];
    personalizationMetadata = v6->_personalizationMetadata;
    v6->_personalizationMetadata = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backingElement"];
    backingElement = v6->_backingElement;
    v6->_backingElement = v56;

    v6->_supportsSavingForLater = [coderCopy decodeBoolForKey:@"supportsSavingForLater"];
    v6->_hiddenFromAutoFavorites = [coderCopy decodeBoolForKey:@"hiddenFromAutoFavorites"];
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flintDocumentURL"];
    flintDocumentURL = v6->_flintDocumentURL;
    v6->_flintDocumentURL = v58;

    v6->_isBundlePaid = [coderCopy decodeBoolForKey:@"bundlePaid"];
    v6->_aiGenerated = [coderCopy decodeBoolForKey:@"aiGenerated"];
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