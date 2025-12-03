@interface CHVisualizationManager
+ (BOOL)variableHeightForRecognitionSessionStatusKey:(id)key;
+ (CGColor)newColorForPrincipalLineType:(int)type;
+ (CGColor)newColorForVisualizedItemAtIndex:(int64_t)index;
+ (id)availableRecognitionSessionStatusKeys;
+ (id)availableVisualizationIdentifiers;
+ (id)localizedNameForRecognitionSessionStatusKey:(id)key;
+ (id)localizedNameForVisualizationIdentifier:(id)identifier;
- (BOOL)isEnabledVisualizationForIdentifier:(id)identifier;
- (CHVisualizationManager)init;
- (CHVisualizationManager)initWithRecognitionSession:(id)session;
- (id)valueForRecognitionStatusKey:(id)key;
- (int64_t)visualizationIndexForStrokeGroup:(id)group;
- (void)dealloc;
- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds;
- (void)recognitionSessionDidChangeStatus:(id)status;
- (void)recognitionSessionDidUpdateRecognitionResult:(id)result;
- (void)setEnabled:(BOOL)enabled forVisualizationIdentifier:(id)identifier;
- (void)setStatusReportingEnabled:(BOOL)enabled;
- (void)toggleSelectiveVisualizationsAtPoint:(CGPoint)point;
- (void)visualization:(id)visualization needsDisplayInRect:(CGRect)rect;
- (void)visualizationNeedsDisplay:(id)display;
@end

@implementation CHVisualizationManager

+ (id)availableVisualizationIdentifiers
{
  if (qword_1EA84D118 == -1)
  {
    v3 = qword_1EA84D110;
  }

  else
  {
    dispatch_once(&qword_1EA84D118, &unk_1EF1BEFD0);
    v3 = qword_1EA84D110;
  }

  return v3;
}

+ (id)localizedNameForVisualizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_1EA84D128 != -1)
  {
    dispatch_once(&qword_1EA84D128, &unk_1EF1BEFF0);
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84D120, v3, identifierCopy, v4, v5, v6);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1EF1C0318;
  }

  v11 = v10;

  return v10;
}

+ (id)availableRecognitionSessionStatusKeys
{
  v6[10] = *MEMORY[0x1E69E9840];
  v6[0] = @"CHStatusKeyStatus";
  v6[1] = @"CHStatusKeyEnvironment";
  v6[2] = @"CHStatusKeyLocales";
  v6[3] = @"CHStatusKeyLastDurationTotal";
  v6[4] = @"CHStatusKeyLastDurationDetailed";
  v6[5] = @"CHStatusStrokeCount";
  v6[6] = @"CHStatusKeyGroupCount";
  v6[7] = @"CHStatusKeyTranscript";
  v6[8] = @"CHStatusKeyAllResults";
  v6[9] = @"CHStatusKeyAllMathResults";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 10, v2, v3);

  return v4;
}

+ (id)localizedNameForRecognitionSessionStatusKey:(id)key
{
  keyCopy = key;
  if (qword_1EA84D148 != -1)
  {
    dispatch_once(&qword_1EA84D148, &unk_1EF1BF030);
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84D140, v3, keyCopy, v4, v5, v6);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1EF1C0318;
  }

  v11 = v10;

  return v10;
}

+ (BOOL)variableHeightForRecognitionSessionStatusKey:(id)key
{
  keyCopy = key;
  v8 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v4, @"CHStatusKeyTranscript", v5, v6, v7, @"CHStatusKeyAllResults", @"CHStatusKeyAllMathResults", 0);
  v13 = objc_msgSend_containsObject_(v8, v9, keyCopy, v10, v11, v12);

  return v13;
}

