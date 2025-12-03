@interface CPLMomentShare
+ (id)cplAdditionalSecureClassesForProperty:(id)property;
- (CPLMomentShare)initWithCoder:(id)coder;
- (CPLMomentShare)initWithScopeChange:(id)change;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)translateToScopeChangeWithScopeType:(int64_t)type;
- (void)updateScopeChange:(id)change;
@end

@implementation CPLMomentShare

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLMomentShare)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPLMomentShare;
  v5 = [(CPLMomentShare *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:coderCopy];
  }

  return v6;
}

+ (id)cplAdditionalSecureClassesForProperty:(id)property
{
  propertyCopy = property;
  if (cplAdditionalSecureClassesForProperty__onceToken_124 != -1)
  {
    dispatch_once(&cplAdditionalSecureClassesForProperty__onceToken_124, &__block_literal_global_126);
  }

  v5 = [cplAdditionalSecureClassesForProperty__additionalClasses_123 objectForKey:propertyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___CPLMomentShare;
    v7 = objc_msgSendSuper2(&v10, sel_cplAdditionalSecureClassesForProperty_, propertyCopy);
  }

  v8 = v7;

  return v8;
}

void __69__CPLMomentShare_CPLNSCoding__cplAdditionalSecureClassesForProperty___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"participants";
  v0 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = cplAdditionalSecureClassesForProperty__additionalClasses_123;
  cplAdditionalSecureClassesForProperty__additionalClasses_123 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v19 = objc_alloc(MEMORY[0x1E696AD60]);
  v18 = objc_opt_class();
  identifier = [(CPLMomentShare *)self identifier];
  title = [(CPLMomentShare *)self title];
  creationDate = [(CPLMomentShare *)self creationDate];
  assetCount = [(CPLMomentShare *)self assetCount];
  photosCount = [(CPLMomentShare *)self photosCount];
  videosCount = [(CPLMomentShare *)self videosCount];
  expiryDate = [(CPLMomentShare *)self expiryDate];
  shareURL = [(CPLMomentShare *)self shareURL];
  cpl_redactedShareURL = [shareURL cpl_redactedShareURL];
  v17 = assetCount;
  v12 = identifier;
  v13 = [v19 initWithFormat:@"<%@ %@ '%@'> %@ %lu assets (%lu photos %lu videos) expiry %@ url %@", v18, identifier, title, creationDate, v17, photosCount, videosCount, expiryDate, cpl_redactedShareURL];

  originatingScopeIdentifier = [(CPLMomentShare *)self originatingScopeIdentifier];
  v15 = originatingScopeIdentifier;
  if (originatingScopeIdentifier)
  {
    [v13 appendFormat:@" orig %@", originatingScopeIdentifier];
  }

  return v13;
}

- (id)translateToScopeChangeWithScopeType:(int64_t)type
{
  v4 = [(CPLScopeChange *)CPLMomentShareScopeChange newScopeChangeWithScopeIdentifier:self->_identifier type:type];
  [(CPLMomentShare *)self updateScopeChange:v4];

  return v4;
}

- (void)updateScopeChange:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  share = [changeCopy share];
  if (!share)
  {
    share = objc_alloc_init(CPLShare);
    [(CPLShare *)share setURL:self->_shareURL];
    participants = [(CPLMomentShare *)self participants];
    if ([participants count])
    {
      v7 = [CPLMomentShareParticipant shareParticipantsFromMomentShareParticipants:participants];
      [(CPLShare *)share setParticipants:v7];
    }

    v17 = participants;
    if (self->_mode >= 4u)
    {
      mode = 2;
    }

    else
    {
      mode = self->_mode;
    }

    [(CPLShare *)share setPublicPermission:mode];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    participants2 = [(CPLShare *)share participants];
    v10 = [participants2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(participants2);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 role] == 1)
          {
            v15 = 3;
          }

          else
          {
            v15 = mode;
          }

          [v14 setPermission:v15];
        }

        v11 = [participants2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [changeCopy setShare:share];
  }

  if (self->_title)
  {
    [changeCopy setTitle:?];
  }

  if (self->_creationDate)
  {
    [changeCopy setCreationDate:?];
  }

  if (self->_startDate)
  {
    [changeCopy setStartDate:?];
  }

  if (self->_endDate)
  {
    [changeCopy setEndDate:?];
  }

  if (self->_expiryDate)
  {
    [changeCopy setExpiryDate:?];
  }

  if (self->_assetCount >= 1)
  {
    [changeCopy setPromisedAssetCount:?];
    [changeCopy setPromisedPhotosCount:self->_photosCount];
    [changeCopy setPromisedVideosCount:self->_videosCount];
  }

  if (self->_thumbnailImageData)
  {
    [changeCopy setThumbnailImageData:?];
  }

  if (self->_previewData)
  {
    [changeCopy setPreviewImageData:?];
  }

  if (self->_originatingScopeIdentifier)
  {
    [changeCopy setOriginatingScopeIdentifier:?];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (CPLMomentShare)initWithScopeChange:(id)change
{
  changeCopy = change;
  v34.receiver = self;
  v34.super_class = CPLMomentShare;
  v5 = [(CPLMomentShare *)&v34 init];
  if (v5)
  {
    scopeIdentifier = [changeCopy scopeIdentifier];
    identifier = v5->_identifier;
    v5->_identifier = scopeIdentifier;

    share = [changeCopy share];
    participants = [share participants];
    v10 = [CPLMomentShareParticipant momentShareParticipantsFromParticipants:participants];
    participants = v5->_participants;
    v5->_participants = v10;

    currentUserParticipant = [share currentUserParticipant];
    v13 = currentUserParticipant;
    if (currentUserParticipant)
    {
      permission = [currentUserParticipant permission];
    }

    else
    {
      permission = [share publicPermission];
    }

    if (permission <= 3)
    {
      v5->_mode = permission;
    }

    v15 = [share URL];
    shareURL = v5->_shareURL;
    v5->_shareURL = v15;

    title = [changeCopy title];
    title = v5->_title;
    v5->_title = title;

    creationDate = [changeCopy creationDate];
    creationDate = v5->_creationDate;
    v5->_creationDate = creationDate;

    startDate = [changeCopy startDate];
    startDate = v5->_startDate;
    v5->_startDate = startDate;

    endDate = [changeCopy endDate];
    endDate = v5->_endDate;
    v5->_endDate = endDate;

    expiryDate = [changeCopy expiryDate];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = expiryDate;

    v5->_assetCount = [changeCopy promisedAssetCount];
    v5->_photosCount = [changeCopy promisedPhotosCount];
    v5->_videosCount = [changeCopy promisedVideosCount];
    thumbnailImageData = [changeCopy thumbnailImageData];
    thumbnailImageData = v5->_thumbnailImageData;
    v5->_thumbnailImageData = thumbnailImageData;

    previewImageData = [changeCopy previewImageData];
    previewData = v5->_previewData;
    v5->_previewData = previewImageData;

    originatingScopeIdentifier = [changeCopy originatingScopeIdentifier];
    originatingScopeIdentifier = v5->_originatingScopeIdentifier;
    v5->_originatingScopeIdentifier = originatingScopeIdentifier;
  }

  return v5;
}

@end