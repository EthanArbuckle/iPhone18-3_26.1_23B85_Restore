@interface CHSynthesisStyleSample
+ (BOOL)_embeddingHasNaN:(const void *)a3;
+ (BOOL)isZHJARadical:(id)a3;
+ (float)cosineSimilarityBetweenFirstVector:(const void *)a3 secondVector:(const void *)a4;
+ (float)distanceBetweenFirstVector:(const void *)a3 secondVector:(const void *)a4;
+ (id)characterCoverageWithString:(id)a3 script:(int64_t)a4;
+ (id)floatVectorToArray:(void *)a3;
+ (id)normalizeDrawing:(id)a3 transcription:(id)a4 script:(int64_t)a5;
+ (id)normalizeStyleSample:(id)a3;
+ (id)sampleWithTranscription:(id)a3 drawing:(id)a4 script:(int64_t)a5 strokeIdentifiers:(id)a6;
+ (id)sampleWithTranscription:(id)a3 drawing:(id)a4 script:(int64_t)a5 strokeIdentifiers:(id)a6 embeddingVector:(const void *)a7;
+ (id)zhjaIDSMapping;
+ (int64_t)shiftTimestep:(int64_t)a3 offset:(int64_t)a4;
+ (int64_t)synthesisLengthForString:(id)a3 script:(int64_t)a4;
+ (vector<float,)floatArrayToVector:(id)a2;
+ (vector<float,)floatMultiArrayToVector:(id)a2;
+ (void)normalizeVector:(void *)a3;
- (BOOL)isEqual:(id)a3;
- (CHSynthesisStyleSample)initWithCoder:(id)a3;
- (CHSynthesisStyleSample)initWithTranscription:(id)a3 drawing:(id)a4 script:(int64_t)a5 strokeIdentifiers:(id)a6 embeddingVector:(const void *)a7;
- (float)cosineSimilarityToSample:(id)a3;
- (float)distanceToSample:(id)a3;
- (id).cxx_construct;
- (id)characterCoverage;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)transcriptionLengthForSynthesis;
- (vector<float,)embeddingVector;
- (void)encodeWithCoder:(id)a3;
- (void)incrementSamplingCount;
- (void)setEmbeddingVector:()vector<float;
- (void)shiftTimestepsByOffset:(int64_t)a3;
- (void)updateStyleEmbedding:(id)a3 script:(int64_t)a4;
@end

@implementation CHSynthesisStyleSample

+ (vector<float,)floatMultiArrayToVector:(id)a2
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (objc_msgSend_dataType(v5, v6, v7, v8, v9, v10) != 65568)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_dataType(v5, v17, v18, v19, v20, v21);
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "Unexpected data type from mlMultiArray: %ld", &buf, 0xCu);
    }
  }

  if (objc_msgSend_dataType(v5, v11, v12, v13, v14, v15) != 65568)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v26 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      v32 = objc_msgSend_dataType(v5, v27, v28, v29, v30, v31);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v32;
      _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_FAULT, "Unexpected data type from mlMultiArray: %ld", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x4812000000;
  v40 = sub_18376ADFC;
  v41 = sub_18376AE20;
  v42 = &unk_183A5AC72;
  v44 = 0;
  v45 = 0;
  __p = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_18376AE38;
  v37[3] = &unk_1E6DDD880;
  v37[4] = &buf;
  objc_msgSend_getBytesWithHandler_(v5, v22, v37, v23, v24, v25);
  v33 = *(&buf + 1);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v35 = *(v33 + 48);
  v34 = *(v33 + 56);
  if (v34 != v35)
  {
    if (((v34 - v35) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  _Block_object_dispose(&buf, 8);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  return result;
}

+ (vector<float,)floatArrayToVector:(id)a2
{
  v5 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4812000000;
  v24 = sub_18376ADFC;
  v25 = sub_18376AE20;
  v26 = &unk_183A5AC72;
  v11 = objc_msgSend_count(v5, v6, v7, v8, v9, v10);
  __p = 0;
  v28 = 0;
  v29 = 0;
  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_18369761C();
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_18376B100;
  v20[3] = &unk_1E6DDD8A8;
  v20[4] = &v21;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v12, v20, v13, v14, v15);
  v16 = v22;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v18 = v16[6];
  v17 = v16[7];
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  _Block_object_dispose(&v21, 8);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return result;
}

+ (id)floatVectorToArray:(void *)a3
{
  v12 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, (*(a3 + 1) - *a3) >> 2, v3, v4, v5);
  v14 = *a3;
  v15 = *(a3 + 1);
  if (*a3 != v15)
  {
    do
    {
      LODWORD(v13) = *v14;
      v16 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v7, v8, v9, v10, v11, v13);
      objc_msgSend_addObject_(v12, v17, v16, v18, v19, v20);

      ++v14;
    }

    while (v14 != v15);
  }

  return v12;
}

