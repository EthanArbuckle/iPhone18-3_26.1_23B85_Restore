@interface CKCBCorecryptoECScalar
- (BOOL)isEqual:(id)a3;
- (CKCBCorecryptoECScalar)initWithData:(id)a3 inGroup:(ccec_cp *)a4 reduction:(BOOL)a5 corecryptoError:(int *)a6;
- (CKCBCorecryptoECScalar)initWithRandomScalarInGroup:(ccec_cp *)a3;
- (CKCBCorecryptoECScalar)initWithScalarPointer:(unint64_t *)a3 forGroup:(ccec_cp *)a4;
- (CKCBCorecryptoECScalar)initWithx963Representation:(id)a3 group:(ccec_cp *)a4;
- (id)add:(id)a3 corecryptoError:(int *)a4;
- (id)inverseModOrder;
- (id)mapToCurve_SSWU_RandomOracle;
- (id)multiply:(id)a3 corecryptoError:(int *)a4;
- (id)serializedBigEndianScalar;
- (id)sub:(id)a3 corecryptoError:(int *)a4;
- (id)x963Representation;
- (void)dealloc;
@end

@implementation CKCBCorecryptoECScalar

- (CKCBCorecryptoECScalar)initWithx963Representation:(id)a3 group:(ccec_cp *)a4
{
  v5 = self;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = (32 * a4->var0) | 0x10;
  MEMORY[0x28223BE20](self, a2, a3);
  v8 = (v15 - v7);
  v10 = v9;
  [v10 length];
  [v10 bytes];

  if (ccec_x963_import_priv())
  {
    v11 = 0;
  }

  else
  {
    v12 = malloc_type_malloc([(CKCBCorecryptoECScalar *)v5 scalarAllocationSizeForGroup:a4], 0xC3B76D40uLL);
    memcpy(v12, &v8[3 * **v8 + 2], [(CKCBCorecryptoECScalar *)v5 scalarAllocationSizeForGroup:a4]);
    v5 = [(CKCBCorecryptoECScalar *)v5 initWithScalarPointer:v12 forGroup:a4];
    v11 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (CKCBCorecryptoECScalar)initWithScalarPointer:(unint64_t *)a3 forGroup:(ccec_cp *)a4
{
  v7.receiver = self;
  v7.super_class = CKCBCorecryptoECScalar;
  result = [(CKCBCorecryptoECScalar *)&v7 init];
  if (result)
  {
    result->_group = a4;
    result->_corecryptoScalar = a3;
  }

  return result;
}

- (id)x963Representation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = (32 * self->_group->var0) | 0x10;
  v4 = (MEMORY[0x28223BE20])(self, a2);
  v6 = (&v18 - v5);
  v7 = [v4 serializedBigEndianScalar];
  [(CKCBCorecryptoECScalar *)self group];
  [v7 length];
  [v7 bytes];
  HIDWORD(v18) = ccec_raw_import_priv_only();
  if (HIDWORD(v18))
  {
    v8 = 0;
  }

  else
  {
    v9 = [[CKCBCorecryptoECPoint alloc] initWithGeneratorForCP:self->_group];
    v10 = [(CKCBCorecryptoECPoint *)v9 multiply:self corecryptoError:&v18 + 4];
    v11 = v10;
    if (HIDWORD(v18))
    {
      v8 = 0;
    }

    else
    {
      v12 = [v10 serializedPublicKey:0];
      group = self->_group;
      [v12 length];
      [v12 bytes];
      HIDWORD(v18) = ccec_raw_import_pub();
      if (HIDWORD(v18))
      {
        v8 = 0;
      }

      else
      {
        v14 = *v6;
        v15 = [MEMORY[0x277CBEB28] dataWithLength:3 * ((cczp_bitlen() + 7) >> 3) + 1];
        [v15 mutableBytes];
        HIDWORD(v18) = ccec_x963_export();
        if (HIDWORD(v18))
        {
          v8 = 0;
        }

        else
        {
          v8 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v15 length:{"bytes"), objc_msgSend(v15, "length")}];
          memset_s([v15 mutableBytes], objc_msgSend(v15, "length"), 0, objc_msgSend(v15, "length"));
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (CKCBCorecryptoECScalar)initWithRandomScalarInGroup:(ccec_cp *)a3
{
  v9.receiver = self;
  v9.super_class = CKCBCorecryptoECScalar;
  v4 = [(CKCBCorecryptoECScalar *)&v9 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4->_group = a3;
  ccrng();
  v6 = malloc_type_malloc([(CKCBCorecryptoECScalar *)v5 scalarAllocationSizeForGroup:a3], 0xC5B608F0uLL);
  if (!ccec_generate_scalar_fips_retry())
  {
    v5->_corecryptoScalar = v6;
LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  free(v6);
  v7 = 0;
LABEL_8:

  return v7;
}

- (CKCBCorecryptoECScalar)initWithData:(id)a3 inGroup:(ccec_cp *)a4 reduction:(BOOL)a5 corecryptoError:(int *)a6
{
  v7 = a5;
  v10 = a3;
  cczp_n();
  v11 = [(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:a4];
  v12 = malloc_type_malloc(2 * v11, 0x33CF7ACuLL);
  v13 = malloc_type_malloc(v11, 0x99A30F8EuLL);
  [v10 length];
  [v10 bytes];

  uint = ccn_read_uint();
  *a6 = uint;
  if (uint)
  {
    free(v12);
  }

  else
  {
    if (!v7)
    {
      v15 = &a4[1] + 40 * a4->var0;
    }

    *a6 = cczp_mod();
    free(v12);
    if (!*a6)
    {
      self = [(CKCBCorecryptoECScalar *)self initWithScalarPointer:v13 forGroup:a4];
      v16 = self;
      goto LABEL_7;
    }
  }

  free(v13);
  v16 = 0;
LABEL_7:

  return v16;
}

- (id)serializedBigEndianScalar
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:{-[CKCBCorecryptoECScalar scalarAllocationSizeForGroup:](self, "scalarAllocationSizeForGroup:", -[CKCBCorecryptoECScalar group](self, "group"))}];
  group = self->_group;
  corecryptoScalar = self->_corecryptoScalar;
  var0 = group->var0;
  [v3 length];
  [v3 mutableBytes];
  if ((ccn_write_uint_padded_ct() & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v3 length:{"bytes"), objc_msgSend(v3, "length")}];
  }

  memset_s([v3 mutableBytes], objc_msgSend(v3, "length"), 0, objc_msgSend(v3, "length"));

  return v7;
}

- (id)mapToCurve_SSWU_RandomOracle
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = (24 * self->_group->var0 + 31) & 0xFFFFFFFFFFFFFFF0;
  v4 = (MEMORY[0x28223BE20])(self, a2);
  v6 = v11 - v5;
  v7 = *(v4 + 8);
  if ((v7 == MEMORY[0x24C1BBEF0]() || v7 == MEMORY[0x24C1BBF00]() || v7 == ccec_cp_521()) && ([(CKCBCorecryptoECScalar *)self corecryptoScalar], !map_to_curve_sswu()))
  {
    v8 = [[CKCBCorecryptoECPoint alloc] initWithPublicKey:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)add:(id)a3 corecryptoError:(int *)a4
{
  v6 = self->_group + 40 * self->_group->var0;
  v7 = a3;
  v8 = malloc_type_malloc([(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]], 0xE16E4793uLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  [v7 corecryptoScalar];

  v9 = cczp_add();
  *a4 = v9;
  if (v9)
  {
    free(v8);
    v10 = 0;
  }

  else
  {
    v10 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v8 forGroup:self->_group];
  }

  return v10;
}

- (id)sub:(id)a3 corecryptoError:(int *)a4
{
  v6 = a3;
  v7 = [(CKCBCorecryptoECScalar *)self group];
  if (v7 != [v6 group])
  {
    goto LABEL_4;
  }

  var0 = self->_group->var0;
  v9 = malloc_type_malloc([(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]], 0x8DB8D423uLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  [v6 corecryptoScalar];
  v10 = cczp_sub();
  *a4 = v10;
  if (v10)
  {
    free(v9);
LABEL_4:
    v11 = 0;
    goto LABEL_5;
  }

  v11 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v9 forGroup:self->_group];
LABEL_5:

  return v11;
}

- (id)multiply:(id)a3 corecryptoError:(int *)a4
{
  v6 = a3;
  v7 = [(CKCBCorecryptoECScalar *)self group];
  if (v7 != [v6 group])
  {
    goto LABEL_4;
  }

  v8 = self->_group + 40 * self->_group->var0;
  v9 = cczp_n();
  v10 = malloc_type_malloc(8 * v9, 0x3FBFD56EuLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  [v6 corecryptoScalar];
  v11 = cczp_mul();
  *a4 = v11;
  if (v11)
  {
    free(v10);
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  v12 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v10 forGroup:self->_group];
LABEL_5:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(CKCBCorecryptoECScalar *)self group];
  if (v5 == [v4 group])
  {
    group = self->_group;
    corecryptoScalar = self->_corecryptoScalar;
    var0 = group->var0;
    [v4 corecryptoScalar];
    v6 = ccn_cmp() == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)inverseModOrder
{
  var0 = self->_group->var0;
  v4 = malloc_type_malloc([(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]], 0xA3772DBEuLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  if (cczp_inv())
  {
    free(v4);
    v5 = 0;
  }

  else
  {
    v5 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v4 forGroup:self->_group];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_corecryptoScalar)
  {
    v3 = [(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]];
    memset_s(self->_corecryptoScalar, v3, 0, v3);
    free(self->_corecryptoScalar);
  }

  v4.receiver = self;
  v4.super_class = CKCBCorecryptoECScalar;
  [(CKCBCorecryptoECScalar *)&v4 dealloc];
}

@end