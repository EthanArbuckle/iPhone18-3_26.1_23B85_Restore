@interface BSUIMapItem
- (id)_bestBrandIconURLForSize:(id *)a1 allowSmaller:(uint64_t)a2;
- (id)_bestNavbarBrandIconURLForSize:(id *)a1 allowSmaller:(uint64_t)a2;
- (id)_localizedResponseTime;
- (id)_navBackgroundbrandColor;
- (id)_navTintBrandColor;
- (id)initWithMKMapItem:(id *)a1;
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
  if (a1)
  {
    a1 = [a1[1] phoneNumber];
    v1 = vars8;
  }

  return a1;
}

- (id)_navBackgroundbrandColor
{
  if (a1)
  {
    a1 = [a1[1] _navBackgroundbrandColor];
    v1 = vars8;
  }

  return a1;
}

- (id)initWithMKMapItem:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BSUIMapItem;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (id)name
{
  if (a1)
  {
    a1 = [a1[1] name];
    v1 = vars8;
  }

  return a1;
}

- (id)_localizedResponseTime
{
  if (a1)
  {
    a1 = [a1[1] _localizedResponseTime];
    v1 = vars8;
  }

  return a1;
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
  if (a1)
  {
    a1 = [a1[1] _navTintBrandColor];
    v1 = vars8;
  }

  return a1;
}

- (id)timeZone
{
  if (a1)
  {
    v1 = [*(a1 + 8) _geoMapItem];
    v2 = [v1 _messageLink];
    v3 = [v2 timeZone];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)messageBusinessHours
{
  if (a1)
  {
    a1 = [a1[1] _messageBusinessHours];
    v1 = vars8;
  }

  return a1;
}

- (id)url
{
  if (a1)
  {
    a1 = [a1[1] url];
    v1 = vars8;
  }

  return a1;
}

- (id)_bestBrandIconURLForSize:(id *)a1 allowSmaller:(uint64_t)a2
{
  if (a1)
  {
    a1 = [a1[1] _bestBrandIconURLForSize:a2 allowSmaller:?];
    v2 = vars8;
  }

  return a1;
}

- (id)_bestNavbarBrandIconURLForSize:(id *)a1 allowSmaller:(uint64_t)a2
{
  if (a1)
  {
    a1 = [a1[1] _bestNavbarBrandIconURLForSize:a2 allowSmaller:?];
    v2 = vars8;
  }

  return a1;
}

- (void)makePlacecardViewController
{
  if (a1)
  {
    a1 = [objc_alloc(MEMORY[0x277D266B0]) initWithMapItem:a1[1]];
    v1 = vars8;
  }

  return a1;
}

@end