+ (float)distanceBetweenFirstVector:(const void *)a3 secondVector:(const void *)a4
{
  __C = -1.0;
  vDSP_distancesq(*a3, 1, *a4, 1, &__C, (*(a3 + 1) - *a3) >> 2);
  return sqrtf(__C);
}

+ (float)cosineSimilarityBetweenFirstVector:(const void *)a3 secondVector:(const void *)a4
{
  __C = -1.0;
  vDSP_dotpr(*a3, 1, *a4, 1, &__C, (*(a3 + 1) - *a3) >> 2);
  return __C;
}

+ (void)normalizeVector:(void *)a3
{
  v7 = *a3;
  v8 = *(a3 + 1) - *a3;
  if (!v8)
  {
    return;
  }

  v18 = v6;
  v19 = v5;
  v20 = v3;
  v21 = v4;
  __C = -1.0;
  vDSP_dotpr(v7, 1, v7, 1, &__C, v8 >> 2);
  __C = sqrtf(__C);
  v10 = fabsf(__C);
  if (v10 <= 0.0000001)
  {
    if (qword_1EA84DC48 == -1)
    {
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        v10 = fabsf(__C);
        if (v10 > 0.0000001)
        {
          goto LABEL_3;
        }

        if (qword_1EA84DC48 == -1)
        {
          v13 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_16;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v13 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
LABEL_16:

            if (fabsf(__C) < 0.0000001)
            {
              goto LABEL_4;
            }

LABEL_17:
            vDSP_vsdiv(*a3, 1, &__C, *a3, 1, (*(a3 + 1) - *a3) >> 2);
            return;
          }
        }

        *v15 = 0;
        _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_FAULT, "Style Inventory Embedding: Magnitude of the vector is very close to 0", v15, 2u);
        goto LABEL_16;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "Style Inventory Embedding: Magnitude of the vector is very close to 0", buf, 2u);
    goto LABEL_12;
  }

LABEL_3:
  if (v10 >= 0.0000001)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC98;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "Style Inventory Embedding: Magnitude of the vector is very close to 0, will not normalize the vector", v14, 2u);
  }
}

+ (BOOL)_embeddingHasNaN:(const void *)a3
{
  v3 = *(a3 + 1);
  if (*a3 == v3)
  {
    return 0;
  }

  v4 = *a3 + 4;
  do
  {
    result = 0;
    v6 = v4 == v3;
    v4 += 4;
  }

  while (!v6);
  return result;
}

