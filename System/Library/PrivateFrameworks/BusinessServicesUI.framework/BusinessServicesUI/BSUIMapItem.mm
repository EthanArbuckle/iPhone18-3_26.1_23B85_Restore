@interface BSUIMapItem
- (id)_bestBrandIconURLForSize:(id *)size allowSmaller:(uint64_t)smaller;
- (id)_bestNavbarBrandIconURLForSize:(id *)size allowSmaller:(uint64_t)smaller;
- (id)_localizedResponseTime;
- (id)_navBackgroundbrandColor;
- (id)_navTintBrandColor;
- (id)initWithMKMapItem:(id *)item;
- (id)messageBusinessHours;
- (id)name;
- (id)phoneNumber;
- (id)timeZone;
- (id)url;
- (uint64_t)_isMessageIDVerified;
- (void)makePlacecardViewController;
@end

@implementation BSUIMapItem

- (id)phoneNumber
{
  if (self)
  {
    self = [self[1] phoneNumber];
    v1 = vars8;
  }

  return self;
}

- (id)_navBackgroundbrandColor
{
  if (self)
  {
    self = [self[1] _navBackgroundbrandColor];
    v1 = vars8;
  }

  return self;
}

- (id)initWithMKMapItem:(id *)item
{
  v4 = a2;
  if (item)
  {
    v7.receiver = item;
    v7.super_class = BSUIMapItem;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    item = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return item;
}

- (id)name
{
  if (self)
  {
    self = [self[1] name];
    v1 = vars8;
  }

  return self;
}

- (id)_localizedResponseTime
{
  if (self)
  {
    self = [self[1] _localizedResponseTime];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_isMessageIDVerified
{
  if (result)
  {
    return [*(result + 8) _isMessageIDVerified];
  }

  return result;
}

- (id)_navTintBrandColor
{
  if (self)
  {
    self = [self[1] _navTintBrandColor];
    v1 = vars8;
  }

  return self;
}

- (id)timeZone
{
  if (self)
  {
    _geoMapItem = [*(self + 8) _geoMapItem];
    _messageLink = [_geoMapItem _messageLink];
    timeZone = [_messageLink timeZone];
  }

  else
  {
    timeZone = 0;
  }

  return timeZone;
}

- (id)messageBusinessHours
{
  if (self)
  {
    self = [self[1] _messageBusinessHours];
    v1 = vars8;
  }

  return self;
}

- (id)url
{
  if (self)
  {
    self = [self[1] url];
    v1 = vars8;
  }

  return self;
}

- (id)_bestBrandIconURLForSize:(id *)size allowSmaller:(uint64_t)smaller
{
  if (size)
  {
    size = [size[1] _bestBrandIconURLForSize:smaller allowSmaller:?];
    v2 = vars8;
  }

  return size;
}

- (id)_bestNavbarBrandIconURLForSize:(id *)size allowSmaller:(uint64_t)smaller
{
  if (size)
  {
    size = [size[1] _bestNavbarBrandIconURLForSize:smaller allowSmaller:?];
    v2 = vars8;
  }

  return size;
}

- (void)makePlacecardViewController
{
  if (self)
  {
    self = [objc_alloc(MEMORY[0x277D266B0]) initWithMapItem:self[1]];
    v1 = vars8;
  }

  return self;
}

@end