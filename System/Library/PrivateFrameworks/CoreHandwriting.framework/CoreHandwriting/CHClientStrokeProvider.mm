@interface CHClientStrokeProvider
+ (BOOL)isNonTextSection:(id)a3;
- (CGRect)boundingBox;
- (CHClientStrokeProvider)initWithStrokes:(id)a3 version:(int64_t)a4;
- (CHClientStrokeProvider)initWithURL:(id)a3 version:(int64_t)a4 keepTextOnly:(BOOL)a5;
- (CHClientStrokeProvider)initWithURL:(id)a3 version:(int64_t)a4 keepTextOnly:(BOOL)a5 strokesFromSections:(id)a6 channels:(id)a7 sectionTypes:(id)a8;
- (NSOrderedSet)visibleStrokeEncodedIdentifiers;
- (NSString)description;
- (id)drawing;
- (id)drawingWithGroups:(id)a3 transforms:(id)a4;
- (id)drawingWithStrokes:(id)a3;
- (id)encodedStrokeIdentifier:(id)a3;
- (id)getStrokeClassificationArray:(int64_t)a3 ofType:(int64_t)a4;
- (id)strokeForIdentifier:(id)a3;
- (id)strokeIdentifierFromData:(id)a3;
- (int64_t)compareOrderOfStrokeWithIdentifier:(id)a3 toStrokeWithIdentifier:(id)a4;
- (void)loadStrokesBasedOnSectionTypeFrom:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8;
- (void)loadStrokesBasedOnStrokeClassicationType:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8;
- (void)loadStrokesBasedOnUnicodeFrom:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8;
- (void)loadStrokesFrom:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8;
- (void)loadStrokesFrom:(id)a3 withStrokes:(id)a4 types:(id)a5 withTime:(BOOL)a6 atTimestamp:(double)a7 channels:(id)a8 orderedStrokes:(id)a9;
- (void)setStrokeAttributes:(unint64_t)a3 atIndexes:(id)a4;
- (void)updateWithAddedStrokes:(id)a3 removedStrokeIds:(id)a4;
- (void)updateWithGroups:(id)a3 transforms:(id)a4;
@end

@implementation CHClientStrokeProvider

+ (BOOL)isNonTextSection:(id)a3
{
  v3 = a3;
  v12 = objc_msgSend_objectForKey_(v3, v4, @"type", v5, v6, v7);
  if (v12)
  {
    v13 = objc_msgSend_objectForKey_(v3, v8, @"type", v9, v10, v11);
    if (objc_msgSend_isEqualToString_(v13, v14, @"text", v15, v16, v17))
    {
      LOBYTE(v22) = 0;
    }

    else
    {
      v23 = objc_msgSend_objectForKey_(v3, v18, @"type", v19, v20, v21);
      v22 = objc_msgSend_isEqualToString_(v23, v24, @"math", v25, v26, v27) ^ 1;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

- (CHClientStrokeProvider)initWithStrokes:(id)a3 version:(int64_t)a4
{
  v5 = a3;
  v40.receiver = self;
  v40.super_class = CHClientStrokeProvider;
  v6 = [(CHClientStrokeProvider *)&v40 init];
  v12 = v6;
  if (v6)
  {
    v6->_version = 0;
    v13 = objc_msgSend_array(MEMORY[0x1E695DEC8], v7, v8, v9, v10, v11);
    orderedStrokes = v12->_orderedStrokes;
    v12->_orderedStrokes = v13;

    v20 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v15, v16, v17, v18, v19);
    strokesByID = v12->_strokesByID;
    v12->_strokesByID = v20;

    v27 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v22, v23, v24, v25, v26);
    strokeIdsByEncoding = v12->__strokeIdsByEncoding;
    v12->__strokeIdsByEncoding = v27;

    v34 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30, v31, v32, v33);
    transcriptionCache = v12->_transcriptionCache;
    v12->_transcriptionCache = v34;

    objc_msgSend_updateWithAddedStrokes_removedStrokeIds_(v12, v36, v5, 0, v37, v38);
  }

  return v12;
}

