@interface MSCMSMutableAttributeArray
+ (id)createAttributeArrayFromAttributeSetRaw:(heim_base_data *)a3 error:(id *)a4;
- (MSCMSMutableAttributeArray)initWithCapacity:(unint64_t)a3;
- (id)calculateAttributesWithDigest:(id)a3 error:(id *)a4;
- (id)encodeAttributesWithError:(id *)a3;
- (id)encodeImplicitAttributesWithError:(id *)a3;
- (id)getAttributesWithType:(id)a3;
- (void)addObject:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)removeAttributes:(id)a3;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)reset;
@end

@implementation MSCMSMutableAttributeArray

- (void)reset
{
  encodedAttributeSet = self->_encodedAttributeSet;
  self->_encodedAttributeSet = 0;

  v4 = [(MSCMSMutableAttributeArray *)self encodeAttributesWithError:0];
  v5 = self->_encodedAttributeSet;
  self->_encodedAttributeSet = v4;

  MEMORY[0x2821F96F8]();
}

+ (id)createAttributeArrayFromAttributeSetRaw:(heim_base_data *)a3 error:(id *)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = [[MSCMSMutableAttributeArray alloc] initWithCapacity:0];
  v6 = [MEMORY[0x277CBEB28] data];
  v31 = 0;
  v32 = 0;
  var0 = a3->var0;
  if (a3->var0)
  {
    v8 = 0;
    var1 = a3->var1;
    while (1)
    {
      memset(v30, 0, sizeof(v30));
      v29 = 0;
      v10 = decode_Attribute();
      if (v10)
      {
        break;
      }

      v28 = v8;
      v11 = [MSCMSAttribute decodeAttribute:v30 error:&v28];
      v12 = v28;

      if (v11)
      {
        [(MSCMSMutableAttributeArray *)v5 addObject:v11];
      }

      var0 -= v29;
      var1 += v29;
      free_Attribute();

      v8 = v12;
      if (!var0)
      {
        goto LABEL_9;
      }
    }

    v12 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v10 underlyingError:v8 description:@"unable to decode CMSAttributes"];

    goto LABEL_13;
  }

  v12 = 0;
LABEL_9:
  v32 = a3;
  LODWORD(v31) = 1;
  *&v30[0] = 0;
  v13 = length_CMSOrderedAttributes(&v31);
  v14 = [MEMORY[0x277CBEB28] dataWithLength:v13];

  if (!v14)
  {
    v17 = 12;
    goto LABEL_15;
  }

  v6 = v14;
  v15 = encode_CMSOrderedAttributes([v14 mutableBytes] + v13 - 1, v13, &v31, v30);
  if (v15)
  {
    v16 = v15;

    v17 = v16;
LABEL_15:
    v18 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Failed encoding type CMSOrderedAttributes";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v20 = [v18 errorWithDomain:@"com.apple.HeimASN1" code:v17 userInfo:v19];

    v6 = 0;
    v12 = v20;
    goto LABEL_17;
  }

  if (v13 != *&v30[0])
  {
    v24 = asn1_abort();
    return [(MSCMSMutableAttributeArray *)v24 initWithCapacity:v25, v26];
  }

LABEL_17:
  if ([v6 length] < a3->var0)
  {
LABEL_13:

    v5 = 0;
    goto LABEL_19;
  }

  [(MSCMSMutableAttributeArray *)v5 setEncodedAttributeSet:v6];
LABEL_19:
  if (a4 && v12)
  {
    v21 = v12;
    *a4 = v12;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

- (MSCMSMutableAttributeArray)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = MSCMSMutableAttributeArray;
  v4 = [(MSCMSMutableAttributeArray *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    attributes = v4->_attributes;
    v4->_attributes = v5;
  }

  return v4;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  if (a3)
  {
    [(NSMutableArray *)self->_attributes insertObject:a3 atIndex:a4];

    [(MSCMSMutableAttributeArray *)self reset];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  [(NSMutableArray *)self->_attributes removeObjectAtIndex:a3];

  [(MSCMSMutableAttributeArray *)self reset];
}

- (void)addObject:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_attributes addObject:?];

    [(MSCMSMutableAttributeArray *)self reset];
  }
}

- (void)removeLastObject
{
  [(NSMutableArray *)self->_attributes removeLastObject];

  [(MSCMSMutableAttributeArray *)self reset];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  if (a4)
  {
    [(NSMutableArray *)self->_attributes replaceObjectAtIndex:a3 withObject:?];

    [(MSCMSMutableAttributeArray *)self reset];
  }
}

- (void)removeAttributes:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __47__MSCMSMutableAttributeArray_removeAttributes___block_invoke;
  v9 = &unk_2798BE3A0;
  v5 = v4;
  v10 = v5;
  v11 = &v12;
  [(MSCMSMutableAttributeArray *)self enumerateObjectsUsingBlock:&v6];
  [(MSCMSMutableAttributeArray *)self removeObjectsAtIndexes:v13[5], v6, v7, v8, v9];

  _Block_object_dispose(&v12, 8);
}

void __47__MSCMSMutableAttributeArray_removeAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 encodeAttributeWithError:0];
  v5 = [v7 attributeType];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addIndex:a3];
  }
}