+ (id)normalizeDrawing:(id)a3 transcription:(id)a4 script:(int64_t)a5
{
  v92[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v14 = objc_msgSend_strokeCount(v7, v9, v10, v11, v12, v13);
  if (!v8 || !v14)
  {
    if (qword_1EA84DC48 == -1)
    {
      v35 = qword_1EA84DC98;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        v36 = v7;
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v35 = qword_1EA84DC98;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_ERROR, "Style Sampling: Cannot transform style sample with nil or empty drawing or nil transcription", buf, 2u);
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v15 = qword_1EA84DC98;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = qword_1EA84DC98;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_DEBUG, "Style Sampling: Normalizing the style sample by applying rotation and resize transformations", buf, 2u);
  }

LABEL_6:

  v21 = objc_msgSend_strokeCount(v7, v16, v17, v18, v19, v20);
  v83 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v22, 0, v21, v23, v24);
  v92[0] = v83;
  v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v92, 1, v26, v27);
  v91 = v8;
  v85 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, &v91, 1, v29, v30);
  if (a5 >= 4)
  {
    objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v31, 0, v32, v33, v34);
  }

  else
  {
    objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v31, off_1E6DDDCD0[a5], v32, v33, v34);
  }
  v37 = ;
  v38 = objc_opt_class();
  v40 = objc_msgSend_textLineForDrawing_transcriptions_strokeIndexes_fullText_principalPoints_locale_strokeClassification_shouldCancel_(v38, v39, v7, v85, v84, v8, 0, v37, 1, &unk_1EF1BC9D0);
  v44 = v40;
  if (v40)
  {
    v86 = v40;
    v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v41, &v86, 1, v42, v43);
    v46 = objc_alloc_init(CHTransformationParameters);
    if (objc_msgSend_length(v8, v47, v48, v49, v50, v51) >= 3)
    {
      objc_msgSend_setOrientationBehavior_(v46, v52, 2, v53, v54, v55);
    }

    objc_msgSend_setResizeBehavior_(v46, v52, 3, v53, v54, v55);
    objc_msgSend_normalizationTextHeight(CHSynthesisStyleSample, v56, v57, v58, v59, v60);
    objc_msgSend_setTextSizeTarget_(v46, v62, v61, v63, v64, v65);
    objc_msgSend_setInsertionPoint_(v46, v66, v67, v68, v69, v70, 100.0, 100.0);
    v71 = objc_opt_class();
    objc_msgSend_transformTextLines_withParameters_(v71, v72, v45, v46, v73, v74);
    v36 = objc_msgSend_drawingForTransformedTextLines_(CHTransformedTextLine, v75, v45, v76, v77, v78);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v79 = v83;
    v80 = qword_1EA84DC98;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v80, OS_LOG_TYPE_DEBUG, "Style Sampling: Return the new style sample with normalized drawing", buf, 2u);
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v79 = v83;
    v81 = qword_1EA84DC98;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v88 = v7;
      v89 = 2112;
      v90 = v8;
      _os_log_impl(&dword_18366B000, v81, OS_LOG_TYPE_DEBUG, "Transformed text line is nil for drawing %@ and transcription %@", buf, 0x16u);
    }

    v36 = v7;
  }

LABEL_27:

  return v36;
}

