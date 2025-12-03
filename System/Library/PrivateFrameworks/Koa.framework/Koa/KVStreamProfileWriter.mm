@interface KVStreamProfileWriter
- (BOOL)addItem:(id)item error:(id *)error;
- (BOOL)startDataset:(id)dataset error:(id *)error;
- (BOOL)startProfile:(id)profile error:(id *)error;
- (KVStreamProfileWriter)initWithOutputStream:(id)stream;
@end

@implementation KVStreamProfileWriter

- (BOOL)addItem:(id)item error:(id *)error
{
  v59[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v12 = objc_msgSend_buffer(itemCopy, v7, v8, v9, v10, v11);
  v13 = sub_2559B1A54(v12);

  if (!objc_msgSend_length(v13, v14, v15, v16, v17, v18))
  {
    v47 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v48 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"Invalid item %@", v21, v22, v23, itemCopy);
    v59[0] = v48;
    v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, v59, &v58, 1, v50);
    v54 = objc_msgSend_errorWithDomain_code_userInfo_(v47, v52, @"com.apple.koa.profile", 7, v51, v53);
    if (error && v54)
    {
      v54 = v54;
      *error = v54;
    }

    goto LABEL_9;
  }

  v24 = objc_msgSend_length(v13, v19, v20, v21, v22, v23);
  stream = self->_stream;
  v26 = v13;
  v32 = objc_msgSend_bytes(v26, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_length(v13, v33, v34, v35, v36, v37);
  if (v24 != objc_msgSend_write_maxLength_(stream, v39, v32, v38, v40, v41))
  {
    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"profile item: %@ buffer: %@", v43, v44, v45, itemCopy, v13);
    sub_2559C6434(error, v55, self->_stream, 2);

LABEL_9:
    v46 = 0;
    goto LABEL_10;
  }

  v46 = 1;
LABEL_10:

  v56 = *MEMORY[0x277D85DE8];
  return v46;
}

- (BOOL)startDataset:(id)dataset error:(id *)error
{
  datasetCopy = dataset;
  v12 = objc_msgSend_buffer(datasetCopy, v7, v8, v9, v10, v11);
  v13 = sub_2559B1A54(v12);

  v19 = objc_msgSend_length(v13, v14, v15, v16, v17, v18);
  stream = self->_stream;
  v21 = v13;
  v27 = objc_msgSend_bytes(v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_length(v13, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_write_maxLength_(stream, v34, v27, v33, v35, v36);
  if (v19 != v41)
  {
    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"profile datasetInfo: %@ buffer: %@", v38, v39, v40, datasetCopy, v13);
    sub_2559C6434(error, v42, self->_stream, 2);
  }

  return v19 == v41;
}

- (BOOL)startProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v38 = 0;
  v39 = 0;
  v40 = xmmword_2559D02C0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  v44 = 1;
  v45 = 256;
  v46 = 0;
  v7 = sub_2559C6264(&v38, profileCopy, 0, 1);
  v13 = objc_msgSend_length(v7, v8, v9, v10, v11, v12);
  stream = self->_stream;
  v15 = v7;
  v21 = objc_msgSend_bytes(v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_length(v7, v22, v23, v24, v25, v26);
  v35 = objc_msgSend_write_maxLength_(stream, v28, v21, v27, v29, v30);
  if (v13 != v35)
  {
    v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"profile header: %@ with info: %@", v32, v33, v34, v7, profileCopy);
    sub_2559C6434(error, v36, self->_stream, 2);
  }

  sub_2559A811C(&v38);
  return v13 == v35;
}

- (KVStreamProfileWriter)initWithOutputStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = KVStreamProfileWriter;
  v6 = [(KVStreamProfileWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
  }

  return v7;
}

@end