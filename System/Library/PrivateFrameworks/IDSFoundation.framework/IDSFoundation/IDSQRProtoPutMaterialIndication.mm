@interface IDSQRProtoPutMaterialIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMaterials:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoPutMaterialIndication

- (void)addMaterials:(id)a3
{
  v4 = a3;
  materials = self->_materials;
  v8 = v4;
  if (!materials)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_materials;
    self->_materials = v6;

    v4 = v8;
    materials = self->_materials;
  }

  [(NSMutableArray *)materials addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPutMaterialIndication;
  v4 = [(IDSQRProtoPutMaterialIndication *)&v8 description];
  v5 = [(IDSQRProtoPutMaterialIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_materials count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_materials, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_materials;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"materials"];
  }

  missingMaterial = self->_missingMaterial;
  if (missingMaterial)
  {
    v12 = [(IDSQRProtoPutMaterialErrorIndication *)missingMaterial dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"missing_material"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [v3 setObject:v13 forKey:@"txn_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_materials;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_missingMaterial)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(IDSQRProtoPutMaterialIndication *)self materialsCount])
  {
    [v8 clearMaterials];
    v4 = [(IDSQRProtoPutMaterialIndication *)self materialsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(IDSQRProtoPutMaterialIndication *)self materialsAtIndex:i];
        [v8 addMaterials:v7];
      }
    }
  }

  if (self->_missingMaterial)
  {
    [v8 setMissingMaterial:?];
  }

  if (*&self->_has)
  {
    *(v8 + 1) = self->_txnId;
    *(v8 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_materials;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copyWithZone:{a3, v15}];
        [v5 addMaterials:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(IDSQRProtoPutMaterialErrorIndication *)self->_missingMaterial copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_txnId;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  materials = self->_materials;
  if (materials | *(v4 + 2))
  {
    if (![(NSMutableArray *)materials isEqual:?])
    {
      goto LABEL_10;
    }
  }

  missingMaterial = self->_missingMaterial;
  if (missingMaterial | *(v4 + 3))
  {
    if (![(IDSQRProtoPutMaterialErrorIndication *)missingMaterial isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_txnId == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_materials hash];
  v4 = [(IDSQRProtoPutMaterialErrorIndication *)self->_missingMaterial hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_txnId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSQRProtoPutMaterialIndication *)self addMaterials:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  missingMaterial = self->_missingMaterial;
  v11 = *(v4 + 3);
  if (missingMaterial)
  {
    if (v11)
    {
      [(IDSQRProtoPutMaterialErrorIndication *)missingMaterial mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(IDSQRProtoPutMaterialIndication *)self setMissingMaterial:?];
  }

  if (*(v4 + 32))
  {
    self->_txnId = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end