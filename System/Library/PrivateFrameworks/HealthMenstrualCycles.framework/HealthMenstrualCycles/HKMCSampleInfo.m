@interface HKMCSampleInfo
- (BOOL)isEqual:(id)a3;
- (HKMCSampleInfo)initWithAnchor:(int64_t)a3 UUID:(id)a4 deleted:(BOOL)a5;
- (HKMCSampleInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCSampleInfo

- (HKMCSampleInfo)initWithAnchor:(int64_t)a3 UUID:(id)a4 deleted:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HKMCSampleInfo;
  v9 = [(HKMCSampleInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_anchor = a3;
    v11 = [v8 copy];
    UUID = v10->_UUID;
    v10->_UUID = v11;

    v10->_deleted = a5;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_anchor];
  v5 = v4;
  UUID = self->_UUID;
  if (self->_deleted)
  {
    v7 = @" (deleted)";
  }

  else
  {
    v7 = &stru_2863CB240;
  }

  v8 = [v3 stringWithFormat:@"<%@ %@ %@>", v4, self->_UUID, v7];

  return v8;
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
      v8 = self->_anchor == v5->_anchor && ((UUID = self->_UUID, v7 = v5->_UUID, UUID == v7) || v7 && [(NSUUID *)UUID isEqual:?]) && self->_deleted == v5->_deleted;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HKMCSampleInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  if (v5)
  {
    self = -[HKMCSampleInfo initWithAnchor:UUID:deleted:](self, "initWithAnchor:UUID:deleted:", [v4 decodeInt64ForKey:@"Anchor"], v5, objc_msgSend(v4, "decodeBoolForKey:", @"Deleted"));
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  anchor = self->_anchor;
  v5 = a3;
  [v5 encodeInt64:anchor forKey:@"Anchor"];
  [v5 encodeObject:self->_UUID forKey:@"UUID"];
  [v5 encodeBool:self->_deleted forKey:@"Deleted"];
}

@end