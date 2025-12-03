@interface KVMediaItemBuilder
+ (void)initialize;
- (KVMediaItemBuilder)init;
- (id)_buildMediaItemWithId:(id)id otherFields:(id)fields;
- (id)albumArtistItemWithName:(id)name itemId:(id)id;
- (id)albumItemWithName:(id)name itemId:(id)id albumArtistId:(id)artistId;
- (id)audioBookArtistItemWithName:(id)name itemId:(id)id;
- (id)audioBookItemWithName:(id)name itemId:(id)id artistId:(id)artistId;
- (id)genreItemWithName:(id)name itemId:(id)id;
- (id)movieItemWithName:(id)name itemId:(id)id;
- (id)musicVideoItemWithName:(id)name itemId:(id)id albumArtistId:(id)artistId songArtistId:(id)songArtistId albumId:(id)albumId genreId:(id)genreId;
- (id)playlistItemWithName:(id)name itemId:(id)id;
- (id)songArtistItemWithName:(id)name itemId:(id)id;
- (id)songItemWithName:(id)name itemId:(id)id albumArtistId:(id)artistId songArtistId:(id)songArtistId albumId:(id)albumId genreId:(id)genreId;
- (id)tvEpisodeItemWithName:(id)name itemId:(id)id showId:(id)showId;
- (id)tvShowItemWithName:(id)name itemId:(id)id;
@end

@implementation KVMediaItemBuilder

- (id)playlistItemWithName:(id)name itemId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 216, nameCopy, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, idCopy, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)audioBookItemWithName:(id)name itemId:(id)id artistId:(id)artistId
{
  idCopy = id;
  artistIdCopy = artistId;
  fields = self->_fields;
  nameCopy = name;
  objc_msgSend_removeAllObjects(fields, v12, v13, v14, v15, v16);
  v17 = self->_fields;
  v18 = [KVFieldValue alloc];
  v22 = objc_msgSend_initWithFieldType_value_(v18, v19, 208, nameCopy, v20, v21);

  objc_msgSend_addObject_(v17, v23, v22, v24, v25, v26);
  if (artistIdCopy)
  {
    v30 = self->_fields;
    v31 = [KVFieldValue alloc];
    v35 = objc_msgSend_initWithFieldType_value_(v31, v32, 205, artistIdCopy, v33, v34);
    objc_msgSend_addObject_(v30, v36, v35, v37, v38, v39);
  }

  v40 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v27, idCopy, self->_fields, v28, v29);

  return v40;
}

- (id)audioBookArtistItemWithName:(id)name itemId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 206, nameCopy, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, idCopy, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)movieItemWithName:(id)name itemId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 212, nameCopy, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, idCopy, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)tvEpisodeItemWithName:(id)name itemId:(id)id showId:(id)showId
{
  idCopy = id;
  showIdCopy = showId;
  fields = self->_fields;
  nameCopy = name;
  objc_msgSend_removeAllObjects(fields, v12, v13, v14, v15, v16);
  v17 = self->_fields;
  v18 = [KVFieldValue alloc];
  v22 = objc_msgSend_initWithFieldType_value_(v18, v19, 230, nameCopy, v20, v21);

  objc_msgSend_addObject_(v17, v23, v22, v24, v25, v26);
  if (showIdCopy)
  {
    v30 = self->_fields;
    v31 = [KVFieldValue alloc];
    v35 = objc_msgSend_initWithFieldType_value_(v31, v32, 231, showIdCopy, v33, v34);
    objc_msgSend_addObject_(v30, v36, v35, v37, v38, v39);
  }

  v40 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v27, idCopy, self->_fields, v28, v29);

  return v40;
}

