@interface CHSynthesisModelHashes
+ (id)modelHashesWithLatinHash:(id)hash zhJaHash:(id)jaHash koHash:(id)koHash;
- (BOOL)isEqual:(id)equal;
- (CHSynthesisModelHashes)initWithCoder:(id)coder;
- (CHSynthesisModelHashes)initWithLatinHash:(id)hash zhJaHash:(id)jaHash koHash:(id)koHash;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateHashKo:(id)ko;
- (void)updateHashLatin:(id)latin;
- (void)updateHashZhJa:(id)ja;
@end

@implementation CHSynthesisModelHashes

+ (id)modelHashesWithLatinHash:(id)hash zhJaHash:(id)jaHash koHash:(id)koHash
{
  hashCopy = hash;
  jaHashCopy = jaHash;
  koHashCopy = koHash;
  v10 = [CHSynthesisModelHashes alloc];
  v13 = objc_msgSend_initWithLatinHash_zhJaHash_koHash_(v10, v11, hashCopy, jaHashCopy, koHashCopy, v12);

  return v13;
}

- (CHSynthesisModelHashes)initWithLatinHash:(id)hash zhJaHash:(id)jaHash koHash:(id)koHash
{
  hashCopy = hash;
  jaHashCopy = jaHash;
  koHashCopy = koHash;
  v34.receiver = self;
  v34.super_class = CHSynthesisModelHashes;
  v16 = [(CHSynthesisModelHashes *)&v34 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(hashCopy, v11, v12, v13, v14, v15);
    latin = v16->_latin;
    v16->_latin = v17;

    v24 = objc_msgSend_copy(jaHashCopy, v19, v20, v21, v22, v23);
    zhJa = v16->_zhJa;
    v16->_zhJa = v24;

    v31 = objc_msgSend_copy(koHashCopy, v26, v27, v28, v29, v30);
    ko = v16->_ko;
    v16->_ko = v31;
  }

  return v16;
}

- (void)updateHashLatin:(id)latin
{
  latinCopy = latin;
  v9 = objc_msgSend_copy(latinCopy, v4, v5, v6, v7, v8);
  latin = self->_latin;
  self->_latin = v9;
}

- (void)updateHashZhJa:(id)ja
{
  jaCopy = ja;
  v9 = objc_msgSend_copy(jaCopy, v4, v5, v6, v7, v8);
  zhJa = self->_zhJa;
  self->_zhJa = v9;
}

- (void)updateHashKo:(id)ko
{
  koCopy = ko;
  v9 = objc_msgSend_copy(koCopy, v4, v5, v6, v7, v8);
  ko = self->_ko;
  self->_ko = v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSynthesisModelHashes alloc];
  v10 = objc_msgSend_latin(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_zhJa(self, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_ko(self, v17, v18, v19, v20, v21);
  v25 = objc_msgSend_initWithLatinHash_zhJaHash_koHash_(v4, v23, v10, v16, v22, v24);

  return v25;
}

- (CHSynthesisModelHashes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"synthesisModelHashLAtin", v7, v8);
  latin = self->_latin;
  self->_latin = v9;

  v11 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"synthesisModelHashZhJa", v13, v14);
  zhJa = self->_zhJa;
  self->_zhJa = v15;

  v17 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"synthesisModelHashKo", v19, v20);
  ko = self->_ko;
  self->_ko = v21;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->_latin, @"synthesisModelHashLAtin", v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_zhJa, @"synthesisModelHashZhJa", v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, self->_ko, @"synthesisModelHashKo", v11, v12);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v41 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v11 = objc_msgSend_latin(self, v6, v7, v8, v9, v10);
      v17 = objc_msgSend_latin(v5, v12, v13, v14, v15, v16);
      v23 = v17;
      if (v11 == v17)
      {
      }

      else
      {
        v24 = objc_msgSend_latin(self, v18, v19, v20, v21, v22);
        v30 = objc_msgSend_latin(v5, v25, v26, v27, v28, v29);
        isEqualToString = objc_msgSend_isEqualToString_(v24, v31, v30, v32, v33, v34);

        if (!isEqualToString)
        {
          goto LABEL_11;
        }
      }

      v42 = objc_msgSend_zhJa(self, v36, v37, v38, v39, v40);
      v48 = objc_msgSend_zhJa(v5, v43, v44, v45, v46, v47);
      v54 = v48;
      if (v42 == v48)
      {
      }

      else
      {
        v55 = objc_msgSend_zhJa(self, v49, v50, v51, v52, v53);
        v61 = objc_msgSend_zhJa(v5, v56, v57, v58, v59, v60);
        v66 = objc_msgSend_isEqualToString_(v55, v62, v61, v63, v64, v65);

        if (!v66)
        {
LABEL_11:
          v41 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      v72 = objc_msgSend_ko(self, v67, v68, v69, v70, v71);
      v83 = objc_msgSend_ko(v5, v73, v74, v75, v76, v77);
      if (v72 == v83)
      {
        v41 = 1;
      }

      else
      {
        v84 = objc_msgSend_ko(self, v78, v79, v80, v81, v82);
        v90 = objc_msgSend_ko(v5, v85, v86, v87, v88, v89);
        v41 = objc_msgSend_isEqualToString_(v84, v91, v90, v92, v93, v94);
      }

      goto LABEL_17;
    }

    v41 = 0;
  }

LABEL_18:

  return v41;
}

@end