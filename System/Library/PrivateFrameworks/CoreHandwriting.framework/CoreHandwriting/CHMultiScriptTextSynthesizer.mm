@interface CHMultiScriptTextSynthesizer
+ (id)chunksForFeatures:(const void *)a3 metadata:(CHDiffusionPipelinePreprocessingExecutionMetadata *)a4;
+ (id)diffusionModelHashes;
+ (id)rescaleAndShiftSynthesizedDrawing:(id)a3 original:(id)a4;
+ (int)synthesizerIdFromSuggestion:(int64_t)a3;
+ (int64_t)suggestionFromSynthesizerID:(int)a3;
- (CHMultiScriptTextSynthesizer)initWithStyleInventory:(id)a3;
- (id).cxx_construct;
- (id)availableDiffusionSynthesizers;
- (id)chunkForSynthesisString:(id)a3 allowedSynthesizers:(id)a4;
- (id)chunkForSynthesisString:(id)a3 allowedSynthesizers:(id)a4 mode:(id)a5;
- (id)getSynthesizerFromSynthesizerId:(int)a3;
- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7;
- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8;
- (id)stylePredictionResultForTranscriptions:(id)a3 drawings:(id)a4 shouldCancel:(id)a5;
- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4;
- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6;
- (int64_t)canPredictStyleForTranscription:(id)a3;
@end

@implementation CHMultiScriptTextSynthesizer