+ (id)normalizeStyleSample:(id)a3
{
  v3 = a3;
  v9 = objc_msgSend_drawing(v3, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_transcription(v3, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_script(v3, v16, v17, v18, v19, v20);
  v24 = objc_msgSend_normalizeDrawing_transcription_script_(CHSynthesisStyleSample, v22, v9, v15, v21, v23);

  v30 = objc_msgSend_transcription(v3, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_script(v3, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_strokeIdentifiers(v3, v37, v38, v39, v40, v41);
  v44 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v43, v30, v24, v36, v42);

  return v44;
}

- (void)updateStyleEmbedding:(id)a3 script:(int64_t)a4
{
  v11 = a3;
  if (v11)
  {
    self->_script = a4;
    objc_msgSend_floatMultiArrayToVector_(CHSynthesisStyleSample, v6, v11, v8, v9, v10);
    begin = self->_embeddingVector.__begin_;
    if (begin)
    {
      self->_embeddingVector.__end_ = begin;
      operator delete(begin);
      self->_embeddingVector.__begin_ = 0;
      self->_embeddingVector.__end_ = 0;
      self->_embeddingVector.__cap_ = 0;
    }

    *&self->_embeddingVector.__begin_ = v17;
    self->_embeddingVector.__cap_ = v18;
    objc_msgSend_normalizeVector_(CHSynthesisStyleSample, v12, &self->_embeddingVector, v13, v14, v15);
  }

  else
  {
    self->_script = 0;
    objc_msgSend_clearEmbeddingVector(self, v6, v7, v8, v9, v10);
  }
}

- (float)distanceToSample:(id)a3
{
  v4 = a3;
  objc_msgSend_embeddingVector(self, v5, v6, v7, v8, v9);
  v15 = *buf;
  if (v65 != *buf)
  {
    if (!v4)
    {
      v22 = 1;
      goto LABEL_15;
    }

    objc_msgSend_embeddingVector(v4, v10, v11, v12, v13, v14);
    v16 = v61;
    if (v62 == v61)
    {
      v22 = 1;
      if (!v61)
      {
        goto LABEL_15;
      }
    }

    else
    {
      objc_msgSend_embeddingVector(self, v10, v11, v12, v13, v14);
      objc_msgSend_embeddingVector(v4, v17, v18, v19, v20, v21);
      v22 = v60 - __p != v58 - v57;
      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      v16 = v61;
      if (!v61)
      {
LABEL_15:
        v15 = *buf;
        if (!*buf)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v62 = v16;
    operator delete(v16);
    goto LABEL_15;
  }

  v22 = 1;
  if (*buf)
  {
LABEL_16:
    v65 = v15;
    operator delete(v15);
  }

LABEL_17:
  if (v22)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "While calculating distanceToSample, one of the embedding vectors is empty or not the same size as the other vector", buf, 2u);
    }
  }

  objc_msgSend_embeddingVector(self, v10, v11, v12, v13, v14);
  v29 = *buf;
  if (v65 != *buf)
  {
    if (!v4)
    {
      v41 = 1;
      goto LABEL_37;
    }

    objc_msgSend_embeddingVector(v4, v24, v25, v26, v27, v28);
    v35 = v61;
    if (v62 == v61)
    {
      v41 = 1;
      if (!v61)
      {
        goto LABEL_37;
      }
    }

    else
    {
      objc_msgSend_embeddingVector(self, v30, v31, v32, v33, v34);
      objc_msgSend_embeddingVector(v4, v36, v37, v38, v39, v40);
      v41 = v60 - __p != v58 - v57;
      if (v57)
      {
        operator delete(v57);
      }

      if (__p)
      {
        operator delete(__p);
      }

      v35 = v61;
      if (!v61)
      {
LABEL_37:
        v29 = *buf;
        if (!*buf)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v62 = v35;
    operator delete(v35);
    goto LABEL_37;
  }

  v41 = 1;
  if (*buf)
  {
LABEL_38:
    v65 = v29;
    operator delete(v29);
  }

LABEL_39:
  if (v41)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_FAULT, "While calculating distanceToSample, one of the embedding vectors is empty or not the same size as the other vector", buf, 2u);
    }
  }

  v43 = objc_opt_class();
  objc_msgSend_embeddingVector(self, v44, v45, v46, v47, v48);
  if (v4)
  {
    objc_msgSend_embeddingVector(v4, v49, v50, v51, v52, v53);
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  objc_msgSend_distanceBetweenFirstVector_secondVector_(v43, v49, buf, &v61, v52, v53);
  v55 = v54;
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (*buf)
  {
    v65 = *buf;
    operator delete(*buf);
  }

  return v55;
}

- (float)cosineSimilarityToSample:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_embeddingVector.__end_ == self->_embeddingVector.__begin_ || !v4)
  {
    goto LABEL_13;
  }

  objc_msgSend_embeddingVector(v4, v5, v6, v7, v8, v9);
  if (v65 == __p)
  {
    if (v65)
    {
      v65 = __p;
      operator delete(__p);
    }

LABEL_13:
    if (qword_1EA84DC48 == -1)
    {
      v25 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v25 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        if (self->_embeddingVector.__end_ == self->_embeddingVector.__begin_)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }
    }

    LOWORD(__p) = 0;
    _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "While calculating cosineSimilarityToSample, one of the embedding vectors is empty or not the same size as the other vector", &__p, 2u);
    goto LABEL_16;
  }

  begin = self->_embeddingVector.__begin_;
  end = self->_embeddingVector.__end_;
  objc_msgSend_embeddingVector(v10, v11, v12, v13, v14, v15);
  v23 = v62;
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  v24 = end - begin;
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v24 != v23 - v61)
  {
    goto LABEL_13;
  }

  if (self->_embeddingVector.__end_ == self->_embeddingVector.__begin_)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (!v10)
  {
    goto LABEL_27;
  }

  objc_msgSend_embeddingVector(v10, v18, v19, v20, v21, v22);
  if (v65 == __p)
  {
    if (v65)
    {
      v65 = __p;
      operator delete(__p);
    }

LABEL_27:
    if (qword_1EA84DC48 == -1)
    {
      v40 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v40 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_30;
      }
    }

    LOWORD(__p) = 0;
    _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "While calculating cosineSimilarityToSample, one of the embedding vectors is empty or not the same size as the other vector", &__p, 2u);
    goto LABEL_30;
  }

  v32 = self->_embeddingVector.__begin_;
  v31 = self->_embeddingVector.__end_;
  objc_msgSend_embeddingVector(v10, v26, v27, v28, v29, v30);
  v38 = v62;
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  v39 = v31 - v32;
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v39 != v38 - v61)
  {
    goto LABEL_27;
  }

