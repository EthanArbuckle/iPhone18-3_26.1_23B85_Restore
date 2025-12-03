@interface CHStrokeGroupingStrategy
- (CHStrokeGroupingStrategy)initWithStrokeProvider:(id)provider;
- (NSString)strategyIdentifier;
- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup;
- (id)strokeGroupFromGroup:(id)group addingStrokes:(id)strokes;
- (id)strokeGroupFromStrokes:(id)strokes ancestorIdentifier:(int64_t)identifier;
- (id)strokeGroupMergingGroup:(id)group withGroup:(id)withGroup;
- (id)strokesForIdentifiers:(id)identifiers;
- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block;
- (void)firstStrokeIdentifier:(id *)identifier lastStrokeIdentifier:(id *)strokeIdentifier inGroup:(id)group addingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers;
@end

@implementation CHStrokeGroupingStrategy

- (CHStrokeGroupingStrategy)initWithStrokeProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CHStrokeGroupingStrategy;
  v6 = [(CHStrokeGroupingStrategy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_strokeProvider, provider);
  }

  return v7;
}

- (NSString)strategyIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)strokesForIdentifiers:(id)identifiers
{
  v74 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = identifiersCopy;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v65, v73, 16, v13);
  if (v64)
  {
    v20 = *v66;
    v21 = &qword_1EA84D000;
    *&v19 = 138412546;
    v61 = v19;
    v62 = v11;
    v63 = *v66;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        while (1)
        {
          if (*v66 != v20)
          {
            objc_enumerationMutation(v11);
          }

          v23 = *(*(&v65 + 1) + 8 * i);
          v24 = objc_msgSend_strokeProvider(self, v14, v15, v16, v17, v18, v61);
          v29 = objc_msgSend_strokeIdentifierFromData_(v24, v25, v23, v26, v27, v28);

          v35 = objc_msgSend_strokeProvider(self, v30, v31, v32, v33, v34);
          v40 = objc_msgSend_strokeForIdentifier_(v35, v36, v29, v37, v38, v39);

          if (!v40)
          {
            break;
          }

          objc_msgSend_addObject_(v10, v41, v40, v42, v43, v44);

          if (v64 == ++i)
          {
            goto LABEL_3;
          }
        }

        if (v21[393] != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v45 = qword_1EA84DC68;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_strokeProvider(self, v46, v47, v48, v49, v50);
          v52 = v51 = v10;
          objc_msgSend_strokeProviderVersion(v52, v53, v54, v55, v56, v57);
          v59 = v58 = v21;
          *buf = v61;
          v70 = v23;
          v71 = 2112;
          v72 = v59;
          _os_log_impl(&dword_18366B000, v45, OS_LOG_TYPE_DEFAULT, "Failed to get stroke with id: %@ from stroke provider version %@", buf, 0x16u);

          v21 = v58;
          v10 = v51;
          v11 = v62;
          v20 = v63;
        }
      }

LABEL_3:
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v65, v73, 16, v18);
    }

    while (v64);
  }

  return v10;
}

