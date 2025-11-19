@interface CKCBCorecryptoECPoint
- (BOOL)isEqual:(id)a3;
- (CKCBCorecryptoECPoint)initWithGeneratorForCP:(ccec_cp *)a3;
- (CKCBCorecryptoECPoint)initWithPublicKey:(ccec_pub_ctx *)a3;
- (id)add:(id)a3 corecryptoError:(int *)a4;
- (id)initFromPublicKeyBytes:(id)a3 inGroup:(ccec_cp *)a4 compressed:(BOOL)a5 corecryptoError:(int *)a6;
- (id)initPoint:(ccec_affine_point *)a3 onGroup:(ccec_cp *)a4;
- (id)multiply:(id)a3 corecryptoError:(int *)a4;
- (id)serializedPublicKey:(BOOL)a3;
- (id)sub:(id)a3 corecryptoError:(int *)a4;
- (void)dealloc;
@end

@implementation CKCBCorecryptoECPoint

- (id)initPoint:(ccec_affine_point *)a3 onGroup:(ccec_cp *)a4
{
  v7.receiver = self;
  v7.super_class = CKCBCorecryptoECPoint;
  result = [(CKCBCorecryptoECPoint *)&v7 init];
  if (result)
  {
    *(result + 1) = a4;
    *(result + 2) = a3;
  }

  return result;
}

- (id)initFromPublicKeyBytes:(id)a3 inGroup:(ccec_cp *)a4 compressed:(BOOL)a5 corecryptoError:(int *)a6
{
  v7 = a5;
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = (24 * a4->var0 + 31) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v10, v12, v13);
  v16 = v24 - v15;
  [v14 length];
  [v10 bytes];
  if (v7)
  {
    v17 = ccec_compressed_x962_import_pub();
  }

  else
  {
    v17 = ccec_raw_import_pub();
  }

  *a6 = v17;
  if (v17)
  {
    var0 = self->_group->var0;
    cc_clear();
    v19 = 0;
  }

  else
  {
    v20 = [(CKCBCorecryptoECPoint *)self initWithPublicKey:v16];
    v21 = v20->_group->var0;
    cc_clear();
    self = v20;
    v19 = self;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (CKCBCorecryptoECPoint)initWithGeneratorForCP:(ccec_cp *)a3
{
  v5 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:?];
  v6 = malloc_type_malloc(v5, 0xF1E2E41FuLL);
  v7 = a3 + 16 * a3->var0 + 8 * a3->var0;
  bzero(v6, v5);
  memcpy(v6, v7 + 32, 16 * a3->var0);

  return [(CKCBCorecryptoECPoint *)self initPoint:v6 onGroup:a3];
}

- (CKCBCorecryptoECPoint)initWithPublicKey:(ccec_pub_ctx *)a3
{
  v4 = &a3->var1[1];
  var0 = a3->var0;
  v6 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:a3->var0];
  v7 = malloc_type_malloc(v6, 0x6A29DF8AuLL);
  memcpy(v7, v4, v6);
  v8 = var0->var0;
  cc_clear();

  return [(CKCBCorecryptoECPoint *)self initPoint:v7 onGroup:var0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(CKCBCorecryptoECPoint *)self group];
  if (v5 == [v4 group])
  {
    v7 = *[(CKCBCorecryptoECPoint *)self group];
    [(CKCBCorecryptoECPoint *)self point];
    [v4 point];
    v6 = ccn_cmp() == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)serializedPublicKey:(BOOL)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  group = self->_group;
  v6 = cczp_bitlen();
  v9 = (v6 + 7) >> 3;
  if (a3)
  {
    v10 = (24 * group->var0 + 31) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v6, v7, v8);
    *(v21 - v11) = group;
    memcpy(&v21[2] - v11, self->_point, 2 * v9);
    v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:ccec_compressed_x962_export_pub_size()];
    [v12 mutableBytes];
    v13 = ccec_compressed_x962_export_pub();
    var0 = group->var0;
    cc_clear();
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * v9];
    v16 = group->var0;
    point = self->_point;
    [v15 mutableBytes];
    ccn_write_uint_padded_ct();
    v18 = &self->_point[v16];
    [v15 mutableBytes];
    ccn_write_uint_padded_ct();
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)add:(id)a3 corecryptoError:(int *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CKCBCorecryptoECPoint *)self group];
  if (v7 != [v6 group] || (v8 = ccrng(), *a4))
  {
    v11 = 0;
    goto LABEL_4;
  }

  group = self->_group;
  v15 = (24 * group->var0 + 31) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v8, v9, v10);
  v19 = (v18 + group->var0 * v17) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v20, v21);
  [(CKCBCorecryptoECPoint *)self point];
  v22 = ccec_projectify();
  *a4 = v22;
  if (v22 || ([v6 point], v23 = ccec_projectify(), (*a4 = v23) != 0))
  {
    var0 = group->var0;
    cc_clear();
    v25 = group->var0;
LABEL_10:
    cc_clear();
LABEL_11:
    v11 = 0;
    goto LABEL_4;
  }

  *a4 = ccec_full_add();
  v26 = group->var0;
  cc_clear();
  if (*a4)
  {
    v27 = group->var0;
    goto LABEL_10;
  }

  v28 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *a4 = ccec_affinify();
  v29 = group->var0;
  cc_clear();
  if (*a4)
  {
    free(v28);
    goto LABEL_11;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v28 onGroup:group];