LABEL_31:
  v41 = objc_msgSend_script(self, v33, v34, v35, v36, v37);
  v47 = -1.0;
  if (v41 == objc_msgSend_script(v10, v42, v43, v44, v45, v46))
  {
    v48 = objc_opt_class();
    objc_msgSend_embeddingVector(self, v49, v50, v51, v52, v53);
    if (v10)
    {
      objc_msgSend_embeddingVector(v10, v54, v55, v56, v57, v58);
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
    }

    objc_msgSend_cosineSimilarityBetweenFirstVector_secondVector_(v48, v54, &__p, &v61, v57, v58);
    v47 = v59;
    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }
  }

  return v47;
}

- (CHSynthesisStyleSample)initWithTranscription:(id)a3 drawing:(id)a4 script:(int64_t)a5 strokeIdentifiers:(id)a6 embeddingVector:(const void *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v38.receiver = self;
  v38.super_class = CHSynthesisStyleSample;
  v16 = [(CHSynthesisStyleSample *)&v38 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_transcription, a3);
    objc_storeStrong(&v17->_drawing, a4);
    v17->_script = a5;
    objc_storeStrong(&v17->_strokeIdentifiers, a6);
    v23 = objc_msgSend_now(MEMORY[0x1E695DF00], v18, v19, v20, v21, v22);
    creationDate = v17->_creationDate;
    v17->_creationDate = v23;

    if (!v17->_script)
    {
LABEL_16:
      v17->_embeddingVector.__end_ = v17->_embeddingVector.__begin_;
      goto LABEL_20;
    }

    if (objc_msgSend__embeddingHasNaN_(CHSynthesisStyleSample, v25, a7, v26, v27, v28))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v33 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *v37 = 0;
        _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "Style Inventory Embedding: vector contains NaN values", v37, 2u);
      }

      if (qword_1EA84DC48 == -1)
      {
        v34 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
LABEL_11:

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v35 = qword_1EA84DC98;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *v37 = 0;
            _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_ERROR, "Style Inventory Embedding: vector contains NaN values", v37, 2u);
          }

          goto LABEL_16;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v34 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_11;
        }
      }

      *v37 = 0;
      _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_FAULT, "Style Inventory Embedding: vector contains NaN values", v37, 2u);
      goto LABEL_11;
    }

    if (&v17->_embeddingVector != a7)
    {
      sub_18372F694(&v17->_embeddingVector, *a7, *(a7 + 1), (*(a7 + 1) - *a7) >> 2);
    }

    objc_msgSend_normalizeVector_(CHSynthesisStyleSample, v29, &v17->_embeddingVector, v30, v31, v32);
  }

LABEL_20:

  return v17;
}

+ (id)sampleWithTranscription:(id)a3 drawing:(id)a4 script:(int64_t)a5 strokeIdentifiers:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v12 = [CHSynthesisStyleSample alloc];
  v14 = objc_msgSend_initWithTranscription_drawing_script_strokeIdentifiers_embeddingVector_(v12, v13, v9, v10, a5, v11, &__p);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v14;
}

