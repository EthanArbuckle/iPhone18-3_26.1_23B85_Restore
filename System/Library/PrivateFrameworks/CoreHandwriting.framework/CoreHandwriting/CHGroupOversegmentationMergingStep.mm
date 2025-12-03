@interface CHGroupOversegmentationMergingStep
- (CHGroupOversegmentationMergingStep)initWithAdditionalRecognitionBlock:(id)block strokeProvider:(id)provider locales:(id)locales;
- (id)process:(id)process options:(id)options;
@end

@implementation CHGroupOversegmentationMergingStep

- (CHGroupOversegmentationMergingStep)initWithAdditionalRecognitionBlock:(id)block strokeProvider:(id)provider locales:(id)locales
{
  v50[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  providerCopy = provider;
  localesCopy = locales;
  v48.receiver = self;
  v48.super_class = CHGroupOversegmentationMergingStep;
  v11 = [(CHGroupOversegmentationMergingStep *)&v48 init];
  if (v11)
  {
    v47 = objc_alloc_init(CHUpdateTokenPropertyForUnitConversionStep);
    v12 = objc_alloc_init(CHInsertPrecedingSpaceForUnitsStep);
    v13 = [CHMathPostProcessingManager alloc];
    v50[0] = v47;
    v50[1] = v12;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v50, 2, v15, v16);
    v22 = objc_msgSend_initWithSequence_(v13, v18, v17, v19, v20, v21);
    unitConversionPostProcessor = v11->_unitConversionPostProcessor;
    v11->_unitConversionPostProcessor = v22;

    v24 = objc_alloc_init(CHUpdateTokenPropertyForVariableAssignmentStep);
    v25 = [CHMathPostProcessingManager alloc];
    v49 = v24;
    v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, &v49, 1, v27, v28);
    v34 = objc_msgSend_initWithSequence_(v25, v30, v29, v31, v32, v33);
    variableAssignmentPostProcessor = v11->_variableAssignmentPostProcessor;
    v11->_variableAssignmentPostProcessor = v34;

    v36 = MEMORY[0x1865E6810](blockCopy);
    additionalRecognitionBlock = v11->_additionalRecognitionBlock;
    v11->_additionalRecognitionBlock = v36;

    objc_storeStrong(&v11->_strokeProvider, provider);
    v38 = [CHBottomUpStrokeGroupingStrategy alloc];
    isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v38, v39, providerCopy, 1, localesCopy, 0, 0);
    leftToRightBottomUpStrategy = v11->_leftToRightBottomUpStrategy;
    v11->_leftToRightBottomUpStrategy = isInlineContinuousMode_inlineContinuousModeTargets;

    v42 = [CHBottomUpStrokeGroupingStrategy alloc];
    v44 = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v42, v43, providerCopy, 2, localesCopy, 0, 0);
    rightToLeftBottomUpStrategy = v11->_rightToLeftBottomUpStrategy;
    v11->_rightToLeftBottomUpStrategy = v44;
  }

  return v11;
}

