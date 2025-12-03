@interface DURequestContentTypeObjC
- (DURequestContentTypeObjC)initWithOptions:(unint64_t)options;
- (id)_typesForOptions:(unint64_t)options;
@end

@implementation DURequestContentTypeObjC

- (id)_typesForOptions:(unint64_t)options
{
  optionsCopy = options;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, options, v3, v4);
  if (optionsCopy)
  {
    v16 = objc_msgSend_languageTag(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
    objc_msgSend_addObject_(v10, v17, v16, v18, v19);

    if ((optionsCopy & 2) == 0)
    {
LABEL_3:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((optionsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  v20 = objc_msgSend_wikiDataTopic(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v21, v20, v22, v23);

  if ((optionsCopy & 4) == 0)
  {
LABEL_4:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v24 = objc_msgSend_date(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v25, v24, v26, v27);

  if ((optionsCopy & 8) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v28 = objc_msgSend_address(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v29, v28, v30, v31);

  if ((optionsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v32 = objc_msgSend_link(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v33, v32, v34, v35);

  if ((optionsCopy & 0x20) == 0)
  {
LABEL_7:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v36 = objc_msgSend_phoneNumber(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v37, v36, v38, v39);

  if ((optionsCopy & 0x40) == 0)
  {
LABEL_8:
    if ((optionsCopy & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v40 = objc_msgSend_navigationTitle(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v41, v40, v42, v43);

  if ((optionsCopy & 0x80) == 0)
  {
LABEL_9:
    if ((optionsCopy & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v44 = objc_msgSend_userInterfaceUnderstanding(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v45, v44, v46, v47);

  if ((optionsCopy & 0x100) == 0)
  {
LABEL_10:
    if ((optionsCopy & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v48 = objc_msgSend_category(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v49, v48, v50, v51);

  if ((optionsCopy & 0x200) == 0)
  {
LABEL_11:
    if ((optionsCopy & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v52 = objc_msgSend_poem(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v53, v52, v54, v55);

  if ((optionsCopy & 0x400) == 0)
  {
LABEL_12:
    if ((optionsCopy & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v56 = objc_msgSend_posTags(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v57, v56, v58, v59);

  if ((optionsCopy & 0x800) == 0)
  {
LABEL_13:
    if ((optionsCopy & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v60 = objc_msgSend_foundInEvent(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v61, v60, v62, v63);

  if ((optionsCopy & 0x1000) != 0)
  {
LABEL_14:
    v11 = objc_msgSend_foundInEventClassification(_TtC21DocumentUnderstanding20DURequestContentType, v6, v7, v8, v9);
    objc_msgSend_addObject_(v10, v12, v11, v13, v14);
  }

LABEL_15:

  return v10;
}

- (DURequestContentTypeObjC)initWithOptions:(unint64_t)options
{
  v18.receiver = self;
  v18.super_class = DURequestContentTypeObjC;
  v4 = [(DURequestContentTypeObjC *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = [_TtC21DocumentUnderstanding20DURequestContentType alloc];
    v10 = objc_msgSend__typesForOptions_(v5, v7, options, v8, v9);
    v14 = objc_msgSend_initWithAbilitiesToUnion_(v6, v11, v10, v12, v13);
    underlyingRequestType = v5->_underlyingRequestType;
    v5->_underlyingRequestType = v14;

    v16 = v5;
  }

  return v5;
}

@end