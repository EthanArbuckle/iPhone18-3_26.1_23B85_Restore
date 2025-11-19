@interface KVDatasetStream
- (KVDatasetStream)init;
- (KVDatasetStream)initWithDonation:(id)a3;
- (id)_cascadeItemFromItem:(id)a3 error:(id *)a4;
- (void)finish:(id)a3;
@end

@implementation KVDatasetStream

- (id)_cascadeItemFromItem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v46 = 0;
  v10 = objc_msgSend_toCascadeItem_(v5, v6, &v46, v7, v8, v9);
  v11 = v46;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_itemType(v5, v15, v16, v17, v18, v19);
    v26 = KVItemTypeDescription(v20, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_itemId(v5, v27, v28, v29, v30, v31);
    v37 = objc_msgSend_stringWithFormat_(v14, v33, @"KVItem (%@) with itemId: %@ cannot be converted to Cascade item instance", v34, v35, v36, v26, v32);
    objc_msgSend_setObject_forKey_(v13, v38, v37, *MEMORY[0x277CCA450], v39, v40);

    if (v11)
    {
      objc_msgSend_setObject_forKey_(v13, v41, v11, *MEMORY[0x277CCA7E8], v42, v43);
    }

    v44 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v41, @"com.apple.koa.donate", 1, v13, v43);
    if (a4 && v44)
    {
      v44 = v44;
      *a4 = v44;
    }
  }

  return v10;
}

- (void)finish:(id)a3
{
  v4 = a3;
  donation = self->_donation;
  v14 = 0;
  v10 = objc_msgSend_finish_(donation, v6, &v14, v7, v8, v9);
  v11 = v14;
  v12 = v11;
  if (v10)
  {
    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else if (v4)
  {
    v13 = sub_2559CA340(v11);
    (v4)[2](v4, v13);
  }
}

- (KVDatasetStream)initWithDonation:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = KVDatasetStream;
  v6 = [(KVDatasetStream *)&v26 init];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v6, v8, v7, v9, v10, v11) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v12 = objc_opt_class(), objc_msgSend_isMemberOfClass_(v6, v13, v12, v14, v15, v16)) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_storeStrong(&v6->_donation, a3);
LABEL_7:
    v17 = v6;
    goto LABEL_11;
  }

  v18 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    v21 = v18;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 136315650;
    v28 = "[KVDatasetStream initWithDonation:]";
    v29 = 2112;
    v30 = v23;
    v31 = 2112;
    v32 = v25;
    _os_log_error_impl(&dword_2559A5000, v21, OS_LOG_TYPE_ERROR, "%s Unexpected donation: %@ for class: %@", buf, 0x20u);
  }

  v17 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (KVDatasetStream)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

@end