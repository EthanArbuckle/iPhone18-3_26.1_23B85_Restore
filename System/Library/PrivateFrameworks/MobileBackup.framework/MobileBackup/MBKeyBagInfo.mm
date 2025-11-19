@interface MBKeyBagInfo
- (BOOL)isEqual:(id)a3;
- (MBKeyBagInfo)initWithID:(unsigned int)a3 uuid:(const char *)a4;
- (void)setUUID:(const char *)a3;
@end

@implementation MBKeyBagInfo

- (MBKeyBagInfo)initWithID:(unsigned int)a3 uuid:(const char *)a4
{
  v9.receiver = self;
  v9.super_class = MBKeyBagInfo;
  v6 = [(MBKeyBagInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_bagID = a3;
    [(MBKeyBagInfo *)v6 setUUID:a4];
  }

  return v7;
}

- (void)setUUID:(const char *)a3
{
  if (a3)
  {
    *self->_uuid = *a3;
  }

  else
  {
    *self->_uuid = 0;
    *&self->_uuid[8] = 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return *self->_uuid == *(a3 + 1) && *&self->_uuid[8] == *(a3 + 2);
}

@end