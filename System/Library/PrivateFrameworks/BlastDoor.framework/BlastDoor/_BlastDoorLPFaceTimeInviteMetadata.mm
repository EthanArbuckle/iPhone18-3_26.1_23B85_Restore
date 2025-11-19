@interface _BlastDoorLPFaceTimeInviteMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPFaceTimeInviteMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _BlastDoorLPFaceTimeInviteMetadata

- (_BlastDoorLPFaceTimeInviteMetadata)initWithCoder:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPFaceTimeInviteMetadata;
  v5 = [(_BlastDoorLPFaceTimeInviteMetadata *)&v11 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPFaceTimeInviteMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPFaceTimeInviteMetadata *)self title];
    [(_BlastDoorLPFaceTimeInviteMetadata *)v4 setTitle:v5];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPFaceTimeInviteMetadata;
  if ([(_BlastDoorLPFaceTimeInviteMetadata *)&v9 isEqual:v4])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v6 = v4[2];
  if (!(v6 | self->_title))
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    v5 = [v6 isEqual:?];
  }

LABEL_7:

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end