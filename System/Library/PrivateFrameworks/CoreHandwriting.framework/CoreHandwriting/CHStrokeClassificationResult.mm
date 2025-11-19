@interface CHStrokeClassificationResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToStrokeClassificationResult:(id)a3;
- (BOOL)isHighConfidenceForStrokesIdentifiers:(id)a3 scripts:(id)a4 confidenceThreshold:(double)a5;
- (CHStrokeClassificationResult)init;
- (CHStrokeClassificationResult)initWithCoder:(id)a3;
- (CHStrokeClassificationResult)initWithStrokeClassificationsByStrokeIdentifier:(id)a3 scriptClassificationsByStrokeIdentifier:(id)a4 scriptClassificationRawResultsByStrokeIdentifier:(id)a5 substrokesByStrokeIdentifier:(id)a6 midYPositionByStrokeIdentifier:(id)a7 nontextCandidates:(id)a8;
- (NSSet)textStrokeIdentifiers;
- (double)scriptClassificationScoreForStrokeIdentifier:(id)a3 script:(id)a4;
- (id)description;
- (id)differenceFromResult:(id)a3 removedStrokeIds:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)subResultForStrokeIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHStrokeClassificationResult

- (CHStrokeClassificationResult)init
{
  v10.receiver = self;
  v10.super_class = CHStrokeClassificationResult;
  v2 = [(CHStrokeClassificationResult *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
    strokeClassificationsByStrokeIdentifier = v2->_strokeClassificationsByStrokeIdentifier;
    v2->_strokeClassificationsByStrokeIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF20]);
    substrokesByStrokeIdentifier = v2->_substrokesByStrokeIdentifier;
    v2->_substrokesByStrokeIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    nontextCandidates = v2->_nontextCandidates;
    v2->_nontextCandidates = v7;
  }

  return v2;
}

- (CHStrokeClassificationResult)initWithStrokeClassificationsByStrokeIdentifier:(id)a3 scriptClassificationsByStrokeIdentifier:(id)a4 scriptClassificationRawResultsByStrokeIdentifier:(id)a5 substrokesByStrokeIdentifier:(id)a6 midYPositionByStrokeIdentifier:(id)a7 nontextCandidates:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v64.receiver = self;
  v64.super_class = CHStrokeClassificationResult;
  v25 = [(CHStrokeClassificationResult *)&v64 init];
  if (v25)
  {
    v26 = objc_msgSend_copy(v14, v20, v21, v22, v23, v24);
    strokeClassificationsByStrokeIdentifier = v25->_strokeClassificationsByStrokeIdentifier;
    v25->_strokeClassificationsByStrokeIdentifier = v26;

    v33 = objc_msgSend_copy(v15, v28, v29, v30, v31, v32);
    scriptClassificationsByStrokeIdentifier = v25->_scriptClassificationsByStrokeIdentifier;
    v25->_scriptClassificationsByStrokeIdentifier = v33;

    v40 = objc_msgSend_copy(v16, v35, v36, v37, v38, v39);
    scriptClassificationRawResultsByStrokeIdentifier = v25->_scriptClassificationRawResultsByStrokeIdentifier;
    v25->_scriptClassificationRawResultsByStrokeIdentifier = v40;

    v47 = objc_msgSend_copy(v18, v42, v43, v44, v45, v46);
    midYPositionByStrokeIdentifier = v25->_midYPositionByStrokeIdentifier;
    v25->_midYPositionByStrokeIdentifier = v47;

    v54 = objc_msgSend_copy(v17, v49, v50, v51, v52, v53);
    substrokesByStrokeIdentifier = v25->_substrokesByStrokeIdentifier;
    v25->_substrokesByStrokeIdentifier = v54;

    v61 = objc_msgSend_copy(v19, v56, v57, v58, v59, v60);
    nontextCandidates = v25->_nontextCandidates;
    v25->_nontextCandidates = v61;
  }

  return v25;
}

- (id)description
{
  v34.receiver = self;
  v34.super_class = CHStrokeClassificationResult;
  v3 = [(CHStrokeClassificationResult *)&v34 description];
  v9 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_textStrokeIdentifiers(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);
  v32 = objc_msgSend_stringByAppendingFormat_(v3, v28, @" Strokes: %ld, text strokes: %ld", v29, v30, v31, v15, v27);

  return v32;
}

