@interface CUSPAKEProver
- (CUSPAKEProver)initWithPasswordCString:(const char *)a3;
- (CUSPAKEProver)initWithPasswordPtr:(const void *)a3 passwordLength:(unint64_t)a4;
- (CUSPAKEProver)initWithPasswordString:(id)a3;
- (id)finishAndReturnError:(id *)a3;
- (id)generateM1AndReturnError:(id *)a3;
- (id)generateM3WithM2:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation CUSPAKEProver

- (id)finishAndReturnError:(id *)a3
{
  v10 = self->_sessionKey;
  if (v10)
  {
    sessionKey = self->_sessionKey;
    self->_sessionKey = 0;

    v12 = v10;
  }

  else if (a3)
  {
    *a3 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "no session key", v5, v6, v7, v8, v9, v14);
  }

  return v10;
}

- (id)generateM3WithM2:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!self->_spakeContext)
  {
    if (!a4)
    {
      goto LABEL_22;
    }

    v24 = *MEMORY[0x1E696A768];
    v25 = "no spake context";
    v26 = 4294960551;
LABEL_21:
    NSErrorF_safe(v24, v26, v25, v6, v7, v8, v9, v10, v27);
    *a4 = v21 = 0;
    goto LABEL_7;
  }

  ccspake_cp_256_rfc();
  v12 = [v11 shareVData];
  [v12 length];
  v13 = [v11 shareVData];
  [v13 bytes];
  v14 = ccspake_kex_process();

  if (v14)
  {
    if (!a4)
    {
      goto LABEL_22;
    }

    v24 = *MEMORY[0x1E696A768];
    v27 = v14;
    v25 = "ccspake_kex_process failed: %d";
    goto LABEL_18;
  }

  v15 = ccspake_mac_compute();
  if (v15)
  {
    if (!a4)
    {
      goto LABEL_22;
    }

    v27 = v15;
    v25 = "ccspake_mac_compute failed: %d";
    v24 = *MEMORY[0x1E696A768];
    goto LABEL_18;
  }

  v16 = [v11 confirmVData];
  [v16 length];
  v17 = [v11 confirmVData];
  [v17 bytes];
  session_key = ccspake_mac_verify_and_get_session_key();

  if (session_key)
  {
    if (!a4)
    {
      goto LABEL_22;
    }

    v24 = *MEMORY[0x1E696A768];
    v27 = session_key;
    v25 = "ccspake verify failed: %d";
LABEL_18:
    v26 = 4294960596;
    goto LABEL_21;
  }

  v19 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v28 length:32];
  sessionKey = self->_sessionKey;
  self->_sessionKey = v19;

  cc_clear();
  if (self->_sessionKey)
  {
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
    self->_spakeContext = 0;
    v21 = objc_alloc_init(CUSPAKEM3);
    v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v29 length:32];
    [(CUSPAKEM3 *)v21 setConfirmPData:v22];

    goto LABEL_7;
  }

  if (a4)
  {
    v24 = *MEMORY[0x1E696A768];
    v25 = "generate session key failed";
    v26 = 4294960568;
    goto LABEL_21;
  }

LABEL_22:
  v21 = 0;
LABEL_7:

  return v21;
}

- (id)generateM1AndReturnError:(id *)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  ccspake_cp_256_rfc();
  if (![CUSPAKECommon scryptWithPasswordData:"scryptWithPasswordData:outputPtr:outputLen:error:" outputPtr:self->_passwordData outputLen:v41 - ((2 * (ccspake_sizeof_w() + 8) + 15) & 0xFFFFFFFFFFFFFFF0) error:?])
  {
    goto LABEL_25;
  }

  v5 = ccspake_reduce_w();
  if (v5)
  {
    if (!a3)
    {
      goto LABEL_25;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w0: %d", v6, v7, v8, v9, v10, v5);
    v40 = LABEL_23:;
    goto LABEL_24;
  }

  v11 = ccspake_reduce_w();
  if (v11)
  {
    if (!a3)
    {
      goto LABEL_25;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w1: %d", v12, v13, v14, v15, v16, v11);
    goto LABEL_23;
  }

  if (self->_spakeContext)
  {
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
  }

  v17 = ccspake_sizeof_ctx();
  v18 = malloc_type_malloc(v17, 0x1060040E1C2CD2EuLL);
  self->_spakeContext = v18;
  if (!v18)
  {
    if (a3)
    {
      v40 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "ccspake_ctx malloc failed", v19, v20, v21, v22, v23, v41[0]);
LABEL_24:
      v37 = 0;
      *a3 = v40;
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  ccspake_mac_hkdf_hmac_sha256();
  ccrng();
  v24 = ccspake_prover_initialize();
  if (v24)
  {
    if (!a3)
    {
      goto LABEL_25;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_prover_initialize failed: %d", v25, v26, v27, v28, v29, v24);
    goto LABEL_23;
  }

  v30 = ccspake_sizeof_point();
  v31 = ccspake_kex_generate();
  if (!v31)
  {
    v37 = objc_alloc_init(CUSPAKEM1);
    v38 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0) length:v30];
    [(CUSPAKEM1 *)v37 setSharePData:v38];

    goto LABEL_10;
  }

  if (a3)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_kex_generate failed: %d", v32, v33, v34, v35, v36, v31);
    goto LABEL_23;
  }

LABEL_25:
  v37 = 0;
LABEL_10:

  return v37;
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
  v3.super_class = CUSPAKEProver;
  [(CUSPAKEProver *)&v3 dealloc];
}

- (CUSPAKEProver)initWithPasswordString:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CUSPAKEProver;
  v5 = [(CUSPAKEProver *)&v11 init];
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

- (CUSPAKEProver)initWithPasswordPtr:(const void *)a3 passwordLength:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = CUSPAKEProver;
  v6 = [(CUSPAKEProver *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:a3 length:a4];
    passwordData = v6->_passwordData;
    v6->_passwordData = v7;

    v9 = v6;
  }

  return v6;
}

- (CUSPAKEProver)initWithPasswordCString:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = CUSPAKEProver;
  v4 = [(CUSPAKEProver *)&v9 init];
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