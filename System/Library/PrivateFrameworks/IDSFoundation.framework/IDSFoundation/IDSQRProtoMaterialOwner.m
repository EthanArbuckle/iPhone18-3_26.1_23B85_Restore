@interface IDSQRProtoMaterialOwner
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)materialTypesAsString:(int)a3;
- (int)StringAsMaterialTypes:(id)a3;
- (int)materialTypeAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoMaterialOwner

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoMaterialOwner;
  [(IDSQRProtoMaterialOwner *)&v3 dealloc];
}

- (int)materialTypeAtIndex:(unint64_t)a3
{
  p_materialTypes = &self->_materialTypes;
  count = self->_materialTypes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_materialTypes->list[a3];
}

- (id)materialTypesAsString:(int)a3
{
  if (a3 < 0xF && ((0x78E1u >> a3) & 1) != 0)
  {
    v4 = off_1E77E2150[a3];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsMaterialTypes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNDEFINED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PREKEY"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"AVCBLOB"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MKM"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SKM"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"MIRAGEKEY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MIRAGEBLOB"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"IDS_CONTEXT_BLOB"])
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
  v5 = [(IDSQRProtoMaterialOwner *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_participantId];
  [v3 setObject:v4 forKey:@"participant_id"];

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

    [v3 setObject:v6 forKey:@"material_type"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)copyTo:(id)a3
{
  v7 = a3;
  v7[4] = self->_participantId;
  if ([(IDSQRProtoMaterialOwner *)self materialTypesCount])
  {
    [v7 clearMaterialTypes];
    v4 = [(IDSQRProtoMaterialOwner *)self materialTypesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addMaterialType:{-[IDSQRProtoMaterialOwner materialTypeAtIndex:](self, "materialTypeAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[4] = self->_participantId;
  PBRepeatedInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_participantId == v4[4])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_participantId = v4[4];
  v8 = v4;
  v5 = [v4 materialTypesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoMaterialOwner addMaterialType:](self, "addMaterialType:", [v8 materialTypeAtIndex:i]);
    }
  }
}

@end