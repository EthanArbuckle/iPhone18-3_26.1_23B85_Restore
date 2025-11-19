@interface IDSServerDesiredKeyMaterialSet
- (BOOL)isEqual:(id)a3;
- (IDSServerDesiredKeyMaterialSet)initWithKMs:(id)a3 type:(int)a4 forPublicIdentity:(__SecKey *)a5 forParticipantID:(unint64_t)a6;
- (id)materialDataByID;
- (id)wrapMaterial:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation IDSServerDesiredKeyMaterialSet

- (IDSServerDesiredKeyMaterialSet)initWithKMs:(id)a3 type:(int)a4 forPublicIdentity:(__SecKey *)a5 forParticipantID:(unint64_t)a6
{
  v11 = a3;
  v28.receiver = self;
  v28.super_class = IDSServerDesiredKeyMaterialSet;
  v12 = [(IDSServerDesiredKeyMaterialSet *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_kms, a3);
    v13->_type = a4;
    if (a5)
    {
      CFRetain(a5);
    }

    v13->_forPublicIdentity = a5;
    v13->_forParticipantID = a6;
    v13->_requireSignature = 1;
    v14 = [(IDSServerDesiredKeyMaterialSet *)v13 forParticipantID];
    v15 = v14 ^ [(IDSServerDesiredKeyMaterialSet *)v13 forPublicIdentity];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [(IDSServerDesiredKeyMaterialSet *)v13 kms];
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * v20) keyIndex];
          v15 ^= [v21 hash];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    v13->_hash = v15;
    v22 = v13;
  }

  return v13;
}

- (void)dealloc
{
  forPublicIdentity = self->_forPublicIdentity;
  if (forPublicIdentity)
  {
    CFRelease(forPublicIdentity);
    self->_forPublicIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = IDSServerDesiredKeyMaterialSet;
  [(IDSServerDesiredKeyMaterialSet *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 kms];
    v7 = [v6 isEqualToArray:self->_kms] && objc_msgSend(v5, "forPublicIdentity") == self->_forPublicIdentity && objc_msgSend(v5, "forParticipantID") == self->_forParticipantID;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)wrapMaterial:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[IDSFoundationLog ServerMaterialExchange];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSServerDesiredKeyMaterialSet wrapMaterialOrError", v11, 2u);
  }

  v8 = [v6 keyMaterial];

  v9 = [GFTKeyWrapping wrapSeed:v8 to:self->_forPublicIdentity legacy:0 error:a4];

  return v9;
}

- (id)materialDataByID
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(IDSServerDesiredKeyMaterialSet *)self kms];
  v44 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v44)
  {
    v3 = *v47;
    v34 = IDSRealTimeEncryptionSKI;
    v33 = IDSRealTimeEncryptionSKM;
    v32 = IDSRealTimeEncryptionSKS;
    v31 = IDSRealTimeEncryptionSKGC;
    v40 = IDSRealTimeEncryptionMKI;
    v39 = IDSRealTimeEncryptionMKM;
    v38 = IDSRealTimeEncryptionMKS;
    v37 = IDSRealTimeEncryptionMKGC;
    v36 = IDSDSessionMessageRealTimeEncryptionWrapModeKey;
    v35 = IDSRealTimeEncryptionParticipantID;
    v41 = *v47;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v47 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v46 + 1) + 8 * i);
        v45 = 0;
        v6 = [(IDSServerDesiredKeyMaterialSet *)self wrapMaterial:v5 error:&v45, v31, v32, v33, v34];
        v7 = v45;
        v8 = +[IDSFoundationLog ServerMaterialExchange];
        v9 = v8;
        if (v7)
        {
          v10 = 1;
        }

        else
        {
          v10 = v6 == 0;
        }

        if (!v10)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(IDSServerDesiredKeyMaterialSet *)self forParticipantID];
            v16 = [(IDSServerDesiredKeyMaterialSet *)self forPublicIdentity];
            v17 = [v5 keyIndex];
            *buf = 134218498;
            v51 = v15;
            v52 = 2112;
            v53 = v16;
            v54 = 2112;
            v55 = v17;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSServerDesiredKeyMaterialSet materialDataByID: encrypted the key material for participantID: %llu, remote pub key: %@, mki: %@", buf, 0x20u);
          }

          v18 = [v5 keyIndex];
          v9 = IDSGetUUIDDataFromNSUUID();

          v19 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v20 = v19;
          v22 = v39;
          v21 = v40;
          type = self->_type;
          v24 = v37;
          v25 = v38;
          if (type == 13)
          {
LABEL_18:
            [(__CFDictionary *)v19 setObject:v9 forKeyedSubscript:v21];
            [(__CFDictionary *)v20 setObject:v6 forKeyedSubscript:v22];
            v26 = [v5 keySalt];
            [(__CFDictionary *)v20 setObject:v26 forKeyedSubscript:v25];

            v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 generationCounter]);
            [(__CFDictionary *)v20 setObject:v27 forKeyedSubscript:v24];
          }

          else if (type == 14)
          {
            v22 = v33;
            v21 = v34;
            v24 = v31;
            v25 = v32;
            goto LABEL_18;
          }

          [(__CFDictionary *)v20 setObject:&off_100C3CB20 forKeyedSubscript:v36];
          v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 participantID]);
          [(__CFDictionary *)v20 setObject:v28 forKeyedSubscript:v35];

          v29 = JWEncodeDictionary();
          [(__CFDictionary *)Mutable setObject:v29 forKeyedSubscript:v9];

          v3 = v41;
          goto LABEL_20;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = [(IDSServerDesiredKeyMaterialSet *)self forParticipantID];
          v12 = [(IDSServerDesiredKeyMaterialSet *)self forPublicIdentity];
          v13 = [v5 keyIndex];
          *buf = 134218498;
          v51 = v11;
          v52 = 2112;
          v53 = v12;
          v54 = 2112;
          v55 = v13;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "IDSServerDesiredKeyMaterialSet materialDataByID: could not encrypt the key material for participantID: %llu, remote pub key: %@, mki: %@", buf, 0x20u);
        }

LABEL_20:
      }

      v44 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v44);
  }

  return Mutable;
}

@end