@interface JTAudioMediaItem
- (BOOL)isEqual:(id)equal;
- (JTAudioMediaItem)init;
- (JTAudioMediaItem)initWithInfo:(id)info delegate:(id)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)info;
- (void)dealloc;
@end

@implementation JTAudioMediaItem

- (JTAudioMediaItem)init
{
  v5.receiver = self;
  v5.super_class = JTAudioMediaItem;
  v2 = [(JFXMediaItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(JFXMediaItem *)v2 setMediaType:5];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = JTAudioMediaItem;
  [(JFXMediaItem *)&v2 dealloc];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = JTAudioMediaItem;
  v2 = [(JFXMediaItem *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = JTAudioMediaItem;
  return [(JFXMediaItem *)&v4 copyWithZone:zone];
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = JTAudioMediaItem;
  return [(JFXMediaItem *)&v4 isEqual:equal];
}

- (JTAudioMediaItem)initWithInfo:(id)info delegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = JTAudioMediaItem;
  return [(JFXMediaItem *)&v5 initWithInfo:info delegate:delegate];
}

- (id)info
{
  v2 = MEMORY[0x277CBEB38];
  v6.receiver = self;
  v6.super_class = JTAudioMediaItem;
  info = [(JFXMediaItem *)&v6 info];
  v4 = [v2 dictionaryWithDictionary:info];

  return v4;
}

@end