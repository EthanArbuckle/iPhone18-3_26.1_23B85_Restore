@interface CHTextInputQueryItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextInputQueryItem:(id)a3;
- (id)description;
@end

@implementation CHTextInputQueryItem

- (id)description
{
  v7 = objc_msgSend_correctionResult(self, a2, v2, v3, v4, v5);
  v18 = objc_msgSend_error(v7, v8, v9, v10, v11, v12);
  if (v18)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_msgSend_correctionResult(self, v13, v14, v15, v16, v17);
    v26 = objc_msgSend_error(v20, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_localizedDescription(v26, v27, v28, v29, v30, v31);
    v100 = objc_msgSend_stringWithFormat_(v19, v33, @", error: %@", v34, v35, v36, v32);
  }

  else
  {
    v100 = &stru_1EF1C0318;
  }

  v101.receiver = self;
  v101.super_class = CHTextInputQueryItem;
  v99 = [(CHTextInputQueryItem *)&v101 description];
  v42 = objc_msgSend_correctionResult(self, v37, v38, v39, v40, v41);
  v48 = objc_msgSend_textResult(v42, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_topTranscription(v48, v49, v50, v51, v52, v53);
  v60 = v54;
  if (v54)
  {
    v61 = v54;
  }

  else
  {
    v61 = &stru_1EF1C0318;
  }

  v62 = objc_msgSend_itemIdentifier(self, v55, v56, v57, v58, v59);
  v68 = objc_msgSend_itemStableIdentifier(self, v63, v64, v65, v66, v67);
  v74 = objc_msgSend_correctionResult(self, v69, v70, v71, v72, v73);
  v80 = objc_msgSend_resultType(v74, v75, v76, v77, v78, v79);
  v86 = objc_msgSend_strokeIdentifiers(self, v81, v82, v83, v84, v85);
  v92 = objc_msgSend_count(v86, v87, v88, v89, v90, v91);
  v97 = objc_msgSend_stringByAppendingFormat_(v99, v93, @" text: '%@', itemID: %@, stableItemID: %@, type: %ld, strokes: %ld%@", v94, v95, v96, v61, v62, v68, v80, v92, v100);

  return v97;
}

- (BOOL)isEqualToTextInputQueryItem:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    isEqual = 0;
    goto LABEL_18;
  }

  if (v4 == self)
  {
    isEqual = 1;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EA84DC48 == -1)
    {
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }
    }

    v32 = 138412290;
    v33 = v5;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "item should be of class CHTextInputQueryItem: %@", &v32, 0xCu);
    goto LABEL_7;
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EA84DC48 == -1)
    {
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }
    }

    v32 = 138412290;
    v33 = v5;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_FAULT, "item should be of class CHTextInputQueryItem: %@", &v32, 0xCu);
    goto LABEL_12;
  }

LABEL_13:
  v13 = objc_msgSend_strokeIdentifiers(v5, v7, v8, v9, v10, v11);
  isEqualToArray = objc_msgSend_isEqualToArray_(v13, v14, self->_strokeIdentifiers, v15, v16, v17);

  correctionResult = self->_correctionResult;
  isEqual = (correctionResult == 0) & isEqualToArray;
  if (correctionResult && (isEqualToArray & 1) != 0)
  {
    v26 = objc_msgSend_correctionResult(v5, v19, v20, v21, v22, v23);
    isEqual = objc_msgSend_isEqual_(v26, v27, self->_correctionResult, v28, v29, v30);
  }

LABEL_18:

  return isEqual;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTextInputQueryItem = objc_msgSend_isEqualToTextInputQueryItem_(self, v5, v4, v6, v7, v8);

    return isEqualToTextInputQueryItem;
  }

  else
  {

    return 0;
  }
}

@end