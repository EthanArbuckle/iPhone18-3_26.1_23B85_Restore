@interface CHLexiconCorrectionStep
+ (id)validatedTokenForCorrectedToken:(id)token rawToken:(id)rawToken autoCapitalizationMode:(int)mode;
- (CHLexiconCorrectionStep)initWithAutoCapitalizationMode:(int)mode shouldAutoCorrect:(BOOL)correct shouldAutoCapitalize:(BOOL)capitalize shouldCreatePseudoTokens:(BOOL)tokens locale:(id)locale staticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)cf phraseLexicon:(_LXLexicon *)self0 customPhraseLexicon:(_LXLexicon *)self1 spellChecker:(id)self2 lmVocabulary:(void *)self3 ovsStringChecker:(id)self4 textReplacements:(id)self5;
- (ObjectRef<const)staticLexicon;
- (id).cxx_construct;
- (id)process:(id)process options:(id)options;
- (void)setStaticLexicon:(ObjectRef<const _LXLexicon *>)lexicon;
@end

@implementation CHLexiconCorrectionStep

+ (id)validatedTokenForCorrectedToken:(id)token rawToken:(id)rawToken autoCapitalizationMode:(int)mode
{
  tokenCopy = token;
  rawTokenCopy = rawToken;
  if (qword_1EA84DBF8 != -1)
  {
    dispatch_once(&qword_1EA84DBF8, &unk_1EF1BFA78);
  }

  v13 = objc_msgSend_string(tokenCopy, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_string(rawTokenCopy, v14, v15, v16, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v13, v20, v19, v21, v22, v23);

  v25 = tokenCopy;
  v31 = v25;
  v32 = v25;
  if (isEqualToString)
  {
    goto LABEL_42;
  }

  modeCopy = mode;
  v33 = objc_msgSend_string(v25, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_string(rawTokenCopy, v34, v35, v36, v37, v38);
  v44 = objc_msgSend_caseInsensitiveCompare_(v33, v40, v39, v41, v42, v43);

  v50 = v31;
  if (v44)
  {
    goto LABEL_27;
  }

  v217 = objc_msgSend_array(MEMORY[0x1E695DF70], v45, v46, v47, v48, v49);
  v56 = objc_msgSend_string(v31, v51, v52, v53, v54, v55);
  v62 = objc_msgSend_string(v31, v57, v58, v59, v60, v61);
  v68 = objc_msgSend_length(v62, v63, v64, v65, v66, v67);
  v222[0] = MEMORY[0x1E69E9820];
  v222[1] = 3221225472;
  v222[2] = sub_183994E58;
  v222[3] = &unk_1E6DDBF00;
  v69 = v217;
  v223 = v69;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v56, v70, 0, v68, 2, v222);

  v76 = objc_msgSend_array(MEMORY[0x1E695DF70], v71, v72, v73, v74, v75);
  v82 = objc_msgSend_string(rawTokenCopy, v77, v78, v79, v80, v81);
  v88 = objc_msgSend_string(rawTokenCopy, v83, v84, v85, v86, v87);
  v94 = objc_msgSend_length(v88, v89, v90, v91, v92, v93);
  v220[0] = MEMORY[0x1E69E9820];
  v220[1] = 3221225472;
  v220[2] = sub_183994E64;
  v220[3] = &unk_1E6DDBF00;
  v95 = v76;
  v221 = v95;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v82, v96, 0, v94, 2, v220);

  v102 = objc_msgSend_count(v69, v97, v98, v99, v100, v101);
  v50 = v31;
  if (v102 != objc_msgSend_count(v95, v103, v104, v105, v106, v107))
  {
    goto LABEL_26;
  }

  v113 = 0;
  v114 = 0;
  v115 = 0;
  for (i = 0; i < objc_msgSend_count(v69, v108, v109, v110, v111, v112); ++i)
  {
    v122 = objc_msgSend_objectAtIndexedSubscript_(v69, v118, i, v119, v120, v121);
    v127 = objc_msgSend_objectAtIndexedSubscript_(v95, v123, i, v124, v125, v126);
    v132 = objc_msgSend_isEqualToString_(v122, v128, v127, v129, v130, v131);
    if (!v132)
    {
      if (v114)
      {
        v117 = v127;
        v127 = v122;
        v122 = v115;
      }

      else
      {
        if (v115)
        {
          v113 |= !sub_1837A4F0C(v115, qword_1EA84DBF0);
        }

        else
        {
          v113 = 1;
        }

        v117 = v127;
        v127 = v122;
        v122 = 0;
      }

      goto LABEL_8;
    }

    if ((v113 & 1) == 0)
    {
      v113 = 0;
      v117 = v115;
LABEL_8:

      goto LABEL_9;
    }

    v133 = sub_1837A4F0C(v122, qword_1EA84DBF0);

    if (!v133)
    {
      v115 = v122;
      goto LABEL_24;
    }

    v113 = 0;
LABEL_9:
    v114 = v132 ^ 1;
    v115 = v122;
  }

  if ((v113 & 1) == 0)
  {
    v50 = rawTokenCopy;

    goto LABEL_25;
  }

LABEL_24:
  v50 = v31;
LABEL_25:

LABEL_26:
LABEL_27:
  v134 = objc_msgSend_string(rawTokenCopy, v45, v46, v47, v48, v49);
  v138 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v134, v135, @".", &stru_1EF1C0318, v136, v137);
  v144 = objc_msgSend_string(v31, v139, v140, v141, v142, v143);
  v148 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v144, v145, @".", &stru_1EF1C0318, v146, v147);
  v153 = objc_msgSend_caseInsensitiveCompare_(v138, v149, v148, v150, v151, v152);

  if (!v153)
  {
    v159 = objc_msgSend_string(rawTokenCopy, v154, v155, v156, v157, v158);
    isAbbreviation = objc_msgSend_isAbbreviation(v159, v160, v161, v162, v163, v164);

    v166 = rawTokenCopy;
    if (isAbbreviation)
    {
      goto LABEL_41;
    }
  }

  if (modeCopy == 5)
  {
    goto LABEL_40;
  }

  v167 = objc_msgSend_string(rawTokenCopy, v154, v155, v156, v157, v158);
  if (objc_msgSend_countSubstringsWithOptions_(v167, v168, 2, v169, v170, v171) <= 4)
  {
    v177 = objc_msgSend_string(rawTokenCopy, v172, v173, v174, v175, v176);
    if (objc_msgSend_isAllUppercase(v177, v178, v179, v180, v181, v182))
    {
      v188 = objc_msgSend_properties(rawTokenCopy, v183, v184, v185, v186, v187);

      v166 = rawTokenCopy;
      if ((v188 & 4) != 0)
      {
        if (modeCopy != 6)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  if (modeCopy != 6)
  {
    goto LABEL_40;
  }

LABEL_37:
  v194 = objc_msgSend_string(rawTokenCopy, v189, v190, v191, v192, v193);
  v200 = objc_msgSend_string(v31, v195, v196, v197, v198, v199);
  if (objc_msgSend_caseInsensitiveCompare_(v194, v201, v200, v202, v203, v204) || (objc_msgSend_inputSources(v31, v205, v206, v207, v208, v209) & 0x100) == 0)
  {

    goto LABEL_40;
  }

  v216 = objc_msgSend_properties(v31, v210, v211, v212, v213, v214);

  v166 = rawTokenCopy;
  if ((v216 & 0x200) != 0)
  {
LABEL_40:
    v166 = v50;
  }

LABEL_41:
  v32 = v166;

LABEL_42:

  return v32;
}

- (CHLexiconCorrectionStep)initWithAutoCapitalizationMode:(int)mode shouldAutoCorrect:(BOOL)correct shouldAutoCapitalize:(BOOL)capitalize shouldCreatePseudoTokens:(BOOL)tokens locale:(id)locale staticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)cf phraseLexicon:(_LXLexicon *)self0 customPhraseLexicon:(_LXLexicon *)self1 spellChecker:(id)self2 lmVocabulary:(void *)self3 ovsStringChecker:(id)self4 textReplacements:(id)self5
{
  localeCopy = locale;
  checkerCopy = checker;
  stringCheckerCopy = stringChecker;
  replacementsCopy = replacements;
  v52.receiver = self;
  v52.super_class = CHLexiconCorrectionStep;
  v22 = [(CHLexiconCorrectionStep *)&v52 init];
  p_isa = &v22->super.super.isa;
  v24 = v22;
  if (v22)
  {
    v22->_autoCapitalizationMode = mode;
    v22->_shouldAutoCorrect = correct;
    v22->_shouldAutoCapitalize = capitalize;
    v22->_shouldCreatePseudoTokens = tokens;
    objc_storeStrong(&v22->_locale, locale);
    if (lexicon)
    {
      CFRetain(lexicon);
      mCFObject = v24->_staticLexicon.mCFObject;
      v24->_staticLexicon.mCFObject = lexicon;
      if (mCFObject)
      {
        CFRelease(mCFObject);
      }
    }

    if (cf)
    {
      CFRetain(cf);
      v26 = v24->_customLexicon.mCFObject;
      v24->_customLexicon.mCFObject = cf;
      if (v26)
      {
        CFRelease(v26);
      }
    }

    if (phraseLexicon)
    {
      CFRetain(phraseLexicon);
      v27 = v24->_phraseLexicon.mCFObject;
      v24->_phraseLexicon.mCFObject = phraseLexicon;
      if (v27)
      {
        CFRelease(v27);
      }
    }

    if (customPhraseLexicon)
    {
      CFRetain(customPhraseLexicon);
      v28 = v24->_customPhraseLexicon.mCFObject;
      v24->_customPhraseLexicon.mCFObject = customPhraseLexicon;
      if (v28)
      {
        CFRelease(v28);
      }
    }

    v24->_lmVocabulary = vocabulary;
    objc_storeStrong(p_isa + 7, stringChecker);
    objc_storeStrong(p_isa + 8, checker);
    v33 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v29, @"'.-", v30, v31, v32);
    consumableStrokesCharSet = v24->_consumableStrokesCharSet;
    v24->_consumableStrokesCharSet = v33;

    objc_storeStrong(p_isa + 9, replacements);
    v39 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v35, @"．！？；：。", v36, v37, v38);
    fullWidthPunctuationThatExpectsUppercaseAfter = v24->_fullWidthPunctuationThatExpectsUppercaseAfter;
    v24->_fullWidthPunctuationThatExpectsUppercaseAfter = v39;

    v45 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v41, @"¿¡", v42, v43, v44);
    punctuationThatExpectsUppercaseAfter = v24->_punctuationThatExpectsUppercaseAfter;
    v24->_punctuationThatExpectsUppercaseAfter = v45;
  }

  return v24;
}

