@interface CDMComposerServiceUtils
+ (void)logNluRequestForInsights:(id)insights;
@end

@implementation CDMComposerServiceUtils

+ (void)logNluRequestForInsights:(id)insights
{
  v207[2] = *MEMORY[0x1E69E9840];
  insightsCopy = insights;
  v4 = CDMLogContext;
  v201 = insightsCopy;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    siriNLUTypeObj = [insightsCopy siriNLUTypeObj];
    requestId = [siriNLUTypeObj requestId];
    v8 = [requestId idA];
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
    siriNLUTypeObj2 = [insightsCopy siriNLUTypeObj];
    requestId2 = [siriNLUTypeObj2 requestId];
    v196 = [requestId2 idA];
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
    siriNLUTypeObj3 = [insightsCopy siriNLUTypeObj];
    currentTurnInput = [siriNLUTypeObj3 currentTurnInput];
    startTimestamp = [currentTurnInput startTimestamp];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2048;
    v207[0] = startTimestamp;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nCurrent Turn Timestamp: %llu", buf, 0x20u);

    v4 = CDMLogContext;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v4;
    siriNLUTypeObj4 = [insightsCopy siriNLUTypeObj];
    currentTurnInput2 = [siriNLUTypeObj4 currentTurnInput];
    asrOutputs = [currentTurnInput2 asrOutputs];
    firstObject = [asrOutputs firstObject];
    utterance = [firstObject utterance];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2112;
    v207[0] = utterance;
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

  siriNLUTypeObj5 = [insightsCopy siriNLUTypeObj];
  currentTurnInput3 = [siriNLUTypeObj5 currentTurnInput];
  turnContext = [currentTurnInput3 turnContext];
  nlContext = [turnContext nlContext];
  activeTasks = [nlContext activeTasks];
  if (activeTasks)
  {
    v24 = activeTasks;
    siriNLUTypeObj6 = [insightsCopy siriNLUTypeObj];
    currentTurnInput4 = [siriNLUTypeObj6 currentTurnInput];
    turnContext2 = [currentTurnInput4 turnContext];
    nlContext2 = [turnContext2 nlContext];
    [nlContext2 activeTasks];
    v30 = v29 = siriNLUTypeObj5;
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
    siriNLUTypeObj7 = [v34 siriNLUTypeObj];
    currentTurnInput5 = [siriNLUTypeObj7 currentTurnInput];
    turnContext3 = [currentTurnInput5 turnContext];
    nlContext3 = [turnContext3 nlContext];
    activeTasks2 = [nlContext3 activeTasks];
    v40 = [activeTasks2 count];

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
      siriNLUTypeObj8 = [v34 siriNLUTypeObj];
      currentTurnInput6 = [siriNLUTypeObj8 currentTurnInput];
      turnContext4 = [currentTurnInput6 turnContext];
      nlContext4 = [turnContext4 nlContext];
      activeTasks3 = [nlContext4 activeTasks];
      v50 = [activeTasks3 objectAtIndexedSubscript:v33];
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

  siriNLUTypeObj9 = [v34 siriNLUTypeObj];
  currentTurnInput7 = [siriNLUTypeObj9 currentTurnInput];
  [currentTurnInput7 turnContext];
  v55 = v54 = v34;
  nlContext5 = [v55 nlContext];
  executedTasks = [nlContext5 executedTasks];
  if (executedTasks)
  {
    v58 = executedTasks;
    siriNLUTypeObj10 = [v54 siriNLUTypeObj];
    currentTurnInput8 = [siriNLUTypeObj10 currentTurnInput];
    turnContext5 = [currentTurnInput8 turnContext];
    nlContext6 = [turnContext5 nlContext];
    [nlContext6 executedTasks];
    v64 = v63 = siriNLUTypeObj9;
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
    siriNLUTypeObj11 = [v68 siriNLUTypeObj];
    currentTurnInput9 = [siriNLUTypeObj11 currentTurnInput];
    turnContext6 = [currentTurnInput9 turnContext];
    nlContext7 = [turnContext6 nlContext];
    executedTasks2 = [nlContext7 executedTasks];
    v74 = [executedTasks2 count];

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
      siriNLUTypeObj12 = [v68 siriNLUTypeObj];
      currentTurnInput10 = [siriNLUTypeObj12 currentTurnInput];
      turnContext7 = [currentTurnInput10 turnContext];
      nlContext8 = [turnContext7 nlContext];
      executedTasks3 = [nlContext8 executedTasks];
      v84 = [executedTasks3 objectAtIndexedSubscript:v67];
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

  siriNLUTypeObj13 = [v68 siriNLUTypeObj];
  currentTurnInput11 = [siriNLUTypeObj13 currentTurnInput];
  [currentTurnInput11 turnContext];
  v89 = v88 = v68;
  nlContext9 = [v89 nlContext];
  salientEntities = [nlContext9 salientEntities];
  if (salientEntities)
  {
    v92 = salientEntities;
    siriNLUTypeObj14 = [v88 siriNLUTypeObj];
    currentTurnInput12 = [siriNLUTypeObj14 currentTurnInput];
    turnContext8 = [currentTurnInput12 turnContext];
    nlContext10 = [turnContext8 nlContext];
    [nlContext10 salientEntities];
    v98 = v97 = siriNLUTypeObj13;
    v198 = [v98 count];

    if (v198)
    {
      v99 = &unk_1EDAC9000;
      v100 = CDMLogContext;
      v101 = v201;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v100;
        siriNLUTypeObj15 = [v201 siriNLUTypeObj];
        currentTurnInput13 = [siriNLUTypeObj15 currentTurnInput];
        turnContext9 = [currentTurnInput13 turnContext];
        nlContext11 = [turnContext9 nlContext];
        salientEntities2 = [nlContext11 salientEntities];
        v108 = [salientEntities2 count];
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
    siriNLUTypeObj16 = [v101 siriNLUTypeObj];
    currentTurnInput14 = [siriNLUTypeObj16 currentTurnInput];
    turnContext10 = [currentTurnInput14 turnContext];
    nlContext12 = [turnContext10 nlContext];
    salientEntities3 = [nlContext12 salientEntities];
    v116 = [salientEntities3 count];

    v117 = *(v99 + 219);
    if (v116 <= v110)
    {
      break;
    }

    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      v118 = MEMORY[0x1E69D1438];
      v119 = v117;
      siriNLUTypeObj17 = [v101 siriNLUTypeObj];
      currentTurnInput15 = [siriNLUTypeObj17 currentTurnInput];
      turnContext11 = [currentTurnInput15 turnContext];
      nlContext13 = [turnContext11 nlContext];
      salientEntities4 = [nlContext13 salientEntities];
      v125 = [salientEntities4 objectAtIndexedSubscript:v110];
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

  siriNLUTypeObj18 = [v101 siriNLUTypeObj];
  currentTurnInput16 = [siriNLUTypeObj18 currentTurnInput];
  [currentTurnInput16 turnContext];
  v130 = v129 = v101;
  nlContext14 = [v130 nlContext];
  systemDialogActs = [nlContext14 systemDialogActs];
  if (systemDialogActs)
  {
    v133 = systemDialogActs;
    siriNLUTypeObj19 = [v129 siriNLUTypeObj];
    currentTurnInput17 = [siriNLUTypeObj19 currentTurnInput];
    turnContext12 = [currentTurnInput17 turnContext];
    nlContext15 = [turnContext12 nlContext];
    [nlContext15 systemDialogActs];
    v139 = v138 = siriNLUTypeObj18;
    v199 = [v139 count];

    if (v199)
    {
      v140 = 0;
      v141 = v201;
      v142 = &unk_1EDAC9000;
      while (1)
      {
        siriNLUTypeObj20 = [v141 siriNLUTypeObj];
        currentTurnInput18 = [siriNLUTypeObj20 currentTurnInput];
        turnContext13 = [currentTurnInput18 turnContext];
        nlContext16 = [turnContext13 nlContext];
        systemDialogActs2 = [nlContext16 systemDialogActs];
        v148 = [systemDialogActs2 count];

        if (v148 <= v140)
        {
          break;
        }

        v149 = *(v142 + 219);
        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
        {
          v150 = MEMORY[0x1E69D1438];
          v151 = v149;
          siriNLUTypeObj21 = [v141 siriNLUTypeObj];
          currentTurnInput19 = [siriNLUTypeObj21 currentTurnInput];
          turnContext14 = [currentTurnInput19 turnContext];
          nlContext17 = [turnContext14 nlContext];
          systemDialogActs3 = [nlContext17 systemDialogActs];
          v157 = [systemDialogActs3 objectAtIndexedSubscript:v140];
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
    siriNLUTypeObj22 = [v141 siriNLUTypeObj];
    currentTurnInput20 = [siriNLUTypeObj22 currentTurnInput];
    turnContext15 = [currentTurnInput20 turnContext];
    legacyNlContext = [turnContext15 legacyNlContext];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2112;
    v207[0] = legacyNlContext;
    _os_log_impl(&dword_1DC287000, v162, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n%@", buf, 0x20u);

    v160 = *(v161 + 219);
  }

  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v167 = v160;
    siriNLUTypeObj23 = [v201 siriNLUTypeObj];
    previousTurnInputs = [siriNLUTypeObj23 previousTurnInputs];
    v170 = [previousTurnInputs count];
    *buf = 136315650;
    v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
    v204 = 2112;
    v205 = @"summary";
    v206 = 2048;
    v207[0] = v170;
    _os_log_impl(&dword_1DC287000, v167, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nPrevious turn input count: %zu", buf, 0x20u);
  }

  siriNLUTypeObj24 = [v201 siriNLUTypeObj];
  previousTurnInputs2 = [siriNLUTypeObj24 previousTurnInputs];
  v173 = [previousTurnInputs2 count];

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
        siriNLUTypeObj25 = [v201 siriNLUTypeObj];
        previousTurnInputs3 = [siriNLUTypeObj25 previousTurnInputs];
        v180 = [previousTurnInputs3 objectAtIndexedSubscript:v174];
        startTimestamp2 = [v180 startTimestamp];
        *buf = 136315906;
        v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
        v204 = 2112;
        v205 = @"summary";
        v206 = 1024;
        LODWORD(v207[0]) = v174;
        WORD2(v207[0]) = 2048;
        *(v207 + 6) = startTimestamp2;
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
        siriNLUTypeObj26 = [v177 siriNLUTypeObj];
        previousTurnInputs4 = [siriNLUTypeObj26 previousTurnInputs];
        v185 = [previousTurnInputs4 objectAtIndexedSubscript:v174];
        asrOutputs2 = [v185 asrOutputs];
        firstObject2 = [asrOutputs2 firstObject];
        utterance2 = [firstObject2 utterance];
        *buf = 136315906;
        v203 = "+[CDMComposerServiceUtils logNluRequestForInsights:]";
        v204 = 2112;
        v205 = @"summary";
        v206 = 1024;
        LODWORD(v207[0]) = v174;
        WORD2(v207[0]) = 2112;
        *(v207 + 6) = utterance2;
        _os_log_impl(&dword_1DC287000, v182, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nPrevious Turn %d Utterance: %@", buf, 0x26u);

        v177 = v201;
      }

      ++v174;
      siriNLUTypeObj27 = [v177 siriNLUTypeObj];
      previousTurnInputs5 = [siriNLUTypeObj27 previousTurnInputs];
      v191 = [previousTurnInputs5 count];
    }

    while (v191 > v174);
  }

  v192 = *MEMORY[0x1E69E9840];
}

@end