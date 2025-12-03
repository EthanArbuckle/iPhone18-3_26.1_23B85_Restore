@interface IDSQRProtoCallModeUpdateInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)facetimeModeAsString:(int)string;
- (int)StringAsFacetimeMode:(id)mode;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoCallModeUpdateInfo

- (id)facetimeModeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E77E29D8[string];
  }

  return v4;
}

- (int)StringAsFacetimeMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"U_PLUS_ONE"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"GFT"])
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
  dictionaryRepresentation = [(IDSQRProtoCallModeUpdateInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  facetimeMode = self->_facetimeMode;
  if (facetimeMode >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_facetimeMode];
  }

  else
  {
    v5 = off_1E77E29D8[facetimeMode];
  }

  [dictionary setObject:v5 forKey:@"facetime_mode"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_modeGenCounter];
  [dictionary setObject:v6 forKey:@"mode_gen_counter"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_facetimeMode;
  *(result + 3) = self->_modeGenCounter;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_facetimeMode == equalCopy[2] && self->_modeGenCounter == equalCopy[3];

  return v5;
}

@end