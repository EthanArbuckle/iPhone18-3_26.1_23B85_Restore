@interface CHSynthesisRequestConcreteHandler
- (BOOL)hasPersonalizationAvailable;
- (BOOL)inventoryContainsSampleMatchingRequest:(id)request;
- (BOOL)isReadyForCharacterInventorySynthesis;
- (CHSynthesisRequestConcreteHandler)initWithStyleComputeBlock:(id)block;
- (id)_queueForRequest:(id)request outIsSynchronizedSynthesisQueue:(BOOL *)queue;
- (id)processSynthesisRequest:(id)request isSynchronized:(BOOL)synchronized error:(id *)error;
- (id)resultByAppendingInventoryContents;
- (id)unsafeSynthesisChunkingRequest:(id)request;
- (int64_t)styleScriptForSynthesizerSupportedStyle:(int64_t)style;
- (void)_updateStylePredictionsSingleBatch:(int64_t)batch;
- (void)addToHolderPersonalizedCharacterWithId:(unint64_t)id;
- (void)createPersonalizationCandidatesForAll:(BOOL)all;
- (void)handleInventoryRequest:(id)request reply:(id)reply;
- (void)handleSynthesisRequest:(id)request reply:(id)reply;
- (void)saveStyleInventoryIfNeededWithMinimumDelay:(double)delay;
- (void)unsafeCheckOutStyleInventory;
- (void)unsafeCheckOutTextSynthesizer;
- (void)unsafeEvictStyleInventory;
- (void)unsafeEvictTextSynthesizer;
- (void)updateInventoryStylePredictionsWithCompletion:(id)completion;
@end

@implementation CHSynthesisRequestConcreteHandler

- (CHSynthesisRequestConcreteHandler)initWithStyleComputeBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = CHSynthesisRequestConcreteHandler;
  v5 = [(CHSynthesisRequestConcreteHandler *)&v11 init];
  v6 = objc_opt_new();
  modelPowerLogger = v5->_modelPowerLogger;
  v5->_modelPowerLogger = v6;

  v8 = MEMORY[0x1865E6810](blockCopy);
  styleComputeBlock = v5->_styleComputeBlock;
  v5->_styleComputeBlock = v8;

  if (qword_1EA84DAE0 != -1)
  {
    dispatch_once(&qword_1EA84DAE0, &unk_1EF1BC558);
  }

  return v5;
}

- (void)unsafeCheckOutTextSynthesizer
{
  if (self->_textSynthesizer)
  {
    if (self->_fastPathCharacterPersonalizer)
    {
      return;
    }

LABEL_23:
    if (self->_styleInventory)
    {
      v22 = objc_msgSend_supportedCharactersForPersonalizedSynthesis(self->_textSynthesizer, a2, v2, v3, v4, v5);
      v23 = [CHFastPathCharacterPersonalizerInterface alloc];
      v27 = objc_msgSend_initWithStyleInventory_characterSet_(v23, v24, self->_styleInventory, v22, v25, v26);
      fastPathCharacterPersonalizer = self->_fastPathCharacterPersonalizer;
      self->_fastPathCharacterPersonalizer = v27;

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v29 = qword_1EA84DC98;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_DEFAULT, "Fast path character builder created", v30, 2u);
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v22 = qword_1EA84DC98;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_ERROR, "Not possible to create a fast path character builder, inventory is null.", v31, 2u);

        return;
      }
    }

    return;
  }

  if (CHHasPersonalizedSynthesisSupport() && !self->_styleInventory)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Style inventory is nil ", buf, 2u);
    }

    if (!self->_styleInventory)
    {
      if (qword_1EA84DC48 == -1)
      {
        v8 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v8 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_14;
        }
      }

      *v34 = 0;
      _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_FAULT, "Style inventory is nil ", v34, 2u);
      goto LABEL_14;
    }
  }

LABEL_15:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v9 = qword_1EA84DC98;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEFAULT, "Checking out multi script text synthesizer", v33, 2u);
  }

  v10 = [CHMultiScriptTextSynthesizer alloc];
  v15 = objc_msgSend_initWithStyleInventory_(v10, v11, self->_styleInventory, v12, v13, v14);
  textSynthesizer = self->_textSynthesizer;
  self->_textSynthesizer = v15;

  if (qword_1EA84DC48 == -1)
  {
    v17 = qword_1EA84DC98;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v17 = qword_1EA84DC98;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
LABEL_21:
    *v32 = 0;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEFAULT, "Loaded synthesizer", v32, 2u);
  }

LABEL_22:

  objc_msgSend_logModelLoaded_(self->_modelPowerLogger, v18, 3, v19, v20, v21);
  if (!self->_fastPathCharacterPersonalizer)
  {
    goto LABEL_23;
  }
}

