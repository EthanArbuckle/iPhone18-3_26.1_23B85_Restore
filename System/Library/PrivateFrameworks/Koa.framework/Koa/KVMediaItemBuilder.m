@interface KVMediaItemBuilder
+ (void)initialize;
- (KVMediaItemBuilder)init;
- (id)_buildMediaItemWithId:(id)a3 otherFields:(id)a4;
- (id)albumArtistItemWithName:(id)a3 itemId:(id)a4;
- (id)albumItemWithName:(id)a3 itemId:(id)a4 albumArtistId:(id)a5;
- (id)audioBookArtistItemWithName:(id)a3 itemId:(id)a4;
- (id)audioBookItemWithName:(id)a3 itemId:(id)a4 artistId:(id)a5;
- (id)genreItemWithName:(id)a3 itemId:(id)a4;
- (id)movieItemWithName:(id)a3 itemId:(id)a4;
- (id)musicVideoItemWithName:(id)a3 itemId:(id)a4 albumArtistId:(id)a5 songArtistId:(id)a6 albumId:(id)a7 genreId:(id)a8;
- (id)playlistItemWithName:(id)a3 itemId:(id)a4;
- (id)songArtistItemWithName:(id)a3 itemId:(id)a4;
- (id)songItemWithName:(id)a3 itemId:(id)a4 albumArtistId:(id)a5 songArtistId:(id)a6 albumId:(id)a7 genreId:(id)a8;
- (id)tvEpisodeItemWithName:(id)a3 itemId:(id)a4 showId:(id)a5;
- (id)tvShowItemWithName:(id)a3 itemId:(id)a4;
@end

@implementation KVMediaItemBuilder

- (id)playlistItemWithName:(id)a3 itemId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 216, v7, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, v6, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)audioBookItemWithName:(id)a3 itemId:(id)a4 artistId:(id)a5
{
  v8 = a4;
  v9 = a5;
  fields = self->_fields;
  v11 = a3;
  objc_msgSend_removeAllObjects(fields, v12, v13, v14, v15, v16);
  v17 = self->_fields;
  v18 = [KVFieldValue alloc];
  v22 = objc_msgSend_initWithFieldType_value_(v18, v19, 208, v11, v20, v21);

  objc_msgSend_addObject_(v17, v23, v22, v24, v25, v26);
  if (v9)
  {
    v30 = self->_fields;
    v31 = [KVFieldValue alloc];
    v35 = objc_msgSend_initWithFieldType_value_(v31, v32, 205, v9, v33, v34);
    objc_msgSend_addObject_(v30, v36, v35, v37, v38, v39);
  }

  v40 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v27, v8, self->_fields, v28, v29);

  return v40;
}

- (id)audioBookArtistItemWithName:(id)a3 itemId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 206, v7, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, v6, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)movieItemWithName:(id)a3 itemId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 212, v7, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, v6, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)tvEpisodeItemWithName:(id)a3 itemId:(id)a4 showId:(id)a5
{
  v8 = a4;
  v9 = a5;
  fields = self->_fields;
  v11 = a3;
  objc_msgSend_removeAllObjects(fields, v12, v13, v14, v15, v16);
  v17 = self->_fields;
  v18 = [KVFieldValue alloc];
  v22 = objc_msgSend_initWithFieldType_value_(v18, v19, 230, v11, v20, v21);

  objc_msgSend_addObject_(v17, v23, v22, v24, v25, v26);
  if (v9)
  {
    v30 = self->_fields;
    v31 = [KVFieldValue alloc];
    v35 = objc_msgSend_initWithFieldType_value_(v31, v32, 231, v9, v33, v34);
    objc_msgSend_addObject_(v30, v36, v35, v37, v38, v39);
  }

  v40 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v27, v8, self->_fields, v28, v29);

  return v40;
}

- (id)tvShowItemWithName:(id)a3 itemId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 232, v7, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, v6, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)musicVideoItemWithName:(id)a3 itemId:(id)a4 albumArtistId:(id)a5 songArtistId:(id)a6 albumId:(id)a7 genreId:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  fields = self->_fields;
  v20 = a3;
  objc_msgSend_removeAllObjects(fields, v21, v22, v23, v24, v25);
  v26 = self->_fields;
  v27 = [KVFieldValue alloc];
  v31 = objc_msgSend_initWithFieldType_value_(v27, v28, 214, v20, v29, v30);

  objc_msgSend_addObject_(v26, v32, v31, v33, v34, v35);
  if (v15)
  {
    v39 = self->_fields;
    v40 = [KVFieldValue alloc];
    v44 = objc_msgSend_initWithFieldType_value_(v40, v41, 201, v15, v42, v43);
    objc_msgSend_addObject_(v39, v45, v44, v46, v47, v48);
  }

  if (v16)
  {
    v49 = self->_fields;
    v50 = [KVFieldValue alloc];
    v54 = objc_msgSend_initWithFieldType_value_(v50, v51, 225, v16, v52, v53);
    objc_msgSend_addObject_(v49, v55, v54, v56, v57, v58);
  }

  if (v17)
  {
    v59 = self->_fields;
    v60 = [KVFieldValue alloc];
    v64 = objc_msgSend_initWithFieldType_value_(v60, v61, 203, v17, v62, v63);
    objc_msgSend_addObject_(v59, v65, v64, v66, v67, v68);
  }

  if (v18)
  {
    v69 = self->_fields;
    v70 = [KVFieldValue alloc];
    v74 = objc_msgSend_initWithFieldType_value_(v70, v71, 209, v18, v72, v73);
    objc_msgSend_addObject_(v69, v75, v74, v76, v77, v78);
  }

  v79 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v36, v14, self->_fields, v37, v38);

  return v79;
}

