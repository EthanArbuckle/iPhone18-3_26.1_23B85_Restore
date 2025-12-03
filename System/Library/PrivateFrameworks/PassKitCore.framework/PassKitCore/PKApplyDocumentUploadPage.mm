@interface PKApplyDocumentUploadPage
- (PKApplyDocumentUploadPage)initWithJSONObject:(id)object;
@end

@implementation PKApplyDocumentUploadPage

- (PKApplyDocumentUploadPage)initWithJSONObject:(id)object
{
  v55 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v51.receiver = self;
  v51.super_class = PKApplyDocumentUploadPage;
  v5 = [(PKDynamicProvisioningPageContent *)&v51 initWithDictonary:objectCopy];
  v6 = v5;
  if (v5)
  {
    v34 = v5;
    v35 = objectCopy;
    v7 = [objectCopy PKArrayContaining:objc_opt_class() forKey:@"acceptableDocuments"];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v7;
    v38 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v38)
    {
      v37 = *v48;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v47 + 1) + 8 * i);
          v11 = [v10 PKStringForKey:@"documentType"];
          v12 = PKPaymentDocumentTypeFromString(v11);

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v13 = [v10 PKArrayForKey:@"countryCodes"];
          v14 = [v13 countByEnumeratingWithState:&v43 objects:v53 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v44;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v44 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v43 + 1) + 8 * j);
                v19 = objc_alloc_init(PKDocumentRequest);
                [(PKDocumentRequest *)v19 setDocumentType:v12];
                [(PKDocumentRequest *)v19 setCountryCode:v18];
                [v8 safelyAddObject:v19];
              }

              v15 = [v13 countByEnumeratingWithState:&v43 objects:v53 count:16];
            }

            while (v15);
          }
        }

        v38 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v38);
    }

    v20 = [v8 copy];
    v6 = v34;
    acceptableDocuments = v34->_acceptableDocuments;
    v34->_acceptableDocuments = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    objectCopy = v35;
    v23 = [v35 PKArrayContaining:objc_opt_class() forKey:@"imageCaptureEncryptionCertificates"];
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*(*(&v39 + 1) + 8 * k) options:0];
          [v22 safelyAddObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v25);
    }

    v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
    imageCaptureEncryptionCertificates = v34->_imageCaptureEncryptionCertificates;
    v34->_imageCaptureEncryptionCertificates = v29;

    v31 = [v35 PKStringForKey:@"imageCaptureEncryptionVersion"];
    imageCaptureEncryptionVersion = v34->_imageCaptureEncryptionVersion;
    v34->_imageCaptureEncryptionVersion = v31;

    v34->_requiresCoreIDVImageCaptureUpload = [v35 PKBoolForKey:@"requiresCoreIDVImageCaptureUpload"];
  }

  return v6;
}

@end