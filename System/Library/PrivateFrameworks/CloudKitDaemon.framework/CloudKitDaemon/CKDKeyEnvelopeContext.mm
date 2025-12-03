@interface CKDKeyEnvelopeContext
- (CKDKeyEnvelopeContext)envelopeContextWithIdentifier:(id)identifier error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setShareProtection:(_OpaquePCSShareProtection *)protection;
@end

@implementation CKDKeyEnvelopeContext

- (void)dealloc
{
  shareProtection = self->_shareProtection;
  if (shareProtection)
  {
    CFRelease(shareProtection);
    self->_shareProtection = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDKeyEnvelopeContext;
  [(CKDKeyEnvelopeContext *)&v4 dealloc];
}

- (void)setShareProtection:(_OpaquePCSShareProtection *)protection
{
  shareProtection = self->_shareProtection;
  if (shareProtection != protection)
  {
    if (protection)
    {
      CFRetain(protection);
      shareProtection = self->_shareProtection;
    }

    self->_shareProtection = protection;
    if (shareProtection)
    {

      CFRelease(shareProtection);
    }
  }
}

- (CKDKeyEnvelopeContext)envelopeContextWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = objc_msgSend_mergeableValueID(self, v6, v7);
    v12 = objc_msgSend_recordID(v9, v10, v11);
    v15 = objc_msgSend_key(v9, v13, v14);
    v18 = v15;
    if (v9 && v12 && v15)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = objc_msgSend_zoneID(v12, v16, v17);
      v23 = objc_msgSend_zoneName(v20, v21, v22);
      v26 = objc_msgSend_recordName(v12, v24, v25);
      v29 = objc_msgSend_name(v9, v27, v28);
      v31 = objc_msgSend_stringWithFormat_(v19, v30, @"%@-%@-%@-%@-%@", v23, v26, v18, v29, identifierCopy);

      v32 = v31;
      v34 = objc_msgSend_dataUsingEncoding_(v31, v33, 4);
      v36 = v34;
      if (error && !v34)
      {
        *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBC120], 1000, @"Mergeable delta envelope context generation failed, invalid context encoding");
      }
    }

    else if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 1017, @"Mergeable delta envelope context generation failed, invalid mergeable value ID");
      *error = v36 = 0;
    }

    else
    {
      v36 = 0;
    }
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 1017, @"Mergeable delta envelope context generation failed, missing delta identifier");
    *error = v36 = 0;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_shareProtection(self, v5, v6);
  if (v7)
  {
    v10 = v7;
    CFRetain(v7);
    v4[2] = v10;
  }

  *(v4 + 8) = objc_msgSend_encryptMergeableValueMetadata(self, v8, v9);
  v13 = objc_msgSend_mergeableValueID(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  v17 = v4[3];
  v4[3] = v16;

  return v4;
}

@end