- (void)unsafeCheckOutStyleInventory
{
  v252 = *MEMORY[0x1E69E9840];
  if (!self->_styleInventory)
  {
    v3 = objc_alloc_init(CHSynthesisStyleInventory);
    styleInventory = self->_styleInventory;
    self->_styleInventory = v3;

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v5 = qword_1EA84DC98;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v248) = 0;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "Loaded style inventory", &v248, 2u);
    }

    if (objc_msgSend_isPersonalizedSynthesisAvailableForLatin(CHPersonalizedSynthesisModelStatus, v6, v7, v8, v9, v10))
    {
      v16 = objc_msgSend_diffusionModelHashes(self, v11, v12, v13, v14, v15);
      v22 = objc_msgSend_synthesisModelHashes(self->_styleInventory, v17, v18, v19, v20, v21);
      v28 = objc_msgSend_latin(v22, v23, v24, v25, v26, v27);
      v34 = objc_msgSend_latin(v16, v29, v30, v31, v32, v33);
      isEqualToString = objc_msgSend_isEqualToString_(v28, v35, v34, v36, v37, v38);

      if (isEqualToString)
      {
LABEL_24:
        v86 = isEqualToString ^ 1;
        goto LABEL_29;
      }

      v45 = objc_msgSend_latin(v16, v40, v41, v42, v43, v44);
      v46 = v45 == 0;

      if (v46)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v52 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v248) = 0;
          _os_log_impl(&dword_18366B000, v52, OS_LOG_TYPE_ERROR, "The diffusion model hash for Latin should be non-nil", &v248, 2u);
        }
      }

      v53 = objc_msgSend_latin(v16, v47, v48, v49, v50, v51);
      v54 = v53 == 0;

      if (v54)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v55 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v248) = 0;
          _os_log_impl(&dword_18366B000, v55, OS_LOG_TYPE_FAULT, "The diffusion model hash for Latin should be non-nil", &v248, 2u);
        }
      }

      if (qword_1EA84DC48 == -1)
      {
        v56 = qword_1EA84DC98;
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
LABEL_23:

          v75 = self->_styleInventory;
          v81 = objc_msgSend_latin(v16, v76, v77, v78, v79, v80);
          objc_msgSend_updateSynthesisModelHashLatin_(v75, v82, v81, v83, v84, v85);

          goto LABEL_24;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v56 = qword_1EA84DC98;
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_23;
        }
      }

      v62 = objc_msgSend_synthesisModelHashes(self->_styleInventory, v57, v58, v59, v60, v61);
      v68 = objc_msgSend_latin(v62, v63, v64, v65, v66, v67);
      v74 = objc_msgSend_latin(v16, v69, v70, v71, v72, v73);
      v248 = 138412546;
      v249 = v68;
      v250 = 2112;
      v251 = v74;
      _os_log_impl(&dword_18366B000, v56, OS_LOG_TYPE_DEBUG, "Diffusion model hash has changed (old: %@, new: %@). The inventory samples embedding need to be recomputed.", &v248, 0x16u);

      goto LABEL_23;
    }

    if (qword_1EA84DC48 == -1)
    {
      v16 = qword_1EA84DC98;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_28:
        v86 = 0;
LABEL_29:

        if (objc_msgSend_isPersonalizedSynthesisAvailableForZhJa(CHPersonalizedSynthesisModelStatus, v87, v88, v89, v90, v91))
        {
          v97 = objc_msgSend_diffusionModelHashes(self, v92, v93, v94, v95, v96);
          v103 = objc_msgSend_synthesisModelHashes(self->_styleInventory, v98, v99, v100, v101, v102);
          v109 = objc_msgSend_zhJa(v103, v104, v105, v106, v107, v108);
          v115 = objc_msgSend_zhJa(v97, v110, v111, v112, v113, v114);
          v120 = objc_msgSend_isEqualToString_(v109, v116, v115, v117, v118, v119);

          if (v120)
          {
            goto LABEL_50;
          }

          v126 = objc_msgSend_zhJa(v97, v121, v122, v123, v124, v125);
          v127 = v126 == 0;

          if (v127)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v133 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v248) = 0;
              _os_log_impl(&dword_18366B000, v133, OS_LOG_TYPE_ERROR, "The diffusion model hash for zhJa should be non-nil", &v248, 2u);
            }
          }

          v134 = objc_msgSend_zhJa(v97, v128, v129, v130, v131, v132);
          v135 = v134 == 0;

          if (v135)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v136 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
            {
              LOWORD(v248) = 0;
              _os_log_impl(&dword_18366B000, v136, OS_LOG_TYPE_FAULT, "The diffusion model hash for zhJa should be non-nil", &v248, 2u);
            }
          }

          if (qword_1EA84DC48 == -1)
          {
            v137 = qword_1EA84DC98;
            if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
            {
LABEL_46:

              v156 = self->_styleInventory;
              v162 = objc_msgSend_zhJa(v97, v157, v158, v159, v160, v161);
              objc_msgSend_updateSynthesisModelHashZhJa_(v156, v163, v162, v164, v165, v166);

              v86 = 1;
              goto LABEL_50;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v137 = qword_1EA84DC98;
            if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_46;
            }
          }

          v143 = objc_msgSend_synthesisModelHashes(self->_styleInventory, v138, v139, v140, v141, v142);
          v149 = objc_msgSend_zhJa(v143, v144, v145, v146, v147, v148);
          v155 = objc_msgSend_zhJa(v97, v150, v151, v152, v153, v154);
          v248 = 138412546;
          v249 = v149;
          v250 = 2112;
          v251 = v155;
          _os_log_impl(&dword_18366B000, v137, OS_LOG_TYPE_DEBUG, "Diffusion model hash has changed (old: %@, new: %@). The inventory samples embedding need to be recomputed.", &v248, 0x16u);

          goto LABEL_46;
        }

        if (qword_1EA84DC48 == -1)
        {
          v97 = qword_1EA84DC98;
          if (!os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_50;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v97 = qword_1EA84DC98;
          if (!os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
LABEL_50:

            if (objc_msgSend_isPersonalizedSynthesisAvailableForKo(CHPersonalizedSynthesisModelStatus, v167, v168, v169, v170, v171))
            {
              v177 = objc_msgSend_diffusionModelHashes(self, v172, v173, v174, v175, v176);
              v183 = objc_msgSend_synthesisModelHashes(self->_styleInventory, v178, v179, v180, v181, v182);
              v189 = objc_msgSend_ko(v183, v184, v185, v186, v187, v188);
              v195 = objc_msgSend_ko(v177, v190, v191, v192, v193, v194);
              v200 = objc_msgSend_isEqualToString_(v189, v196, v195, v197, v198, v199);

              if (v200)
              {

                if ((v86 & 1) == 0)
                {
                  return;
                }

                goto LABEL_75;
              }

              v207 = objc_msgSend_ko(v177, v201, v202, v203, v204, v205);
              v208 = v207 == 0;

              if (v208)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v214 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v248) = 0;
                  _os_log_impl(&dword_18366B000, v214, OS_LOG_TYPE_ERROR, "The diffusion model hash for Ko should be non-nil", &v248, 2u);
                }
              }

              v215 = objc_msgSend_ko(v177, v209, v210, v211, v212, v213);
              v216 = v215 == 0;

              if (v216)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v217 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
                {
                  LOWORD(v248) = 0;
                  _os_log_impl(&dword_18366B000, v217, OS_LOG_TYPE_FAULT, "The diffusion model hash for Ko should be non-nil", &v248, 2u);
                }
              }

              if (qword_1EA84DC48 == -1)
              {
                v218 = qword_1EA84DC98;
                if (!os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
                {
LABEL_74:

                  v237 = self->_styleInventory;
                  v243 = objc_msgSend_ko(v177, v238, v239, v240, v241, v242);
                  objc_msgSend_updateSynthesisModelHashKo_(v237, v244, v243, v245, v246, v247);

LABEL_75:
                  (*(self->_styleComputeBlock + 2))();
                  return;
                }
              }

              else
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                v218 = qword_1EA84DC98;
                if (!os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_74;
                }
              }

              v224 = objc_msgSend_synthesisModelHashes(self->_styleInventory, v219, v220, v221, v222, v223);
              v230 = objc_msgSend_ko(v224, v225, v226, v227, v228, v229);
              v236 = objc_msgSend_ko(v177, v231, v232, v233, v234, v235);
              v248 = 138412546;
              v249 = v230;
              v250 = 2112;
              v251 = v236;
              _os_log_impl(&dword_18366B000, v218, OS_LOG_TYPE_DEBUG, "Diffusion model hash has changed (old: %@, new: %@). The inventory samples embedding need to be recomputed.", &v248, 0x16u);

              goto LABEL_74;
            }

            if (qword_1EA84DC48 == -1)
            {
              v206 = qword_1EA84DC98;
              if (!os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_57;
              }
            }

            else
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              v206 = qword_1EA84DC98;
              if (!os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
              {
LABEL_57:

                if (!v86)
                {
                  return;
                }

                goto LABEL_75;
              }
            }

            LOWORD(v248) = 0;
            _os_log_impl(&dword_18366B000, v206, OS_LOG_TYPE_DEBUG, "Diffusion model (Ko) is not ready. The model hash could not be validated", &v248, 2u);
            goto LABEL_57;
          }
        }

        LOWORD(v248) = 0;
        _os_log_impl(&dword_18366B000, v97, OS_LOG_TYPE_DEBUG, "Diffusion model (zhJa) is not ready. The model hash could not be validated", &v248, 2u);
        goto LABEL_50;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v16 = qword_1EA84DC98;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }
    }

    LOWORD(v248) = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEBUG, "Diffusion model (Latin) is not ready. The model hash could not be validated", &v248, 2u);
    goto LABEL_28;
  }
}

