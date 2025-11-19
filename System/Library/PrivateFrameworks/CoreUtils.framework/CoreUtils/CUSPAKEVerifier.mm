@interface CUSPAKEVerifier
- (CUSPAKEVerifier)initWithPasswordCString:(const char *)a3;
- (CUSPAKEVerifier)initWithPasswordPtr:(const void *)a3 passwordLength:(unint64_t)a4;
- (CUSPAKEVerifier)initWithPasswordString:(id)a3;
- (id)finishWithM3:(id)a3 error:(id *)a4;
- (id)generateM2WithM1:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation CUSPAKEVerifier

- (id)finishWithM3:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = v6;
  if (!self->_spakeContext)
  {
    if (a4)
    {
      v24 = *MEMORY[0x1E696A768];
      v25 = "no spake context";
      v26 = 4294960551;
LABEL_13:
      NSErrorF_safe(v24, v26, v25, v7, v8, v9, v10, v11, v27);
      *a4 = v16 = 0;
      goto LABEL_6;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_6;
  }

  v13 = [v6 confirmPData];
  [v13 length];
  v14 = [v12 confirmPData];
  [v14 bytes];
  session_key = ccspake_mac_verify_and_get_session_key();

  if (session_key)
  {
    if (a4)
    {
      v24 = *MEMORY[0x1E696A768];
      v27 = session_key;
      v25 = "ccspake verify failed: %d";
      v26 = 4294960596;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  ccspake_cp_256_rfc();
  ccspake_sizeof_ctx();
  cc_clear();
  free(self->_spakeContext);
  self->_spakeContext = 0;
  v16 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v28 length:32];
  cc_clear();
  if (v16)
  {
    v22 = v16;
  }

  else if (a4)
  {
    *a4 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "generate session key failed", v17, v18, v19, v20, v21, v27);
  }

LABEL_6:

  return v16;
}

- (id)generateM2WithM1:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  ccspake_cp_256_rfc();
  if (![CUSPAKECommon scryptWithPasswordData:"scryptWithPasswordData:outputPtr:outputLen:error:" outputPtr:self->_passwordData outputLen:&v55[-((2 * (ccspake_sizeof_w() + 8) + 15) & 0xFFFFFFFFFFFFFFF0) - 8] error:?])
  {
    goto LABEL_21;
  }

  v7 = ccspake_reduce_w();
  if (v7)
  {
    if (a4)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w0: %d", v8, v9, v10, v11, v12, v7);
LABEL_20:
      *a4 = v43 = 0;
      goto LABEL_13;
    }

LABEL_21:
    v43 = 0;
    goto LABEL_13;
  }

  v13 = ccspake_reduce_w();
  if (v13)
  {
    if (a4)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w1: %d", v14, v15, v16, v17, v18, v13);
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v54 = &v54;
  v19 = ccspake_sizeof_point();
  ccrng();
  if (ccspake_generate_L())
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v47 = *MEMORY[0x1E696A768];
    v48 = "ccspake_generate_L";
    v49 = 4294960596;
LABEL_26:
    v50 = NSErrorF_safe(v47, v49, v48, v20, v21, v22, v23, v24, v54);
LABEL_37:
    v43 = 0;
    *a4 = v50;
    goto LABEL_13;
  }

  if (self->_spakeContext)
  {
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
  }

  v25 = ccspake_sizeof_ctx();
  v26 = malloc_type_malloc(v25, 0x1060040E1C2CD2EuLL);
  self->_spakeContext = v26;
  if (!v26)
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v47 = *MEMORY[0x1E696A768];
    v48 = "ccspake_ctx malloc failed";
    v49 = 4294960568;
    goto LABEL_26;
  }

  ccspake_mac_hkdf_hmac_sha256();
  v27 = ccspake_verifier_initialize();
  if (v27)
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v51 = *MEMORY[0x1E696A768];
    v53 = v27;
    v52 = "ccspake_prover_initialize failed: %d";
LABEL_35:
    NSErrorF_safe(v51, 4294960596, v52, v28, v29, v30, v31, v32, v53);
    goto LABEL_36;
  }

  v33 = ccspake_kex_generate();
  if (v33)
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v51 = *MEMORY[0x1E696A768];
    v53 = v33;
    v52 = "ccspake_kex_generate failed: %d";
    goto LABEL_35;
  }

  v34 = [v6 sharePData];
  [v34 length];
  v35 = [v6 sharePData];
  [v35 bytes];
  v36 = ccspake_kex_process();

  if (v36)
  {
    if (a4)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_kex_process failed: %d", v37, v38, v39, v40, v41, v36);
      v50 = LABEL_36:;
      goto LABEL_37;
    }
  }

  else
  {
    v42 = ccspake_mac_compute();
    if (!v42)
    {
      v43 = objc_alloc_init(CUSPAKEM2);
      v44 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v55 length:32];
      [(CUSPAKEM2 *)v43 setConfirmVData:v44];

      v45 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8] length:v19];
      [(CUSPAKEM2 *)v43 setShareVData:v45];

      goto LABEL_13;
    }

    if (a4)
    {
      v51 = *MEMORY[0x1E696A768];
      v53 = v42;
      v52 = "ccspake_mac_compute failed: %d";
      goto LABEL_35;
    }
  }

LABEL_38:
  v43 = 0;
LABEL_13:

  return v43;
}

- (void)dealloc
{
  if (self->_spakeContext)
  {
    ccspake_cp_256_rfc();
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
    self->_spakeContext = 0;
  }

  v3.receiver = self;
  v3.super_class = CUSPAKEVerifier;
  [(CUSPAKEVerifier *)&v3 dealloc];
}

- (CUSPAKEVerifier)initWithPasswordString:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CUSPAKEVerifier;
  v5 = [(CUSPAKEVerifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 UTF8String];
    v7 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v6 length:strlen(v6)];
    passwordData = v5->_passwordData;
    v5->_passwordData = v7;

    v9 = v5;
  }

  return v5;
}

- (CUSPAKEVerifier)initWithPasswordPtr:(const void *)a3 passwordLength:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = CUSPAKEVerifier;
  v6 = [(CUSPAKEVerifier *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:a3 length:a4];
    passwordData = v6->_passwordData;
    v6->_passwordData = v7;

    v9 = v6;
  }

  return v6;
}

- (CUSPAKEVerifier)initWithPasswordCString:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = CUSPAKEVerifier;
  v4 = [(CUSPAKEVerifier *)&v9 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:a3 length:strlen(a3)];
    passwordData = v4->_passwordData;
    v4->_passwordData = v5;

    v7 = v4;
  }

  return v4;
}

@end