- (id)tvShowItemWithName:(id)name itemId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 232, nameCopy, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, idCopy, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)musicVideoItemWithName:(id)name itemId:(id)id albumArtistId:(id)artistId songArtistId:(id)songArtistId albumId:(id)albumId genreId:(id)genreId
{
  idCopy = id;
  artistIdCopy = artistId;
  songArtistIdCopy = songArtistId;
  albumIdCopy = albumId;
  genreIdCopy = genreId;
  fields = self->_fields;
  nameCopy = name;
  objc_msgSend_removeAllObjects(fields, v21, v22, v23, v24, v25);
  v26 = self->_fields;
  v27 = [KVFieldValue alloc];
  v31 = objc_msgSend_initWithFieldType_value_(v27, v28, 214, nameCopy, v29, v30);

  objc_msgSend_addObject_(v26, v32, v31, v33, v34, v35);
  if (artistIdCopy)
  {
    v39 = self->_fields;
    v40 = [KVFieldValue alloc];
    v44 = objc_msgSend_initWithFieldType_value_(v40, v41, 201, artistIdCopy, v42, v43);
    objc_msgSend_addObject_(v39, v45, v44, v46, v47, v48);
  }

  if (songArtistIdCopy)
  {
    v49 = self->_fields;
    v50 = [KVFieldValue alloc];
    v54 = objc_msgSend_initWithFieldType_value_(v50, v51, 225, songArtistIdCopy, v52, v53);
    objc_msgSend_addObject_(v49, v55, v54, v56, v57, v58);
  }

  if (albumIdCopy)
  {
    v59 = self->_fields;
    v60 = [KVFieldValue alloc];
    v64 = objc_msgSend_initWithFieldType_value_(v60, v61, 203, albumIdCopy, v62, v63);
    objc_msgSend_addObject_(v59, v65, v64, v66, v67, v68);
  }

  if (genreIdCopy)
  {
    v69 = self->_fields;
    v70 = [KVFieldValue alloc];
    v74 = objc_msgSend_initWithFieldType_value_(v70, v71, 209, genreIdCopy, v72, v73);
    objc_msgSend_addObject_(v69, v75, v74, v76, v77, v78);
  }

  v79 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v36, idCopy, self->_fields, v37, v38);

  return v79;
}

- (id)songItemWithName:(id)name itemId:(id)id albumArtistId:(id)artistId songArtistId:(id)songArtistId albumId:(id)albumId genreId:(id)genreId
{
  idCopy = id;
  artistIdCopy = artistId;
  songArtistIdCopy = songArtistId;
  albumIdCopy = albumId;
  genreIdCopy = genreId;
  fields = self->_fields;
  nameCopy = name;
  objc_msgSend_removeAllObjects(fields, v21, v22, v23, v24, v25);
  v26 = self->_fields;
  v27 = [KVFieldValue alloc];
  v31 = objc_msgSend_initWithFieldType_value_(v27, v28, 228, nameCopy, v29, v30);

  objc_msgSend_addObject_(v26, v32, v31, v33, v34, v35);
  if (artistIdCopy)
  {
    v39 = self->_fields;
    v40 = [KVFieldValue alloc];
    v44 = objc_msgSend_initWithFieldType_value_(v40, v41, 201, artistIdCopy, v42, v43);
    objc_msgSend_addObject_(v39, v45, v44, v46, v47, v48);
  }

  if (songArtistIdCopy)
  {
    v49 = self->_fields;
    v50 = [KVFieldValue alloc];
    v54 = objc_msgSend_initWithFieldType_value_(v50, v51, 225, songArtistIdCopy, v52, v53);
    objc_msgSend_addObject_(v49, v55, v54, v56, v57, v58);
  }

  if (albumIdCopy)
  {
    v59 = self->_fields;
    v60 = [KVFieldValue alloc];
    v64 = objc_msgSend_initWithFieldType_value_(v60, v61, 203, albumIdCopy, v62, v63);
    objc_msgSend_addObject_(v59, v65, v64, v66, v67, v68);
  }

  if (genreIdCopy)
  {
    v69 = self->_fields;
    v70 = [KVFieldValue alloc];
    v74 = objc_msgSend_initWithFieldType_value_(v70, v71, 209, genreIdCopy, v72, v73);
    objc_msgSend_addObject_(v69, v75, v74, v76, v77, v78);
  }

  v79 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v36, idCopy, self->_fields, v37, v38);

  return v79;
}

- (id)genreItemWithName:(id)name itemId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 210, nameCopy, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, idCopy, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)albumItemWithName:(id)name itemId:(id)id albumArtistId:(id)artistId
{
  idCopy = id;
  artistIdCopy = artistId;
  fields = self->_fields;
  nameCopy = name;
  objc_msgSend_removeAllObjects(fields, v12, v13, v14, v15, v16);
  v17 = self->_fields;
  v18 = [KVFieldValue alloc];
  v22 = objc_msgSend_initWithFieldType_value_(v18, v19, 204, nameCopy, v20, v21);

  objc_msgSend_addObject_(v17, v23, v22, v24, v25, v26);
  if (artistIdCopy)
  {
    v30 = self->_fields;
    v31 = [KVFieldValue alloc];
    v35 = objc_msgSend_initWithFieldType_value_(v31, v32, 201, artistIdCopy, v33, v34);
    objc_msgSend_addObject_(v30, v36, v35, v37, v38, v39);
  }

  v40 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v27, idCopy, self->_fields, v28, v29);

  return v40;
}