- (id)process:(id)process options:(id)options
{
  v968 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v11 = [CHStrokeGroupingResult alloc];
  if (processCopy)
  {
    v12 = objc_msgSend_copy(processCopy[9], v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = objc_msgSend_copy(0, v6, v7, v8, v9, v10);
  }

  v15 = v12;
  v16 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v11, v13, v12, 0, 0, v14);

  v922 = v16;
  v923 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v16, v17, 3, 0, v18, v19);
  if (objc_msgSend_count(v923, v20, v21, v22, v23, v24))
  {
    v920 = objc_msgSend_mergeableStrokeGroupClustersFromSortedStrokeGroups_(CHStrokeGroupingManager, v25, v923, v26, v27, v28);
    v931 = sub_1838E9890(self, optionsCopy);
    v949 = 0u;
    v950 = 0u;
    v947 = 0u;
    v948 = 0u;
    obj = v920;
    v937 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v947, v960, 16, v30);
    if (!v937)
    {
      goto LABEL_196;
    }

    v936 = *v948;
    *&v31 = 138412290;
    v919 = v31;
    while (1)
    {
      v941 = 0;
      do
      {
        if (*v948 != v936)
        {
          objc_enumerationMutation(obj);
        }

        if (processCopy)
        {
          v32 = processCopy[10];
        }

        else
        {
          v32 = 0;
        }

        v33 = *(*(&v947 + 1) + 8 * v941);
        v34 = v32;
        v940 = v33;
        v942 = objc_msgSend_textTranscriptionsForSortedGroupCluster_recognizedResultsByGroupID_(CHStrokeGroupRecognitionResult, v35, v33, v34, v36, v37);

        v43 = objc_msgSend_count(v942, v38, v39, v40, v41, v42);
        if (v43 != objc_msgSend_count(v33, v44, v45, v46, v47, v48))
        {
          goto LABEL_170;
        }

        v53 = objc_msgSend_componentsJoinedByString_(v942, v49, @" ", v50, v51, v52);
        v938 = v53;
        if (sub_1837A5A34(v53))
        {
          goto LABEL_118;
        }

        if (objc_msgSend_isMathUnitConversionPatternForTextTranscription_locales_(CHTokenizedMathResult, v54, v53, v931, v55, v56))
        {
          v57 = v33;
          v58 = processCopy;
          v59 = v58;
          if (self)
          {
            v957 = 0u;
            v958 = 0u;
            v955 = 0u;
            v956 = 0u;
            v60 = v57;
            v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v955, v964, 16, v62);
            if (v68)
            {
              v69 = *v956;
              if (processCopy)
              {
                do
                {
                  for (i = 0; i != v68; ++i)
                  {
                    if (*v956 != v69)
                    {
                      objc_enumerationMutation(v60);
                    }

                    v71 = *(*(&v955 + 1) + 8 * i);
                    v72 = processCopy[10];
                    v73 = MEMORY[0x1E696AD98];
                    v79 = objc_msgSend_uniqueIdentifier(v71, v74, v75, v76, v77, v78);
                    v84 = objc_msgSend_numberWithInteger_(v73, v80, v79, v81, v82, v83);
                    v89 = objc_msgSend_objectForKeyedSubscript_(v72, v85, v84, v86, v87, v88);

                    v95 = objc_msgSend_mathResult(v89, v90, v91, v92, v93, v94);
                    LOBYTE(v84) = v95 == 0;

                    if (v84)
                    {
                      goto LABEL_117;
                    }
                  }

                  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v96, &v955, v964, 16, v97);
                }

                while (v68);
              }

              else
              {
                do
                {
                  for (j = 0; j != v68; ++j)
                  {
                    if (*v956 != v69)
                    {
                      objc_enumerationMutation(v60);
                    }

                    v544 = MEMORY[0x1E696AD98];
                    v545 = objc_msgSend_uniqueIdentifier(*(*(&v955 + 1) + 8 * j), v63, v64, v65, v66, v67, v919);
                    v550 = objc_msgSend_numberWithInteger_(v544, v546, v545, v547, v548, v549);
                    v555 = objc_msgSend_objectForKeyedSubscript_(0, v551, v550, v552, v553, v554);

                    v561 = objc_msgSend_mathResult(v555, v556, v557, v558, v559, v560);
                    LOBYTE(v550) = v561 == 0;

                    if (v550)
                    {
                      goto LABEL_117;
                    }
                  }

                  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v955, v964, 16, v67);
                }

                while (v68);
              }
            }

            v103 = objc_msgSend_mutableCopy(optionsCopy, v98, v99, v100, v101, v102);
            objc_msgSend_setObject_forKeyedSubscript_(v103, v104, MEMORY[0x1E695E118], qword_1EA84BB68, v105, v106);
            v107 = sub_1838E9968(&self->super.super.isa, v60, v59, v103);

LABEL_156:
            if (v107)
            {
              goto LABEL_157;
            }

            goto LABEL_169;
          }

