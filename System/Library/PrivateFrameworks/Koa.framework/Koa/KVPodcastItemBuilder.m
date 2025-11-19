@interface KVPodcastItemBuilder
+ (void)initialize;
- (KVPodcastItemBuilder)init;
- (id)_buildItemWithError:(id *)a3;
- (id)playlistItemWithName:(id)a3 itemId:(id)a4 error:(id *)a5;
- (id)podcastItemWithTitle:(id)a3 itemId:(id)a4 artistName:(id)a5 error:(id *)a6;
@end

@implementation KVPodcastItemBuilder

- (id)_buildItemWithError:(id *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  builder = self->_builder;
  v15 = 0;
  v8 = objc_msgSend_buildItemWithError_(builder, a2, &v15, v3, v4, v5);
  v9 = v15;
  if (v8)
  {
    v10 = v8;
    goto LABEL_7;
  }

  v11 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[KVPodcastItemBuilder _buildItemWithError:]";
    v18 = 2112;
    v19 = v9;
    _os_log_error_impl(&dword_2559A5000, v11, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else if (!a3)
  {
    goto LABEL_7;
  }

  if (v9)
  {
    v12 = v9;
    *a3 = v9;
  }

LABEL_7:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)playlistItemWithName:(id)a3 itemId:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  builder = self->_builder;
  v29 = 0;
  v12 = objc_msgSend_setItemType_itemId_error_(builder, v10, 16, a4, &v29, v11);
  v15 = v29;
  if (v12)
  {
    v16 = self->_builder;
    v28 = v15;
    v17 = objc_msgSend_addFieldWithType_value_error_(v16, v13, 702, v8, &v28, v14);
    v18 = v28;

    if (v17)
    {
      v23 = objc_msgSend__buildItemWithError_(self, v19, a5, v20, v21, v22);
      goto LABEL_11;
    }

    v15 = v18;
  }

  v24 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[KVPodcastItemBuilder playlistItemWithName:itemId:error:]";
    v32 = 2112;
    v33 = v15;
    _os_log_error_impl(&dword_2559A5000, v24, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v23 = 0;
  if (a5 && v15)
  {
    v25 = v15;
    v23 = 0;
    *a5 = v15;
  }

  v18 = v15;
LABEL_11:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)podcastItemWithTitle:(id)a3 itemId:(id)a4 artistName:(id)a5 error:(id *)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  builder = self->_builder;
  v37 = 0;
  v15 = objc_msgSend_setItemType_itemId_error_(builder, v13, 16, a4, &v37, v14);
  v18 = v37;
  if (v15)
  {
    v19 = self->_builder;
    v36 = v18;
    v20 = objc_msgSend_addFieldWithType_value_error_(v19, v16, 700, v10, &v36, v17);
    v21 = v36;

    if (!v20)
    {

      goto LABEL_7;
    }

    v24 = self->_builder;
    v35 = v21;
    v25 = objc_msgSend_addFieldWithType_value_error_(v24, v22, 701, v11, &v35, v23);
    v18 = v35;

    if (v25)
    {
      v30 = objc_msgSend__buildItemWithError_(self, v26, a6, v27, v28, v29);
      goto LABEL_13;
    }
  }

  v21 = v18;
LABEL_7:
  v31 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[KVPodcastItemBuilder podcastItemWithTitle:itemId:artistName:error:]";
    v40 = 2112;
    v41 = v21;
    _os_log_error_impl(&dword_2559A5000, v31, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v30 = 0;
  if (a6 && v21)
  {
    v32 = v21;
    v30 = 0;
    *a6 = v21;
  }

  v18 = v21;
LABEL_13:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (KVPodcastItemBuilder)init
{
  v6.receiver = self;
  v6.super_class = KVPodcastItemBuilder;
  v2 = [(KVPodcastItemBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(KVItemBuilder);
    builder = v2->_builder;
    v2->_builder = v3;
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