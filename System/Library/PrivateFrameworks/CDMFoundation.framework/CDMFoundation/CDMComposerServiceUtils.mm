@interface CDMComposerServiceUtils
+ (void)logNluRequestForInsights:(id)a3;
@end

@implementation CDMComposerServiceUtils

+ (void)logNluRequestForInsights:(id)a3
{
  v207[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMLogContext;
  v201 = v3;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 siriNLUTypeObj];
    v7 = [v6 requestId];
    v8 = [v7 idA];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2114;
    v207[0] = v8;
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nRequest ID: %{public}@", buf, 0x20u);

    v4 = CDMLogContext;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v193 = v4;
    v194 = [v3 siriNLUTypeObj];
    v195 = [v194 requestId];
    v196 = [v195 idA];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"saliententities";
    v206 = 2112;
    v207[0] = v196;
    _os_log_debug_impl(&dword_1DC287000, v193, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nRequest ID: %@", buf, 0x20u);

    v4 = CDMLogContext;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v4;
    v10 = [v3 siriNLUTypeObj];
    v11 = [v10 currentTurnInput];
    v12 = [v11 startTimestamp];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2048;
    v207[0] = v12;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nCurrent Turn Timestamp: %llu", buf, 0x20u);

    v4 = CDMLogContext;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v4;
    v14 = [v3 siriNLUTypeObj];
    v15 = [v14 currentTurnInput];
    v16 = [v15 asrOutputs];
    v17 = [v16 firstObject];
    v18 = [v17 utterance];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2112;
    v207[0] = v18;
    _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nCurrent Turn Utterance: %@", buf, 0x20u);

    v4 = CDMLogContext;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n===== Current Turn Context =====", buf, 0x16u);
    v4 = CDMLogContext;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n======== NL Context  ===========", buf, 0x16u);
    v4 = CDMLogContext;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n========== Active Tasks ========", buf, 0x16u);
  }

  v19 = [v3 siriNLUTypeObj];
  v20 = [v19 currentTurnInput];
  v21 = [v20 turnContext];
  v22 = [v21 nlContext];
  v23 = [v22 activeTasks];
  if (v23)
  {
    v24 = v23;
    v25 = [v3 siriNLUTypeObj];
    v26 = [v25 currentTurnInput];
    v27 = [v26 turnContext];
    v28 = [v27 nlContext];
    [v28 activeTasks];
    v30 = v29 = v19;
    v200 = [v30 count];

    v31 = &unk_1EDAC9000;
    if (v200)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v31 = &unk_1EDAC9000;
  }

  v32 = *(v31 + 219);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v32, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nNo active tasks", buf, 0x16u);
  }

LABEL_21:
  v33 = 0;
  v34 = v201;
  while (1)
  {
    v35 = [v34 siriNLUTypeObj];
    v36 = [v35 currentTurnInput];
    v37 = [v36 turnContext];
    v38 = [v37 nlContext];
    v39 = [v38 activeTasks];
    v40 = [v39 count];

    v41 = *(v31 + 219);
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v40 <= v33)
    {
      break;
    }

    if (v42)
    {
      v43 = MEMORY[0x1E69D1438];
      v44 = v41;
      v45 = [v34 siriNLUTypeObj];
      v46 = [v45 currentTurnInput];
      v47 = [v46 turnContext];
      v48 = [v47 nlContext];
      v49 = [v48 activeTasks];
      v50 = [v49 objectAtIndexedSubscript:v33];
      v51 = [v43 printableTask:v50];
      *buf = 136315906;
      v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
      v204 = 2112;
      v205 = @"summary";
      v206 = 1024;
      LODWORD(v207[0]) = v33;
      WORD2(v207[0]) = 2112;
      *(v207 + 6) = v51;
      _os_log_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nCurrent Turn Active Task %d: %@", buf, 0x26u);

      v34 = v201;
      v31 = &unk_1EDAC9000;
    }

    ++v33;
  }

  if (v42)
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n========== Executed Tasks =======", buf, 0x16u);
  }

  v52 = [v34 siriNLUTypeObj];
  v53 = [v52 currentTurnInput];
  [v53 turnContext];
  v55 = v54 = v34;
  v56 = [v55 nlContext];
  v57 = [v56 executedTasks];
  if (v57)
  {
    v58 = v57;
    v59 = [v54 siriNLUTypeObj];
    v60 = [v59 currentTurnInput];
    v61 = [v60 turnContext];
    v62 = [v61 nlContext];
    [v62 executedTasks];
    v64 = v63 = v52;
    v197 = [v64 count];

    v65 = &unk_1EDAC9000;
    if (v197)
    {
      goto LABEL_34;
    }
  }

  else
  {

    v65 = &unk_1EDAC9000;
  }

  v66 = *(v65 + 219);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v66, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nNo executed tasks", buf, 0x16u);
  }