- (CHClientStrokeProvider)initWithURL:(id)a3 version:(int64_t)a4 keepTextOnly:(BOOL)a5
{
  v186 = a5;
  v194[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v192.receiver = self;
  v192.super_class = CHClientStrokeProvider;
  v7 = [(CHClientStrokeProvider *)&v192 init];
  v13 = v7;
  if (v7)
  {
    v7->_version = 0;
    v14 = objc_msgSend_array(MEMORY[0x1E695DEC8], v8, v9, v10, v11, v12);
    orderedStrokes = v13->_orderedStrokes;
    v13->_orderedStrokes = v14;

    v21 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v16, v17, v18, v19, v20);
    strokesByID = v13->_strokesByID;
    v13->_strokesByID = v21;

    v28 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v23, v24, v25, v26, v27);
    strokeIdsByEncoding = v13->__strokeIdsByEncoding;
    v13->__strokeIdsByEncoding = v28;

    v35 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v30, v31, v32, v33, v34);
    transcriptionCache = v13->_transcriptionCache;
    v13->_transcriptionCache = v35;

    v42 = objc_msgSend_pathExtension(v6, v37, v38, v39, v40, v41);
    isEqualToString = objc_msgSend_isEqualToString_(v42, v43, @"json", v44, v45, v46);

    if (isEqualToString)
    {
      v53 = MEMORY[0x1E695DEF0];
      v184 = v6;
      v54 = objc_msgSend_path(v6, v48, v49, v50, v51, v52);
      v59 = objc_msgSend_dataWithContentsOfFile_(v53, v55, v54, v56, v57, v58);

      v191 = 0;
      v62 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v60, v59, 1, &v191, v61);
      v63 = v191;
      v68 = objc_msgSend_objectForKey_(v62, v64, @"channels", v65, v66, v67);
      v73 = objc_msgSend_objectForKey_(v62, v69, @"sectionsData", v70, v71, v72);
      v79 = v73;
      if (v68)
      {
        v80 = objc_msgSend_objectForKeyedSubscript_(v68, v74, @"t", v76, v77, v78);
        v81 = v80 != 0;

        if (v79)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v81 = 0;
        if (v73)
        {
LABEL_5:
          v180 = v62;
          v182 = v59;
          v178 = v63;
          v185 = v68;
          if (v81)
          {
LABEL_6:
            v82 = 1;
LABEL_12:
            v129 = v184;
            v130 = objc_msgSend_array(MEMORY[0x1E695DF70], v74, v75, v76, v77, v78, v178, v180, v182);
            v187 = 0u;
            v188 = 0u;
            v189 = 0u;
            v190 = 0u;
            v105 = v79;
            v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v131, &v187, v193, 16, v132);
            if (v133)
            {
              v139 = v133;
              v140 = *v188;
              v141 = 2.22507386e-308;
              do
              {
                v142 = 0;
                do
                {
                  if (*v188 != v140)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v150 = *(*(&v187 + 1) + 8 * v142);
                  if (!v186 || (objc_msgSend_isNonTextSection_(CHClientStrokeProvider, v134, *(*(&v187 + 1) + 8 * v142), v136, v137, v138) & 1) == 0)
                  {
                    v151 = objc_msgSend_array(MEMORY[0x1E695DF70], v134, v135, v136, v137, v138);
                    objc_msgSend_loadStrokesFrom_section_withTime_atTimestamp_channels_orderedStrokes_(v13, v152, v129, v150, v82, v185, v151, v141);
                    v158 = objc_msgSend_lastObject(v151, v153, v154, v155, v156, v157);
                    objc_msgSend_endTimestamp(v158, v159, v160, v161, v162, v163);
                    if (v141 <= v169)
                    {
                      v170 = objc_msgSend_lastObject(v151, v164, v165, v166, v167, v168);
                      objc_msgSend_endTimestamp(v170, v171, v172, v173, v174, v175);
                      v141 = v176;

                      v129 = v184;
                    }

                    objc_msgSend_updateWithAddedStrokes_removedStrokeIds_(v13, v143, v151, 0, v144, v145);
                    objc_msgSend_addObject_(v130, v146, v151, v147, v148, v149);
                  }

                  ++v142;
                }

                while (v139 != v142);
                v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v134, &v187, v193, 16, v138);
              }

              while (v139);
            }

            sectionedStrokes = v13->_sectionedStrokes;
            v13->_sectionedStrokes = v130;
            v62 = v181;
            v59 = v183;
            v63 = v179;
            v68 = v185;
            goto LABEL_25;
          }

LABEL_11:
          v106 = objc_msgSend_firstObject(v79, v74, v75, v76, v77, v78, v178, v180, v182);
          v111 = objc_msgSend_objectForKeyedSubscript_(v106, v107, @"data", v108, v109, v110);

          v117 = objc_msgSend_firstObject(v111, v112, v113, v114, v115, v116);
          v123 = objc_msgSend_firstObject(v117, v118, v119, v120, v121, v122);
          v82 = objc_msgSend_count(v123, v124, v125, v126, v127, v128) > 2;

          goto LABEL_12;
        }
      }

      v83 = objc_msgSend_objectForKey_(v62, v74, @"strokeClassification", v76, v77, v78);
      if (v83)
      {
        v89 = v83;
        v90 = objc_msgSend_array(MEMORY[0x1E695DF70], v84, v85, v86, v87, v88);
        objc_msgSend_loadStrokesBasedOnStrokeClassicationType_section_withTime_atTimestamp_channels_orderedStrokes_(v13, v91, v184, v62, v81, v68, v90, 2.22507386e-308);
        v13->_strokeClassificationGTSource = 1;
        v97 = objc_msgSend_array(MEMORY[0x1E695DF70], v92, v93, v94, v95, v96);
        objc_msgSend_addObject_(v97, v98, v90, v99, v100, v101);
        v102 = v13->_sectionedStrokes;
        v13->_sectionedStrokes = v97;
        sectionedStrokes = v97;

        v104 = v13->_orderedStrokes;
        v13->_orderedStrokes = v90;

        v105 = v89;
LABEL_25:

        v6 = v184;
        goto LABEL_26;
      }

      v194[0] = v62;
      v79 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v84, v194, 1, v87, v88);
      v180 = v62;
      v182 = v59;
      v178 = v63;
      v185 = v68;
      if (v81)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