- (CHMultiScriptTextSynthesizer)initWithStyleInventory:(id)a3
{
  v4 = a3;
  v139.receiver = self;
  v139.super_class = CHMultiScriptTextSynthesizer;
  v5 = [(CHMultiScriptTextSynthesizer *)&v139 init];

  if (!v5)
  {
    goto LABEL_169;
  }

  v6 = [CHFastPathTextSynthesizer alloc];
  v11 = objc_msgSend_initWithStyleInventory_(v6, v7, v4, v8, v9, v10);
  fastPathSynthesizer = v5->_fastPathSynthesizer;
  v5->_fastPathSynthesizer = v11;

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC98;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "Checking out modernized latin synthesizer", buf, 2u);
  }

  v14 = objc_alloc_init(CHDiffusionTextSynthesizerLatin);
  diffusionSynthesizerLatn = v5->_diffusionSynthesizerLatn;
  v5->_diffusionSynthesizerLatn = v14;

  if (objc_msgSend_isLoaded(v5->_diffusionSynthesizerLatn, v16, v17, v18, v19, v20))
  {
    v26 = v5->_diffusionSynthesizerLatn;
    if (v26)
    {
      objc_msgSend_context(v26, v21, v22, v23, v24, v25);
      v27 = v5->_diffusionSynthesizerLatn;
      if (v27)
      {
        objc_msgSend_preprocessor(v27, v21, v22, v23, v24, v25);
        v28 = v135;
      }

      else
      {
        v28 = 0uLL;
      }
    }

    else
    {
      v28 = 0uLL;
      v136 = 0u;
    }

    v29 = v136;
    *buf = v136;
    v136 = 0uLL;
    v138 = v28;
    v135 = 0uLL;
    left = v5->preprocessors.__tree_.__end_node_.__left_;
    if (!left)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v31 = left;
        v32 = *(left + 8);
        if (v32 < 3)
        {
          break;
        }

        left = *v31;
        if (!*v31)
        {
          goto LABEL_18;
        }
      }

      if (v32 == 2)
      {
        break;
      }

      left = v31[1];
      if (!left)
      {
        goto LABEL_18;
      }
    }

    v33 = v31;
    memset(buf, 0, sizeof(buf));
    v34 = v31[6];
    *(v33 + 5) = v29;
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }

    v35 = v138;
    v138 = 0uLL;
    v36 = v33[8];
    *(v33 + 7) = v35;
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }

    v37 = *(&v138 + 1);
    if (*(&v138 + 1) && !atomic_fetch_add((*(&v138 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    v38 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v39 = v5->_diffusionSynthesizerLatn;
    if (v39)
    {
      objc_msgSend_postprocessor(v39, v21, v22, v23, v24, v25, 0);
      v40 = v5->postprocessors.__tree_.__end_node_.__left_;
      if (v40)
      {
        goto LABEL_37;
      }

LABEL_40:
      operator new();
    }

    memset(buf, 0, sizeof(buf));
    v40 = v5->postprocessors.__tree_.__end_node_.__left_;
    if (!v40)
    {
      goto LABEL_40;
    }

    while (1)
    {
LABEL_37:
      while (1)
      {
        v41 = v40;
        v42 = *(v40 + 8);
        if (v42 < 3)
        {
          break;
        }

        v40 = *v41;
        if (!*v41)
        {
          goto LABEL_40;
        }
      }

      if (v42 == 2)
      {
        break;
      }

      v40 = v41[1];
      if (!v40)
      {
        goto LABEL_40;
      }
    }

    v43 = v41;
    v44 = *buf;
    memset(buf, 0, sizeof(buf));
    v45 = v41[6];
    *(v43 + 5) = v44;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    v46 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }

  v47 = objc_alloc_init(CHDiffusionTextSynthesizerZhJa);
  diffusionSynthesizerZhJa = v5->_diffusionSynthesizerZhJa;
  v5->_diffusionSynthesizerZhJa = v47;

  if (objc_msgSend_isLoaded(v5->_diffusionSynthesizerZhJa, v49, v50, v51, v52, v53))
  {
    v59 = v5->_diffusionSynthesizerZhJa;
    if (v59)
    {
      objc_msgSend_context(v59, v54, v55, v56, v57, v58);
      v60 = v5->_diffusionSynthesizerZhJa;
      if (v60)
      {
        objc_msgSend_preprocessor(v60, v54, v55, v56, v57, v58);
        v61 = v135;
      }

      else
      {
        v61 = 0uLL;
      }
    }

    else
    {
      v61 = 0uLL;
      v136 = 0u;
    }

    v62 = v136;
    *buf = v136;
    v136 = 0uLL;
    v138 = v61;
    v135 = 0uLL;
    v63 = v5->preprocessors.__tree_.__end_node_.__left_;
    if (!v63)
    {
LABEL_59:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v64 = v63;
        v65 = *(v63 + 8);
        if (v65 < 4)
        {
          break;
        }

        v63 = *v64;
        if (!*v64)
        {
          goto LABEL_59;
        }
      }

      if (v65 == 3)
      {
        break;
      }

      v63 = v64[1];
      if (!v63)
      {
        goto LABEL_59;
      }
    }

    v66 = v64;
    memset(buf, 0, sizeof(buf));
    v67 = v64[6];
    *(v66 + 5) = v62;
    if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v67->__on_zero_shared)(v67);
      std::__shared_weak_count::__release_weak(v67);
    }

    v68 = v138;
    v138 = 0uLL;
    v69 = v66[8];
    *(v66 + 7) = v68;
    if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v69->__on_zero_shared)(v69);
      std::__shared_weak_count::__release_weak(v69);
    }

    v70 = *(&v138 + 1);
    if (*(&v138 + 1) && !atomic_fetch_add((*(&v138 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v70->__on_zero_shared)(v70);
      std::__shared_weak_count::__release_weak(v70);
    }

    v71 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v71->__on_zero_shared)(v71);
      std::__shared_weak_count::__release_weak(v71);
    }

    v72 = v5->_diffusionSynthesizerZhJa;
    if (v72)
    {
      objc_msgSend_postprocessor(v72, v54, v55, v56, v57, v58, 0);
      v73 = v5->postprocessors.__tree_.__end_node_.__left_;
      if (v73)
      {
        goto LABEL_78;
      }

LABEL_81:
      operator new();
    }

    memset(buf, 0, sizeof(buf));
    v73 = v5->postprocessors.__tree_.__end_node_.__left_;
    if (!v73)
    {
      goto LABEL_81;
    }

    while (1)
    {
LABEL_78:
      while (1)
      {
        v74 = v73;
        v75 = *(v73 + 8);
        if (v75 < 4)
        {
          break;
        }

        v73 = *v74;
        if (!*v74)
        {
          goto LABEL_81;
        }
      }

      if (v75 == 3)
      {
        break;
      }

      v73 = v74[1];
      if (!v73)
      {
        goto LABEL_81;
      }
    }

    v76 = v74;
    v77 = *buf;
    memset(buf, 0, sizeof(buf));
    v78 = v74[6];
    *(v76 + 5) = v77;
    if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v78);
    }

    v79 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v79->__on_zero_shared)(v79);
      std::__shared_weak_count::__release_weak(v79);
    }
  }

  v80 = objc_alloc_init(CHDiffusionTextSynthesizerKo);
  diffusionSynthesizerKo = v5->_diffusionSynthesizerKo;
  v5->_diffusionSynthesizerKo = v80;

  if (!objc_msgSend_isLoaded(v5->_diffusionSynthesizerKo, v82, v83, v84, v85, v86))
  {
    goto LABEL_128;
  }

  v92 = v5->_diffusionSynthesizerKo;
  if (v92)
  {
    objc_msgSend_context(v92, v87, v88, v89, v90, v91);
    v93 = v5->_diffusionSynthesizerKo;
    if (v93)
    {
      objc_msgSend_preprocessor(v93, v87, v88, v89, v90, v91);
      v94 = v135;
    }

    else
    {
      v94 = 0uLL;
    }
  }

  else
  {
    v94 = 0uLL;
    v136 = 0u;
  }

  v95 = v136;
  *buf = v136;
  v136 = 0uLL;
  v138 = v94;
  v135 = 0uLL;
  v96 = v5->preprocessors.__tree_.__end_node_.__left_;
  if (!v96)
  {
LABEL_100:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v97 = v96;
      v98 = *(v96 + 8);
      if (v98 < 5)
      {
        break;
      }

      v96 = *v97;
      if (!*v97)
      {
        goto LABEL_100;
      }
    }

    if (v98 == 4)
    {
      break;
    }

    v96 = v97[1];
    if (!v96)
    {
      goto LABEL_100;
    }
  }

  v99 = v97;
  memset(buf, 0, sizeof(buf));
  v100 = v97[6];
  *(v99 + 5) = v95;
  if (v100 && !atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v100->__on_zero_shared)(v100);
    std::__shared_weak_count::__release_weak(v100);
  }

  v101 = v138;
  v138 = 0uLL;
  v102 = v99[8];
  *(v99 + 7) = v101;
  if (v102 && !atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v102->__on_zero_shared)(v102);
    std::__shared_weak_count::__release_weak(v102);
  }

  v103 = *(&v138 + 1);
  if (*(&v138 + 1) && !atomic_fetch_add((*(&v138 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v103->__on_zero_shared)(v103);
    std::__shared_weak_count::__release_weak(v103);
  }

  v104 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v104->__on_zero_shared)(v104);
    std::__shared_weak_count::__release_weak(v104);
  }

  v105 = v5->_diffusionSynthesizerKo;
  if (v105)
  {
    objc_msgSend_postprocessor(v105, v87, v88, v89, v90, v91, 0);
    v106 = v5->postprocessors.__tree_.__end_node_.__left_;
    if (v106)
    {
      goto LABEL_119;
    }

LABEL_122:
    operator new();
  }

  memset(buf, 0, sizeof(buf));
  v106 = v5->postprocessors.__tree_.__end_node_.__left_;
  if (!v106)
  {
    goto LABEL_122;
  }

  while (1)
  {
LABEL_119:
    while (1)
    {
      v107 = v106;
      v108 = *(v106 + 8);
      if (v108 < 5)
      {
        break;
      }

      v106 = *v107;
      if (!*v107)
      {
        goto LABEL_122;
      }
    }

    if (v108 == 4)
    {
      break;
    }

    v106 = v107[1];
    if (!v106)
    {
      goto LABEL_122;
    }
  }

  v109 = v107;
  v110 = *buf;
  memset(buf, 0, sizeof(buf));
  v111 = v107[6];
  *(v109 + 5) = v110;
  if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v111->__on_zero_shared)(v111);
    std::__shared_weak_count::__release_weak(v111);
  }

  v112 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v112->__on_zero_shared)(v112);
    std::__shared_weak_count::__release_weak(v112);
    v113 = v5->_fastPathSynthesizer;
    if (v113)
    {
LABEL_129:
      objc_msgSend_context(v113, v87, v88, v89, v90, v91, v135);
      v114 = v5->_fastPathSynthesizer;
      if (v114)
      {
        objc_msgSend_preprocessor(v114, v87, v88, v89, v90, v91);
        v115 = v135;
      }

      else
      {
        v115 = 0uLL;
      }

      goto LABEL_134;
    }
  }

  else
  {
LABEL_128:
    v113 = v5->_fastPathSynthesizer;
    if (v113)
    {
      goto LABEL_129;
    }
  }

  v115 = 0uLL;
  v136 = 0u;