+ (CGColor)newColorForVisualizedItemAtIndex:(int64_t)index
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = index % 10;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = DeviceRGB;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v6 = &xmmword_1839D9990;
        goto LABEL_21;
      }

      if (v3 == 1)
      {
        v6 = &xmmword_1839D99F0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v3 == 2)
    {
      v6 = &xmmword_1839D99D0;
    }

    else
    {
      v6 = &xmmword_1839D98D0;
    }
  }

  else
  {
    if (v3 > 5)
    {
      switch(v3)
      {
        case 6:
          v6 = &xmmword_1839D9910;
          goto LABEL_21;
        case 7:
          v6 = &xmmword_1839D9930;
          goto LABEL_21;
        case 8:
          v6 = &xmmword_1839D9950;
          goto LABEL_21;
      }

LABEL_20:
      v6 = &xmmword_1839D9970;
      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v6 = &xmmword_1839D99B0;
    }

    else
    {
      v6 = &xmmword_1839D98F0;
    }
  }

LABEL_21:
  v7 = v6[1];
  v10[0] = *v6;
  v10[1] = v7;
  v8 = CGColorCreate(DeviceRGB, v10);
  CGColorSpaceRelease(v5);
  return v8;
}

+ (CGColor)newColorForPrincipalLineType:(int)type
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = 0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v6 = DeviceRGB;
  if (type > 2)
  {
    if (type == 3)
    {
      v7 = &xmmword_1839D99D0;
      goto LABEL_10;
    }

    if (type == 4)
    {
      v7 = &xmmword_1839D99F0;
      goto LABEL_10;
    }
  }

  else
  {
    if (type == 1)
    {
      v7 = &xmmword_1839D9990;
      goto LABEL_10;
    }

    if (type == 2)
    {
      v7 = &xmmword_1839D99B0;
LABEL_10:
      v8 = v7[1];
      v10[0] = *v7;
      v10[1] = v8;
      v4 = CGColorCreate(DeviceRGB, v10);
    }
  }

  CGColorSpaceRelease(v6);
  return v4;
}

- (CHVisualizationManager)init
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Use initWithRecognitionSession: instead.", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Use initWithRecognitionSession: instead.", v6, 2u);
  }

LABEL_8:

  return 0;
}

- (CHVisualizationManager)initWithRecognitionSession:(id)session
{
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = CHVisualizationManager;
  v6 = [(CHVisualizationManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recognitionSession, session);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    enabledVisualizationIDs = v7->__enabledVisualizationIDs;
    v7->__enabledVisualizationIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeVisualizationIDs = v7->__activeVisualizationIDs;
    v7->__activeVisualizationIDs = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeVisualizationsByID = v7->__activeVisualizationsByID;
    v7->__activeVisualizationsByID = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    strokeGroupIndexByAncestorID = v7->__strokeGroupIndexByAncestorID;
    v7->__strokeGroupIndexByAncestorID = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    renderedResults = v7->__renderedResults;
    v7->__renderedResults = v16;
  }

  return v7;
}

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  if (self && self->__registeredAsChangeObserver)
  {
    objc_msgSend_unregisterChangeObserver_(self->_recognitionSession, a2, self, v3, v4, v5);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_allValues(self->__activeVisualizationsByID, a2, v2, v3, v4, v5);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16, v9);
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = objc_msgSend_delegate(v18, v10, v11, v12, v13, v14);
        v20 = v19 == self;

        if (v20)
        {
          objc_msgSend_setDelegate_(v18, v10, 0, v12, v13, v14);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v22, v26, 16, v14);
    }

    while (v15);
  }

  v21.receiver = self;
  v21.super_class = CHVisualizationManager;
  [(CHVisualizationManager *)&v21 dealloc];
}