LABEL_178:

          v880 = v33;
          v881 = processCopy;
          goto LABEL_179;
        }

        v108 = sub_1838EA43C(self, v53);
        v109 = v108 == 0;

        if (!v109)
        {
          v57 = v33;
          v58 = processCopy;
          v59 = v58;
          if (!self)
          {
            goto LABEL_178;
          }

          v957 = 0u;
          v958 = 0u;
          v955 = 0u;
          v956 = 0u;
          v60 = v57;
          v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v110, &v955, v964, 16, v111);
          if (!v117)
          {
            goto LABEL_117;
          }

          v118 = *v956;
          if (!processCopy)
          {
LABEL_148:
            v790 = 0;
            while (1)
            {
              if (*v956 != v118)
              {
                objc_enumerationMutation(v60);
              }

              v791 = MEMORY[0x1E696AD98];
              v792 = objc_msgSend_uniqueIdentifier(*(*(&v955 + 1) + 8 * v790), v112, v113, v114, v115, v116, v919);
              v797 = objc_msgSend_numberWithInteger_(v791, v793, v792, v794, v795, v796);
              v802 = objc_msgSend_objectForKeyedSubscript_(0, v798, v797, v799, v800, v801);

              v808 = objc_msgSend_mathResult(v802, v803, v804, v805, v806, v807);
              LODWORD(v797) = v808 == 0;

              if (!v797)
              {
                break;
              }

              if (v117 == ++v790)
              {
                v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v112, &v955, v964, 16, v116);
                if (!v117)
                {
                  goto LABEL_117;
                }

                goto LABEL_148;
              }
            }

LABEL_155:

            v814 = objc_msgSend_mutableCopy(optionsCopy, v809, v810, v811, v812, v813);
            objc_msgSend_setObject_forKeyedSubscript_(v814, v815, MEMORY[0x1E695E110], qword_1EA84BB68, v816, v817);
            v107 = sub_1838E9968(&self->super.super.isa, v60, v59, v814);

            goto LABEL_156;
          }

          do
          {
            for (k = 0; k != v117; ++k)
            {
              if (*v956 != v118)
              {
                objc_enumerationMutation(v60);
              }

              v120 = *(*(&v955 + 1) + 8 * k);
              v121 = processCopy[10];
              v122 = MEMORY[0x1E696AD98];
              v128 = objc_msgSend_uniqueIdentifier(v120, v123, v124, v125, v126, v127);
              v133 = objc_msgSend_numberWithInteger_(v122, v129, v128, v130, v131, v132);
              v138 = objc_msgSend_objectForKeyedSubscript_(v121, v134, v133, v135, v136, v137);

              v144 = objc_msgSend_mathResult(v138, v139, v140, v141, v142, v143);
              LOBYTE(v133) = v144 == 0;

              if ((v133 & 1) == 0)
              {
                goto LABEL_155;
              }
            }

            v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v145, &v955, v964, 16, v146);
          }

          while (v117);
LABEL_117:

LABEL_118:
          v562 = v940;
          v935 = processCopy;
          if (!self)
          {
LABEL_179:

            goto LABEL_169;
          }

          v568 = objc_msgSend_set(MEMORY[0x1E695DFA8], v563, v564, v565, v566, v567);
          *&buf = 0;
          *(&buf + 1) = &buf;
          v962 = 0x2020000000;
          v963 = 0;
          v951 = 0;
          v952 = &v951;
          v953 = 0x2020000000;
          v954 = 0;
          if (!objc_msgSend_count(v562, v569, v570, v571, v572, v573))
          {
            goto LABEL_140;
          }

          v578 = objc_msgSend_objectAtIndexedSubscript_(v562, v574, 0, v575, v576, v577);
          v584 = objc_msgSend_strokeIdentifiers(v578, v579, v580, v581, v582, v583);
          objc_msgSend_unionSet_(v568, v585, v584, v586, v587, v588);

          if (processCopy)
          {
            v589 = processCopy[10];
          }

          else
          {
            v589 = 0;
          }

          v590 = v589;
          v591 = MEMORY[0x1E696AD98];
          v597 = objc_msgSend_uniqueIdentifier(v578, v592, v593, v594, v595, v596);
          v602 = objc_msgSend_numberWithInteger_(v591, v598, v597, v599, v600, v601);
          v607 = objc_msgSend_objectForKeyedSubscript_(v590, v603, v602, v604, v605, v606);

          v613 = objc_msgSend_preferredTokenizedResult(v607, v608, v609, v610, v611, v612);
          v614 = objc_opt_class();
          if (objc_msgSend_isMemberOfClass_(v613, v615, v614, v616, v617, v618))
          {
            v623 = v964;
            *v964 = MEMORY[0x1E69E9820];
            v965 = 3221225472;
            v966 = sub_1838EA51C;
            v967 = &unk_1E6DDE960;
            goto LABEL_126;
          }

          v624 = objc_opt_class();
          if (objc_msgSend_isMemberOfClass_(v613, v625, v624, v626, v627, v628))
          {
            v623 = &v955;
            *&v955 = MEMORY[0x1E69E9820];
            *(&v955 + 1) = 3221225472;
            *&v956 = sub_1838EA5A0;
            *(&v956 + 1) = &unk_1E6DDF970;
LABEL_126:
            *(v623 + 4) = &buf;
            *(v623 + 5) = &v951;
            objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v613, v619, v623, v620, v621, v622, v919);
          }

          v629 = v607;
          objc_msgSend_bounds(v578, v630, v631, v632, v633, v634);
          MaxX = CGRectGetMaxX(v970);

          if (!v629)
          {
LABEL_140:
            _Block_object_dispose(&v951, 8);
            _Block_object_dispose(&buf, 8);

            goto LABEL_169;
          }

          v641 = 1;
          while (2)
          {
            if (v641 >= objc_msgSend_count(v562, v636, v637, v638, v639, v640, v919))
            {
              v710 = [CHBottomUpStrokeGroupingStrategy alloc];
              v716 = objc_msgSend_groupingManager(self, v711, v712, v713, v714, v715);
              v722 = objc_msgSend_strokeProvider(v716, v717, v718, v719, v720, v721);
              v728 = objc_msgSend_groupingManager(self, v723, v724, v725, v726, v727);
              v734 = objc_msgSend_locales(v728, v729, v730, v731, v732, v733);
              isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v710, v735, v722, 1, v734, 0, 0);

              v742 = objc_msgSend_groupingManager(self, v737, v738, v739, v740, v741);
              v748 = objc_msgSend_strokeProvider(v742, v743, v744, v745, v746, v747);
              v752 = objc_msgSend_sortedStrokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v749, v568, v748, v750, v751);

              v758 = objc_msgSend_firstObject(v562, v753, v754, v755, v756, v757);
              v764 = objc_msgSend_ancestorIdentifier(v758, v759, v760, v761, v762, v763);
              v768 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_(isInlineContinuousMode_inlineContinuousModeTargets, v765, v752, v764, v766, v767);

              if (processCopy)
              {
                objc_msgSend_addObject_(processCopy[9], v769, v768, v770, v771, v772);
              }

              else
              {
                objc_msgSend_addObject_(0, v769, v768, v770, v771, v772);
              }

              if (processCopy)
              {
                v773 = processCopy[10];
              }

              else
              {
                v773 = 0;
              }

              v774 = v773;
              v775 = MEMORY[0x1E696AD98];
              v781 = objc_msgSend_uniqueIdentifier(v768, v776, v777, v778, v779, v780);
              v786 = objc_msgSend_numberWithInteger_(v775, v782, v781, v783, v784, v785);
              objc_msgSend_setObject_forKey_(v774, v787, v629, v786, v788, v789);

              _Block_object_dispose(&v951, 8);
              _Block_object_dispose(&buf, 8);

              goto LABEL_157;
            }

            v646 = objc_msgSend_objectAtIndexedSubscript_(v562, v642, v641, v643, v644, v645);
            v652 = objc_msgSend_strokeIdentifiers(v646, v647, v648, v649, v650, v651);
            objc_msgSend_unionSet_(v568, v653, v652, v654, v655, v656);

            if (processCopy)
            {
              v657 = processCopy[10];
            }

            else
            {
              v657 = 0;
            }

            v658 = v657;
            v659 = MEMORY[0x1E696AD98];
            v665 = objc_msgSend_uniqueIdentifier(v646, v660, v661, v662, v663, v664);
            v670 = objc_msgSend_numberWithInteger_(v659, v666, v665, v667, v668, v669);
            v675 = objc_msgSend_objectForKeyedSubscript_(v658, v671, v670, v672, v673, v674);

            v681 = objc_msgSend_preferredTokenizedResult(v675, v676, v677, v678, v679, v680);
            v682 = objc_opt_class();
            if (objc_msgSend_isMemberOfClass_(v681, v683, v682, v684, v685, v686))
            {
              v691 = v964;
              *v964 = MEMORY[0x1E69E9820];
              v965 = 3221225472;
              v966 = sub_1838EA51C;
              v967 = &unk_1E6DDE960;
              goto LABEL_136;
            }

            v692 = objc_opt_class();
            if (objc_msgSend_isMemberOfClass_(v681, v693, v692, v694, v695, v696))
            {
              v691 = &v955;
              *&v955 = MEMORY[0x1E69E9820];
              *(&v955 + 1) = 3221225472;
              *&v956 = sub_1838EA5A0;
              *(&v956 + 1) = &unk_1E6DDF970;
LABEL_136:
              *(v691 + 4) = &buf;
              *(v691 + 5) = &v951;
              objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v681, v687, v691, v688, v689, v690);
            }

            v698 = *(*(&buf + 1) + 24);
            v699 = v952[3];
            objc_msgSend_bounds(v646, v687, v697, v688, v689, v690);
            v700 = CGRectGetMinX(v971) - MaxX > v698 / v699 * 0.0;
            v704 = objc_msgSend_textStrokeGroupRecognitionResultByAppendingStrokeGroupRecognitionResult_shouldForceSpace_(v629, v701, v675, v700, v702, v703);

            objc_msgSend_bounds(v646, v705, v706, v707, v708, v709);
            MaxX = CGRectGetMaxX(v972);

            ++v641;
            v629 = v704;
            if (!v704)
            {
              goto LABEL_140;
            }

            continue;
          }
        }

        v147 = v33;
        v933 = processCopy;
        v929 = v147;
        if (!self)
        {

          v882 = v147;
          v883 = v933;
LABEL_192:

          goto LABEL_169;
        }

        v957 = 0u;
        v958 = 0u;
        v955 = 0u;
        v956 = 0u;
        v148 = v147;
        v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v149, &v955, v964, 16, v150);
        if (v156)
        {
          v157 = *v956;
          v158 = 0;
          v159 = 0;
          if (processCopy)
          {
            do
            {
              for (m = 0; m != v156; ++m)
              {
                if (*v956 != v157)
                {
                  objc_enumerationMutation(v148);
                }

                v161 = *(*(&v955 + 1) + 8 * m);
                v162 = processCopy[10];
                v163 = MEMORY[0x1E696AD98];
                v169 = objc_msgSend_uniqueIdentifier(v161, v164, v165, v166, v167, v168);
                v174 = objc_msgSend_numberWithInteger_(v163, v170, v169, v171, v172, v173);
                v179 = objc_msgSend_objectForKeyedSubscript_(v162, v175, v174, v176, v177, v178);

                v185 = objc_msgSend_mathResult(v179, v180, v181, v182, v183, v184);

                LODWORD(v162) = objc_msgSend_hasTextResult(v179, v186, v187, v188, v189, v190);
                v158 |= v185 != 0;
                v159 |= v162;
              }

              v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v191, &v955, v964, 16, v192);
            }

            while (v156);
          }

          else
          {
            do
            {
              for (n = 0; n != v156; ++n)
              {
                if (*v956 != v157)
                {
                  objc_enumerationMutation(v148);
                }

                v519 = MEMORY[0x1E696AD98];
                v520 = objc_msgSend_uniqueIdentifier(*(*(&v955 + 1) + 8 * n), v151, v152, v153, v154, v155, v919);
                v525 = objc_msgSend_numberWithInteger_(v519, v521, v520, v522, v523, v524);
                v530 = objc_msgSend_objectForKeyedSubscript_(0, v526, v525, v527, v528, v529);

                v536 = objc_msgSend_mathResult(v530, v531, v532, v533, v534, v535);

                hasTextResult = objc_msgSend_hasTextResult(v530, v537, v538, v539, v540, v541);
                v158 |= v536 != 0;
                v159 |= hasTextResult;
              }

              v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v151, &v955, v964, 16, v155);
            }

            while (v156);
          }
        }

        else
        {
          v158 = 0;
          v159 = 0;
        }

        if (v159 & v158 & 1) != 0 && (objc_msgSend_isPatternedTextForTextTranscription_locales_(CHTokenizedMathResult, v193, v938, v931, v194, v195))
        {
          goto LABEL_118;
        }

        v196 = v148;
        v197 = v933;
        v955 = 0u;
        v956 = 0u;
        v957 = 0u;
        v958 = 0u;
        v198 = v196;
        v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v199, &v955, v964, 16, v200);
        if (!v206)
        {
          goto LABEL_56;
        }

        v207 = *v956;
        if (!processCopy)
        {
          while (1)
          {
            for (ii = 0; ii != v206; ++ii)
            {
              if (*v956 != v207)
              {
                objc_enumerationMutation(v198);
              }

              v885 = MEMORY[0x1E696AD98];
              v886 = objc_msgSend_uniqueIdentifier(*(*(&v955 + 1) + 8 * ii), v201, v202, v203, v204, v205, v919);
              v891 = objc_msgSend_numberWithInteger_(v885, v887, v886, v888, v889, v890);
              v227 = objc_msgSend_objectForKeyedSubscript_(0, v892, v891, v893, v894, v895);

              if (!objc_msgSend_hasTextResult(v227, v896, v897, v898, v899, v900) || (objc_msgSend_mathResult(v227, v901, v902, v903, v904, v905), v906 = objc_claimAutoreleasedReturnValue(), isEvaluationExpected = objc_msgSend_isEvaluationExpected(v906, v907, v908, v909, v910, v911), v906, (isEvaluationExpected & 1) != 0))
              {
LABEL_191:

                goto LABEL_192;
              }
            }

            v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v201, &v955, v964, 16, v205);
            if (!v206)
            {
              goto LABEL_56;
            }
          }
        }

        do
        {
          for (jj = 0; jj != v206; ++jj)
          {
            if (*v956 != v207)
            {
              objc_enumerationMutation(v198);
            }

            v209 = *(*(&v955 + 1) + 8 * jj);
            v210 = processCopy[10];
            v211 = MEMORY[0x1E696AD98];
            v217 = objc_msgSend_uniqueIdentifier(v209, v212, v213, v214, v215, v216);
            v222 = objc_msgSend_numberWithInteger_(v211, v218, v217, v219, v220, v221);
            v227 = objc_msgSend_objectForKeyedSubscript_(v210, v223, v222, v224, v225, v226);

            if (!objc_msgSend_hasTextResult(v227, v228, v229, v230, v231, v232))
            {
              goto LABEL_191;
            }

            v238 = objc_msgSend_mathResult(v227, v233, v234, v235, v236, v237);
            v244 = objc_msgSend_isEvaluationExpected(v238, v239, v240, v241, v242, v243);

            if (v244)
            {
              goto LABEL_191;
            }
          }

          v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v245, &v955, v964, 16, v246);
        }

        while (v206);