LABEL_26:

  return v13;
}

- (id)getStrokeClassificationArray:(int64_t)a3 ofType:(int64_t)a4
{
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = objc_msgSend_initWithCapacity_(v6, v7, a3, v8, v9, v10);
  if (a3 >= 1)
  {
    do
    {
      v16 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v11, a4, v12, v13, v14);
      objc_msgSend_addObject_(v15, v17, v16, v18, v19, v20);

      --a3;
    }

    while (a3);
  }

  return v15;
}

- (CHClientStrokeProvider)initWithURL:(id)a3 version:(int64_t)a4 keepTextOnly:(BOOL)a5 strokesFromSections:(id)a6 channels:(id)a7 sectionTypes:(id)a8
{
  v11 = a5;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v117.receiver = self;
  v117.super_class = CHClientStrokeProvider;
  v17 = [(CHClientStrokeProvider *)&v117 init];
  v18 = v17;
  if (v17)
  {
    v17->_version = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    orderedStrokes = v18->_orderedStrokes;
    v18->_orderedStrokes = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    strokesByID = v18->_strokesByID;
    v18->_strokesByID = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    strokeIdsByEncoding = v18->__strokeIdsByEncoding;
    v18->__strokeIdsByEncoding = v23;

    if (v15)
    {
      v30 = objc_msgSend_objectForKeyedSubscript_(v15, v25, @"t", v27, v28, v29);
      v115 = v30 != 0;
    }

    else
    {
      v115 = 0;
    }

    v116 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    if (objc_msgSend_count(v14, v31, v32, v33, v34, v35))
    {
      v40 = 0;
      v41 = 2.22507386e-308;
      v114 = v18;
      objc_msgSend_objectAtIndex_(v14, v36, 0, v37, v38, v39, v16);
      while (1)
        v58 = {;
        v63 = objc_msgSend_objectAtIndex_(v16, v59, v40, v60, v61, v62);

        if (!v11 || objc_msgSend_isTextOrMathForStrokeType_(v18, v64, v63, v66, v67, v68))
        {
          v69 = objc_msgSend_array(MEMORY[0x1E695DF70], v64, v65, v66, v67, v68);
          v75 = objc_msgSend_count(v58, v70, v71, v72, v73, v74);
          v79 = objc_msgSend_getStrokeClassificationArray_ofType_(v18, v76, v75, v63, v77, v78);
          v80 = v18;
          v81 = v79;
          objc_msgSend_loadStrokesFrom_withStrokes_types_withTime_atTimestamp_channels_orderedStrokes_(v80, v82, v13, v58, v79, v115, v15, v69, v41);
          v88 = objc_msgSend_lastObject(v69, v83, v84, v85, v86, v87);
          objc_msgSend_endTimestamp(v88, v89, v90, v91, v92, v93);
          if (v41 <= v99)
          {
            objc_msgSend_lastObject(v69, v94, v95, v96, v97, v98);
            v100 = v14;
            v101 = v15;
            v102 = v11;
            v104 = v103 = v13;
            objc_msgSend_endTimestamp(v104, v105, v106, v107, v108, v109);
            v41 = v110;

            v13 = v103;
            v11 = v102;
            v15 = v101;
            v14 = v100;
            v16 = v113;
          }

          objc_msgSend_updateWithAddedStrokes_removedStrokeIds_(v114, v42, v69, 0, v43, v44);
          objc_msgSend_addObject_(v116, v45, v69, v46, v47, v48);

          v18 = v114;
        }

        if (++v40 >= objc_msgSend_count(v14, v49, v50, v51, v52, v53))
        {
          break;
        }

        objc_msgSend_objectAtIndex_(v14, v54, v40, v55, v56, v57, v113);
      }
    }

    sectionedStrokes = v18->_sectionedStrokes;
    v18->_sectionedStrokes = v116;
  }

  return v18;
}