- (void)firstStrokeIdentifier:(id *)identifier lastStrokeIdentifier:(id *)strokeIdentifier inGroup:(id)group addingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers
{
  identifierCopy = identifier;
  v225 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  v18 = objc_msgSend_firstStrokeIdentifier(groupCopy, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_strokeProvider(self, v19, v20, v21, v22, v23);
  v214 = objc_msgSend_strokeIdentifierFromData_(v24, v25, v18, v26, v27, v28);

  v34 = objc_msgSend_lastStrokeIdentifier(groupCopy, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_strokeProvider(self, v35, v36, v37, v38, v39);
  v213 = objc_msgSend_strokeIdentifierFromData_(v40, v41, v34, v42, v43, v44);

  v208 = strokeIdentifiersCopy;
  v209 = groupCopy;
  if (!strokeIdentifiersCopy || !objc_msgSend_count(strokeIdentifiersCopy, v45, v46, v47, v48, v49))
  {
    goto LABEL_28;
  }

  v55 = objc_msgSend_strokeIdentifiers(groupCopy, v50, v51, v52, v53, v54);
  v61 = objc_msgSend_mutableCopy(v55, v56, v57, v58, v59, v60);

  obj = v61;
  objc_msgSend_minusSet_(v61, v62, strokeIdentifiersCopy, v63, v64, v65);
  if (objc_msgSend_containsObject_(strokeIdentifiersCopy, v66, v18, v67, v68, v69))
  {

    v18 = 0;
    if (!objc_msgSend_containsObject_(strokeIdentifiersCopy, v74, v34, v75, v76, v77))
    {
      goto LABEL_5;
    }

LABEL_27:

    v34 = 0;
    if (v61)
    {
      goto LABEL_6;
    }

LABEL_28:
    obj = 0;
    goto LABEL_29;
  }

  if (objc_msgSend_containsObject_(strokeIdentifiersCopy, v70, v34, v71, v72, v73))
  {
    goto LABEL_27;
  }

LABEL_5:
  if (!v61)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (!v18 || !v34)
  {
    v221 = 0u;
    v222 = 0u;
    v219 = 0u;
    v220 = 0u;
    obj = v61;
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, &v219, v224, 16, v79);
    v211 = identifiersCopy;
    if (v80)
    {
      v86 = v80;
      v87 = *v220;
      if (v18)
      {
        if (v34)
        {
          do
          {
            for (i = 0; i != v86; ++i)
            {
              if (*v220 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v89 = *(*(&v219 + 1) + 8 * i);
              v90 = objc_msgSend_strokeProvider(self, v81, v82, v83, v84, v85, identifierCopy);
              v95 = objc_msgSend_strokeIdentifierFromData_(v90, v91, v89, v92, v93, v94);
            }

            v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v219, v224, 16, v85);
          }

          while (v86);
        }

        else
        {
          do
          {
            for (j = 0; j != v86; ++j)
            {
              if (*v220 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v98 = *(*(&v219 + 1) + 8 * j);
              v99 = objc_msgSend_strokeProvider(self, v81, v82, v83, v84, v85, identifierCopy);
              v104 = objc_msgSend_strokeIdentifierFromData_(v99, v100, v98, v101, v102, v103);

              if (!v34 || (objc_msgSend_strokeProvider(self, v105, v106, v107, v108, v109), v110 = objc_claimAutoreleasedReturnValue(), v114 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v110, v111, v104, v213, v112, v113), v110, v114 == 1))
              {
                v97 = v98;

                v34 = v97;
              }
            }

            v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v219, v224, 16, v85);
          }

          while (v86);
        }
      }

      else
      {
        v18 = 0;
        if (v34)
        {
          do
          {
            for (k = 0; k != v86; ++k)
            {
              if (*v220 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v159 = *(*(&v219 + 1) + 8 * k);
              v160 = objc_msgSend_strokeProvider(self, v81, v82, v83, v84, v85, identifierCopy);
              v165 = objc_msgSend_strokeIdentifierFromData_(v160, v161, v159, v162, v163, v164);

              if (!v18 || (objc_msgSend_strokeProvider(self, v166, v167, v168, v169, v170), v171 = objc_claimAutoreleasedReturnValue(), v175 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v171, v172, v165, v214, v173, v174), v171, v175 == -1))
              {
                v158 = v159;

                v18 = v158;
              }
            }

            v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v219, v224, 16, v85);
          }

          while (v86);
        }

        else
        {
          do
          {
            for (m = 0; m != v86; ++m)
            {
              if (*v220 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v178 = *(*(&v219 + 1) + 8 * m);
              v179 = objc_msgSend_strokeProvider(self, v81, v82, v83, v84, v85, identifierCopy);
              v184 = objc_msgSend_strokeIdentifierFromData_(v179, v180, v178, v181, v182, v183);

              if (!v18 || (objc_msgSend_strokeProvider(self, v185, v186, v187, v188, v189), v190 = objc_claimAutoreleasedReturnValue(), v194 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v190, v191, v184, v214, v192, v193), v190, v194 == -1))
              {
                v200 = v178;

                v18 = v200;
              }

              if (!v34 || (objc_msgSend_strokeProvider(self, v195, v196, v197, v198, v199), v201 = objc_claimAutoreleasedReturnValue(), v205 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v201, v202, v184, v213, v203, v204), v201, v205 == 1))
              {
                v177 = v178;

                v34 = v177;
              }
            }

            v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v219, v224, 16, v85);
          }

          while (v86);
        }
      }
    }

    identifiersCopy = v211;
  }

