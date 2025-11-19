@interface BLTHashCacheItem
+ (id)hashCacheItemWithData:(id)a3 URL:(id)a4 identifier:(id)a5;
- (BLTHashCacheItem)initWithURL:(id)a3 data:(id)a4 identifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItem:(id)a3;
- (id)MD5;
- (unint64_t)hash;
- (void)MD5;
@end

@implementation BLTHashCacheItem

- (BLTHashCacheItem)initWithURL:(id)a3 data:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BLTHashCacheItem;
  v12 = [(BLTHashCacheItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_data, a4);
    objc_storeStrong(&v13->_url, a3);
    v14 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;
  }

  return v13;
}

+ (id)hashCacheItemWithData:(id)a3 URL:(id)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithURL:v9 data:v10 identifier:v8];

  return v11;
}

- (BOOL)isEqualToItem:(id)a3
{
  v5 = a3;
  v6 = [(BLTHashCacheItem *)self data];
  if (!v6)
  {
    v3 = [v5 data];
    if (!v3)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v7 = [(BLTHashCacheItem *)self data];
  v8 = [v5 data];
  v9 = [v7 isEqualToData:v8];

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:

  v10 = [(BLTHashCacheItem *)self url];
  if (!v10)
  {
    v3 = [v5 url];
    if (!v3)
    {
      v15 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v11 = [(BLTHashCacheItem *)self url];
  v12 = [v11 absoluteString];
  v13 = [v5 url];
  v14 = [v13 absoluteString];
  v15 = [v12 isEqualToString:v14];

  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_13:

  return (v5 != 0) & v9 & v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BLTHashCacheItem *)self isEqualToItem:v4];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)MD5
{
  v14 = *MEMORY[0x277D85DE8];
  MD5 = self->_MD5;
  if (!MD5)
  {
    v4 = [(BLTHashCacheItem *)self data];

    if (v4)
    {
      v5 = [(BLTHashCacheItem *)self data];
      [v5 MD5:v13];
    }

    else
    {
      v10 = [(BLTHashCacheItem *)self url];

      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = [(BLTHashCacheItem *)self url];
      v12 = [v11 MD5:v13];

      if ((v12 & 1) == 0)
      {
        p_super = blt_general_log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(BLTHashCacheItem *)self MD5];
        }

        goto LABEL_5;
      }
    }

    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:16];
    p_super = &self->_MD5->super;
    self->_MD5 = v6;
LABEL_5:

LABEL_6:
    MD5 = self->_MD5;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MD5;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  v5 = 0;
  v3 = [(BLTHashCacheItem *)self MD5];
  [v3 getBytes:&v5 length:8];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)MD5
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 url];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Unable to MD5 item: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end