- (NSString)description
{
  v28.receiver = self;
  v28.super_class = CHClientStrokeProvider;
  v3 = [(CHClientStrokeProvider *)&v28 description];
  v9 = objc_msgSend_strokeProviderVersion(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_orderedStrokes(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_count(v15, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_stringByAppendingFormat_(v3, v22, @" Version: %@, Strokes: %ld", v23, v24, v25, v9, v21);

  return v26;
}

- (void)updateWithAddedStrokes:(id)a3 removedStrokeIds:(id)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v95 = a3;
  v6 = a4;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v13 = self->_orderedStrokes;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v105, v111, 16, v15);
  if (v16)
  {
    v22 = v16;
    v23 = *v106;
    if (v6)
    {
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v106 != v23)
          {
            objc_enumerationMutation(v13);
          }

          v25 = *(*(&v105 + 1) + 8 * i);
          v26 = objc_msgSend_strokeIdentifier(v25, v17, v18, v19, v20, v21, v95);
          v31 = objc_msgSend_containsObject_(v6, v27, v26, v28, v29, v30);

          if ((v31 & 1) == 0)
          {
            objc_msgSend_addObject_(v12, v17, v25, v19, v20, v21);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, &v105, v111, 16, v21);
      }

      while (v22);
    }

    else
    {
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v106 != v23)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_addObject_(v12, v17, *(*(&v105 + 1) + 8 * j), v19, v20, v21, v95);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, &v105, v111, 16, v21);
      }

      while (v22);
    }
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v33 = v95;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v101, v110, 16, v35);
  if (v36)
  {
    v42 = v36;
    v43 = *v102;
    if (v6)
    {
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v102 != v43)
          {
            objc_enumerationMutation(v33);
          }

          v45 = *(*(&v101 + 1) + 8 * k);
          v46 = objc_msgSend_strokeIdentifier(v45, v37, v38, v39, v40, v41, v95);
          v51 = objc_msgSend_containsObject_(v6, v47, v46, v48, v49, v50);

          if ((v51 & 1) == 0)
          {
            strokesByID = self->_strokesByID;
            v53 = objc_msgSend_strokeIdentifier(v45, v37, v38, v39, v40, v41);
            objc_msgSend_setObject_forKey_(strokesByID, v54, v45, v53, v55, v56);

            objc_msgSend_addObject_(v12, v57, v45, v58, v59, v60);
          }
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v37, &v101, v110, 16, v41);
      }

      while (v42);
    }

    else
    {
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v102 != v43)
          {
            objc_enumerationMutation(v33);
          }

          v62 = *(*(&v101 + 1) + 8 * m);
          v63 = self->_strokesByID;
          v64 = objc_msgSend_strokeIdentifier(v62, v37, v38, v39, v40, v41, v95);
          objc_msgSend_setObject_forKey_(v63, v65, v62, v64, v66, v67);

          objc_msgSend_addObject_(v12, v68, v62, v69, v70, v71);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v37, &v101, v110, 16, v41);
      }

      while (v42);
    }
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v72 = v6;
  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v97, v109, 16, v74);
  if (v75)
  {
    v80 = v75;
    v81 = *v98;
    do
    {
      for (n = 0; n != v80; ++n)
      {
        if (*v98 != v81)
        {
          objc_enumerationMutation(v72);
        }

        objc_msgSend_removeObjectForKey_(self->_strokesByID, v76, *(*(&v97 + 1) + 8 * n), v77, v78, v79, v95);
      }

      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v76, &v97, v109, 16, v79);
    }

    while (v80);
  }

  v83 = objc_alloc(MEMORY[0x1E695DEC8]);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = sub_1836E5AA4;
  v96[3] = &unk_1E6DDC930;
  v96[4] = self;
  v88 = objc_msgSend_sortedArrayUsingComparator_(v12, v84, v96, v85, v86, v87);
  v93 = objc_msgSend_initWithArray_(v83, v89, v88, v90, v91, v92);
  orderedStrokes = self->_orderedStrokes;
  self->_orderedStrokes = v93;

  ++self->_version;
}

- (void)setStrokeAttributes:(unint64_t)a3 atIndexes:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1836E5B8C;
  v6[3] = &unk_1E6DDC958;
  v6[4] = self;
  v6[5] = a3;
  objc_msgSend_enumerateIndexesUsingBlock_(a4, a2, v6, a4, v4, v5);
}

