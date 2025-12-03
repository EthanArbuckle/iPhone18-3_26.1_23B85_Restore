@interface BCAnnotationsProtoBook
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnnotation:(id)annotation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCAnnotationsProtoBook

- (void)addAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotations = self->_annotations;
  v8 = annotationCopy;
  if (!annotations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_annotations;
    self->_annotations = v6;

    annotationCopy = v8;
    annotations = self->_annotations;
  }

  [(NSMutableArray *)annotations addObject:annotationCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BCAnnotationsProtoBook;
  v4 = [(BCAnnotationsProtoBook *)&v8 description];
  dictionaryRepresentation = [(BCAnnotationsProtoBook *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  assetID = self->_assetID;
  if (assetID)
  {
    [dictionary setObject:assetID forKey:@"assetID"];
  }

  appVersion = self->_appVersion;
  if (appVersion)
  {
    [v4 setObject:appVersion forKey:@"appVersion"];
  }

  assetVersion = self->_assetVersion;
  if (assetVersion)
  {
    [v4 setObject:assetVersion forKey:@"assetVersion"];
  }

  if ([(NSMutableArray *)self->_annotations count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_annotations, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_annotations;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"annotation"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_assetID)
  {
    sub_1E4708B80();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_appVersion)
  {
    sub_1E4708B54();
  }

  PBDataWriterWriteStringField();
  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_annotations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAssetID:self->_assetID];
  [toCopy setAppVersion:self->_appVersion];
  if (self->_assetVersion)
  {
    [toCopy setAssetVersion:?];
  }

  if ([(BCAnnotationsProtoBook *)self annotationsCount])
  {
    [toCopy clearAnnotations];
    annotationsCount = [(BCAnnotationsProtoBook *)self annotationsCount];
    if (annotationsCount)
    {
      v5 = annotationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCAnnotationsProtoBook *)self annotationAtIndex:i];
        [toCopy addAnnotation:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_assetID copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_appVersion copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_assetVersion copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_annotations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
        [v5 addAnnotation:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((assetID = self->_assetID, !(assetID | equalCopy[3])) || -[NSString isEqual:](assetID, "isEqual:")) && ((appVersion = self->_appVersion, !(appVersion | equalCopy[2])) || -[NSString isEqual:](appVersion, "isEqual:")) && ((assetVersion = self->_assetVersion, !(assetVersion | equalCopy[4])) || -[NSString isEqual:](assetVersion, "isEqual:")))
  {
    annotations = self->_annotations;
    if (annotations | equalCopy[1])
    {
      v9 = [(NSMutableArray *)annotations isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetID hash];
  v4 = [(NSString *)self->_appVersion hash]^ v3;
  v5 = [(NSString *)self->_assetVersion hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_annotations hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(BCAnnotationsProtoBook *)self setAssetID:?];
  }

  if (*(fromCopy + 2))
  {
    [(BCAnnotationsProtoBook *)self setAppVersion:?];
  }

  if (*(fromCopy + 4))
  {
    [(BCAnnotationsProtoBook *)self setAssetVersion:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BCAnnotationsProtoBook *)self addAnnotation:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end