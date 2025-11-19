@interface KVDonator
+ (BOOL)_isXPCDonationEnabledForItemType:(int64_t)a3;
+ (id)donatorWithItemType:(int64_t)a3 originAppId:(id)a4 deviceId:(id)a5 userId:(id)a6 error:(id *)a7;
+ (id)donatorWithItemType:(int64_t)a3 originAppId:(id)a4 error:(id *)a5;
+ (id)donatorWithItemType:(int64_t)a3 originAppId:(id)a4 userId:(id)a5 error:(id *)a6;
+ (void)initialize;
- (KVDonator)init;
- (KVDonator)initWithCascadeItemType:(unsigned __int16)a3 originAppId:(id)a4 userId:(id)a5 serviceProvider:(id)a6 isExternalClient:(BOOL)a7;
- (id)_descriptorsForItemType:(int64_t)a3 error:(id *)a4;
- (void)_donateWithOptions:(unsigned __int16)a3 version:(unint64_t)a4 validity:(id)a5 usingStream:(id)a6;
@end

@implementation KVDonator

- (id)_descriptorsForItemType:(int64_t)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBF8];
  if (a3 <= 0x12 && ((1 << a3) & 0x44102) != 0)
  {
    originAppId = self->_originAppId;
    v18 = 0;
    v9 = objc_msgSend_sourceIdentifierWithValue_error_(MEMORY[0x277CF9500], a2, originAppId, &v18, v4, v5);
    v10 = v18;
    v14 = v10;
    if (v9)
    {
      v19[0] = v9;
      v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v19, 1, v12, v13);
    }

    else
    {
      v15 = sub_2559CA340(v10);
      if (a4 && v15)
      {
        v15 = v15;
        *a4 = v15;
      }

      v6 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_donateWithOptions:(unsigned __int16)a3 version:(unint64_t)a4 validity:(id)a5 usingStream:(id)a6
{
  v8 = a3;
  v60[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v15 = a6;
  if (v15)
  {
    v19 = objc_msgSend_itemTypeFromCascadeItemType_(KVItemConverter, v11, self->_cascadeItemType, v12, v13, v14);
    if (self->_isExternalClient && (v20 = objc_opt_class(), (objc_msgSend__isXPCDonationEnabledForItemType_(v20, v21, v19, v22, v23, v24) & 1) == 0))
    {
      v36 = MEMORY[0x277CCA9B8];
      v59 = *MEMORY[0x277CCA450];
      v37 = MEMORY[0x277CCACA8];
      if (v19 - 1 >= 0x1A)
      {
        v38 = 0;
      }

      else
      {
        v38 = v19;
      }

      v39 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v16, off_279803A58[v38], 4, v17, v18);
      v44 = objc_msgSend_stringWithFormat_(v37, v40, @"KVItemType: %@ not enabled for this device platform", v41, v42, v43, v39);
      v60[0] = v44;
      v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v60, &v59, 1, v46);
      v28 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v48, @"com.apple.koa.donate", 8, v47, v49);

      v50 = qword_28106B3C0;
      if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v56 = "[KVDonator _donateWithOptions:version:validity:usingStream:]";
        v57 = 2112;
        v58 = v28;
        _os_log_error_impl(&dword_2559A5000, v50, OS_LOG_TYPE_ERROR, "%s Rejecting donation: %@", buf, 0x16u);
      }

      v15[2](v15, 0, v28);
    }

    else
    {
      userId = self->_userId;
      if (userId)
      {
        v26 = qword_28106B3C0;
        if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v56 = "[KVDonator _donateWithOptions:version:validity:usingStream:]";
          v57 = 2112;
          v58 = userId;
          _os_log_error_impl(&dword_2559A5000, v26, OS_LOG_TYPE_ERROR, "%s Ignoring userId: %@", buf, 0x16u);
        }
      }

      v54 = 0;
      v27 = objc_msgSend__descriptorsForItemType_error_(self, v16, v19, &v54, v17, v18);
      v28 = v54;
      if (v27)
      {
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = sub_2559AA3D4;
        v52[3] = &unk_2798038E8;
        v53 = v15;
        v31 = MEMORY[0x259C45590](v52);
        serviceProvider = self->_serviceProvider;
        cascadeItemType = self->_cascadeItemType;
        if (v8)
        {
          if (serviceProvider)
          {
            objc_msgSend_incrementalSetDonationWithItemType_descriptors_version_validity_serviceProvider_completion_(MEMORY[0x277CF9508], v29, cascadeItemType, v27, a4, v10, serviceProvider, v31);
          }

          else
          {
            objc_msgSend_incrementalSetDonationWithItemType_descriptors_version_validity_completion_(MEMORY[0x277CF9508], v29, cascadeItemType, v27, a4, v10, v31);
          }
        }

        else if (serviceProvider)
        {
          objc_msgSend_fullSetDonationWithItemType_descriptors_serviceProvider_completion_(MEMORY[0x277CF9508], v29, cascadeItemType, v27, self->_serviceProvider, v31);
        }

        else
        {
          objc_msgSend_fullSetDonationWithItemType_descriptors_completion_(MEMORY[0x277CF9508], v29, cascadeItemType, v27, v31, v30);
        }
      }

      else
      {
        v35 = qword_28106B3C0;
        if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v56 = "[KVDonator _donateWithOptions:version:validity:usingStream:]";
          v57 = 2112;
          v58 = v28;
          _os_log_error_impl(&dword_2559A5000, v35, OS_LOG_TYPE_ERROR, "%s Failed to resolve descriptors: %@", buf, 0x16u);
        }

        v15[2](v15, 0, v28);
      }
    }
  }

  else
  {
    v34 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v56 = "[KVDonator _donateWithOptions:version:validity:usingStream:]";
      _os_log_error_impl(&dword_2559A5000, v34, OS_LOG_TYPE_ERROR, "%s streamBlock parameter is nil.", buf, 0xCu);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (KVDonator)initWithCascadeItemType:(unsigned __int16)a3 originAppId:(id)a4 userId:(id)a5 serviceProvider:(id)a6 isExternalClient:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = KVDonator;
  v16 = [(KVDonator *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_cascadeItemType = a3;
    objc_storeStrong(&v16->_originAppId, a4);
    objc_storeStrong(&v17->_userId, a5);
    objc_storeStrong(&v17->_serviceProvider, a6);
    v17->_isExternalClient = a7;
  }

  return v17;
}

- (KVDonator)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (BOOL)_isXPCDonationEnabledForItemType:(int64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 20:
    case 21:
    case 24:
    case 25:
    case 26:
      goto LABEL_2;
    case 5:
    case 16:
      if (objc_msgSend_isSiriUODSupported(KVAssistantServicesBridge, a2, a3, v3, v4, v5))
      {
        LOBYTE(v7) = 1;
LABEL_2:
        v8 = *MEMORY[0x277D85DE8];
      }

      else
      {
        v14 = *MEMORY[0x277D85DE8];

        LOBYTE(v7) = MEMORY[0x2821F9670](KVAssistantServicesBridge, sel_isASRSupported, v10, v11, v12, v13);
      }

      return v7;
    case 8:
    case 9:
    case 17:
    case 18:
    case 19:
    case 22:
    case 23:
      v9 = *MEMORY[0x277D85DE8];

      LOBYTE(v7) = objc_msgSend_isSiriUODSupported(KVAssistantServicesBridge, a2, a3, v3, v4, v5);
      return v7;
    default:
      v15 = qword_28106B3C0;
      v7 = os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        v16 = v15;
        v22 = KVItemTypeDescription(a3, v17, v18, v19, v20, v21);
        v24 = 136315394;
        v25 = "+[KVDonator _isXPCDonationEnabledForItemType:]";
        v26 = 2112;
        v27 = v22;
        _os_log_error_impl(&dword_2559A5000, v16, OS_LOG_TYPE_ERROR, "%s Unexpected itemType: %@", &v24, 0x16u);

        LOBYTE(v7) = 0;
      }

      goto LABEL_2;
  }
}

