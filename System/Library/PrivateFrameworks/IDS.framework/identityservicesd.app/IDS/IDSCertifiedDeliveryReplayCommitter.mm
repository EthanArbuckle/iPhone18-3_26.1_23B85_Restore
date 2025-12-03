@interface IDSCertifiedDeliveryReplayCommitter
- (IDSCertifiedDeliveryReplayCommitter)init;
- (id)decryptedDataForKey:(id)key;
- (id)decryptedReadReceiptDataForKey:(id)key;
- (void)commitStateForKey:(id)key;
- (void)holdCommitBlock:(id)block andDecryptedData:(id)data withEncryptedAttributes:(id)attributes forKey:(id)key;
- (void)holdDecryptedReadReceiptData:(id)data forKey:(id)key;
@end

@implementation IDSCertifiedDeliveryReplayCommitter

- (IDSCertifiedDeliveryReplayCommitter)init
{
  v8.receiver = self;
  v8.super_class = IDSCertifiedDeliveryReplayCommitter;
  v2 = [(IDSCertifiedDeliveryReplayCommitter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    backingCache = v2->_backingCache;
    v2->_backingCache = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    readReceiptCache = v2->_readReceiptCache;
    v2->_readReceiptCache = v5;
  }

  return v2;
}

- (id)decryptedDataForKey:(id)key
{
  if (key)
  {
    v4 = [(NSMutableDictionary *)self->_backingCache objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)holdCommitBlock:(id)block andDecryptedData:(id)data withEncryptedAttributes:(id)attributes forKey:(id)key
{
  blockCopy = block;
  dataCopy = data;
  attributesCopy = attributes;
  keyCopy = key;
  v14 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_retainBlock(blockCopy);
    *buf = 138412802;
    v22 = keyCopy;
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Replay committer told to hold block { key: %@, block: %p, dataLength: %ld }", buf, 0x20u);
  }

  if (blockCopy && dataCopy && keyCopy)
  {
    v16 = [[IDSMPDecryptionResult alloc] initWithData:dataCopy encryptedAttributes:attributesCopy withCommitState:blockCopy additionalDecryptionResult:0];
    [(NSMutableDictionary *)self->_backingCache setObject:v16 forKeyedSubscript:keyCopy];
LABEL_14:

    goto LABEL_15;
  }

  if (blockCopy)
  {
    v17 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100917808(v17);
    }

    v20 = 0;
    v18 = (*(blockCopy + 2))(blockCopy, &v20);
    v16 = v20;
    if ((v18 & 1) == 0)
    {
      v19 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_10091784C(v16, v19);
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)commitStateForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = keyCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Replay committer told to commit block { key: %@ }", buf, 0xCu);
    }

    v6 = [(NSMutableDictionary *)self->_backingCache objectForKeyedSubscript:keyCopy];
    v7 = v6;
    if (v6)
    {
      commitBlock = [v6 commitBlock];
      if (commitBlock)
      {
        v9 = +[IDSFoundationLog delivery];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_retainBlock(commitBlock);
          *buf = 138412546;
          v16 = keyCopy;
          v17 = 2048;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Replay committer committing block { key: %@, block: %p }", buf, 0x16u);
        }

        v14 = 0;
        v11 = (*(commitBlock + 16))(commitBlock, &v14);
        v12 = v14;
        if ((v11 & 1) == 0)
        {
          v13 = +[IDSFoundationLog delivery];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_1009178C4();
          }
        }
      }

      [(NSMutableDictionary *)self->_backingCache setObject:0 forKeyedSubscript:keyCopy];
    }

    else
    {
      commitBlock = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(commitBlock, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = keyCopy;
        _os_log_impl(&_mh_execute_header, commitBlock, OS_LOG_TYPE_DEFAULT, "No block found for replay state { key: %@ }", buf, 0xCu);
      }
    }
  }
}

- (void)holdDecryptedReadReceiptData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v8 = +[IDSFoundationLog delivery];
  v9 = v8;
  if (dataCopy && keyCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = keyCopy;
      v12 = 2048;
      v13 = [dataCopy length];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Caching decrypted read receipt data { key: %@, dataLength: %ld }", &v10, 0x16u);
    }

    [(NSMutableDictionary *)self->_readReceiptCache setObject:dataCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10091793C();
    }
  }
}

- (id)decryptedReadReceiptDataForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSMutableDictionary *)self->_readReceiptCache objectForKeyedSubscript:keyCopy];
    v6 = +[IDSFoundationLog delivery];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v9 = 138412546;
        v10 = keyCopy;
        v11 = 2048;
        v12 = [v5 length];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found cached decrypted read receipt data { key: %@, dataLength: %ld }", &v9, 0x16u);
      }

      [(NSMutableDictionary *)self->_readReceiptCache setObject:0 forKeyedSubscript:keyCopy];
    }

    else
    {
      if (v7)
      {
        v9 = 138412290;
        v10 = keyCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No cached decrypted read receipt data found { key: %@ }", &v9, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end