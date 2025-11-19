@interface CHRemoveSpacesFromEnglishAndKoreanParticlesStep
- (CHRemoveSpacesFromEnglishAndKoreanParticlesStep)init;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHRemoveSpacesFromEnglishAndKoreanParticlesStep

- (CHRemoveSpacesFromEnglishAndKoreanParticlesStep)init
{
  v10.receiver = self;
  v10.super_class = CHRemoveSpacesFromEnglishAndKoreanParticlesStep;
  v6 = [(CHRemoveSpacesFromEnglishAndKoreanParticlesStep *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v2, @"이는다고가지나요에도니라로은면을만들인네의랑래를", v3, v4, v5);
    koreanParticlesCharSet = v6->_koreanParticlesCharSet;
    v6->_koreanParticlesCharSet = v7;
  }

  return v6;
}

- (id)process:(id)a3 options:(id)a4
{
  v5 = a3;
  v142 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHRemoveSpacesFromEnglishAndKoreanParticlesStep is running", buf, 2u);
  }

  v145 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v144 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  for (i = 0; ; ++i)
  {
    v23 = objc_msgSend_result(v5, v17, v18, v19, v20, v21);
    v29 = objc_msgSend_transcriptionPaths(v23, v24, v25, v26, v27, v28);
    v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34);

    if (i >= v35)
    {
      break;
    }

    v41 = objc_msgSend_result(v5, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_transcriptionPaths(v41, v42, v43, v44, v45, v46);
    v52 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, i, v49, v50, v51);

    v147 = objc_msgSend_array(MEMORY[0x1E695DF70], v53, v54, v55, v56, v57);
    v146 = objc_msgSend_array(MEMORY[0x1E695DF70], v58, v59, v60, v61, v62);
    v163 = 0;
    v164 = &v163;
    v165 = 0x3032000000;
    v166 = sub_183996F80;
    v167 = sub_183996F90;
    v168 = 0;
    *buf = 0;
    v156 = buf;
    v157 = 0x5012000000;
    v158 = sub_1839A288C;
    v159 = nullsub_78;
    v160 = &unk_183A5AC72;
    v63 = *(MEMORY[0x1E695F050] + 16);
    v161 = *MEMORY[0x1E695F050];
    v162 = v63;
    v69 = objc_msgSend_result(v5, v64, v65, v66, v67, v68);
    v75 = objc_msgSend_result(v5, v70, v71, v72, v73, v74);
    v81 = objc_msgSend_tokenColumnCount(v75, v76, v77, v78, v79, v80);
    v148[0] = MEMORY[0x1E69E9820];
    v148[1] = 3221225472;
    v148[2] = sub_1839A360C;
    v148[3] = &unk_1E6DE0970;
    v82 = v146;
    v149 = v82;
    v150 = self;
    v154 = i;
    v152 = &v163;
    v83 = v147;
    v151 = v83;
    v153 = buf;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v69, v84, v52, 0, v81, v148);

    v89 = v164[5];
    if (v89)
    {
      objc_msgSend_addObject_(v83, v85, v89, v86, v87, v88);
    }

    if (objc_msgSend_count(v83, v85, v89, v86, v87, v88))
    {
      if ((objc_msgSend_isEqual_(v83, v90, v82, v91, v92, v93) & 1) == 0)
      {
        objc_msgSend_addObject_(v145, v90, v83, v91, v92, v93);
        v99 = objc_msgSend_result(v5, v94, v95, v96, v97, v98);
        v105 = objc_msgSend_transcriptionPathScores(v99, v100, v101, v102, v103, v104);
        v110 = objc_msgSend_objectAtIndexedSubscript_(v105, v106, i, v107, v108, v109);
        objc_msgSend_addObject_(v144, v111, v110, v112, v113, v114);
      }
    }

    objc_msgSend_addObject_(v145, v90, v82, v91, v92, v93);
    v120 = objc_msgSend_result(v5, v115, v116, v117, v118, v119);
    v126 = objc_msgSend_transcriptionPathScores(v120, v121, v122, v123, v124, v125);
    v131 = objc_msgSend_objectAtIndexedSubscript_(v126, v127, i, v128, v129, v130);
    objc_msgSend_addObject_(v144, v132, v131, v133, v134, v135);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v163, 8);
  }

  v136 = objc_msgSend_result(v5, v36, v37, v38, v39, v40);
  v140 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v136, v137, v145, v144, v138, v139);
  if (v5)
  {
    objc_storeStrong(v5 + 3, v140);
  }

  return v5;
}

@end