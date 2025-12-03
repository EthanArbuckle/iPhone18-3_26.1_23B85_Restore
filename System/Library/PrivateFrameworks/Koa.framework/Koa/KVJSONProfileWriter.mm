@interface KVJSONProfileWriter
- (BOOL)addItem:(id)item error:(id *)error;
- (BOOL)finishDataset:(id *)dataset;
- (BOOL)finishProfile:(id *)profile;
- (BOOL)startDataset:(id)dataset error:(id *)error;
- (BOOL)startProfile:(id)profile error:(id *)error;
- (KVJSONProfileWriter)initWithOutputStream:(id)stream;
@end

@implementation KVJSONProfileWriter

- (BOOL)finishProfile:(id *)profile
{
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"\n%@]\n}", v3, v4, v5, @"  ");
  v13 = objc_msgSend_dataUsingEncoding_(v8, v9, 4, v10, v11, v12);
  v19 = objc_msgSend_length(v13, v14, v15, v16, v17, v18);
  stream = self->_stream;
  v21 = v13;
  v27 = objc_msgSend_bytes(v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_length(v13, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_write_maxLength_(stream, v34, v27, v33, v35, v36);
  if (v19 != v41)
  {
    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"dataset footer: %@ data: %@", v38, v39, v40, v8, v13);
    sub_2559C6434(profile, v42, self->_stream, 3);
  }

  return v19 == v41;
}

- (BOOL)finishDataset:(id *)dataset
{
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"\n%@]\n%@}", v3, v4, v5, @"      ", @"    ");
  v13 = objc_msgSend_dataUsingEncoding_(v8, v9, 4, v10, v11, v12);
  v19 = objc_msgSend_length(v13, v14, v15, v16, v17, v18);
  stream = self->_stream;
  v21 = v13;
  v27 = objc_msgSend_bytes(v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_length(v13, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_write_maxLength_(stream, v34, v27, v33, v35, v36);
  if (v19 == v41)
  {
    self->_itemIdx = 0;
  }

  else
  {
    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"dataset footer: %@ data: %@", v38, v39, v40, v8, v13);
    sub_2559C6434(dataset, v42, self->_stream, 3);
  }

  return v19 == v41;
}

- (BOOL)addItem:(id)item error:(id *)error
{
  v110[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v11 = self->_itemIdx + 1;
  self->_itemIdx = v11;
  if (v11 < 2)
  {
LABEL_4:
    v40 = sub_2559C2C40(5u);
    v41 = objc_alloc_init(MEMORY[0x277CCAB68]);
    objc_msgSend_appendFormat_(v41, v42, @"%@{\n", v43, v44, v45, @"        ");
    v50 = objc_msgSend_JSONWithIndent_(itemCopy, v46, 5, v47, v48, v49);
    objc_msgSend_appendFormat_(v41, v51, @"%@%@:\n%@,\n", v52, v53, v54, v40, @"item", v50);

    objc_msgSend_appendFormat_(v41, v55, @"%@}", v56, v57, v58, @"        ");
    v63 = objc_msgSend_dataUsingEncoding_(v41, v59, 4, v60, v61, v62);
    if (objc_msgSend_length(v63, v64, v65, v66, v67, v68))
    {
      v74 = objc_msgSend_length(v63, v69, v70, v71, v72, v73);
      stream = self->_stream;
      v76 = v63;
      v82 = objc_msgSend_bytes(v76, v77, v78, v79, v80, v81);
      v88 = objc_msgSend_length(v63, v83, v84, v85, v86, v87);
      if (v74 == objc_msgSend_write_maxLength_(stream, v89, v82, v88, v90, v91))
      {
        v96 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v106 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v92, @"item: %@ data: %@", v93, v94, v95, itemCopy, v63);
      sub_2559C6434(error, v106, self->_stream, 3);
    }

    else
    {
      v97 = MEMORY[0x277CCA9B8];
      v109 = *MEMORY[0x277CCA450];
      v98 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"Invalid item %@", v71, v72, v73, itemCopy);
      v110[0] = v98;
      v101 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v99, v110, &v109, 1, v100);
      v104 = objc_msgSend_errorWithDomain_code_userInfo_(v97, v102, @"com.apple.koa.profile", 7, v101, v103);
      if (error && v104)
      {
        v104 = v104;
        *error = v104;
      }
    }

    v96 = 0;
    goto LABEL_14;
  }

  v12 = objc_msgSend_dataUsingEncoding_(@",\n", v6, 4, v7, v8, v9);
  v18 = objc_msgSend_length(v12, v13, v14, v15, v16, v17);
  v19 = self->_stream;
  v20 = v12;
  v26 = objc_msgSend_bytes(v20, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_length(v12, v27, v28, v29, v30, v31);
  if (v18 == objc_msgSend_write_maxLength_(v19, v33, v26, v32, v34, v35))
  {

    goto LABEL_4;
  }

  v105 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"item separator: %@", v37, v38, v39, v12);
  sub_2559C6434(error, v105, self->_stream, 3);

  v96 = 0;
