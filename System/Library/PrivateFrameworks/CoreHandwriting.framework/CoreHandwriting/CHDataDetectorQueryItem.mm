@interface CHDataDetectorQueryItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDataDetectorQueryItem:(id)item;
- (id)description;
- (void)dealloc;
@end

@implementation CHDataDetectorQueryItem

- (void)dealloc
{
  estimatedBaseline = self->_estimatedBaseline;
  if (estimatedBaseline)
  {
    CGPathRelease(estimatedBaseline);
  }

  v4.receiver = self;
  v4.super_class = CHDataDetectorQueryItem;
  [(CHDataDetectorQueryItem *)&v4 dealloc];
}

- (id)description
{
  v28.receiver = self;
  v28.super_class = CHDataDetectorQueryItem;
  v3 = [(CHDataDetectorQueryItem *)&v28 description];
  v9 = objc_msgSend_strokeIdentifiers(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_dataDetectorResult(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_type(v15, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_stringByAppendingFormat_(v3, v22, @" strokeIdentifiers: %@, result type: %@", v23, v24, v25, v9, v21);

  return v26;
}

- (BOOL)isEqualToDataDetectorQueryItem:(id)item
{
  v87 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v5 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v85 = 138412290;
      v86 = itemCopy;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "item should be of class CHDataDetectorQueryItem: %@", &v85, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v85 = 138412290;
      v86 = itemCopy;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "item should be of class CHDataDetectorQueryItem: %@", &v85, 0xCu);
    }
  }

  if (itemCopy == self)
  {
    v83 = 1;
    goto LABEL_21;
  }

  v12 = objc_msgSend_strokeIdentifiers(itemCopy, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_strokeIdentifiers(self, v13, v14, v15, v16, v17);
  isEqual = objc_msgSend_isEqual_(v12, v19, v18, v20, v21, v22);

  if (isEqual && (objc_msgSend_dataDetectorResult(itemCopy, v24, v25, v26, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend_category(v29, v30, v31, v32, v33, v34), objc_msgSend_dataDetectorResult(self, v36, v37, v38, v39, v40), v41 = objc_claimAutoreleasedReturnValue(), v47 = v35 == objc_msgSend_category(v41, v42, v43, v44, v45, v46), v41, v29, v47) && (objc_msgSend_dataDetectorResult(itemCopy, v48, v49, v50, v51, v52), v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v53, v54, v55, v56, v57, v58), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend_dataDetectorResult(self, v60, v61, v62, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v65, v66, v67, v68, v69, v70), v71 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v59, v72, v71, v73, v74, v75), v71, v65, v59, v53, isEqualToString))
  {
    v82 = objc_msgSend_estimatedBaseline(itemCopy, v77, v78, v79, v80, v81);
    v83 = CGPathEqualToPath(v82, self->_estimatedBaseline);
  }

  else
  {
LABEL_19:
    v83 = 0;
  }

LABEL_21:

  return v83;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToDataDetectorQueryItem = objc_msgSend_isEqualToDataDetectorQueryItem_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToDataDetectorQueryItem;
  }

  else
  {

    return 0;
  }
}

@end