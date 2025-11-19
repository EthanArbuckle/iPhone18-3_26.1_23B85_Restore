@interface CHDocumentLayoutAnalysisModel
+ (int64_t)maxNumStrokesForDecoderName:(id)a3;
- (BOOL)analyzeDrawing:(id)a3 outStrokeClassProbabilities:(void *)a4 outStrokeAdjacencyMatrix:(void *)a5 cancellationBlock:(id)a6;
- (CHDocumentLayoutAnalysisModel)initWithEncoderName:(id)a3 decoderName:(id)a4;
@end

@implementation CHDocumentLayoutAnalysisModel

- (CHDocumentLayoutAnalysisModel)initWithEncoderName:(id)a3 decoderName:(id)a4
{
  v42[16] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_self();
  if (qword_1EA84DBE0 != -1)
  {
    dispatch_once(&qword_1EA84DBE0, &unk_1EF1BF980);
  }

  v8 = sub_183981308(self, v6);
  encoderModel = self->_encoderModel;
  self->_encoderModel = v8;

  v10 = sub_183981308(self, v7);
  decoderModel = self->_decoderModel;
  self->_decoderModel = v10;

  self->_encoderBatchSize = 8;
  *&self->_maxNumPointsPerStroke = xmmword_1839DA8F0;
  *&self->_encoderDimension = xmmword_1839DA900;
  *&self->_interpolationDistance = 0x448000003F800000;
  self->_maxNumStrokes = objc_msgSend_maxNumStrokesForDecoderName_(CHDocumentLayoutAnalysisModel, v12, v7, v13, v14, v15);
  v21 = objc_msgSend_scriptCodeMap(CHDocumentLayoutAnalysisModel, v16, v17, v18, v19, v20);
  scriptCodeMap = self->_scriptCodeMap;
  self->_scriptCodeMap = v21;

  v41[0] = &unk_1EF1EDBB8;
  v41[1] = &unk_1EF1EDBD0;
  v42[0] = @"N";
  v42[1] = @"W";
  v41[2] = &unk_1EF1EDBE8;
  v41[3] = &unk_1EF1EDC00;
  v42[2] = @"A";
  v42[3] = @"C";
  v41[4] = &unk_1EF1EDC18;
  v41[5] = &unk_1EF1EDC30;
  v42[4] = @"D";
  v42[5] = @"H";
  v41[6] = &unk_1EF1EDC48;
  v41[7] = &unk_1EF1EDC60;
  v42[6] = @"J";
  v42[7] = @"K";
  v41[8] = &unk_1EF1EDC78;
  v41[9] = &unk_1EF1EDC90;
  v42[8] = @"L";
  v42[9] = @"T";
  v41[10] = &unk_1EF1EDCA8;
  v41[11] = &unk_1EF1EDCC0;
  v42[10] = @"V";
  v42[11] = @"M";
  v41[12] = &unk_1EF1EDCD8;
  v41[13] = &unk_1EF1EDCF0;
  v42[12] = @"U";
  v42[13] = @"O";
  v41[14] = &unk_1EF1EDD08;
  v41[15] = &unk_1EF1EDD20;
  v42[14] = @"Q";
  v42[15] = @"F";
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v42, v41, 16, v24);
  scriptCodeDictionary = self->_scriptCodeDictionary;
  self->_scriptCodeDictionary = v25;

  self->_numOutputClasses = objc_msgSend_count(self->_scriptCodeDictionary, v27, v28, v29, v30, v31);
  v36 = objc_msgSend_indexOfObject_(self->_scriptCodeMap, v32, &unk_1EF1EDBB8, v33, v34, v35);
  self->_nontextClassIndex = v36;
  if (v36 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v40 = 0;
      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "Non-text class index not found in stroke classification codemap", v40, 2u);
    }

    if (self->_nontextClassIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (qword_1EA84DC48 == -1)
      {
        v38 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v38 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_12;
        }
      }

      *v40 = 0;
      _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_FAULT, "Non-text class index not found in stroke classification codemap", v40, 2u);
      goto LABEL_12;
    }
  }

LABEL_13:

  return self;
}

