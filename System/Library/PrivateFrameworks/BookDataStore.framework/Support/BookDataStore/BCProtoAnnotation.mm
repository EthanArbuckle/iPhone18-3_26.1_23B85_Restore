@interface BCProtoAnnotation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasIsUnderline:(BOOL)a3;
- (void)setHasPlAbsolutePhysicalLocation:(BOOL)a3;
- (void)setHasPlLocationRangeEnd:(BOOL)a3;
- (void)setHasPlLocationRangeStart:(BOOL)a3;
- (void)setHasReadingProgress:(BOOL)a3;
- (void)setHasReadingProgressHighWaterMark:(BOOL)a3;
- (void)setHasSpineIndexUpdated:(BOOL)a3;
- (void)setHasStyle:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasUserModificationDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCProtoAnnotation

- (void)setHasDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsUnderline:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasUserModificationDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasReadingProgressHighWaterMark:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSpineIndexUpdated:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasReadingProgress:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPlAbsolutePhysicalLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPlLocationRangeEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPlLocationRangeStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BCProtoAnnotation;
  v3 = [(BCProtoAnnotation *)&v7 description];
  v4 = [(BCProtoAnnotation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithDouble:self->_creationDate];
  [v3 setObject:v4 forKey:@"creationDate"];

  creatorIdentifier = self->_creatorIdentifier;
  if (creatorIdentifier)
  {
    [v3 setObject:creatorIdentifier forKey:@"creatorIdentifier"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_deleted];
    [v3 setObject:v7 forKey:@"deleted"];

    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isUnderline];
    [v3 setObject:v8 forKey:@"isUnderline"];
  }

  locationCFIString = self->_locationCFIString;
  if (locationCFIString)
  {
    [v3 setObject:locationCFIString forKey:@"locationCFIString"];
  }

  v10 = [NSNumber numberWithDouble:self->_modificationDate];
  [v3 setObject:v10 forKey:@"modificationDate"];

  note = self->_note;
  if (note)
  {
    [v3 setObject:note forKey:@"note"];
  }

  representativeText = self->_representativeText;
  if (representativeText)
  {
    [v3 setObject:representativeText forKey:@"representativeText"];
  }

  selectedText = self->_selectedText;
  if (selectedText)
  {
    [v3 setObject:selectedText forKey:@"selectedText"];
  }

  v15 = self->_has;
  if ((v15 & 0x80) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_style];
    [v3 setObject:v16 forKey:@"style"];

    v15 = self->_has;
  }

  if ((v15 & 0x100) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_type];
    [v3 setObject:v17 forKey:@"type"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  physicalPageNumber = self->_physicalPageNumber;
  if (physicalPageNumber)
  {
    [v3 setObject:physicalPageNumber forKey:@"physicalPageNumber"];
  }

  annotationVersion = self->_annotationVersion;
  if (annotationVersion)
  {
    [v3 setObject:annotationVersion forKey:@"annotationVersion"];
  }

  assetVersion = self->_assetVersion;
  if (assetVersion)
  {
    [v3 setObject:assetVersion forKey:@"assetVersion"];
  }

  attachments = self->_attachments;
  if (attachments)
  {
    [v3 setObject:attachments forKey:@"attachments"];
  }

  chapterTitle = self->_chapterTitle;
  if (chapterTitle)
  {
    [v3 setObject:chapterTitle forKey:@"chapterTitle"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v24 = [NSNumber numberWithDouble:self->_userModificationDate];
    [v3 setObject:v24 forKey:@"userModificationDate"];
  }

  selectedTextRange = self->_selectedTextRange;
  if (selectedTextRange)
  {
    v26 = [(BCAnnotationRange *)selectedTextRange dictionaryRepresentation];
    [v3 setObject:v26 forKey:@"selectedTextRange"];
  }

  v27 = self->_has;
  if ((v27 & 0x40) != 0)
  {
    *&v11 = self->_readingProgressHighWaterMark;
    v37 = [NSNumber numberWithFloat:v11];
    [v3 setObject:v37 forKey:@"readingProgressHighWaterMark"];

    v27 = self->_has;
    if ((v27 & 0x800) == 0)
    {
LABEL_37:
      if ((v27 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_37;
  }

  v38 = [NSNumber numberWithBool:self->_spineIndexUpdated];
  [v3 setObject:v38 forKey:@"spineIndexUpdated"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_38:
    *&v11 = self->_readingProgress;
    v28 = [NSNumber numberWithFloat:v11];
    [v3 setObject:v28 forKey:@"readingProgress"];
  }

LABEL_39:
  futureProofing11 = self->_futureProofing11;
  if (futureProofing11)
  {
    [v3 setObject:futureProofing11 forKey:@"futureProofing11"];
  }

  futureProofing12 = self->_futureProofing12;
  if (futureProofing12)
  {
    [v3 setObject:futureProofing12 forKey:@"futureProofing12"];
  }

  v31 = self->_has;
  if ((v31 & 4) != 0)
  {
    v39 = [NSNumber numberWithInt:self->_plAbsolutePhysicalLocation];
    [v3 setObject:v39 forKey:@"plAbsolutePhysicalLocation"];

    v31 = self->_has;
    if ((v31 & 8) == 0)
    {
LABEL_45:
      if ((v31 & 0x10) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((v31 & 8) == 0)
  {
    goto LABEL_45;
  }

  v40 = [NSNumber numberWithInt:self->_plLocationRangeEnd];
  [v3 setObject:v40 forKey:@"plLocationRangeEnd"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_46:
    v32 = [NSNumber numberWithInt:self->_plLocationRangeStart];
    [v3 setObject:v32 forKey:@"plLocationRangeStart"];
  }

LABEL_47:
  plLocationStorageUUID = self->_plLocationStorageUUID;
  if (plLocationStorageUUID)
  {
    [v3 setObject:plLocationStorageUUID forKey:@"plLocationStorageUUID"];
  }

  plUserData = self->_plUserData;
  if (plUserData)
  {
    [v3 setObject:plUserData forKey:@"plUserData"];
  }

  if (*&self->_has)
  {
    v35 = [NSNumber numberWithDouble:self->_locationModificationDate];
    [v3 setObject:v35 forKey:@"locationModificationDate"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  creationDate = self->_creationDate;
  v24 = v4;
  PBDataWriterWriteDoubleField();
  if (!self->_creatorIdentifier)
  {
    sub_1001C3740();
  }

  PBDataWriterWriteStringField();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    isUnderline = self->_isUnderline;
    PBDataWriterWriteBOOLField();
  }

  if (self->_locationCFIString)
  {
    PBDataWriterWriteStringField();
  }

  modificationDate = self->_modificationDate;
  PBDataWriterWriteDoubleField();
  if (self->_note)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_representativeText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_selectedText)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 0x80) != 0)
  {
    style = self->_style;
    PBDataWriterWriteUint32Field();
    v10 = self->_has;
  }

  if ((v10 & 0x100) != 0)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
  }

  if (!self->_uuid)
  {
    sub_1001C3714();
  }

  PBDataWriterWriteStringField();
  if (self->_physicalPageNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_annotationVersion)
  {
    PBDataWriterWriteStringField();
  }

  v13 = v24;
  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
    v13 = v24;
  }

  if (self->_attachments)
  {
    PBDataWriterWriteStringField();
    v13 = v24;
  }

  if (self->_chapterTitle)
  {
    PBDataWriterWriteStringField();
    v13 = v24;
  }

  if ((*&self->_has & 2) != 0)
  {
    userModificationDate = self->_userModificationDate;
    PBDataWriterWriteDoubleField();
    v13 = v24;
  }

  if (self->_selectedTextRange)
  {
    PBDataWriterWriteSubmessage();
    v13 = v24;
  }

  v15 = self->_has;
  if ((v15 & 0x40) != 0)
  {
    readingProgressHighWaterMark = self->_readingProgressHighWaterMark;
    PBDataWriterWriteFloatField();
    v13 = v24;
    v15 = self->_has;
    if ((v15 & 0x800) == 0)
    {
LABEL_35:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_35;
  }

  spineIndexUpdated = self->_spineIndexUpdated;
  PBDataWriterWriteBOOLField();
  v13 = v24;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_36:
    readingProgress = self->_readingProgress;
    PBDataWriterWriteFloatField();
    v13 = v24;
  }

LABEL_37:
  if (self->_futureProofing11)
  {
    PBDataWriterWriteStringField();
    v13 = v24;
  }

  if (self->_futureProofing12)
  {
    PBDataWriterWriteStringField();
    v13 = v24;
  }

  v17 = self->_has;
  if ((v17 & 4) != 0)
  {
    plAbsolutePhysicalLocation = self->_plAbsolutePhysicalLocation;
    PBDataWriterWriteInt32Field();
    v13 = v24;
    v17 = self->_has;
    if ((v17 & 8) == 0)
    {
LABEL_43:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_43;
  }

  plLocationRangeEnd = self->_plLocationRangeEnd;
  PBDataWriterWriteInt32Field();
  v13 = v24;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_44:
    plLocationRangeStart = self->_plLocationRangeStart;
    PBDataWriterWriteInt32Field();
    v13 = v24;
  }

LABEL_45:
  if (self->_plLocationStorageUUID)
  {
    PBDataWriterWriteStringField();
    v13 = v24;
  }

  if (self->_plUserData)
  {
    PBDataWriterWriteDataField();
    v13 = v24;
  }

  if (*&self->_has)
  {
    locationModificationDate = self->_locationModificationDate;
    PBDataWriterWriteDoubleField();
    v13 = v24;
  }
}

- (void)copyTo:(id)a3
{
  v10 = a3;
  v10[1] = *&self->_creationDate;
  [v10 setCreatorIdentifier:self->_creatorIdentifier];
  v4 = v10;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v10 + 200) = self->_deleted;
    *(v10 + 102) |= 0x200u;
    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    *(v10 + 201) = self->_isUnderline;
    *(v10 + 102) |= 0x400u;
  }

  if (self->_locationCFIString)
  {
    [v10 setLocationCFIString:?];
    v4 = v10;
  }

  v4[3] = *&self->_modificationDate;
  if (self->_note)
  {
    [v10 setNote:?];
    v4 = v10;
  }

  if (self->_representativeText)
  {
    [v10 setRepresentativeText:?];
    v4 = v10;
  }

  if (self->_selectedText)
  {
    [v10 setSelectedText:?];
    v4 = v10;
  }

  v6 = self->_has;
  if ((v6 & 0x80) != 0)
  {
    *(v4 + 46) = self->_style;
    *(v4 + 102) |= 0x80u;
    v6 = self->_has;
  }

  if ((v6 & 0x100) != 0)
  {
    *(v4 + 47) = self->_type;
    *(v4 + 102) |= 0x100u;
  }

  [v4 setUuid:self->_uuid];
  if (self->_physicalPageNumber)
  {
    [v10 setPhysicalPageNumber:?];
  }

  if (self->_annotationVersion)
  {
    [v10 setAnnotationVersion:?];
  }

  v7 = v10;
  if (self->_assetVersion)
  {
    [v10 setAssetVersion:?];
    v7 = v10;
  }

  if (self->_attachments)
  {
    [v10 setAttachments:?];
    v7 = v10;
  }

  if (self->_chapterTitle)
  {
    [v10 setChapterTitle:?];
    v7 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    v7[4] = *&self->_userModificationDate;
    *(v7 + 102) |= 2u;
  }

  if (self->_selectedTextRange)
  {
    [v10 setSelectedTextRange:?];
    v7 = v10;
  }

  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    *(v7 + 39) = LODWORD(self->_readingProgressHighWaterMark);
    *(v7 + 102) |= 0x40u;
    v8 = self->_has;
    if ((v8 & 0x800) == 0)
    {
LABEL_33:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_33;
  }

  *(v7 + 202) = self->_spineIndexUpdated;
  *(v7 + 102) |= 0x800u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_34:
    *(v7 + 38) = LODWORD(self->_readingProgress);
    *(v7 + 102) |= 0x20u;
  }

LABEL_35:
  if (self->_futureProofing11)
  {
    [v10 setFutureProofing11:?];
    v7 = v10;
  }

  if (self->_futureProofing12)
  {
    [v10 setFutureProofing12:?];
    v7 = v10;
  }

  v9 = self->_has;
  if ((v9 & 4) != 0)
  {
    *(v7 + 30) = self->_plAbsolutePhysicalLocation;
    *(v7 + 102) |= 4u;
    v9 = self->_has;
    if ((v9 & 8) == 0)
    {
LABEL_41:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_41;
  }

  *(v7 + 31) = self->_plLocationRangeEnd;
  *(v7 + 102) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_42:
    *(v7 + 32) = self->_plLocationRangeStart;
    *(v7 + 102) |= 0x10u;
  }

LABEL_43:
  if (self->_plLocationStorageUUID)
  {
    [v10 setPlLocationStorageUUID:?];
    v7 = v10;
  }

  if (self->_plUserData)
  {
    [v10 setPlUserData:?];
    v7 = v10;
  }

  if (*&self->_has)
  {
    v7[2] = *&self->_locationModificationDate;
    *(v7 + 102) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = *&self->_creationDate;
  v6 = [(NSString *)self->_creatorIdentifier copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 200) = self->_deleted;
    *(v5 + 102) |= 0x200u;
    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    *(v5 + 201) = self->_isUnderline;
    *(v5 + 102) |= 0x400u;
  }

  v9 = [(NSString *)self->_locationCFIString copyWithZone:a3];
  v10 = v5[12];
  v5[12] = v9;

  v5[3] = *&self->_modificationDate;
  v11 = [(NSString *)self->_note copyWithZone:a3];
  v12 = v5[13];
  v5[13] = v11;

  v13 = [(NSString *)self->_representativeText copyWithZone:a3];
  v14 = v5[20];
  v5[20] = v13;

  v15 = [(NSString *)self->_selectedText copyWithZone:a3];
  v16 = v5[21];
  v5[21] = v15;

  v17 = self->_has;
  if ((v17 & 0x80) != 0)
  {
    *(v5 + 46) = self->_style;
    *(v5 + 102) |= 0x80u;
    v17 = self->_has;
  }

  if ((v17 & 0x100) != 0)
  {
    *(v5 + 47) = self->_type;
    *(v5 + 102) |= 0x100u;
  }

  v18 = [(NSString *)self->_uuid copyWithZone:a3];
  v19 = v5[24];
  v5[24] = v18;

  v20 = [(NSString *)self->_physicalPageNumber copyWithZone:a3];
  v21 = v5[14];
  v5[14] = v20;

  v22 = [(NSString *)self->_annotationVersion copyWithZone:a3];
  v23 = v5[5];
  v5[5] = v22;

  v24 = [(NSString *)self->_assetVersion copyWithZone:a3];
  v25 = v5[6];
  v5[6] = v24;

  v26 = [(NSString *)self->_attachments copyWithZone:a3];
  v27 = v5[7];
  v5[7] = v26;

  v28 = [(NSString *)self->_chapterTitle copyWithZone:a3];
  v29 = v5[8];
  v5[8] = v28;

  if ((*&self->_has & 2) != 0)
  {
    v5[4] = *&self->_userModificationDate;
    *(v5 + 102) |= 2u;
  }

  v30 = [(BCAnnotationRange *)self->_selectedTextRange copyWithZone:a3];
  v31 = v5[22];
  v5[22] = v30;

  v32 = self->_has;
  if ((v32 & 0x40) != 0)
  {
    *(v5 + 39) = LODWORD(self->_readingProgressHighWaterMark);
    *(v5 + 102) |= 0x40u;
    v32 = self->_has;
    if ((v32 & 0x800) == 0)
    {
LABEL_13:
      if ((v32 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_13;
  }

  *(v5 + 202) = self->_spineIndexUpdated;
  *(v5 + 102) |= 0x800u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    *(v5 + 38) = LODWORD(self->_readingProgress);
    *(v5 + 102) |= 0x20u;
  }

LABEL_15:
  v33 = [(NSString *)self->_futureProofing11 copyWithZone:a3];
  v34 = v5[10];
  v5[10] = v33;

  v35 = [(NSString *)self->_futureProofing12 copyWithZone:a3];
  v36 = v5[11];
  v5[11] = v35;

  v37 = self->_has;
  if ((v37 & 4) != 0)
  {
    *(v5 + 30) = self->_plAbsolutePhysicalLocation;
    *(v5 + 102) |= 4u;
    v37 = self->_has;
    if ((v37 & 8) == 0)
    {
LABEL_17:
      if ((v37 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v37 & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 31) = self->_plLocationRangeEnd;
  *(v5 + 102) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    *(v5 + 32) = self->_plLocationRangeStart;
    *(v5 + 102) |= 0x10u;
  }

LABEL_19:
  v38 = [(NSString *)self->_plLocationStorageUUID copyWithZone:a3];
  v39 = v5[17];
  v5[17] = v38;

  v40 = [(NSData *)self->_plUserData copyWithZone:a3];
  v41 = v5[18];
  v5[18] = v40;

  if (*&self->_has)
  {
    v5[2] = *&self->_locationModificationDate;
    *(v5 + 102) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_106;
  }

  if (self->_creationDate != *(v4 + 1))
  {
    goto LABEL_106;
  }

  creatorIdentifier = self->_creatorIdentifier;
  if (creatorIdentifier | *(v4 + 9))
  {
    if (![(NSString *)creatorIdentifier isEqual:?])
    {
      goto LABEL_106;
    }
  }

  v6 = *(v4 + 102);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 102) & 0x200) == 0)
    {
      goto LABEL_106;
    }

    v12 = *(v4 + 200);
    if (self->_deleted)
    {
      if ((*(v4 + 200) & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else if (*(v4 + 200))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 102) & 0x200) != 0)
  {
    goto LABEL_106;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 102) & 0x400) == 0)
    {
      goto LABEL_106;
    }

    v13 = *(v4 + 201);
    if (self->_isUnderline)
    {
      if ((*(v4 + 201) & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else if (*(v4 + 201))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 102) & 0x400) != 0)
  {
    goto LABEL_106;
  }

  locationCFIString = self->_locationCFIString;
  if (locationCFIString | *(v4 + 12) && ![(NSString *)locationCFIString isEqual:?])
  {
    goto LABEL_106;
  }

  if (self->_modificationDate != *(v4 + 3))
  {
    goto LABEL_106;
  }

  note = self->_note;
  if (note | *(v4 + 13))
  {
    if (![(NSString *)note isEqual:?])
    {
      goto LABEL_106;
    }
  }

  representativeText = self->_representativeText;
  if (representativeText | *(v4 + 20))
  {
    if (![(NSString *)representativeText isEqual:?])
    {
      goto LABEL_106;
    }
  }

  selectedText = self->_selectedText;
  if (selectedText | *(v4 + 21))
  {
    if (![(NSString *)selectedText isEqual:?])
    {
      goto LABEL_106;
    }
  }

  v11 = *(v4 + 102);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_style != *(v4 + 46))
    {
      goto LABEL_106;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_106;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 102) & 0x100) == 0 || self->_type != *(v4 + 47))
    {
      goto LABEL_106;
    }
  }

  else if ((*(v4 + 102) & 0x100) != 0)
  {
    goto LABEL_106;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 24) && ![(NSString *)uuid isEqual:?])
  {
    goto LABEL_106;
  }

  physicalPageNumber = self->_physicalPageNumber;
  if (physicalPageNumber | *(v4 + 14))
  {
    if (![(NSString *)physicalPageNumber isEqual:?])
    {
      goto LABEL_106;
    }
  }

  annotationVersion = self->_annotationVersion;
  if (annotationVersion | *(v4 + 5))
  {
    if (![(NSString *)annotationVersion isEqual:?])
    {
      goto LABEL_106;
    }
  }

  assetVersion = self->_assetVersion;
  if (assetVersion | *(v4 + 6))
  {
    if (![(NSString *)assetVersion isEqual:?])
    {
      goto LABEL_106;
    }
  }

  attachments = self->_attachments;
  if (attachments | *(v4 + 7))
  {
    if (![(NSString *)attachments isEqual:?])
    {
      goto LABEL_106;
    }
  }

  chapterTitle = self->_chapterTitle;
  if (chapterTitle | *(v4 + 8))
  {
    if (![(NSString *)chapterTitle isEqual:?])
    {
      goto LABEL_106;
    }
  }

  has = self->_has;
  v21 = *(v4 + 102);
  if ((has & 2) != 0)
  {
    if ((v21 & 2) == 0 || self->_userModificationDate != *(v4 + 4))
    {
      goto LABEL_106;
    }
  }

  else if ((v21 & 2) != 0)
  {
    goto LABEL_106;
  }

  selectedTextRange = self->_selectedTextRange;
  if (selectedTextRange | *(v4 + 22))
  {
    if (![(BCAnnotationRange *)selectedTextRange isEqual:?])
    {
      goto LABEL_106;
    }

    has = self->_has;
  }

  v23 = *(v4 + 102);
  if ((has & 0x40) != 0)
  {
    if ((v23 & 0x40) == 0 || self->_readingProgressHighWaterMark != *(v4 + 39))
    {
      goto LABEL_106;
    }
  }

  else if ((v23 & 0x40) != 0)
  {
    goto LABEL_106;
  }

  if ((has & 0x800) == 0)
  {
    if ((*(v4 + 102) & 0x800) == 0)
    {
      goto LABEL_67;
    }

LABEL_106:
    v32 = 0;
    goto LABEL_107;
  }

  if ((*(v4 + 102) & 0x800) == 0)
  {
    goto LABEL_106;
  }

  v24 = *(v4 + 202);
  if (self->_spineIndexUpdated)
  {
    if ((*(v4 + 202) & 1) == 0)
    {
      goto LABEL_106;
    }
  }

  else if (*(v4 + 202))
  {
    goto LABEL_106;
  }