- (void)loadStrokesFrom:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8
{
  v11 = a5;
  v50 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v25 = objc_msgSend_objectForKey_(v14, v17, @"unicodeCodePoints", v18, v19, v20);
  if (v25)
  {
    v26 = objc_msgSend_objectForKey_(v14, v21, @"segmentationStrokes", v22, v23, v24);
    v27 = v26 != 0;
  }

  else
  {
    v27 = 0;
  }

  v32 = objc_msgSend_objectForKey_(v14, v28, @"strokeClassification", v29, v30, v31);
  v42 = objc_msgSend_objectForKey_(v14, v33, @"data", v34, v35, v36);
  if (v32 && (v43 = objc_msgSend_length(v32, v37, v38, v39, v40, v41), v43 == objc_msgSend_count(v42, v44, v45, v46, v47, v48)))
  {
    objc_msgSend_loadStrokesBasedOnStrokeClassicationType_section_withTime_atTimestamp_channels_orderedStrokes_(self, v37, v50, v14, v11, v15, v16, a6);
    v49 = 2;
  }

  else if (v27)
  {
    objc_msgSend_loadStrokesBasedOnUnicodeFrom_section_withTime_atTimestamp_channels_orderedStrokes_(self, v37, v50, v14, v11, v15, v16, a6);
    v49 = 2;
  }

  else
  {
    objc_msgSend_loadStrokesBasedOnSectionTypeFrom_section_withTime_atTimestamp_channels_orderedStrokes_(self, v37, v50, v14, v11, v15, v16, a6);
    v49 = 3;
  }

  self->_strokeClassificationGTSource = v49;
}

- (void)loadStrokesBasedOnStrokeClassicationType:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8
{
  v74 = a5;
  v75 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a8;
  v20 = objc_msgSend_objectForKey_(v13, v16, @"strokeClassification", v17, v18, v19);
  v25 = objc_msgSend_objectForKey_(v13, v21, @"data", v22, v23, v24);
  v26 = objc_alloc(MEMORY[0x1E695DF70]);
  v32 = objc_msgSend_length(v20, v27, v28, v29, v30, v31);
  v37 = objc_msgSend_initWithCapacity_(v26, v33, v32, v34, v35, v36);
  if (objc_msgSend_length(v20, v38, v39, v40, v41, v42))
  {
    v47 = 0;
    for (i = objc_msgSend_characterAtIndex_(v20, v43, 0, v44, v45, v46); ; i = objc_msgSend_characterAtIndex_(v20, v43, v47, v63, v64, v65))
    {
      if (i == 78)
      {
        objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, 0, v50, v51, v52);
      }

      else if (objc_msgSend_characterAtIndex_(v20, v49, v47, v50, v51, v52) == 77 || objc_msgSend_characterAtIndex_(v20, v66, v47, v67, v68, v69) == 79)
      {
        objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v66, 3, v67, v68, v69);
      }

      else if (objc_msgSend_characterAtIndex_(v20, v66, v47, v67, v68, v69) == 85 || objc_msgSend_characterAtIndex_(v20, v70, v47, v71, v72, v73) == 81)
      {
        objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, 4, v71, v72, v73);
      }

      else
      {
        objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, 1, v71, v72, v73);
      }
      v53 = ;
      objc_msgSend_addObject_(v37, v54, v53, v55, v56, v57);

      if (++v47 >= objc_msgSend_length(v20, v58, v59, v60, v61, v62))
      {
        break;
      }
    }
  }

  objc_msgSend_loadStrokesFrom_withStrokes_types_withTime_atTimestamp_channels_orderedStrokes_(self, v43, v75, v25, v37, v74, v14, v15, a6);
}

- (void)loadStrokesBasedOnUnicodeFrom:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8
{
  v11 = a5;
  v90 = a3;
  v13 = a4;
  v89 = a7;
  v88 = a8;
  v18 = objc_msgSend_objectForKey_(v13, v14, @"segmentationStrokes", v15, v16, v17);
  v23 = objc_msgSend_objectForKey_(v13, v19, @"data", v20, v21, v22);
  v29 = objc_msgSend_count(v23, v24, v25, v26, v27, v28);

  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v30, v29, v31, v32, v33);
  {
    v40 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35, v36, v37, v38);
    objc_msgSend_addObject_(i, v41, v40, v42, v43, v44);
  }

  v45 = objc_msgSend_objectForKey_(v13, v34, @"annotatedCutPoints", v36, v37, v38);
  v50 = objc_msgSend_objectForKey_(v13, v46, @"segmentationCodePoints", v47, v48, v49);
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = sub_1836E6260;
  v93[3] = &unk_1E6DDC980;
  v94 = v50;
  v95 = v45;
  v96 = i;
  v51 = i;
  v86 = v45;
  v52 = v50;
  objc_msgSend_enumerateObjectsUsingBlock_(v18, v53, v93, v54, v55, v56);
  v57 = MEMORY[0x1E695DF70];
  v63 = objc_msgSend_count(v51, v58, v59, v60, v61, v62);
  v68 = objc_msgSend_arrayWithCapacity_(v57, v64, v63, v65, v66, v67);
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = sub_1836E64E8;
  v91[3] = &unk_1E6DDC9A8;
  v92 = v68;
  v69 = v68;
  objc_msgSend_enumerateObjectsUsingBlock_(v51, v70, v91, v71, v72, v73);
  v78 = objc_msgSend_objectForKey_(v13, v74, @"data", v75, v76, v77);
  v84 = objc_msgSend_copy(v69, v79, v80, v81, v82, v83);
  objc_msgSend_loadStrokesFrom_withStrokes_types_withTime_atTimestamp_channels_orderedStrokes_(self, v85, v90, v78, v84, v11, v89, v88, a6);
}

