@interface FigCaptureIrisStillImageSettings
- (CGSize)nonDestructiveCropSize;
- (FigCaptureIrisStillImageSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigCaptureIrisStillImageSettings

- (FigCaptureIrisStillImageSettings)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = FigCaptureIrisStillImageSettings;
  v4 = [(FigCaptureStillImageSettings *)&v11 initWithCoder:?];
  if (v4)
  {
    AllowedClassSetForMetadataItems = FigCaptureMetadataUtilitiesCreateAllowedClassSetForMetadataItems();
    v4->_movieMode = [coder decodeInt32ForKey:@"movieMode"];
    v4->_movieRecordingSettings = [coder decodeObjectOfClass:objc_opt_class() forKey:@"movieRecordingSettings"];
    v4->_movieURLForOriginalImage = [coder decodeObjectOfClass:objc_opt_class() forKey:@"movieURLForOriginalImage"];
    v4->_movieLevelMetadataForOriginalImage = [coder decodeObjectOfClasses:AllowedClassSetForMetadataItems forKey:@"movieLevelMetadataForOriginalImage"];
    v4->_spatialOverCaptureMovieURLForOriginalImage = [coder decodeObjectOfClass:objc_opt_class() forKey:@"spatialOverCaptureMovieURLForOriginalImage"];
    v4->_spatialOverCaptureMovieLevelMetadataForOriginalImage = [coder decodeObjectOfClasses:AllowedClassSetForMetadataItems forKey:@"spatialOverCaptureMovieLevelMetadataForOriginalImage"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, objc_opt_class(), 0), @"nonDestructiveCropSize"}];
    CGSizeMakeWithDictionaryRepresentation(v9, &v4->_nonDestructiveCropSize);

    v4->_semanticStyle = [coder decodeObjectOfClass:objc_opt_class() forKey:@"semanticStyle"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = FigCaptureIrisStillImageSettings;
  [(FigCaptureStillImageSettings *)&v12 encodeWithCoder:?];
  [coder encodeInt32:self->_movieMode forKey:@"movieMode"];
  movieRecordingSettings = self->_movieRecordingSettings;
  if (movieRecordingSettings)
  {
    [coder encodeObject:movieRecordingSettings forKey:@"movieRecordingSettings"];
  }

  movieURLForOriginalImage = self->_movieURLForOriginalImage;
  if (movieURLForOriginalImage)
  {
    [coder encodeObject:movieURLForOriginalImage forKey:@"movieURLForOriginalImage"];
  }

  movieLevelMetadataForOriginalImage = self->_movieLevelMetadataForOriginalImage;
  if (movieLevelMetadataForOriginalImage)
  {
    [coder encodeObject:movieLevelMetadataForOriginalImage forKey:@"movieLevelMetadataForOriginalImage"];
  }

  spatialOverCaptureMovieURLForOriginalImage = self->_spatialOverCaptureMovieURLForOriginalImage;
  if (spatialOverCaptureMovieURLForOriginalImage)
  {
    [coder encodeObject:spatialOverCaptureMovieURLForOriginalImage forKey:@"spatialOverCaptureMovieURLForOriginalImage"];
  }

  spatialOverCaptureMovieLevelMetadataForOriginalImage = self->_spatialOverCaptureMovieLevelMetadataForOriginalImage;
  if (spatialOverCaptureMovieLevelMetadataForOriginalImage)
  {
    [coder encodeObject:spatialOverCaptureMovieLevelMetadataForOriginalImage forKey:@"spatialOverCaptureMovieLevelMetadataForOriginalImage"];
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(self->_nonDestructiveCropSize);
  [coder encodeObject:DictionaryRepresentation forKey:@"nonDestructiveCropSize"];

  semanticStyle = self->_semanticStyle;
  if (semanticStyle)
  {
    [coder encodeObject:semanticStyle forKey:@"semanticStyle"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCaptureIrisStillImageSettings;
  v4 = [(FigCaptureStillImageSettings *)&v6 copyWithZone:zone];
  [v4 setMovieMode:self->_movieMode];
  [v4 setMovieRecordingSettings:self->_movieRecordingSettings];
  [v4 setMovieURLForOriginalImage:self->_movieURLForOriginalImage];
  [v4 setMovieLevelMetadataForOriginalImage:self->_movieLevelMetadataForOriginalImage];
  [v4 setSpatialOverCaptureMovieURLForOriginalImage:self->_spatialOverCaptureMovieURLForOriginalImage];
  [v4 setSpatialOverCaptureMovieLevelMetadataForOriginalImage:self->_spatialOverCaptureMovieLevelMetadataForOriginalImage];
  [v4 setNonDestructiveCropSize:{self->_nonDestructiveCropSize.width, self->_nonDestructiveCropSize.height}];
  [v4 setSemanticStyle:self->_semanticStyle];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureIrisStillImageSettings;
  [(FigCaptureStillImageSettings *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = FigCaptureIrisStillImageSettings;
  v3 = [MEMORY[0x1E696AD60] stringWithString:{-[FigCaptureStillImageSettings description](&v7, sel_description)}];
  movieMode = self->_movieMode;
  if (movieMode)
  {
    if (self->_spatialOverCaptureMovieURLForOriginalImage)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" Original-OverCapture:%@", self->_spatialOverCaptureMovieURLForOriginalImage];
      movieMode = self->_movieMode;
    }

    else
    {
      v5 = &stru_1F216A3D0;
    }

    [v3 appendFormat:@" IRIS:%d Original:%@%@ <%@>%@", movieMode, self->_movieURLForOriginalImage, v5, self->_movieRecordingSettings, -[FigCaptureSemanticStyle description](self->_semanticStyle, "description")];
  }

  return v3;
}

- (CGSize)nonDestructiveCropSize
{
  width = self->_nonDestructiveCropSize.width;
  height = self->_nonDestructiveCropSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end