- (void)unsafeEvictTextSynthesizer
{
  textSynthesizer = self->_textSynthesizer;
  if (textSynthesizer)
  {
    objc_msgSend_logModelUnloaded_(self->_modelPowerLogger, a2, 3, v2, v3, v4);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC98;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "Evicted synthesizer", v9, 2u);
    }

    textSynthesizer = self->_textSynthesizer;
  }

  self->_textSynthesizer = 0;

  fastPathCharacterPersonalizer = self->_fastPathCharacterPersonalizer;
  self->_fastPathCharacterPersonalizer = 0;
}

- (id)_queueForRequest:(id)request outIsSynchronizedSynthesisQueue:(BOOL *)queue
{
  requestCopy = request;
  v11 = objc_msgSend_options(requestCopy, v6, v7, v8, v9, v10);
  isFastPath = objc_msgSend_isFastPath(v11, v12, v13, v14, v15, v16);

  if (isFastPath)
  {
    v23 = dispatch_get_global_queue(2, 0);
    if (!queue)
    {
      goto LABEL_16;
    }

LABEL_15:
    *queue = isFastPath ^ 1;
    goto LABEL_16;
  }

  v24 = objc_msgSend_priority(requestCopy, v18, v19, v20, v21, v22);
  if (v24 >= 2)
  {
    if (v24 == 2)
    {
      v23 = qword_1EA84CE00;
      if (queue)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v25 = qword_1EA84DC70;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "Invalid synthesis request priority specified", v27, 2u);
      }

      v23 = 0;
      if (queue)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v23 = qword_1EA84CDF8;
    if (queue)
    {
      goto LABEL_15;
    }
  }

