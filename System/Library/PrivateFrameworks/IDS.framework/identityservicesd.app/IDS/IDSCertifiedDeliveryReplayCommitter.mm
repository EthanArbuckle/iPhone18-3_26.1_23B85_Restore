@interface IDSCertifiedDeliveryReplayCommitter
- (IDSCertifiedDeliveryReplayCommitter)init;
- (id)decryptedDataForKey:(id)a3;
- (id)decryptedReadReceiptDataForKey:(id)a3;
- (void)commitStateForKey:(id)a3;
- (void)holdCommitBlock:(id)a3 andDecryptedData:(id)a4 withEncryptedAttributes:(id)a5 forKey:(id)a6;
- (void)holdDecryptedReadReceiptData:(id)a3 forKey:(id)a4;
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

- (id)decryptedDataForKey:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_backingCache objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)holdCommitBlock:(id)a3 andDecryptedData:(id)a4 withEncryptedAttributes:(id)a5 forKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_retainBlock(v10);
    *buf = 138412802;
    v22 = v13;
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = [v11 length];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Replay committer told to hold block { key: %@, block: %p, dataLength: %ld }", buf, 0x20u);
  }

  if (v10 && v11 && v13)
  {
    v16 = [[IDSMPDecryptionResult alloc] initWithData:v11 encryptedAttributes:v12 withCommitState:v10 additionalDecryptionResult:0];
    [(NSMutableDictionary *)self->_backingCache setObject:v16 forKeyedSubscript:v13];
LABEL_14:

    goto LABEL_15;
  }

  if (v10)
  {
    v17 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100917808(v17);
    }

    v20 = 0;
    v18 = (*(v10 + 2))(v10, &v20);
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

- (void)commitStateForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Replay committer told to commit block { key: %@ }", buf, 0xCu);
    }

    v6 = [(NSMutableDictionary *)self->_backingCache objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 commitBlock];
      if (v8)
      {
        v9 = +[IDSFoundationLog delivery];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_retainBlock(v8);
          *buf = 138412546;
          v16 = v4;
          v17 = 2048;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Replay committer committing block { key: %@, block: %p }", buf, 0x16u);
        }

        v14 = 0;
        v11 = (*(v8 + 16))(v8, &v14);
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

      [(NSMutableDictionary *)self->_backingCache setObject:0 forKeyedSubscript:v4];
    }

    else
    {
      v8 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No block found for replay state { key: %@ }", buf, 0xCu);
      }
    }
  }
}

- (void)holdDecryptedReadReceiptData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog delivery];
  v9 = v8;
  if (v6 && v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v7;
      v12 = 2048;
      v13 = [v6 length];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Caching decrypted read receipt data { key: %@, dataLength: %ld }", &v10, 0x16u);
    }

    [(NSMutableDictionary *)self->_readReceiptCache setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10091793C();
    }
  }
}

- (id)decryptedReadReceiptDataForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_readReceiptCache objectForKeyedSubscript:v4];
    v6 = +[IDSFoundationLog delivery];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v9 = 138412546;
        v10 = v4;
        v11 = 2048;
        v12 = [v5 length];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found cached decrypted read receipt data { key: %@, dataLength: %ld }", &v9, 0x16u);
      }

      [(NSMutableDictionary *)self->_readReceiptCache setObject:0 forKeyedSubscript:v4];
    }

    else
    {
      if (v7)
      {
        v9 = 138412290;
        v10 = v4;
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