LABEL_56:
        v247 = 0;
        v248 = 1;
        v249 = v198;
        while (1)
        {

          if (v247 >= objc_msgSend_count(v198, v250, v251, v252, v253, v254) - 1)
          {
            break;
          }

          v249 = objc_msgSend_objectAtIndexedSubscript_(v198, v255, v247, v256, v257, v258);
          v263 = objc_msgSend_objectAtIndexedSubscript_(v198, v259, v247 + 1, v260, v261, v262);
          v264 = objc_opt_class();
          objc_msgSend_bounds(v249, v265, v266, v267, v268, v269);
          v271 = v270;
          v273 = v272;
          v275 = v274;
          v277 = v276;
          objc_msgSend_bounds(v263, v278, v279, v280, v281, v282);
          objc_msgSend_distanceFromRectangle_toRectangle_(v264, v283, v284, v285, v286, v287, v271, v273, v275, v277, v288, v289, v290, v291);
          v293 = v292;
          objc_msgSend_bounds(v249, v294, v295, v296, v297, v298);
          v300 = v299;
          objc_msgSend_bounds(v263, v301, v302, v303, v304, v305);
          v307 = v293 <= fmax(v300, v306);

          v248 &= v307;
          ++v247;
        }

        if ((v248 & 1) == 0)
        {
          goto LABEL_169;
        }

        v308 = v198;
        v927 = v197;
        v934 = objc_msgSend_set(MEMORY[0x1E695DFA8], v309, v310, v311, v312, v313);
        v930 = objc_msgSend_set(MEMORY[0x1E695DFA8], v314, v315, v316, v317, v318);
        for (kk = 0; kk < objc_msgSend_count(v308, v319, v320, v321, v322, v323, v919); ++kk)
        {
          v330 = objc_msgSend_objectAtIndexedSubscript_(v308, v325, kk, v327, v328, v329);
          v336 = objc_msgSend_strokeIdentifiers(v330, v331, v332, v333, v334, v335);
          objc_msgSend_unionSet_(v934, v337, v336, v338, v339, v340);

          if (processCopy)
          {
            v341 = processCopy[10];
          }

          else
          {
            v341 = 0;
          }

          v342 = v341;
          v343 = MEMORY[0x1E696AD98];
          v349 = objc_msgSend_uniqueIdentifier(v330, v344, v345, v346, v347, v348);
          v354 = objc_msgSend_numberWithInteger_(v343, v350, v349, v351, v352, v353);
          v359 = objc_msgSend_objectForKeyedSubscript_(v342, v355, v354, v356, v357, v358);

          v365 = objc_msgSend_preferredLocale(v359, v360, v361, v362, v363, v364);
          v366 = v365 == 0;

          if (v366)
          {
LABEL_90:

            goto LABEL_91;
          }

          v372 = objc_msgSend_preferredLocale(v359, v367, v368, v369, v370, v371);
          objc_msgSend_addObject_(v930, v373, v372, v374, v375, v376);
        }

        if (objc_msgSend_count(v930, v325, v326, v327, v328, v329) != 1)
        {
LABEL_91:

          goto LABEL_169;
        }

        v957 = 0u;
        v958 = 0u;
        v955 = 0u;
        v956 = 0u;
        v330 = v934;
        v384 = objc_msgSend_countByEnumeratingWithState_objects_count_(v330, v377, &v955, v964, 16, v378);
        if (!v384)
        {
          v926 = 0;
          v921 = 0;
          goto LABEL_93;
        }

        v921 = 0;
        v924 = *v956;
        v926 = 0;
        while (2)
        {
          for (mm = 0; mm != v384; ++mm)
          {
            if (*v956 != v924)
            {
              objc_enumerationMutation(v330);
            }

            v386 = *(*(&v955 + 1) + 8 * mm);
            v387 = objc_msgSend_strokeClassificationResult(v927, v379, v380, v381, v382, v383);
            v393 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v387, v388, v389, v390, v391, v392);
            v359 = objc_msgSend_objectForKeyedSubscript_(v393, v394, v386, v395, v396, v397);

            if (!v359 || (objc_msgSend_orderedScriptClassification(v359, v398, v399, v400, v401, v402), v403 = objc_claimAutoreleasedReturnValue(), v409 = objc_msgSend_count(v403, v404, v405, v406, v407, v408) == 0, v403, v409))
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v427 = qword_1EA84DC68;
              if (os_log_type_enabled(v427, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = v919;
                *(&buf + 4) = v386;
                _os_log_impl(&dword_18366B000, v427, OS_LOG_TYPE_ERROR, "Raw stroke classification result not found for stroke identifier %@", &buf, 0xCu);
              }

              goto LABEL_90;
            }

            v415 = objc_msgSend_orderedScriptClassification(v359, v410, v411, v412, v413, v414);
            v420 = objc_msgSend_objectAtIndexedSubscript_(v415, v416, 0, v417, v418, v419);
            v426 = objc_msgSend_integerValue(v420, v421, v422, v423, v424, v425);

            if (v426 > 7)
            {
              if (v426 == 11 || v426 == 8)
              {
LABEL_81:
                ++v926;
              }
            }

            else
            {
              if (!v426)
              {
                goto LABEL_81;
              }

              if (v426 == 1)
              {
                ++v921;
              }
            }
          }

          v384 = objc_msgSend_countByEnumeratingWithState_objects_count_(v330, v379, &v955, v964, 16, v383);
          if (v384)
          {
            continue;
          }

          break;
        }

