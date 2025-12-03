@interface HKMCSampleInfo
- (BOOL)isEqual:(id)equal;
- (HKMCSampleInfo)initWithAnchor:(int64_t)anchor UUID:(id)d deleted:(BOOL)deleted;
- (HKMCSampleInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCSampleInfo

- (HKMCSampleInfo)initWithAnchor:(int64_t)anchor UUID:(id)d deleted:(BOOL)deleted
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HKMCSampleInfo;
  v9 = [(HKMCSampleInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_anchor = anchor;
    v11 = [dCopy copy];
    UUID = v10->_UUID;
    v10->_UUID = v11;

    v10->_deleted = deleted;
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
      v8 = self->_anchor == v5->_anchor && ((UUID = self->_UUID, v7 = v5->_UUID, UUID == v7) || v7 && [(NSUUID *)UUID isEqual:?]) && self->_deleted == v5->_deleted;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HKMCSampleInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  if (v5)
  {
    self = -[HKMCSampleInfo initWithAnchor:UUID:deleted:](self, "initWithAnchor:UUID:deleted:", [coderCopy decodeInt64ForKey:@"Anchor"], v5, objc_msgSend(coderCopy, "decodeBoolForKey:", @"Deleted"));
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  anchor = self->_anchor;
  coderCopy = coder;
  [coderCopy encodeInt64:anchor forKey:@"Anchor"];
  [coderCopy encodeObject:self->_UUID forKey:@"UUID"];
  [coderCopy encodeBool:self->_deleted forKey:@"Deleted"];
}

@end