LABEL_15:

  v107 = *MEMORY[0x277D85DE8];
  return v96;
}

- (BOOL)startDataset:(id)dataset error:(id *)error
{
  datasetCopy = dataset;
  v11 = self->_datasetIdx + 1;
  self->_datasetIdx = v11;
  if (v11 >= 2)
  {
    v12 = objc_msgSend_dataUsingEncoding_(@",\n", v6, 4, v7, v8, v9);
    v18 = objc_msgSend_length(v12, v13, v14, v15, v16, v17);
    stream = self->_stream;
    v20 = v12;
    v26 = objc_msgSend_bytes(v20, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_length(v12, v27, v28, v29, v30, v31);
    if (v18 != objc_msgSend_write_maxLength_(stream, v33, v26, v32, v34, v35))
    {
      v92 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"dataset separator: %@", v37, v38, v39, v12);
      sub_2559C6434(error, v92, self->_stream, 3);
      v90 = 0;
      goto LABEL_8;
    }
  }

  v40 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v40, v41, @"%@{\n", v42, v43, v44, @"    ");
  v49 = objc_msgSend_JSONWithIndent_(datasetCopy, v45, 4, v46, v47, v48);
  objc_msgSend_appendFormat_(v40, v50, @"%@%@:\n%@,\n", v51, v52, v53, @"      ", @"datasetInfo", v49);

  objc_msgSend_appendFormat_(v40, v54, @"%@%@: [\n", v55, v56, v57, @"      ", @"items");
  v62 = objc_msgSend_dataUsingEncoding_(v40, v58, 4, v59, v60, v61);
  v68 = objc_msgSend_length(v62, v63, v64, v65, v66, v67);
  v69 = self->_stream;
  v70 = v62;
  v76 = objc_msgSend_bytes(v70, v71, v72, v73, v74, v75);
  v82 = objc_msgSend_length(v62, v77, v78, v79, v80, v81);
  v90 = v68 == objc_msgSend_write_maxLength_(v69, v83, v76, v82, v84, v85);
  if (!v90)
  {
    v91 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v86, @"dataset header: %@ data: %@", v87, v88, v89, v40, v62);
    sub_2559C6434(error, v91, self->_stream, 3);
  }

  v12 = @"    ";
  v92 = @"      ";
LABEL_8:

  return v90;
}

- (BOOL)startProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v7 = objc_alloc(MEMORY[0x277CCAB68]);
  v12 = objc_msgSend_initWithString_(v7, v8, @"{\n", v9, v10, v11);
  v17 = objc_msgSend_JSONWithIndent_(profileCopy, v13, 1, v14, v15, v16);
  objc_msgSend_appendFormat_(v12, v18, @"%@%@:\n%@,\n", v19, v20, v21, @"  ", @"profileInfo", v17);

  objc_msgSend_appendFormat_(v12, v22, @"%@%@: [\n", v23, v24, v25, @"  ", @"datasets");
  v30 = objc_msgSend_dataUsingEncoding_(v12, v26, 4, v27, v28, v29);
  v36 = objc_msgSend_length(v30, v31, v32, v33, v34, v35);
  stream = self->_stream;
  v38 = v30;
  v44 = objc_msgSend_bytes(v38, v39, v40, v41, v42, v43);
  v50 = objc_msgSend_length(v30, v45, v46, v47, v48, v49);
  v58 = objc_msgSend_write_maxLength_(stream, v51, v44, v50, v52, v53);
  if (v36 != v58)
  {
    v59 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v54, @"profile header: %@ data: %@", v55, v56, v57, v12, v30);
    sub_2559C6434(error, v59, self->_stream, 3);
  }

  return v36 == v58;
}

- (KVJSONProfileWriter)initWithOutputStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = KVJSONProfileWriter;
  v6 = [(KVJSONProfileWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
    *&v7->_datasetIdx = 0;
  }

  return v7;
}

@end