+ (id)donatorWithItemType:(int64_t)a3 originAppId:(id)a4 deviceId:(id)a5 userId:(id)a6 error:(id *)a7
{
  v51[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a6;
  v18 = objc_msgSend_copy(a5, v13, v14, v15, v16, v17);
  if (!objc_msgSend_length(v18, v19, v20, v21, v22, v23))
  {
    v36 = MEMORY[0x277CCA9B8];
    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"Invalid deviceId: %@", v26, v27, v28, v18, *MEMORY[0x277CCA450]);
    v51[0] = v37;
    v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v51, &v50, 1, v39);
    v43 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v41, @"com.apple.koa.donate", 4, v40, v42);
    if (a7 && v43)
    {
      v43 = v43;
      *a7 = v43;
    }

    goto LABEL_10;
  }

  if (!v18)
  {
LABEL_10:
    v35 = 0;
    goto LABEL_16;
  }

  v33 = sub_2559AAA44(v12, a7, v25, v26, v27, v28);
  if (v33 && (v34 = sub_2559AAB70(a3, a7, v29, v30, v31, v32), v34 != *MEMORY[0x277CF94A8]))
  {
    v44 = v34;
    v45 = sub_2559AACD8(v11, a7);
    if (v45)
    {
      v46 = objc_opt_class();
      v35 = objc_msgSend_donatorWithServiceProvider_isExternalClient_cascadeItemType_originAppId_userId_error_(v46, v47, 0, 1, v44, v45, v33, a7);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

LABEL_16:
  v48 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)donatorWithItemType:(int64_t)a3 originAppId:(id)a4 userId:(id)a5 error:(id *)a6
{
  v9 = a4;
  v18 = sub_2559AAA44(a5, a6, v10, v11, v12, v13);
  if (v18 && (v19 = sub_2559AAB70(a3, a6, v14, v15, v16, v17), v19 != *MEMORY[0x277CF94A8]))
  {
    v21 = v19;
    v22 = sub_2559AACD8(v9, a6);
    if (v22)
    {
      v23 = objc_opt_class();
      v20 = objc_msgSend_donatorWithServiceProvider_isExternalClient_cascadeItemType_originAppId_userId_error_(v23, v24, 0, 1, v21, v22, v18, a6);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)donatorWithItemType:(int64_t)a3 originAppId:(id)a4 error:(id *)a5
{
  v7 = a4;
  v12 = sub_2559AAB70(a3, a5, v8, v9, v10, v11);
  if (v12 == *MEMORY[0x277CF94A8])
  {
    v13 = 0;
  }

  else
  {
    v14 = v12;
    v15 = sub_2559AACD8(v7, a5);
    if (v15)
    {
      v16 = objc_opt_class();
      v13 = objc_msgSend_donatorWithServiceProvider_isExternalClient_cascadeItemType_originAppId_userId_error_(v16, v17, 0, 1, v14, v15, 0, a5);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end