LABEL_34:
  v67 = 0;
  v68 = v201;
  while (1)
  {
    v69 = [v68 siriNLUTypeObj];
    v70 = [v69 currentTurnInput];
    v71 = [v70 turnContext];
    v72 = [v71 nlContext];
    v73 = [v72 executedTasks];
    v74 = [v73 count];

    v75 = *(v65 + 219);
    v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
    if (v74 <= v67)
    {
      break;
    }

    if (v76)
    {
      v77 = MEMORY[0x1E69D1438];
      v78 = v75;
      v79 = [v68 siriNLUTypeObj];
      v80 = [v79 currentTurnInput];
      v81 = [v80 turnContext];
      v82 = [v81 nlContext];
      v83 = [v82 executedTasks];
      v84 = [v83 objectAtIndexedSubscript:v67];
      v85 = [v77 printableTask:v84];
      *buf = 136315906;
      v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
      v204 = 2112;
      v205 = @"summary";
      v206 = 1024;
      LODWORD(v207[0]) = v67;
      WORD2(v207[0]) = 2112;
      *(v207 + 6) = v85;
      _os_log_impl(&dword_1DC287000, v78, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nCurrent Turn Executed Task %d: %@", buf, 0x26u);

      v68 = v201;
      v65 = &unk_1EDAC9000;
    }

    ++v67;
  }

  if (v76)
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v75, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n========== Salient Entities ====", buf, 0x16u);
  }

  v86 = [v68 siriNLUTypeObj];
  v87 = [v86 currentTurnInput];
  [v87 turnContext];
  v89 = v88 = v68;
  v90 = [v89 nlContext];
  v91 = [v90 salientEntities];
  if (v91)
  {
    v92 = v91;
    v93 = [v88 siriNLUTypeObj];
    v94 = [v93 currentTurnInput];
    v95 = [v94 turnContext];
    v96 = [v95 nlContext];
    [v96 salientEntities];
    v98 = v97 = v86;
    v198 = [v98 count];

    if (v198)
    {
      v99 = &unk_1EDAC9000;
      v100 = CDMLogContext;
      v101 = v201;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v100;
        v103 = [v201 siriNLUTypeObj];
        v104 = [v103 currentTurnInput];
        v105 = [v104 turnContext];
        v106 = [v105 nlContext];
        v107 = [v106 salientEntities];
        v108 = [v107 count];
        *buf = 136315650;
        v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
        v204 = 2112;
        v205 = @"summary";
        v206 = 2048;
        v207[0] = v108;
        _os_log_impl(&dword_1DC287000, v102, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n%lu salient entities. See salient entities section for more.", buf, 0x20u);

        v101 = v201;
        v99 = &unk_1EDAC9000;
      }

      goto LABEL_50;
    }
  }

  else
  {
  }

  v99 = &unk_1EDAC9000;
  v109 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v109, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nNo salient entities", buf, 0x16u);
    v109 = CDMLogContext;
  }

  v101 = v201;
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"saliententities";
    _os_log_debug_impl(&dword_1DC287000, v109, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nNo salient entities", buf, 0x16u);
  }