+ (int64_t)maxNumStrokesForDecoderName:(id)a3
{
  v146 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  v10 = objc_msgSend_UTF8String(v4, v5, v6, v7, v8, v9);
  if (!sub_1837A3290(v10, 0, __s))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "Document layout analysis model decoder %@ not found", buf, 0xCu);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_FAULT, "Document layout analysis model decoder %@ not found", buf, 0xCu);
    }
  }

  v13 = strlen(__s);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v17 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  v144 = v13;
  if (v13)
  {
    memcpy(buf, __s, v13);
  }

  buf[v17] = 0;
  if (v144 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v14, buf, 4, v15, v16);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v14, *buf, 4, v15, v16);
  }
  v135 = ;
  v22 = objc_msgSend_stringByAppendingPathComponent_(v135, v18, @"metadata.json", v19, v20, v21);
  v136 = v22;
  v29 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v23, v22, v24, v25, v26);
  if (!v29)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v30 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v139 = 138412290;
      v140 = v22;
      _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_ERROR, "Failed to load metadata file %@", v139, 0xCu);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v31 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *v139 = 138412290;
      v140 = v22;
      _os_log_impl(&dword_18366B000, v31, OS_LOG_TYPE_FAULT, "Failed to load metadata file %@", v139, 0xCu);
    }
  }

  v138 = 0;
  v32 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v27, v29, 1, &v138, v28);
  v33 = v138;
  v39 = objc_msgSend_firstObject(v32, v34, v35, v36, v37, v38);

  if (v33)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v44 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_msgSend_debugDescription(v33, v45, v46, v47, v48, v49);
      *v139 = 138412546;
      v140 = v3;
      v141 = 2112;
      v142 = v50;
      _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_ERROR, "Error occurred when loading %@ metadata: %@", v139, 0x16u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v51 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      v57 = objc_msgSend_debugDescription(v33, v52, v53, v54, v55, v56);
      *v139 = 138412546;
      v140 = v3;
      v141 = 2112;
      v142 = v57;
      _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_FAULT, "Error occurred when loading %@ metadata: %@", v139, 0x16u);
    }
  }

  v58 = objc_msgSend_objectForKeyedSubscript_(v39, v40, @"outputSchema", v41, v42, v43);
  v64 = objc_msgSend_firstObject(v58, v59, v60, v61, v62, v63);

  v69 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"shapeRange", v66, v67, v68);
  v70 = MEMORY[0x1E696ACB0];
  v75 = objc_msgSend_dataUsingEncoding_(v69, v71, 4, v72, v73, v74);
  v137 = v33;
  v78 = objc_msgSend_JSONObjectWithData_options_error_(v70, v76, v75, 0, &v137, v77);
  v79 = v137;

  if (v79)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v85 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v91 = objc_msgSend_debugDescription(v79, v86, v87, v88, v89, v90);
      *v139 = 138412546;
      v140 = v69;
      v141 = 2112;
      v142 = v91;
      _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_ERROR, "Error when deserializing output shape %@: %@", v139, 0x16u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v92 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
    {
      v98 = objc_msgSend_debugDescription(v79, v93, v94, v95, v96, v97);
      *v139 = 138412546;
      v140 = v69;
      v141 = 2112;
      v142 = v98;
      _os_log_impl(&dword_18366B000, v92, OS_LOG_TYPE_FAULT, "Error when deserializing output shape %@: %@", v139, 0x16u);
    }
  }

  if (objc_msgSend_count(v78, v80, v81, v82, v83, v84) != 3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v104 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      v110 = objc_msgSend_count(v78, v105, v106, v107, v108, v109);
      *v139 = 134217984;
      v140 = v110;
      _os_log_impl(&dword_18366B000, v104, OS_LOG_TYPE_ERROR, "Shape array is expected to be length 3, found %lu", v139, 0xCu);
    }
  }

  if (objc_msgSend_count(v78, v99, v100, v101, v102, v103) != 3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v115 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
    {
      v121 = objc_msgSend_count(v78, v116, v117, v118, v119, v120);
      *v139 = 134217984;
      v140 = v121;
      _os_log_impl(&dword_18366B000, v115, OS_LOG_TYPE_FAULT, "Shape array is expected to be length 3, found %lu", v139, 0xCu);
    }
  }

  v122 = objc_msgSend_objectAtIndexedSubscript_(v78, v111, 1, v112, v113, v114);
  v127 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, 1, v124, v125, v126);
  v133 = objc_msgSend_integerValue(v127, v128, v129, v130, v131, v132);

  if (v144 < 0)
  {
    operator delete(*buf);
  }

  return v133;
}