- (id)songArtistItemWithName:(id)name itemId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 226, nameCopy, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, idCopy, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)albumArtistItemWithName:(id)name itemId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 202, nameCopy, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, idCopy, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_buildMediaItemWithId:(id)id otherFields:(id)fields
{
  v75 = *MEMORY[0x277D85DE8];
  idCopy = id;
  fieldsCopy = fields;
  builder = self->_builder;
  v65 = 0;
  v11 = objc_msgSend_setItemType_itemId_error_(builder, v9, 5, idCopy, &v65, v10);
  v12 = v65;

  if (v11)
  {
    v57 = fieldsCopy;
    v58 = idCopy;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v13 = fieldsCopy;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v61, v74, 16, v15);
    if (v16)
    {
      v22 = v16;
      v23 = *v62;
      v24 = v12;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(v13);
          }

          v26 = *(*(&v61 + 1) + 8 * i);
          v27 = objc_msgSend_value(v26, v17, v18, v19, v20, v21, v57);

          if (v27)
          {
            v28 = self->_builder;
            v29 = objc_msgSend_fieldType(v26, v17, v18, v19, v20, v21);
            v35 = objc_msgSend_value(v26, v30, v31, v32, v33, v34);
            v60 = v24;
            v38 = objc_msgSend_addFieldWithType_value_error_(v28, v36, v29, v35, &v60, v37);
            v12 = v60;

            if (!v38)
            {
              v41 = qword_28106B3C0;
              idCopy = v58;
              if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
              {
                v50 = v41;
                v56 = objc_msgSend_value(v26, v51, v52, v53, v54, v55);
                *buf = 136315906;
                v67 = "[KVMediaItemBuilder _buildMediaItemWithId:otherFields:]";
                v68 = 2112;
                v69 = v58;
                v70 = 2112;
                v71 = v56;
                v72 = 2112;
                v73 = v12;
                _os_log_error_impl(&dword_2559A5000, v50, OS_LOG_TYPE_ERROR, "%s Failed to add field to media item: %@ field: %@ error: %@", buf, 0x2Au);
              }

              v42 = 0;
              fieldsCopy = v57;
              goto LABEL_25;
            }

            v24 = v12;
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, &v61, v74, 16, v21);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = v12;
    }

    v43 = self->_builder;
    v59 = v24;
    v42 = objc_msgSend_buildItemWithError_(v43, v44, &v59, v45, v46, v47);
    v12 = v59;

    if (v42)
    {
      fieldsCopy = v57;
      idCopy = v58;
      goto LABEL_25;
    }

    v39 = qword_28106B3C0;
    fieldsCopy = v57;
    idCopy = v58;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v67 = "[KVMediaItemBuilder _buildMediaItemWithId:otherFields:]";
      v68 = 2112;
      v69 = v58;
      v70 = 2112;
      v71 = v12;
      v40 = "%s Failed to build media item: %@ error: %@";
      goto LABEL_23;
    }
  }

  else
  {
    v39 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v67 = "[KVMediaItemBuilder _buildMediaItemWithId:otherFields:]";
      v68 = 2112;
      v69 = idCopy;
      v70 = 2112;
      v71 = v12;
      v40 = "%s Failed to set item type for media item: %@ error: %@";
LABEL_23:
      _os_log_error_impl(&dword_2559A5000, v39, OS_LOG_TYPE_ERROR, v40, buf, 0x20u);
    }
  }

  v42 = 0;
LABEL_25:

  v48 = *MEMORY[0x277D85DE8];

  return v42;
}

- (KVMediaItemBuilder)init
{
  v8.receiver = self;
  v8.super_class = KVMediaItemBuilder;
  v2 = [(KVMediaItemBuilder *)&v8 init];
  if (v2)
  {
    if (qword_28106B3B8 != -1)
    {
      dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
    }

    v3 = objc_alloc_init(KVItemBuilder);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fields = v2->_fields;
    v2->_fields = v5;
  }

  return v2;
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end