@interface CKDPSubscriptionNotificationAlert
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLocalizedArguments:(id)arguments;
- (void)addSubtitleLocalizedArguments:(id)arguments;
- (void)addTitleLocalizedArguments:(id)arguments;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPSubscriptionNotificationAlert

- (void)addLocalizedArguments:(id)arguments
{
  argumentsCopy = arguments;
  localizedArguments = self->_localizedArguments;
  v8 = argumentsCopy;
  if (!localizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_localizedArguments;
    self->_localizedArguments = v6;

    argumentsCopy = v8;
    localizedArguments = self->_localizedArguments;
  }

  objc_msgSend_addObject_(localizedArguments, argumentsCopy, argumentsCopy);
}

- (void)addTitleLocalizedArguments:(id)arguments
{
  argumentsCopy = arguments;
  titleLocalizedArguments = self->_titleLocalizedArguments;
  v8 = argumentsCopy;
  if (!titleLocalizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_titleLocalizedArguments;
    self->_titleLocalizedArguments = v6;

    argumentsCopy = v8;
    titleLocalizedArguments = self->_titleLocalizedArguments;
  }

  objc_msgSend_addObject_(titleLocalizedArguments, argumentsCopy, argumentsCopy);
}

- (void)addSubtitleLocalizedArguments:(id)arguments
{
  argumentsCopy = arguments;
  subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  v8 = argumentsCopy;
  if (!subtitleLocalizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subtitleLocalizedArguments;
    self->_subtitleLocalizedArguments = v6;

    argumentsCopy = v8;
    subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  }

  objc_msgSend_addObject_(subtitleLocalizedArguments, argumentsCopy, argumentsCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPSubscriptionNotificationAlert;
  v4 = [(CKDPSubscriptionNotificationAlert *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  text = self->_text;
  if (text)
  {
    objc_msgSend_setObject_forKey_(v4, v5, text, @"text");
  }

  localizedKey = self->_localizedKey;
  if (localizedKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, localizedKey, @"localizedKey");
  }

  localizedArguments = self->_localizedArguments;
  if (localizedArguments)
  {
    objc_msgSend_setObject_forKey_(v6, v5, localizedArguments, @"localizedArguments");
  }

  actionLocKey = self->_actionLocKey;
  if (actionLocKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, actionLocKey, @"actionLocKey");
  }

  launchImage = self->_launchImage;
  if (launchImage)
  {
    objc_msgSend_setObject_forKey_(v6, v5, launchImage, @"launchImage");
  }

  soundName = self->_soundName;
  if (soundName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, soundName, @"soundName");
  }

  category = self->_category;
  if (category)
  {
    objc_msgSend_setObject_forKey_(v6, v5, category, @"category");
  }

  title = self->_title;
  if (title)
  {
    objc_msgSend_setObject_forKey_(v6, v5, title, @"title");
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  if (titleLocalizedKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, titleLocalizedKey, @"titleLocalizedKey");
  }

  titleLocalizedArguments = self->_titleLocalizedArguments;
  if (titleLocalizedArguments)
  {
    objc_msgSend_setObject_forKey_(v6, v5, titleLocalizedArguments, @"titleLocalizedArguments");
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    objc_msgSend_setObject_forKey_(v6, v5, subtitle, @"subtitle");
  }

  subtitleLocalizedKey = self->_subtitleLocalizedKey;
  if (subtitleLocalizedKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, subtitleLocalizedKey, @"subtitleLocalizedKey");
  }

  subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  if (subtitleLocalizedArguments)
  {
    objc_msgSend_setObject_forKey_(v6, v5, subtitleLocalizedArguments, @"subtitleLocalizedArguments");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedKey)
  {
    PBDataWriterWriteStringField();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->_localizedArguments;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v38, v44, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v38, v44, 16);
    }

    while (v8);
  }

  if (self->_actionLocKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_launchImage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_soundName)
  {
    PBDataWriterWriteStringField();
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

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = self->_titleLocalizedArguments;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v34, v43, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v34, v43, 16);
    }

    while (v16);
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitleLocalizedKey)
  {
    PBDataWriterWriteStringField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = self->_subtitleLocalizedArguments;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v30, v42, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v30 + 1) + 8 * v26);
        PBDataWriterWriteStringField();
        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v30, v42, 16);
    }

    while (v24);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  text = self->_text;
  if (text)
  {
    objc_msgSend_setText_(toCopy, v4, text);
  }

  localizedKey = self->_localizedKey;
  if (localizedKey)
  {
    objc_msgSend_setLocalizedKey_(toCopy, v4, localizedKey);
  }

  if (objc_msgSend_localizedArgumentsCount(self, v4, localizedKey))
  {
    objc_msgSend_clearLocalizedArguments(toCopy, v7, v8);
    v11 = objc_msgSend_localizedArgumentsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_localizedArgumentsAtIndex_(self, v7, i);
        objc_msgSend_addLocalizedArguments_(toCopy, v15, v14);
      }
    }
  }

  actionLocKey = self->_actionLocKey;
  if (actionLocKey)
  {
    objc_msgSend_setActionLocKey_(toCopy, v7, actionLocKey);
  }

  launchImage = self->_launchImage;
  if (launchImage)
  {
    objc_msgSend_setLaunchImage_(toCopy, v7, launchImage);
  }

  soundName = self->_soundName;
  if (soundName)
  {
    objc_msgSend_setSoundName_(toCopy, v7, soundName);
  }

  category = self->_category;
  if (category)
  {
    objc_msgSend_setCategory_(toCopy, v7, category);
  }

  title = self->_title;
  if (title)
  {
    objc_msgSend_setTitle_(toCopy, v7, title);
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  if (titleLocalizedKey)
  {
    objc_msgSend_setTitleLocalizedKey_(toCopy, v7, titleLocalizedKey);
  }

  if (objc_msgSend_titleLocalizedArgumentsCount(self, v7, titleLocalizedKey))
  {
    objc_msgSend_clearTitleLocalizedArguments(toCopy, v22, v23);
    v26 = objc_msgSend_titleLocalizedArgumentsCount(self, v24, v25);
    if (v26)
    {
      v27 = v26;
      for (j = 0; j != v27; ++j)
      {
        v29 = objc_msgSend_titleLocalizedArgumentsAtIndex_(self, v22, j);
        objc_msgSend_addTitleLocalizedArguments_(toCopy, v30, v29);
      }
    }
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    objc_msgSend_setSubtitle_(toCopy, v22, subtitle);
  }

  subtitleLocalizedKey = self->_subtitleLocalizedKey;
  if (subtitleLocalizedKey)
  {
    objc_msgSend_setSubtitleLocalizedKey_(toCopy, v22, subtitleLocalizedKey);
  }

  if (objc_msgSend_subtitleLocalizedArgumentsCount(self, v22, subtitleLocalizedKey))
  {
    objc_msgSend_clearSubtitleLocalizedArguments(toCopy, v33, v34);
    v37 = objc_msgSend_subtitleLocalizedArgumentsCount(self, v35, v36);
    if (v37)
    {
      v39 = v37;
      for (k = 0; k != v39; ++k)
      {
        v41 = objc_msgSend_subtitleLocalizedArgumentsAtIndex_(self, v38, k);
        objc_msgSend_addSubtitleLocalizedArguments_(toCopy, v42, v41);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_text, v11, zone);
  v13 = v10[10];
  v10[10] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_localizedKey, v14, zone);
  v16 = v10[5];
  v10[5] = v15;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v17 = self->_localizedArguments;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v78, v84, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v79;
    do
    {
      v23 = 0;
      do
      {
        if (*v79 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v78 + 1) + 8 * v23), v20, zone);
        objc_msgSend_addLocalizedArguments_(v10, v25, v24);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v78, v84, 16);
    }

    while (v21);
  }

  v27 = objc_msgSend_copyWithZone_(self->_actionLocKey, v26, zone);
  v28 = v10[1];
  v10[1] = v27;

  v30 = objc_msgSend_copyWithZone_(self->_launchImage, v29, zone);
  v31 = v10[3];
  v10[3] = v30;

  v33 = objc_msgSend_copyWithZone_(self->_soundName, v32, zone);
  v34 = v10[6];
  v10[6] = v33;

  v36 = objc_msgSend_copyWithZone_(self->_category, v35, zone);
  v37 = v10[2];
  v10[2] = v36;

  v39 = objc_msgSend_copyWithZone_(self->_title, v38, zone);
  v40 = v10[11];
  v10[11] = v39;

  v42 = objc_msgSend_copyWithZone_(self->_titleLocalizedKey, v41, zone);
  v43 = v10[13];
  v10[13] = v42;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v44 = self->_titleLocalizedArguments;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v74, v83, 16);
  if (v46)
  {
    v48 = v46;
    v49 = *v75;
    do
    {
      v50 = 0;
      do
      {
        if (*v75 != v49)
        {
          objc_enumerationMutation(v44);
        }

        v51 = objc_msgSend_copyWithZone_(*(*(&v74 + 1) + 8 * v50), v47, zone);
        objc_msgSend_addTitleLocalizedArguments_(v10, v52, v51);

        ++v50;
      }

      while (v48 != v50);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v74, v83, 16);
    }

    while (v48);
  }

  v54 = objc_msgSend_copyWithZone_(self->_subtitle, v53, zone);
  v55 = v10[7];
  v10[7] = v54;

  v57 = objc_msgSend_copyWithZone_(self->_subtitleLocalizedKey, v56, zone);
  v58 = v10[9];
  v10[9] = v57;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v59 = self->_subtitleLocalizedArguments;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v70, v82, 16);
  if (v61)
  {
    v63 = v61;
    v64 = *v71;
    do
    {
      v65 = 0;
      do
      {
        if (*v71 != v64)
        {
          objc_enumerationMutation(v59);
        }

        v66 = objc_msgSend_copyWithZone_(*(*(&v70 + 1) + 8 * v65), v62, zone, v70);
        objc_msgSend_addSubtitleLocalizedArguments_(v10, v67, v66);

        ++v65;
      }

      while (v63 != v65);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v70, v82, 16);
    }

    while (v63);
  }

  v68 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_28;
  }

  text = self->_text;
  v9 = equalCopy[10];
  if (text | v9)
  {
    if (!objc_msgSend_isEqual_(text, v7, v9))
    {
      goto LABEL_28;
    }
  }

  localizedKey = self->_localizedKey;
  v11 = equalCopy[5];
  if (localizedKey | v11)
  {
    if (!objc_msgSend_isEqual_(localizedKey, v7, v11))
    {
      goto LABEL_28;
    }
  }

  localizedArguments = self->_localizedArguments;
  v13 = equalCopy[4];
  if (localizedArguments | v13)
  {
    if (!objc_msgSend_isEqual_(localizedArguments, v7, v13))
    {
      goto LABEL_28;
    }
  }

  actionLocKey = self->_actionLocKey;
  v15 = equalCopy[1];
  if (actionLocKey | v15)
  {
    if (!objc_msgSend_isEqual_(actionLocKey, v7, v15))
    {
      goto LABEL_28;
    }
  }

  launchImage = self->_launchImage;
  v17 = equalCopy[3];
  if (launchImage | v17)
  {
    if (!objc_msgSend_isEqual_(launchImage, v7, v17))
    {
      goto LABEL_28;
    }
  }

  soundName = self->_soundName;
  v19 = equalCopy[6];
  if (soundName | v19)
  {
    if (!objc_msgSend_isEqual_(soundName, v7, v19))
    {
      goto LABEL_28;
    }
  }

  category = self->_category;
  v21 = equalCopy[2];
  if (category | v21)
  {
    if (!objc_msgSend_isEqual_(category, v7, v21))
    {
      goto LABEL_28;
    }
  }

  title = self->_title;
  v23 = equalCopy[11];
  if (title | v23)
  {
    if (!objc_msgSend_isEqual_(title, v7, v23))
    {
      goto LABEL_28;
    }
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  v25 = equalCopy[13];
  if (titleLocalizedKey | v25)
  {
    if (!objc_msgSend_isEqual_(titleLocalizedKey, v7, v25))
    {
      goto LABEL_28;
    }
  }

  if (((titleLocalizedArguments = self->_titleLocalizedArguments, v27 = equalCopy[12], !(titleLocalizedArguments | v27)) || objc_msgSend_isEqual_(titleLocalizedArguments, v7, v27)) && ((subtitle = self->_subtitle, v29 = equalCopy[7], !(subtitle | v29)) || objc_msgSend_isEqual_(subtitle, v7, v29)) && ((subtitleLocalizedKey = self->_subtitleLocalizedKey, v31 = equalCopy[9], !(subtitleLocalizedKey | v31)) || objc_msgSend_isEqual_(subtitleLocalizedKey, v7, v31)))
  {
    subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
    v33 = equalCopy[8];
    if (subtitleLocalizedArguments | v33)
    {
      isEqual = objc_msgSend_isEqual_(subtitleLocalizedArguments, v7, v33);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_28:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_text, a2, v2);
  v7 = objc_msgSend_hash(self->_localizedKey, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_localizedArguments, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_actionLocKey, v11, v12);
  v16 = objc_msgSend_hash(self->_launchImage, v14, v15);
  v19 = v16 ^ objc_msgSend_hash(self->_soundName, v17, v18);
  v22 = v13 ^ v19 ^ objc_msgSend_hash(self->_category, v20, v21);
  v25 = objc_msgSend_hash(self->_title, v23, v24);
  v28 = v25 ^ objc_msgSend_hash(self->_titleLocalizedKey, v26, v27);
  v31 = v28 ^ objc_msgSend_hash(self->_titleLocalizedArguments, v29, v30);
  v34 = v22 ^ v31 ^ objc_msgSend_hash(self->_subtitle, v32, v33);
  v37 = objc_msgSend_hash(self->_subtitleLocalizedKey, v35, v36);
  return v34 ^ v37 ^ objc_msgSend_hash(self->_subtitleLocalizedArguments, v38, v39);
}

- (void)mergeFrom:(id)from
{
  v55 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = *(fromCopy + 10);
  if (v6)
  {
    objc_msgSend_setText_(self, v4, v6);
  }

  v7 = *(fromCopy + 5);
  if (v7)
  {
    objc_msgSend_setLocalizedKey_(self, v4, v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = *(fromCopy + 4);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v48, v54, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addLocalizedArguments_(self, v11, *(*(&v48 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v48, v54, 16);
    }

    while (v12);
  }

  v16 = *(fromCopy + 1);
  if (v16)
  {
    objc_msgSend_setActionLocKey_(self, v15, v16);
  }

  v17 = *(fromCopy + 3);
  if (v17)
  {
    objc_msgSend_setLaunchImage_(self, v15, v17);
  }

  v18 = *(fromCopy + 6);
  if (v18)
  {
    objc_msgSend_setSoundName_(self, v15, v18);
  }

  v19 = *(fromCopy + 2);
  if (v19)
  {
    objc_msgSend_setCategory_(self, v15, v19);
  }

  v20 = *(fromCopy + 11);
  if (v20)
  {
    objc_msgSend_setTitle_(self, v15, v20);
  }

  v21 = *(fromCopy + 13);
  if (v21)
  {
    objc_msgSend_setTitleLocalizedKey_(self, v15, v21);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = *(fromCopy + 12);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v44, v53, 16);
  if (v24)
  {
    v26 = v24;
    v27 = *v45;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_addTitleLocalizedArguments_(self, v25, *(*(&v44 + 1) + 8 * j));
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v44, v53, 16);
    }

    while (v26);
  }

  v30 = *(fromCopy + 7);
  if (v30)
  {
    objc_msgSend_setSubtitle_(self, v29, v30);
  }

  v31 = *(fromCopy + 9);
  if (v31)
  {
    objc_msgSend_setSubtitleLocalizedKey_(self, v29, v31);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = *(fromCopy + 8);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v40, v52, 16);
  if (v34)
  {
    v36 = v34;
    v37 = *v41;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(v32);
        }

        objc_msgSend_addSubtitleLocalizedArguments_(self, v35, *(*(&v40 + 1) + 8 * k), v40);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v40, v52, 16);
    }

    while (v36);
  }

  v39 = *MEMORY[0x277D85DE8];
}

@end