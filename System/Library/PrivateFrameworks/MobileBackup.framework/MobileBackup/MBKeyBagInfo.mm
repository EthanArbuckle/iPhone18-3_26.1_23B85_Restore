@interface MBKeyBagInfo
- (BOOL)isEqual:(id)equal;
- (MBKeyBagInfo)initWithID:(unsigned int)d uuid:(const char *)uuid;
- (void)setUUID:(const char *)d;
@end

@implementation MBKeyBagInfo

- (MBKeyBagInfo)initWithID:(unsigned int)d uuid:(const char *)uuid
{
  v9.receiver = self;
  v9.super_class = MBKeyBagInfo;
  v6 = [(MBKeyBagInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_bagID = d;
    [(MBKeyBagInfo *)v6 setUUID:uuid];
  }

  return v7;
}

- (void)setUUID:(const char *)d
{
  if (d)
  {
    *self->_uuid = *d;
  }

  else
  {
    *self->_uuid = 0;
    *&self->_uuid[8] = 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return *self->_uuid == *(equal + 1) && *&self->_uuid[8] == *(equal + 2);
}

@end