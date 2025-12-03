@interface IDSServerDesiredEncryptedDataSet
- (BOOL)isEqual:(id)equal;
- (IDSServerDesiredEncryptedDataSet)initWithEncryptedData:(id)data type:(int)type forPublicIdentity:(__SecKey *)identity forParticipantID:(unint64_t)d;
- (id)_wrapData:(id)data error:(id *)error;
- (id)materialDataByID;
- (void)dealloc;
@end

@implementation IDSServerDesiredEncryptedDataSet

- (IDSServerDesiredEncryptedDataSet)initWithEncryptedData:(id)data type:(int)type forPublicIdentity:(__SecKey *)identity forParticipantID:(unint64_t)d
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = IDSServerDesiredEncryptedDataSet;
  v12 = [(IDSServerDesiredEncryptedDataSet *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encryptedData, data);
    v13->_type = type;
    CFRetain(identity);
    v13->_forPublicIdentity = identity;
    v13->_forParticipantID = d;
    v13->_requireSignature = 1;
  }

  return v13;
}

- (void)dealloc
{
  CFRelease(self->_forPublicIdentity);
  v3.receiver = self;
  v3.super_class = IDSServerDesiredEncryptedDataSet;
  [(IDSServerDesiredEncryptedDataSet *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    encryptedData = [v5 encryptedData];
    v7 = encryptedData == self->_encryptedData && [v5 forPublicIdentity] == self->_forPublicIdentity && objc_msgSend(v5, "forParticipantID") == self->_forParticipantID;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_wrapData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [GFTKeyWrapping encrypt:dataCopy toKey:self->_forPublicIdentity error:error];
  v8 = v7;
  if (error || !v7)
  {
    v9 = +[IDSFoundationLog ServerMaterialExchange];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      forPublicIdentity = self->_forPublicIdentity;
      forParticipantID = self->_forParticipantID;
      v13 = *error;
      v14 = 134218754;
      v15 = forParticipantID;
      v16 = 2112;
      v17 = forPublicIdentity;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = dataCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_wrapData: Couldn't protect the data for _forParticipantID: %llu _forPublicIdentity: %@ (error: %@), data: %@", &v14, 0x2Au);
    }
  }

  return v8;
}

- (id)materialDataByID
{
  v3 = +[NSUUID UUID];
  v4 = IDSGetUUIDDataFromNSUUID();

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = IMGetDomainBoolForKey();
  encryptedData = self->_encryptedData;
  if (v6)
  {
    v8 = encryptedData;
    v9 = +[IDSFoundationLog ServerMaterialExchange];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSServerDesiredEncryptedDataSet: disableEncryptionForData, use plain data: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v23 = 0;
  v10 = [(IDSServerDesiredEncryptedDataSet *)self _wrapData:encryptedData error:&v23];
  v11 = v23;
  if (!v11)
  {
    v8 = v10;
LABEL_10:
    v14 = +[IDSFoundationLog ServerMaterialExchange];
    v15 = v14;
    if (v8)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        forParticipantID = [(IDSServerDesiredEncryptedDataSet *)self forParticipantID];
        forPublicIdentity = [(IDSServerDesiredEncryptedDataSet *)self forPublicIdentity];
        v18 = self->_encryptedData;
        *buf = 134218754;
        v25 = forParticipantID;
        v26 = 2112;
        v27 = forPublicIdentity;
        v28 = 2112;
        v29 = v18;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDSServerDesiredEncryptedDataSet materialDataByID: encrypted the data for participantID: %llu, remote pub key: %@, data: %@, protectedData: %@", buf, 0x2Au);
      }

      v19 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [(__CFDictionary *)v19 setObject:v8 forKeyedSubscript:IDSDSessionMessageRealTimeEncryptionEncryptedData];
      [(__CFDictionary *)v19 setObject:&off_100C3BE78 forKeyedSubscript:IDSDSessionMessageRealTimeEncryptionWrapModeKey];
      v20 = [NSNumber numberWithUnsignedLongLong:self->_forParticipantID];
      [(__CFDictionary *)v19 setObject:v20 forKeyedSubscript:IDSRealTimeEncryptionParticipantID];

      v21 = JWEncodeDictionary();
      [(__CFDictionary *)Mutable setObject:v21 forKeyedSubscript:v4];
      v13 = Mutable;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10091AE10(v15);
      }

      v13 = 0;
      v8 = v15;
    }

    goto LABEL_17;
  }

  v8 = v11;
  v12 = +[IDSFoundationLog ServerMaterialExchange];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10091AD98(v8, v12);
  }

  v13 = 0;
LABEL_17:

  return v13;
}

@end