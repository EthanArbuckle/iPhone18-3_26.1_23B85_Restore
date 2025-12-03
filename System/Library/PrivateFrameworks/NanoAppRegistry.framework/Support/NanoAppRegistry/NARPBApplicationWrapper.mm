@interface NARPBApplicationWrapper
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppTags:(id)tags;
- (void)addITunesPlistKeys:(id)keys;
- (void)addITunesPlistValues:(id)values;
- (void)addInfoPlistLocalizations:(id)localizations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSupportsForegroundApplication:(BOOL)application;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation NARPBApplicationWrapper

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addInfoPlistLocalizations:(id)localizations
{
  localizationsCopy = localizations;
  infoPlistLocalizations = self->_infoPlistLocalizations;
  v8 = localizationsCopy;
  if (!infoPlistLocalizations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_infoPlistLocalizations;
    self->_infoPlistLocalizations = v6;

    localizationsCopy = v8;
    infoPlistLocalizations = self->_infoPlistLocalizations;
  }

  [(NSMutableArray *)infoPlistLocalizations addObject:localizationsCopy];
}

- (void)addITunesPlistKeys:(id)keys
{
  keysCopy = keys;
  iTunesPlistKeys = self->_iTunesPlistKeys;
  v8 = keysCopy;
  if (!iTunesPlistKeys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_iTunesPlistKeys;
    self->_iTunesPlistKeys = v6;

    keysCopy = v8;
    iTunesPlistKeys = self->_iTunesPlistKeys;
  }

  [(NSMutableArray *)iTunesPlistKeys addObject:keysCopy];
}

- (void)addITunesPlistValues:(id)values
{
  valuesCopy = values;
  iTunesPlistValues = self->_iTunesPlistValues;
  v8 = valuesCopy;
  if (!iTunesPlistValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_iTunesPlistValues;
    self->_iTunesPlistValues = v6;

    valuesCopy = v8;
    iTunesPlistValues = self->_iTunesPlistValues;
  }

  [(NSMutableArray *)iTunesPlistValues addObject:valuesCopy];
}

- (void)addAppTags:(id)tags
{
  tagsCopy = tags;
  appTags = self->_appTags;
  v8 = tagsCopy;
  if (!appTags)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_appTags;
    self->_appTags = v6;

    tagsCopy = v8;
    appTags = self->_appTags;
  }

  [(NSMutableArray *)appTags addObject:tagsCopy];
}