+ (id)sampleWithTranscription:(id)a3 drawing:(id)a4 script:(int64_t)a5 strokeIdentifiers:(id)a6 embeddingVector:(const void *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [CHSynthesisStyleSample alloc];
  v16 = objc_msgSend_initWithTranscription_drawing_script_strokeIdentifiers_embeddingVector_(v14, v15, v11, v12, a5, v13, a7);

  return v16;
}

- (CHSynthesisStyleSample)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"transcription", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"drawing", v12, v13);
  v19 = objc_msgSend_decodeIntegerForKey_(v4, v15, @"script", v16, v17, v18);
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v27 = objc_msgSend_setWithObjects_(v20, v23, v21, v24, v25, v26, v22, 0);
  v31 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v28, v27, @"strokeIdentifiers", v29, v30);
  v32 = objc_opt_class();
  v36 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(v4, v33, v32, @"embeddingVector", v34, v35);
  objc_msgSend_floatArrayToVector_(CHSynthesisStyleSample, v37, v36, v38, v39, v40);
  v46 = objc_msgSend_initWithTranscription_drawing_script_strokeIdentifiers_embeddingVector_(self, v41, v9, v14, v19, v31, __p);
  if (v46)
  {
    v46->_creationTimestep = objc_msgSend_decodeIntegerForKey_(v4, v42, @"creationTimestep", v43, v44, v45);
    v46->_samplingCount = objc_msgSend_decodeIntegerForKey_(v4, v47, @"samplingCount", v48, v49, v50);
    v51 = objc_opt_class();
    v55 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v52, v51, @"creationDate", v53, v54);
    creationDate = v46->_creationDate;
    v46->_creationDate = v55;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v46;
}