- (NSSet)textStrokeIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_textStrokeIdentifiers)
  {
    v8 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v2, v3, v4, v5, v6, v7);
    v13 = objc_msgSend_keysOfEntriesPassingTest_(v8, v9, &unk_1EF1BC850, v10, v11, v12);

    textStrokeIdentifiers = v2->_textStrokeIdentifiers;
    v2->_textStrokeIdentifiers = v13;
  }

  objc_sync_exit(v2);

  v15 = v2->_textStrokeIdentifiers;

  return v15;
}

- (BOOL)isEquivalentToStrokeClassificationResult:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v4, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);

  if (v16 == v28)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v34 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v29, v30, v31, v32, v33, 0);
    v40 = objc_msgSend_allKeys(v34, v35, v36, v37, v38, v39);

    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v82, v86, 16, v42);
    if (v48)
    {
      v49 = *v83;
      while (2)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v83 != v49)
          {
            objc_enumerationMutation(v40);
          }

          v51 = *(*(&v82 + 1) + 8 * i);
          v52 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v43, v44, v45, v46, v47);
          v57 = objc_msgSend_objectForKey_(v52, v53, v51, v54, v55, v56);

          v63 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v4, v58, v59, v60, v61, v62);
          v68 = objc_msgSend_objectForKey_(v63, v64, v51, v65, v66, v67);

          v74 = objc_msgSend_integerValue(v57, v69, v70, v71, v72, v73);
          LOBYTE(v74) = v74 == objc_msgSend_integerValue(v68, v75, v76, v77, v78, v79);

          if ((v74 & 1) == 0)
          {
            v80 = 0;
            goto LABEL_13;
          }
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v82, v86, 16, v47);
        if (v48)
        {
          continue;
        }

        break;
      }
    }

    v80 = 1;
LABEL_13:
  }

  else
  {
    v80 = 0;
  }

  return v80;
}

