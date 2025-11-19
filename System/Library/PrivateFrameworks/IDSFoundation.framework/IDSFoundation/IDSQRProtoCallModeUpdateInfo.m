@interface IDSQRProtoCallModeUpdateInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)facetimeModeAsString:(int)a3;
- (int)StringAsFacetimeMode:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoCallModeUpdateInfo

- (id)facetimeModeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E77E29D8[a3];
  }

  return v4;
}

- (int)StringAsFacetimeMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"U_PLUS_ONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GFT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoCallModeUpdateInfo;
  v4 = [(IDSQRProtoCallModeUpdateInfo *)&v8 description];
  v5 = [(IDSQRProtoCallModeUpdateInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  facetimeMode = self->_facetimeMode;
  if (facetimeMode >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_facetimeMode];
  }

  else
  {
    v5 = off_1E77E29D8[facetimeMode];
  }

  [v3 setObject:v5 forKey:@"facetime_mode"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_modeGenCounter];
  [v3 setObject:v6 forKey:@"mode_gen_counter"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_facetimeMode;
  *(result + 3) = self->_modeGenCounter;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_facetimeMode == v4[2] && self->_modeGenCounter == v4[3];

  return v5;
}

@end