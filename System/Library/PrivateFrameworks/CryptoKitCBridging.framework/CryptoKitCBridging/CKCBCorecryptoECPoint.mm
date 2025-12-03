@interface CKCBCorecryptoECPoint
- (BOOL)isEqual:(id)equal;
- (CKCBCorecryptoECPoint)initWithGeneratorForCP:(ccec_cp *)p;
- (CKCBCorecryptoECPoint)initWithPublicKey:(ccec_pub_ctx *)key;
- (id)add:(id)add corecryptoError:(int *)error;
- (id)initFromPublicKeyBytes:(id)bytes inGroup:(ccec_cp *)group compressed:(BOOL)compressed corecryptoError:(int *)error;
- (id)initPoint:(ccec_affine_point *)point onGroup:(ccec_cp *)group;
- (id)multiply:(id)multiply corecryptoError:(int *)error;
- (id)serializedPublicKey:(BOOL)key;
- (id)sub:(id)sub corecryptoError:(int *)error;
- (void)dealloc;
@end

@implementation CKCBCorecryptoECPoint

- (id)initPoint:(ccec_affine_point *)point onGroup:(ccec_cp *)group
{
  v7.receiver = self;
  v7.super_class = CKCBCorecryptoECPoint;
  result = [(CKCBCorecryptoECPoint *)&v7 init];
  if (result)
  {
    *(result + 1) = group;
    *(result + 2) = point;
  }

  return result;
}

- (id)initFromPublicKeyBytes:(id)bytes inGroup:(ccec_cp *)group compressed:(BOOL)compressed corecryptoError:(int *)error
{
  compressedCopy = compressed;
  v24[1] = *MEMORY[0x277D85DE8];
  bytesCopy = bytes;
  v11 = (24 * group->var0 + 31) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](bytesCopy, v12, v13);
  v16 = v24 - v15;
  [v14 length];
  [bytesCopy bytes];
  if (compressedCopy)
  {
    v17 = ccec_compressed_x962_import_pub();
  }

  else
  {
    v17 = ccec_raw_import_pub();
  }

  *error = v17;
  if (v17)
  {
    var0 = self->_group->var0;
    cc_clear();
    selfCopy = 0;
  }

  else
  {
    v20 = [(CKCBCorecryptoECPoint *)self initWithPublicKey:v16];
    v21 = v20->_group->var0;
    cc_clear();
    self = v20;
    selfCopy = self;
  }

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (CKCBCorecryptoECPoint)initWithGeneratorForCP:(ccec_cp *)p
{
  v5 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:?];
  v6 = malloc_type_malloc(v5, 0xF1E2E41FuLL);
  v7 = p + 16 * p->var0 + 8 * p->var0;
  bzero(v6, v5);
  memcpy(v6, v7 + 32, 16 * p->var0);

  return [(CKCBCorecryptoECPoint *)self initPoint:v6 onGroup:p];
}

- (CKCBCorecryptoECPoint)initWithPublicKey:(ccec_pub_ctx *)key
{
  v4 = &key->var1[1];
  var0 = key->var0;
  v6 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:key->var0];
  v7 = malloc_type_malloc(v6, 0x6A29DF8AuLL);
  memcpy(v7, v4, v6);
  v8 = var0->var0;
  cc_clear();

  return [(CKCBCorecryptoECPoint *)self initPoint:v7 onGroup:var0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group == [equalCopy group])
  {
    v7 = *[(CKCBCorecryptoECPoint *)self group];
    [(CKCBCorecryptoECPoint *)self point];
    [equalCopy point];
    v6 = ccn_cmp() == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)serializedPublicKey:(BOOL)key
{
  v21[1] = *MEMORY[0x277D85DE8];
  group = self->_group;
  v6 = cczp_bitlen();
  v9 = (v6 + 7) >> 3;
  if (key)
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

- (id)add:(id)add corecryptoError:(int *)error
{
  v30 = *MEMORY[0x277D85DE8];
  addCopy = add;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group != [addCopy group] || (v8 = ccrng(), *error))
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
  *error = v22;
  if (v22 || ([addCopy point], v23 = ccec_projectify(), (*error = v23) != 0))
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

  *error = ccec_full_add();
  v26 = group->var0;
  cc_clear();
  if (*error)
  {
    v27 = group->var0;
    goto LABEL_10;
  }

  v28 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *error = ccec_affinify();
  v29 = group->var0;
  cc_clear();
  if (*error)
  {
    free(v28);
    goto LABEL_11;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v28 onGroup:group];
LABEL_4:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)sub:(id)sub corecryptoError:(int *)error
{
  v30 = *MEMORY[0x277D85DE8];
  subCopy = sub;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group != [subCopy group] || (v8 = ccrng(), *error))
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
  *error = v22;
  if (v22 || ([subCopy point], v23 = ccec_projectify(), (*error = v23) != 0))
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

  *error = ccec_full_sub();
  v26 = group->var0;
  cc_clear();
  if (*error)
  {
    v27 = group->var0;
    goto LABEL_10;
  }

  v28 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *error = ccec_affinify();
  v29 = group->var0;
  cc_clear();
  if (*error)
  {
    free(v28);
    goto LABEL_11;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v28 onGroup:group];
LABEL_4:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)multiply:(id)multiply corecryptoError:(int *)error
{
  v29 = *MEMORY[0x277D85DE8];
  multiplyCopy = multiply;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group != [multiplyCopy group] || (v8 = ccrng(), *error))
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
  *error = v22;
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

  [multiplyCopy corecryptoScalar];
  *error = ccec_mult_blinded();
  v25 = group->var0;
  cc_clear();
  if (*error)
  {
    v26 = group->var0;
    goto LABEL_11;
  }

  v27 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *error = ccec_affinify();
  v28 = group->var0;
  cc_clear();
  if (*error)
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