LABEL_50:
  v110 = 0;
  v199 = 136315907;
  while (1)
  {
    v111 = [v101 siriNLUTypeObj];
    v112 = [v111 currentTurnInput];
    v113 = [v112 turnContext];
    v114 = [v113 nlContext];
    v115 = [v114 salientEntities];
    v116 = [v115 count];

    v117 = *(v99 + 219);
    if (v116 <= v110)
    {
      break;
    }

    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      v118 = MEMORY[0x1E69D1438];
      v119 = v117;
      v120 = [v101 siriNLUTypeObj];
      v121 = [v120 currentTurnInput];
      v122 = [v121 turnContext];
      v123 = [v122 nlContext];
      v124 = [v123 salientEntities];
      v125 = [v124 objectAtIndexedSubscript:v110];
      v126 = [v118 printableEntityCandidate:v125];
      *buf = v199;
      v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
      v204 = 2112;
      v205 = @"saliententities";
      v206 = 1024;
      LODWORD(v207[0]) = v110;
      WORD2(v207[0]) = 2117;
      *(v207 + 6) = v126;
      _os_log_debug_impl(&dword_1DC287000, v119, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nCurrent Turn Salient Entity %d: %{sensitive}@", buf, 0x26u);

      v101 = v201;
      v99 = &unk_1EDAC9000;
    }

    ++v110;
  }

  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v117, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n========== SDAs ================", buf, 0x16u);
  }

  v127 = [v101 siriNLUTypeObj];
  v128 = [v127 currentTurnInput];
  [v128 turnContext];
  v130 = v129 = v101;
  v131 = [v130 nlContext];
  v132 = [v131 systemDialogActs];
  if (v132)
  {
    v133 = v132;
    v134 = [v129 siriNLUTypeObj];
    v135 = [v134 currentTurnInput];
    v136 = [v135 turnContext];
    v137 = [v136 nlContext];
    [v137 systemDialogActs];
    v139 = v138 = v127;
    v199 = [v139 count];

    if (v199)
    {
      v140 = 0;
      v141 = v201;
      v142 = &unk_1EDAC9000;
      while (1)
      {
        v143 = [v141 siriNLUTypeObj];
        v144 = [v143 currentTurnInput];
        v145 = [v144 turnContext];
        v146 = [v145 nlContext];
        v147 = [v146 systemDialogActs];
        v148 = [v147 count];

        if (v148 <= v140)
        {
          break;
        }

        v149 = *(v142 + 219);
        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
        {
          v150 = MEMORY[0x1E69D1438];
          v151 = v149;
          v152 = [v141 siriNLUTypeObj];
          v153 = [v152 currentTurnInput];
          v154 = [v153 turnContext];
          v155 = [v154 nlContext];
          v156 = [v155 systemDialogActs];
          v157 = [v156 objectAtIndexedSubscript:v140];
          v158 = [v150 printableSystemDialogAct:v157];
          *buf = 136315906;
          v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
          v204 = 2112;
          v205 = @"summary";
          v206 = 1024;
          LODWORD(v207[0]) = v140;
          WORD2(v207[0]) = 2112;
          *(v207 + 6) = v158;
          _os_log_impl(&dword_1DC287000, v151, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nCurrent Turn SDA %d: %@", buf, 0x26u);

          v141 = v201;
          v142 = &unk_1EDAC9000;
        }

        ++v140;
      }

      goto LABEL_67;
    }
  }

  else
  {
  }

  v142 = &unk_1EDAC9000;
  v159 = CDMLogContext;
  v141 = v201;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v159, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nNo SDAs", buf, 0x16u);
  }

LABEL_67:
  v160 = *(v142 + 219);
  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    _os_log_impl(&dword_1DC287000, v160, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n======== Legacy Context ========", buf, 0x16u);
    v160 = *(v142 + 219);
  }

  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v161 = v142;
    v162 = v160;
    v163 = [v141 siriNLUTypeObj];
    v164 = [v163 currentTurnInput];
    v165 = [v164 turnContext];
    v166 = [v165 legacyNlContext];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2112;
    v207[0] = v166;
    _os_log_impl(&dword_1DC287000, v162, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n%@", buf, 0x20u);

    v160 = *(v161 + 219);
  }

  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v167 = v160;
    v168 = [v201 siriNLUTypeObj];
    v169 = [v168 previousTurnInputs];
    v170 = [v169 count];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2048;
    v207[0] = v170;
    _os_log_impl(&dword_1DC287000, v167, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nPrevious turn input count: %zu", buf, 0x20u);
  }

  v171 = [v201 siriNLUTypeObj];
  v172 = [v171 previousTurnInputs];
  v173 = [v172 count];

  if (v173)
  {
    v174 = 0;
    do
    {
      v175 = CDMLogContext;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
      {
        v176 = v175;
        v177 = v201;
        v178 = [v201 siriNLUTypeObj];
        v179 = [v178 previousTurnInputs];
        v180 = [v179 objectAtIndexedSubscript:v174];
        v181 = [v180 startTimestamp];
        *buf = 136315906;
        v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
        v204 = 2112;
        v205 = @"summary";
        v206 = 1024;
        LODWORD(v207[0]) = v174;
        WORD2(v207[0]) = 2048;
        *(v207 + 6) = v181;
        _os_log_impl(&dword_1DC287000, v176, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nPrevious Turn %d Timestamp: %llu", buf, 0x26u);

        v175 = CDMLogContext;
      }

      else
      {
        v177 = v201;
      }

      if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
      {
        v182 = v175;
        v183 = [v177 siriNLUTypeObj];
        v184 = [v183 previousTurnInputs];
        v185 = [v184 objectAtIndexedSubscript:v174];
        v186 = [v185 asrOutputs];
        v187 = [v186 firstObject];
        v188 = [v187 utterance];
        *buf = 136315906;
        v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
        v204 = 2112;
        v205 = @"summary";
        v206 = 1024;
        LODWORD(v207[0]) = v174;
        WORD2(v207[0]) = 2112;
        *(v207 + 6) = v188;
        _os_log_impl(&dword_1DC287000, v182, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nPrevious Turn %d Utterance: %@", buf, 0x26u);

        v177 = v201;
      }

      ++v174;
      v189 = [v177 siriNLUTypeObj];
      v190 = [v189 previousTurnInputs];
      v191 = [v190 count];
    }

    while (v191 > v174);
  }

  v192 = *MEMORY[0x1E69E9840];
}

@end