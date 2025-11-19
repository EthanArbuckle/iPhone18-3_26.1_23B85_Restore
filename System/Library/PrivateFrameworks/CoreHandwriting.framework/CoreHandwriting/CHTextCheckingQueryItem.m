@interface CHTextCheckingQueryItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextCheckingQueryItem:(id)a3;
- (BOOL)isEquivalentToTextCheckingQueryItem:(id)a3;
- (NSArray)replacementStrings;
- (_NSRange)replacementRange;
- (id)description;
- (void)dealloc;
@end

@implementation CHTextCheckingQueryItem

- (void)dealloc
{
  estimatedBaseline = self->_estimatedBaseline;
  if (estimatedBaseline)
  {
    CGPathRelease(estimatedBaseline);
  }

  v4.receiver = self;
  v4.super_class = CHTextCheckingQueryItem;
  [(CHTextCheckingQueryItem *)&v4 dealloc];
}

- (id)description
{
  v23.receiver = self;
  v23.super_class = CHTextCheckingQueryItem;
  v3 = [(CHTextCheckingQueryItem *)&v23 description];
  v9 = objc_msgSend_strokeIdentifiers(self, v4, v5, v6, v7, v8);
  textCheckingResultType = self->_textCheckingResultType;
  v16 = objc_msgSend_replacementStrings(self, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_stringByAppendingFormat_(v3, v17, @" strokeIdentifiers: %@, correction type = %d, replacement strings = %@", v18, v19, v20, v9, textCheckingResultType, v16);

  return v21;
}

- (BOOL)isEqualToTextCheckingQueryItem:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
      v54 = 138412290;
      v55 = v4;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "item should be of class CHTextCheckingQueryItem: %@", &v54, 0xCu);
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
      v54 = 138412290;
      v55 = v4;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "item should be of class CHTextCheckingQueryItem: %@", &v54, 0xCu);
    }
  }

  if (v4 == self)
  {
    v52 = 1;
    goto LABEL_21;
  }

  v12 = objc_msgSend_strokeIdentifiers(v4, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_strokeIdentifiers(self, v13, v14, v15, v16, v17);
  isEqual = objc_msgSend_isEqual_(v12, v19, v18, v20, v21, v22);

  if (isEqual && objc_msgSend_textCheckingResultType(v4, v24, v25, v26, v27, v28) == self->_textCheckingResultType && (objc_msgSend_replacementStrings(v4, v29, v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend_replacementStrings(self, v35, v36, v37, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend_isEqual_(v34, v41, v40, v42, v43, v44), v40, v34, v45))
  {
    v51 = objc_msgSend_estimatedBaseline(v4, v46, v47, v48, v49, v50);
    v52 = CGPathEqualToPath(v51, self->_estimatedBaseline);
  }

  else
  {
LABEL_19:
    v52 = 0;
  }

LABEL_21:

  return v52;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTextCheckingQueryItem = objc_msgSend_isEqualToTextCheckingQueryItem_(self, v5, v4, v6, v7, v8);

    return isEqualToTextCheckingQueryItem;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEquivalentToTextCheckingQueryItem:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
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
      v31 = 138412290;
      v32 = v4;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "item should be of class CHTextCheckingQueryItem: %@", &v31, 0xCu);
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
      v31 = 138412290;
      v32 = v4;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "item should be of class CHTextCheckingQueryItem: %@", &v31, 0xCu);
    }
  }

  if (v4 == self)
  {
    v29 = 1;
    goto LABEL_19;
  }

  v12 = objc_msgSend_strokeIdentifiers(v4, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_strokeIdentifiers(self, v13, v14, v15, v16, v17);
  isEqual = objc_msgSend_isEqual_(v12, v19, v18, v20, v21, v22);

  if (isEqual)
  {
    v29 = objc_msgSend_textCheckingResultType(v4, v24, v25, v26, v27, v28) == self->_textCheckingResultType;
  }

  else
  {
LABEL_17:
    v29 = 0;
  }

LABEL_19:

  return v29;
}

- (NSArray)replacementStrings
{
  v70[1] = *MEMORY[0x1E69E9840];
  textCheckingResultType = self->_textCheckingResultType;
  if (textCheckingResultType == 1)
  {
    textCheckingResult = self->_textCheckingResult;
    if (textCheckingResult)
    {
      if (self->_textCheckingResultGrammarDetailIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        v45 = objc_msgSend_grammarDetails(textCheckingResult, a2, v2, v3, v4, v5);
        v51 = objc_msgSend_count(v45, v46, v47, v48, v49, v50);
        textCheckingResultGrammarDetailIndex = self->_textCheckingResultGrammarDetailIndex;

        if (v51 > textCheckingResultGrammarDetailIndex)
        {
          v58 = objc_msgSend_grammarDetails(self->_textCheckingResult, v53, v54, v55, v56, v57);
          v63 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, self->_textCheckingResultGrammarDetailIndex, v60, v61, v62);
          v43 = objc_msgSend_objectForKey_(v63, v64, @"NSGrammarCorrections", v65, v66, v67);

          goto LABEL_12;
        }
      }
    }

    goto LABEL_11;
  }

  if (textCheckingResultType || (v8 = self->_textCheckingResult) == 0 || (objc_msgSend_replacementString(v8, a2, v2, v3, v4, v5), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
LABEL_11:
    v43 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v15 = objc_msgSend_alternativeStrings(self->_textCheckingResult, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_count(v15, v16, v17, v18, v19, v20) == 0;

  v27 = objc_msgSend_replacementString(self->_textCheckingResult, v22, v23, v24, v25, v26);
  v31 = v27;
  if (v21)
  {
    v70[0] = v27;
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, v70, 1, v29, v30);
  }

  else
  {
    v69 = v27;
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, &v69, 1, v29, v30);
    v38 = objc_msgSend_alternativeStrings(self->_textCheckingResult, v33, v34, v35, v36, v37);
    v43 = objc_msgSend_arrayByAddingObjectsFromArray_(v32, v39, v38, v40, v41, v42);
  }

LABEL_12:

  return v43;
}

- (_NSRange)replacementRange
{
  textCheckingResultType = self->_textCheckingResultType;
  if (textCheckingResultType == 1)
  {
    textCheckingResult = self->_textCheckingResult;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (!textCheckingResult || self->_textCheckingResultGrammarDetailIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v12 = self;
    v13 = objc_msgSend_grammarDetails(self->_textCheckingResult, a2, v2, v3, v4, v5);
    v19 = objc_msgSend_count(v13, v14, v15, v16, v17, v18);
    textCheckingResultGrammarDetailIndex = v12->_textCheckingResultGrammarDetailIndex;

    if (v19 > textCheckingResultGrammarDetailIndex)
    {
      v26 = objc_msgSend_grammarDetails(v12->_textCheckingResult, v21, v22, v23, v24, v25);
      v31 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, v12->_textCheckingResultGrammarDetailIndex, v28, v29, v30);
      v36 = objc_msgSend_objectForKey_(v31, v32, @"NSGrammarRange", v33, v34, v35);
      v42 = objc_msgSend_rangeValue(v36, v37, v38, v39, v40, v41);
      v44 = v43;

      v9 = v42;
      v10 = v44;
      goto LABEL_12;
    }

LABEL_11:
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  if (textCheckingResultType)
  {
    goto LABEL_11;
  }

  v8 = self->_textCheckingResult;

  v9 = objc_msgSend_range(v8, a2, v2, v3, v4, v5);
LABEL_12:
  result.length = v10;
  result.location = v9;
  return result;
}

@end