- (void)encodeWithCoder:(id)a3
{
  v59 = a3;
  v4 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(v59, v11, v10, @"strokeClassificationsByStrokeIdentifier", v12, v13);

  v19 = objc_msgSend_scriptClassificationsByStrokeIdentifier(self, v14, v15, v16, v17, v18);
  objc_msgSend_encodeObject_forKey_(v59, v20, v19, @"scriptClassificationsByStrokeIdentifier", v21, v22);

  v28 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(self, v23, v24, v25, v26, v27);
  objc_msgSend_encodeObject_forKey_(v59, v29, v28, @"scriptClassificationRawResultsByStrokeIdentifier", v30, v31);

  v37 = objc_msgSend_midYPositionByStrokeIdentifier(self, v32, v33, v34, v35, v36);
  objc_msgSend_encodeObject_forKey_(v59, v38, v37, @"midYPositionByStrokeIdentifier", v39, v40);

  v46 = objc_msgSend_substrokesByStrokeIdentifier(self, v41, v42, v43, v44, v45);
  objc_msgSend_encodeObject_forKey_(v59, v47, v46, @"substrokesByStrokeIdentifier", v48, v49);

  v55 = objc_msgSend_nontextCandidates(self, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(v59, v56, v55, @"nontextCandidates", v57, v58);

  objc_autoreleasePoolPop(v4);
}

- (CHStrokeClassificationResult)initWithCoder:(id)a3
{
  v101[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E695DFD8];
  v101[0] = objc_opt_class();
  v101[1] = objc_opt_class();
  v101[2] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v101, 3, v7, v8);
  v14 = objc_msgSend_setWithArray_(v5, v10, v9, v11, v12, v13);
  v15 = self;
  v95 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v16, v14, @"strokeClassificationsByStrokeIdentifier", v17, v18);

  v19 = MEMORY[0x1E695DFD8];
  v100[0] = objc_opt_class();
  v100[1] = objc_opt_class();
  v100[2] = objc_opt_class();
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v100, 3, v21, v22);
  v28 = objc_msgSend_setWithArray_(v19, v24, v23, v25, v26, v27);
  v32 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v29, v28, @"scriptClassificationsByStrokeIdentifier", v30, v31);

  v33 = MEMORY[0x1E695DFD8];
  v99[0] = objc_opt_class();
  v99[1] = objc_opt_class();
  v99[2] = objc_opt_class();
  v99[3] = objc_opt_class();
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v34, v99, 4, v35, v36);
  v42 = objc_msgSend_setWithArray_(v33, v38, v37, v39, v40, v41);
  v46 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v43, v42, @"substrokesByStrokeIdentifier", v44, v45);

  v47 = MEMORY[0x1E695DFD8];
  v98[0] = objc_opt_class();
  v98[1] = objc_opt_class();
  v98[2] = objc_opt_class();
  v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v48, v98, 3, v49, v50);
  v56 = objc_msgSend_setWithArray_(v47, v52, v51, v53, v54, v55);
  v60 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v57, v56, @"scriptClassificationRawResultsByStrokeIdentifier", v58, v59);

  v61 = MEMORY[0x1E695DFD8];
  v97[0] = objc_opt_class();
  v97[1] = objc_opt_class();
  v97[2] = objc_opt_class();
  v65 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v62, v97, 3, v63, v64);
  v70 = objc_msgSend_setWithArray_(v61, v66, v65, v67, v68, v69);
  v74 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v71, v70, @"midYPositionByStrokeIdentifier", v72, v73);

  v75 = MEMORY[0x1E695E0F8];
  if (v74)
  {
    v75 = v74;
  }

  v76 = v75;

  v77 = MEMORY[0x1E695DFD8];
  v96[0] = objc_opt_class();
  v96[1] = objc_opt_class();
  v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v78, v96, 2, v79, v80);
  v86 = objc_msgSend_setWithArray_(v77, v82, v81, v83, v84, v85);
  v90 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v87, v86, @"nontextCandidates", v88, v89);

  v92 = objc_msgSend_initWithStrokeClassificationsByStrokeIdentifier_scriptClassificationsByStrokeIdentifier_scriptClassificationRawResultsByStrokeIdentifier_substrokesByStrokeIdentifier_midYPositionByStrokeIdentifier_nontextCandidates_(v15, v91, v95, v32, v60, v46, v76, v90);
  objc_autoreleasePoolPop(context);

  return v92;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v11 = v5;
    if (self)
    {
      if (self != v5)
      {
        strokeClassificationsByStrokeIdentifier = self->_strokeClassificationsByStrokeIdentifier;
        v13 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v5, v6, v7, v8, v9, v10);
        v19 = v13;
        if (strokeClassificationsByStrokeIdentifier == v13)
        {
        }

        else
        {
          v20 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v11, v14, v15, v16, v17, v18);
          isEqual = objc_msgSend_isEqual_(v20, v21, self->_strokeClassificationsByStrokeIdentifier, v22, v23, v24);

          if (!isEqual)
          {
            goto LABEL_24;
          }
        }

        scriptClassificationsByStrokeIdentifier = self->_scriptClassificationsByStrokeIdentifier;
        v32 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v11, v26, v27, v28, v29, v30);
        v38 = v32;
        if (scriptClassificationsByStrokeIdentifier == v32)
        {
        }

        else
        {
          v39 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v11, v33, v34, v35, v36, v37);
          v44 = objc_msgSend_isEqual_(v39, v40, self->_scriptClassificationsByStrokeIdentifier, v41, v42, v43);

          if (!v44)
          {
            goto LABEL_24;
          }
        }

        scriptClassificationRawResultsByStrokeIdentifier = self->_scriptClassificationRawResultsByStrokeIdentifier;
        v51 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v11, v45, v46, v47, v48, v49);
        v57 = v51;
        if (scriptClassificationRawResultsByStrokeIdentifier == v51)
        {
        }

        else
        {
          v58 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v11, v52, v53, v54, v55, v56);
          v63 = objc_msgSend_isEqual_(v58, v59, self->_scriptClassificationRawResultsByStrokeIdentifier, v60, v61, v62);

          if (!v63)
          {
            goto LABEL_24;
          }
        }

        substrokesByStrokeIdentifier = self->_substrokesByStrokeIdentifier;
        v70 = objc_msgSend_substrokesByStrokeIdentifier(v11, v64, v65, v66, v67, v68);
        v76 = v70;
        if (substrokesByStrokeIdentifier == v70)
        {

          goto LABEL_22;
        }

        v77 = objc_msgSend_substrokesByStrokeIdentifier(v11, v71, v72, v73, v74, v75);
        v82 = objc_msgSend_isEqual_(v77, v78, self->_substrokesByStrokeIdentifier, v79, v80, v81);

        if (v82)
        {
LABEL_22:
          midYPositionByStrokeIdentifier = self->_midYPositionByStrokeIdentifier;
          v89 = objc_msgSend_midYPositionByStrokeIdentifier(v11, v83, v84, v85, v86, v87);
          v95 = v89;
          if (midYPositionByStrokeIdentifier == v89)
          {
          }

          else
          {
            v96 = objc_msgSend_midYPositionByStrokeIdentifier(v11, v90, v91, v92, v93, v94);
            v101 = objc_msgSend_isEqual_(v96, v97, self->_midYPositionByStrokeIdentifier, v98, v99, v100);

            if (!v101)
            {
              goto LABEL_24;
            }
          }

          nontextCandidates = self->_nontextCandidates;
          v114 = objc_msgSend_nontextCandidates(v11, v102, v103, v104, v105, v106);
          if (nontextCandidates == v114)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v115 = objc_msgSend_nontextCandidates(v11, v109, v110, v111, v112, v113);
            LOBYTE(self) = objc_msgSend_isEqual_(v115, v116, self->_nontextCandidates, v117, v118, v119);
          }

          goto LABEL_25;
        }

