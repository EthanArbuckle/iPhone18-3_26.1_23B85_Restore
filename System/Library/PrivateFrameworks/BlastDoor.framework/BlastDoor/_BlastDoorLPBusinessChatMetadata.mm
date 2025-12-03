@interface _BlastDoorLPBusinessChatMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPBusinessChatMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _BlastDoorLPBusinessChatMetadata

- (_BlastDoorLPBusinessChatMetadata)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPBusinessChatMetadata;
  v5 = [(_BlastDoorLPBusinessChatMetadata *)&v11 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v6;

    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPBusinessChatMetadata allocWithZone:zone];
  if (v4)
  {
    subtitle = [(_BlastDoorLPBusinessChatMetadata *)self subtitle];
    [(_BlastDoorLPBusinessChatMetadata *)v4 setSubtitle:subtitle];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v10 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPBusinessChatMetadata;
  if ([(_BlastDoorLPBusinessChatMetadata *)&v9 isEqual:equalCopy])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v6 = equalCopy[2];
  if (!(v6 | self->_subtitle))
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