- (void)encodeWithCoder:(id)a3
{
  v33 = a3;
  objc_msgSend_encodeObject_forKey_(v33, v4, self->_transcription, @"transcription", v5, v6);
  objc_msgSend_encodeObject_forKey_(v33, v7, self->_drawing, @"drawing", v8, v9);
  objc_msgSend_encodeInteger_forKey_(v33, v10, self->_script, @"script", v11, v12);
  objc_msgSend_encodeObject_forKey_(v33, v13, self->_strokeIdentifiers, @"strokeIdentifiers", v14, v15);
  v20 = objc_msgSend_floatVectorToArray_(CHSynthesisStyleSample, v16, &self->_embeddingVector, v17, v18, v19);
  objc_msgSend_encodeObject_forKey_(v33, v21, v20, @"embeddingVector", v22, v23);

  objc_msgSend_encodeInteger_forKey_(v33, v24, self->_creationTimestep, @"creationTimestep", v25, v26);
  objc_msgSend_encodeInteger_forKey_(v33, v27, self->_samplingCount, @"samplingCount", v28, v29);
  objc_msgSend_encodeObject_forKey_(v33, v30, self->_creationDate, @"creationDate", v31, v32);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSynthesisStyleSample alloc];
  v10 = objc_msgSend_transcription(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_drawing(self, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_script(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_strokeIdentifiers(self, v23, v24, v25, v26, v27);
  objc_msgSend_embeddingVector(self, v29, v30, v31, v32, v33);
  v35 = objc_msgSend_initWithTranscription_drawing_script_strokeIdentifiers_embeddingVector_(v4, v34, v10, v16, v22, v28, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v35)
  {
    v41 = objc_msgSend_creationTimestep(self, v36, v37, v38, v39, v40);
    objc_msgSend_setCreationTimestep_(v35, v42, v41, v43, v44, v45);
    v51 = objc_msgSend_samplingCount(self, v46, v47, v48, v49, v50);
    objc_msgSend_setSamplingCount_(v35, v52, v51, v53, v54, v55);
    v61 = objc_msgSend_creationDate(self, v56, v57, v58, v59, v60);
    objc_msgSend_setCreationDate_(v35, v62, v61, v63, v64, v65);
  }

  return v35;
}

+ (id)zhjaIDSMapping
{
  if (qword_1EA84CE90 == -1)
  {
    v3 = qword_1EA84CE88;
  }

  else
  {
    dispatch_once(&qword_1EA84CE90, &unk_1EF1BC9F0);
    v3 = qword_1EA84CE88;
  }

  return v3;
}

+ (int64_t)synthesisLengthForString:(id)a3 script:(int64_t)a4
{
  v5 = a3;
  v11 = v5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (a4 == 3)
  {
    v12 = objc_msgSend_decomposedStringWithCanonicalMapping(v5, v6, v7, v8, v9, v10);
    v18 = objc_msgSend_length(v12, v13, v14, v15, v16, v17);
    v25[3] = v18;
  }

  else
  {
    v19 = objc_msgSend_length(v5, v6, v7, v8, v9, v10);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_18376D2A8;
    v23[3] = &unk_1E6DDDCB0;
    v23[4] = &v24;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v11, v20, 0, v19, 2, v23);
  }

  v21 = v25[3];
  _Block_object_dispose(&v24, 8);

  return v21;
}

- (int64_t)transcriptionLengthForSynthesis
{
  v7 = objc_msgSend_transcription(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_script(self, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_synthesisLengthForString_script_(CHSynthesisStyleSample, v14, v7, v13, v15, v16);

  return v17;
}

+ (BOOL)isZHJARadical:(id)a3
{
  v7 = a3;
  if (qword_1EA84CEA0 != -1)
  {
    dispatch_once(&qword_1EA84CEA0, &unk_1EF1BCA10);
  }

  v8 = objc_msgSend_containsObject_(qword_1EA84CE98, v3, v7, v4, v5, v6);

  return v8;
}

+ (id)characterCoverageWithString:(id)a3 script:(int64_t)a4
{
  v5 = a3;
  v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v6, v7, v8, v9, v10);
  if (a4 > 1)
  {
    if (a4 == 3)
    {
      v19 = objc_msgSend_decomposedStringWithCanonicalMapping(v5, v11, v12, v13, v14, v15);
      v38 = objc_msgSend_length(v19, v33, v34, v35, v36, v37);
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = sub_18376D9E0;
      v49 = &unk_1E6DDD940;
      v50 = v16;
      objc_msgSend_enumerateCodepointsInRange_usingBlock_(v19, v39, 0, v38, &v46, v40);
      v32 = v50;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_9;
      }

      v20 = objc_msgSend_set(MEMORY[0x1E695DFA8], v11, v12, v13, v14, v15);
      v26 = objc_msgSend_length(v5, v21, v22, v23, v24, v25);
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = sub_18376D8FC;
      v53[3] = &unk_1E6DDBF00;
      v19 = v20;
      v54 = v19;
      objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v5, v27, 0, v26, 2, v53);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_18376D908;
      v51[3] = &unk_1E6DDD918;
      v52 = v16;
      objc_msgSend_enumerateObjectsUsingBlock_(v19, v28, v51, v29, v30, v31);

      v32 = v54;
    }
  }

  else
  {
    v17 = objc_msgSend_length(v5, v11, v12, v13, v14, v15);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = sub_18376D8F0;
    v55[3] = &unk_1E6DDBF00;
    v56 = v16;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v5, v18, 0, v17, 2, v55);
    v19 = v56;
  }

LABEL_9:
  if (objc_msgSend_containsObject_(v16, v11, @" ", v13, v14, v15, v46, v47, v48, v49))
  {
    objc_msgSend_removeObject_(v16, v41, @" ", v42, v43, v44);
  }

  return v16;
}