- (id)process:(id)process options:(id)options
{
  v941 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v857 = processCopy;
  v11 = objc_msgSend_leftContext(processCopy, v6, v7, v8, v9, v10);
  v837 = v11;
  if (v11 && objc_msgSend_length(v11, v12, v13, v14, v15, v16))
  {
    v20 = objc_msgSend_lastComposedCharacter(v837, v12, v17, v18, v19, v16);
    v26 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v21, v22, v23, v24, v25);
    LOBYTE(v833) = sub_1837A4F0C(v20, v26);

    if (sub_1837A93E8(v20))
    {
      HIDWORD(v833) = sub_1837A95A0(v20) ^ 1;
    }

    else
    {
      BYTE4(v833) = 0;
    }

    v832 = 0;
  }

  else
  {
    v833 = 0;
    v832 = 1;
  }

  shouldAutoCapitalizeSetting_locale = objc_msgSend_shouldCapitalizeGivenHistory_shouldAutoCapitalizeSetting_locale_(CHLanguageUtilities, v12, v837, self->_shouldAutoCapitalize, self->_locale, v16);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v27 = qword_1EA84DC58;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v32 = objc_msgSend_stringForAutoCapitalizationMode_(CHRecognizerConfiguration, v28, self->_autoCapitalizationMode, v29, v30, v31);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v32;
    _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_DEBUG, "CHLexiconCorrectionStep is running with autoCapitalizationMode: %@", &buf, 0xCu);
  }

  v828 = objc_msgSend_array(MEMORY[0x1E695DF70], v33, v34, v35, v36, v37);
  v829 = objc_msgSend_array(MEMORY[0x1E695DF70], v38, v39, v40, v41, v42);
  v836 = 0;