LABEL_16:

  return v23;
}

- (void)handleSynthesisRequest:(id)request reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  v22 = 1;
  v11 = objc_msgSend__queueForRequest_outIsSynchronizedSynthesisQueue_(self, v8, requestCopy, &v22, v9, v10);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC98;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (v22)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEBUG, "Remote request handled on synchronized synthesis queue=%@", buf, 0xCu);
  }

  if (!v11)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_ERROR, "A valid queue is required to run synthesis", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_FAULT, "A valid queue is required to run synthesis", buf, 2u);
    goto LABEL_16;
  }

LABEL_17:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_183715840;
  v18[3] = &unk_1E6DDCDB0;
  v18[4] = self;
  v19 = requestCopy;
  v21 = v22;
  v20 = replyCopy;
  v16 = replyCopy;
  v17 = requestCopy;
  dispatch_async(v11, v18);
}

- (id)processSynthesisRequest:(id)request isSynchronized:(BOOL)synchronized error:(id *)error
{
  v490[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v481 = requestCopy;
  v12 = objc_msgSend_requestType(requestCopy, v7, v8, v9, v10, v11);
  if (v12)
  {
    if (v12 == 1)
    {
      textSynthesizer = self->_textSynthesizer;
      v19 = objc_msgSend_drawing(requestCopy, v13, v14, v15, v16, v17);
      v64 = objc_msgSend_string(requestCopy, v59, v60, v61, v62, v63);
      v70 = objc_msgSend_options(requestCopy, v65, v66, v67, v68, v69);
      v76 = objc_msgSend_dictionary(v70, v71, v72, v73, v74, v75);
      v486 = 0;
      v56 = objc_msgSend_refineDrawing_transcription_options_shouldCancel_error_(textSynthesizer, v77, v19, v64, v76, 0, &v486);
      v57 = v486;

      goto LABEL_57;
    }

    if (v12 == 2)
    {
      v18 = self->_textSynthesizer;
      v19 = objc_msgSend_drawing(requestCopy, v13, v14, v15, v16, v17);
      v25 = objc_msgSend_options(requestCopy, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_styleContents(v25, v26, v27, v28, v29, v30);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, 0, v33, v34, v35);
      v42 = objc_msgSend_string(requestCopy, v37, v38, v39, v40, v41);
      v48 = objc_msgSend_options(requestCopy, v43, v44, v45, v46, v47);
      v54 = objc_msgSend_dictionary(v48, v49, v50, v51, v52, v53);
      v485 = 0;
      v56 = objc_msgSend_replaceDrawing_originalTranscription_replacementTranscription_options_shouldCancel_error_(v18, v55, v19, v36, v42, v54, 0, &v485);
      v57 = v485;

      goto LABEL_57;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v107 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_ERROR, "Invalid synthesis request type specified", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v19 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
LABEL_19:
        v56 = 0;
        v57 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v19 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_FAULT, "Invalid synthesis request type specified", buf, 2u);
    goto LABEL_19;
  }

  v78 = objc_msgSend_options(requestCopy, v13, v14, v15, v16, v17);
  v84 = objc_msgSend_skipStyleInventoryLookup(v78, v79, v80, v81, v82, v83);

  if (v84)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v90 = qword_1EA84DC98;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v90, OS_LOG_TYPE_DEBUG, "Skipping style inventory lookup", buf, 2u);
    }

    v96 = objc_msgSend_options(requestCopy, v91, v92, v93, v94, v95);
    v19 = objc_msgSend_copy(v96, v97, v98, v99, v100, v101);
  }

  else if (synchronized)
  {
    v108 = self->_textSynthesizer;
    v109 = objc_msgSend_string(requestCopy, v85, v86, v87, v88, v89);
    canPredictStyleForTranscription = objc_msgSend_canPredictStyleForTranscription_(v108, v110, v109, v111, v112, v113);
    v119 = objc_msgSend_styleScriptForSynthesizerSupportedStyle_(self, v115, canPredictStyleForTranscription, v116, v117, v118);

    v478 = v119;
    if (objc_msgSend_needsStylePredictionUpdateForScript_(self->_styleInventory, v120, v119, v121, v122, v123))
    {
      v129 = objc_msgSend_minimumNumberOfSamplesWithStylePrediction(self->_styleInventory, v124, v125, v126, v127, v128);
      objc_msgSend__updateStylePredictionsSingleBatch_(self, v130, v129, v131, v132, v133);
    }

    v134 = objc_msgSend_options(requestCopy, v124, v125, v126, v127, v128);
    v145 = objc_msgSend_styleDrawings(v134, v135, v136, v137, v138, v139);
    if (v145)
    {
      v146 = objc_msgSend_options(requestCopy, v140, v141, v142, v143, v144);
      v152 = objc_msgSend_styleContents(v146, v147, v148, v149, v150, v151);

      if (v152)
      {
        v158 = MEMORY[0x1E695DF70];
        v159 = objc_msgSend_options(requestCopy, v153, v154, v155, v156, v157);
        v165 = objc_msgSend_styleDrawings(v159, v160, v161, v162, v163, v164);
        v171 = objc_msgSend_count(v165, v166, v167, v168, v169, v170);
        v476 = objc_msgSend_arrayWithCapacity_(v158, v172, v171, v173, v174, v175);

        v176 = MEMORY[0x1E695DF70];
        v182 = objc_msgSend_options(requestCopy, v177, v178, v179, v180, v181);
        v188 = objc_msgSend_styleDrawings(v182, v183, v184, v185, v186, v187);
        v194 = objc_msgSend_count(v188, v189, v190, v191, v192, v193);
        v475 = objc_msgSend_arrayWithCapacity_(v176, v195, v194, v196, v197, v198);

        v199 = MEMORY[0x1E695DF70];
        v205 = objc_msgSend_options(requestCopy, v200, v201, v202, v203, v204);
        v211 = objc_msgSend_styleDrawings(v205, v206, v207, v208, v209, v210);
        v217 = objc_msgSend_count(v211, v212, v213, v214, v215, v216);
        v477 = objc_msgSend_arrayWithCapacity_(v199, v218, v217, v219, v220, v221);

        v222 = 0;
        objc_msgSend_options(v481, v223, v224, v225, v226, v227, 138739971, v228);
        while (1)
          v229 = {;
          v235 = objc_msgSend_styleDrawings(v229, v230, v231, v232, v233, v234);
          v241 = v222 < objc_msgSend_count(v235, v236, v237, v238, v239, v240);

          if (!v241)
          {
            break;
          }

          v247 = self->_textSynthesizer;
          v248 = objc_msgSend_options(v481, v242, v243, v244, v245, v246);
          v254 = objc_msgSend_styleContents(v248, v249, v250, v251, v252, v253);
          v259 = objc_msgSend_objectAtIndexedSubscript_(v254, v255, v222, v256, v257, v258);
          v264 = objc_msgSend_canPredictStyleForTranscription_(v247, v260, v259, v261, v262, v263);
          v269 = objc_msgSend_styleScriptForSynthesizerSupportedStyle_(self, v265, v264, v266, v267, v268);

          if (v478 == v269)
          {
            v275 = self->_textSynthesizer;
            v276 = objc_msgSend_options(v481, v270, v271, v272, v273, v274);
            v282 = objc_msgSend_styleContents(v276, v277, v278, v279, v280, v281);
            v287 = objc_msgSend_objectAtIndexedSubscript_(v282, v283, v222, v284, v285, v286);
            v490[0] = v287;
            v291 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v288, v490, 1, v289, v290);
            v297 = objc_msgSend_options(v481, v292, v293, v294, v295, v296);
            v303 = objc_msgSend_styleDrawings(v297, v298, v299, v300, v301, v302);
            v308 = objc_msgSend_objectAtIndexedSubscript_(v303, v304, v222, v305, v306, v307);
            v489 = v308;
            v312 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v309, &v489, 1, v310, v311);
            v315 = objc_msgSend_stylePredictionResultForTranscriptions_drawings_shouldCancel_(v275, v313, v291, v312, 0, v314);

            if (v315)
            {
              objc_msgSend_addObject_(v477, v316, v315, v317, v318, v319);
              v325 = objc_msgSend_options(v481, v320, v321, v322, v323, v324);
              v331 = objc_msgSend_styleDrawings(v325, v326, v327, v328, v329, v330);
              v336 = objc_msgSend_objectAtIndexedSubscript_(v331, v332, v222, v333, v334, v335);
              objc_msgSend_addObject_(v476, v337, v336, v338, v339, v340);

              v346 = objc_msgSend_options(v481, v341, v342, v343, v344, v345);
              v352 = objc_msgSend_styleContents(v346, v347, v348, v349, v350, v351);
              v357 = objc_msgSend_objectAtIndexedSubscript_(v352, v353, v222, v354, v355, v356);
              objc_msgSend_addObject_(v475, v358, v357, v359, v360, v361);
            }

            else
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v362 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
              {
                v368 = objc_msgSend_options(v481, v363, v364, v365, v366, v367);
                v374 = objc_msgSend_styleContents(v368, v369, v370, v371, v372, v373);
                v379 = objc_msgSend_objectAtIndexedSubscript_(v374, v375, v222, v376, v377, v378);
                *buf = v473;
                v488 = v379;
                _os_log_impl(&dword_18366B000, v362, OS_LOG_TYPE_ERROR, "CHRemoteSynthesisRequestTypeGeneration: style prediction from the textSynthesizer is nil for input style sample with content %{sensitive}@", buf, 0xCu);
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v346 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v346, OS_LOG_TYPE_FAULT))
              {
                v385 = objc_msgSend_options(v481, v380, v381, v382, v383, v384);
                v391 = objc_msgSend_styleContents(v385, v386, v387, v388, v389, v390);
                v396 = objc_msgSend_objectAtIndexedSubscript_(v391, v392, v222, v393, v394, v395);
                *buf = v473;
                v488 = v396;
                _os_log_impl(&dword_18366B000, v346, OS_LOG_TYPE_FAULT, "CHRemoteSynthesisRequestTypeGeneration: style prediction from the textSynthesizer is nil for input style sample with content %{sensitive}@", buf, 0xCu);
              }
            }
          }

          ++v222;
          objc_msgSend_options(v481, v270, v271, v272, v273, v274, v473, v474);
        }

        v429 = objc_msgSend_options(v481, v242, v243, v244, v245, v246);
        objc_msgSend_setStyleDrawings_(v429, v430, v476, v431, v432, v433);

        v439 = objc_msgSend_options(v481, v434, v435, v436, v437, v438);
        objc_msgSend_setStyleContents_(v439, v440, v475, v441, v442, v443);

        v449 = objc_msgSend_options(v481, v444, v445, v446, v447, v448);
        objc_msgSend_setStylePredictions_(v449, v450, v477, v451, v452, v453);
      }
    }

    else
    {
    }

    objc_initWeak(buf, self->_textSynthesizer);
    styleInventory = self->_styleInventory;
    v483[0] = MEMORY[0x1E69E9820];
    v483[1] = 3221225472;
    v483[2] = sub_1837167B4;
    v483[3] = &unk_1E6DDCDD8;
    objc_copyWeak(&v484, buf);
    objc_msgSend_setDefaultStyleFastPathBlock_(styleInventory, v455, v483, v456, v457, v458);
    v19 = objc_msgSend_styleSampleOptionsForRequest_script_(self->_styleInventory, v459, v481, v478, v460, v461);
    objc_destroyWeak(&v484);
    objc_destroyWeak(buf);
  }

  else
  {
    v397 = objc_msgSend_options(requestCopy, v85, v86, v87, v88, v89);
    isFastPath = objc_msgSend_isFastPath(v397, v398, v399, v400, v401, v402);

    if ((isFastPath & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v409 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v409, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v409, OS_LOG_TYPE_ERROR, "Only fast path queries should end up on non-synchronized synthesis queues", buf, 2u);
      }
    }

    v410 = objc_msgSend_options(requestCopy, v404, v405, v406, v407, v408);
    v416 = objc_msgSend_isFastPath(v410, v411, v412, v413, v414, v415);

    if ((v416 & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v422 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v422, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v422, OS_LOG_TYPE_FAULT, "Only fast path queries should end up on non-synchronized synthesis queues", buf, 2u);
      }
    }

    v423 = objc_msgSend_options(requestCopy, v417, v418, v419, v420, v421);
    v19 = objc_msgSend_copy(v423, v424, v425, v426, v427, v428);
  }

  v462 = self->_textSynthesizer;
  v463 = objc_msgSend_string(v481, v102, v103, v104, v105, v106);
  v469 = objc_msgSend_dictionary(v19, v464, v465, v466, v467, v468);
  v482 = 0;
  v56 = objc_msgSend_synthesizeDrawingForString_options_shouldCancel_error_(v462, v470, v463, v469, 0, &v482);
  v57 = v482;