LABEL_67:
  if ((has & 0x20) != 0)
  {
    if ((v23 & 0x20) == 0 || self->_readingProgress != *(v4 + 38))
    {
      goto LABEL_106;
    }
  }

  else if ((v23 & 0x20) != 0)
  {
    goto LABEL_106;
  }

  futureProofing11 = self->_futureProofing11;
  if (futureProofing11 | *(v4 + 10) && ![(NSString *)futureProofing11 isEqual:?])
  {
    goto LABEL_106;
  }

  futureProofing12 = self->_futureProofing12;
  if (futureProofing12 | *(v4 + 11))
  {
    if (![(NSString *)futureProofing12 isEqual:?])
    {
      goto LABEL_106;
    }
  }

  v27 = self->_has;
  v28 = *(v4 + 102);
  if ((v27 & 4) != 0)
  {
    if ((v28 & 4) == 0 || self->_plAbsolutePhysicalLocation != *(v4 + 30))
    {
      goto LABEL_106;
    }
  }

  else if ((v28 & 4) != 0)
  {
    goto LABEL_106;
  }

  if ((v27 & 8) != 0)
  {
    if ((v28 & 8) == 0 || self->_plLocationRangeEnd != *(v4 + 31))
    {
      goto LABEL_106;
    }
  }

  else if ((v28 & 8) != 0)
  {
    goto LABEL_106;
  }

  if ((v27 & 0x10) != 0)
  {
    if ((v28 & 0x10) == 0 || self->_plLocationRangeStart != *(v4 + 32))
    {
      goto LABEL_106;
    }
  }

  else if ((v28 & 0x10) != 0)
  {
    goto LABEL_106;
  }

  plLocationStorageUUID = self->_plLocationStorageUUID;
  if (plLocationStorageUUID | *(v4 + 17) && ![(NSString *)plLocationStorageUUID isEqual:?])
  {
    goto LABEL_106;
  }

  plUserData = self->_plUserData;
  if (plUserData | *(v4 + 18))
  {
    if (![(NSData *)plUserData isEqual:?])
    {
      goto LABEL_106;
    }
  }

  v31 = *(v4 + 102);
  if (*&self->_has)
  {
    if ((v31 & 1) == 0 || self->_locationModificationDate != *(v4 + 2))
    {
      goto LABEL_106;
    }

    v32 = 1;
  }

  else
  {
    v32 = (v31 & 1) == 0;
  }