LABEL_4:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)sub:(id)a3 corecryptoError:(int *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CKCBCorecryptoECPoint *)self group];
  if (v7 != [v6 group] || (v8 = ccrng(), *a4))
  {
    v11 = 0;
    goto LABEL_4;
  }

  group = self->_group;
  v15 = (24 * group->var0 + 31) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v8, v9, v10);
  v19 = (v18 + group->var0 * v17) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v20, v21);
  [(CKCBCorecryptoECPoint *)self point];
  v22 = ccec_projectify();
  *a4 = v22;
  if (v22 || ([v6 point], v23 = ccec_projectify(), (*a4 = v23) != 0))
  {
    var0 = group->var0;
    cc_clear();
    v25 = group->var0;
LABEL_10:
    cc_clear();
LABEL_11:
    v11 = 0;
    goto LABEL_4;
  }

  *a4 = ccec_full_sub();
  v26 = group->var0;
  cc_clear();
  if (*a4)
  {
    v27 = group->var0;
    goto LABEL_10;
  }

  v28 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *a4 = ccec_affinify();
  v29 = group->var0;
  cc_clear();
  if (*a4)
  {
    free(v28);
    goto LABEL_11;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v28 onGroup:group];
LABEL_4:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)multiply:(id)a3 corecryptoError:(int *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CKCBCorecryptoECPoint *)self group];
  if (v7 != [v6 group] || (v8 = ccrng(), *a4))
  {
    v11 = 0;
    goto LABEL_4;
  }

  group = self->_group;
  v15 = (24 * group->var0 + 31) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v8, v9, v10);
  v19 = (v18 + group->var0 * v17) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v20, v21);
  [(CKCBCorecryptoECPoint *)self point];
  v22 = ccec_projectify();
  *a4 = v22;
  if (v22)
  {
    var0 = group->var0;
    cc_clear();
    v24 = group->var0;
LABEL_11:
    cc_clear();
LABEL_12:
    v11 = 0;
    goto LABEL_4;
  }

  [v6 corecryptoScalar];
  *a4 = ccec_mult_blinded();
  v25 = group->var0;
  cc_clear();
  if (*a4)
  {
    v26 = group->var0;
    goto LABEL_11;
  }

  v27 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *a4 = ccec_affinify();
  v28 = group->var0;
  cc_clear();
  if (*a4)
  {
    free(v27);
    goto LABEL_12;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v27 onGroup:group];
LABEL_4:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)dealloc
{
  if (self->_point)
  {
    v3 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:[(CKCBCorecryptoECPoint *)self group]];
    memset_s(self->_point, v3, 0, v3);
    free(self->_point);
  }

  v4.receiver = self;
  v4.super_class = CKCBCorecryptoECPoint;
  [(CKCBCorecryptoECPoint *)&v4 dealloc];
}

@end