LABEL_57:
  if (error)
  {
    v471 = v57;
    *error = v57;
  }

  return v56;
}

- (void)handleInventoryRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = qword_1EA84CE00;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183716974;
  block[3] = &unk_1E6DDCE00;
  v12 = requestCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

- (id)unsafeSynthesisChunkingRequest:(id)request
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textSynthesizer = self->_textSynthesizer;
    v11 = objc_msgSend_string(requestCopy, v5, v6, v7, v8, v9);
    v17 = objc_msgSend_allowedSynthesizers(requestCopy, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_mode(requestCopy, v18, v19, v20, v21, v22);
    v26 = objc_msgSend_chunkForSynthesisString_allowedSynthesizers_mode_(textSynthesizer, v24, v11, v17, v23, v25);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v27 = qword_1EA84DC98;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v31 = 138412290;
      v32 = v29;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_DEFAULT, "An unexpected chunking request has been received for a %@ type of synthesizer", &v31, 0xCu);
    }

    v26 = 0;
  }

  return v26;
}

- (BOOL)inventoryContainsSampleMatchingRequest:(id)request
{
  styleInventory = self->_styleInventory;
  v7 = objc_msgSend_strokeIdentifiers(request, a2, request, v3, v4, v5);
  LOBYTE(styleInventory) = objc_msgSend_containsSampleWithStrokeIdentifiers_(styleInventory, v8, v7, v9, v10, v11);

  return styleInventory;
}

