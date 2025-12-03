@interface _BlastDoorLPWalletPassMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPWalletPassMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPWalletPassMetadata

- (_BlastDoorLPWalletPassMetadata)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPWalletPassMetadata;
  v5 = [(_BlastDoorLPWalletPassMetadata *)&v15 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v6;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v8 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:name forKey:@"name"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_eventDate forKey:@"eventDate"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPWalletPassMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(_BlastDoorLPWalletPassMetadata *)self name];
    [(_BlastDoorLPWalletPassMetadata *)v4 setName:name];

    [(_BlastDoorLPWalletPassMetadata *)v4 setStyle:[(_BlastDoorLPWalletPassMetadata *)self style]];
    eventDate = [(_BlastDoorLPWalletPassMetadata *)self eventDate];
    [(_BlastDoorLPWalletPassMetadata *)v4 setEventDate:eventDate];

    expirationDate = [(_BlastDoorLPWalletPassMetadata *)self expirationDate];
    [(_BlastDoorLPWalletPassMetadata *)v4 setExpirationDate:expirationDate];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v13 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPWalletPassMetadata;
  if ([(_BlastDoorLPWalletPassMetadata *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[2];
      if ((!(v7 | self->_name) || [v7 isEqual:?]) && v6[3] == self->_style && ((v8 = v6[4], !(v8 | self->_eventDate)) || objc_msgSend(v8, "isEqual:")))
      {
        v9 = v6[5];
        if (v9 | self->_expirationDate)
        {
          v5 = [v9 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

@end