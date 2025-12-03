@interface MOAssetProperty
- (MOAssetProperty)initWithCoder:(id)coder;
- (MOAssetProperty)initWithLocalToPhotoLibraryIdentifier:(id)identifier location:(id)location mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes favorite:(BOOL)favorite;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOAssetProperty

- (MOAssetProperty)initWithLocalToPhotoLibraryIdentifier:(id)identifier location:(id)location mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes favorite:(BOOL)favorite
{
  identifierCopy = identifier;
  locationCopy = location;
  v20.receiver = self;
  v20.super_class = MOAssetProperty;
  v14 = [(MOAssetProperty *)&v20 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    localToPhotoLibraryIdentifier = v14->_localToPhotoLibraryIdentifier;
    v14->_localToPhotoLibraryIdentifier = v15;

    v17 = [locationCopy copy];
    location = v14->_location;
    v14->_location = v17;

    v14->_mediaType = type;
    v14->_mediaSubtypes = subtypes;
    v14->_favorite = favorite;
  }

  return v14;
}

- (id)description
{
  if ([(MOAssetProperty *)self mediaType])
  {
    if ([(MOAssetProperty *)self mediaType]== 1)
    {
      v3 = @"image";
    }

    else if ([(MOAssetProperty *)self mediaType]== 2)
    {
      v3 = @"video";
    }

    else if ([(MOAssetProperty *)self mediaType]== 3)
    {
      v3 = @"audio";
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = @"unknown";
  }

  if (![(MOAssetProperty *)self mediaSubtypes])
  {
    v6 = @"SubtypeNone";
    goto LABEL_39;
  }

  v4 = objc_opt_new();
  if (([(MOAssetProperty *)self mediaSubtypes]& 1) != 0)
  {
    [v4 addObject:@"PhotoPanorama"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 2) != 0)
  {
    [v4 addObject:@"PhotoHDR"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 4) != 0)
  {
    [v4 addObject:@"PhotoScreenshot"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 8) != 0)
  {
    [v4 addObject:@"PhotoLive"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 0x10) != 0)
  {
    [v4 addObject:@"PhotoDepthEffect"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 0x20) != 0)
  {
    [v4 addObject:@"SpatialOverCapture"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 0x10000) != 0)
  {
    [v4 addObject:@"VideoStreamed"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 0x20000) != 0)
  {
    [v4 addObject:@"VideoHighFrameRate"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 0x40000) != 0)
  {
    [v4 addObject:@"VideoTimelapse"];
  }

  if (([(MOAssetProperty *)self mediaSubtypes]& 0x200000) != 0)
  {
    [v4 addObject:@"VideoCinematic"];
  }

  if ([v4 count] < 2)
  {
    if ([v4 count] != 1)
    {
      v6 = @"SubtypeUnknown";
      goto LABEL_38;
    }

    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = [v4 componentsJoinedByString:@"_"];
  }

  v6 = firstObject;
LABEL_38:

LABEL_39:
  v7 = MEMORY[0x277CCACA8];
  localToPhotoLibraryIdentifier = [(MOAssetProperty *)self localToPhotoLibraryIdentifier];
  location = [(MOAssetProperty *)self location];
  favorite = [(MOAssetProperty *)self favorite];
  v11 = @"NO";
  if (favorite)
  {
    v11 = @"YES";
  }

  v12 = [v7 stringWithFormat:@"<MOAssetProperty localToPhotoLibraryIdentifier: %@, location: %@, mediaType: %@, mediaSubtypes: %@, favorite: %@>", localToPhotoLibraryIdentifier, location, v3, v6, v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  localToPhotoLibraryIdentifier = self->_localToPhotoLibraryIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:localToPhotoLibraryIdentifier forKey:@"localToPhotoLibraryIdentifier"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_mediaType];
  [coderCopy encodeObject:v5 forKey:@"mediaType"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mediaSubtypes];
  [coderCopy encodeObject:v6 forKey:@"mediaSubtypes"];

  [coderCopy encodeBool:self->_favorite forKey:@"favorite"];
}

- (MOAssetProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localToPhotoLibraryIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
  integerValue = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaSubtypes"];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = [coderCopy decodeBoolForKey:@"favorite"];
  v12 = [(MOAssetProperty *)self initWithLocalToPhotoLibraryIdentifier:v5 location:v6 mediaType:integerValue mediaSubtypes:unsignedIntegerValue favorite:v11];

  return v12;
}

@end