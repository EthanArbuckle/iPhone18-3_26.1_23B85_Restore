@interface MSCMSAttribute
+ (id)decodeAttribute:(Attribute *)attribute error:(id *)error;
- (Attribute)generateAttributeStruct;
- (MSCMSAttribute)initWithAttribute:(id)attribute error:(id *)error;
- (MSCMSAttribute)initWithAttributeStruct:(Attribute *)struct error:(id *)error;
- (MSCMSAttribute)initWithAttributeType:(id)type values:(id)values;
- (MSCMSAttribute)initWithDER:(id)r;
- (void)dealloc;
@end

@implementation MSCMSAttribute

- (Attribute)generateAttributeStruct
{
  if (self->_encodedAttribute)
  {
    free_Attribute();
    free(self->_encodedAttribute);
  }

  self->_encodedAttribute = malloc_type_malloc(0x20uLL, 0x10300406495394CuLL);
  v7[5] = [(MSOID *)self->_attributeType Asn1OID];
  v7[6] = v3;
  encodedAttribute = self->_encodedAttribute;
  der_copy_oid();
  self->_encodedAttribute->var1.var0 = [(NSArray *)self->_attributeValues count];
  self->_encodedAttribute->var1.var1 = malloc_type_malloc(16 * [(NSArray *)self->_attributeValues count], 0x108004057E67DB5uLL);
  attributeValues = self->_attributeValues;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__MSCMSAttribute_generateAttributeStruct__block_invoke;
  v7[3] = &unk_2798BE3F0;
  v7[4] = self;
  [(NSArray *)attributeValues enumerateObjectsUsingBlock:v7];
  return self->_encodedAttribute;
}

uint64_t __41__MSCMSAttribute_generateAttributeStruct__block_invoke(uint64_t a1, id a2, uint64_t a3)
{
  v6 = a2;
  v7 = a2;
  v10[1] = [v7 bytes];
  v8 = [v7 length];

  v10[0] = v8;
  return MEMORY[0x259C98440](v10, *(*(*(a1 + 32) + 32) + 24) + 16 * a3);
}

- (void)dealloc
{
  encodedAttribute = self->_encodedAttribute;
  if (encodedAttribute)
  {
    free_Attribute();
    encodedAttribute = self->_encodedAttribute;
  }

  free(encodedAttribute);
  self->_encodedAttribute = 0;
  v4.receiver = self;
  v4.super_class = MSCMSAttribute;
  [(MSCMSAttribute *)&v4 dealloc];
}

- (MSCMSAttribute)initWithAttributeStruct:(Attribute *)struct error:(id *)error
{
  v19.receiver = self;
  v19.super_class = MSCMSAttribute;
  v6 = [(MSCMSAttribute *)&v19 init];
  if (!v6)
  {
LABEL_13:
    v9 = v6;
    goto LABEL_17;
  }

  v7 = malloc_type_malloc(0x20uLL, 0x10300406495394CuLL);
  v6->_encodedAttribute = v7;
  if (v7)
  {
    v8 = copy_Attribute();
    if (v8)
    {
      if (error)
      {
        *error = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v8 underlyingError:*error description:@"unable to copy Attribute"];
      }

      goto LABEL_16;
    }

    v10 = [MSOID OIDWithAsn1OID:struct error:error];
    attributeType = v6->_attributeType;
    v6->_attributeType = v10;

    if (!v6->_attributeType)
    {
      encodedAttribute = v6->_encodedAttribute;
      free_Attribute();
LABEL_16:
      free(v6->_encodedAttribute);
      v9 = 0;
      v6->_encodedAttribute = 0;
      goto LABEL_17;
    }

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:struct->var1.var0];
    if (struct->var1.var0)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:struct->var1.var1[v13].var1 length:struct->var1.var1[v13].var0];
        [(NSArray *)v12 addObject:v15];

        ++v14;
        ++v13;
      }

      while (v14 < struct->var1.var0);
    }

    attributeValues = v6->_attributeValues;
    v6->_attributeValues = v12;

    goto LABEL_13;
  }

  if (error)
  {
    [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-108 underlyingError:*error description:@"unable to allocate Attribute"];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (MSCMSAttribute)initWithDER:(id)r
{
  rCopy = r;
  v6 = malloc_type_malloc(0x20uLL, 0x10300406495394CuLL);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  [rCopy bytes];
  [rCopy length];
  if (decode_Attribute())
  {
    free(v7);
LABEL_4:
    selfCopy = 0;
    goto LABEL_8;
  }

  v9 = [(MSCMSAttribute *)self initWithAttributeStruct:v7 error:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributeDERData, r);
    free_Attribute();
    free(v7);
  }

  self = v10;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (MSCMSAttribute)initWithAttributeType:(id)type values:(id)values
{
  typeCopy = type;
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = MSCMSAttribute;
  v9 = [(MSCMSAttribute *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributeType, type);
    objc_storeStrong(&v10->_attributeValues, values);
  }

  return v10;
}

- (MSCMSAttribute)initWithAttribute:(id)attribute error:(id *)error
{
  attributeCopy = attribute;

  return attributeCopy;
}

+ (id)decodeAttribute:(Attribute *)attribute error:(id *)error
{
  v4 = [[self alloc] initWithAttributeStruct:attribute error:error];

  return v4;
}

@end