LABEL_24:
        LOBYTE(self) = 0;
        goto LABEL_25;
      }

      LOBYTE(self) = 1;
    }

LABEL_25:

    goto LABEL_26;
  }

  LOBYTE(self) = 0;
LABEL_26:

  return self;
}

- (BOOL)isHighConfidenceForStrokesIdentifiers:(id)a3 scripts:(id)a4 confidenceThreshold:(double)a5
{
  v109 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v90 = v8;
  if (objc_msgSend_count(v8, v10, v11, v12, v13, v14))
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v8;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v102, v108, 16, v16);
    if (v17)
    {
      v92 = *v103;
      v23 = 0.0;
      do
      {
        v93 = v17;
        for (i = 0; i != v93; ++i)
        {
          if (*v103 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v102 + 1) + 8 * i);
          v26 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v18, v19, v20, v21, v22);
          v31 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v25, v28, v29, v30);
          v37 = objc_msgSend_integerValue(v31, v32, v33, v34, v35, v36);

          v43 = objc_msgSend_scriptClassificationsByStrokeIdentifier(self, v38, v39, v40, v41, v42);
          v48 = objc_msgSend_objectForKeyedSubscript_(v43, v44, v25, v45, v46, v47);
          v54 = objc_msgSend_integerValue(v48, v49, v50, v51, v52, v53);

          if (objc_msgSend_isMatchingStrokeClassification_scriptClassification_(CHStrokeUtilities, v55, v37, v54, v56, v57))
          {
            v96 = 0uLL;
            v97 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            v58 = v9;
            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v94, v106, 16, v60);
            if (v64)
            {
              v65 = *v95;
              do
              {
                for (j = 0; j != v64; ++j)
                {
                  if (*v95 != v65)
                  {
                    objc_enumerationMutation(v58);
                  }

                  objc_msgSend_scriptClassificationScoreForStrokeIdentifier_script_(self, v61, v25, *(*(&v94 + 1) + 8 * j), v62, v63);
                  v23 = v23 + v67;
                }

                v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v94, v106, 16, v63);
              }

              while (v64);
            }
          }

          else
          {
            v100 = 0uLL;
            v101 = 0uLL;
            v98 = 0uLL;
            v99 = 0uLL;
            v68 = v9;
            v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v98, v107, 16, v70);
            if (v76)
            {
              v77 = *v99;
              while (2)
              {
                for (k = 0; k != v76; ++k)
                {
                  if (*v99 != v77)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v79 = objc_msgSend_integerValue(*(*(&v98 + 1) + 8 * k), v71, v72, v73, v74, v75);
                  if (objc_msgSend_isMatchingStrokeClassification_scriptClassification_(CHStrokeUtilities, v80, v37, v79, v81, v82))
                  {
                    v23 = v23 + a5;
                    goto LABEL_26;
                  }

                  v23 = v23 + 0.0;
                }

                v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v98, v107, 16, v75);
                if (v76)
                {
                  continue;
                }

                break;
              }
            }
          }

