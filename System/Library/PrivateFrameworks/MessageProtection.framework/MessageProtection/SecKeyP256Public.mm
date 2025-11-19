@interface SecKeyP256Public
- (BOOL)verifySignature:(id)a3 data:(id)a4;
- (SecKeyP256Public)initWithData:(id)a3 error:(id *)a4;
- (SecKeyP256Public)initWithSecKeyRef:(__SecKey *)a3;
- (id)dataRepresentation;
- (void)dataRepresentation;
- (void)dealloc;
@end

@implementation SecKeyP256Public

- (void)dealloc
{
  publicKeyRef = self->_publicKeyRef;
  if (publicKeyRef)
  {
    CFRelease(publicKeyRef);
  }

  v4.receiver = self;
  v4.super_class = SecKeyP256Public;
  [(SecKeyP256Public *)&v4 dealloc];
}

- (SecKeyP256Public)initWithSecKeyRef:(__SecKey *)a3
{
  v7.receiver = self;
  v7.super_class = SecKeyP256Public;
  v4 = [(SecKeyP256Public *)&v7 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    v4->_publicKeyRef = a3;
LABEL_4:
    a3 = v4;
  }

  return a3;
}

- (id)dataRepresentation
{
  error[1] = *MEMORY[0x277D85DE8];
  serializedKey = self->_serializedKey;
  if (serializedKey)
  {
    v3 = serializedKey;
  }

  else
  {
    error[0] = 0;
    v5 = SecKeyCopyExternalRepresentation([(SecKeyP256Public *)self publicKeyRef], error);
    if (v5)
    {
      v6 = MEMORY[0x2318925A0]();
      v7 = (24 * *v6 + 31) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v6);
      v9 = (error - v8);
      [(__CFData *)v5 length];
      [(__CFData *)v5 bytes];
      if (ccec_x963_import_pub())
      {
        v10 = MessageProtectionLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [SecKeyP256Public dataRepresentation];
        }

        v3 = 0;
      }

      else
      {
        v18 = *v9;
        v19 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(cczp_bitlen() + 7) >> 3];
        [(NSData *)v19 bytes];
        ccec_compact_export_pub();
        v20 = self->_serializedKey;
        self->_serializedKey = v19;
        v10 = v19;

        v3 = self->_serializedKey;
      }
    }

    else
    {
      v11 = MessageProtectionLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SecKeyP256Public *)error dataRepresentation:v11];
      }

      if (error[0])
      {
        CFRelease(error[0]);
      }

      v3 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (SecKeyP256Public)initWithData:(id)a3 error:(id *)a4
{
  v26[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x2318925A0]();
  v8 = (24 * *v7 + 31) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v10 = (&v25[-1] - v9);
  [v6 length];
  [v6 bytes];
  if (ccec_compact_import_pub())
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v6 description];
    v13 = [v11 stringWithFormat:@"Incorrect data for public key: %@", v12];
    MPLogAndAssignError(7, a4, v13);
  }

  else
  {
    v14 = *v10;
    v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:((cczp_bitlen() + 7) >> 2) | 1];
    [v12 bytes];
    ccec_export_pub();
    v15 = *MEMORY[0x277CDC040];
    v16 = *MEMORY[0x277CDBFE0];
    v25[0] = *MEMORY[0x277CDC028];
    v25[1] = v16;
    v17 = *MEMORY[0x277CDC000];
    v26[0] = v15;
    v26[1] = v17;
    v18 = *MEMORY[0x277CDBFD0];
    v25[2] = *MEMORY[0x277CDC018];
    v25[3] = v18;
    v26[2] = &unk_283F13BB0;
    v26[3] = MEMORY[0x277CBEC28];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
    error = 0;
    v19 = SecKeyCreateWithData(v12, v13, &error);
    v20 = [(SecKeyP256Public *)self init];
    self = v20;
    if (v19)
    {
      v20->_publicKeyRef = v19;
      a4 = v20;
      goto LABEL_6;
    }

    if (!a4)
    {
      goto LABEL_6;
    }

    *a4 = error;
    v23 = MessageProtectionLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(SecKeyP256Public *)a4 initWithData:v6 error:v23];
    }
  }

  a4 = 0;
LABEL_6:

  v21 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)verifySignature:(id)a3 data:(id)a4
{
  error = 0;
  v6 = MEMORY[0x277CBEB28];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dataWithLength:32];
  v10 = [v7 bytes];
  v11 = [v7 length];

  CC_SHA256(v10, v11, [v9 bytes]);
  v12 = [(SecKeyP256Public *)self publicKeyRef];
  v13 = SecKeyVerifySignature(v12, *MEMORY[0x277CDC318], v9, v8, &error);

  if (error)
  {
    v14 = CFErrorCopyDescription(error);
    v15 = MessageProtectionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SecKeyP256Public verifySignature:data:];
    }

    CFRelease(error);
    v16 = 0;
  }

  else
  {
    v16 = v13 != 0;
  }

  return v16;
}

- (void)dataRepresentation
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (*a1)
  {
    v9 = CFCopyDescription(*a1);
  }

  else
  {
    v9 = @"No error set";
  }

  OUTLINED_FUNCTION_1_1(&dword_22B404000, a2, a3, "Failed to get the data representation of the SecKeyP256 public key: %@", a5, a6, a7, a8, 2u);
  if (v8)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithData:(os_log_t)log error:.cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22B404000, log, OS_LOG_TYPE_ERROR, "Failed to initialize public key from data with error: %@ for data: %@.", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)verifySignature:data:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end