LABEL_13:
  v48 = objc_msgSend_result(v857, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_transcriptionPaths(v48, v49, v50, v51, v52, v53);
  v60 = v836 < objc_msgSend_count(v54, v55, v56, v57, v58, v59);

  if (v60)
  {
    v839 = objc_msgSend_mutableCopy(v837, v61, v62, v63, v64, v65);
    v71 = objc_msgSend_result(v857, v66, v67, v68, v69, v70);
    v77 = objc_msgSend_transcriptionPaths(v71, v72, v73, v74, v75, v76);
    v838 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, v836, v79, v80, v81);

    v830 = objc_msgSend_array(MEMORY[0x1E695DF70], v82, v83, v84, v85, v86);
    v831 = objc_msgSend_array(MEMORY[0x1E695DF70], v87, v88, v89, v90, v91);
    v834 = objc_msgSend_array(MEMORY[0x1E695DF70], v92, v93, v94, v95, v96);
    v900 = 0;
    v901 = &v900;
    v902 = 0x2020000000;
    v903 = 1;
    v898[0] = 0;
    v898[1] = v898;
    v898[2] = 0x2020000000;
    v899 = BYTE4(v833);
    v896[0] = 0;
    v896[1] = v896;
    v896[2] = 0x3032000000;
    v896[3] = sub_183996F80;
    v896[4] = sub_183996F90;
    v897 = v837;
    v102 = objc_msgSend_result(v857, v97, v98, v99, v100, v101);
    v108 = objc_msgSend_length(v838, v103, v104, v105, v106, v107);
    v889[0] = MEMORY[0x1E69E9820];
    v889[1] = 3221225472;
    v889[2] = sub_1839990F0;
    v889[3] = &unk_1E6DE0830;
    v891 = v898;
    v892 = v896;
    v893 = &v900;
    v894 = v832;
    v895 = v833;
    v840 = v834;
    v890 = v840;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v102, v109, v838, 0, v108, v889);

    v114 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v110, *(v901 + 24), v111, v112, v113);
    objc_msgSend_addObject_(v840, v115, v114, v116, v117, v118);

    v856 = 0;
    v850 = 0;
    v848 = 0;
    while (1)
    {
      if (v856 >= objc_msgSend_length(v838, v119, v120, v121, v122, v123))
      {
        if ((objc_msgSend_isEqual_(v830, v124, v831, v125, v126, v127) & 1) == 0)
        {
          objc_msgSend_addObject_(v828, v741, v830, v742, v743, v744);
          v750 = objc_msgSend_result(v857, v745, v746, v747, v748, v749);
          v756 = objc_msgSend_transcriptionPathScores(v750, v751, v752, v753, v754, v755);
          v761 = objc_msgSend_objectAtIndexedSubscript_(v756, v757, v836, v758, v759, v760);
          objc_msgSend_addObject_(v829, v762, v761, v763, v764, v765);
        }

        objc_msgSend_addObject_(v828, v741, v831, v742, v743, v744);
        v771 = objc_msgSend_result(v857, v766, v767, v768, v769, v770);
        v777 = objc_msgSend_transcriptionPathScores(v771, v772, v773, v774, v775, v776);
        v782 = objc_msgSend_objectAtIndexedSubscript_(v777, v778, v836, v779, v780, v781);
        objc_msgSend_addObject_(v829, v783, v782, v784, v785, v786);

        _Block_object_dispose(v896, 8);
        _Block_object_dispose(v898, 8);
        _Block_object_dispose(&v900, 8);

        ++v836;
        goto LABEL_13;
      }

      v855 = objc_msgSend_indexAtPosition_(v838, v124, v856, v125, v126, v127);
      v133 = objc_msgSend_result(v857, v128, v129, v130, v131, v132);
      v139 = objc_msgSend_tokenColumns(v133, v134, v135, v136, v137, v138);
      v144 = objc_msgSend_objectAtIndexedSubscript_(v139, v140, v856, v141, v142, v143);
      v150 = objc_msgSend_textTokenRows(v144, v145, v146, v147, v148, v149);
      v835 = objc_msgSend_objectAtIndexedSubscript_(v150, v151, v855, v152, v153, v154);

      v846 = objc_msgSend_array(MEMORY[0x1E695DF70], v155, v156, v157, v158, v159);
      v843 = objc_msgSend_array(MEMORY[0x1E695DF70], v160, v161, v162, v163, v164);
      v887 = 0u;
      v888 = 0u;
      v886 = 0u;
      v885 = 0u;
      obj = v835;
      v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v165, &v885, v927, 16, v166);
      if (!v167)
      {
        goto LABEL_102;
      }

      v842 = *v886;
      do
      {
        v851 = 0;
        v844 = v167;
        do
        {
          if (*v886 != v842)
          {
            objc_enumerationMutation(obj);
          }

          v173 = *(*(&v885 + 1) + 8 * v851);
          v174 = objc_msgSend_string(v173, v168, v169, v170, v171, v172);
          v180 = objc_msgSend_length(v174, v175, v176, v177, v178, v179) == 0;

          if (v180)
          {
            objc_msgSend_addObject_(v843, v181, v173, v182, v183, v184);
            objc_msgSend_addObject_(v846, v198, v173, v199, v200, v201);
            goto LABEL_19;
          }

          v185 = objc_msgSend_objectAtIndex_(v840, v181, v850, v182, v183, v184);
          v191 = objc_msgSend_BOOLValue(v185, v186, v187, v188, v189, v190);

          if (v191)
          {
            v197 = self->_textReplacements;
          }

          else
          {
            v197 = 0;
          }

          v202 = objc_msgSend_string(v173, v192, v193, v194, v195, v196);
          v845 = objc_msgSend_length(v202, v203, v204, v205, v206, v207) == 1 && objc_msgSend_length(v838, v208, v209, v210, v211, v212) == 1 && objc_msgSend_count(obj, v213, v214, v215, v216, v217) == 1;

          v854 = v850 == 0;
          v218 = v173;
          v852 = v839;
          v847 = v197;
          v219 = v218;
          v853 = v219;
          if (!self->_shouldCreatePseudoTokens)
          {
            goto LABEL_77;
          }

          v875 = v219;
          v873 = objc_msgSend_array(MEMORY[0x1E695DF70], v220, v221, v222, v223, v224);
          v230 = objc_msgSend_string(v875, v225, v226, v227, v228, v229);
          v236 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v231, v232, v233, v234, v235);
          v241 = objc_msgSend_componentsSeparatedByCharactersInSet_(v230, v237, v236, v238, v239, v240);

          v924 = 0u;
          v925 = 0u;
          v922 = 0u;
          v923 = 0u;
          v859 = v241;
          v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v859, v242, &v922, &buf, 16, v243);
          if (v244)
          {
            v869 = *v923;
            do
            {
              v250 = 0;
              v871 = v244;
              do
              {
                if (*v923 != v869)
                {
                  objc_enumerationMutation(v859);
                }

                v251 = *(*(&v922 + 1) + 8 * v250);
                if (objc_msgSend_length(v251, v245, v246, v247, v248, v249))
                {
                  v918 = 0;
                  v919 = &v918;
                  v920 = 0x2020000000;
                  v921 = objc_msgSend_properties(v875, v245, v246, v247, v248, v249);
                  if (objc_msgSend_count(v873, v252, v253, v254, v255, v256))
                  {
                    v919[3] |= 0x20uLL;
                  }

                  v916[0] = 0;
                  v916[1] = v916;
                  v916[2] = 0x2020000000;
                  v262 = objc_msgSend_firstComposedCharacter(v251, v257, v258, v259, v260, v261);
                  v263 = sub_1837A93E8(v262);

                  v917 = v263;
                  *&v912 = 0;
                  *(&v912 + 1) = &v912;
                  *&v913 = 0x3032000000;
                  *(&v913 + 1) = sub_183996F80;
                  *&v914 = sub_183996F90;
                  *(&v914 + 1) = objc_msgSend_string(MEMORY[0x1E696AD60], v264, v265, v266, v267, v268);
                  v274 = objc_msgSend_length(v251, v269, v270, v271, v272, v273);
                  *&v904 = MEMORY[0x1E69E9820];
                  *(&v904 + 1) = 3221225472;
                  *&v905 = sub_183997060;
                  *(&v905 + 1) = &unk_1E6DE0808;
                  *&v907 = v916;
                  *(&v907 + 1) = &v912;
                  v275 = v875;
                  *&v906 = v275;
                  *&v908 = &v918;
                  v276 = v873;
                  *(&v906 + 1) = v276;
                  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v251, v277, 0, v274, 2, &v904);
                  if (objc_msgSend_length(*(*(&v912 + 1) + 40), v278, v279, v280, v281, v282))
                  {
                    v288 = *(*(&v912 + 1) + 40);
                    v289 = objc_msgSend_strokeIndexes(v275, v283, v284, v285, v286, v287);
                    v295 = objc_msgSend_wordID(v275, v290, v291, v292, v293, v294);
                    objc_msgSend_modelScore(v275, v296, v297, v298, v299, v300);
                    v302 = v301;
                    objc_msgSend_recognitionScore(v275, v303, v304, v305, v306, v307);
                    v309 = v308;
                    objc_msgSend_combinedScore(v275, v310, v311, v312, v313, v314);
                    v316 = v315;
                    objc_msgSend_alignmentScore(v275, v317, v318, v319, v320, v321);
                    v323 = v322;
                    v324 = v919[3];
                    v330 = objc_msgSend_recognizerSourceLocale(v275, v325, v326, v327, v328, v329);
                    v861 = v323;
                    v863 = v316;
                    v865 = v309;
                    v867 = v302;
                    v336 = objc_msgSend_inputSources(v275, v331, v332, v333, v334, v335);
                    v342 = objc_msgSend_substrokeCount(v275, v337, v338, v339, v340, v341);
                    objc_msgSend_bounds(v275, v343, v344, v345, v346, v347);
                    v349 = v348;
                    v351 = v350;
                    v353 = v352;
                    v355 = v354;
                    objc_msgSend_originalBounds(v275, v356, v357, v358, v359, v360);
                    v367 = v366;
                    v369 = v368;
                    v371 = v370;
                    v373 = v372;
                    if (v875)
                    {
                      objc_msgSend_principalLines(v275, v361, v362, v363, v364, v365);
                    }

                    else
                    {
                      v934 = 0u;
                      v935 = 0u;
                      v932 = 0u;
                      v933 = 0u;
                      v930 = 0u;
                      v931 = 0u;
                      v928 = 0u;
                      v929 = 0u;
                    }

                    v374 = objc_msgSend_principalPoints(v275, v361, v362, v363, v364, v365);
                    v376 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v375, v288, v289, v295, v324, v330, v336, v867, v865, v863, v861, v349, v351, v353, v355, v342, v367, v369, v371, v373, &v928, v374);

                    objc_msgSend_addObject_(v276, v377, v376, v378, v379, v380);
                  }

                  _Block_object_dispose(&v912, 8);
                  _Block_object_dispose(v916, 8);
                  _Block_object_dispose(&v918, 8);
                }

                v250 = v250 + 1;
              }

              while (v871 != v250);
              v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v859, v245, &v922, &buf, 16, v249);
            }

            while (v244);
          }

          if (v873)
          {
            if (objc_msgSend_count(v873, v381, v382, v383, v384, v385) >= 2)
            {
              v391 = objc_msgSend_array(MEMORY[0x1E695DF70], v386, v387, v388, v389, v390);
              v397 = objc_msgSend_mutableCopy(v852, v392, v393, v394, v395, v396);
              v924 = 0u;
              v925 = 0u;
              v922 = 0u;
              v923 = 0u;
              v872 = v873;
              v400 = objc_msgSend_countByEnumeratingWithState_objects_count_(v872, v398, &v922, &buf, 16, v399);
              if (v400)
              {
                v401 = *v923;
                do
                {
                  if (*v923 != v401)
                  {
                    objc_enumerationMutation(v872);
                  }

                  v402 = sub_183996048(self, **(&v922 + 1), v854, v397, shouldAutoCapitalizeSetting_locale & v854, 0, 0, 0);
                  if ((objc_msgSend_properties(v402, v403, v404, v405, v406, v407) & 0x20) != 0)
                  {
                    objc_msgSend_appendString_(v397, v408, @" ", v410, v411, v412);
                  }

                  v413 = objc_msgSend_string(v402, v408, v409, v410, v411, v412);
                  objc_msgSend_appendString_(v397, v414, v413, v415, v416, v417);

                  objc_msgSend_addObject_(v391, v418, v402, v419, v420, v421);
                  if (v400 >= 2)
                  {
                    for (i = 1; i != v400; ++i)
                    {
                      if (*v923 != v401)
                      {
                        objc_enumerationMutation(v872);
                      }

                      v425 = sub_183996048(self, *(*(&v922 + 1) + 8 * i), 0, v397, 0, 0, 0, 0);
                      if ((objc_msgSend_properties(v425, v426, v427, v428, v429, v430) & 0x20) != 0)
                      {
                        objc_msgSend_appendString_(v397, v431, @" ", v433, v434, v435);
                      }

                      v436 = objc_msgSend_string(v425, v431, v432, v433, v434, v435);
                      objc_msgSend_appendString_(v397, v437, v436, v438, v439, v440);

                      objc_msgSend_addObject_(v391, v441, v425, v442, v443, v444);
                    }
                  }

                  v400 = objc_msgSend_countByEnumeratingWithState_objects_count_(v872, v422, &v922, &buf, 16, v423);
                  v854 = 0;
                }

                while (v400);
              }

              v450 = objc_msgSend_inputSources(v875, v445, v446, v447, v448, v449);
              v456 = objc_msgSend_string(MEMORY[0x1E696AD60], v451, v452, v453, v454, v455);
              v914 = 0u;
              v915 = 0u;
              v912 = 0u;
              v913 = 0u;
              v457 = v391;
              v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v458, &v912, &v928, 16, v459);
              if (v465)
              {
                v466 = *v913;
                do
                {
                  for (j = 0; j != v465; ++j)
                  {
                    if (*v913 != v466)
                    {
                      objc_enumerationMutation(v457);
                    }

                    v468 = *(*(&v912 + 1) + 8 * j);
                    if (objc_msgSend_length(v456, v460, v461, v462, v463, v464) && (objc_msgSend_properties(v468, v469, v470, v471, v472, v473) & 0x20) != 0)
                    {
                      objc_msgSend_appendString_(v456, v469, @" ", v471, v472, v473);
                    }

                    v474 = objc_msgSend_string(v468, v469, v470, v471, v472, v473);
                    objc_msgSend_appendString_(v456, v475, v474, v476, v477, v478);

                    v450 |= objc_msgSend_inputSources(v468, v479, v480, v481, v482, v483);
                  }

                  v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v460, &v912, &v928, 16, v464);
                }

                while (v465);
              }

              v489 = objc_msgSend_string(v875, v484, v485, v486, v487, v488);
              isEqualToString = objc_msgSend_isEqualToString_(v456, v490, v489, v491, v492, v493);

              if ((isEqualToString & 1) == 0)
              {
                v870 = objc_msgSend_strokeIndexes(v875, v495, v496, v497, v498, v499);
                v868 = objc_msgSend_wordID(v875, v500, v501, v502, v503, v504);
                objc_msgSend_modelScore(v875, v505, v506, v507, v508, v509);
                v866 = v510;
                objc_msgSend_recognitionScore(v875, v511, v512, v513, v514, v515);
                v864 = v516;
                objc_msgSend_combinedScore(v875, v517, v518, v519, v520, v521);
                v862 = v522;
                objc_msgSend_alignmentScore(v875, v523, v524, v525, v526, v527);
                v860 = v528;
                v534 = objc_msgSend_properties(v875, v529, v530, v531, v532, v533);
                v540 = objc_msgSend_recognizerSourceLocale(v875, v535, v536, v537, v538, v539);
                v546 = objc_msgSend_substrokeCount(v875, v541, v542, v543, v544, v545);
                objc_msgSend_bounds(v875, v547, v548, v549, v550, v551);
                v553 = v552;
                v555 = v554;
                v557 = v556;
                v559 = v558;
                objc_msgSend_originalBounds(v875, v560, v561, v562, v563, v564);
                v571 = v570;
                v573 = v572;
                v575 = v574;
                v577 = v576;
                if (v875)
                {
                  objc_msgSend_principalLines(v875, v565, v566, v567, v568, v569);
                }

                else
                {
                  v910 = 0u;
                  v911 = 0u;
                  v908 = 0u;
                  v909 = 0u;
                  v906 = 0u;
                  v907 = 0u;
                  v904 = 0u;
                  v905 = 0u;
                }

                v738 = objc_msgSend_principalPoints(v875, v565, v566, v567, v568, v569);
                v740 = objc_msgSend_tokenWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(CHTokenizedTextResultToken, v739, v456, v870, v868, v534, v540, v450, v866, v864, v862, *&v860, v553, v555, v557, v559, v546, v571, v573, v575, v577, &v904, v738);

                v875 = v740;
              }

              v873 = v872;
              goto LABEL_79;
            }
          }

          else
          {
LABEL_77:
            v873 = 0;
          }

          sub_183996048(self, v853, v850 == 0, v852, shouldAutoCapitalizeSetting_locale, v847, v845, 1);
          v875 = v457 = v853;