LABEL_134:
  *buf = v136;
  v138 = v115;
  v116 = v5->preprocessors.__tree_.__end_node_.__left_;
  if (!v116)
  {
LABEL_140:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v117 = v116;
      v118 = *(v116 + 8);
      if (v118 < 2)
      {
        break;
      }

      v116 = *v117;
      if (!*v117)
      {
        goto LABEL_140;
      }
    }

    if (v118 == 1)
    {
      break;
    }

    v116 = v117[1];
    if (!v116)
    {
      goto LABEL_140;
    }
  }

  v119 = v117;
  memset(buf, 0, sizeof(buf));
  v120 = v117[6];
  *(v119 + 5) = v136;
  if (v120 && !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v120->__on_zero_shared)(v120);
    std::__shared_weak_count::__release_weak(v120);
  }

  v121 = v138;
  v138 = 0uLL;
  v122 = v119[8];
  *(v119 + 7) = v121;
  if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v122->__on_zero_shared)(v122);
    std::__shared_weak_count::__release_weak(v122);
  }

  v123 = *(&v138 + 1);
  if (*(&v138 + 1) && !atomic_fetch_add((*(&v138 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v123->__on_zero_shared)(v123);
    std::__shared_weak_count::__release_weak(v123);
  }

  v124 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v124->__on_zero_shared)(v124);
    std::__shared_weak_count::__release_weak(v124);
  }

  v125 = v5->_fastPathSynthesizer;
  if (v125)
  {
    objc_msgSend_postprocessor(v125, v87, v88, v89, v90, v91, 0);
    v126 = v5->postprocessors.__tree_.__end_node_.__left_;
    if (v126)
    {
      goto LABEL_159;
    }

LABEL_162:
    operator new();
  }

  memset(buf, 0, sizeof(buf));
  v126 = v5->postprocessors.__tree_.__end_node_.__left_;
  if (!v126)
  {
    goto LABEL_162;
  }

  while (1)
  {
LABEL_159:
    while (1)
    {
      v127 = v126;
      v128 = *(v126 + 8);
      if (v128 < 2)
      {
        break;
      }

      v126 = *v127;
      if (!*v127)
      {
        goto LABEL_162;
      }
    }

    if (v128 == 1)
    {
      break;
    }

    v126 = v127[1];
    if (!v126)
    {
      goto LABEL_162;
    }
  }

  v129 = v127;
  v130 = *buf;
  memset(buf, 0, sizeof(buf));
  v131 = v127[6];
  *(v129 + 5) = v130;
  if (v131 && !atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v131->__on_zero_shared)(v131);
    std::__shared_weak_count::__release_weak(v131);
  }

  v132 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v132->__on_zero_shared)(v132);
    std::__shared_weak_count::__release_weak(v132);
  }

LABEL_169:
  v133 = v5;

  return v133;
}

+ (id)rescaleAndShiftSynthesizedDrawing:(id)a3 original:(id)a4
{
  v5 = a3;
  objc_msgSend_bounds(a4, v6, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  objc_msgSend_bounds(v5, v19, v20, v21, v22, v23);
  *&v24 = sqrt(v16 * v16 + v18 * v18) / sqrt(v24 * v24 + v25 * v25);
  v33 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v5, v28, v29, v30, v31, v32, v12 / *&v24 - v26, v14 / *&v24 - v27);

  return v33;
}