LABEL_29:
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v212 = identifiersCopy;
  v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v212, v115, &v215, v223, 16, v116);
  if (v117)
  {
    v123 = v117;
    v124 = *v216;
    do
    {
      for (n = 0; n != v123; ++n)
      {
        if (*v216 != v124)
        {
          objc_enumerationMutation(v212);
        }

        v127 = *(*(&v215 + 1) + 8 * n);
        v128 = objc_msgSend_strokeProvider(self, v118, v119, v120, v121, v122, identifierCopy);
        v133 = objc_msgSend_strokeIdentifierFromData_(v128, v129, v127, v130, v131, v132);

        if (!v18 || (objc_msgSend_strokeProvider(self, v134, v135, v136, v137, v138), v139 = objc_claimAutoreleasedReturnValue(), v143 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v139, v140, v133, v214, v141, v142), v139, v143 == -1))
        {
          v149 = v127;

          v18 = v149;
        }

        if (!v34 || (objc_msgSend_strokeProvider(self, v144, v145, v146, v147, v148), v150 = objc_claimAutoreleasedReturnValue(), v154 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v150, v151, v133, v213, v152, v153), v150, v154 == 1))
        {
          v126 = v127;

          v34 = v126;
        }
      }

      v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v212, v118, &v215, v223, 16, v122);
    }

    while (v123);
  }

  if (identifierCopy)
  {
    v155 = v18;
    *identifierCopy = v18;
  }

  if (strokeIdentifier)
  {
    v156 = v34;
    *strokeIdentifier = v34;
  }
}

- (id)strokeGroupFromStrokes:(id)strokes ancestorIdentifier:(int64_t)identifier
{
  v102 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v7 = MEMORY[0x1E695DFA8];
  v13 = objc_msgSend_count(strokesCopy, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_setWithCapacity_(v7, v14, v13, v15, v16, v17);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v23 = strokesCopy;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v97, v101, 16, v25);
  if (v26)
  {
    v32 = v26;
    v33 = *v98;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v98 != v33)
        {
          objc_enumerationMutation(v23);
        }

        v35 = *(*(&v97 + 1) + 8 * i);
        v36 = objc_msgSend_encodedStrokeIdentifier(v35, v27, v28, v29, v30, v31, v97);
        objc_msgSend_addObject_(v18, v37, v36, v38, v39, v40);

        objc_msgSend_bounds(v35, v41, v42, v43, v44, v45);
        v106.origin.x = v46;
        v106.origin.y = v47;
        v106.size.width = v48;
        v106.size.height = v49;
        v104.origin.x = x;
        v104.origin.y = y;
        v104.size.width = width;
        v104.size.height = height;
        v105 = CGRectUnion(v104, v106);
        x = v105.origin.x;
        y = v105.origin.y;
        width = v105.size.width;
        height = v105.size.height;
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v27, &v97, v101, 16, v31);
    }

    while (v32);
  }

  v50 = objc_alloc(objc_opt_class());
  v56 = objc_msgSend_firstObject(v23, v51, v52, v53, v54, v55);
  v62 = objc_msgSend_strokeIdentifier(v56, v57, v58, v59, v60, v61);
  v68 = objc_msgSend_lastObject(v23, v63, v64, v65, v66, v67);
  v74 = objc_msgSend_strokeIdentifier(v68, v69, v70, v71, v72, v73);
  v80 = objc_msgSend_strategyIdentifier(self, v75, v76, v77, v78, v79);
  v86 = objc_msgSend_firstObject(v23, v81, v82, v83, v84, v85);
  objc_msgSend_bounds(v86, v87, v88, v89, v90, v91);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v50, v92, identifier, v18, v62, v74, 1, v80, x, y, width, height, 1.0, v93, v94);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
}

