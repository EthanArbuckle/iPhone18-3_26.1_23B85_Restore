@interface HMDStructuredDataFoundationReader
+ (uint64_t)tokenForValue:(uint64_t)value;
- (_HMDStructuredDataToken)nextTokenAfterToken:(const _HMDStructuredDataToken *)token;
- (void)_push;
- (void)failWithError:(id)error;
- (void)initWithInput:(void *)input;
@end

@implementation HMDStructuredDataFoundationReader

- (_HMDStructuredDataToken)nextTokenAfterToken:(const _HMDStructuredDataToken *)token
{
  if (token && token->type == 5)
  {
    nextObject = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:token->value];
    v5 = 1;
    if (!nextObject)
    {
      goto LABEL_4;
    }
  }

  else
  {
    nextObject = [(NSEnumerator *)self->_enumerator nextObject];
    v5 = 0;
    if (!nextObject)
    {
LABEL_4:
      if ([(NSMutableArray *)self->_stack count])
      {
        dictionary = self->_dictionary;
        lastObject = [(NSMutableArray *)self->_stack lastObject];
        enumerator = self->_enumerator;
        self->_enumerator = lastObject;

        [(NSMutableArray *)self->_stack removeLastObject];
        lastObject2 = [(NSMutableArray *)self->_stack lastObject];
        v10 = lastObject2;
        if (*MEMORY[0x277CBEEE8] == lastObject2)
        {
          v11 = 0;
        }

        else
        {
          v11 = lastObject2;
        }

        v12 = v11;

        v13 = self->_dictionary;
        self->_dictionary = v12;

        [(NSMutableArray *)self->_stack removeLastObject];
        v14 = 0;
        if (dictionary)
        {
          v15 = 4;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v31 = self->_enumerator;
        self->_enumerator = 0;

        stack = self->_stack;
        self->_stack = 0;

        v14 = 0;
        v15 = -1;
      }

      goto LABEL_23;
    }
  }

  if (!self->_dictionary)
  {
    v5 = 1;
  }

  if (v5)
  {
    v16 = [HMDStructuredDataFoundationReader tokenForValue:nextObject];
    v14 = v17;
    if (v16 == 3)
    {
      [(HMDStructuredDataFoundationReader *)self _push];
      objc_storeStrong(&self->_dictionary, nextObject);
      keyEnumerator = [(NSDictionary *)self->_dictionary keyEnumerator];
      v34 = self->_enumerator;
      self->_enumerator = keyEnumerator;

      v15 = 3;
    }

    else
    {
      v15 = v16;
      if (v16 == 1)
      {
        [(HMDStructuredDataFoundationReader *)self _push];
        objectEnumerator = [nextObject objectEnumerator];
        v19 = self->_enumerator;
        self->_enumerator = objectEnumerator;

        v15 = 1;
      }
    }
  }

  else
  {
    v20 = CFGetTypeID(nextObject);
    if (v20 == CFStringGetTypeID())
    {
      v14 = nextObject;
      v15 = 5;
    }

    else
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v15 = HMDStructuredDataErrorWithReason(@"Invalid (non-string) key type in structured data: %@", v23, v24, v25, v26, v27, v28, v29, v22);
      v14 = v30;
    }
  }

LABEL_23:

  v35 = v15;
  v36 = v14;
  result.value = v36;
  result.type = v35;
  return result;
}

+ (uint64_t)tokenForValue:(uint64_t)value
{
  v2 = a2;
  objc_opt_self();
  if (tokenForValue__once != -1)
  {
    dispatch_once(&tokenForValue__once, &__block_literal_global_73310);
  }

  v3 = CFGetTypeID(v2);
  if (v3 == tokenForValue__arrayTypeID)
  {
    v4 = [v2 count];
    if (v4 == -1)
    {
      v6 = 1;
      goto LABEL_27;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v6 = 1;
    goto LABEL_9;
  }

  if (v3 == tokenForValue__dictionaryTypeID)
  {
    v7 = [v2 count];
    if (v7 == -1)
    {
      v6 = 3;
      goto LABEL_27;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v6 = 3;
LABEL_9:

    goto LABEL_27;
  }

  if (v3 == tokenForValue__nullTypeID)
  {
    v6 = 6;
  }

  else if (v3 == tokenForValue__BOOLeanTypeID)
  {
    bOOLValue = [v2 BOOLValue];
    [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    objc_claimAutoreleasedReturnValue();
    v6 = 7;
  }

  else if (v3 == tokenForValue__stringTypeID)
  {
    v2;
    v6 = 8;
  }

  else if (v3 == tokenForValue__numberTypeID)
  {
    v2;
    v6 = 9;
  }

  else if (v3 == tokenForValue__dataTypeID)
  {
    v2;
    v6 = 10;
  }

  else if (v3 == tokenForValue__dateTypeID)
  {
    v2;
    v6 = 11;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2;
      v6 = 12;
    }

    else
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v6 = HMDStructuredDataErrorWithReason(@"Invalid type in structured data: %@", v11, v12, v13, v14, v15, v16, v17, v10);
    }
  }

LABEL_27:

  return v6;
}

- (void)_push
{
  if (self)
  {
    v2 = *(self + 40);
    v3 = *(self + 32);
    if (!v3)
    {
      v3 = *MEMORY[0x277CBEEE8];
    }

    v4 = v3;
    [v2 addObject:v4];

    v5 = *(self + 32);
    *(self + 32) = 0;

    [*(self + 40) addObject:*(self + 24)];
    v6 = *(self + 24);
    *(self + 24) = 0;
  }
}

CFTypeID __51__HMDStructuredDataFoundationReader_tokenForValue___block_invoke()
{
  tokenForValue__arrayTypeID = CFArrayGetTypeID();
  tokenForValue__dictionaryTypeID = CFDictionaryGetTypeID();
  tokenForValue__nullTypeID = CFNullGetTypeID();
  tokenForValue__BOOLeanTypeID = CFBooleanGetTypeID();
  tokenForValue__stringTypeID = CFStringGetTypeID();
  tokenForValue__numberTypeID = CFNumberGetTypeID();
  tokenForValue__dataTypeID = CFDataGetTypeID();
  result = CFDateGetTypeID();
  tokenForValue__dateTypeID = result;
  return result;
}

- (void)failWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = HMDStructuredDataFoundationReader;
  [(HMDTokenBasedStructuredReader *)&v7 failWithError:error];
  enumerator = self->_enumerator;
  self->_enumerator = 0;

  dictionary = self->_dictionary;
  self->_dictionary = 0;

  stack = self->_stack;
  self->_stack = 0;
}

- (void)initWithInput:(void *)input
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (input)
  {
    v11.receiver = input;
    v11.super_class = HMDStructuredDataFoundationReader;
    input = objc_msgSendSuper2(&v11, sel_init);
    if (input)
    {
      v12[0] = v3;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      objectEnumerator = [v4 objectEnumerator];
      v6 = input[3];
      input[3] = objectEnumerator;

      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = input[5];
      input[5] = v7;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return input;
}

@end