LABEL_93:

        v433 = objc_msgSend_count(v330, v428, v429, v430, v431, v432);
        v439 = objc_msgSend_allObjects(v330, v434, v435, v436, v437, v438);
        v925 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v440, v439, self->_strokeProvider, v441, v442);

        if (v921 <= v433 - v926)
        {
          leftToRightBottomUpStrategy = self->_leftToRightBottomUpStrategy;
          v460 = objc_msgSend_objectAtIndexedSubscript_(v308, v443, 0, v445, v446, v447);
          v466 = objc_msgSend_ancestorIdentifier(v460, v461, v462, v463, v464, v465);
          v458 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_(leftToRightBottomUpStrategy, v467, v925, v466, v468, v469);
        }

        else
        {
          rightToLeftBottomUpStrategy = self->_rightToLeftBottomUpStrategy;
          v449 = objc_msgSend_ancestorIdentifier(0, v443, v444, v445, v446, v447);
          v458 = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_(rightToLeftBottomUpStrategy, v450, v925, v449, v451, v452);
        }

        v470 = objc_msgSend_cachedRecognitionResultsFromPostProcessing(v927, v453, v454, v455, v456, v457);
        v476 = objc_msgSend_strokeIdentifiers(v458, v471, v472, v473, v474, v475);
        v481 = objc_msgSend_objectForKeyedSubscript_(v470, v477, v476, v478, v479, v480);

        if (!v481)
        {
          v481 = (*(self->_additionalRecognitionBlock + 2))();
        }

        v487 = objc_msgSend_strokeIdentifiers(v458, v482, v483, v484, v485, v486);
        v488 = v481;
        v489 = v487;
        v493 = v489;
        if (processCopy)
        {
          objc_msgSend_setObject_forKeyedSubscript_(processCopy[1], v490, v488, v489, v491, v492);
          objc_msgSend_setObject_forKeyedSubscript_(processCopy[2], v494, v488, v493, v495, v496);

          objc_msgSend_addObject_(processCopy[9], v497, v458, v498, v499, v500);
        }

        else
        {

          objc_msgSend_addObject_(0, v913, v458, v914, v915, v916);
        }

        if (processCopy)
        {
          v501 = processCopy[10];
        }

        else
        {
          v501 = 0;
        }

        v502 = v501;
        v503 = MEMORY[0x1E696AD98];
        v509 = objc_msgSend_uniqueIdentifier(v458, v504, v505, v506, v507, v508);
        v514 = objc_msgSend_numberWithInteger_(v503, v510, v509, v511, v512, v513);
        objc_msgSend_setObject_forKey_(v502, v515, v488, v514, v516, v517);