- (void)setHasSupportsForegroundApplication:(BOOL)application
{
  if (application)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = NARPBApplicationWrapper;
  v3 = [(NARPBApplicationWrapper *)&v7 description];
  dictionaryRepresentation = [(NARPBApplicationWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  syncId = self->_syncId;
  if (syncId)
  {
    [v3 setObject:syncId forKey:@"syncId"];
  }

  sparsePlistData = self->_sparsePlistData;
  if (sparsePlistData)
  {
    [v3 setObject:sparsePlistData forKey:@"sparsePlistData"];
  }

  if ([(NSMutableArray *)self->_infoPlistLocalizations count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_infoPlistLocalizations, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_infoPlistLocalizations;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"infoPlistLocalizations"];
  }

  iTunesPlistKeys = self->_iTunesPlistKeys;
  if (iTunesPlistKeys)
  {
    [v3 setObject:iTunesPlistKeys forKey:@"iTunesPlistKeys"];
  }

  iTunesPlistValues = self->_iTunesPlistValues;
  if (iTunesPlistValues)
  {
    [v3 setObject:iTunesPlistValues forKey:@"iTunesPlistValues"];
  }

  if (*&self->_has)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_sequenceNumber];
    [v3 setObject:v16 forKey:@"sequenceNumber"];
  }

  launchServicesBundleType = self->_launchServicesBundleType;
  if (launchServicesBundleType)
  {
    [v3 setObject:launchServicesBundleType forKey:@"launchServicesBundleType"];
  }

  appState = self->_appState;
  if (appState)
  {
    dictionaryRepresentation2 = [(NARPBApplicationStateWrapper *)appState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"appState"];
  }

  appTags = self->_appTags;
  if (appTags)
  {
    [v3 setObject:appTags forKey:@"appTags"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v21 = [NSNumber numberWithBool:self->_supportsForegroundApplication];
    [v3 setObject:v21 forKey:@"supportsForegroundApplication"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_syncId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sparsePlistData)
  {
    PBDataWriterWriteDataField();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = self->_infoPlistLocalizations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v8);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = self->_iTunesPlistKeys;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = self->_iTunesPlistValues;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      v22 = 0;
      do
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v36 + 1) + 8 * v22);
        PBDataWriterWriteStringField();
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v20);
  }

  if (*&self->_has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint32Field();
  }

  if (self->_launchServicesBundleType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appState)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_appTags;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      v29 = 0;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v32 + 1) + 8 * v29);
        PBDataWriterWriteStringField();
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v27);
  }

  if ((*&self->_has & 4) != 0)
  {
    supportsForegroundApplication = self->_supportsForegroundApplication;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[20] = self->_version;
    *(toCopy + 88) |= 2u;
  }

  v21 = toCopy;
  if (self->_syncId)
  {
    [toCopy setSyncId:?];
  }

  if (self->_sparsePlistData)
  {
    [v21 setSparsePlistData:?];
  }

  if ([(NARPBApplicationWrapper *)self infoPlistLocalizationsCount])
  {
    [v21 clearInfoPlistLocalizations];
    infoPlistLocalizationsCount = [(NARPBApplicationWrapper *)self infoPlistLocalizationsCount];
    if (infoPlistLocalizationsCount)
    {
      v6 = infoPlistLocalizationsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NARPBApplicationWrapper *)self infoPlistLocalizationsAtIndex:i];
        [v21 addInfoPlistLocalizations:v8];
      }
    }
  }

  if ([(NARPBApplicationWrapper *)self iTunesPlistKeysCount])
  {
    [v21 clearITunesPlistKeys];
    iTunesPlistKeysCount = [(NARPBApplicationWrapper *)self iTunesPlistKeysCount];
    if (iTunesPlistKeysCount)
    {
      v10 = iTunesPlistKeysCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NARPBApplicationWrapper *)self iTunesPlistKeysAtIndex:j];
        [v21 addITunesPlistKeys:v12];
      }
    }
  }

  if ([(NARPBApplicationWrapper *)self iTunesPlistValuesCount])
  {
    [v21 clearITunesPlistValues];
    iTunesPlistValuesCount = [(NARPBApplicationWrapper *)self iTunesPlistValuesCount];
    if (iTunesPlistValuesCount)
    {
      v14 = iTunesPlistValuesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(NARPBApplicationWrapper *)self iTunesPlistValuesAtIndex:k];
        [v21 addITunesPlistValues:v16];
      }
    }
  }

  if (*&self->_has)
  {
    *(v21 + 14) = self->_sequenceNumber;
    *(v21 + 88) |= 1u;
  }

  if (self->_launchServicesBundleType)
  {
    [v21 setLaunchServicesBundleType:?];
  }

  if (self->_appState)
  {
    [v21 setAppState:?];
  }

  if ([(NARPBApplicationWrapper *)self appTagsCount])
  {
    [v21 clearAppTags];
    appTagsCount = [(NARPBApplicationWrapper *)self appTagsCount];
    if (appTagsCount)
    {
      v18 = appTagsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(NARPBApplicationWrapper *)self appTagsAtIndex:m];
        [v21 addAppTags:v20];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v21 + 84) = self->_supportsForegroundApplication;
    *(v21 + 88) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[20] = self->_version;
    *(v5 + 88) |= 2u;
  }

  v7 = [(NSString *)self->_syncId copyWithZone:zone];
  v8 = v6[9];
  v6[9] = v7;

  v9 = [(NSData *)self->_sparsePlistData copyWithZone:zone];
  v10 = v6[8];
  v6[8] = v9;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = self->_infoPlistLocalizations;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    do
    {
      v15 = 0;
      do
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v52 + 1) + 8 * v15) copyWithZone:zone];
        [v6 addInfoPlistLocalizations:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v13);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = self->_iTunesPlistKeys;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v49;
    do
    {
      v21 = 0;
      do
      {
        if (*v49 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v48 + 1) + 8 * v21) copyWithZone:zone];
        [v6 addITunesPlistKeys:v22];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v19);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = self->_iTunesPlistValues;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    do
    {
      v27 = 0;
      do
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v44 + 1) + 8 * v27) copyWithZone:zone];
        [v6 addITunesPlistValues:v28];

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v25);
  }

  if (*&self->_has)
  {
    *(v6 + 14) = self->_sequenceNumber;
    *(v6 + 88) |= 1u;
  }

  v29 = [(NSString *)self->_launchServicesBundleType copyWithZone:zone];
  v30 = v6[6];
  v6[6] = v29;

  v31 = [(NARPBApplicationStateWrapper *)self->_appState copyWithZone:zone];
  v32 = v6[1];
  v6[1] = v31;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = self->_appTags;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v41;
    do
    {
      v37 = 0;
      do
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v40 + 1) + 8 * v37) copyWithZone:{zone, v40}];
        [v6 addAppTags:v38];

        v37 = v37 + 1;
      }

      while (v35 != v37);
      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v35);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 84) = self->_supportsForegroundApplication;
    *(v6 + 88) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = *(equalCopy + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_version != *(equalCopy + 20))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_30;
  }

  syncId = self->_syncId;
  if (syncId | *(equalCopy + 9) && ![(NSString *)syncId isEqual:?])
  {
    goto LABEL_30;
  }

  sparsePlistData = self->_sparsePlistData;
  if (sparsePlistData | *(equalCopy + 8))
  {
    if (![(NSData *)sparsePlistData isEqual:?])
    {
      goto LABEL_30;
    }
  }

  infoPlistLocalizations = self->_infoPlistLocalizations;
  if (infoPlistLocalizations | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)infoPlistLocalizations isEqual:?])
    {
      goto LABEL_30;
    }
  }

  iTunesPlistKeys = self->_iTunesPlistKeys;
  if (iTunesPlistKeys | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)iTunesPlistKeys isEqual:?])
    {
      goto LABEL_30;
    }
  }

  iTunesPlistValues = self->_iTunesPlistValues;
  if (iTunesPlistValues | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)iTunesPlistValues isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v11 = *(equalCopy + 88);
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_sequenceNumber != *(equalCopy + 14))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_30;
  }

  launchServicesBundleType = self->_launchServicesBundleType;
  if (launchServicesBundleType | *(equalCopy + 6) && ![(NSString *)launchServicesBundleType isEqual:?])
  {
    goto LABEL_30;
  }

  appState = self->_appState;
  if (appState | *(equalCopy + 1))
  {
    if (![(NARPBApplicationStateWrapper *)appState isEqual:?])
    {
      goto LABEL_30;
    }
  }

  appTags = self->_appTags;
  if (appTags | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)appTags isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v15 = (*(equalCopy + 88) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 88) & 4) == 0)
    {
LABEL_30:
      v15 = 0;
      goto LABEL_31;
    }

    if (self->_supportsForegroundApplication)
    {
      if ((*(equalCopy + 84) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(equalCopy + 84))
    {
      goto LABEL_30;
    }

    v15 = 1;
  }

LABEL_31:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_version;
  }

  else
  {
    v14 = 0;
  }

  v13 = [(NSString *)self->_syncId hash];
  v3 = [(NSData *)self->_sparsePlistData hash];
  v4 = [(NSMutableArray *)self->_infoPlistLocalizations hash];
  v5 = [(NSMutableArray *)self->_iTunesPlistKeys hash];
  v6 = [(NSMutableArray *)self->_iTunesPlistValues hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_sequenceNumber;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_launchServicesBundleType hash];
  v9 = [(NARPBApplicationStateWrapper *)self->_appState hash];
  v10 = [(NSMutableArray *)self->_appTags hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_supportsForegroundApplication;
  }

  else
  {
    v11 = 0;
  }

  return v13 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[22] & 2) != 0)
  {
    self->_version = fromCopy[20];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 9))
  {
    [(NARPBApplicationWrapper *)self setSyncId:?];
  }

  if (*(v5 + 8))
  {
    [(NARPBApplicationWrapper *)self setSparsePlistData:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = *(v5 + 5);
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NARPBApplicationWrapper *)self addInfoPlistLocalizations:*(*(&v40 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v8);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = *(v5 + 3);
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NARPBApplicationWrapper *)self addITunesPlistKeys:*(*(&v36 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = *(v5 + 4);
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(NARPBApplicationWrapper *)self addITunesPlistValues:*(*(&v32 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v18);
  }

  if (*(v5 + 88))
  {
    self->_sequenceNumber = *(v5 + 14);
    *&self->_has |= 1u;
  }

  if (*(v5 + 6))
  {
    [(NARPBApplicationWrapper *)self setLaunchServicesBundleType:?];
  }

  appState = self->_appState;
  v22 = *(v5 + 1);
  if (appState)
  {
    if (v22)
    {
      [(NARPBApplicationStateWrapper *)appState mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(NARPBApplicationWrapper *)self setAppState:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = *(v5 + 2);
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (m = 0; m != v25; m = m + 1)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(NARPBApplicationWrapper *)self addAppTags:*(*(&v28 + 1) + 8 * m), v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v25);
  }

  if ((*(v5 + 88) & 4) != 0)
  {
    self->_supportsForegroundApplication = *(v5 + 84);
    *&self->_has |= 4u;
  }
}

@end