- (BOOL)hasPersonalizationAvailable
{
  if (objc_msgSend_isPersonalizedSynthesisAvailableForLatin(CHPersonalizedSynthesisModelStatus, a2, v2, v3, v4, v5) & 1) != 0 || (objc_msgSend_isPersonalizedSynthesisAvailableForZhJa(CHPersonalizedSynthesisModelStatus, v6, v7, v8, v9, v10))
  {
    return 1;
  }

  return objc_msgSend_isPersonalizedSynthesisAvailableForKo(CHPersonalizedSynthesisModelStatus, v11, v12, v13, v14, v15);
}

- (BOOL)isReadyForCharacterInventorySynthesis
{
  v12 = *MEMORY[0x1E69E9840];
  hasAllDigits = objc_msgSend_hasAllDigits(self->_styleInventory, a2, v2, v3, v4, v5);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC98;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (hasAllDigits)
    {
      v8 = @"YES";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "CHRemoteSynthesisRequestHandler: fast Path synthesis found sufficient digit coverage from the inventory to trigger the character inventory preparation : %@", &v10, 0xCu);
  }

  return hasAllDigits;
}

- (void)updateInventoryStylePredictionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = qword_1EA84CE00;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_183717448;
  v7[3] = &unk_1E6DDCE50;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (id)resultByAppendingInventoryContents
{
  v97 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    selfCopy = self;
    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = sub_183717B94;
    v93 = sub_183717BA4;
    v94 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = sub_183717B94;
    v87 = sub_183717BA4;
    v88 = objc_msgSend_string(MEMORY[0x1E696AD60], v3, v4, v5, v6, v7);
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v78[3] = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v77[3] = 0xBFF0000000000000;
    v76[0] = 0;
    v76[1] = v76;
    v76[2] = 0x2020000000;
    v76[3] = 0;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = sub_183717BAC;
    v75[3] = &unk_1E6DDCE78;
    v75[4] = &v79;
    v75[5] = v77;
    v75[6] = v78;
    v75[7] = &v89;
    v8 = MEMORY[0x1865E6810](v75);
    v62 = objc_msgSend_fastPathCharacterStylesWithVariations(self->_styleInventory, v9, v10, v11, v12, v13);
    v19 = objc_msgSend_allKeys(v62, v14, v15, v16, v17, v18);
    v24 = objc_msgSend_sortedArrayUsingSelector_(v19, v20, sel_compare_, v21, v22, v23);

    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v71 = 0u;
    obj = v24;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v71, v96, 16, v26);
    if (v31)
    {
      v32 = *v72;
      do
      {
        v33 = 0;
        do
        {
          if (*v72 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = objc_msgSend_objectForKeyedSubscript_(v62, v27, *(*(&v71 + 1) + 8 * v33), v28, v29, v30);
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v35 = v34;
          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v67, v95, 16, v37);
          if (v43)
          {
            v44 = *v68;
            do
            {
              v45 = 0;
              do
              {
                if (*v68 != v44)
                {
                  objc_enumerationMutation(v35);
                }

                v46 = objc_msgSend_drawing(*(*(&v67 + 1) + 8 * v45), v38, v39, v40, v41, v42);
                (v8)[2](v8, v46, 1, 15.0);

                ++v45;
              }

              while (v43 != v45);
              v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v67, v95, 16, v42);
            }

            while (v43);
          }

          ++v33;
        }

        while (v33 != v31);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v71, v96, 16, v30);
      }

      while (v31);
    }

    v80[3] = v80[3] + 20.0;
    styleInventory = selfCopy->_styleInventory;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_183717DB0;
    v63[3] = &unk_1E6DDCEA0;
    v65 = v76;
    v48 = v8;
    v64 = v48;
    v66 = &v83;
    objc_msgSend_enumerateStyleSamplesUsingBlock_(styleInventory, v49, v63, v50, v51, v52);
    if (v90[5])
    {
      v53 = [CHSynthesisResult alloc];
      v57 = objc_msgSend_initWithContent_drawing_(v53, v54, v84[5], v90[5], v55, v56);
    }

    else
    {
      v57 = 0;
    }

    _Block_object_dispose(v76, 8);
    _Block_object_dispose(v77, 8);
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(&v79, 8);
    _Block_object_dispose(&v83, 8);

    _Block_object_dispose(&v89, 8);
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  return v58;
}