+ (id)diffusionModelHashes
{
  v6 = objc_msgSend_diffusionModelHashes(CHDiffusionTextSynthesizerLatin, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_latin(v6, v7, v8, v9, v10, v11);

  v18 = objc_msgSend_diffusionModelHashes(CHDiffusionTextSynthesizerZhJa, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_zhJa(v18, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_diffusionModelHashes(CHDiffusionTextSynthesizerKo, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_ko(v30, v31, v32, v33, v34, v35);
  v39 = objc_msgSend_modelHashesWithLatinHash_zhJaHash_koHash_(CHSynthesisModelHashes, v37, v12, v24, v36, v38);

  return v39;
}

- (id)getSynthesizerFromSynthesizerId:(int)a3
{
  v7 = 0;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        diffusionSynthesizerZhJa = self->_diffusionSynthesizerZhJa;
        p_diffusionSynthesizerZhJa = &self->_diffusionSynthesizerZhJa;
        if ((objc_msgSend_isLoaded(diffusionSynthesizerZhJa, a2, *&a3, v3, v4, v5) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_12;
        }

        diffusionSynthesizerKo = self->_diffusionSynthesizerKo;
        p_diffusionSynthesizerZhJa = &self->_diffusionSynthesizerKo;
        if (!objc_msgSend_isLoaded(diffusionSynthesizerKo, a2, *&a3, v3, v4, v5))
        {
LABEL_16:
          v7 = 0;

          return v7;
        }
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    diffusionSynthesizerLatn = self->_diffusionSynthesizerLatn;
    p_diffusionSynthesizerZhJa = &self->_diffusionSynthesizerLatn;
    if ((objc_msgSend_isLoaded(diffusionSynthesizerLatn, a2, *&a3, v3, v4, v5) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (a3 != 1)
  {
    goto LABEL_12;
  }

  p_diffusionSynthesizerZhJa = &self->_fastPathSynthesizer;
LABEL_11:
  v7 = *p_diffusionSynthesizerZhJa;
LABEL_12:

  return v7;
}

- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v46 = a4;
  v11 = a5;
  v45 = a6;
  v16 = objc_msgSend_objectForKeyedSubscript_(v11, v12, CHTextSynthesisOptionSynthesisSuggestion[0], v13, v14, v15);
  v22 = objc_msgSend_intValue(v16, v17, v18, v19, v20, v21);

  v23 = objc_opt_class();
  v28 = objc_msgSend_synthesizerIdFromSuggestion_(v23, v24, v22, v25, v26, v27);
  v47 = objc_msgSend_getSynthesizerFromSynthesizerId_(self, v29, v28, v30, v31, v32);
  if (v47)
  {
    left = self->preprocessors.__tree_.__end_node_.__left_;
    if (left)
    {
      p_end_node = &self->preprocessors.__tree_.__end_node_;
      v35 = self->preprocessors.__tree_.__end_node_.__left_;
      do
      {
        if (SLODWORD(v35[4].__left_) >= v28)
        {
          p_end_node = v35;
        }

        v35 = v35[SLODWORD(v35[4].__left_) < v28].__left_;
      }

      while (v35);
      if (p_end_node != &self->preprocessors.__tree_.__end_node_ && v28 >= SLODWORD(p_end_node[4].__left_))
      {
        while (1)
        {
          v37 = left;
          v38 = *(left + 8);
          if (v28 < v38)
          {
            left = *v37;
            if (!*v37)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v38 >= v28)
            {
              v41 = v37[5];
              v43 = v41[4];
              v42 = v41[5];
              v48[0] = v43;
              v48[1] = v42;
              if (v42)
              {
                atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
              }

              sub_183796FC0(buf, v48);
            }

            left = v37[1];
            if (!left)
            {
LABEL_27:
              operator new();
            }
          }
        }
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v36 = qword_1EA84DC98;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v28;
      _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_ERROR, "Preprocessor for synthesizer with ID %d not available", buf, 8u);
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v39 = qword_1EA84DC98;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v22;
      _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_ERROR, "Synthesizer with synthesisSuggestion %d not available", buf, 8u);
    }
  }

  return 0;
}

- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8
{
  v55 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v51 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20 = objc_msgSend_objectForKeyedSubscript_(v14, v16, CHTextSynthesisOptionSynthesisSuggestion[0], v17, v18, v19);
  v26 = objc_msgSend_intValue(v20, v21, v22, v23, v24, v25);

  v27 = objc_opt_class();
  v32 = objc_msgSend_synthesizerIdFromSuggestion_(v27, v28, v26, v29, v30, v31);
  v37 = objc_msgSend_getSynthesizerFromSynthesizerId_(self, v33, v32, v34, v35, v36);
  if (v37)
  {
    left = self->preprocessors.__tree_.__end_node_.__left_;
    if (!left)
    {
      goto LABEL_9;
    }

    p_end_node = &self->preprocessors.__tree_.__end_node_;
    v40 = self->preprocessors.__tree_.__end_node_.__left_;
    do
    {
      if (SLODWORD(v40[4].__left_) >= v32)
      {
        p_end_node = v40;
      }

      v40 = v40[SLODWORD(v40[4].__left_) < v32].__left_;
    }

    while (v40);
    if (p_end_node != &self->preprocessors.__tree_.__end_node_ && v32 >= SLODWORD(p_end_node[4].__left_))
    {
      v43 = self->postprocessors.__tree_.__end_node_.__left_;
      if (v43)
      {
        v44 = &self->postprocessors.__tree_.__end_node_;
        do
        {
          if (SLODWORD(v43[4].__left_) >= v32)
          {
            v44 = v43;
          }

          v43 = v43[SLODWORD(v43[4].__left_) < v32].__left_;
        }

        while (v43);
        if (v44 != &self->postprocessors.__tree_.__end_node_ && v32 >= SLODWORD(v44[4].__left_))
        {
          while (1)
          {
            v46 = left;
            v47 = *(left + 8);
            if (v32 < v47)
            {
              left = *v46;
              if (!*v46)
              {
                goto LABEL_38;
              }
            }

            else
            {
              if (v47 >= v32)
              {
                v48 = v46[5];
                v50 = v48[4];
                v49 = v48[5];
                v53[0] = v50;
                v53[1] = v49;
                if (v49)
                {
                  atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
                }

                sub_183796FC0(buf, v53);
              }

              left = v46[1];
              if (!left)
              {
LABEL_38:
                operator new();
              }
            }
          }
        }
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v41 = qword_1EA84DC98;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v32;
        _os_log_impl(&dword_18366B000, v41, OS_LOG_TYPE_ERROR, "Postprocessor for synthesizer with ID %d not available", buf, 8u);
      }
    }

    else
    {
LABEL_9:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v41 = qword_1EA84DC98;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v32;
        _os_log_impl(&dword_18366B000, v41, OS_LOG_TYPE_ERROR, "Preprocessor for synthesizer with ID %d not available", buf, 8u);
      }
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DC98;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_ERROR, "Synthesizer with synthesisSuggestion %d not available", buf, 8u);
    }
  }

  return 0;
}

- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_supportedCharacterIndexesForString_options_(self->_diffusionSynthesizerLatn, v8, v6, v7, v9, v10);
  v17 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15, v16);

  v21 = objc_msgSend_supportedCharacterIndexesForString_options_(self->_fastPathSynthesizer, v18, v6, v7, v19, v20);
  objc_msgSend_addIndexes_(v17, v22, v21, v23, v24, v25);

  v29 = objc_msgSend_supportedCharacterIndexesForString_options_(self->_diffusionSynthesizerZhJa, v26, v6, v7, v27, v28);
  objc_msgSend_addIndexes_(v17, v30, v29, v31, v32, v33);

  v37 = objc_msgSend_supportedCharacterIndexesForString_options_(self->_diffusionSynthesizerKo, v34, v6, v7, v35, v36);
  objc_msgSend_addIndexes_(v17, v38, v37, v39, v40, v41);

  return v17;
}

- (id)availableDiffusionSynthesizers
{
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  if (objc_msgSend_isLoaded(self->_diffusionSynthesizerLatn, v8, v9, v10, v11, v12))
  {
    objc_msgSend_addObject_(v7, v13, self->_diffusionSynthesizerLatn, v15, v16, v17);
  }

  if (objc_msgSend_isLoaded(self->_diffusionSynthesizerZhJa, v13, v14, v15, v16, v17))
  {
    objc_msgSend_addObject_(v7, v18, self->_diffusionSynthesizerZhJa, v20, v21, v22);
  }

  if (objc_msgSend_isLoaded(self->_diffusionSynthesizerKo, v18, v19, v20, v21, v22))
  {
    objc_msgSend_addObject_(v7, v23, self->_diffusionSynthesizerKo, v24, v25, v26);
  }

  return v7;
}

- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16 = objc_msgSend_objectForKeyedSubscript_(v10, v12, CHTextSynthesisOptionFastPath[0], v13, v14, v15);
  v22 = objc_msgSend_BOOLValue(v16, v17, v18, v19, v20, v21);

  v28 = objc_msgSend_availableDiffusionSynthesizers(self, v23, v24, v25, v26, v27);
  v34 = (objc_msgSend_count(v28, v29, v30, v31, v32, v33) != 0) | v22;

  if (v34)
  {
    v39 = objc_msgSend_objectForKeyedSubscript_(v10, v35, CHTextSynthesisOptionSynthesisSuggestion[0], v36, v37, v38);
    v45 = objc_msgSend_intValue(v39, v40, v41, v42, v43, v44);

    if (v22)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    v47 = objc_opt_class();
    v52 = objc_msgSend_synthesizerIdFromSuggestion_(v47, v48, v46, v49, v50, v51);
    v57 = objc_msgSend_getSynthesizerFromSynthesizerId_(self, v53, v52, v54, v55, v56);
    if (v57)
    {
      left = self->preprocessors.__tree_.__end_node_.__left_;
      if (!left)
      {
        goto LABEL_13;
      }

      p_end_node = &self->preprocessors.__tree_.__end_node_;
      v60 = self->preprocessors.__tree_.__end_node_.__left_;
      do
      {
        if (SLODWORD(v60[4].__left_) >= v52)
        {
          p_end_node = v60;
        }

        v60 = v60[SLODWORD(v60[4].__left_) < v52].__left_;
      }

      while (v60);
      if (p_end_node != &self->preprocessors.__tree_.__end_node_ && v52 >= SLODWORD(p_end_node[4].__left_))
      {
        v64 = self->postprocessors.__tree_.__end_node_.__left_;
        if (v64)
        {
          v65 = &self->postprocessors.__tree_.__end_node_;
          do
          {
            if (SLODWORD(v64[4].__left_) >= v52)
            {
              v65 = v64;
            }

            v64 = v64[SLODWORD(v64[4].__left_) < v52].__left_;
          }

          while (v64);
          if (v65 != &self->postprocessors.__tree_.__end_node_ && v52 >= SLODWORD(v65[4].__left_))
          {
            while (1)
            {
              v67 = left;
              v68 = *(left + 8);
              if (v52 < v68)
              {
                left = *v67;
                if (!*v67)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                if (v68 >= v52)
                {
                  v69 = v67[5];
                  v71 = v69[4];
                  v70 = v69[5];
                  v72[0] = v71;
                  v72[1] = v70;
                  if (v70)
                  {
                    atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_183796FC0(&v73, v72);
                }

                left = v67[1];
                if (!left)
                {
LABEL_50:
                  operator new();
                }
              }
            }
          }
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v61 = qword_1EA84DC98;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 67109120;
        *&buf[4] = v52;
        v62 = "Postprocessor for synthesizer with ID %d not available";
      }

      else
      {
LABEL_13:
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v61 = qword_1EA84DC98;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 67109120;
        *&buf[4] = v52;
        v62 = "Preprocessor for synthesizer with ID %d not available";
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v61 = qword_1EA84DC98;
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 67109120;
      *&buf[4] = v52;
      v62 = "Synthesizer with ID %d not available";
    }

    _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_ERROR, v62, buf, 8u);
LABEL_41:

    goto LABEL_42;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v63 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_ERROR, "CHTextSynthesizer isn't expected to get personalized synthesis requests if the diffusion model is not loaded.", buf, 2u);
  }

  if (qword_1EA84DC48 == -1)
  {
    v57 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_42;
    }

    goto LABEL_23;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v57 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
  {
LABEL_23:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v57, OS_LOG_TYPE_FAULT, "CHTextSynthesizer isn't expected to get personalized synthesis requests if the diffusion model is not loaded.", buf, 2u);
  }

LABEL_42:

  return 0;
}

- (int64_t)canPredictStyleForTranscription:(id)a3
{
  v4 = a3;
  canPredictStyleForTranscription = objc_msgSend_canPredictStyleForTranscription_(self->_diffusionSynthesizerLatn, v5, v4, v6, v7, v8);
  if (canPredictStyleForTranscription || (canPredictStyleForTranscription = objc_msgSend_canPredictStyleForTranscription_(self->_diffusionSynthesizerZhJa, v9, v4, v10, v11, v12)) != 0)
  {

    return canPredictStyleForTranscription;
  }

  else
  {
    v19 = objc_msgSend_canPredictStyleForTranscription_(self->_diffusionSynthesizerKo, v15, v4, v16, v17, v18);

    return v19;
  }
}

- (id)stylePredictionResultForTranscriptions:(id)a3 drawings:(id)a4 shouldCancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_componentsJoinedByString_(v8, v11, &stru_1EF1C0318, v12, v13, v14);
  p_diffusionSynthesizerLatn = &self->_diffusionSynthesizerLatn;
  if (objc_msgSend_canPredictStyleForTranscription_(self->_diffusionSynthesizerLatn, v17, v15, v18, v19, v20) || (p_diffusionSynthesizerLatn = &self->_diffusionSynthesizerZhJa, objc_msgSend_canPredictStyleForTranscription_(self->_diffusionSynthesizerZhJa, v21, v15, v22, v23, v24)) || (p_diffusionSynthesizerLatn = &self->_diffusionSynthesizerKo, objc_msgSend_canPredictStyleForTranscription_(self->_diffusionSynthesizerKo, v21, v15, v25, v26, v24)))
  {
    v27 = objc_msgSend_stylePredictionResultForTranscriptions_drawings_shouldCancel_(*p_diffusionSynthesizerLatn, v21, v8, v9, v10, v24);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC98;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_ERROR, "Synthesizer: Could not predict the style for a sample.", v30, 2u);
    }

    v27 = 0;
  }

  return v27;
}

