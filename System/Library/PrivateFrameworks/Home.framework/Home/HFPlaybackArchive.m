@interface HFPlaybackArchive
- (BOOL)isRepeatEnabled;
- (BOOL)isRepeatSupported;
- (BOOL)isShuffleEnabled;
- (BOOL)isShuffleSupported;
- (HFPlaybackArchive)initWithMediaPlayerPlaybackArchive:(id)a3;
- (NSData)artworkImageData;
- (unint64_t)targetOptions;
- (void)setTargetOptions:(unint64_t)a3;
@end

@implementation HFPlaybackArchive

- (HFPlaybackArchive)initWithMediaPlayerPlaybackArchive:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFPlaybackArchive;
  v6 = [(HFPlaybackArchive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaPlayerPlaybackArchive, a3);
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

  v4 = [(HFPlaybackArchive *)self isRepeatEnabled];
  v5 = 4;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (void)setTargetOptions:(unint64_t)a3
{
  [(HFPlaybackArchive *)self setShuffleEnabled:(a3 >> 1) & 1];

  [(HFPlaybackArchive *)self setRepeatEnabled:(a3 >> 2) & 1];
}

- (BOOL)isShuffleSupported
{
  v2 = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = ([v2 supportedOptions] >> 1) & 1;

  return v3;
}

- (BOOL)isShuffleEnabled
{
  v2 = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = [v2 BOOLValueForOption:1];

  return v3;
}

- (BOOL)isRepeatSupported
{
  v2 = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = ([v2 supportedOptions] >> 2) & 1;

  return v3;
}

- (BOOL)isRepeatEnabled
{
  v2 = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
  v3 = [v2 BOOLValueForOption:2];

  return v3;
}

- (NSData)artworkImageData
{
  artworkImageData = self->_artworkImageData;
  if (artworkImageData)
  {
    v3 = artworkImageData;
  }

  else
  {
    v4 = [(HFPlaybackArchive *)self mediaPlayerPlaybackArchive];
    v5 = [v4 displayProperties];
    v3 = [v5 artworkImageData];
  }

  return v3;
}

@end