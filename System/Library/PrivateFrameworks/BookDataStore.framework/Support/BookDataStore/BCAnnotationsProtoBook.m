@interface BCAnnotationsProtoBook
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnnotation:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCAnnotationsProtoBook

- (void)addAnnotation:(id)a3
{
  v4 = a3;
  annotations = self->_annotations;
  v8 = v4;
  if (!annotations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_annotations;
    self->_annotations = v6;

    v4 = v8;
    annotations = self->_annotations;
  }

  [(NSMutableArray *)annotations addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BCAnnotationsProtoBook;
  v3 = [(BCAnnotationsProtoBook *)&v7 description];
  v4 = [(BCAnnotationsProtoBook *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  assetID = self->_assetID;
  if (assetID)
  {
    [v3 setObject:assetID forKey:@"assetID"];
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
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_annotations, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_annotations;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"annotation"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_assetID)
  {
    sub_1001C36E8();
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_appVersion)
  {
    sub_1001C36BC();
  }

  PBDataWriterWriteStringField();
  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_annotations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setAssetID:self->_assetID];
  [v8 setAppVersion:self->_appVersion];
  if (self->_assetVersion)
  {
    [v8 setAssetVersion:?];
  }

  if ([(BCAnnotationsProtoBook *)self annotationsCount])
  {
    [v8 clearAnnotations];
    v4 = [(BCAnnotationsProtoBook *)self annotationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCAnnotationsProtoBook *)self annotationAtIndex:i];
        [v8 addAnnotation:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_assetID copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_appVersion copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_assetVersion copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_annotations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{a3, v19}];
        [v5 addAnnotation:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((assetID = self->_assetID, !(assetID | v4[3])) || -[NSString isEqual:](assetID, "isEqual:")) && ((appVersion = self->_appVersion, !(appVersion | v4[2])) || -[NSString isEqual:](appVersion, "isEqual:")) && ((assetVersion = self->_assetVersion, !(assetVersion | v4[4])) || -[NSString isEqual:](assetVersion, "isEqual:")))
  {
    annotations = self->_annotations;
    if (annotations | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    [(BCAnnotationsProtoBook *)self setAssetID:?];
  }

  if (*(v4 + 2))
  {
    [(BCAnnotationsProtoBook *)self setAppVersion:?];
  }

  if (*(v4 + 4))
  {
    [(BCAnnotationsProtoBook *)self setAssetVersion:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BCAnnotationsProtoBook *)self addAnnotation:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end