- (void)loadStrokesBasedOnSectionTypeFrom:(id)a3 section:(id)a4 withTime:(BOOL)a5 atTimestamp:(double)a6 channels:(id)a7 orderedStrokes:(id)a8
{
  v11 = a5;
  v79 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v21 = objc_msgSend_objectForKey_(v14, v17, @"type", v18, v19, v20);

  if (!v21)
  {
    v49 = 1;
    goto LABEL_20;
  }

  v26 = objc_msgSend_objectForKey_(v14, v22, @"type", v23, v24, v25);
  v31 = objc_msgSend_objectForKey_(v14, v27, @"collectionType", v28, v29, v30);
  if (objc_msgSend_isEqualToString_(v26, v32, @"text", v33, v34, v35) && (objc_msgSend_isEqualToString_(v31, v36, @"math", v37, v38, v39) & 1) != 0 || objc_msgSend_isEqualToString_(v26, v36, @"math", v37, v38, v39))
  {
    v40 = objc_msgSend_objectForKeyedSubscript_(v14, v36, @"string", v37, v38, v39);
    if (objc_msgSend_containsString_(v40, v41, @"hline", v42, v43, v44) & 1) != 0 || objc_msgSend_containsString_(v40, v45, @"begin{array}{lr}", v46, v47, v48) && (objc_msgSend_containsString_(v40, v54, @"end{array}", v55, v56, v57))
    {
      v49 = 4;
    }

    else
    {
      v49 = 3;
    }

    goto LABEL_19;
  }

  if (objc_msgSend_isEqualToString_(v26, v36, @"text", v37, v38, v39))
  {
    v49 = 1;
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(v26, v50, @"underline", v51, v52, v53) & 1) == 0)
    {
      v62 = objc_msgSend_objectForKey_(v14, v58, @"box", v59, v60, v61);
      if (v62)
      {
      }

      else
      {
        v49 = objc_msgSend_objectForKey_(v14, v63, @"encircle", v64, v65, v66);

        if (!v49)
        {
          goto LABEL_19;
        }
      }

      v49 = 7;
      goto LABEL_19;
    }

    v49 = 6;
  }

LABEL_19:

LABEL_20:
  v67 = objc_msgSend_objectForKey_(v14, v22, @"data", v23, v24, v25);
  v73 = objc_msgSend_count(v67, v68, v69, v70, v71, v72);
  v77 = objc_msgSend_getStrokeClassificationArray_ofType_(self, v74, v73, v49, v75, v76);
  objc_msgSend_loadStrokesFrom_withStrokes_types_withTime_atTimestamp_channels_orderedStrokes_(self, v78, v79, v67, v77, v11, v15, v16, a6);
}

- (void)loadStrokesFrom:(id)a3 withStrokes:(id)a4 types:(id)a5 withTime:(BOOL)a6 atTimestamp:(double)a7 channels:(id)a8 orderedStrokes:(id)a9
{
  v137 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v24 = a9;
  if (v16 && objc_msgSend_count(v16, v19, v20, v21, v22, v23))
  {
    v30 = 0;
    v31 = a7 + 1.0;
    v32 = 0.0;
    v33 = 1;
    objc_msgSend_objectAtIndex_(v16, v25, 0, v26, v27, v28, 138412290, v29);
    while (1)
      v43 = {;
      v49 = objc_msgSend_count(v43, v44, v45, v46, v47, v48);

      if (v49)
      {
        if (v33)
        {
          v54 = v31;
        }

        else
        {
          v54 = v32;
        }

        if ((v33 & 1 & a6) == 1)
        {
          v55 = objc_msgSend_objectAtIndex_(v16, v50, v30, v51, v52, v53);
          v60 = objc_msgSend_objectAtIndex_(v55, v56, 0, v57, v58, v59);

          v65 = objc_msgSend_valueForKey_(v18, v61, @"t", v62, v63, v64);
          v71 = objc_msgSend_intValue(v65, v66, v67, v68, v69, v70);

          if (objc_msgSend_count(v60, v72, v73, v74, v75, v76) > v71)
          {
            v81 = objc_msgSend_objectAtIndex_(v60, v77, v71, v78, v79, v80);
            objc_msgSend_doubleValue(v81, v82, v83, v84, v85, v86);
            v88 = v87;

            if (v88 == 0.0)
            {
              v32 = v31;
            }
          }

          v54 = v32;
        }

        v89 = objc_msgSend_objectAtIndex_(v17, v50, v30, v51, v52, v53);
        v95 = objc_msgSend_intValue(v89, v90, v91, v92, v93, v94);

        v96 = [CHClientStroke alloc];
        v101 = objc_msgSend_objectAtIndex_(v16, v97, v30, v98, v99, v100);
        v104 = objc_msgSend_initWithArray_channels_withTimeOffset_type_(v96, v102, v101, v18, v95, v103, v54);

        objc_msgSend_addObject_(v24, v105, v104, v106, v107, v108);
        if (!objc_msgSend_pointsCount(v104, v109, v110, v111, v112, v113))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v126 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            v132 = objc_msgSend_path(v15, v127, v128, v129, v130, v131);
            *buf = v133;
            v136 = v132;
            _os_log_impl(&dword_18366B000, v126, OS_LOG_TYPE_ERROR, "Unexpected empty stroke in document %@", buf, 0xCu);
          }

LABEL_5:
          v33 = 0;
          goto LABEL_6;
        }

        if (a6)
        {
          goto LABEL_5;
        }

        objc_msgSend_endTimestamp(v104, v114, v115, v116, v117, v118);
        v33 = 0;
        v54 = v119 + 0.1;
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v104 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v125 = objc_msgSend_path(v15, v120, v121, v122, v123, v124);
          *buf = v133;
          v136 = v125;
          _os_log_impl(&dword_18366B000, v104, OS_LOG_TYPE_ERROR, "Unexpected empty stroke in document %@", buf, 0xCu);
        }

        v54 = v32;
      }

