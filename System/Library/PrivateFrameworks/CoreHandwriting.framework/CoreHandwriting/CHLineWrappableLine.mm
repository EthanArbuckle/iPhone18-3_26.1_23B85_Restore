@interface CHLineWrappableLine
- (CHLineWrappableLine)initWithCoder:(id)coder;
- (CHLineWrappableLine)initWithQuad:(id)quad text:(id)text locale:(id)locale;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHLineWrappableLine

- (CHLineWrappableLine)initWithQuad:(id)quad text:(id)text locale:(id)locale
{
  quadCopy = quad;
  textCopy = text;
  localeCopy = locale;
  v22.receiver = self;
  v22.super_class = CHLineWrappableLine;
  v12 = [(CHLineWrappableLine *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_boundingQuad, quad);
    *&v13->_layoutDirection = xmmword_1839CDAD0;
    objc_storeStrong(&v13->_locale, locale);
    objc_storeStrong(&v13->_text, text);
    v13->_textRegionType = 2;
    v19 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v14, v15, v16, v17, v18);
    uuid = v13->_uuid;
    v13->_uuid = v19;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = objc_msgSend_boundingQuad(self, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"boundingQuad", v12, v13);

  v19 = objc_msgSend_layoutDirection(self, v14, v15, v16, v17, v18);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v20, v19, @"layoutDirection", v21, v22);
  v28 = objc_msgSend_lineWrappingType(self, v23, v24, v25, v26, v27);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v29, v28, @"lineWrappingType", v30, v31);
  v37 = objc_msgSend_locale(self, v32, v33, v34, v35, v36);
  objc_msgSend_encodeObject_forKey_(coderCopy, v38, v37, @"locale", v39, v40);

  v46 = objc_msgSend_text(self, v41, v42, v43, v44, v45);
  objc_msgSend_encodeObject_forKey_(coderCopy, v47, v46, @"text", v48, v49);

  v55 = objc_msgSend_textRegionType(self, v50, v51, v52, v53, v54);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v56, v55, @"textRegionType", v57, v58);
  v67 = objc_msgSend_uuid(self, v59, v60, v61, v62, v63);
  objc_msgSend_encodeObject_forKey_(coderCopy, v64, v67, @"uuid", v65, v66);
}

- (CHLineWrappableLine)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = CHLineWrappableLine;
  v5 = [(CHLineWrappableLine *)&v43 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"boundingQuad", v8, v9);
    boundingQuad = v5->_boundingQuad;
    v5->_boundingQuad = v10;

    v5->_layoutDirection = objc_msgSend_decodeIntegerForKey_(coderCopy, v12, @"layoutDirection", v13, v14, v15);
    v5->_lineWrappingType = objc_msgSend_decodeIntegerForKey_(coderCopy, v16, @"lineWrappingType", v17, v18, v19);
    v20 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"locale", v22, v23);
    locale = v5->_locale;
    v5->_locale = v24;

    v26 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v27, v26, @"text", v28, v29);
    text = v5->_text;
    v5->_text = v30;

    v5->_textRegionType = objc_msgSend_decodeIntegerForKey_(coderCopy, v32, @"textRegionType", v33, v34, v35);
    v36 = objc_opt_class();
    v40 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"uuid", v38, v39);
    uuid = v5->_uuid;
    v5->_uuid = v40;
  }

  return v5;
}

@end