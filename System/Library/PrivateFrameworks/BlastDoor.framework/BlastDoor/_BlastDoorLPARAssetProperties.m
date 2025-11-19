@interface _BlastDoorLPARAssetProperties
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _BlastDoorLPARAssetProperties

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPARAssetProperties allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPARAssetProperties *)self accessibilityText];
    v6 = [v5 copy];
    [(_BlastDoorLPARAssetProperties *)v4 setAccessibilityText:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPARAssetProperties;
  if ([(_BlastDoorLPARAssetProperties *)&v9 isEqual:v4])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v6 = v4[1];
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