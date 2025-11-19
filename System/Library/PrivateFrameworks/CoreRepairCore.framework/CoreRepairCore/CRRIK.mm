@interface CRRIK
- (BOOL)create;
- (BOOL)createWithKeyBlob:(id)a3;
- (BOOL)verify:(id)a3 signature:(id)a4;
- (CRRIK)init;
- (CRRIK)initWithKeyBlob:(id)a3;
- (id)attestationBlob;
- (id)keyBlob;
- (id)pubKeyBlob;
- (void)dealloc;
- (void)purge;
@end

@implementation CRRIK

- (CRRIK)init
{
  v6.receiver = self;
  v6.super_class = CRRIK;
  v2 = [(CRRIK *)&v6 init];
  v3 = v2;
  if (v2 && ![(CRRIK *)v2 create])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (CRRIK)initWithKeyBlob:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRRIK;
  v5 = [(CRRIK *)&v9 init];
  v6 = v5;
  if (v5 && ![(CRRIK *)v5 createWithKeyBlob:v4])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)keyBlob
{
  v3 = [(CRRIK *)self rk];
  if (v3)
  {
    v6 = 0;
    blob = aks_ref_key_get_blob([(CRRIK *)self rk], &v6);
    v3 = 0;
    if (blob)
    {
      if (v6)
      {
        v3 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      }
    }
  }

  return v3;
}

- (id)pubKeyBlob
{
  v3 = [(CRRIK *)self rk];
  if (v3)
  {
    v6 = 0;
    public_key = aks_ref_key_get_public_key([(CRRIK *)self rk], &v6);
    v3 = 0;
    if (public_key)
    {
      if (v6)
      {
        v3 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      }
    }
  }

  return v3;
}

- (id)attestationBlob
{
  v3 = [(CRRIK *)self rk];
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    if (!aks_sik_attest([(CRRIK *)self rk], 0, 0, &v8, &v7) && v8 && v7)
    {
      v3 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      v4 = v3;
    }

    else
    {
      v5 = handleForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CRRIK attestationBlob];
      }

      v4 = 0;
      v3 = 0;
    }

    if (v8)
    {
      free(v8);
      v3 = v4;
    }
  }

  return v3;
}

- (BOOL)verify:(id)a3 signature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRRIK *)self rk];
  v9 = 0;
  if (v7 && v6 && v8)
  {
    if (aks_ref_key_verify_sig(-[CRRIK rk](self, "rk"), 0, 0, [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length")))
    {
      v10 = handleForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CRRIK verify:signature:];
      }

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)dealloc
{
  [(CRRIK *)self purge];
  v3.receiver = self;
  v3.super_class = CRRIK;
  [(CRRIK *)&v3 dealloc];
}

- (BOOL)create
{
  v29 = 1;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v3 = MGCopyAnswer();
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRRIK *)v8 create:v9];
    }

    goto LABEL_12;
  }

  if ([v3 BOOLValue])
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  v5 = aks_params_create(0);
  v28 = v5;
  if (!v5)
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRRIK *)v8 create:v18];
    }

LABEL_12:

    v16 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  if (aks_params_set_number(v5, 9, &v29))
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CRRIK create];
    }
  }

  else if (aks_params_get_der(v6, &v27, &v26))
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CRRIK create];
    }
  }

  else
  {
    if (!aks_ref_key_create(0xFFFFFFFFLL, 13, v4, v27, v26, &v30))
    {
      self->_rk = v30;
      v30 = 0;
      v7 = handleForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_1CEDC5000, v7, OS_LOG_TYPE_DEFAULT, "RIK created successfully", v25, 2u);
      }

      v16 = 1;
      goto LABEL_27;
    }

    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CRRIK create];
    }
  }

  v16 = 0;
LABEL_27:

  aks_params_free(&v28);
LABEL_13:
  if (v27)
  {
    free(v27);
  }

  if (v30)
  {
    aks_ref_key_free(&v30);
  }

  return v16;
}

- (BOOL)createWithKeyBlob:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  if (v4)
  {
    [v4 bytes];
    [v5 length];
    v6 = aks_ref_key_create_with_blob();
    v7 = v6 == 0;
    if (v6)
    {
      v8 = handleForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CRRIK createWithKeyBlob:];
      }
    }

    else
    {
      self->_rk = v11;
      v11 = 0;
      v8 = handleForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1CEDC5000, v8, OS_LOG_TYPE_DEFAULT, "RIK created successfully", v10, 2u);
      }
    }

    if (v11)
    {
      aks_ref_key_free(&v11);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)purge
{
  if ([(CRRIK *)self rk])
  {
    aks_ref_key_free(&self->_rk);

    [(CRRIK *)self setRk:0];
  }
}

@end