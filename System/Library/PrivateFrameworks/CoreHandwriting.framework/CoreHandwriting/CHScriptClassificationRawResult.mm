@interface CHScriptClassificationRawResult
+ (id)changeableTextMathScriptClassifications;
+ (id)validFallbackScriptClassificationsForNontext;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScriptClassificationRawResult:(id)a3;
- (BOOL)isValidScriptClassificationForShapeStroke;
- (CHScriptClassificationRawResult)initWithCoder:(id)a3;
- (CHScriptClassificationRawResult)initWithProbabilityByScriptClassifications:(id)a3;
- (double)mathScriptProbability;
- (id)fallbackScriptClassificationForWeakLabel;
- (id)fallbackTextScriptClassificationForNonText;
- (id)scriptClassificationAtIndex:(int64_t)a3;
- (id)scriptProbabilityAtIndex:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHScriptClassificationRawResult

- (CHScriptClassificationRawResult)initWithProbabilityByScriptClassifications:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CHScriptClassificationRawResult;
  v6 = [(CHScriptClassificationRawResult *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_probabilityByScriptClassifications, a3);
    v13 = objc_msgSend_probabilityByScriptClassifications(v7, v8, v9, v10, v11, v12);
    v18 = objc_msgSend_keysSortedByValueUsingComparator_(v13, v14, &unk_1EF1BC7F0, v15, v16, v17);
    orderedScriptClassification = v7->_orderedScriptClassification;
    v7->_orderedScriptClassification = v18;
  }

  return v7;
}

- (id)scriptClassificationAtIndex:(int64_t)a3
{
  v7 = objc_msgSend_orderedScriptClassification(self, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, a3, v9, v10, v11);

  return v12;
}

- (id)scriptProbabilityAtIndex:(int64_t)a3
{
  v8 = objc_msgSend_orderedScriptClassification(self, a2, a3, v3, v4, v5);
  v13 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, a3, v10, v11, v12);

  v19 = objc_msgSend_probabilityByScriptClassifications(self, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v13, v21, v22, v23);

  return v24;
}

- (double)mathScriptProbability
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = self->_probabilityByScriptClassifications;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v36, v40, 16, v5);
  if (v11)
  {
    v12 = *v37;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = objc_msgSend_integerValue(v15, v6, v7, v8, v9, v10, v36);
        v21 = objc_msgSend_objectForKeyedSubscript_(self->_probabilityByScriptClassifications, v17, v15, v18, v19, v20);
        objc_msgSend_floatValue(v21, v22, v23, v24, v25, v26);
        v28 = v27;

        isScriptClassificationMath = objc_msgSend_isScriptClassificationMath_(CHStrokeUtilities, v29, v16, v30, v31, v32);
        if (v16 == 11)
        {
          v34 = 1;
        }

        else
        {
          v34 = isScriptClassificationMath;
        }

        if (v34)
        {
          v13 = v13 + v28;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v36, v40, 16, v10);
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (id)fallbackScriptClassificationForWeakLabel
{
  for (i = 0; ; ++i)
  {
    v8 = objc_msgSend_orderedScriptClassification(self, a2, v2, v3, v4, v5);
    v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);

    if (v14 <= i)
    {
      break;
    }

    v20 = objc_msgSend_orderedScriptClassification(self, v15, v16, v17, v18, v19);
    v25 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, i, v22, v23, v24);

    if ((objc_msgSend_containsObject_(&unk_1EF1EC460, v26, v25, v27, v28, v29) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v25 = &unk_1EF1ECE50;
LABEL_6:

  return v25;
}

- (id)fallbackTextScriptClassificationForNonText
{
  v11 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, &unk_1EF1ECE68, v2, v3, v4, &unk_1EF1ECE80, &unk_1EF1ECE98, &unk_1EF1ECEB0, &unk_1EF1ECEC8, &unk_1EF1ECEE0, &unk_1EF1ECE50, &unk_1EF1ECEF8, &unk_1EF1ECF10, 0);
  for (i = 0; ; ++i)
  {
    v13 = objc_msgSend_orderedScriptClassification(self, v6, v7, v8, v9, v10);
    v19 = objc_msgSend_count(v13, v14, v15, v16, v17, v18);

    if (v19 <= i)
    {
      break;
    }

    v25 = objc_msgSend_orderedScriptClassification(self, v20, v21, v22, v23, v24);
    v30 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, i, v27, v28, v29);

    if (objc_msgSend_containsObject_(v11, v31, v30, v32, v33, v34))
    {
      goto LABEL_6;
    }
  }

  v30 = &unk_1EF1ECE50;
LABEL_6:

  return v30;
}