- (void)setEnabled:(BOOL)enabled forVisualizationIdentifier:(id)identifier
{
  enabledCopy = enabled;
  v120 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (objc_msgSend_isEnabledVisualizationForIdentifier_(self, v6, identifierCopy, v7, v8, v9) == enabledCopy)
  {
    goto LABEL_44;
  }

  if (enabledCopy)
  {
    if (self)
    {
      objc_msgSend_addObject_(self->__enabledVisualizationIDs, v10, identifierCopy, v11, v12, v13);
    }

    else
    {
      objc_msgSend_addObject_(0, v10, identifierCopy, v11, v12, v13);
    }
  }

  else if (self)
  {
    objc_msgSend_removeObject_(self->__enabledVisualizationIDs, v10, identifierCopy, v11, v12, v13);
  }

  else
  {
    objc_msgSend_removeObject_(0, v10, identifierCopy, v11, v12, v13);
  }

  if (!self)
  {
    goto LABEL_44;
  }

  v14 = objc_opt_class();
  objc_msgSend_availableVisualizationIdentifiers(v14, v15, v16, v17, v18, v19);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v20 = v114 = 0u;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v113, v119, 16, v22);
  v28 = v20;
  if (!v27)
  {
    goto LABEL_42;
  }

  v29 = 0;
  v30 = *v114;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v114 != v30)
      {
        objc_enumerationMutation(v20);
      }

      v32 = *(*(&v113 + 1) + 8 * i);
      isEnabledVisualizationForIdentifier = objc_msgSend_isEnabledVisualizationForIdentifier_(self, v23, v32, v24, v25, v26);
      v34 = v32;
      v39 = objc_msgSend_containsObject_(self->__activeVisualizationIDs, v35, v34, v36, v37, v38);

      if (!(v39 & 1 | ((isEnabledVisualizationForIdentifier & 1) == 0)))
      {
        v57 = v34;
        if (objc_msgSend_containsObject_(self->__activeVisualizationIDs, v58, v57, v59, v60, v61))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v66 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_ERROR, "Cannot activate an already active visualization", buf, 2u);
          }
        }

        if (objc_msgSend_containsObject_(self->__activeVisualizationIDs, v62, v57, v63, v64, v65))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v67 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v67, OS_LOG_TYPE_FAULT, "Cannot activate an already active visualization", buf, 2u);
          }
        }

        v68 = v57;
        objc_opt_self();
        if (qword_1EA84D138 != -1)
        {
          dispatch_once(&qword_1EA84D138, &unk_1EF1BF010);
        }

        v73 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84D130, v69, v68, v70, v71, v72);
        v74 = v73;

        if (v73)
        {
          v79 = [v73 alloc];
          v85 = objc_msgSend_recognitionSession(self, v80, v81, v82, v83, v84);
          v90 = objc_msgSend_initWithRecognitionSession_(v79, v86, v85, v87, v88, v89);

          objc_msgSend_setObject_forKey_(self->__activeVisualizationsByID, v91, v90, v68, v92, v93);
          objc_msgSend_setDelegate_(v90, v94, self, v95, v96, v97);
        }

        objc_msgSend_addObject_(self->__activeVisualizationIDs, v75, v68, v76, v77, v78);
        v98 = self->__activeVisualizationIDs;
        v117[0] = MEMORY[0x1E69E9820];
        v117[1] = 3221225472;
        v117[2] = sub_1838BC708;
        v117[3] = &unk_1E6DDF730;
        v117[4] = self;
        objc_msgSend_sortUsingComparator_(v98, v99, v117, v100, v101, v102);

        goto LABEL_11;
      }

      if (!(isEnabledVisualizationForIdentifier & 1 | ((v39 & 1) == 0)))
      {
        v40 = v34;
        v50 = objc_msgSend_objectForKeyedSubscript_(self->__activeVisualizationsByID, v41, v40, v42, v43, v44);
        if (v50)
        {
          objc_msgSend_removeObjectForKey_(self->__activeVisualizationsByID, v45, v40, v47, v48, v49);
        }

        v51 = objc_msgSend_delegate(v50, v45, v46, v47, v48, v49);
        v52 = v51 == self;

        if (v52)
        {
          objc_msgSend_setDelegate_(v50, v53, 0, v54, v55, v56);
        }

        objc_msgSend_removeObject_(self->__activeVisualizationIDs, v53, v40, v54, v55, v56);

LABEL_11:
        v29 = 1;
        continue;
      }
    }

    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v113, v119, 16, v26);
  }

  while (v27);

  if (v29)
  {
    v28 = objc_msgSend_delegate(self, v103, v104, v105, v106, v107);
    objc_msgSend_visualizationManagerNeedsDisplay_(v28, v108, self, v109, v110, v111);
LABEL_42:
  }

  sub_1838BB6B0(self);

