@interface _BlastDoorLPWalletPassMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPWalletPassMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPWalletPassMetadata

- (_BlastDoorLPWalletPassMetadata)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPWalletPassMetadata;
  v5 = [(_BlastDoorLPWalletPassMetadata *)&v15 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v6;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v8 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:name forKey:@"name"];
  [v5 encodeInteger:self->_style forKey:@"style"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_eventDate forKey:@"eventDate"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPWalletPassMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPWalletPassMetadata *)self name];
    [(_BlastDoorLPWalletPassMetadata *)v4 setName:v5];

    [(_BlastDoorLPWalletPassMetadata *)v4 setStyle:[(_BlastDoorLPWalletPassMetadata *)self style]];
    v6 = [(_BlastDoorLPWalletPassMetadata *)self eventDate];
    [(_BlastDoorLPWalletPassMetadata *)v4 setEventDate:v6];

    v7 = [(_BlastDoorLPWalletPassMetadata *)self expirationDate];
    [(_BlastDoorLPWalletPassMetadata *)v4 setExpirationDate:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPWalletPassMetadata;
  if ([(_BlastDoorLPWalletPassMetadata *)&v12 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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