LABEL_26:
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v102, v108, 16, v22);
      }

      while (v17);
    }

    else
    {
      v23 = 0.0;
    }

    v83 = v23 / objc_msgSend_count(obj, v84, v85, v86, v87, v88) >= a5;
  }

  else
  {
    v83 = 0;
  }

  return v83;
}

- (double)scriptClassificationScoreForStrokeIdentifier:(id)a3 script:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_scriptClassificationsByStrokeIdentifier(self, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v6, v15, v16, v17);
  v24 = objc_msgSend_integerValue(v18, v19, v20, v21, v22, v23);

  v30 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(self, v25, v26, v27, v28, v29);
  v35 = objc_msgSend_objectForKeyedSubscript_(v30, v31, v6, v32, v33, v34);

  v40 = objc_msgSend_scriptClassificationAtIndex_(v35, v36, 0, v37, v38, v39);
  v46 = objc_msgSend_integerValue(v40, v41, v42, v43, v44, v45);

  v51 = objc_msgSend_scriptProbabilityAtIndex_(v35, v47, 0, v48, v49, v50);
  objc_msgSend_floatValue(v51, v52, v53, v54, v55, v56);
  v58 = v57;

  v64 = objc_msgSend_probabilityByScriptClassifications(v35, v59, v60, v61, v62, v63);
  v69 = objc_msgSend_objectForKeyedSubscript_(v64, v65, v7, v66, v67, v68);
  objc_msgSend_floatValue(v69, v70, v71, v72, v73, v74);
  v76 = v75;

  v82 = objc_msgSend_orderedScriptClassification(v35, v77, v78, v79, v80, v81);
  LOBYTE(v69) = objc_msgSend_containsObject_(v82, v83, v7, v84, v85, v86);

  v92 = 0.0;
  if (v69)
  {
    v93 = objc_msgSend_integerValue(v7, v87, v88, v89, v90, v91);
    v92 = v76;
    if (v46 != v24)
    {
      if (v93 == v46)
      {
        if (v46 == 11)
        {
          v92 = v58;
        }

        else
        {
          v92 = 0.0;
        }
      }

      else if (v93 == v24)
      {
        v92 = v58 + v92;
      }
    }
  }

  return v92;
}

- (id)differenceFromResult:(id)a3 removedStrokeIds:(id)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v87 = a4;
  v86 = objc_msgSend_set(MEMORY[0x1E695DFA8], v7, v8, v9, v10, v11);
  v88 = objc_msgSend_set(MEMORY[0x1E695DFA8], v12, v13, v14, v15, v16);
  v22 = objc_msgSend_set(MEMORY[0x1E695DFA8], v17, v18, v19, v20, v21);
  v89 = objc_msgSend_set(MEMORY[0x1E695DFA8], v23, v24, v25, v26, v27, v22);
  v90 = objc_msgSend_set(MEMORY[0x1E695DFA8], v28, v29, v30, v31, v32);
  v91 = objc_msgSend_set(MEMORY[0x1E695DFA8], v33, v34, v35, v36, v37);
  v43 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v38, v39, v40, v41, v42);
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = sub_183756368;
  v102[3] = &unk_1E6DDD508;
  v97 = v6;
  v103 = v97;
  v92 = v86;
  v104 = v92;
  v93 = v22;
  v105 = v93;
  v94 = v90;
  v106 = v94;
  v95 = v91;
  v107 = v95;
  v44 = v89;
  v108 = v44;
  v45 = v88;
  v109 = v45;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v43, v46, v102, v47, v48, v49);

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v87;
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v98, v110, 16, v51);
  if (v57)
  {
    v58 = *v99;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v99 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v98 + 1) + 8 * i);
        v61 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v97, v52, v53, v54, v55, v56);
        v66 = objc_msgSend_objectForKey_(v61, v62, v60, v63, v64, v65);
        v72 = objc_msgSend_integerValue(v66, v67, v68, v69, v70, v71);

        v73 = objc_opt_class();
        if (objc_msgSend_isStrokeClassificationTextOrMath_(v73, v74, v72, v75, v76, v77))
        {
          objc_msgSend_addObject_(v45, v78, v60, v79, v80, v81);
        }

        else
        {
          objc_msgSend_addObject_(v44, v78, v60, v79, v80, v81);
        }
      }

      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v98, v110, 16, v56);
    }

    while (v57);
  }

  v82 = [CHStrokeClassificationResultDifference alloc];
  v84 = objc_msgSend_initWithStrokeIdentifiersForAddedText_removedText_addedNonText_removedNonText_transitionedText_transitionedNonText_(v82, v83, v92, v45, v93, v44, v94, v95);

  return v84;
}