- (void)createPersonalizationCandidatesForAll:(BOOL)all
{
  allCopy = all;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_183717B94;
  v10[4] = sub_183717BA4;
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1837180C4;
  v9[3] = &unk_1E6DDCEC8;
  v9[4] = self;
  v9[5] = v10;
  v5 = MEMORY[0x1865E6810](v9, a2);
  objc_msgSend_enumerateCharactersToSynthesize_withPersonalizationBlock_(self->_fastPathCharacterPersonalizer, v6, allCopy, v5, v7, v8);

  _Block_object_dispose(v10, 8);
}

- (void)unsafeEvictStyleInventory
{
  styleInventory = self->_styleInventory;
  self->_styleInventory = 0;
}

- (void)saveStyleInventoryIfNeededWithMinimumDelay:(double)delay
{
  v9 = objc_msgSend_lastSavedDate(self->_styleInventory, a2, v3, v4, v5, v6);
  objc_msgSend_timeIntervalSinceNow(v9, v10, v11, v12, v13, v14);
  v16 = -v15;

  if (v16 >= delay)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v17 = qword_1EA84DC98;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEBUG, "Sending message to save the style inventory if needed", v23, 2u);
    }

    objc_msgSend_saveIfNeeded(self->_styleInventory, v18, v19, v20, v21, v22);
  }
}

- (void)_updateStylePredictionsSingleBatch:(int64_t)batch
{
  v171 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!self->_styleInventory)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Style inventory has not been checked out", buf, 2u);
    }

    self = selfCopy;
    if (!selfCopy->_styleInventory)
    {
      if (qword_1EA84DC48 == -1)
      {
        v10 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_20;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v10 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
LABEL_20:

          self = selfCopy;
          if (selfCopy->_textSynthesizer)
          {
            goto LABEL_21;
          }

          goto LABEL_8;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_FAULT, "Style inventory has not been checked out", buf, 2u);
      goto LABEL_20;
    }
  }

  if (self->_textSynthesizer)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v8 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_ERROR, "Text synthesizer has not been checked out", buf, 2u);
  }

  self = selfCopy;
  if (!selfCopy->_textSynthesizer)
  {
    if (qword_1EA84DC48 == -1)
    {
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
LABEL_16:

        self = selfCopy;
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_FAULT, "Text synthesizer has not been checked out", buf, 2u);
    goto LABEL_16;
  }