LABEL_44:
}

- (BOOL)isEnabledVisualizationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self)
  {
    v9 = objc_msgSend_containsObject_(self->__enabledVisualizationIDs, v4, identifierCopy, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_containsObject_(0, v4, identifierCopy, v5, v6, v7);
  }

  v10 = v9;

  return v10;
}

- (void)setStatusReportingEnabled:(BOOL)enabled
{
  if (self->_statusReportingEnabled != enabled)
  {
    self->_statusReportingEnabled = enabled;
    sub_1838BB6B0(self);
  }
}

- (id)valueForRecognitionStatusKey:(id)key
{
  keyCopy = key;
  if (!objc_msgSend_statusReportingEnabled(self, v5, v6, v7, v8, v9))
  {
    v33 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v10, v11, v12, v13, v14);
    v32 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"<Status Reporting Disabled>", &stru_1EF1C0318, 0, v35);
LABEL_27:

    goto LABEL_28;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v10, @"CHStatusKeyStatus", v12, v13, v14))
  {
    v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_status(v20, v21, v22, v23, v24, v25);
    v32 = sub_18391BF68(v26, v27, v28, v29, v30, v31);
  }

  else
  {
    v32 = 0;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v15, @"CHStatusKeyEnvironment", v17, v18, v19))
  {
    v41 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v36, v37, v38, v39, v40);
    v33 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"In process", &stru_1EF1C0318, 0, v43);

    v49 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v44, v45, v46, v47, v48);
    v52 = objc_msgSend_localizedStringForKey_value_table_(v49, v50, @"Out of process", &stru_1EF1C0318, 0, v51);

    v58 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v53, v54, v55, v56, v57);
    v61 = objc_msgSend_localizedStringForKey_value_table_(v58, v59, @"Automatic", &stru_1EF1C0318, 0, v60);

    v67 = objc_msgSend_recognitionSession(self, v62, v63, v64, v65, v66);
    v73 = objc_msgSend_lastRecognitionResult(v67, v68, v69, v70, v71, v72);
    v79 = objc_msgSend_recognitionEnvironment(v73, v74, v75, v76, v77, v78);

    v85 = objc_msgSend_recognitionSession(self, v80, v81, v82, v83, v84);
    v91 = objc_msgSend_recognitionEnvironment(v85, v86, v87, v88, v89, v90);

    v96 = v33;
    if (v91)
    {
      if (v91 == 1)
      {
LABEL_11:
        v97 = v96;
LABEL_25:
        v156 = v97;

        v32 = v156;
        goto LABEL_26;
      }

      if (v91 == 2)
      {
        v96 = v52;
        goto LABEL_11;
      }

LABEL_26:

      goto LABEL_27;
    }

    if (v79 != 1)
    {
      if (v79 != 2)
      {
        goto LABEL_26;
      }

      v96 = v52;
    }

    v97 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v92, @"%@ (%@)", v93, v94, v95, v61, v96);
    goto LABEL_25;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v36, @"CHStatusKeyLocales", v38, v39, v40))
  {
    v103 = objc_msgSend_recognitionSession(self, v98, v99, v100, v101, v102);
    v109 = objc_msgSend_lastRecognitionResult(v103, v104, v105, v106, v107, v108);
    v115 = objc_msgSend_preferredLocales(v109, v110, v111, v112, v113, v114);

    if (v115)
    {
      v119 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v115, v116, @", ", &unk_1EF1BF050, v117, v118);
    }

    else
    {
      v119 = &stru_1EF1C0318;
    }

    v32 = v119;
    goto LABEL_28;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v98, @"CHStatusKeyLastDurationTotal", v100, v101, v102))
  {
    v293 = 0;
    v291 = 0u;
    v292 = 0u;
    v290 = 0u;
    v125 = objc_msgSend_recognitionSession(self, v120, v121, v122, v123, v124);
    v131 = objc_msgSend_lastRecognitionResult(v125, v126, v127, v128, v129, v130);
    v137 = v131;
    if (v131)
    {
      objc_msgSend_generationDuration(v131, v132, v133, v134, v135, v136);
    }

    else
    {
      v293 = 0;
      v291 = 0u;
      v292 = 0u;
      v290 = 0u;
    }

    v191 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v187, @"%0.2fs", v188, v189, v190, v293);