+ (int)synthesizerIdFromSuggestion:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1839D97C4[a3];
  }
}

+ (int64_t)suggestionFromSynthesizerID:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1839D97D8[a3];
  }
}

+ (id)chunksForFeatures:(const void *)a3 metadata:(CHDiffusionPipelinePreprocessingExecutionMetadata *)a4
{
  v72 = *MEMORY[0x1E69E9840];
  sub_1837D3C60(a4, a3, a3, a4, v4, v5, __p);
  sub_1837D4C4C(__p, a4, v7, v8, v9, v10, buf);
  v11 = __p[0];
  if (__p[0])
  {
    v12 = __p[1];
    v13 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {

        v12 -= 5;
      }

      while (v12 != v11);
      v13 = __p[0];
    }

    __p[1] = v11;
    operator delete(v13);
  }

  *__p = *buf;
  v67 = *&buf[16];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = sub_1837A4260(9633, v15, v16, v17, v18, v19);
  if (__p[1] != __p[0])
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = objc_opt_class();
      v27 = objc_msgSend_suggestionFromSynthesizerID_(v22, v23, *(__p[0] + v20), v24, v25, v26);
      v28 = *(__p[0] + v20);
      if (!v28)
      {
        objc_storeStrong((__p[0] + v20 + 8), obj);
      }

      v29 = [CHTextSynthesizerDataChunk alloc];
      isNotDef_synthesisSuggestion = objc_msgSend_initWithChunkValueForSynthesis_originalValue_range_isNotDef_synthesisSuggestion_(v29, v30, *(__p[0] + v20 + 8), *(__p[0] + v20 + 32), *(__p[0] + v20 + 16), *(__p[0] + v20 + 24), v28 == 0, v27);
      objc_msgSend_addObject_(v14, v32, isNotDef_synthesisSuggestion, v33, v34, v35);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v36 = qword_1EA84DC98;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v42 = objc_msgSend_chunkValueForSynthesis(isNotDef_synthesisSuggestion, v37, v38, v39, v40, v41);
        v48 = objc_msgSend_chunkValueOriginal(isNotDef_synthesisSuggestion, v43, v44, v45, v46, v47);
        v74.location = objc_msgSend_rangeInOriginalString(isNotDef_synthesisSuggestion, v49, v50, v51, v52, v53);
        v54 = NSStringFromRange(v74);
        v60 = objc_msgSend_synthesisSuggestion(isNotDef_synthesisSuggestion, v55, v56, v57, v58, v59);
        *buf = 138740739;
        *&buf[4] = v42;
        *&buf[12] = 2117;
        *&buf[14] = v48;
        *&buf[22] = 2112;
        v69 = v54;
        v70 = 1024;
        v71 = v60;
        _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_DEBUG, "CHTextSynthesizer chunk synthesize:%{sensitive}@ original:%{sensitive}@ range:%@ suggestion:%d from daemon", buf, 0x26u);
      }

      ++v21;
      v20 += 40;
    }

    while (v21 < 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 3));
  }

  v61 = __p[0];
  if (__p[0])
  {
    v62 = __p[1];
    v63 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {

        v62 -= 5;
      }

      while (v62 != v61);
      v63 = __p[0];
    }

    __p[1] = v61;
    operator delete(v63);
  }

  return v14;
}

- (id)chunkForSynthesisString:(id)a3 allowedSynthesizers:(id)a4
{
  v5 = objc_msgSend_chunkForSynthesisString_allowedSynthesizers_mode_(self, a2, a3, a4, &unk_1EF1ED9D8, v4);

  return v5;
}

- (id)chunkForSynthesisString:(id)a3 allowedSynthesizers:(id)a4 mode:(id)a5
{
  v182 = *MEMORY[0x1E69E9840];
  v150 = a3;
  v152 = a3;
  v7 = a4;
  v151 = a5;
  __p = 0u;
  v173 = 0u;
  v174 = 1065353216;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v168, v181, 16, v9);
  if (v10)
  {
    v11 = *v169;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v169 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v168 + 1) + 8 * i);
        v14 = objc_opt_class();
        v20 = objc_msgSend_integerValue(v13, v15, v16, v17, v18, v19, v150);
        v25 = objc_msgSend_synthesizerIdFromSuggestion_(v14, v21, v20, v22, v23, v24);
        if (!*(&__p + 1))
        {
          goto LABEL_26;
        }

        v26 = vcnt_s8(*(&__p + 8));
        v26.i16[0] = vaddlv_u8(v26);
        if (v26.u32[0] > 1uLL)
        {
          v27 = v25;
          if (*(&__p + 1) <= v25)
          {
            v27 = v25 % DWORD2(__p);
          }
        }

        else
        {
          v27 = (DWORD2(__p) - 1) & v25;
        }

        v28 = *(__p + 8 * v27);
        if (!v28 || (v29 = *v28) == 0)
        {
LABEL_26:
          operator new();
        }

        if (v26.u32[0] < 2uLL)
        {
          while (1)
          {
            v31 = v29[1];
            if (v31 == v25)
            {
              if (*(v29 + 4) == v25)
              {
                goto LABEL_27;
              }
            }

            else if ((v31 & (*(&__p + 1) - 1)) != v27)
            {
              goto LABEL_26;
            }

            v29 = *v29;
            if (!v29)
            {
              goto LABEL_26;
            }
          }
        }

        while (1)
        {
          v30 = v29[1];
          if (v30 == v25)
          {
            break;
          }

          if (v30 >= *(&__p + 1))
          {
            v30 %= *(&__p + 1);
          }

          if (v30 != v27)
          {
            goto LABEL_26;
          }

LABEL_16:
          v29 = *v29;
          if (!v29)
          {
            goto LABEL_26;
          }
        }

        if (*(v29 + 4) != v25)
        {
          goto LABEL_16;
        }

