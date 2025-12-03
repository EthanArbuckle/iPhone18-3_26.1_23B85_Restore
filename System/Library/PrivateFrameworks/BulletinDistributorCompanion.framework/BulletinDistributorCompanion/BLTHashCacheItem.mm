@interface BLTHashCacheItem
+ (id)hashCacheItemWithData:(id)data URL:(id)l identifier:(id)identifier;
- (BLTHashCacheItem)initWithURL:(id)l data:(id)data identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItem:(id)item;
- (id)MD5;
- (unint64_t)hash;
- (void)MD5;
@end

@implementation BLTHashCacheItem

- (BLTHashCacheItem)initWithURL:(id)l data:(id)data identifier:(id)identifier
{
  lCopy = l;
  dataCopy = data;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = BLTHashCacheItem;
  v12 = [(BLTHashCacheItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_data, data);
    objc_storeStrong(&v13->_url, l);
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;
  }

  return v13;
}

+ (id)hashCacheItemWithData:(id)data URL:(id)l identifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  dataCopy = data;
  v11 = [[self alloc] initWithURL:lCopy data:dataCopy identifier:identifierCopy];

  return v11;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  data = [(BLTHashCacheItem *)self data];
  if (!data)
  {
    data2 = [itemCopy data];
    if (!data2)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  data3 = [(BLTHashCacheItem *)self data];
  data4 = [itemCopy data];
  v9 = [data3 isEqualToData:data4];

  if (!data)
  {
    goto LABEL_6;
  }

LABEL_7:

  v10 = [(BLTHashCacheItem *)self url];
  if (!v10)
  {
    data2 = [itemCopy url];
    if (!data2)
    {
      v15 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v11 = [(BLTHashCacheItem *)self url];
  absoluteString = [v11 absoluteString];
  v13 = [itemCopy url];
  absoluteString2 = [v13 absoluteString];
  v15 = [absoluteString isEqualToString:absoluteString2];

  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_13:

  return (itemCopy != 0) & v9 & v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  os_unfair_lock_lock(&self->_lock);
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BLTHashCacheItem *)self isEqualToItem:equalCopy];
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
    data = [(BLTHashCacheItem *)self data];

    if (data)
    {
      data2 = [(BLTHashCacheItem *)self data];
      [data2 MD5:v13];
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
  v3 = [self url];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Unable to MD5 item: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end