LABEL_107:

  return v32;
}

- (unint64_t)hash
{
  creationDate = self->_creationDate;
  if (creationDate < 0.0)
  {
    creationDate = -creationDate;
  }

  *v2.i64 = floor(creationDate + 0.5);
  v6 = (creationDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2.i64[0] = vbslq_s8(vnegq_f64(v7), v3, v2).i64[0];
  v8 = 2654435761u * *v2.i64;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v2.i64;
  }

  v10 = v8 - fabs(v6);
  if (v6 >= 0.0)
  {
    v10 = v9;
  }

  v76 = v10;
  v75 = [(NSString *)self->_creatorIdentifier hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v74 = 2654435761 * self->_deleted;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v74 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_9:
      v73 = 2654435761 * self->_isUnderline;
      goto LABEL_12;
    }
  }

  v73 = 0;
LABEL_12:
  v72 = [(NSString *)self->_locationCFIString hash];
  modificationDate = self->_modificationDate;
  if (modificationDate < 0.0)
  {
    modificationDate = -modificationDate;
  }

  *v11.i64 = floor(modificationDate + 0.5);
  v14 = (modificationDate - *v11.i64) * 1.84467441e19;
  *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v11.i64[0] = vbslq_s8(vnegq_f64(v15), v12, v11).i64[0];
  v16 = 2654435761u * *v11.i64;
  v17 = v16 + v14;
  if (v14 <= 0.0)
  {
    v17 = 2654435761u * *v11.i64;
  }

  v18 = v16 - fabs(v14);
  if (v14 >= 0.0)
  {
    v18 = v17;
  }

  v71 = v18;
  v70 = [(NSString *)self->_note hash];
  v69 = [(NSString *)self->_representativeText hash];
  v68 = [(NSString *)self->_selectedText hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v67 = 2654435761 * self->_style;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v67 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_20:
      v66 = 2654435761 * self->_type;
      goto LABEL_23;
    }
  }

  v66 = 0;
