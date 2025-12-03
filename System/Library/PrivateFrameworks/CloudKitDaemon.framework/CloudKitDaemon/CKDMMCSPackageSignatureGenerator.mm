@interface CKDMMCSPackageSignatureGenerator
- (CKDMMCSPackageSignatureGenerator)initWithBoundaryKey:(id)key;
- (id)_finishGenerator;
- (id)dataByFinishingSignature;
- (id)dataByFinishingVerificationKey;
- (void)dealloc;
- (void)updateWithData:(id)data;
@end

@implementation CKDMMCSPackageSignatureGenerator

- (CKDMMCSPackageSignatureGenerator)initWithBoundaryKey:(id)key
{
  keyCopy = key;
  v8.receiver = self;
  v8.super_class = CKDMMCSPackageSignatureGenerator;
  v5 = [(CKDMMCSPackageSignatureGenerator *)&v8 init];
  if (v5)
  {
    if (keyCopy)
    {
      v6 = MMCSPackageSectionSignatureGeneratorCreateWithBoundaryKey();
      v5->_usesMMCSV2 = 1;
    }

    else
    {
      v6 = MMCSPackageSectionSignatureGeneratorCreate();
    }

    v5->_generator = v6;
    v5->_valid = 1;
  }

  return v5;
}

- (void)dealloc
{
  v4 = objc_msgSend__finishGenerator(self, a2, v2);
  v5.receiver = self;
  v5.super_class = CKDMMCSPackageSignatureGenerator;
  [(CKDMMCSPackageSignatureGenerator *)&v5 dealloc];
}

- (id)_finishGenerator
{
  if (objc_msgSend_isValid(self, a2, v2))
  {
    objc_msgSend_setValid_(self, v4, 0);
    objc_msgSend_generator(self, v5, v6);
    v7 = MMCSPackageSectionSignatureGeneratorFinishWithResults();
    if (v7)
    {
      generatorResults = self->_generatorResults;
      self->_generatorResults = v7;
    }
  }

  v9 = self->_generatorResults;

  return v9;
}

- (void)updateWithData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_isValid(self, v6, v7) & 1) == 0)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKDMMCSPackageSignatureGenerator.m", 54, @"Attempted to update an invalidated signature generator");
  }

  v21 = dataCopy;
  v12 = objc_msgSend_generator(self, v10, v11);
  v15 = objc_msgSend_bytes(v21, v13, v14);
  v18 = objc_msgSend_length(v21, v16, v17);
  MEMORY[0x22AA63F90](v12, v15, v18);
}

- (id)dataByFinishingSignature
{
  v3 = objc_msgSend__finishGenerator(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277D25658]);

  return v5;
}

- (id)dataByFinishingVerificationKey
{
  if (self->_usesMMCSV2)
  {
    v3 = objc_msgSend__finishGenerator(self, a2, v2);
    v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277D25668]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end