@interface CPLFaceAnalysis
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFaceInstances:(id)instances;
- (void)addPetFaceInstances:(id)instances;
- (void)addTorsoFaceInstances:(id)instances;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLFaceAnalysis

- (void)mergeFrom:(id)from
{
  v37 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 36))
  {
    self->_completed = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CPLFaceAnalysis *)self addFaceInstances:*(*(&v30 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v5[2];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CPLFaceAnalysis *)self addPetFaceInstances:*(*(&v26 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v5[3];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(CPLFaceAnalysis *)self addTorsoFaceInstances:*(*(&v22 + 1) + 8 * v20++), v22];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_completed;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_faceInstances hash]^ v3;
  v5 = [(NSMutableArray *)self->_petFaceInstances hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_torsoFaceInstances hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (!self->_completed)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if ((*(equalCopy + 32) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  faceInstances = self->_faceInstances;
  if (faceInstances | *(equalCopy + 1) && ![(NSMutableArray *)faceInstances isEqual:?])
  {
    goto LABEL_11;
  }

  petFaceInstances = self->_petFaceInstances;
  if (petFaceInstances | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)petFaceInstances isEqual:?])
    {
      goto LABEL_11;
    }
  }

  torsoFaceInstances = self->_torsoFaceInstances;
  if (torsoFaceInstances | *(equalCopy + 3))
  {
    v9 = [(NSMutableArray *)torsoFaceInstances isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_12:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_completed;
    *(v5 + 36) |= 1u;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = self->_faceInstances;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v35 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addFaceInstances:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = self->_petFaceInstances;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v31 + 1) + 8 * v17) copyWithZone:zone];
        [v6 addPetFaceInstances:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v15);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_torsoFaceInstances;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v27 + 1) + 8 * v23) copyWithZone:{zone, v27}];
        [v6 addTorsoFaceInstances:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[32] = self->_completed;
    toCopy[36] |= 1u;
  }

  v17 = toCopy;
  if ([(CPLFaceAnalysis *)self faceInstancesCount])
  {
    [v17 clearFaceInstances];
    faceInstancesCount = [(CPLFaceAnalysis *)self faceInstancesCount];
    if (faceInstancesCount)
    {
      v6 = faceInstancesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CPLFaceAnalysis *)self faceInstancesAtIndex:i];
        [v17 addFaceInstances:v8];
      }
    }
  }

  if ([(CPLFaceAnalysis *)self petFaceInstancesCount])
  {
    [v17 clearPetFaceInstances];
    petFaceInstancesCount = [(CPLFaceAnalysis *)self petFaceInstancesCount];
    if (petFaceInstancesCount)
    {
      v10 = petFaceInstancesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(CPLFaceAnalysis *)self petFaceInstancesAtIndex:j];
        [v17 addPetFaceInstances:v12];
      }
    }
  }

  if ([(CPLFaceAnalysis *)self torsoFaceInstancesCount])
  {
    [v17 clearTorsoFaceInstances];
    torsoFaceInstancesCount = [(CPLFaceAnalysis *)self torsoFaceInstancesCount];
    if (torsoFaceInstancesCount)
    {
      v14 = torsoFaceInstancesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(CPLFaceAnalysis *)self torsoFaceInstancesAtIndex:k];
        [v17 addTorsoFaceInstances:v16];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_faceInstances;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_petFaceInstances;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_torsoFaceInstances;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [dictionary setObject:v4 forKey:@"completed"];
  }

  if ([(NSMutableArray *)self->_faceInstances count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_faceInstances, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = self->_faceInstances;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"faceInstances"];
  }

  if ([(NSMutableArray *)self->_petFaceInstances count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_petFaceInstances, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_petFaceInstances;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"petFaceInstances"];
  }

  if ([(NSMutableArray *)self->_torsoFaceInstances count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_torsoFaceInstances, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_torsoFaceInstances;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"torsoFaceInstances"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLFaceAnalysis;
  v4 = [(CPLFaceAnalysis *)&v8 description];
  dictionaryRepresentation = [(CPLFaceAnalysis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTorsoFaceInstances:(id)instances
{
  instancesCopy = instances;
  torsoFaceInstances = self->_torsoFaceInstances;
  v8 = instancesCopy;
  if (!torsoFaceInstances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_torsoFaceInstances;
    self->_torsoFaceInstances = v6;

    instancesCopy = v8;
    torsoFaceInstances = self->_torsoFaceInstances;
  }

  [(NSMutableArray *)torsoFaceInstances addObject:instancesCopy];
}

- (void)addPetFaceInstances:(id)instances
{
  instancesCopy = instances;
  petFaceInstances = self->_petFaceInstances;
  v8 = instancesCopy;
  if (!petFaceInstances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_petFaceInstances;
    self->_petFaceInstances = v6;

    instancesCopy = v8;
    petFaceInstances = self->_petFaceInstances;
  }

  [(NSMutableArray *)petFaceInstances addObject:instancesCopy];
}

- (void)addFaceInstances:(id)instances
{
  instancesCopy = instances;
  faceInstances = self->_faceInstances;
  v8 = instancesCopy;
  if (!faceInstances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_faceInstances;
    self->_faceInstances = v6;

    instancesCopy = v8;
    faceInstances = self->_faceInstances;
  }

  [(NSMutableArray *)faceInstances addObject:instancesCopy];
}

@end