- (id)strokeGroupFromGroup:(id)group addingStrokes:(id)strokes
{
  v152 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  strokesCopy = strokes;
  v8 = MEMORY[0x1E695DFA8];
  v14 = objc_msgSend_count(strokesCopy, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_setWithCapacity_(v8, v15, v14, v16, v17, v18);
  objc_msgSend_bounds(groupCopy, v20, v21, v22, v23, v24);
  x = v25;
  y = v27;
  width = v29;
  height = v31;
  objc_msgSend_firstStrokeOrigin(groupCopy, v33, v34, v35, v36, v37);
  v143 = v39;
  v144 = v38;
  objc_msgSend_firstStrokeOrigin(groupCopy, v40, v41, v42, v43, v44);
  v46 = v45;
  objc_msgSend_firstStrokeOrigin(groupCopy, v47, v48, v49, v50, v51);
  v53 = v52;
  objc_msgSend_firstStrokeOrigin(groupCopy, v54, v55, v56, v57, v58);
  v60 = v59;
  objc_msgSend_firstStrokeOrigin(groupCopy, v61, v62, v63, v64, v65);
  v67 = v66;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v68 = strokesCopy;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v147, v151, 16, v70);
  if (v71)
  {
    v77 = v71;
    v78 = v60 * v67 + v46 * v53;
    v79 = *v148;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v148 != v79)
        {
          objc_enumerationMutation(v68);
        }

        v81 = *(*(&v147 + 1) + 8 * i);
        v82 = objc_msgSend_encodedStrokeIdentifier(v81, v72, v73, v74, v75, v76, *&v143, *&v144);
        objc_msgSend_addObject_(v19, v83, v82, v84, v85, v86);

        objc_msgSend_bounds(v81, v87, v88, v89, v90, v91);
        v156.origin.x = v92;
        v156.origin.y = v93;
        v156.size.width = v94;
        v156.size.height = v95;
        v154.origin.x = x;
        v154.origin.y = y;
        v154.size.width = width;
        v154.size.height = height;
        v155 = CGRectUnion(v154, v156);
        x = v155.origin.x;
        y = v155.origin.y;
        width = v155.size.width;
        height = v155.size.height;
        objc_msgSend_bounds(v81, v96, v97, v98, v99, v100);
        v102 = v101;
        objc_msgSend_bounds(v81, v103, v104, v105, v106, v107);
        v109 = v108;
        objc_msgSend_bounds(v81, v110, v111, v112, v113, v114);
        v116 = v115;
        objc_msgSend_bounds(v81, v117, v118, v119, v120, v121);
        if (v116 * v122 + v102 * v109 < v78)
        {
          objc_msgSend_bounds(v81, v72, v73, v74, v75, v76);
          v143 = v124;
          v144 = v123;
        }
      }

      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v72, &v147, v151, 16, v76);
    }

    while (v77);
  }

  v145 = 0;
  v146 = 0;
  objc_msgSend_firstStrokeIdentifier_lastStrokeIdentifier_inGroup_addingStrokeIdentifiers_removingStrokeIdentifiers_(self, v125, &v146, &v145, groupCopy, v19, 0);
  v126 = v146;
  v127 = v145;
  v133 = objc_msgSend_classification(groupCopy, v128, v129, v130, v131, v132);
  objc_msgSend_groupingConfidence(groupCopy, v134, v135, v136, v137, v138);
  v141 = objc_msgSend_groupByAddingStrokeIdentifiers_removingStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_firstStrokeOrigin_(groupCopy, v139, v19, 0, v126, v127, v133, x, y, width, height, v140, v144, v143);

  return v141;
}

- (id)strokeGroupMergingGroup:(id)group withGroup:(id)withGroup
{
  v6 = MEMORY[0x1E695DFD8];
  groupCopy = group;
  v13 = objc_msgSend_strokeIdentifiers(withGroup, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_allObjects(v13, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_strokesForIdentifiers_(self, v20, v19, v21, v22, v23);
  v29 = objc_msgSend_setWithArray_(v6, v25, v24, v26, v27, v28);

  v33 = objc_msgSend_strokeGroupFromGroup_addingStrokes_(self, v30, groupCopy, v29, v31, v32);

  return v33;
}

- (id)updatedGroupingResult:(id)result byAddingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers stableStrokeIdentifiers:(id)strokeIdentifiers allSubstrokesByStrokeIdentifier:(id)identifier withCancellationBlock:(id)block
{
  v8 = [CHStrokeGroupingResult alloc];
  v14 = objc_msgSend_set(MEMORY[0x1E695DFD8], v9, v10, v11, v12, v13);
  v17 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v8, v15, v14, 0, 0, v16);

  return v17;
}

- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup
{
  v11 = objc_alloc_init(CHDrawing);
  if (ds)
  {
    *ds = 0;
  }

  if (factor)
  {
    *factor = 1.0;
  }

  if (strokeGroup)
  {
    *strokeGroup = 0;
  }

  return v11;
}

@end