LABEL_23:
  v65 = [(NSString *)self->_uuid hash];
  v64 = [(NSString *)self->_physicalPageNumber hash];
  v63 = [(NSString *)self->_annotationVersion hash];
  v62 = [(NSString *)self->_assetVersion hash];
  v61 = [(NSString *)self->_attachments hash];
  v60 = [(NSString *)self->_chapterTitle hash];
  if ((*&self->_has & 2) != 0)
  {
    userModificationDate = self->_userModificationDate;
    if (userModificationDate < 0.0)
    {
      userModificationDate = -userModificationDate;
    }

    *v19.i64 = floor(userModificationDate + 0.5);
    v23 = (userModificationDate - *v19.i64) * 1.84467441e19;
    *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v24), v20, v19).i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  v59 = v21;
  v58 = [(BCAnnotationRange *)self->_selectedTextRange hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    readingProgressHighWaterMark = self->_readingProgressHighWaterMark;
    if (readingProgressHighWaterMark >= 0.0)
    {
      v30 = readingProgressHighWaterMark;
    }

    else
    {
      v30 = -readingProgressHighWaterMark;
    }

    *v25.i64 = floor(v30 + 0.5);
    v31 = (v30 - *v25.i64) * 1.84467441e19;
    *v26.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v25 = vbslq_s8(vnegq_f64(v32), v26, v25);
    v28 = 2654435761u * *v25.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v28 += v31;
      }
    }

    else
    {
      v28 -= fabs(v31);
    }
  }

  else
  {
    v28 = 0;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v55 = 2654435761 * self->_spineIndexUpdated;
  }

  else
  {
    v55 = 0;
  }

  v57 = v28;
  if ((has & 0x20) != 0)
  {
    readingProgress = self->_readingProgress;
    if (readingProgress >= 0.0)
    {
      v35 = readingProgress;
    }

    else
    {
      v35 = -readingProgress;
    }

    *v25.i64 = floor(v35 + 0.5);
    v36 = (v35 - *v25.i64) * 1.84467441e19;
    *v26.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v33 = 2654435761u * *vbslq_s8(vnegq_f64(v37), v26, v25).i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v33 += v36;
      }
    }

    else
    {
      v33 -= fabs(v36);
    }
  }

  else
  {
    v33 = 0;
  }

  v38 = [(NSString *)self->_futureProofing11 hash];
  v39 = [(NSString *)self->_futureProofing12 hash];
  v40 = self->_has;
  if ((v40 & 4) == 0)
  {
    v41 = 0;
    if ((v40 & 8) != 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    v42 = 0;
    if ((v40 & 0x10) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  v41 = 2654435761 * self->_plAbsolutePhysicalLocation;
  if ((v40 & 8) == 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  v42 = 2654435761 * self->_plLocationRangeEnd;
  if ((v40 & 0x10) != 0)
  {
LABEL_55:
    v43 = 2654435761 * self->_plLocationRangeStart;
    goto LABEL_59;
  }

LABEL_58:
  v43 = 0;
LABEL_59:
  v44 = [(NSString *)self->_plLocationStorageUUID hash];
  v45 = [(NSData *)self->_plUserData hash];
  if (*&self->_has)
  {
    locationModificationDate = self->_locationModificationDate;
    if (locationModificationDate < 0.0)
    {
      locationModificationDate = -locationModificationDate;
    }

    *v46.i64 = floor(locationModificationDate + 0.5);
    v50 = (locationModificationDate - *v46.i64) * 1.84467441e19;
    *v47.i64 = *v46.i64 - trunc(*v46.i64 * 5.42101086e-20) * 1.84467441e19;
    v51.f64[0] = NAN;
    v51.f64[1] = NAN;
    v46.i64[0] = vbslq_s8(vnegq_f64(v51), v47, v46).i64[0];
    v52 = 2654435761u * *v46.i64;
    v53 = v52 + v50;
    if (v50 <= 0.0)
    {
      v53 = 2654435761u * *v46.i64;
    }

    v48 = v52 - fabs(v50);
    if (v50 >= 0.0)
    {
      v48 = v53;
    }
  }

  else
  {
    v48 = 0;
  }

  return v75 ^ v76 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v33 ^ v38 ^ v39 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v48;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_creationDate = *(v4 + 1);
  v11 = v4;
  if (*(v4 + 9))
  {
    [(BCProtoAnnotation *)self setCreatorIdentifier:?];
    v4 = v11;
  }

  v5 = *(v4 + 102);
  if ((v5 & 0x200) != 0)
  {
    self->_deleted = *(v4 + 200);
    *&self->_has |= 0x200u;
    v5 = *(v4 + 102);
  }

  if ((v5 & 0x400) != 0)
  {
    self->_isUnderline = *(v4 + 201);
    *&self->_has |= 0x400u;
  }

  if (*(v4 + 12))
  {
    [(BCProtoAnnotation *)self setLocationCFIString:?];
    v4 = v11;
  }

  self->_modificationDate = *(v4 + 3);
  if (*(v4 + 13))
  {
    [(BCProtoAnnotation *)self setNote:?];
    v4 = v11;
  }

  if (*(v4 + 20))
  {
    [(BCProtoAnnotation *)self setRepresentativeText:?];
    v4 = v11;
  }

  if (*(v4 + 21))
  {
    [(BCProtoAnnotation *)self setSelectedText:?];
    v4 = v11;
  }

  v6 = *(v4 + 102);
  if ((v6 & 0x80) != 0)
  {
    self->_style = *(v4 + 46);
    *&self->_has |= 0x80u;
    v6 = *(v4 + 102);
  }

  if ((v6 & 0x100) != 0)
  {
    self->_type = *(v4 + 47);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 24))
  {
    [(BCProtoAnnotation *)self setUuid:?];
    v4 = v11;
  }

  if (*(v4 + 14))
  {
    [(BCProtoAnnotation *)self setPhysicalPageNumber:?];
    v4 = v11;
  }

  if (*(v4 + 5))
  {
    [(BCProtoAnnotation *)self setAnnotationVersion:?];
    v4 = v11;
  }

  if (*(v4 + 6))
  {
    [(BCProtoAnnotation *)self setAssetVersion:?];
    v4 = v11;
  }

  if (*(v4 + 7))
  {
    [(BCProtoAnnotation *)self setAttachments:?];
    v4 = v11;
  }

  if (*(v4 + 8))
  {
    [(BCProtoAnnotation *)self setChapterTitle:?];
    v4 = v11;
  }

  if ((*(v4 + 102) & 2) != 0)
  {
    self->_userModificationDate = *(v4 + 4);
    *&self->_has |= 2u;
  }

  selectedTextRange = self->_selectedTextRange;
  v8 = *(v4 + 22);
  if (selectedTextRange)
  {
    if (!v8)
    {
      goto LABEL_39;
    }

    [(BCAnnotationRange *)selectedTextRange mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_39;
    }

    [(BCProtoAnnotation *)self setSelectedTextRange:?];
  }

  v4 = v11;
LABEL_39:
  v9 = *(v4 + 102);
  if ((v9 & 0x40) != 0)
  {
    self->_readingProgressHighWaterMark = *(v4 + 39);
    *&self->_has |= 0x40u;
    v9 = *(v4 + 102);
    if ((v9 & 0x800) == 0)
    {
LABEL_41:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((*(v4 + 102) & 0x800) == 0)
  {
    goto LABEL_41;
  }

  self->_spineIndexUpdated = *(v4 + 202);
  *&self->_has |= 0x800u;
  if ((*(v4 + 102) & 0x20) != 0)
  {
LABEL_42:
    self->_readingProgress = *(v4 + 38);
    *&self->_has |= 0x20u;
  }

LABEL_43:
  if (*(v4 + 10))
  {
    [(BCProtoAnnotation *)self setFutureProofing11:?];
    v4 = v11;
  }

  if (*(v4 + 11))
  {
    [(BCProtoAnnotation *)self setFutureProofing12:?];
    v4 = v11;
  }

  v10 = *(v4 + 102);
  if ((v10 & 4) != 0)
  {
    self->_plAbsolutePhysicalLocation = *(v4 + 30);
    *&self->_has |= 4u;
    v10 = *(v4 + 102);
    if ((v10 & 8) == 0)
    {
LABEL_49:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_49;
  }

  self->_plLocationRangeEnd = *(v4 + 31);
  *&self->_has |= 8u;
  if ((*(v4 + 102) & 0x10) != 0)
  {
LABEL_50:
    self->_plLocationRangeStart = *(v4 + 32);
    *&self->_has |= 0x10u;
  }

LABEL_51:
  if (*(v4 + 17))
  {
    [(BCProtoAnnotation *)self setPlLocationStorageUUID:?];
    v4 = v11;
  }

  if (*(v4 + 18))
  {
    [(BCProtoAnnotation *)self setPlUserData:?];
    v4 = v11;
  }

  if (*(v4 + 102))
  {
    self->_locationModificationDate = *(v4 + 2);
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end