- (BOOL)analyzeDrawing:(id)a3 outStrokeClassProbabilities:(void *)a4 outStrokeAdjacencyMatrix:(void *)a5 cancellationBlock:(id)a6
{
  v646 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v593 = a6;
  v14 = 0;
  v623 = 0;
  v624 = 0;
  v625 = 0;
  __p = 0;
  v621 = 0;
  v622 = 0;
  v605 = v8;
  while (v14 < objc_msgSend_strokeCount(v8, v9, v10, v11, v12, v13))
  {
    buf = 0u;
    v642 = 0u;
    LODWORD(p_p) = 1065353216;
    v20 = v624;
    if (v624 >= v625)
    {
      v22 = sub_18372E058(&v623, &buf);
    }

    else
    {
      *v624 = 0;
      v20[1] = 0;
      *(&buf + 1) = 0;
      v20[2] = 0;
      v21 = *(&v642 + 1);
      v20[3] = *(&v642 + 1);
      *(v20 + 8) = 1065353216;
      if (v21)
      {
        v642 = 0uLL;
      }

      v22 = v20 + 5;
    }

    v624 = v22;
    v23 = v642;
    if (v642)
    {
      do
      {
        v24 = *v23;
        operator delete(v23);
        v23 = v24;
      }

      while (v24);
    }

    v25 = buf;
    *&buf = 0;
    if (v25)
    {
      operator delete(v25);
    }

    v26 = objc_msgSend_strokeCount(v8, v15, v16, v17, v18, v19);
    v27 = v26;
    if ((v26 & 0x3F) != 0)
    {
      v9 = ((v26 >> 6) + 1);
    }

    else
    {
      v9 = (v26 >> 6);
    }

    memset(v619, 0, sizeof(v619));
    if (v9)
    {
      sub_18370D4C0(v619, v9);
      v28 = v619[0];
      v619[3] = v27;
      v30 = v621;
      v29 = v622;
      if (v621 < v622)
      {
        goto LABEL_2;
      }

LABEL_20:
      v31 = __p;
      v32 = (v30 - __p) >> 5;
      v33 = v32 + 1;
      if ((v32 + 1) >> 59)
      {
        sub_18368964C();
      }

      v34 = v29 - __p;
      if (v34 >> 4 > v33)
      {
        v33 = v34 >> 4;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFE0)
      {
        v35 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      p_p = &__p;
      v612 = v14;
      if (v35)
      {
        if (!(v35 >> 59))
        {
          operator new();
        }

        sub_183688F00();
      }

      v36 = (v30 - __p) >> 5;
      v37 = 32 * v32;
      *&buf = 0;
      *(&buf + 1) = v37;
      *v37 = v28;
      *(v37 + 8) = *&v619[1];
      v619[0] = 0;
      v619[1] = 0;
      *(v37 + 24) = v27;
      *&v619[2] = 0uLL;
      v38 = 32 * v32 + 32;
      v642 = (v37 + 32);
      v39 = (v37 - 32 * v36);
      v616 = v39;
      p_buf = v39;
      v626 = &__p;
      v627 = &p_buf;
      v628 = &v616;
      LOBYTE(v629) = 0;
      if (v31 == v30)
      {
        __p = (v37 - 32 * v36);
        v621 = (v37 + 32);
        v622 = 0;
        v8 = v605;
        if (v31)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v40 = (v37 - 32 * v36);
        v41 = v31;
        do
        {
          *v40 = 0;
          v40[1] = 0;
          v40[2] = 0;
          v42 = *(v41 + 1);
          v43 = v40;
          if (v42 != *v41)
          {
            if (((v42 - *v41) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1836D58DC();
          }

          v40[3] = *(v41 + 3);
          v41 += 32;
          v40 += 4;
          v616 = v43 + 4;
        }

        while (v41 != v30);
        v14 = v612;
        do
        {
          v44 = *v31;
          if (*v31)
          {
            *(v31 + 1) = v44;
            operator delete(v44);
          }

          v31 += 32;
        }

        while (v31 != v30);
        v31 = __p;
        __p = v39;
        v621 = v38;
        v622 = 0;
        v8 = v605;
        if (v31)
        {
LABEL_40:
          operator delete(v31);
        }
      }

      v621 = v38;
      if (v619[0])
      {
        v619[1] = v619[0];
        operator delete(v619[0]);
      }

      ++v14;
    }

    else
    {
      v28 = 0;
      v619[3] = v26;
      v30 = v621;
      v29 = v622;
      if (v621 >= v622)
      {
        goto LABEL_20;
      }

LABEL_2:
      *v30 = 0;
      *(v30 + 1) = 0;
      *(v30 + 2) = 0;
      *v30 = *v619;
      *(v30 + 2) = v619[2];
      memset(v619, 0, 24);
      *(v30 + 3) = v619[3];
      v621 = v30 + 32;
      v8 = v605;
      ++v14;
    }
  }

  v616 = 0;
  v617 = 0;
  v618 = 0;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v45 = qword_1EA84DC88;
  v46 = os_signpost_id_generate(v45);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v47 = qword_1EA84DC88;
  v48 = v47;
  v49 = v46 - 1;
  if (v46 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v47))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v46, "CHDocumentLayoutAnalysisModelFeatureExtraction", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v50 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v50, OS_LOG_TYPE_DEFAULT, "BEGIN CHDocumentLayoutAnalysisModelFeatureExtraction", &buf, 2u);
  }

  v56 = v605;
  if (self)
  {
    objc_msgSend_interpolationDistance(self, v51, v52, v53, v54, v55);
    v58 = v57;
    v64 = objc_msgSend_maxNumPointsPerStroke(self, v59, v60, v61, v62, v63);
    v619[0] = &unk_1EF1BD9D0;
    *&v619[1] = v58;
    LODWORD(v619[2]) = 1;
    HIDWORD(v619[2]) = v64;
    sub_1837BD608(v56, MEMORY[0x1E695EFF8], 0, &v626);
    buf = 0uLL;
    *&v642 = 0;
    p_buf = &buf;
    v633 = 0;
    if (v627 != v626)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v627 - v626) >> 3) <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_18369F168();
    }

    sub_18369F384(&v642 + 1, &v629);
    v644 = v630;
    v645 = v631;
    (*(v619[0] + 3))(v619, &buf, 0);
    if (v629)
    {
      operator delete(v629);
    }

    v65 = v626;
    if (v626)
    {
      v66 = v627;
      v67 = v626;
      if (v627 != v626)
      {
        v68 = v627;
        do
        {
          v70 = *(v68 - 3);
          v68 -= 24;
          v69 = v70;
          if (v70)
          {
            *(v66 - 2) = v69;
            operator delete(v69);
          }

          v66 = v68;
        }

        while (v68 != v65);
        v67 = v626;
      }

      v627 = v65;
      operator delete(v67);
    }

    v606 = sub_1837BDED8(&buf);
    if (*(&v642 + 1))
    {
      operator delete(*(&v642 + 1));
    }

    v71 = buf;
    if (buf)
    {
      v72 = *(&buf + 1);
      v73 = buf;
      if (*(&buf + 1) != buf)
      {
        v74 = *(&buf + 1);
        do
        {
          v76 = *(v74 - 24);
          v74 -= 24;
          v75 = v76;
          if (v76)
          {
            *(v72 - 16) = v75;
            operator delete(v75);
          }

          v72 = v74;
        }

        while (v74 != v71);
        v73 = buf;
      }

      *(&buf + 1) = v71;
      operator delete(v73);
    }
  }

  else
  {
    v606 = 0;
  }

  v82 = objc_msgSend_strokeCount(v606, v77, v78, v79, v80, v81);
  if (self)
  {
    v88 = v82;
    v89 = objc_msgSend_encoderBatchSize(self, v83, v84, v85, v86, v87);
    v95 = objc_msgSend_encoderBatchSize(self, v90, v91, v92, v93, v94);
    v608 = (v88 + v89 - 1) / v95 * objc_msgSend_encoderBatchSize(self, v96, v97, v98, v99, v100);
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_83;
    }