LABEL_21:
  v150 = objc_msgSend_samplesWithoutStylePrediction(self->_styleInventory, a2, batch, v3, v4, v5);
  v152 = objc_msgSend_sortedArrayUsingComparator_(v150, v11, &unk_1EF1BC578, v12, v13, v14);
  v19 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v15, batch, v16, v17, v18);
  v161[0] = MEMORY[0x1E69E9820];
  v161[1] = 3221225472;
  v161[2] = sub_183719140;
  v161[3] = &unk_1E6DDCF10;
  v20 = v19;
  v162 = v20;
  batchCopy = batch;
  v151 = v20;
  objc_msgSend_enumerateObjectsUsingBlock_(v152, v21, v161, v22, v23, v24);
  if (objc_msgSend_count(v20, v25, v26, v27, v28, v29) > batch)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v35 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_msgSend_count(v151, v36, v37, v38, v39, v40);
      *buf = 134218240;
      v168 = v41;
      v169 = 2048;
      batchCopy3 = batch;
      _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_ERROR, "Batch samples size (%lu) is larger than the batch size (%lu)", buf, 0x16u);
    }
  }

  if (objc_msgSend_count(v151, v30, v31, v32, v33, v34) > batch)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      v48 = objc_msgSend_count(v151, v43, v44, v45, v46, v47);
      *buf = 134218240;
      v168 = v48;
      v169 = 2048;
      batchCopy3 = batch;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_FAULT, "Batch samples size (%lu) is larger than the batch size (%lu)", buf, 0x16u);
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v49 = qword_1EA84DC98;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v55 = objc_msgSend_count(v151, v50, v51, v52, v53, v54);
    v61 = objc_msgSend_count(v150, v56, v57, v58, v59, v60);
    *buf = 134218240;
    v168 = v55;
    v169 = 2048;
    batchCopy3 = v61;
    _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_DEBUG, "Computing style prediction for %lu samples out of %lu samples without style prediction.", buf, 0x16u);
  }

  v153 = objc_msgSend_array(MEMORY[0x1E695DF70], v62, v63, v64, v65, v66);
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = v151;
  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v157, v166, 16, v68);
  if (v69)
  {
    v155 = *v158;
    do
    {
      v70 = 0;
      do
      {
        if (*v158 != v155)
        {
          objc_enumerationMutation(obj);
        }

        v71 = *(*(&v157 + 1) + 8 * v70);
        v72 = objc_autoreleasePoolPush();
        textSynthesizer = selfCopy->_textSynthesizer;
        v79 = objc_msgSend_transcription(v71, v74, v75, v76, v77, v78);
        canPredictStyleForTranscription = objc_msgSend_canPredictStyleForTranscription_(textSynthesizer, v80, v79, v81, v82, v83);

        v94 = objc_msgSend_styleScriptForSynthesizerSupportedStyle_(selfCopy, v85, canPredictStyleForTranscription, v86, v87, v88);
        if (v94)
        {
          v95 = selfCopy->_textSynthesizer;
          v96 = objc_msgSend_transcription(v71, v89, v90, v91, v92, v93);
          v165 = v96;
          v100 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v97, &v165, 1, v98, v99);
          v106 = objc_msgSend_drawing(v71, v101, v102, v103, v104, v105);
          v164 = v106;
          v110 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v107, &v164, 1, v108, v109);
          v113 = objc_msgSend_stylePredictionResultForTranscriptions_drawings_shouldCancel_(v95, v111, v100, v110, 0, v112);

          if (v113)
          {
            objc_msgSend_updateStyleEmbedding_script_(v71, v114, v113, v94, v115, v116);
          }
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v117 = qword_1EA84DC98;
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
          {
            v123 = objc_msgSend_transcription(v71, v118, v119, v120, v121, v122);
            *buf = 138739971;
            v168 = v123;
            _os_log_impl(&dword_18366B000, v117, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: (embedding prediction) sample with unsupported script. This sample will be removed: %{sensitive}@", buf, 0xCu);
          }

          objc_msgSend_addObject_(v153, v124, v71, v125, v126, v127);
        }

        objc_autoreleasePoolPop(v72);
        ++v70;
      }

      while (v69 != v70);
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v128, &v157, v166, 16, v129);
    }

    while (v69);
  }

  objc_msgSend_removeObjectsInArray_(obj, v130, v153, v131, v132, v133);
  objc_msgSend_updateStylePredictionsWithSamplesToUpdate_toRemove_(selfCopy->_styleInventory, v134, v152, v153, v135, v136);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v137 = qword_1EA84DC98;
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
  {
    v143 = objc_msgSend_count(v152, v138, v139, v140, v141, v142);
    v149 = objc_msgSend_count(v153, v144, v145, v146, v147, v148);
    *buf = 134218240;
    v168 = v143;
    v169 = 2048;
    batchCopy3 = v149;
    _os_log_impl(&dword_18366B000, v137, OS_LOG_TYPE_DEBUG, "Updating style prediction for %lu samples, removing %lu unsupported samples", buf, 0x16u);
  }
}

- (int64_t)styleScriptForSynthesizerSupportedStyle:(int64_t)style
{
  if ((style - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return style;
  }
}

- (void)addToHolderPersonalizedCharacterWithId:(unint64_t)id
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC98;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109120;
    v10[1] = id;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHSynthesisRequestConcreteHandler: addToHolderPersonalizedCharacterWithId %d", v10, 8u);
  }

  objc_msgSend_addToPersistentStorageCandidateWithId_(self->_fastPathCharacterPersonalizer, v6, id, v7, v8, v9);
}

@end