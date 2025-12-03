@interface CHPrefixQueryItem
- (BOOL)isEqualToPrefixQueryItem:(id)item;
- (void)dealloc;
@end

@implementation CHPrefixQueryItem

- (void)dealloc
{
  estimatedBaseline = self->_estimatedBaseline;
  if (estimatedBaseline)
  {
    CGPathRelease(estimatedBaseline);
  }

  v4.receiver = self;
  v4.super_class = CHPrefixQueryItem;
  [(CHPrefixQueryItem *)&v4 dealloc];
}

- (BOOL)isEqualToPrefixQueryItem:(id)item
{
  v51 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_18;
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
      v49 = 138412290;
      v50 = itemCopy;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "item should be of class CHPrefixQueryItem: %@", &v49, 0xCu);
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
      v49 = 138412290;
      v50 = itemCopy;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "item should be of class CHPrefixQueryItem: %@", &v49, 0xCu);
    }
  }

  if (itemCopy == self)
  {
    v47 = 1;
    goto LABEL_20;
  }

  v12 = objc_msgSend_strokeIdentifiers(itemCopy, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_strokeIdentifiers(self, v13, v14, v15, v16, v17);
  isEqual = objc_msgSend_isEqual_(v12, v19, v18, v20, v21, v22);

  if (isEqual && (objc_msgSend_queryResult(itemCopy, v24, v25, v26, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_queryResult(self, v30, v31, v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v29, v36, v35, v37, v38, v39), v35, v29, isEqualToString))
  {
    v46 = objc_msgSend_estimatedBaseline(itemCopy, v41, v42, v43, v44, v45);
    v47 = CGPathEqualToPath(v46, self->_estimatedBaseline);
  }

  else
  {
LABEL_18:
    v47 = 0;
  }

LABEL_20:

  return v47;
}

@end