LABEL_79:

          v578 = objc_opt_class();
          v581 = objc_msgSend_validatedTokenForCorrectedToken_rawToken_autoCapitalizationMode_(v578, v579, v875, v853, self->_autoCapitalizationMode, v580);

          v587 = objc_msgSend_string(v581, v582, v583, v584, v585, v586);
          v593 = objc_msgSend_string(v853, v588, v589, v590, v591, v592);
          v598 = objc_msgSend_isEqualToString_(v587, v594, v593, v595, v596, v597);

          if ((v598 & 1) == 0)
          {
            for (k = 0; ; k = v664 + 1)
            {
              v640 = objc_msgSend_result(v857, v599, v600, v601, v602, v603);
              v646 = objc_msgSend_tokenColumns(v640, v641, v642, v643, v644, v645);
              v651 = objc_msgSend_objectAtIndexedSubscript_(v646, v647, v856, v648, v649, v650);
              v657 = objc_msgSend_textTokenRows(v651, v652, v653, v654, v655, v656);
              v874 = k;
              v663 = k < objc_msgSend_count(v657, v658, v659, v660, v661, v662);

              if (!v663)
              {
                break;
              }

              v664 = v874;
              if (v874 != v855)
              {
                v665 = objc_msgSend_result(v857, v599, v600, v601, v602, v603);
                v671 = objc_msgSend_tokenColumns(v665, v666, v667, v668, v669, v670);
                v676 = objc_msgSend_objectAtIndexedSubscript_(v671, v672, v856, v673, v674, v675);
                v682 = objc_msgSend_textTokenRows(v676, v677, v678, v679, v680, v681);
                v687 = objc_msgSend_objectAtIndexedSubscript_(v682, v683, v874, v684, v685, v686);

                v883 = 0u;
                v884 = 0u;
                v881 = 0u;
                v882 = 0u;
                v876 = v687;
                v695 = objc_msgSend_countByEnumeratingWithState_objects_count_(v876, v688, &v881, v926, 16, v689);
                if (v695)
                {
                  v696 = *v882;
                  do
                  {
                    for (m = 0; m != v695; ++m)
                    {
                      if (*v882 != v696)
                      {
                        objc_enumerationMutation(v876);
                      }

                      v698 = *(*(&v881 + 1) + 8 * m);
                      if ((objc_msgSend_inputSources(v698, v690, v691, v692, v693, v694) & 0x20) == 0)
                      {
                        v699 = objc_msgSend_string(v698, v690, v691, v692, v693, v694);
                        v705 = objc_msgSend_string(v581, v700, v701, v702, v703, v704);
                        if (objc_msgSend_isEqualToString_(v699, v706, v705, v707, v708, v709))
                        {
                          v715 = objc_msgSend_strokeIndexes(v698, v710, v711, v712, v713, v714);
                          v721 = objc_msgSend_strokeIndexes(v581, v716, v717, v718, v719, v720);
                          isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v715, v722, v721, v723, v724, v725);

                          if (isEqualToIndexSet)
                          {
                            v727 = objc_msgSend_mutableCopy(v581, v690, v691, v692, v693, v694);

                            objc_msgSend_modelScore(v698, v728, v729, v730, v731, v732);
                            v581 = v727;
                            objc_msgSend_setModelScore_(v727, v733, v734, v735, v736, v737);
                          }
                        }

                        else
                        {
                        }
                      }
                    }

                    v695 = objc_msgSend_countByEnumeratingWithState_objects_count_(v876, v690, &v881, v926, 16, v694);
                  }

                  while (v695);
                }

                v664 = v874;
              }
            }
          }

          objc_msgSend_addObject_(v843, v599, v853, v601, v602, v603);
          objc_msgSend_addObject_(v846, v604, v581, v605, v606, v607);
          v613 = objc_msgSend_lastObject(v846, v608, v609, v610, v611, v612);

          v619 = objc_msgSend_result(v857, v614, v615, v616, v617, v618);
          v624 = objc_msgSend_precedingSeparatorForToken_(v619, v620, v613, v621, v622, v623);
          objc_msgSend_appendString_(v852, v625, v624, v626, v627, v628);

          v634 = objc_msgSend_string(v613, v629, v630, v631, v632, v633);
          objc_msgSend_appendString_(v852, v635, v634, v636, v637, v638);

          ++v850;
          v848 = v613;
