@interface RTPModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFeature:(id)a3;
- (void)addHashedFeature:(id)a3;
- (void)addLabel:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RTPModel

- (void)addFeature:(id)a3
{
  v4 = a3;
  features = self->_features;
  v8 = v4;
  if (!features)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_features;
    self->_features = v6;

    v4 = v8;
    features = self->_features;
  }

  [(NSMutableArray *)features addObject:v4];
}

- (void)addLabel:(id)a3
{
  v4 = a3;
  labels = self->_labels;
  v8 = v4;
  if (!labels)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_labels;
    self->_labels = v6;

    v4 = v8;
    labels = self->_labels;
  }

  [(NSMutableArray *)labels addObject:v4];
}

- (void)addHashedFeature:(id)a3
{
  v4 = a3;
  hashedFeatures = self->_hashedFeatures;
  v8 = v4;
  if (!hashedFeatures)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_hashedFeatures;
    self->_hashedFeatures = v6;

    v4 = v8;
    hashedFeatures = self->_hashedFeatures;
  }

  [(NSMutableArray *)hashedFeatures addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPModel;
  v3 = [(RTPModel *)&v7 description];
  v4 = [(RTPModel *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  coremlModel = self->_coremlModel;
  if (coremlModel)
  {
    [v3 setObject:coremlModel forKey:@"coreml_model"];
  }

  xgboostModel = self->_xgboostModel;
  if (xgboostModel)
  {
    [v4 setObject:xgboostModel forKey:@"xgboost_model"];
  }

  features = self->_features;
  if (features)
  {
    [v4 setObject:features forKey:@"feature"];
  }

  labels = self->_labels;
  if (labels)
  {
    [v4 setObject:labels forKey:@"label"];
  }

  hashedFeatures = self->_hashedFeatures;
  if (hashedFeatures)
  {
    [v4 setObject:hashedFeatures forKey:@"hashed_feature"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_coremlModel)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_xgboostModel)
  {
    PBDataWriterWriteDataField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_features;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_labels;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v13);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = self->_hashedFeatures;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        PBDataWriterWriteDataField();
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }
}

- (void)copyTo:(id)a3
{
  v16 = a3;
  if (self->_coremlModel)
  {
    [v16 setCoremlModel:?];
  }

  if (self->_xgboostModel)
  {
    [v16 setXgboostModel:?];
  }

  if ([(RTPModel *)self featuresCount])
  {
    [v16 clearFeatures];
    v4 = [(RTPModel *)self featuresCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(RTPModel *)self featureAtIndex:i];
        [v16 addFeature:v7];
      }
    }
  }

  if ([(RTPModel *)self labelsCount])
  {
    [v16 clearLabels];
    v8 = [(RTPModel *)self labelsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(RTPModel *)self labelAtIndex:j];
        [v16 addLabel:v11];
      }
    }
  }

  if ([(RTPModel *)self hashedFeaturesCount])
  {
    [v16 clearHashedFeatures];
    v12 = [(RTPModel *)self hashedFeaturesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(RTPModel *)self hashedFeatureAtIndex:k];
        [v16 addHashedFeature:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_coremlModel copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_xgboostModel copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = self->_features;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      v14 = 0;
      do
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v37 + 1) + 8 * v14) copyWithZone:a3];
        [v5 addFeature:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v12);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = self->_labels;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v33 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addLabel:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v18);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = self->_hashedFeatures;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v29 + 1) + 8 * v26) copyWithZone:{a3, v29}];
        [v5 addHashedFeature:v27];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v24);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((coremlModel = self->_coremlModel, !(coremlModel | v4[1])) || -[NSData isEqual:](coremlModel, "isEqual:")) && ((xgboostModel = self->_xgboostModel, !(xgboostModel | v4[5])) || -[NSData isEqual:](xgboostModel, "isEqual:")) && ((features = self->_features, !(features | v4[2])) || -[NSMutableArray isEqual:](features, "isEqual:")) && ((labels = self->_labels, !(labels | v4[4])) || -[NSMutableArray isEqual:](labels, "isEqual:")))
  {
    hashedFeatures = self->_hashedFeatures;
    if (hashedFeatures | v4[3])
    {
      v10 = [(NSMutableArray *)hashedFeatures isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_coremlModel hash];
  v4 = [(NSData *)self->_xgboostModel hash]^ v3;
  v5 = [(NSMutableArray *)self->_features hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_labels hash];
  return v6 ^ [(NSMutableArray *)self->_hashedFeatures hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    [(RTPModel *)self setCoremlModel:?];
  }

  if (*(v4 + 5))
  {
    [(RTPModel *)self setXgboostModel:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(RTPModel *)self addFeature:*(*(&v28 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = *(v4 + 4);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(RTPModel *)self addLabel:*(*(&v24 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(v4 + 3);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(RTPModel *)self addHashedFeature:*(*(&v20 + 1) + 8 * k), v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

@end