- (BOOL)isValidScriptClassificationForShapeStroke
{
  v6 = objc_msgSend_scriptClassificationAtIndex_(self, a2, 0, v2, v3, v4);
  v12 = objc_msgSend_integerValue(v6, v7, v8, v9, v10, v11);

  if (!objc_msgSend_isScriptClassificationMath_(CHStrokeUtilities, v13, v12, v14, v15, v16))
  {
    return 0;
  }

  if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 0xE)
  {
    return 1;
  }

  v23 = objc_msgSend_probabilityByScriptClassifications(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_objectForKey_(v23, v24, &unk_1EF1ECF28, v25, v26, v27);
  objc_msgSend_floatValue(v28, v29, v30, v31, v32, v33);
  v35 = v34;

  v41 = objc_msgSend_probabilityByScriptClassifications(self, v36, v37, v38, v39, v40);
  v46 = objc_msgSend_objectForKey_(v41, v42, &unk_1EF1ECE38, v43, v44, v45);
  objc_msgSend_floatValue(v46, v47, v48, v49, v50, v51);
  v53 = v52;

  return (v35 + v53) > 0.9 && v35 > 0.5;
}

+ (id)validFallbackScriptClassificationsForNontext
{
  if (qword_1EA84CE70 == -1)
  {
    v3 = qword_1EA84CE68;
  }

  else
  {
    dispatch_once(&qword_1EA84CE70, &unk_1EF1BC810);
    v3 = qword_1EA84CE68;
  }

  return v3;
}

+ (id)changeableTextMathScriptClassifications
{
  if (qword_1EA84CE80 == -1)
  {
    v3 = qword_1EA84CE78;
  }

  else
  {
    dispatch_once(&qword_1EA84CE80, &unk_1EF1BC830);
    v3 = qword_1EA84CE78;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v9 = objc_msgSend_probabilityByScriptClassifications(self, v4, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(v13, v10, v9, @"scriptClassificationRawResultsProbability", v11, v12);
}

- (CHScriptClassificationRawResult)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, &v25, 3, v7, v8);
  v14 = objc_msgSend_setWithArray_(v5, v10, v9, v11, v12, v13, v25, v26);
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v15, v14, @"scriptClassificationRawResultsProbability", v16, v17);

  v23 = objc_msgSend_initWithProbabilityByScriptClassifications_(self, v19, v18, v20, v21, v22);
  return v23;
}

- (BOOL)isEqualToScriptClassificationRawResult:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self == v4)
  {
    isEqualToArray = 1;
    goto LABEL_11;
  }

  probabilityByScriptClassifications = self->_probabilityByScriptClassifications;
  v12 = objc_msgSend_probabilityByScriptClassifications(v4, v5, v6, v7, v8, v9);
  v18 = v12;
  if (probabilityByScriptClassifications == v12)
  {
  }

  else
  {
    v19 = self->_probabilityByScriptClassifications;
    v20 = objc_msgSend_probabilityByScriptClassifications(v10, v13, v14, v15, v16, v17);
    LODWORD(v19) = objc_msgSend_isEqualToDictionary_(v19, v21, v20, v22, v23, v24);

    if (!v19)
    {
      isEqualToArray = 0;
      goto LABEL_11;
    }
  }

  orderedScriptClassification = self->_orderedScriptClassification;
  v37 = objc_msgSend_orderedScriptClassification(v10, v25, v26, v27, v28, v29);
  if (orderedScriptClassification == v37)
  {
    isEqualToArray = 1;
  }

  else
  {
    v38 = self->_orderedScriptClassification;
    v39 = objc_msgSend_orderedScriptClassification(v10, v32, v33, v34, v35, v36);
    isEqualToArray = objc_msgSend_isEqualToArray_(v38, v40, v39, v41, v42, v43);
  }

LABEL_11:
  return isEqualToArray;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToScriptClassificationRawResult = objc_msgSend_isEqualToScriptClassificationRawResult_(self, v5, v4, v6, v7, v8);

    return isEqualToScriptClassificationRawResult;
  }

  else
  {

    return 0;
  }
}

@end