- (id)songItemWithName:(id)a3 itemId:(id)a4 albumArtistId:(id)a5 songArtistId:(id)a6 albumId:(id)a7 genreId:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  fields = self->_fields;
  v20 = a3;
  objc_msgSend_removeAllObjects(fields, v21, v22, v23, v24, v25);
  v26 = self->_fields;
  v27 = [KVFieldValue alloc];
  v31 = objc_msgSend_initWithFieldType_value_(v27, v28, 228, v20, v29, v30);

  objc_msgSend_addObject_(v26, v32, v31, v33, v34, v35);
  if (v15)
  {
    v39 = self->_fields;
    v40 = [KVFieldValue alloc];
    v44 = objc_msgSend_initWithFieldType_value_(v40, v41, 201, v15, v42, v43);
    objc_msgSend_addObject_(v39, v45, v44, v46, v47, v48);
  }

  if (v16)
  {
    v49 = self->_fields;
    v50 = [KVFieldValue alloc];
    v54 = objc_msgSend_initWithFieldType_value_(v50, v51, 225, v16, v52, v53);
    objc_msgSend_addObject_(v49, v55, v54, v56, v57, v58);
  }

  if (v17)
  {
    v59 = self->_fields;
    v60 = [KVFieldValue alloc];
    v64 = objc_msgSend_initWithFieldType_value_(v60, v61, 203, v17, v62, v63);
    objc_msgSend_addObject_(v59, v65, v64, v66, v67, v68);
  }

  if (v18)
  {
    v69 = self->_fields;
    v70 = [KVFieldValue alloc];
    v74 = objc_msgSend_initWithFieldType_value_(v70, v71, 209, v18, v72, v73);
    objc_msgSend_addObject_(v69, v75, v74, v76, v77, v78);
  }

  v79 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v36, v14, self->_fields, v37, v38);

  return v79;
}

- (id)genreItemWithName:(id)a3 itemId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 210, v7, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, v6, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)albumItemWithName:(id)a3 itemId:(id)a4 albumArtistId:(id)a5
{
  v8 = a4;
  v9 = a5;
  fields = self->_fields;
  v11 = a3;
  objc_msgSend_removeAllObjects(fields, v12, v13, v14, v15, v16);
  v17 = self->_fields;
  v18 = [KVFieldValue alloc];
  v22 = objc_msgSend_initWithFieldType_value_(v18, v19, 204, v11, v20, v21);

  objc_msgSend_addObject_(v17, v23, v22, v24, v25, v26);
  if (v9)
  {
    v30 = self->_fields;
    v31 = [KVFieldValue alloc];
    v35 = objc_msgSend_initWithFieldType_value_(v31, v32, 201, v9, v33, v34);
    objc_msgSend_addObject_(v30, v36, v35, v37, v38, v39);
  }

  v40 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v27, v8, self->_fields, v28, v29);

  return v40;
}

- (id)songArtistItemWithName:(id)a3 itemId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 226, v7, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, v6, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)albumArtistItemWithName:(id)a3 itemId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [KVFieldValue alloc];
  v12 = objc_msgSend_initWithFieldType_value_(v8, v9, 202, v7, v10, v11);

  v23[0] = v12;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v23, 1, v14, v15);
  v20 = objc_msgSend__buildMediaItemWithId_otherFields_(self, v17, v6, v16, v18, v19);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_buildMediaItemWithId:(id)a3 otherFields:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  builder = self->_builder;
  v65 = 0;
  v11 = objc_msgSend_setItemType_itemId_error_(builder, v9, 5, v6, &v65, v10);
  v12 = v65;

  if (v11)
  {
    v57 = v7;
    v58 = v6;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v13 = v7;
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
              v6 = v58;
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
              v7 = v57;
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
      v7 = v57;
      v6 = v58;
      goto LABEL_25;
    }

    v39 = qword_28106B3C0;
    v7 = v57;
    v6 = v58;
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
      v69 = v6;
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