@interface CKDRecordFetchInfo
- (CKDRecordFetchInfo)initWithAggregator:(id)a3;
- (id)CKPropertiesDescription;
- (void)performCallback;
- (void)setState:(unint64_t)a3;
@end

@implementation CKDRecordFetchInfo

- (void)performCallback
{
  v44 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, v2) != 3)
  {
    v40 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, a2, self, @"CKDRecordFetchAggregator.m", 126, @"Fetch info isn't in the needs callback state: %@", self);
  }

  v9 = objc_msgSend_record(self, v5, v6);
  if (v9)
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_error(self, v7, v8);

  if (!v12)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    v38 = objc_msgSend_recordID(self, v36, v37);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v39, a2, self, @"CKDRecordFetchAggregator.m", 127, @"Calling back for record %@ without a fetched record or an error: %@", v38, self);

LABEL_4:
  }

  v13 = objc_msgSend_completionBlock(self, v10, v11);

  if (v13)
  {
    v16 = objc_msgSend_completionBlock(self, v14, v15);
    v19 = objc_msgSend_recordID(self, v17, v18);
    v24 = objc_msgSend_error(self, v20, v21);
    if (v24 && !objc_msgSend_ignoreErrors(self, v22, v23))
    {
      v26 = 0;
      v25 = 0;
    }

    else
    {
      v25 = objc_msgSend_record(self, v22, v23);
      v26 = 1;
    }

    v33 = objc_msgSend_error(self, v22, v23);
    (v16)[2](v16, v19, v25, v33);

    if (v26)
    {
    }

    objc_msgSend_setCompletionBlock_(self, v34, 0);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = v27;
      v32 = objc_msgSend_recordID(self, v30, v31);
      *buf = 138412290;
      v43 = v32;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Warn: No completion block was set for the fetch of record %@", buf, 0xCu);
    }
  }

  objc_msgSend_setState_(self, v28, 4);
  v35 = *MEMORY[0x277D85DE8];
}

- (id)CKPropertiesDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  Order = objc_msgSend_fetchOrder(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"fetchOrder=%lu", Order);
  objc_msgSend_addObject_(v3, v10, v9);

  v13 = objc_msgSend_recordID(self, v11, v12);

  if (v13)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_msgSend_recordID(self, v14, v15);
    v20 = objc_msgSend_ckShortDescription(v17, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(v16, v21, @"recordID=%@", v20);
    objc_msgSend_addObject_(v3, v23, v22);
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = objc_msgSend_state(self, v14, v15);
  if ((v25 - 1) > 3)
  {
    objc_msgSend_stringWithFormat_(v24, v26, @"state=%@", @"Not Started");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v24, v26, @"state=%@", off_27854B2A0[v25 - 1]);
  }
  v27 = ;
  objc_msgSend_addObject_(v3, v28, v27);

  v29 = MEMORY[0x277CCACA8];
  v33 = objc_msgSend_record(self, v30, v31);
  v34 = @"YES";
  if (!v33)
  {
    v34 = @"NO";
  }

  v35 = objc_msgSend_stringWithFormat_(v29, v32, @"hasRecord=%@", v34);
  objc_msgSend_addObject_(v3, v36, v35);

  v37 = MEMORY[0x277CCACA8];
  v40 = objc_msgSend_etag(self, v38, v39);
  v42 = objc_msgSend_stringWithFormat_(v37, v41, @"etag=%@", v40);
  objc_msgSend_addObject_(v3, v43, v42);

  v46 = objc_msgSend_error(self, v44, v45);

  if (v46)
  {
    v49 = MEMORY[0x277CCACA8];
    v50 = objc_msgSend_error(self, v47, v48);
    v52 = objc_msgSend_stringWithFormat_(v49, v51, @"error=%@", v50);
    objc_msgSend_addObject_(v3, v53, v52);
  }

  v54 = objc_msgSend_componentsJoinedByString_(v3, v47, @", ");

  return v54;
}

- (CKDRecordFetchInfo)initWithAggregator:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CKDRecordFetchInfo;
  v7 = [(CKDRecordFetchInfo *)&v14 init];
  if (v7)
  {
    v8 = objc_msgSend_recordReadySource(v4, v5, v6);
    recordReadySource = v7->_recordReadySource;
    v7->_recordReadySource = v8;

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v10, v11);
    v7->_startDate = v12;
  }

  return v7;
}

- (void)setState:(unint64_t)a3
{
  self->_state = a3;
  if (a3 == 3)
  {
    v4 = objc_msgSend_recordReadySource(self, a2, a3);
    dispatch_source_merge_data(v4, 1uLL);
  }
}

@end