- (id)encodeAttributesWithError:(id *)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  encodedAttributeSet = self->_encodedAttributeSet;
  if (!encodedAttributeSet)
  {
    if (![(MSCMSMutableAttributeArray *)self count])
    {
      v4 = 0;
      goto LABEL_28;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__1;
    v38 = __Block_byref_object_dispose__1;
    if (a3)
    {
      v7 = *a3;
      if (*a3)
      {
        v7 = [v7 copy];
      }
    }

    else
    {
      v7 = 0;
    }

    v39 = v7;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v8 = [MEMORY[0x277CBEB28] data];
    v9 = malloc_type_malloc(32 * [(MSCMSMutableAttributeArray *)self count], 0x10300406495394CuLL);
    if (!v9)
    {
      if (a3)
      {
        v16 = [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-67672 underlyingError:v35[5] description:@"Unable to allocate attribute array"];
        v17 = v35[5];
        v35[5] = v16;

        v18 = v16;
        v4 = 0;
        *a3 = v16;
      }

      else
      {
        v4 = 0;
      }

LABEL_27:

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);

      goto LABEL_28;
    }

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[MSCMSMutableAttributeArray count](self, "count")}];
    genericAttributes = self->_genericAttributes;
    self->_genericAttributes = v10;

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __56__MSCMSMutableAttributeArray_encodeAttributesWithError___block_invoke;
    v29[3] = &unk_2798BE3C8;
    v29[4] = self;
    v29[5] = &v34;
    v29[6] = &v30;
    v29[7] = v9;
    [(MSCMSMutableAttributeArray *)self enumerateObjectsUsingBlock:v29];
    if (v31[3])
    {
LABEL_20:
      free(v9);
      if (a3)
      {
        v23 = v35[5];
        if (v23)
        {
          *a3 = v23;
        }
      }

      if ([v8 length])
      {
        v24 = v8;
      }

      else
      {
        v24 = 0;
      }

      v4 = v24;
      goto LABEL_27;
    }

    v28[0] = [(MSCMSMutableAttributeArray *)self count];
    v28[1] = v9;
    v27 = 0;
    v12 = length_CMSAttributes(v28);
    v13 = [MEMORY[0x277CBEB28] dataWithLength:v12];

    if (v13)
    {
      v14 = v13;
      LODWORD(v15) = encode_CMSAttributes([v13 mutableBytes] + v12 - 1, v12, v28, &v27);
      if (!v15)
      {
        if (v12 != v27)
        {
          result = asn1_abort();
          __break(1u);
          return result;
        }

        goto LABEL_19;
      }

      v15 = v15;
    }

    else
    {
      v15 = 12;
    }

    v19 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Failed encoding type CMSAttributes";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:{1, v27}];
    v21 = [v19 errorWithDomain:@"com.apple.HeimASN1" code:v15 userInfo:v20];
    v22 = v35[5];
    v35[5] = v21;

    v13 = 0;
LABEL_19:
    [v13 length];
    v8 = v13;
    goto LABEL_20;
  }

  v4 = encodedAttributeSet;
LABEL_28:
  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

void __56__MSCMSMutableAttributeArray_encodeAttributesWithError___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [a2 encodeAttributeWithError:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1[4] + 16) addObject:v8];
    v9 = (a1[7] + 32 * a3);
    v10 = [v8 generateAttributeStruct];
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)encodeImplicitAttributesWithError:(id *)a3
{
  v4 = [(MSCMSMutableAttributeArray *)self encodeAttributesWithError:?];
  v5 = v4;
  if (!v4)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = nsheim_decode_CMSOrderedAttributes(v4);
  if (v6)
  {
    v7 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v6 underlyingError:0 description:@"unable to decode CMSAttributes", 0];
    if (a3)
    {
      v7 = v7;
      *a3 = v7;
    }

    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:MEMORY[8] length:{MEMORY[0], 0}];
  free_CMSOrderedAttributes();
LABEL_8:

  return v8;
}

- (id)calculateAttributesWithDigest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4 && *a4)
  {
    v7 = [*a4 copy];
  }

  else
  {
    v7 = 0;
  }

  if (self->_encodedAttributeSet)
  {
    v8 = [v6 algorithm];
    v9 = [v8 ccdigest];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEB28] dataWithLength:*v9];
      [(NSData *)self->_encodedAttributeSet length];
      [(NSData *)self->_encodedAttributeSet bytes];
      [v10 mutableBytes];
      ccdigest();
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = MSErrorCryptoDomain[0];
      v12 = [v6 algorithm];
      v13 = [v12 OIDString];
      v14 = [MSError MSErrorWithDomain:v11 code:-4 underlyingError:v7 description:@"%@ is not a supported digest algorithm", v13];

      v10 = 0;
      v7 = v14;
      if (!a4)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    [MSCMSMutableAttributeArray calculateAttributesWithDigest:v7 error:&v17];
    v10 = 0;
    v7 = v17;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  if (v7)
  {
    v15 = v7;
    *a4 = v7;
  }

LABEL_12:

  return v10;
}

- (id)getAttributesWithType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = +[MSCMSMutableAttributeArray array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__MSCMSMutableAttributeArray_getAttributesWithType___block_invoke;
  v8[3] = &unk_2798BE3A0;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(MSCMSMutableAttributeArray *)self enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__MSCMSMutableAttributeArray_getAttributesWithType___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 attributeType];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

- (void)calculateAttributesWithDigest:(void *)a1 error:(uint64_t *)a2 .cold.1(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26276 underlyingError:a1 description:@"unable to encode signed attributes"];
}

@end