- (id)subResultForStrokeIdentifiers:(id)a3
{
  v242 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF90];
  v10 = objc_msgSend_count(v3, v5, v6, v7, v8, v9);
  v227 = objc_msgSend_dictionaryWithCapacity_(v4, v11, v10, v12, v13, v14);
  v15 = MEMORY[0x1E695DF90];
  v21 = objc_msgSend_count(v3, v16, v17, v18, v19, v20);
  v226 = objc_msgSend_dictionaryWithCapacity_(v15, v22, v21, v23, v24, v25);
  v26 = MEMORY[0x1E695DF90];
  v32 = objc_msgSend_count(v3, v27, v28, v29, v30, v31);
  v225 = objc_msgSend_dictionaryWithCapacity_(v26, v33, v32, v34, v35, v36);
  v37 = MEMORY[0x1E695DF90];
  v43 = objc_msgSend_count(v3, v38, v39, v40, v41, v42);
  v222 = objc_msgSend_dictionaryWithCapacity_(v37, v44, v43, v45, v46, v47);
  v48 = MEMORY[0x1E695DF90];
  v54 = objc_msgSend_count(v3, v49, v50, v51, v52, v53);
  v228 = objc_msgSend_dictionaryWithCapacity_(v48, v55, v54, v56, v57, v58);
  v59 = MEMORY[0x1E695DFA8];
  v65 = objc_msgSend_count(v3, v60, v61, v62, v63, v64);
  v70 = objc_msgSend_setWithCapacity_(v59, v66, v65, v67, v68, v69);
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v71 = v3;
  v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v236, v241, 16, v73);
  if (v223)
  {
    v224 = *v237;
    while (2)
    {
      for (i = 0; i != v223; ++i)
      {
        if (*v237 != v224)
        {
          objc_enumerationMutation(v71);
        }

        v79 = *(*(&v236 + 1) + 8 * i);
        v80 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v74, v75, v76, v77, v78);
        v229 = objc_msgSend_objectForKeyedSubscript_(v80, v81, v79, v82, v83, v84);
        if (!v229)
        {
          goto LABEL_29;
        }

        v90 = objc_msgSend_scriptClassificationsByStrokeIdentifier(self, v85, v86, v87, v88, v89);
        v100 = objc_msgSend_objectForKeyedSubscript_(v90, v91, v79, v92, v93, v94);
        if (!v100)
        {
          goto LABEL_28;
        }

        v101 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(self, v95, v96, v97, v98, v99);
        v111 = objc_msgSend_objectForKeyedSubscript_(v101, v102, v79, v103, v104, v105);
        if (!v111)
        {

LABEL_28:
LABEL_29:

LABEL_30:
          v220 = 0;
          goto LABEL_31;
        }

        v112 = objc_msgSend_substrokesByStrokeIdentifier(self, v106, v107, v108, v109, v110);
        v117 = objc_msgSend_objectForKeyedSubscript_(v112, v113, v79, v114, v115, v116);
        v118 = v117 == 0;

        if (v118)
        {
          goto LABEL_30;
        }

        v124 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v119, v120, v121, v122, v123);
        v129 = objc_msgSend_objectForKeyedSubscript_(v124, v125, v79, v126, v127, v128);
        objc_msgSend_setObject_forKey_(v227, v130, v129, v79, v131, v132);

        v138 = objc_msgSend_scriptClassificationsByStrokeIdentifier(self, v133, v134, v135, v136, v137);
        v143 = objc_msgSend_objectForKeyedSubscript_(v138, v139, v79, v140, v141, v142);
        objc_msgSend_setObject_forKey_(v226, v144, v143, v79, v145, v146);

        v152 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(self, v147, v148, v149, v150, v151);
        v157 = objc_msgSend_objectForKeyedSubscript_(v152, v153, v79, v154, v155, v156);
        objc_msgSend_setObject_forKey_(v225, v158, v157, v79, v159, v160);

        v166 = objc_msgSend_substrokesByStrokeIdentifier(self, v161, v162, v163, v164, v165);
        v171 = objc_msgSend_objectForKeyedSubscript_(v166, v167, v79, v168, v169, v170);
        objc_msgSend_setObject_forKey_(v228, v172, v171, v79, v173, v174);

        v180 = objc_msgSend_midYPositionByStrokeIdentifier(self, v175, v176, v177, v178, v179);
        v185 = objc_msgSend_objectForKeyedSubscript_(v180, v181, v79, v182, v183, v184);
        LOBYTE(v171) = v185 == 0;

        if ((v171 & 1) == 0)
        {
          v186 = objc_msgSend_midYPositionByStrokeIdentifier(self, v74, v75, v76, v77, v78);
          v191 = objc_msgSend_objectForKeyedSubscript_(v186, v187, v79, v188, v189, v190);
          objc_msgSend_setObject_forKey_(v222, v192, v191, v79, v193, v194);
        }
      }

      v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v236, v241, 16, v78);
      if (v223)
      {
        continue;
      }

      break;
    }
  }

  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v200 = objc_msgSend_nontextCandidates(self, v195, v196, v197, v198, v199);
  v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v201, &v232, v240, 16, v202);
  if (v203)
  {
    v204 = *v233;
    do
    {
      for (j = 0; j != v203; ++j)
      {
        if (*v233 != v204)
        {
          objc_enumerationMutation(v200);
        }

        v206 = *(*(&v232 + 1) + 8 * j);
        if (v206)
        {
          v207 = *(v206 + 88);
        }

        else
        {
          v207 = 0;
        }

        v208 = v207;
        v213 = objc_msgSend_containsObject_(v71, v209, v208, v210, v211, v212);

        if (v213)
        {
          objc_msgSend_addObject_(v70, v214, v206, v215, v216, v217);
        }
      }

      v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(v200, v214, &v232, v240, 16, v217);
    }

    while (v203);
  }

  v218 = [CHStrokeClassificationResult alloc];
  v220 = objc_msgSend_initWithStrokeClassificationsByStrokeIdentifier_scriptClassificationsByStrokeIdentifier_scriptClassificationRawResultsByStrokeIdentifier_substrokesByStrokeIdentifier_midYPositionByStrokeIdentifier_nontextCandidates_(v218, v219, v227, v226, v225, v228, v222, v70);
LABEL_31:

  return v220;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHMutableStrokeClassificationResult alloc];
  v10 = objc_msgSend_strokeClassificationsByStrokeIdentifier(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_scriptClassificationsByStrokeIdentifier(self, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_substrokesByStrokeIdentifier(self, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_midYPositionByStrokeIdentifier(self, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_nontextCandidates(self, v35, v36, v37, v38, v39);
  v42 = objc_msgSend_initWithStrokeClassificationsByStrokeIdentifier_scriptClassificationsByStrokeIdentifier_scriptClassificationRawResultsByStrokeIdentifier_substrokesByStrokeIdentifier_midYPositionByStrokeIdentifier_nontextCandidates_(v4, v41, v10, v16, v22, v28, v34, v40);

  return v42;
}

@end