@interface SGCNContactIdentifierCollection
- (BOOL)_optimizeAndAddCNContactIdentifier:(id)a3;
- (SGCNContactIdentifierCollection)init;
- (id)proxyArray;
- (void)addCNContactIdentifier:(id)a3;
@end

@implementation SGCNContactIdentifierCollection

- (id)proxyArray
{
  v3 = self->_optimizedBuffer;
  v4 = [(NSMutableData *)v3 length];
  v5 = MEMORY[0x277CBEA60];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SGCNContactIdentifierCollection_proxyArray__block_invoke;
  v11[3] = &unk_27894EC10;
  v12 = v3;
  v13 = v4 >> 4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SGCNContactIdentifierCollection_proxyArray__block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_Q8__0l;
  v10[4] = v4 >> 4;
  v6 = v3;
  v7 = [v5 _pas_proxyArrayUsingObjectAtIndexBlock:v11 andCountBlock:v10];
  v8 = [v7 _pas_proxyArrayByAppendingArray:self->_unoptimizedIdentifiers];

  return v8;
}

id __45__SGCNContactIdentifierCollection_proxyArray__block_invoke(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"%tu out of range (count %tu)", a2, v4}];
  }

  memset(out, 0, 45);
  uuid_unparse_upper(([*(a1 + 32) bytes] + 16 * a2), out);
  qmemcpy(&out[36], ":ABPerson", 9);
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:out length:45 encoding:1];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_optimizeAndAddCNContactIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] == 45)
  {
    *in = 0u;
    memset(v13, 0, 30);
    if ([v4 getCString:in maxLength:46 encoding:1])
    {
      if (*&v13[5] == 0x6F7372655042413ALL && LOBYTE(v13[7]) == 110)
      {
        v9 = 0;
        while (in[v9] - 97 >= 0x1A)
        {
          if (++v9 == 36)
          {
            LOBYTE(v13[5]) = 0;
            v11[0] = 0;
            v11[1] = 0;
            v10 = uuid_parse(in, v11);
            v6 = v10 == 0;
            if (!v10)
            {
              [(NSMutableData *)self->_optimizedBuffer appendBytes:v11 length:16];
            }

            goto LABEL_8;
          }
        }
      }
    }
  }

  v6 = 0;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)addCNContactIdentifier:(id)a3
{
  v4 = a3;
  if (![(SGCNContactIdentifierCollection *)self _optimizeAndAddCNContactIdentifier:?])
  {
    [(NSMutableArray *)self->_unoptimizedIdentifiers addObject:v4];
  }
}

- (SGCNContactIdentifierCollection)init
{
  v8.receiver = self;
  v8.super_class = SGCNContactIdentifierCollection;
  v2 = [(SGCNContactIdentifierCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    optimizedBuffer = v2->_optimizedBuffer;
    v2->_optimizedBuffer = v3;

    v5 = objc_opt_new();
    unoptimizedIdentifiers = v2->_unoptimizedIdentifiers;
    v2->_unoptimizedIdentifiers = v5;
  }

  return v2;
}

@end