@interface PKPaymentVerificationSubmitMethodEntry
- (id)dictionaryRepresentationWithBuilder:(id)builder;
@end

@implementation PKPaymentVerificationSubmitMethodEntry

- (id)dictionaryRepresentationWithBuilder:(id)builder
{
  v31 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:self->_methodGroupIdentifier forKeyedSubscript:@"methodGroupIdentifier"];
  [v4 setObject:self->_methodIdentifier forKeyedSubscript:@"methodIdentifier"];
  [v4 setObject:self->_verificationCode forKeyedSubscript:@"activationCode"];
  v6 = [(NSData *)self->_verificationData base64EncodedStringWithOptions:0];
  [v4 setObject:v6 forKeyedSubscript:@"activationData"];

  if (self->_dynamicFieldParameters)
  {
    [v4 addEntriesFromDictionary:?];
  }

  if (self->_encryptedDynamicFieldParameters)
  {
    [v5 addEntriesFromDictionary:?];
  }

  if (self->_encryptedPerFieldDynamicFieldParameters)
  {
    v21 = v5;
    v22 = v4;
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_encryptedPerFieldDynamicFieldParameters;
    v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [(NSDictionary *)self->_encryptedPerFieldDynamicFieldParameters objectForKeyedSubscript:v11];
          dataRepresentation = [v12 dataRepresentation];
          encryptionScheme = [v12 encryptionScheme];
          encryptionCertificates = [v12 encryptionCertificates];
          [builderCopy createEncryptedDictionaryWithData:dataRepresentation encryptedContentKey:@"encryptedData" scheme:encryptionScheme certificates:encryptionCertificates];
          v17 = v16 = self;
          [v24 setObject:v17 forKeyedSubscript:v11];

          self = v16;
        }

        v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v4 = v22;
    [v22 setObject:v24 forKeyedSubscript:@"encryptedPinFields"];

    v5 = v21;
  }

  dictionaryRepresentation = [(PKPaymentTapToProvisionData *)self->_tapToProvisionData dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"tapToProvisionCardData"];

  v19 = [v4 copy];

  return v19;
}

@end