@interface HFPlaybackArchive
- (BOOL)isRepeatEnabled;
- (BOOL)isRepeatSupported;
- (BOOL)isShuffleEnabled;
- (BOOL)isShuffleSupported;
- (HFPlaybackArchive)initWithMediaPlayerPlaybackArchive:(id)archive;
- (NSData)artworkImageData;
- (unint64_t)targetOptions;
- (void)setTargetOptions:(unint64_t)options;
@end

@implementation HFPlaybackArchive

- (HFPlaybackArchive)initWithMediaPlayerPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  v9.receiver = self;
  v9.super_class = HFPlaybackArchive;
  v6 = [(HFPlaybackArchive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaPlayerPlaybackArchive, archive);
  }

  return v7;
}

- (unint64_t)targetOptions
{
  if ([(HFPlaybackArchive *)self isShuffleEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  isRepeatEnabled = [(HFPlaybackArchive *)self isRepeatEnabled];
  v5 = 4;
  if (!isRepeatEnabled)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (void)setTargetOptions:(unint64_t)options
{
  [(HFPlaybackArchive *)self setShuffleEnabled:(options >> 1) & 1];

  [(HFPlaybackArchive *)self setRepeatEnabled:(options >> 2) & 1];
}

- (BOOL)isShuffleSupported
{
  mediaPlayerPlaybackArchive = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = ([mediaPlayerPlaybackArchive supportedOptions] >> 1) & 1;

  return v3;
}

- (BOOL)isShuffleEnabled
{
  mediaPlayerPlaybackArchive = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = [mediaPlayerPlaybackArchive BOOLValueForOption:1];

  return v3;
}

- (BOOL)isRepeatSupported
{
  mediaPlayerPlaybackArchive = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = ([mediaPlayerPlaybackArchive supportedOptions] >> 2) & 1;

  return v3;
}

- (BOOL)isRepeatEnabled
{
  mediaPlayerPlaybackArchive = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = [mediaPlayerPlaybackArchive BOOLValueForOption:2];

  return v3;
}

- (NSData)artworkImageData
{
  artworkImageData = self->_artworkImageData;
  if (artworkImageData)
  {
    artworkImageData = artworkImageData;
  }

  else
  {
    mediaPlayerPlaybackArchive = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
    displayProperties = [mediaPlayerPlaybackArchive displayProperties];
    artworkImageData = [displayProperties artworkImageData];
  }

  return artworkImageData;
}

@end