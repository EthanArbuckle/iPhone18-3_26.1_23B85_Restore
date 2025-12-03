@interface IDSQRProtoMaterialOwner
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)materialTypesAsString:(int)string;
- (int)StringAsMaterialTypes:(id)types;
- (int)materialTypeAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoMaterialOwner

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoMaterialOwner;
  [(IDSQRProtoMaterialOwner *)&v3 dealloc];
}

- (int)materialTypeAtIndex:(unint64_t)index
{
  p_materialTypes = &self->_materialTypes;
  count = self->_materialTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_materialTypes->list[index];
}

- (id)materialTypesAsString:(int)string
{
  if (string < 0xF && ((0x78E1u >> string) & 1) != 0)
  {
    v4 = off_1E77E2150[string];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsMaterialTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNDEFINED"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"PREKEY"])
  {
    v4 = 11;
  }

  else if ([typesCopy isEqualToString:@"AVCBLOB"])
  {
    v4 = 12;
  }

  else if ([typesCopy isEqualToString:@"MKM"])
  {
    v4 = 13;
  }

  else if ([typesCopy isEqualToString:@"SKM"])
  {
    v4 = 14;
  }

  else if ([typesCopy isEqualToString:@"MIRAGEKEY"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"MIRAGEBLOB"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"IDS_CONTEXT_BLOB"])
  {
    v4 = 7;
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
  v8.super_class = IDSQRProtoMaterialOwner;
  v4 = [(IDSQRProtoMaterialOwner *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoMaterialOwner *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_participantId];
  [dictionary setObject:v4 forKey:@"participant_id"];

  p_materialTypes = &self->_materialTypes;
  if (self->_materialTypes.count)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (p_materialTypes->count)
    {
      v7 = 0;
      do
      {
        v8 = p_materialTypes->list[v7];
        if (v8 < 0xF && ((0x78E1u >> v8) & 1) != 0)
        {
          v9 = off_1E77E2150[v8];
        }

        else
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_materialTypes->list[v7]];
        }

        [v6 addObject:v9];

        ++v7;
      }

      while (v7 < p_materialTypes->count);
    }

    [dictionary setObject:v6 forKey:@"material_type"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint64Field();
  p_materialTypes = &self->_materialTypes;
  if (p_materialTypes->count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < p_materialTypes->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_participantId;
  if ([(IDSQRProtoMaterialOwner *)self materialTypesCount])
  {
    [toCopy clearMaterialTypes];
    materialTypesCount = [(IDSQRProtoMaterialOwner *)self materialTypesCount];
    if (materialTypesCount)
    {
      v5 = materialTypesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addMaterialType:{-[IDSQRProtoMaterialOwner materialTypeAtIndex:](self, "materialTypeAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[4] = self->_participantId;
  PBRepeatedInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_participantId == equalCopy[4])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_participantId = fromCopy[4];
  v8 = fromCopy;
  materialTypesCount = [fromCopy materialTypesCount];
  if (materialTypesCount)
  {
    v6 = materialTypesCount;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoMaterialOwner addMaterialType:](self, "addMaterialType:", [v8 materialTypeAtIndex:i]);
    }
  }
}

@end