LABEL_157:
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v818 = qword_1EA84DC68;
        if (os_log_type_enabled(v818, OS_LOG_TYPE_DEBUG))
        {
          v824 = objc_msgSend_count(v940, v819, v820, v821, v822, v823);
          *v964 = 67109120;
          *&v964[4] = v824;
          _os_log_impl(&dword_18366B000, v818, OS_LOG_TYPE_DEBUG, "CHGroupOversegmentationMergingStep merged %d groups into one group", v964, 8u);
        }

        v945 = 0u;
        v946 = 0u;
        v943 = 0u;
        v944 = 0u;
        v825 = v940;
        v832 = objc_msgSend_countByEnumeratingWithState_objects_count_(v825, v826, &v943, v959, 16, v827);
        if (v832)
        {
          v833 = *v944;
          if (processCopy)
          {
            do
            {
              for (nn = 0; nn != v832; ++nn)
              {
                if (*v944 != v833)
                {
                  objc_enumerationMutation(v825);
                }

                v835 = *(*(&v943 + 1) + 8 * nn);
                v836 = processCopy[9];
                objc_msgSend_removeObject_(v836, v837, v835, v838, v839, v840);

                v841 = processCopy[10];
                v842 = MEMORY[0x1E696AD98];
                v848 = objc_msgSend_uniqueIdentifier(v835, v843, v844, v845, v846, v847);
                v853 = objc_msgSend_numberWithInteger_(v842, v849, v848, v850, v851, v852);
                objc_msgSend_removeObjectForKey_(v841, v854, v853, v855, v856, v857);
              }

              v832 = objc_msgSend_countByEnumeratingWithState_objects_count_(v825, v858, &v943, v959, 16, v859);
            }

            while (v832);
          }

          else
          {
            do
            {
              for (i1 = 0; i1 != v832; ++i1)
              {
                if (*v944 != v833)
                {
                  objc_enumerationMutation(v825);
                }

                v863 = *(*(&v943 + 1) + 8 * i1);
                objc_msgSend_removeObject_(0, v828, v863, v829, v830, v831, v919);
                v864 = MEMORY[0x1E696AD98];
                v870 = objc_msgSend_uniqueIdentifier(v863, v865, v866, v867, v868, v869);
                v875 = objc_msgSend_numberWithInteger_(v864, v871, v870, v872, v873, v874);
                objc_msgSend_removeObjectForKey_(0, v876, v875, v877, v878, v879);
              }

              v832 = objc_msgSend_countByEnumeratingWithState_objects_count_(v825, v828, &v943, v959, 16, v831);
            }

            while (v832);
          }
        }

LABEL_169:
LABEL_170:

        ++v941;
      }

      while (v941 != v937);
      v917 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v860, &v947, v960, 16, v861);
      v937 = v917;
      if (!v917)
      {
LABEL_196:

        break;
      }
    }
  }

  return processCopy;
}

@end