@interface JFXMediaItem
- (BOOL)isEqual:(id)a3;
- (JFXMediaItem)init;
- (JFXMediaItem)initWithInfo:(id)a3 delegate:(id)a4;
- (JFXMediaItemDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_mediaType;
  *(result + 2) = self->_durationAt30fps;
  *(result + 5) = self->_interfaceOrientationForDisplay;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(JFXMediaItem *)self mediaType];
      v8 = 0;
      if (v6 == [(JFXMediaItem *)v5 mediaType])
      {
        v7 = [(JFXMediaItem *)self durationAt30fps];
        if (v7 == [(JFXMediaItem *)v5 durationAt30fps])
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

- (JFXMediaItem)initWithInfo:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(JFXMediaItem *)self init];
  objc_storeWeak(&v8->_delegate, v6);

  v9 = [v7 objectForKey:kMediaItemTypeKey];
  v8->_mediaType = [v9 intValue];

  v10 = [v7 objectForKey:kMediaItemDurationKey];
  v8->_durationAt30fps = [v10 intValue];

  v11 = [v7 objectForKey:kMediaItemInterfaceOrientationForDisplayKey];

  v8->_interfaceOrientationForDisplay = [v11 intValue];
  return v8;
}

- (id)info
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_mediaType];
  [v3 setObject:v4 forKey:kMediaItemTypeKey];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_durationAt30fps];
  [v3 setObject:v5 forKey:kMediaItemDurationKey];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_interfaceOrientationForDisplay];
  [v3 setObject:v6 forKey:kMediaItemInterfaceOrientationForDisplayKey];

  return v3;
}

- (JFXMediaItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end