LABEL_27:
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v168, v181, 16, v33);
    }

    while (v10);
  }

  v165 = 0;
  v166 = 0;
  v167 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  begin_node = self->preprocessors.__tree_.__begin_node_;
  if (begin_node == &self->preprocessors.__tree_.__end_node_)
  {
    goto LABEL_137;
  }

  while (2)
  {
    if (!*(&__p + 1))
    {
      goto LABEL_128;
    }

    left_low = LODWORD(begin_node[4].__left_);
    v36 = vcnt_s8(*(&__p + 8));
    v36.i16[0] = vaddlv_u8(v36);
    if (v36.u32[0] > 1uLL)
    {
      v37 = LODWORD(begin_node[4].__left_);
      if (*(&__p + 1) <= left_low)
      {
        v37 = left_low % DWORD2(__p);
      }
    }

    else
    {
      v37 = (DWORD2(__p) - 1) & left_low;
    }

    v38 = *(__p + 8 * v37);
    if (!v38)
    {
      goto LABEL_128;
    }

    v39 = *v38;
    if (!v39)
    {
      goto LABEL_128;
    }

    if (v36.u32[0] < 2uLL)
    {
      while (1)
      {
        v41 = v39[1];
        if (v41 == left_low)
        {
          if (*(v39 + 4) == left_low)
          {
            goto LABEL_53;
          }
        }

        else if ((v41 & (*(&__p + 1) - 1)) != v37)
        {
          goto LABEL_128;
        }

        v39 = *v39;
        if (!v39)
        {
          goto LABEL_128;
        }
      }
    }

    while (1)
    {
      v40 = v39[1];
      if (v40 == left_low)
      {
        break;
      }

      if (v40 >= *(&__p + 1))
      {
        v40 %= *(&__p + 1);
      }

      if (v40 != v37)
      {
        goto LABEL_128;
      }

LABEL_42:
      v39 = *v39;
      if (!v39)
      {
        goto LABEL_128;
      }
    }

    if (*(v39 + 4) != left_low)
    {
      goto LABEL_42;
    }

LABEL_53:
    left = begin_node[5].__left_;
    v43 = *left;
    v44 = left[1];
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      objc_storeStrong((v43 + 16), v150);
      if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
      }
    }

    else
    {
      objc_storeStrong((v43 + 16), v150);
    }

    v45 = begin_node[5].__left_;
    v46 = *v45;
    v47 = v45[1];
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      *(v46 + 32) = 0;
      if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
      }
    }

    else
    {
      *(v46 + 32) = 0;
    }

    v48 = begin_node[5].__left_;
    v49 = objc_opt_class();
    v55 = objc_msgSend_integerValue(v151, v50, v51, v52, v53, v54);
    v48[19] = objc_msgSend_pipelineModeFromSynthesizerMode_(v49, v56, v55, v57, v58, v59);
    v60 = begin_node[5].__left_;
    if (*(v60 + 19) == 2)
    {
      v61 = *v60;
      v62 = v60[1];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        *(v61 + 32) = 1;
        if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v62->__on_zero_shared)(v62);
          std::__shared_weak_count::__release_weak(v62);
        }
      }

      else
      {
        *(v61 + 32) = 1;
      }
    }

    (**begin_node[7].__left_)(&v159);
    sub_1838B5A6C(left_low, &v159, begin_node[5].__left_, v63, v64, v65, &v156);
    v66 = v166;
    if (v166 < v167)
    {
      *v166 = 0;
      *(v66 + 8) = 0;
      *(v66 + 16) = 0;
      sub_1838AB360(v66, v156, v157, 0x6DB6DB6DB6DB6DB7 * ((v157 - v156) >> 3));
      *(v66 + 24) = v158;
      v67 = (v66 + 32);
      goto LABEL_92;
    }

    v68 = (v166 - v165) >> 5;
    if ((v68 + 1) >> 59)
    {
      sub_18368964C();
    }

    v69 = (v167 - v165) >> 4;
    if (v69 <= v68 + 1)
    {
      v69 = v68 + 1;
    }

    if (v167 - v165 >= 0x7FFFFFFFFFFFFFE0)
    {
      v70 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v70 = v69;
    }

    v179 = &v165;
    if (v70)
    {
      if (!(v70 >> 59))
      {
        operator new();
      }

LABEL_172:
      sub_183688F00();
    }

    v71 = 32 * v68;
    *buf = 0;
    v176 = v71;
    v177 = v71;
    v178 = 0;
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;
    *v71 = 0;
    sub_1838AB360(v71, v156, v157, 0x6DB6DB6DB6DB6DB7 * ((v157 - v156) >> 3));
    *(v71 + 24) = v158;
    v72 = v177;
    v73 = v165;
    v74 = v166;
    v75 = v176 + v165 - v166;
    if (v165 != v166)
    {
      v76 = v165;
      v77 = v176 + v165 - v166;
      do
      {
        *v77 = 0;
        *(v77 + 1) = 0;
        *(v77 + 2) = 0;
        *v77 = *v76;
        *(v77 + 2) = *(v76 + 2);
        *v76 = 0;
        *(v76 + 1) = 0;
        *(v76 + 2) = 0;
        *(v77 + 6) = *(v76 + 6);
        v76 += 32;
        v77 += 32;
      }

      while (v76 != v74);
      do
      {
        v78 = *v73;
        if (*v73)
        {
          v79 = *(v73 + 1);
          v80 = *v73;
          if (v79 != v78)
          {
            do
            {
              v81 = *(v79 - 4);
              if (v81)
              {
                *(v79 - 3) = v81;
                operator delete(v81);
              }

              v79 -= 56;
            }

            while (v79 != v78);
            v80 = *v73;
          }

          *(v73 + 1) = v78;
          operator delete(v80);
        }

        v73 += 32;
      }

      while (v73 != v74);
      v73 = v165;
    }

    v67 = (v72 + 4);
    v165 = v75;
    v166 = v67;
    v167 = v178;
    if (v73)
    {
      operator delete(v73);
    }