LABEL_19:
          ++v851;
        }

        while (v851 != v844);
        v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v168, &v885, v927, 16, v172);
      }

      while (v167);
LABEL_102:

      sub_183992A0C(CHPostprocessingStep, v846, v843, v830, v831);
      ++v856;
    }
  }

  v787 = objc_msgSend_result(v857, v61, v62, v63, v64, v65);
  v791 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v787, v788, v828, v829, v789, v790);
  if (v857)
  {
    objc_storeStrong(v857 + 3, v791);
  }

  if (self->_phraseLexicon.mCFObject || self->_customPhraseLexicon.mCFObject)
  {
    autoCapitalizationMode = self->_autoCapitalizationMode;
    if (autoCapitalizationMode > 5 || ((1 << autoCapitalizationMode) & 0x31) == 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v937 = 0x3032000000;
      v938 = sub_183996F80;
      v939 = sub_183996F90;
      v793 = v837;
      v940 = v793;
      if (objc_msgSend_length(v793, v794, v795, v796, v797, v798))
      {
        *&v928 = 0;
        *(&v928 + 1) = &v928;
        v929 = 0x2020000000uLL;
        v804 = objc_msgSend_length(v793, v799, v800, v801, v802, v803);
        v877[0] = MEMORY[0x1E69E9820];
        v877[1] = 3221225472;
        v877[2] = sub_1839993D8;
        v877[3] = &unk_1E6DDC668;
        v879 = &v928;
        p_buf = &buf;
        v878 = v793;
        objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v878, v805, 0, v804, 259, v877);

        _Block_object_dispose(&v928, 8);
      }

      if (self->_phraseLexicon.mCFObject)
      {
        v806 = objc_msgSend_result(v857, v799, v800, v801, v802, v803);
        v809 = objc_msgSend_phraseCaseCorrectedResultWithHistory_phraseLexicon_maxPhraseLength_(v806, v807, *(*(&buf + 1) + 40), self->_phraseLexicon.mCFObject, 3, v808);
        v815 = objc_msgSend_mutableCopy(v809, v810, v811, v812, v813, v814);
        sub_183992440(v857, v815);
      }

      if (self->_customPhraseLexicon.mCFObject)
      {
        v816 = objc_msgSend_result(v857, v799, v800, v801, v802, v803);
        v819 = objc_msgSend_phraseCaseCorrectedResultWithHistory_phraseLexicon_maxPhraseLength_(v816, v817, *(*(&buf + 1) + 40), self->_customPhraseLexicon.mCFObject, 3, v818);
        v825 = objc_msgSend_mutableCopy(v819, v820, v821, v822, v823, v824);
        sub_183992440(v857, v825);
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  return v857;
}

- (ObjectRef<const)staticLexicon
{
  v3 = v2;
  mCFObject = self->_staticLexicon.mCFObject;
  if (mCFObject)
  {
    self = CFRetain(self->_staticLexicon.mCFObject);
  }

  *v3 = mCFObject;
  return self;
}

- (void)setStaticLexicon:(ObjectRef<const _LXLexicon *>)lexicon
{
  mCFObject = self->_staticLexicon.mCFObject;
  v5 = *lexicon.mCFObject;
  self->_staticLexicon.mCFObject = *lexicon.mCFObject;
  if (v5)
  {
    CFRetain(v5);
  }

  if (mCFObject)
  {
    CFRelease(mCFObject);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 13) = 0;
  return self;
}

@end