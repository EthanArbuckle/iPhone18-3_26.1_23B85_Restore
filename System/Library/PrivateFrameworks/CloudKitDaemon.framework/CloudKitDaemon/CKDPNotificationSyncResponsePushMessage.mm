@interface CKDPNotificationSyncResponsePushMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sourceAsString:(int)a3;
- (int)StringAsSource:(id)a3;
- (int)source;
- (unint64_t)hash;
- (void)addSubtitleLocalizedArguments:(id)a3;
- (void)addTitleLocalizedArguments:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsRead:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPNotificationSyncResponsePushMessage

- (void)setHasIsRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)source
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_source;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)sourceAsString:(int)a3
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = @"CKRPC";
    }

    else
    {
      if (a3 != 999)
      {
LABEL_12:
        v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);

        return v4;
      }

      v4 = @"UNKNOWN";
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v4 = @"SHARING";

        return v4;
      }

      goto LABEL_12;
    }

    v4 = @"DATABASE";
  }

  return v4;
}

- (int)StringAsSource:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"DATABASE"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"SHARING"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"CKRPC"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"UNKNOWN"))
  {
    v6 = 999;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addTitleLocalizedArguments:(id)a3
{
  v4 = a3;
  titleLocalizedArguments = self->_titleLocalizedArguments;
  v8 = v4;
  if (!titleLocalizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_titleLocalizedArguments;
    self->_titleLocalizedArguments = v6;

    v4 = v8;
    titleLocalizedArguments = self->_titleLocalizedArguments;
  }

  objc_msgSend_addObject_(titleLocalizedArguments, v4, v4);
}

- (void)addSubtitleLocalizedArguments:(id)a3
{
  v4 = a3;
  subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  v8 = v4;
  if (!subtitleLocalizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subtitleLocalizedArguments;
    self->_subtitleLocalizedArguments = v6;

    v4 = v8;
    subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  }

  objc_msgSend_addObject_(subtitleLocalizedArguments, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPNotificationSyncResponsePushMessage;
  v4 = [(CKDPNotificationSyncResponsePushMessage *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if ((*&self->_has & 4) != 0)
  {
    v6 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isRead);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"isRead");
  }

  uuid = self->_uuid;
  if (uuid)
  {
    objc_msgSend_setObject_forKey_(v5, v4, uuid, @"uuid");
  }

  if ((*&self->_has & 2) != 0)
  {
    source = self->_source;
    if (source > 2)
    {
      if (source == 3)
      {
        v10 = @"CKRPC";
        objc_msgSend_setObject_forKey_(v5, v4, @"CKRPC", @"source");
        goto LABEL_16;
      }

      if (source == 999)
      {
        v10 = @"UNKNOWN";
        objc_msgSend_setObject_forKey_(v5, v4, @"UNKNOWN", @"source");
        goto LABEL_16;
      }
    }

    else
    {
      if (source == 1)
      {
        v10 = @"DATABASE";
        objc_msgSend_setObject_forKey_(v5, v4, @"DATABASE", @"source");
        goto LABEL_16;
      }

      if (source == 2)
      {
        v10 = @"SHARING";
        objc_msgSend_setObject_forKey_(v5, v4, @"SHARING", @"source");
LABEL_16:

        goto LABEL_17;
      }
    }

    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_source);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"source");
    goto LABEL_16;
  }

LABEL_17:
  dialog = self->_dialog;
  if (dialog)
  {
    objc_msgSend_setObject_forKey_(v5, v4, dialog, @"dialog");
  }

  sound = self->_sound;
  if (sound)
  {
    objc_msgSend_setObject_forKey_(v5, v4, sound, @"sound");
  }

  if (*&self->_has)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_badgeCount);
    objc_msgSend_setObject_forKey_(v5, v15, v14, @"badgeCount");
  }

  payload = self->_payload;
  if (payload)
  {
    objc_msgSend_setObject_forKey_(v5, v4, payload, @"payload");
  }

  category = self->_category;
  if (category)
  {
    objc_msgSend_setObject_forKey_(v5, v4, category, @"category");
  }

  title = self->_title;
  if (title)
  {
    objc_msgSend_setObject_forKey_(v5, v4, title, @"title");
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  if (titleLocalizedKey)
  {
    objc_msgSend_setObject_forKey_(v5, v4, titleLocalizedKey, @"titleLocalizedKey");
  }

  titleLocalizedArguments = self->_titleLocalizedArguments;
  if (titleLocalizedArguments)
  {
    objc_msgSend_setObject_forKey_(v5, v4, titleLocalizedArguments, @"titleLocalizedArguments");
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    objc_msgSend_setObject_forKey_(v5, v4, subtitle, @"subtitle");
  }

  subtitleLocalizedKey = self->_subtitleLocalizedKey;
  if (subtitleLocalizedKey)
  {
    objc_msgSend_setObject_forKey_(v5, v4, subtitleLocalizedKey, @"subtitleLocalizedKey");
  }

  subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  if (subtitleLocalizedArguments)
  {
    objc_msgSend_setObject_forKey_(v5, v4, subtitleLocalizedArguments, @"subtitleLocalizedArguments");
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    isRead = self->_isRead;
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
  }

  if (self->_dialog)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sound)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    badgeCount = self->_badgeCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_titleLocalizedKey)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = self->_titleLocalizedArguments;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v34, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        PBDataWriterWriteStringField();
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v29, v34, 16);
    }

    while (v11);
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitleLocalizedKey)
  {
    PBDataWriterWriteStringField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = self->_subtitleLocalizedArguments;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v25, v33, 16);
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v23, &v25, v33, 16);
    }

    while (v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[112] = self->_isRead;
    v4[116] |= 4u;
  }

  uuid = self->_uuid;
  v34 = v4;
  if (uuid)
  {
    objc_msgSend_setUuid_(v4, v5, uuid);
    v4 = v34;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 12) = self->_source;
    v4[116] |= 2u;
  }

  dialog = self->_dialog;
  if (dialog)
  {
    objc_msgSend_setDialog_(v34, v5, dialog);
    v4 = v34;
  }

  sound = self->_sound;
  if (sound)
  {
    objc_msgSend_setSound_(v34, v5, sound);
    v4 = v34;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_badgeCount;
    v4[116] |= 1u;
  }

  payload = self->_payload;
  if (payload)
  {
    objc_msgSend_setPayload_(v34, v5, payload);
  }

  category = self->_category;
  if (category)
  {
    objc_msgSend_setCategory_(v34, v5, category);
  }

  title = self->_title;
  if (title)
  {
    objc_msgSend_setTitle_(v34, v5, title);
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  if (titleLocalizedKey)
  {
    objc_msgSend_setTitleLocalizedKey_(v34, v5, titleLocalizedKey);
  }

  if (objc_msgSend_titleLocalizedArgumentsCount(self, v5, titleLocalizedKey))
  {
    objc_msgSend_clearTitleLocalizedArguments(v34, v13, v14);
    v17 = objc_msgSend_titleLocalizedArgumentsCount(self, v15, v16);
    if (v17)
    {
      v18 = v17;
      for (i = 0; i != v18; ++i)
      {
        v20 = objc_msgSend_titleLocalizedArgumentsAtIndex_(self, v13, i);
        objc_msgSend_addTitleLocalizedArguments_(v34, v21, v20);
      }
    }
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    objc_msgSend_setSubtitle_(v34, v13, subtitle);
  }

  subtitleLocalizedKey = self->_subtitleLocalizedKey;
  if (subtitleLocalizedKey)
  {
    objc_msgSend_setSubtitleLocalizedKey_(v34, v13, subtitleLocalizedKey);
  }

  if (objc_msgSend_subtitleLocalizedArgumentsCount(self, v13, subtitleLocalizedKey))
  {
    objc_msgSend_clearSubtitleLocalizedArguments(v34, v24, v25);
    v28 = objc_msgSend_subtitleLocalizedArgumentsCount(self, v26, v27);
    if (v28)
    {
      v30 = v28;
      for (j = 0; j != v30; ++j)
      {
        v32 = objc_msgSend_subtitleLocalizedArgumentsAtIndex_(self, v29, j);
        objc_msgSend_addSubtitleLocalizedArguments_(v34, v33, v32);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 112) = self->_isRead;
    *(v10 + 116) |= 4u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_uuid, v11, a3);
  v14 = *(v12 + 104);
  *(v12 + 104) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 48) = self->_source;
    *(v12 + 116) |= 2u;
  }

  v16 = objc_msgSend_copyWithZone_(self->_dialog, v15, a3);
  v17 = *(v12 + 24);
  *(v12 + 24) = v16;

  v19 = objc_msgSend_copyWithZone_(self->_sound, v18, a3);
  v20 = *(v12 + 40);
  *(v12 + 40) = v19;

  if (*&self->_has)
  {
    *(v12 + 8) = self->_badgeCount;
    *(v12 + 116) |= 1u;
  }

  v22 = objc_msgSend_copyWithZone_(self->_payload, v21, a3);
  v23 = *(v12 + 32);
  *(v12 + 32) = v22;

  v25 = objc_msgSend_copyWithZone_(self->_category, v24, a3);
  v26 = *(v12 + 16);
  *(v12 + 16) = v25;

  v28 = objc_msgSend_copyWithZone_(self->_title, v27, a3);
  v29 = *(v12 + 80);
  *(v12 + 80) = v28;

  v31 = objc_msgSend_copyWithZone_(self->_titleLocalizedKey, v30, a3);
  v32 = *(v12 + 96);
  *(v12 + 96) = v31;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v33 = self->_titleLocalizedArguments;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v63, v68, 16);
  if (v35)
  {
    v37 = v35;
    v38 = *v64;
    do
    {
      v39 = 0;
      do
      {
        if (*v64 != v38)
        {
          objc_enumerationMutation(v33);
        }

        v40 = objc_msgSend_copyWithZone_(*(*(&v63 + 1) + 8 * v39), v36, a3);
        objc_msgSend_addTitleLocalizedArguments_(v12, v41, v40);

        ++v39;
      }

      while (v37 != v39);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v63, v68, 16);
    }

    while (v37);
  }

  v43 = objc_msgSend_copyWithZone_(self->_subtitle, v42, a3);
  v44 = *(v12 + 56);
  *(v12 + 56) = v43;

  v46 = objc_msgSend_copyWithZone_(self->_subtitleLocalizedKey, v45, a3);
  v47 = *(v12 + 72);
  *(v12 + 72) = v46;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v48 = self->_subtitleLocalizedArguments;
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v59, v67, 16);
  if (v50)
  {
    v52 = v50;
    v53 = *v60;
    do
    {
      v54 = 0;
      do
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(v48);
        }

        v55 = objc_msgSend_copyWithZone_(*(*(&v59 + 1) + 8 * v54), v51, a3, v59);
        objc_msgSend_addSubtitleLocalizedArguments_(v12, v56, v55);

        ++v54;
      }

      while (v52 != v54);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v59, v67, 16);
    }

    while (v52);
  }

  v57 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_24;
  }

  has = self->_has;
  v9 = *(v4 + 116);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 116) & 4) == 0)
    {
      goto LABEL_24;
    }

    v12 = *(v4 + 112);
    if (self->_isRead)
    {
      if ((v4[14] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v4[14])
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 116) & 4) != 0)
  {
    goto LABEL_24;
  }

  uuid = self->_uuid;
  v11 = v4[13];
  if (uuid | v11)
  {
    if (!objc_msgSend_isEqual_(uuid, v7, v11))
    {
      goto LABEL_24;
    }

    has = self->_has;
    v9 = *(v4 + 116);
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_source != *(v4 + 12))
    {
      goto LABEL_24;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_24;
  }

  dialog = self->_dialog;
  v14 = v4[3];
  if (dialog | v14 && !objc_msgSend_isEqual_(dialog, v7, v14))
  {
    goto LABEL_24;
  }

  sound = self->_sound;
  v16 = v4[5];
  if (sound | v16)
  {
    if (!objc_msgSend_isEqual_(sound, v7, v16))
    {
      goto LABEL_24;
    }
  }

  v17 = *(v4 + 116);
  if ((*&self->_has & 1) == 0)
  {
    if ((*(v4 + 116) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    isEqual = 0;
    goto LABEL_25;
  }

  if ((*(v4 + 116) & 1) == 0 || self->_badgeCount != *(v4 + 2))
  {
    goto LABEL_24;
  }

LABEL_28:
  payload = self->_payload;
  v21 = v4[4];
  if (payload | v21 && !objc_msgSend_isEqual_(payload, v7, v21))
  {
    goto LABEL_24;
  }

  category = self->_category;
  v23 = v4[2];
  if (category | v23)
  {
    if (!objc_msgSend_isEqual_(category, v7, v23))
    {
      goto LABEL_24;
    }
  }

  title = self->_title;
  v25 = v4[10];
  if (title | v25)
  {
    if (!objc_msgSend_isEqual_(title, v7, v25))
    {
      goto LABEL_24;
    }
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  v27 = v4[12];
  if (titleLocalizedKey | v27)
  {
    if (!objc_msgSend_isEqual_(titleLocalizedKey, v7, v27))
    {
      goto LABEL_24;
    }
  }

  titleLocalizedArguments = self->_titleLocalizedArguments;
  v29 = v4[11];
  if (titleLocalizedArguments | v29)
  {
    if (!objc_msgSend_isEqual_(titleLocalizedArguments, v7, v29))
    {
      goto LABEL_24;
    }
  }

  subtitle = self->_subtitle;
  v31 = v4[7];
  if (subtitle | v31)
  {
    if (!objc_msgSend_isEqual_(subtitle, v7, v31))
    {
      goto LABEL_24;
    }
  }

  subtitleLocalizedKey = self->_subtitleLocalizedKey;
  v33 = v4[9];
  if (subtitleLocalizedKey | v33)
  {
    if (!objc_msgSend_isEqual_(subtitleLocalizedKey, v7, v33))
    {
      goto LABEL_24;
    }
  }

  subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  v35 = v4[8];
  if (subtitleLocalizedArguments | v35)
  {
    isEqual = objc_msgSend_isEqual_(subtitleLocalizedArguments, v7, v35);
  }

  else
  {
    isEqual = 1;
  }

LABEL_25:

  return isEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_isRead;
  }

  else
  {
    v4 = 0;
  }

  v7 = objc_msgSend_hash(self->_uuid, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_source;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_msgSend_hash(self->_dialog, v5, v6);
  v12 = objc_msgSend_hash(self->_sound, v10, v11);
  if (*&self->_has)
  {
    v15 = 2654435761 * self->_badgeCount;
  }

  else
  {
    v15 = 0;
  }

  v16 = v7 ^ v4 ^ v8 ^ v9 ^ v12 ^ v15 ^ objc_msgSend_hash(self->_payload, v13, v14);
  v19 = objc_msgSend_hash(self->_category, v17, v18);
  v22 = v19 ^ objc_msgSend_hash(self->_title, v20, v21);
  v25 = v22 ^ objc_msgSend_hash(self->_titleLocalizedKey, v23, v24);
  v28 = v16 ^ v25 ^ objc_msgSend_hash(self->_titleLocalizedArguments, v26, v27);
  v31 = objc_msgSend_hash(self->_subtitle, v29, v30);
  v34 = v31 ^ objc_msgSend_hash(self->_subtitleLocalizedKey, v32, v33);
  return v28 ^ v34 ^ objc_msgSend_hash(self->_subtitleLocalizedArguments, v35, v36);
}

- (void)mergeFrom:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = v4;
  if ((*(v4 + 116) & 4) != 0)
  {
    self->_isRead = *(v4 + 112);
    *&self->_has |= 4u;
  }

  v7 = *(v4 + 13);
  if (v7)
  {
    objc_msgSend_setUuid_(self, v5, v7);
  }

  if ((*(v6 + 116) & 2) != 0)
  {
    self->_source = *(v6 + 12);
    *&self->_has |= 2u;
  }

  v8 = *(v6 + 3);
  if (v8)
  {
    objc_msgSend_setDialog_(self, v5, v8);
  }

  v9 = *(v6 + 5);
  if (v9)
  {
    objc_msgSend_setSound_(self, v5, v9);
  }

  if (*(v6 + 116))
  {
    self->_badgeCount = *(v6 + 2);
    *&self->_has |= 1u;
  }

  v10 = *(v6 + 4);
  if (v10)
  {
    objc_msgSend_setPayload_(self, v5, v10);
  }

  v11 = *(v6 + 2);
  if (v11)
  {
    objc_msgSend_setCategory_(self, v5, v11);
  }

  v12 = *(v6 + 10);
  if (v12)
  {
    objc_msgSend_setTitle_(self, v5, v12);
  }

  v13 = *(v6 + 12);
  if (v13)
  {
    objc_msgSend_setTitleLocalizedKey_(self, v5, v13);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = *(v6 + 11);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v36, v41, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_addTitleLocalizedArguments_(self, v17, *(*(&v36 + 1) + 8 * i));
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v36, v41, 16);
    }

    while (v18);
  }

  v22 = *(v6 + 7);
  if (v22)
  {
    objc_msgSend_setSubtitle_(self, v21, v22);
  }

  v23 = *(v6 + 9);
  if (v23)
  {
    objc_msgSend_setSubtitleLocalizedKey_(self, v21, v23);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = *(v6 + 8);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v40, 16);
  if (v26)
  {
    v28 = v26;
    v29 = *v33;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v24);
        }

        objc_msgSend_addSubtitleLocalizedArguments_(self, v27, *(*(&v32 + 1) + 8 * j), v32);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v32, v40, 16);
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

@end