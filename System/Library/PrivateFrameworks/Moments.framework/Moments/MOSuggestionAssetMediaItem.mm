@interface MOSuggestionAssetMediaItem
- (MOSuggestionAssetMediaItem)initWithCoder:(id)coder;
- (id)initTitle:(id)title albumTitle:(id)albumTitle artistName:(id)name albumArt:(id)art trackIdentifier:(id)identifier previewURL:(id)l mediaType:(unint64_t)type imageURL:(id)self0 bgColor:(id)self1 bgColorVariant:(unint64_t)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetMediaItem

- (id)initTitle:(id)title albumTitle:(id)albumTitle artistName:(id)name albumArt:(id)art trackIdentifier:(id)identifier previewURL:(id)l mediaType:(unint64_t)type imageURL:(id)self0 bgColor:(id)self1 bgColorVariant:(unint64_t)self2
{
  titleCopy = title;
  albumTitleCopy = albumTitle;
  nameCopy = name;
  nameCopy2 = name;
  artCopy = art;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  lCopy = l;
  lCopy2 = l;
  rLCopy = rL;
  colorCopy = color;
  v33.receiver = self;
  v33.super_class = MOSuggestionAssetMediaItem;
  v24 = [(MOSuggestionAssetMediaItem *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_title, title);
    objc_storeStrong(&v25->_albumTitle, albumTitle);
    objc_storeStrong(&v25->_albumArt, art);
    objc_storeStrong(&v25->_trackIdentifier, identifierCopy);
    objc_storeStrong(&v25->_previewURL, lCopy);
    v25->_mediaType = type;
    objc_storeStrong(&v25->_artistName, nameCopy);
    objc_storeStrong(&v25->_imageURL, rL);
    objc_storeStrong(&v25->_bgColor, color);
    v25->_bgColorVariant = variant;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"kCoderKeyMediaAssetTitle"];
  [coderCopy encodeObject:self->_albumTitle forKey:@"kCoderKeyMediaAssetAlbumTitle"];
  [coderCopy encodeObject:self->_artistName forKey:@"kCoderKeyMediaAssetArtistName"];
  [coderCopy encodeObject:self->_albumArt forKey:@"kCoderKeyMediaAssetAlbumArt"];
  [coderCopy encodeObject:self->_trackIdentifier forKey:@"kCoderKeyMediaAssetTrackIdentifier"];
  [coderCopy encodeObject:self->_previewURL forKey:@"kCoderKeyMediaAssetPreviewURL"];
  [coderCopy encodeObject:self->_imageURL forKey:@"kCoderKeyMediaAssetImageURL"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mediaType];
  [coderCopy encodeObject:v6 forKey:@"kCoderKeyMediaAssetMediaType"];

  [coderCopy encodeObject:self->_bgColor forKey:@"kCoderKeyMediaAssetBgColor"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bgColorVariant];
  [coderCopy encodeObject:v7 forKey:@"kCoderKeyMediaAssetBgColorVariant"];
}

- (MOSuggestionAssetMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MOSuggestionAssetMediaItem;
  v5 = [(MOSuggestionAssetMediaItem *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetAlbumTitle"];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetArtistName"];
    artistName = v5->_artistName;
    v5->_artistName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetAlbumArt"];
    albumArt = v5->_albumArt;
    v5->_albumArt = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetTrackIdentifier"];
    trackIdentifier = v5->_trackIdentifier;
    v5->_trackIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetPreviewURL"];
    previewURL = v5->_previewURL;
    v5->_previewURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetImageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetMediaType"];
    v5->_mediaType = [v20 intValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetBgColor"];
    bgColor = v5->_bgColor;
    v5->_bgColor = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyMediaAssetBgColorVariant"];
    v5->_bgColorVariant = [v23 intValue];
  }

  return v5;
}

@end