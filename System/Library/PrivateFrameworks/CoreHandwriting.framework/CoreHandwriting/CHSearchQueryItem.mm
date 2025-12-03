@interface CHSearchQueryItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSearchQueryItem:(id)item;
- (CGRect)boundsForStrokeIdentifier:(id)identifier;
- (id)description;
@end

@implementation CHSearchQueryItem

- (id)description
{
  v16.receiver = self;
  v16.super_class = CHSearchQueryItem;
  v3 = [(CHSearchQueryItem *)&v16 description];
  v9 = objc_msgSend_strokeIdentifiers(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_stringByAppendingFormat_(v3, v10, @" strokeIdentifiers: %@", v11, v12, v13, v9);

  return v14;
}

- (BOOL)isEqualToSearchQueryItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy)
  {
    isEqual = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

LABEL_11:
    if (qword_1EA84DC48 == -1)
    {
      v17 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v17 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
LABEL_14:

        if (itemCopy != self)
        {
          goto LABEL_5;
        }

LABEL_15:
        isEqual = 1;
        goto LABEL_16;
      }
    }

    v19 = 138412290;
    v20 = itemCopy;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_FAULT, "item should be of class CHSearchQueryItem: %@", &v19, 0xCu);
    goto LABEL_14;
  }

  if (qword_1EA84DC48 == -1)
  {
    v16 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v16 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    v19 = 138412290;
    v20 = itemCopy;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "item should be of class CHSearchQueryItem: %@", &v19, 0xCu);
  }

LABEL_10:

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (itemCopy == self)
  {
    goto LABEL_15;
  }

LABEL_5:
  v10 = objc_msgSend_strokeIdentifiers(itemCopy, v5, v6, v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v10, v11, self->_strokeIdentifiers, v12, v13, v14);

LABEL_16:
  return isEqual;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToSearchQueryItem = objc_msgSend_isEqualToSearchQueryItem_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToSearchQueryItem;
  }

  else
  {

    return 0;
  }
}

- (CGRect)boundsForStrokeIdentifier:(id)identifier
{
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_strokeBoundsByIdentifier, a2, identifier, v3, v4, v5);
  v12 = v6;
  if (v6)
  {
    objc_msgSend_ch_CGRectValue(v6, v7, v8, v9, v10, v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x1E695F050];
    v16 = *(MEMORY[0x1E695F050] + 8);
    v18 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end