LABEL_42:
    v242 = v191;

    v32 = v242;
    goto LABEL_28;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v120, @"CHStatusKeyLastDurationDetailed", v122, v123, v124))
  {
    v293 = 0;
    v291 = 0u;
    v292 = 0u;
    v290 = 0u;
    v143 = objc_msgSend_recognitionSession(self, v138, v139, v140, v141, v142);
    v149 = objc_msgSend_lastRecognitionResult(v143, v144, v145, v146, v147, v148);
    v155 = v149;
    if (v149)
    {
      objc_msgSend_generationDuration(v149, v150, v151, v152, v153, v154);
    }

    else
    {
      v293 = 0;
      v291 = 0u;
      v292 = 0u;
      v290 = 0u;
    }

    v191 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v238, @"%0.2fs Clutter Filtering, %0.2fs Stroke class., %0.2fs Grouping, %0.2fs, %0.2fs Recog., %0.2fs Princ. Lines", v239, v240, v241, v290, v291, v292);
    goto LABEL_42;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v138, @"CHStatusStrokeCount", v140, v141, v142))
  {
    v163 = objc_msgSend_recognitionSession(self, v158, v159, v160, v161, v162);
    v169 = objc_msgSend_latestStrokeProvider(v163, v164, v165, v166, v167, v168);

    v175 = objc_msgSend_orderedStrokes(v169, v170, v171, v172, v173, v174);
    v181 = objc_msgSend_count(v175, v176, v177, v178, v179, v180);

    v186 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v182, @"%ld", v183, v184, v185, v181);
LABEL_39:
    v237 = v186;

    goto LABEL_50;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v158, @"CHStatusKeyGroupCount", v160, v161, v162))
  {
    v197 = objc_msgSend_recognitionSession(self, v192, v193, v194, v195, v196);
    v203 = objc_msgSend_lastRecognitionResult(v197, v198, v199, v200, v201, v202);
    v169 = objc_msgSend_strokeGroupingResult(v203, v204, v205, v206, v207, v208);

    v214 = objc_msgSend_strokeGroups(v169, v209, v210, v211, v212, v213);
    v220 = objc_msgSend_count(v214, v215, v216, v217, v218, v219);

    v226 = objc_msgSend_textStrokeGroups(v169, v221, v222, v223, v224, v225);
    v232 = objc_msgSend_count(v226, v227, v228, v229, v230, v231);

    v186 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v233, @"%ld text, %ld non-text", v234, v235, v236, v232, v220 - v232);
    goto LABEL_39;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v192, @"CHStatusKeyTranscript", v194, v195, v196))
  {
    v169 = objc_msgSend_recognitionSession(self, v243, v244, v245, v246, v247);
    v253 = objc_msgSend_lastRecognitionResult(v169, v248, v249, v250, v251, v252);
    v259 = objc_msgSend_highConfidenceDebugDescription(v253, v254, v255, v256, v257, v258);
  }

  else if (objc_msgSend_isEqualToString_(keyCopy, v243, @"CHStatusKeyAllResults", v245, v246, v247))
  {
    v169 = objc_msgSend_recognitionSession(self, v260, v261, v262, v263, v264);
    v253 = objc_msgSend_lastRecognitionResult(v169, v265, v266, v267, v268, v269);
    v289[0] = MEMORY[0x1E69E9820];
    v289[1] = 3221225472;
    v289[2] = sub_1838BC370;
    v289[3] = &unk_1E6DDF6E0;
    v289[4] = self;
    v259 = objc_msgSend_allResultsDebugDescriptionWithGroupHeaderBlock_(v253, v270, v289, v271, v272, v273);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(keyCopy, v260, @"CHStatusKeyAllMathResults", v262, v263, v264))
    {
      goto LABEL_28;
    }

    v169 = objc_msgSend_recognitionSession(self, v274, v275, v276, v277, v278);
    v253 = objc_msgSend_lastRecognitionResult(v169, v279, v280, v281, v282, v283);
    v288[0] = MEMORY[0x1E69E9820];
    v288[1] = 3221225472;
    v288[2] = sub_1838BC420;
    v288[3] = &unk_1E6DDF708;
    v288[4] = self;
    v259 = objc_msgSend_allMathResultsDebugDescriptionWithGroupHeaderBlock_(v253, v284, v288, v285, v286, v287);
  }

  v237 = v259;