LABEL_6:

      ++v30;
      v32 = v54;
      if (v30 >= objc_msgSend_count(v16, v34, v35, v36, v37, v38))
      {
        break;
      }

      objc_msgSend_objectAtIndex_(v16, v39, v30, v40, v41, v42, v133, v134);
    }
  }
}

- (CGRect)boundingBox
{
  v31 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_orderedStrokes;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16, v8);
  if (v9)
  {
    v15 = v9;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_boundingBox(*(*(&v26 + 1) + 8 * v17), v10, v11, v12, v13, v14, v26);
        v35.origin.x = v18;
        v35.origin.y = v19;
        v35.size.width = v20;
        v35.size.height = v21;
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33 = CGRectUnion(v32, v35);
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v26, v30, 16, v14);
    }

    while (v15);
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)drawing
{
  v7 = objc_msgSend_allKeys(self->_strokesByID, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_drawingWithStrokes_(self, v8, v7, v9, v10, v11);

  return v12;
}

- (id)drawingWithStrokes:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(CHDrawing);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v31, v35, 16, v7);
  if (v8)
  {
    v13 = v8;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = objc_msgSend_objectForKeyedSubscript_(self->_strokesByID, v9, *(*(&v31 + 1) + 8 * i), v10, v11, v12);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_1836E6F18;
        v29[3] = &unk_1E6DDC9D0;
        v17 = v5;
        v30 = v17;
        objc_msgSend_enumeratePointsWithTimestep_usingBlock_(v16, v18, v29, v19, v20, v21, 0.00833333333);
        objc_msgSend_endStroke(v17, v22, v23, v24, v25, v26);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v31, v35, 16, v12);
    }

    while (v13);
  }

  return v5;
}

- (id)drawingWithGroups:(id)a3 transforms:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CHDrawing);
  v14 = objc_msgSend_allKeys(self->_strokesByID, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18, v19);

  if (objc_msgSend_count(v6, v21, v22, v23, v24, v25))
  {
    v30 = 0;
    objc_msgSend_objectAtIndexedSubscript_(v6, v26, 0, v27, v28, v29);
    while (1)
      v55 = {;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v67, v71, 16, v57);
      if (v58)
      {
        v63 = v58;
        v64 = *v68;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v68 != v64)
            {
              objc_enumerationMutation(v55);
            }

            objc_msgSend_removeObject_(v20, v59, *(*(&v67 + 1) + 8 * i), v60, v61, v62);
          }

          v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v59, &v67, v71, 16, v62);
        }

        while (v63);
      }

      v31 = objc_msgSend_drawingWithStrokes_(self, v59, v55, v60, v61, v62);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v7, v32, v30, v33, v34, v35);
      v41 = objc_msgSend_newDrawingWithTransform_(v31, v37, v36, v38, v39, v40);

      objc_msgSend_appendDrawing_(v8, v42, v41, v43, v44, v45);
      if (++v30 >= objc_msgSend_count(v6, v46, v47, v48, v49, v50))
      {
        break;
      }

      objc_msgSend_objectAtIndexedSubscript_(v6, v51, v30, v52, v53, v54);
    }
  }

  return v8;
}

