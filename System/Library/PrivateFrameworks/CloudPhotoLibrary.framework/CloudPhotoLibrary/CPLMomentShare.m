@interface CPLMomentShare
+ (id)cplAdditionalSecureClassesForProperty:(id)a3;
- (CPLMomentShare)initWithCoder:(id)a3;
- (CPLMomentShare)initWithScopeChange:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)translateToScopeChangeWithScopeType:(int64_t)a3;
- (void)updateScopeChange:(id)a3;
@end

@implementation CPLMomentShare

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLMomentShare)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLMomentShare;
  v5 = [(CPLMomentShare *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
  }

  return v6;
}

+ (id)cplAdditionalSecureClassesForProperty:(id)a3
{
  v4 = a3;
  if (cplAdditionalSecureClassesForProperty__onceToken_124 != -1)
  {
    dispatch_once(&cplAdditionalSecureClassesForProperty__onceToken_124, &__block_literal_global_126);
  }

  v5 = [cplAdditionalSecureClassesForProperty__additionalClasses_123 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___CPLMomentShare;
    v7 = objc_msgSendSuper2(&v10, sel_cplAdditionalSecureClassesForProperty_, v4);
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
  v3 = [(CPLMomentShare *)self identifier];
  v4 = [(CPLMomentShare *)self title];
  v5 = [(CPLMomentShare *)self creationDate];
  v6 = [(CPLMomentShare *)self assetCount];
  v7 = [(CPLMomentShare *)self photosCount];
  v8 = [(CPLMomentShare *)self videosCount];
  v9 = [(CPLMomentShare *)self expiryDate];
  v10 = [(CPLMomentShare *)self shareURL];
  v11 = [v10 cpl_redactedShareURL];
  v17 = v6;
  v12 = v3;
  v13 = [v19 initWithFormat:@"<%@ %@ '%@'> %@ %lu assets (%lu photos %lu videos) expiry %@ url %@", v18, v3, v4, v5, v17, v7, v8, v9, v11];

  v14 = [(CPLMomentShare *)self originatingScopeIdentifier];
  v15 = v14;
  if (v14)
  {
    [v13 appendFormat:@" orig %@", v14];
  }

  return v13;
}

- (id)translateToScopeChangeWithScopeType:(int64_t)a3
{
  v4 = [(CPLScopeChange *)CPLMomentShareScopeChange newScopeChangeWithScopeIdentifier:self->_identifier type:a3];
  [(CPLMomentShare *)self updateScopeChange:v4];

  return v4;
}

- (void)updateScopeChange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 share];
  if (!v5)
  {
    v5 = objc_alloc_init(CPLShare);
    [(CPLShare *)v5 setURL:self->_shareURL];
    v6 = [(CPLMomentShare *)self participants];
    if ([v6 count])
    {
      v7 = [CPLMomentShareParticipant shareParticipantsFromMomentShareParticipants:v6];
      [(CPLShare *)v5 setParticipants:v7];
    }

    v17 = v6;
    if (self->_mode >= 4u)
    {
      mode = 2;
    }

    else
    {
      mode = self->_mode;
    }

    [(CPLShare *)v5 setPublicPermission:mode];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(CPLShare *)v5 participants];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
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

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [v4 setShare:v5];
  }

  if (self->_title)
  {
    [v4 setTitle:?];
  }

  if (self->_creationDate)
  {
    [v4 setCreationDate:?];
  }

  if (self->_startDate)
  {
    [v4 setStartDate:?];
  }

  if (self->_endDate)
  {
    [v4 setEndDate:?];
  }

  if (self->_expiryDate)
  {
    [v4 setExpiryDate:?];
  }

  if (self->_assetCount >= 1)
  {
    [v4 setPromisedAssetCount:?];
    [v4 setPromisedPhotosCount:self->_photosCount];
    [v4 setPromisedVideosCount:self->_videosCount];
  }

  if (self->_thumbnailImageData)
  {
    [v4 setThumbnailImageData:?];
  }

  if (self->_previewData)
  {
    [v4 setPreviewImageData:?];
  }

  if (self->_originatingScopeIdentifier)
  {
    [v4 setOriginatingScopeIdentifier:?];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (CPLMomentShare)initWithScopeChange:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = CPLMomentShare;
  v5 = [(CPLMomentShare *)&v34 init];
  if (v5)
  {
    v6 = [v4 scopeIdentifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 share];
    v9 = [v8 participants];
    v10 = [CPLMomentShareParticipant momentShareParticipantsFromParticipants:v9];
    participants = v5->_participants;
    v5->_participants = v10;

    v12 = [v8 currentUserParticipant];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 permission];
    }

    else
    {
      v14 = [v8 publicPermission];
    }

    if (v14 <= 3)
    {
      v5->_mode = v14;
    }

    v15 = [v8 URL];
    shareURL = v5->_shareURL;
    v5->_shareURL = v15;

    v17 = [v4 title];
    title = v5->_title;
    v5->_title = v17;

    v19 = [v4 creationDate];
    creationDate = v5->_creationDate;
    v5->_creationDate = v19;

    v21 = [v4 startDate];
    startDate = v5->_startDate;
    v5->_startDate = v21;

    v23 = [v4 endDate];
    endDate = v5->_endDate;
    v5->_endDate = v23;

    v25 = [v4 expiryDate];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v25;

    v5->_assetCount = [v4 promisedAssetCount];
    v5->_photosCount = [v4 promisedPhotosCount];
    v5->_videosCount = [v4 promisedVideosCount];
    v27 = [v4 thumbnailImageData];
    thumbnailImageData = v5->_thumbnailImageData;
    v5->_thumbnailImageData = v27;

    v29 = [v4 previewImageData];
    previewData = v5->_previewData;
    v5->_previewData = v29;

    v31 = [v4 originatingScopeIdentifier];
    originatingScopeIdentifier = v5->_originatingScopeIdentifier;
    v5->_originatingScopeIdentifier = v31;
  }

  return v5;
}

@end