LABEL_50:
  v32 = v237;
LABEL_28:

  return v32;
}

- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeAllObjects(self->__renderedResults, a2, context, v5, v6, v7);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = self->__activeVisualizationIDs;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v48, v52, 16, v20);
  if (v21)
  {
    v22 = *v49;
    do
    {
      v23 = 0;
      do
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v48 + 1) + 8 * v23);
        v25 = self->__activeVisualizationsByID;
        v30 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v24, v27, v28, v29, v48);

        if (v30)
        {
          CGContextSaveGState(context);
          objc_msgSend_drawVisualizationInRect_context_viewBounds_(v30, v31, context, v32, v33, v34, v16, v15, v14, v13, x, y, width, height);
          CGContextRestoreGState(context);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            renderedResults = self->__renderedResults;
            v41 = objc_msgSend_renderedResults(v30, v35, v36, v37, v38, v39);
            objc_msgSend_addObjectsFromArray_(renderedResults, v42, v41, v43, v44, v45);
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v46, &v48, v52, 16, v47);
    }

    while (v21);
  }
}

- (void)toggleSelectiveVisualizationsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (self)
  {
    self = self->__activeVisualizationsByID;
  }

  v9 = objc_msgSend_allValues(self, a2, v3, v4, v5, v6, v20);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16, v11);
  if (v17)
  {
    v18 = *v21;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_toggleVisualizationRegionAtPoint_(*(*(&v20 + 1) + 8 * i), v12, v13, v14, v15, v16, x, y);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16, v16);
    }

    while (v17);
  }
}

- (void)visualizationNeedsDisplay:(id)display
{
  v11 = objc_msgSend_delegate(self, a2, display, v3, v4, v5);
  objc_msgSend_visualizationManagerNeedsDisplay_(v11, v7, self, v8, v9, v10);
}

- (void)visualization:(id)visualization needsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = objc_msgSend_delegate(self, a2, visualization, v4, v5, v6);
  objc_msgSend_visualizationManager_needsDisplayInRect_(v16, v12, self, v13, v14, v15, x, y, width, height);
}