- (id)characterCoverage
{
  v7 = objc_msgSend_transcription(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_script(self, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v14, v7, v13, v15, v16);

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToDate = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v11 = objc_msgSend_drawing(self, v6, v7, v8, v9, v10);
      v17 = objc_msgSend_drawing(v5, v12, v13, v14, v15, v16);
      isEqualToDrawing = objc_msgSend_isEqualToDrawing_(v11, v18, v17, v19, v20, v21);

      if (!isEqualToDrawing)
      {
        goto LABEL_29;
      }

      v28 = objc_msgSend_transcription(self, v23, v24, v25, v26, v27);
      v34 = objc_msgSend_transcription(v5, v29, v30, v31, v32, v33);
      isEqualToString = objc_msgSend_isEqualToString_(v28, v35, v34, v36, v37, v38);

      if (!isEqualToString)
      {
        goto LABEL_29;
      }

      v45 = objc_msgSend_strokeIdentifiers(self, v40, v41, v42, v43, v44);
      v51 = objc_msgSend_strokeIdentifiers(v5, v46, v47, v48, v49, v50);
      isEqualToSet = objc_msgSend_isEqualToSet_(v45, v52, v51, v53, v54, v55);

      if (!isEqualToSet)
      {
        goto LABEL_29;
      }

      objc_msgSend_embeddingVector(self, v57, v58, v59, v60, v61);
      if (v5)
      {
        objc_msgSend_embeddingVector(v5, v62, v63, v64, v65, v66);
        v67 = v110;
        v68 = v112;
        v69 = v113;
        if (v113 - v112 == v111 - v110)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v67 = 0;
        v68 = v112;
        v69 = v113;
        if (v113 == v112)
        {
LABEL_8:
          if (v68 == v69)
          {
            v73 = 1;
          }

          else
          {
            v70 = (v68 + 4);
            v71 = v67;
            do
            {
              v72 = *v71++;
              v73 = *(v70 - 1) == v72;
              v74 = *(v70 - 1) != v72 || v70 == v69;
              ++v70;
            }

            while (!v74);
          }

LABEL_21:
          if (v67)
          {
            operator delete(v67);
            v68 = v112;
          }

          if (v68)
          {
            operator delete(v68);
          }

          if (v73)
          {
            v76 = objc_msgSend_creationTimestep(self, v62, v63, v64, v65, v66);
            if (v76 == objc_msgSend_creationTimestep(v5, v77, v78, v79, v80, v81))
            {
              v87 = objc_msgSend_samplingCount(self, v82, v83, v84, v85, v86);
              if (v87 == objc_msgSend_samplingCount(v5, v88, v89, v90, v91, v92))
              {
                v98 = objc_msgSend_creationDate(self, v93, v94, v95, v96, v97);
                v104 = objc_msgSend_creationDate(v5, v99, v100, v101, v102, v103);
                isEqualToDate = objc_msgSend_isEqualToDate_(v98, v105, v104, v106, v107, v108);

LABEL_30:
                goto LABEL_31;
              }
            }
          }

LABEL_29:
          isEqualToDate = 0;
          goto LABEL_30;
        }
      }

      v73 = 0;
      goto LABEL_21;
    }

    isEqualToDate = 0;
  }

LABEL_31:

  return isEqualToDate;
}

- (void)incrementSamplingCount
{
  v8 = objc_msgSend_samplingCount(self, a2, v2, v3, v4, v5) + 1;

  objc_msgSend_setSamplingCount_(self, v7, v8, v9, v10, v11);
}

- (void)shiftTimestepsByOffset:(int64_t)a3
{
  v8 = objc_msgSend_creationTimestep(self, a2, a3, v3, v4, v5);
  v13 = objc_msgSend_shiftTimestep_offset_(CHSynthesisStyleSample, v9, v8, a3, v10, v11);

  objc_msgSend_setCreationTimestep_(self, v12, v13, v14, v15, v16);
}

+ (int64_t)shiftTimestep:(int64_t)a3 offset:(int64_t)a4
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "Offset must be zero or positive", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v7 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
LABEL_8:
    *v9 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_FAULT, "Offset must be zero or positive", v9, 2u);
  }

LABEL_9:

LABEL_10:
  if (a4 >= 0)
  {
    return a3 - a4;
  }

  else
  {
    return 0x8000000000000000;
  }
}

- (vector<float,)embeddingVector
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  cap = self[2].__cap_;
  begin = self[3].__begin_;
  if (begin != cap)
  {
    if (((begin - cap) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  return self;
}

- (void)setEmbeddingVector:()vector<float
{
  p_embeddingVector = &self->_embeddingVector;
  if (p_embeddingVector != a3)
  {
    sub_18372F694(p_embeddingVector, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end