@interface MOSuggestionAssetMediaItem
- (MOSuggestionAssetMediaItem)initWithCoder:(id)a3;
- (id)initTitle:(id)a3 albumTitle:(id)a4 artistName:(id)a5 albumArt:(id)a6 trackIdentifier:(id)a7 previewURL:(id)a8 mediaType:(unint64_t)a9 imageURL:(id)a10 bgColor:(id)a11 bgColorVariant:(unint64_t)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetMediaItem

- (id)initTitle:(id)a3 albumTitle:(id)a4 artistName:(id)a5 albumArt:(id)a6 trackIdentifier:(id)a7 previewURL:(id)a8 mediaType:(unint64_t)a9 imageURL:(id)a10 bgColor:(id)a11 bgColorVariant:(unint64_t)a12
{
  v30 = a3;
  v19 = a4;
  v29 = a5;
  v20 = a5;
  v32 = a6;
  v27 = a7;
  v31 = a7;
  v28 = a8;
  v21 = a8;
  v22 = a10;
  v23 = a11;
  v33.receiver = self;
  v33.super_class = MOSuggestionAssetMediaItem;
  v24 = [(MOSuggestionAssetMediaItem *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_title, a3);
    objc_storeStrong(&v25->_albumTitle, a4);
    objc_storeStrong(&v25->_albumArt, a6);
    objc_storeStrong(&v25->_trackIdentifier, v27);
    objc_storeStrong(&v25->_previewURL, v28);
    v25->_mediaType = a9;
    objc_storeStrong(&v25->_artistName, v29);
    objc_storeStrong(&v25->_imageURL, a10);
    objc_storeStrong(&v25->_bgColor, a11);
    v25->_bgColorVariant = a12;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"kCoderKeyMediaAssetTitle"];
  [v5 encodeObject:self->_albumTitle forKey:@"kCoderKeyMediaAssetAlbumTitle"];
  [v5 encodeObject:self->_artistName forKey:@"kCoderKeyMediaAssetArtistName"];
  [v5 encodeObject:self->_albumArt forKey:@"kCoderKeyMediaAssetAlbumArt"];
  [v5 encodeObject:self->_trackIdentifier forKey:@"kCoderKeyMediaAssetTrackIdentifier"];
  [v5 encodeObject:self->_previewURL forKey:@"kCoderKeyMediaAssetPreviewURL"];
  [v5 encodeObject:self->_imageURL forKey:@"kCoderKeyMediaAssetImageURL"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mediaType];
  [v5 encodeObject:v6 forKey:@"kCoderKeyMediaAssetMediaType"];

  [v5 encodeObject:self->_bgColor forKey:@"kCoderKeyMediaAssetBgColor"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bgColorVariant];
  [v5 encodeObject:v7 forKey:@"kCoderKeyMediaAssetBgColorVariant"];
}

- (MOSuggestionAssetMediaItem)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MOSuggestionAssetMediaItem;
  v5 = [(MOSuggestionAssetMediaItem *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetAlbumTitle"];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetArtistName"];
    artistName = v5->_artistName;
    v5->_artistName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetAlbumArt"];
    albumArt = v5->_albumArt;
    v5->_albumArt = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetTrackIdentifier"];
    trackIdentifier = v5->_trackIdentifier;
    v5->_trackIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetPreviewURL"];
    previewURL = v5->_previewURL;
    v5->_previewURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetMediaType"];
    v5->_mediaType = [v20 intValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetBgColor"];
    bgColor = v5->_bgColor;
    v5->_bgColor = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetBgColorVariant"];
    v5->_bgColorVariant = [v23 intValue];
  }

  return v5;
}

@end