- (int64_t)visualizationIndexForStrokeGroup:(id)group
{
  v168 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (self)
  {
    strokeGroupIndexByAncestorID = self->__strokeGroupIndexByAncestorID;
  }

  else
  {
    strokeGroupIndexByAncestorID = 0;
  }

  v5 = strokeGroupIndexByAncestorID;
  v6 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_ancestorIdentifier(groupCopy, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_numberWithInteger_(v6, v13, v12, v14, v15, v16);
  v22 = objc_msgSend_objectForKeyedSubscript_(v5, v18, v17, v19, v20, v21);

  if (v22)
  {
    v28 = objc_msgSend_integerValue(v22, v23, v24, v25, v26, v27);
  }

  else
  {
    if (self)
    {
      v29 = objc_msgSend_recognitionSession(self, v23, v24, v25, v26, v27);
      v35 = objc_msgSend_lastRecognitionResult(v29, v30, v31, v32, v33, v34);
      v41 = objc_msgSend_strokeGroupingResult(v35, v36, v37, v38, v39, v40);
      v47 = objc_msgSend_strokeGroups(v41, v42, v43, v44, v45, v46);

      v156 = v47;
      v53 = objc_msgSend_allObjects(v47, v48, v49, v50, v51, v52);
      v59 = objc_msgSend_strokeGroupAncestorComparator(CHStrokeGroup, v54, v55, v56, v57, v58);
      v64 = objc_msgSend_sortedArrayUsingComparator_(v53, v60, v59, v61, v62, v63);

      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v65 = v64;
      v68 = 0;
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v163, v167, 16, v67);
      if (v69)
      {
        v70 = *v164;
        while (2)
        {
          v71 = 0;
          v72 = v68;
          v68 += v69;
          do
          {
            if (*v164 != v70)
            {
              objc_enumerationMutation(v65);
            }

            v73 = *(*(&v163 + 1) + 8 * v71);
            v74 = self->__strokeGroupIndexByAncestorID;
            v75 = MEMORY[0x1E696AD98];
            v81 = objc_msgSend_ancestorIdentifier(v73, v76, v77, v78, v79, v80);
            v86 = objc_msgSend_numberWithInteger_(v75, v82, v81, v83, v84, v85);
            v91 = objc_msgSend_objectForKeyedSubscript_(v74, v87, v86, v88, v89, v90);

            if (!v91)
            {
              v68 = v72;
              goto LABEL_16;
            }

            ++v72;
            ++v71;
          }

          while (v69 != v71);
          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v92, &v163, v167, 16, v93);
          if (v69)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      v159 = 0;
      v160 = &v159;
      v161 = 0x2020000000;
      v162 = -1;
      v94 = self->__strokeGroupIndexByAncestorID;
      v158[0] = MEMORY[0x1E69E9820];
      v158[1] = 3221225472;
      v158[2] = sub_1838BCFBC;
      v158[3] = &unk_1E6DDF758;
      v158[4] = &v159;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v94, v95, v158, v96, v97, v98);
      v104 = v160[3] + 1;
      while (v68 < objc_msgSend_count(v65, v99, v100, v101, v102, v103))
      {
        v109 = objc_msgSend_objectAtIndexedSubscript_(v65, v105, v68, v106, v107, v108);
        v114 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v110, v104, v111, v112, v113);
        v115 = self->__strokeGroupIndexByAncestorID;
        v116 = MEMORY[0x1E696AD98];
        v122 = objc_msgSend_ancestorIdentifier(v109, v117, v118, v119, v120, v121);
        v127 = objc_msgSend_numberWithInteger_(v116, v123, v122, v124, v125, v126);
        objc_msgSend_setObject_forKeyedSubscript_(v115, v128, v114, v127, v129, v130);

        ++v68;
        ++v104;
      }

      _Block_object_dispose(&v159, 8);

      v131 = self->__strokeGroupIndexByAncestorID;
    }

    else
    {
      v131 = 0;
    }

    v132 = v131;
    v133 = MEMORY[0x1E696AD98];
    v139 = objc_msgSend_ancestorIdentifier(groupCopy, v134, v135, v136, v137, v138);
    v144 = objc_msgSend_numberWithInteger_(v133, v140, v139, v141, v142, v143);
    v22 = objc_msgSend_objectForKeyedSubscript_(v132, v145, v144, v146, v147, v148);

    if (!v22)
    {
      v154 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_23;
    }

    v28 = objc_msgSend_integerValue(v22, v149, v150, v151, v152, v153);
  }

  v154 = v28;
LABEL_23:

  return v154;
}

- (void)recognitionSessionDidUpdateRecognitionResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1838BD0DC;
  v6[3] = &unk_1E6DDC818;
  v7 = resultCopy;
  selfCopy = self;
  v5 = resultCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)recognitionSessionDidChangeStatus:(id)status
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1838BD370;
  block[3] = &unk_1E6DDBE10;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end