LABEL_259:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v101 = qword_1EA84DC88;
    if (v49 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_86;
    }

LABEL_84:
    if (os_signpost_enabled(v101))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v101, OS_SIGNPOST_INTERVAL_END, v46, "CHDocumentLayoutAnalysisModelFeatureExtraction", "", &buf, 2u);
    }

    goto LABEL_86;
  }

  v608 = 0;
  if (qword_1EA84DC48 != -1)
  {
    goto LABEL_259;
  }

LABEL_83:
  v101 = qword_1EA84DC88;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_84;
  }

LABEL_86:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v102 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v102, OS_LOG_TYPE_DEFAULT, "END CHDocumentLayoutAnalysisModelFeatureExtraction", &buf, 2u);
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v103, v104, v105, v106, v107);
  v109 = v108;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v110 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v110);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v111 = qword_1EA84DC88;
  v112 = v111;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v111))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v112, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHDocumentLayoutAnalysisEncoderModelInference", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v113 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v113, OS_LOG_TYPE_DEFAULT, "BEGIN CHDocumentLayoutAnalysisEncoderModelInference", &buf, 2u);
  }

  v114 = objc_alloc(MEMORY[0x1E695FED0]);
  v640[0] = &unk_1EF1EDD38;
  v119 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v115, v608, v116, v117, v118);
  v640[1] = v119;
  v120 = MEMORY[0x1E696AD98];
  v126 = objc_msgSend_encoderDimension(self, v121, v122, v123, v124, v125);
  v131 = objc_msgSend_numberWithUnsignedInteger_(v120, v127, v126, v128, v129, v130);
  v640[2] = v131;
  v640[3] = &unk_1EF1EDD38;
  v135 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v132, v640, 4, v133, v134);
  v604 = objc_msgSend_initWithShape_dataType_error_(v114, v136, v135, 65568, 0, v137);

  v138 = v604;
  v609 = objc_msgSend_dataPointer(v604, v139, v140, v141, v142, v143);
  v149 = objc_msgSend_encoderDimension(self, v144, v145, v146, v147, v148);
  bzero(v609, 4 * v608 * v149);
  v155 = 0;
  v156 = v606;
  while (v155 < objc_msgSend_strokeCount(v156, v150, v151, v152, v153, v154))
  {
    v162 = objc_msgSend_encoderBatchSize(self, v157, v158, v159, v160, v161);
    if (v162 + v155 >= objc_msgSend_strokeCount(v156, v163, v164, v165, v166, v167))
    {
      v178 = objc_msgSend_strokeCount(v156, v168, v169, v170, v171, v172);
    }

    else
    {
      v178 = objc_msgSend_encoderBatchSize(self, v168, v169, v170, v171, v172) + v155;
    }

    v179 = objc_msgSend_encoderBatchSize(self, v173, v174, v175, v176, v177);
    v613 = v155;
    v180 = v156;
    if (self)
    {
      v181 = objc_alloc(MEMORY[0x1E695FED0]);
      *&buf = &unk_1EF1EDD38;
      v186 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v182, v179, v183, v184, v185);
      *(&buf + 1) = v186;
      v187 = MEMORY[0x1E696AD98];
      v193 = objc_msgSend_maxNumPointsPerStroke(self, v188, v189, v190, v191, v192);
      v198 = objc_msgSend_numberWithUnsignedInteger_(v187, v194, v193, v195, v196, v197);
      *&v642 = v198;
      v199 = MEMORY[0x1E696AD98];
      v205 = objc_msgSend_numSignalFeaturesPerPoint(self, v200, v201, v202, v203, v204);
      v210 = objc_msgSend_numberWithUnsignedInteger_(v199, v206, v205, v207, v208, v209);
      *(&v642 + 1) = v210;
      v214 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v211, &buf, 4, v212, v213);
      __src = objc_msgSend_initWithShape_dataType_error_(v181, v215, v214, 65568, 0, v216);

      objc_msgSend_fillWithNumber_(__src, v217, &unk_1EF1EE0B0, v218, v219, v220);
      v221 = __src;
      v227 = objc_msgSend_dataPointer(__src, v222, v223, v224, v225, v226);
      v232 = v613;
      if (v613 < v178)
      {
        v233 = v227;
        v234 = 0;
        do
        {
          for (i = 0; i < objc_msgSend_pointCountForStrokeIndex_(v180, v228, v232, v229, v230, v231); ++i)
          {
            objc_msgSend_pointForStrokeIndex_pointIndex_(v180, v228, v232, i, v230, v231);
            v237 = v236;
            v239 = v238;
            v245 = objc_msgSend_maxNumPointsPerStroke(self, v240, v241, v242, v243, v244);
            v251 = objc_msgSend_numSignalFeaturesPerPoint(self, v246, v247, v248, v249, v250);
            objc_msgSend_coordinateNormalizationFactor(self, v252, v253, v254, v255, v256);
            v258 = v237 / v257;
            v259 = (v233 + 4 * v251 * (i + v234 * v245));
            *v259 = v258;
            objc_msgSend_coordinateNormalizationFactor(self, v260, v261, v262, v263, v264);
            v266 = v239 / v265;
            v259[1] = v266;
          }

          ++v232;
          ++v234;
        }

        while (v232 != v178);
      }
    }

    else
    {
      __src = 0;
    }

    v272 = objc_msgSend_encoderBatchSize(self, v267, v268, v269, v270, v271);
    if (v272 + v613 >= objc_msgSend_strokeCount(v180, v273, v274, v275, v276, v277))
    {
      v288 = objc_msgSend_strokeCount(v180, v278, v279, v280, v281, v282);
    }

    else
    {
      v288 = objc_msgSend_encoderBatchSize(self, v278, v279, v280, v281, v282) + v613;
    }

    v289 = objc_msgSend_encoderBatchSize(self, v283, v284, v285, v286, v287);
    v290 = v180;
    if (self)
    {
      v291 = objc_alloc(MEMORY[0x1E695FED0]);
      *&buf = &unk_1EF1EDD38;
      v296 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v292, v289, v293, v294, v295);
      *(&buf + 1) = v296;
      v297 = MEMORY[0x1E696AD98];
      v303 = objc_msgSend_maxNumPointsPerStroke(self, v298, v299, v300, v301, v302);
      v308 = objc_msgSend_numberWithUnsignedInteger_(v297, v304, v303, v305, v306, v307);
      *&v642 = v308;
      *(&v642 + 1) = &unk_1EF1EDD38;
      v312 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v309, &buf, 4, v310, v311);
      v315 = objc_msgSend_initWithShape_dataType_error_(v291, v313, v312, 65568, 0, v314);

      objc_msgSend_fillWithNumber_(v315, v316, &unk_1EF1EE0B0, v317, v318, v319);
      v320 = v315;
      v326 = objc_msgSend_dataPointer(v315, v321, v322, v323, v324, v325);
      v331 = v613;
      if (v613 < v288)
      {
        v332 = v326;
        v333 = 0;
        do
        {
          v334 = 0;
          v335 = v332;
          while (v334 < objc_msgSend_pointCountForStrokeIndex_(v290, v327, v331, v328, v329, v330))
          {
            *(v335 + v333 * objc_msgSend_maxNumPointsPerStroke(self, v327, v336, v328, v329, v330)) = 1065353216;
            ++v334;
            v335 += 4;
          }

          ++v331;
          v333 += 4;
        }

        while (v331 != v288);
      }
    }

    else
    {
      v315 = 0;
    }

    v337 = objc_alloc(MEMORY[0x1E695FE48]);
    v638[0] = @"canvas_features_signal";
    v638[1] = @"canvas_features_signal_mask";
    v639[0] = __src;
    v639[1] = v315;
    v340 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v338, v639, v638, 2, v339);
    v344 = objc_msgSend_initWithDictionary_error_(v337, v341, v340, 0, v342, v343);

    encoderModel = self->_encoderModel;
    v346 = objc_alloc(MEMORY[0x1E695FF08]);
    v351 = objc_msgSend_initWithUsesCPUOnly_(v346, v347, 1, v348, v349, v350);
    v354 = objc_msgSend_predictionFromFeatures_options_error_(encoderModel, v352, v344, v351, 0, v353);

    v359 = objc_msgSend_featureValueForName_(v354, v355, @"stroke_embedding", v356, v357, v358);
    v365 = objc_msgSend_multiArrayValue(v359, v360, v361, v362, v363, v364);

    v366 = sub_1837AA6D8(v365, 65568);

    v372 = objc_msgSend_strides(v366, v367, v368, v369, v370, v371);
    v377 = objc_msgSend_objectAtIndexedSubscript_(v372, v373, 1, v374, v375, v376);
    v383 = objc_msgSend_intValue(v377, v378, v379, v380, v381, v382);

    v389 = 0;
    v390 = 0;
    v391 = 4 * v383;
    v392 = &v609[4 * v613 * v383];
    while (v390 < objc_msgSend_encoderBatchSize(self, v384, v385, v386, v387, v388))
    {
      v393 = v366;
      v399 = objc_msgSend_dataPointer(v366, v394, v395, v396, v397, v398);
      memcpy(&v392[v389], (v399 + v389), v391);
      ++v390;
      v389 += v391;
    }

    v156 = v606;
    v155 = objc_msgSend_encoderBatchSize(self, v400, v401, v402, v403, v404) + v613;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v405 = qword_1EA84DC88;
  v406 = v405;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v405))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v406, OS_SIGNPOST_INTERVAL_END, spid, "CHDocumentLayoutAnalysisEncoderModelInference", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v407 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v407, OS_LOG_TYPE_DEFAULT, "END CHDocumentLayoutAnalysisEncoderModelInference", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v408 = qword_1EA84DC88;
  v409 = os_signpost_id_generate(v408);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v410 = qword_1EA84DC88;
  v411 = v410;
  v412 = v409 - 1;
  if (v409 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v410))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v411, OS_SIGNPOST_INTERVAL_BEGIN, v409, "CHDocumentLayoutAnalysisDecoderModelInference", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v413 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v413, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v413, OS_LOG_TYPE_DEFAULT, "BEGIN CHDocumentLayoutAnalysisDecoderModelInference", &buf, 2u);
  }

  v610 = v606;
  if (self)
  {
    v414 = objc_alloc(MEMORY[0x1E695FED0]);
    *&buf = &unk_1EF1EDD38;
    v419 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v415, v608, v416, v417, v418);
    *(&buf + 1) = v419;
    *&v642 = &unk_1EF1EDD38;
    *(&v642 + 1) = &unk_1EF1EDD38;
    v423 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v420, &buf, 4, v421, v422);
    v603 = objc_msgSend_initWithShape_dataType_error_(v414, v424, v423, 65568, 0, v425);

    objc_msgSend_fillWithNumber_(v603, v426, &unk_1EF1EE0C0, v427, v428, v429);
    v430 = v603;
    v436 = objc_msgSend_dataPointer(v603, v431, v432, v433, v434, v435);
    v442 = objc_msgSend_strokeCount(v610, v437, v438, v439, v440, v441);
    v448 = objc_msgSend_strokeCount(v610, v443, v444, v445, v446, v447);
    bzero((v436 + 4 * v442), 4 * (v608 - v448));
  }

  else
  {
    v603 = 0;
  }

  v454 = objc_msgSend_decoderDimension(self, v449, v450, v451, v452, v453);
  v597 = sub_1837AA4C8(v608, v454, 0);
  v455 = objc_alloc(MEMORY[0x1E695FE48]);
  v636[0] = @"stroke_embeddings";
  v636[1] = @"stroke_embeddings_mask";
  v637[0] = v604;
  v637[1] = v603;
  v636[2] = @"input_posenc";
  v637[2] = v597;
  v458 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v456, v637, v636, 3, v457);
  v598 = objc_msgSend_initWithDictionary_error_(v455, v459, v458, 0, v460, v461);

  decoderModel = self->_decoderModel;
  v463 = objc_alloc(MEMORY[0x1E695FF08]);
  v468 = objc_msgSend_initWithUsesCPUOnly_(v463, v464, 1, v465, v466, v467);
  v600 = objc_msgSend_predictionFromFeatures_options_error_(decoderModel, v469, v598, v468, 0, v470);

  if (qword_1EA84DC48 == -1)
  {
    v471 = qword_1EA84DC88;
    if (v412 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_153:
      if (os_signpost_enabled(v471))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v471, OS_SIGNPOST_INTERVAL_END, v409, "CHDocumentLayoutAnalysisDecoderModelInference", "", &buf, 2u);
      }
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v471 = qword_1EA84DC88;
    if (v412 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_153;
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v472 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v472, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v472, OS_LOG_TYPE_DEFAULT, "END CHDocumentLayoutAnalysisDecoderModelInference", &buf, 2u);
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v473, v474, v475, v476, v477);
  v479 = v478;
  v634 = @"inputStrokeCount";
  v480 = MEMORY[0x1E696AD98];
  v486 = objc_msgSend_strokeCount(v610, v481, v482, v483, v484, v485);
  v491 = objc_msgSend_numberWithUnsignedInteger_(v480, v487, v486, v488, v489, v490);
  v635 = v491;
  v599 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v492, &v635, &v634, 1, v493);

  objc_msgSend_logModelInference_startTimestamp_endTimestamp_data_(qword_1EA84D2D0, v494, 13, v599, v495, v496, v109, v479);
  v501 = objc_msgSend_featureValueForName_(v600, v497, @"stroke_grouping", v498, v499, v500);
  v507 = objc_msgSend_multiArrayValue(v501, v502, v503, v504, v505, v506);

  v601 = sub_1837AA6D8(v507, 65568);

  v512 = objc_msgSend_featureValueForName_(v600, v508, @"script_classification", v509, v510, v511);
  v518 = objc_msgSend_multiArrayValue(v512, v513, v514, v515, v516, v517);

  v602 = sub_1837AA6D8(v518, 65568);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v519 = qword_1EA84DC88;
  v594 = os_signpost_id_generate(v519);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v520 = qword_1EA84DC88;
  v521 = v520;
  if (v594 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v520))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v521, OS_SIGNPOST_INTERVAL_BEGIN, v594, "CHDocumentLayoutAnalysisModelPostProcessing", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v522 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v522, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v522, OS_LOG_TYPE_DEFAULT, "BEGIN CHDocumentLayoutAnalysisModelPostProcessing", &buf, 2u);
  }

  v523 = v601;
  v534 = objc_msgSend_dataPointer(v601, v524, v525, v526, v527, v528);
  v535 = 0;
  v536 = 4 * v608;
  v537 = v534;
  while (v535 < objc_msgSend_strokeCount(v610, v529, v530, v531, v532, v533))
  {
    v538 = 0;
    v539 = v623 + 40 * v535;
    v540 = __p + 32 * v535;
    v614 = v534;
    while (v538 < objc_msgSend_strokeCount(v610, v529, v530, v531, v532, v533))
    {
      v541 = v537[v538];
      if (v541 > 0.75 && *v534 > 0.75)
      {
        v626 = v538;
        *&buf = &v626;
        *(sub_18372F7F0(v539, &v626) + 6) = v541;
        *(*v540 + ((v538 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v538;
      }

      ++v538;
      v534 = (v534 + v536);
    }

    ++v535;
    v537 = (v537 + v536);
    v534 = v614 + 1;
  }

  v542 = v602;
  objc_msgSend_dataPointer(v602, v543, v544, v545, v546, v547);
  v553 = 0;
  for (j = 0; j < objc_msgSend_strokeCount(v610, v548, v549, v550, v551, v552); ++j)
  {
    if (self->_numOutputClasses >= 1)
    {
      operator new();
    }

    v556 = v617;
    if (v617 < v618)
    {
      *v617 = 0;
      v556[1] = 0;
      v556[2] = 0;
      v555 = v556 + 3;
    }

    else
    {
      v557 = 0xAAAAAAAAAAAAAAABLL * ((v617 - v616) >> 3) + 1;
      if (v557 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_18368964C();
      }

      if (0x5555555555555556 * ((v618 - v616) >> 3) > v557)
      {
        v557 = 0x5555555555555556 * ((v618 - v616) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v618 - v616) >> 3) >= 0x555555555555555)
      {
        v558 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v558 = v557;
      }

      p_p = &v616;
      if (v558)
      {
        if (v558 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_183688F00();
      }

      v559 = (8 * ((v617 - v616) >> 3));
      *&buf = 0;
      *(&buf + 1) = v559;
      v642 = v559;
      v559[1] = 0;
      v559[2] = 0;
      *v559 = 0;
      v555 = (v559 + 3);
      v560 = v616;
      v561 = v559 - (v617 - v616);
      memcpy(v561, v616, v617 - v616);
      v616 = v561;
      v617 = v555;
      v618 = 0;
      if (v560)
      {
        operator delete(v560);
      }
    }

    v617 = v555;
    v553 += 4;
  }

  if (self)
  {
    v562 = v623;
    v563 = v624;
    if (v624 != v623)
    {
      v564 = 0;
      do
      {
        v565 = v564 + 1;
        v566 = 0xCCCCCCCCCCCCCCCDLL * ((v563 - v562) >> 3);
        if (v564 + 1 < v566)
        {
          v615 = v564 + 1;
          do
          {
            v567 = (__p + 32 * v564);
            v569 = *v567;
            v568 = v567[1];
            if (v568 != v569)
            {
              if (((v568 - v569) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1836D58DC();
            }

            v562 = v623;
            v563 = v624;
            v566 = 0xCCCCCCCCCCCCCCCDLL * ((v624 - v623) >> 3);
            ++v615;
          }

          while (v615 < v566);
          v565 = v564 + 1;
        }

        v564 = v565;
      }

      while (v565 < v566);
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v570 = qword_1EA84DC88;
  v571 = v570;
  if (v594 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v570))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v571, OS_SIGNPOST_INTERVAL_END, v594, "CHDocumentLayoutAnalysisModelPostProcessing", "", &buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v572 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v572, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v572, OS_LOG_TYPE_DEFAULT, "END CHDocumentLayoutAnalysisModelPostProcessing", &buf, 2u);
  }

  if (&v623 != a5)
  {
    sub_18372D3D4(a5, v623, v624, 0xCCCCCCCCCCCCCCCDLL * ((v624 - v623) >> 3));
  }

  if (&v616 != a4)
  {
    sub_18372D05C(a4, v616, v617, 0xAAAAAAAAAAAAAAABLL * ((v617 - v616) >> 3));
  }

  v573 = v616;
  if (v616)
  {
    v574 = v617;
    v575 = v616;
    if (v617 != v616)
    {
      v576 = v617;
      do
      {
        v578 = *(v576 - 3);
        v576 -= 3;
        v577 = v578;
        if (v578)
        {
          *(v574 - 2) = v577;
          operator delete(v577);
        }

        v574 = v576;
      }

      while (v576 != v573);
      v575 = v616;
    }

    v617 = v573;
    operator delete(v575);
  }

  v579 = __p;
  if (__p)
  {
    v580 = v621;
    v581 = __p;
    if (v621 != __p)
    {
      v582 = v621;
      do
      {
        v584 = *(v582 - 4);
        v582 -= 32;
        v583 = v584;
        if (v584)
        {
          *(v580 - 3) = v583;
          operator delete(v583);
        }

        v580 = v582;
      }

      while (v582 != v579);
      v581 = __p;
    }

    v621 = v579;
    operator delete(v581);
  }

  v585 = v623;
  if (v623)
  {
    v586 = v624;
    v587 = v623;
    if (v624 != v623)
    {
      do
      {
        v588 = *(v586 - 3);
        if (v588)
        {
          do
          {
            v589 = *v588;
            operator delete(v588);
            v588 = v589;
          }

          while (v589);
        }

        v591 = *(v586 - 5);
        v586 -= 5;
        v590 = v591;
        *v586 = 0;
        if (v591)
        {
          operator delete(v590);
        }
      }

      while (v586 != v585);
      v587 = v623;
    }

    v624 = v585;
    operator delete(v587);
  }

  return 1;
}

@end