LABEL_92:
    v166 = v67;
    v82 = v163;
    if (v163 >= v164)
    {
      v84 = (v163 - v162) >> 5;
      if ((v84 + 1) >> 59)
      {
        sub_18368964C();
      }

      v85 = (v164 - v162) >> 4;
      if (v85 <= v84 + 1)
      {
        v85 = v84 + 1;
      }

      if (v164 - v162 >= 0x7FFFFFFFFFFFFFE0)
      {
        v86 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v86 = v85;
      }

      v179 = &v162;
      if (v86)
      {
        if (!(v86 >> 59))
        {
          operator new();
        }

        goto LABEL_172;
      }

      v87 = (32 * v84);
      *buf = 0;
      v176 = v87;
      v177 = v87;
      v178 = 0;
      v87[1] = 0;
      v87[2] = 0;
      *v87 = 0;
      sub_1837DABE0(v87, v159, v160, 0xCCCCCCCCCCCCCCCDLL * ((v160 - v159) >> 3));
      v87[3] = v161;
      v88 = v177;
      v89 = v162;
      v90 = v163;
      v91 = v176 + v162 - v163;
      if (v162 != v163)
      {
        v92 = v162;
        v93 = (v176 + v162 - v163);
        do
        {
          *v93 = 0;
          v93[1] = 0;
          v93[2] = 0;
          *v93 = *v92;
          v93[2] = v92[2];
          *v92 = 0;
          v92[1] = 0;
          v92[2] = 0;
          v93[3] = v92[3];
          v92 += 4;
          v93 += 4;
        }

        while (v92 != v90);
        do
        {
          v94 = *v89;
          if (*v89)
          {
            v95 = v89[1];
            v96 = *v89;
            if (v95 != v94)
            {
              do
              {

                v97 = *(v95 - 5);
                v95 -= 5;
              }

              while (v95 != v94);
              v96 = *v89;
            }

            v89[1] = v94;
            operator delete(v96);
          }

          v89 += 4;
        }

        while (v89 != v90);
        v89 = v162;
      }

      v83 = (v88 + 4);
      v162 = v91;
      v163 = v83;
      v164 = v178;
      if (v89)
      {
        operator delete(v89);
      }
    }

    else
    {
      *v163 = 0;
      v82[1] = 0;
      v82[2] = 0;
      sub_1837DABE0(v82, v159, v160, 0xCCCCCCCCCCCCCCCDLL * ((v160 - v159) >> 3));
      v82[3] = v161;
      v83 = v82 + 4;
    }

    v163 = v83;
    v98 = v156;
    if (v156)
    {
      v99 = v157;
      v100 = v156;
      if (v157 != v156)
      {
        do
        {
          v101 = *(v99 - 4);
          if (v101)
          {
            *(v99 - 3) = v101;
            operator delete(v101);
          }

          v99 -= 56;
        }

        while (v99 != v98);
        v100 = v156;
      }

      v157 = v98;
      operator delete(v100);
    }

    v102 = v159;
    if (v159)
    {
      v103 = v160;
      v104 = v159;
      if (v160 != v159)
      {
        do
        {

          v105 = *(v103 - 5);
          v103 -= 5;
        }

        while (v103 != v102);
        v104 = v159;
      }

      v160 = v102;
      operator delete(v104);
    }

LABEL_128:
    isa = begin_node[1].__left_;
    if (isa)
    {
      do
      {
        v107 = isa;
        isa = isa->super.isa;
      }

      while (isa);
    }

    else
    {
      do
      {
        v107 = begin_node[2].__left_;
        v108 = v107->super.isa == begin_node;
        begin_node = v107;
      }

      while (!v108);
    }

    begin_node = v107;
    if (v107 != &self->preprocessors.__tree_.__end_node_)
    {
      continue;
    }

    break;
  }

  if (v163 != v162)
  {
    memset(v155, 0, sizeof(v155));
    v156 = v155;
    LOBYTE(v157) = 0;
    if (v163 - v162 >= 0)
    {
      operator new();
    }

    sub_18368964C();
  }

LABEL_137:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v109 = qword_1EA84DC98;
  if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v109, OS_LOG_TYPE_ERROR, "CHTextSynthesizer: no available synthesizers for chunkStringForSynthesis", buf, 2u);
  }

  v110 = [CHTextSynthesizerDataChunk alloc];
  v116 = objc_msgSend_length(v152, v111, v112, v113, v114, v115);
  isNotDef_synthesisSuggestion = objc_msgSend_initWithChunkValueForSynthesis_originalValue_range_isNotDef_synthesisSuggestion_(v110, v117, &stru_1EF1C0318, v152, 0, v116, 1, 1);
  v119 = [CHTextSynthesizerChunkedData alloc];
  v180 = isNotDef_synthesisSuggestion;
  v123 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v120, &v180, 1, v121, v122);
  v127 = objc_msgSend_initWithDataChunks_originalString_(v119, v124, v123, v152, v125, v126);

  v128 = v162;
  if (v162)
  {
    v129 = v163;
    v130 = v162;
    if (v163 != v162)
    {
      v131 = v163;
      do
      {
        v133 = *(v131 - 4);
        v131 -= 4;
        v132 = v133;
        if (v133)
        {
          v134 = *(v129 - 3);
          v135 = v132;
          if (v134 != v132)
          {
            do
            {

              v136 = *(v134 - 5);
              v134 -= 5;
            }

            while (v134 != v132);
            v135 = *v131;
          }

          *(v129 - 3) = v132;
          operator delete(v135);
        }

        v129 = v131;
      }

      while (v131 != v128);
      v130 = v162;
    }

    v163 = v128;
    operator delete(v130);
  }

  v137 = v165;
  if (v165)
  {
    v138 = v166;
    v139 = v165;
    if (v166 != v165)
    {
      v140 = v166;
      do
      {
        v142 = *(v140 - 4);
        v140 -= 4;
        v141 = v142;
        if (v142)
        {
          v143 = *(v138 - 3);
          v144 = v141;
          if (v143 != v141)
          {
            do
            {
              v145 = *(v143 - 4);
              if (v145)
              {
                *(v143 - 3) = v145;
                operator delete(v145);
              }

              v143 -= 56;
            }

            while (v143 != v141);
            v144 = *v140;
          }

          *(v138 - 3) = v141;
          operator delete(v144);
        }

        v138 = v140;
      }

      while (v140 != v137);
      v139 = v165;
    }

    v166 = v137;
    operator delete(v139);
  }

  v146 = v173;
  if (v173)
  {
    do
    {
      v147 = *v146;
      operator delete(v146);
      v146 = v147;
    }

    while (v147);
  }

  v148 = __p;
  *&__p = 0;
  if (v148)
  {
    operator delete(v148);
  }

  return v127;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 6) = self + 56;
  *(self + 11) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 9) = self + 80;
  return self;
}

@end