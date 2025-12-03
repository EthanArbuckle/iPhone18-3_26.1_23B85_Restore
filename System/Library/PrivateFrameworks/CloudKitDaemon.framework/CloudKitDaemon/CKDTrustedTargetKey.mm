@interface CKDTrustedTargetKey
- (CKDTrustedTargetKey)init;
- (id)decrypt:(id)decrypt;
- (id)encrypt:(id)encrypt;
@end

@implementation CKDTrustedTargetKey

- (CKDTrustedTargetKey)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CKDTrustedTargetKey;
  v2 = [(CKDTrustedTargetKey *)&v16 init];
  if (v2)
  {
    v3 = ccrng();
    if (v3)
    {
      v4 = v3;
      v5 = malloc_type_malloc(0x20uLL, 0x89D8760EuLL);
      v6 = (*v4)(v4, 32, v5);
      if (v6)
      {
        v7 = v6;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v8 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v18 = v7;
          _os_log_fault_impl(&dword_22506F000, v8, OS_LOG_TYPE_FAULT, "Failed to generate random number with error code %d", buf, 8u);
        }

        free(v5);
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x277CBEA90]);
        v12 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v10, v11, v5, 32, 1);
        key = v2->_key;
        v2->_key = v12;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_22506F000, v9, OS_LOG_TYPE_FAULT, "Failed to create random number generator", buf, 2u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)encrypt:(id)encrypt
{
  v44 = *MEMORY[0x277D85DE8];
  encryptCopy = encrypt;
  if (!objc_msgSend_length(encryptCopy, v5, v6))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Trying to encrypt a zero-length data", buf, 2u);
    }

    goto LABEL_21;
  }

  v9 = objc_msgSend_length(encryptCopy, v7, v8);
  v10 = encryptCopy;
  objc_msgSend_bytes(v10, v11, v12);
  v13 = malloc_type_malloc(v9 + 32, 0xA5FDB254uLL);
  if (!v13)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22506F000, v23, OS_LOG_TYPE_FAULT, "Could not malloc bytes to encrypt data", buf, 2u);
    }

    goto LABEL_21;
  }

  v14 = v13;
  v15 = ccrng();
  if (!v15)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v19 = "Failed to create random number generator";
    v20 = v24;
    v21 = 2;
    goto LABEL_27;
  }

  v16 = (*v15)(v15, 16, v14);
  if (v16)
  {
    v17 = v16;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    *buf = 67109120;
    v43 = v17;
    v19 = "Failed to generate random number with error code %d";
    v20 = v18;
    v21 = 8;
LABEL_27:
    _os_log_fault_impl(&dword_22506F000, v20, OS_LOG_TYPE_FAULT, v19, buf, v21);
LABEL_20:
    free(v14);
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v28 = ccaes_gcm_encrypt_mode();
  v29 = (*v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v32 = objc_msgSend_key(self, v30, v31);
  objc_msgSend_length(v32, v33, v34);
  v37 = objc_msgSend_key(self, v35, v36);
  v38 = v37;
  objc_msgSend_bytes(v38, v39, v40);
  ccgcm_init();

  ccgcm_set_iv();
  ccgcm_update();
  ccgcm_finalize();
  ccgcm_context_size();
  cc_clear();
  v25 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v41, v14, v9 + 32, 1);
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)decrypt:(id)decrypt
{
  v39 = *MEMORY[0x277D85DE8];
  decryptCopy = decrypt;
  if (objc_msgSend_length(decryptCopy, v5, v6) <= 0x1F)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, "Trying to decrypt a zero-length data", buf, 2u);
    }

LABEL_17:
    v33 = 0;
    goto LABEL_19;
  }

  v10 = objc_msgSend_length(decryptCopy, v7, v8);
  v11 = decryptCopy;
  objc_msgSend_bytes(v11, v12, v13);
  v14 = v10 - 32;
  v15 = malloc_type_malloc(v10 - 32, 0xD7E745F8uLL);
  if (!v15)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22506F000, v34, OS_LOG_TYPE_FAULT, "Could not malloc bytes to decrypt data", buf, 2u);
    }

    goto LABEL_17;
  }

  v16 = v15;
  v17 = ccaes_gcm_decrypt_mode();
  v18 = (*v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v21 = objc_msgSend_key(self, v19, v20);
  objc_msgSend_length(v21, v22, v23);
  v26 = objc_msgSend_key(self, v24, v25);
  v27 = v26;
  objc_msgSend_bytes(v27, v28, v29);
  ccgcm_init();

  ccgcm_set_iv();
  ccgcm_update();
  ccgcm_finalize();
  v30 = cc_cmp_safe();
  ccgcm_context_size();
  cc_clear();
  if (v30)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Tag did not match when decrypting", v37, 2u);
    }

    free(v16);
    v33 = 0;
  }

  else
  {
    v33 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v31, v16, v14, 1);
  }

LABEL_19:

  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

@end