- (void)updateWithGroups:(id)a3 transforms:(id)a4
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v94 = a4;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v93 = self;
  v18 = objc_msgSend_orderedStrokes(self, v13, v14, v15, v16, v17);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v95, v99, 16, v20);
  if (v21)
  {
    v27 = v21;
    v28 = *v96;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        while (1)
        {
          if (*v96 != v28)
          {
            objc_enumerationMutation(v18);
          }

          v35 = *(*(&v95 + 1) + 8 * i);
          v36 = objc_msgSend_strokeIdentifier(v35, v22, v23, v24, v25, v26);
          if (objc_msgSend_count(v6, v37, v38, v39, v40, v41))
          {
            break;
          }

LABEL_5:
          v30 = objc_msgSend_newStrokeWithoutTransformation(v35, v42, v43, v44, v45, v46);
          objc_msgSend_addObject_(v12, v31, v30, v32, v33, v34);

          if (++i == v27)
          {
            goto LABEL_3;
          }
        }

        v47 = 0;
        while (1)
        {
          v48 = objc_msgSend_objectAtIndexedSubscript_(v6, v42, v47, v44, v45, v46);
          if (objc_msgSend_containsObject_(v48, v49, v36, v50, v51, v52))
          {
            break;
          }

          if (++v47 >= objc_msgSend_count(v6, v57, v58, v59, v60, v61))
          {
            goto LABEL_5;
          }
        }

        v62 = objc_msgSend_objectAtIndexedSubscript_(v94, v53, v47, v54, v55, v56);
        v67 = objc_msgSend_newStrokeWithTransformation_(v35, v63, v62, v64, v65, v66);
        objc_msgSend_addObject_(v12, v68, v67, v69, v70, v71);
      }

LABEL_3:
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v22, &v95, v99, 16, v26);
    }

    while (v27);
  }

  v72 = MEMORY[0x1E695DFD8];
  v78 = objc_msgSend_strokesByID(v93, v73, v74, v75, v76, v77);
  v84 = objc_msgSend_allKeys(v78, v79, v80, v81, v82, v83);
  v89 = objc_msgSend_setWithArray_(v72, v85, v84, v86, v87, v88);
  objc_msgSend_updateWithAddedStrokes_removedStrokeIds_(v93, v90, v12, v89, v91, v92);
}

- (id)strokeForIdentifier:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_strokesByID(self, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_objectForKey_(v10, v11, v4, v12, v13, v14);

  return v15;
}

- (int64_t)compareOrderOfStrokeWithIdentifier:(id)a3 toStrokeWithIdentifier:(id)a4
{
  v5 = a4;
  v11 = objc_msgSend_integerValue(a3, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_integerValue(v5, v12, v13, v14, v15, v16);

  if (v11 >= v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  if (v11 > v17)
  {
    return 1;
  }

  else
  {
    return v18;
  }
}

- (id)strokeIdentifierFromData:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v10 = objc_msgSend_objectForKey_(v5->__strokeIdsByEncoding, v6, v4, v7, v8, v9);

  if (v10)
  {
    v15 = objc_msgSend_objectForKey_(v5->__strokeIdsByEncoding, v11, v4, v12, v13, v14);
  }

  else
  {
    v16 = MEMORY[0x1E696ACD0];
    v17 = objc_opt_class();
    v23 = objc_msgSend_encodedStrokeIdentifier(v4, v18, v19, v20, v21, v22);
    v31 = 0;
    v15 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v16, v24, v17, v23, &v31, v25);
    v26 = v31;

    objc_msgSend_setObject_forKey_(v5->__strokeIdsByEncoding, v27, v15, v4, v28, v29);
  }

  objc_sync_exit(v5);

  return v15;
}

- (id)encodedStrokeIdentifier:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_objectForKey_(self->_strokesByID, v5, v4, v6, v7, v8);

  if (v9)
  {
    v14 = objc_msgSend_objectForKey_(self->_strokesByID, v10, v4, v11, v12, v13);
    v20 = objc_msgSend_encodedStrokeIdentifier(v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v21 = [CHEncodedStrokeIdentifier alloc];
    v39 = 0;
    v14 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v22, v4, 1, &v39, v23);
    v20 = objc_msgSend_initWithData_(v21, v24, v14, v25, v26, v27);
  }

  v28 = v20;

  v29 = self;
  objc_sync_enter(v29);
  v34 = objc_msgSend_objectForKey_(v29->__strokeIdsByEncoding, v30, v28, v31, v32, v33);

  if (!v34)
  {
    objc_msgSend_setObject_forKey_(v29->__strokeIdsByEncoding, v35, v4, v28, v36, v37);
  }

  objc_sync_exit(v29);

  return v28;
}

- (NSOrderedSet)visibleStrokeEncodedIdentifiers
{
  v6 = MEMORY[0x1E695DFB8];
  v7 = objc_msgSend_allKeys(self->__strokeIdsByEncoding, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_orderedSetWithArray_(v6, v8, v7, v9, v10, v11);

  return v12;
}

@end