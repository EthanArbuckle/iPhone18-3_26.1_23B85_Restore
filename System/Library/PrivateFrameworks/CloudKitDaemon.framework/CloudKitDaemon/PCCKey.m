@interface PCCKey
- (PCCKey)init;
- (id)decrypt:(id)a3;
- (id)encrypt:(id)a3;
- (void)dealloc;
@end

@implementation PCCKey

- (PCCKey)init
{
  v4.receiver = self;
  v4.super_class = PCCKey;
  v2 = [(PCCKey *)&v4 init];
  if (v2)
  {
    v2->_secret = sub_22540EEC8();
  }

  return v2;
}

- (id)encrypt:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_length(v4, v5, v6);
  v8 = v4;
  v11 = objc_msgSend_bytes(v8, v9, v10);

  v16 = v7 + 32;
  v12 = malloc_type_malloc(v7 + 32, 0x724DC2B1uLL);
  if (v12)
  {
    v13 = v12;
    if (sub_22540F28C(self->_secret, v11, v7, v12, &v16))
    {
      free(v13);
      v12 = 0;
    }

    else
    {
      v12 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v14, v13, v16, 1);
    }
  }

  return v12;
}

- (id)decrypt:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_length(v4, v5, v6);
  v8 = v4;
  v11 = objc_msgSend_bytes(v8, v9, v10);

  if (v7 >= 0x20)
  {
    v12 = v7 - 32;
  }

  else
  {
    v12 = 0;
  }

  v17 = v12;
  v13 = malloc_type_malloc(v12, 0x722E5736uLL);
  if (v13)
  {
    v14 = v13;
    if (sub_22540F3F4(self->_secret, v11, v7, v13, &v17))
    {
      free(v14);
      v13 = 0;
    }

    else
    {
      v13 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v15, v14, v17, 1);
    }
  }

  return v13;
}

- (void)dealloc
{
  objc_msgSend_clear(self, a2, v2);
  secret = self->_secret;
  cc_clear();
  free(secret);
  v5.receiver = self;
  v5.super_class = PCCKey;
  [(PCCKey *)&v5 dealloc];
}

@end