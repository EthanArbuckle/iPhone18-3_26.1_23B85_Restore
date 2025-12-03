@interface _BlastDoorLPAudioProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _BlastDoorLPAudioProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPAudioProperties allocWithZone:zone];
  if (v4)
  {
    accessibilityText = [(_BlastDoorLPAudioProperties *)self accessibilityText];
    v6 = [accessibilityText copy];
    [(_BlastDoorLPAudioProperties *)v4 setAccessibilityText:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v10 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPAudioProperties;
  if ([(_BlastDoorLPAudioProperties *)&v9 isEqual:equalCopy])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v6 = equalCopy[1];
  if (!(v6 | self->_accessibilityText))
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