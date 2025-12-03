@interface JFXMediaItem
- (BOOL)isEqual:(id)equal;
- (JFXMediaItem)init;
- (JFXMediaItem)initWithInfo:(id)info delegate:(id)delegate;
- (JFXMediaItemDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)info;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JFXMediaItem

- (JFXMediaItem)init
{
  v3.receiver = self;
  v3.super_class = JFXMediaItem;
  result = [(JFXMediaItem *)&v3 init];
  if (result)
  {
    result->_mediaType = 0;
    result->_mediaState = 0;
    result->_durationAt30fps = 1;
    result->_mediaLoadState = 1;
    result->_interfaceOrientationForDisplay = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = JFXMediaItem;
  [(JFXMediaItem *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_mediaType;
  *(result + 2) = self->_durationAt30fps;
  *(result + 5) = self->_interfaceOrientationForDisplay;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      mediaType = [(JFXMediaItem *)self mediaType];
      v8 = 0;
      if (mediaType == [(JFXMediaItem *)v5 mediaType])
      {
        durationAt30fps = [(JFXMediaItem *)self durationAt30fps];
        if (durationAt30fps == [(JFXMediaItem *)v5 durationAt30fps])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JFXMediaItem;
  return [(JFXMediaItem *)&v3 hash];
}

- (JFXMediaItem)initWithInfo:(id)info delegate:(id)delegate
{
  delegateCopy = delegate;
  infoCopy = info;
  v8 = [(JFXMediaItem *)self init];
  objc_storeWeak(&v8->_delegate, delegateCopy);

  v9 = [infoCopy objectForKey:kMediaItemTypeKey];
  v8->_mediaType = [v9 intValue];

  v10 = [infoCopy objectForKey:kMediaItemDurationKey];
  v8->_durationAt30fps = [v10 intValue];

  v11 = [infoCopy objectForKey:kMediaItemInterfaceOrientationForDisplayKey];

  v8->_interfaceOrientationForDisplay = [v11 intValue];
  return v8;
}

- (id)info
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_mediaType];
  [dictionary setObject:v4 forKey:kMediaItemTypeKey];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_durationAt30fps];
  [dictionary setObject:v5 forKey:kMediaItemDurationKey];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_interfaceOrientationForDisplay];
  [dictionary setObject:v6 forKey:kMediaItemInterfaceOrientationForDisplayKey];

  return dictionary;
}

- (JFXMediaItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end