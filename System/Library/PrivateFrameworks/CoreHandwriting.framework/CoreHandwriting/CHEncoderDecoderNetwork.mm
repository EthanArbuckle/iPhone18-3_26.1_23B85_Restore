@interface CHEncoderDecoderNetwork
- (CHEncoderDecoderNetwork)initWithModelNames:(id)a3 decoderName:(id)a4;
- (FeatureArray)_extractFeaturesFromDrawing:(SEL)a3 error:(id)a4;
- (id)_bestPathTokensFromDecodingStates:(const void *)a3 drawing:(id)a4 codemap:(const void *)a5;
- (id)loadCodemap:(id)a3;
- (id)loadModel:(id)a3;
- (id)recognizeDrawing:(id)a3 beamSize:(int64_t)a4 shouldCancel:(id)a5;
- (int)getIndexInCodemap:(id)a3;
- (vector<std::vector<std::unordered_map<int,)_createCompressedInputImage:()std:(int>>>> *__return_ptr)retstr :(CHEncoderDecoderNetwork *)self allocator<std:(SEL)a3 :(const void *)a4 vector<std::unordered_map<int;
- (void)dealloc;
- (void)filterOutAlternatives:(void *)a3 codemap:(const void *)a4;
- (void)setUpDecoderConfusableAlternatives:(void *)a3;
- (void)setUpDecoderOutOfAlphabetAlternatives:(void *)a3;
- (void)setUpMathDecoder:(void *)a3 imageCompressed:(void *)a4;
@end

@implementation CHEncoderDecoderNetwork

- (CHEncoderDecoderNetwork)initWithModelNames:(id)a3 decoderName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v49.receiver = self;
  v49.super_class = CHEncoderDecoderNetwork;
  v8 = [(CHEncoderDecoderNetwork *)&v49 init];
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_loadModel_(v8, v9, v6, v10, v11, v12);
    encoderModel = v13->_encoderModel;
    v13->_encoderModel = v14;

    v20 = objc_msgSend_loadModel_(v13, v16, v7, v17, v18, v19);
    decoderModel = v13->_decoderModel;
    v13->_decoderModel = v20;

    v26 = objc_msgSend_loadCodemap_(v13, v22, v6, v23, v24, v25);
    codeMap = v13->_codeMap;
    v13->_codeMap = v26;

    v33 = objc_msgSend_codeMap(v13, v28, v29, v30, v31, v32);
    v13->_eosIndex = objc_msgSend_indexOfObject_(v33, v34, @"<EOS>", v35, v36, v37);

    if (v13->_eosIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v43 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v48 = 0;
      _os_log_impl(&dword_18366B000, v43, OS_LOG_TYPE_ERROR, "<EOS> symbol not found in codemap", v48, 2u);
    }

    if (v13->_eosIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    if (qword_1EA84DC48 == -1)
    {
      v44 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

LABEL_12:
        *&v13->_renderSymbolSize = xmmword_1839D9D80;
        *&v13->_maxInputHeight = xmmword_1839DA960;
        *&v13->_maxInputWidth = xmmword_1839DA970;
        *&v13->_enlargeSingleDotBy = xmmword_1839D0780;
        v13->_numOutputClasses = objc_msgSend_count(v13->_codeMap, v38, v39, v40, v41, v42);
        v13->_segmentationAttThreshold = 0.01;
        v13->_encoderCompressionFactor = 32;
        activeAlphabet = v13->_activeAlphabet;
        v13->_activeAlphabet = 0;

        declaredVariables = v13->_declaredVariables;
        v13->_declaredVariables = 0;

        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v44 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }
    }

    *v48 = 0;
    _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_FAULT, "<EOS> symbol not found in codemap", v48, 2u);
    goto LABEL_11;
  }

LABEL_13:

  return v13;
}

- (void)dealloc
{
  v7 = objc_msgSend_encoderModel(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_modelKey(v7, v8, v9, v10, v11, v12);
  objc_msgSend_releaseModelWithKey_(CHSingletonMLModel, v14, v13, v15, v16, v17);

  v23 = objc_msgSend_decoderModel(self, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_modelKey(v23, v24, v25, v26, v27, v28);
  objc_msgSend_releaseModelWithKey_(CHSingletonMLModel, v30, v29, v31, v32, v33);

  v34.receiver = self;
  v34.super_class = CHEncoderDecoderNetwork;
  [(CHEncoderDecoderNetwork *)&v34 dealloc];
}

- (id)loadModel:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  v10 = objc_msgSend_UTF8String(v4, v5, v6, v7, v8, v9);
  sub_1837A3290(v10, 0, __s);
  v11 = strlen(__s);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v15 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v49 = v11;
  if (v11)
  {
    memcpy(&__dst, __s, v11);
  }

  *(&__dst + v15) = 0;
  if (v49 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v12, &__dst, 4, v13, v14);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v12, __dst, 4, v13, v14);
  }
  v16 = ;
  v21 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v17, v16, v18, v19, v20);
  v22 = objc_alloc(MEMORY[0x1E695FEB0]);
  v27 = objc_msgSend_initWithComputeUnits_(v22, v23, 0, v24, v25, v26);
  v47 = 0;
  v30 = objc_msgSend_modelWithContentsOfURL_configuration_error_(CHSingletonMLModel, v28, v21, v27, &v47, v29);
  v31 = v47;
  if (!v30)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v32 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_msgSend_localizedDescription(v31, v33, v34, v35, v36, v37);
      *buf = 138412546;
      v51 = v3;
      v52 = 2112;
      v53 = v38;
      _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_ERROR, "Error loading model %@: %@", buf, 0x16u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v39 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v39 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_18;
      }
    }

    v45 = objc_msgSend_localizedDescription(v31, v40, v41, v42, v43, v44);
    *buf = 138412546;
    v51 = v3;
    v52 = 2112;
    v53 = v45;
    _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_FAULT, "Error loading model %@: %@", buf, 0x16u);

    goto LABEL_18;
  }

LABEL_19:

  if (v49 < 0)
  {
    operator delete(__dst);
  }

  return v30;
}

- (id)loadCodemap:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  v10 = objc_msgSend_UTF8String(v4, v5, v6, v7, v8, v9);
  sub_1837A3290(v10, 0, __s);
  v11 = strlen(__s);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v15 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v33 = v11;
  if (v11)
  {
    memcpy(&__dst, __s, v11);
  }

  *(&__dst + v15) = 0;
  if (v33 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v12, &__dst, 4, v13, v14);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v12, __dst, 4, v13, v14);
  }
  v16 = ;
  v22 = objc_msgSend_stringByDeletingLastPathComponent(v16, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_stringByAppendingPathComponent_(v22, v23, @"math_codemap.json.lzfse", v24, v25, v26);

  v28 = sub_1837AA7DC(v27);
  if (!v28)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_ERROR, "Error loading codemap: %@", buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v30 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v30 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_18;
      }
    }

    *buf = 138412290;
    v35 = v27;
    _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_FAULT, "Error loading codemap: %@", buf, 0xCu);
    goto LABEL_18;
  }

LABEL_19:

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return v28;
}

- (void)setUpMathDecoder:(void *)a3 imageCompressed:(void *)a4
{
  v6 = *MEMORY[0x1E69E9840];
  objc_msgSend_segmentationAttThreshold(self, a2, a3, a4, v4, v5);
  sub_183830970();
}

- (int)getIndexInCodemap:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_codeMap(self, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_indexOfObject_(v10, v11, v4, v12, v13, v14);

  return v15;
}

- (void)setUpDecoderOutOfAlphabetAlternatives:(void *)a3
{
  v135 = *MEMORY[0x1E69E9840];
  *v130 = 0u;
  *v131 = 0u;
  v132 = 1065353216;
  *v127 = 0u;
  *v128 = 0u;
  v129 = 1065353216;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EF1EC970, a2, &v123, v134, 16, v3);
  if (v9)
  {
    v10 = *v124;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v124 != v10)
        {
          objc_enumerationMutation(&unk_1EF1EC970);
        }

        v12 = *(*(&v123 + 1) + 8 * i);
        IndexInCodemap = objc_msgSend_getIndexInCodemap_(self, v5, @"0", v6, v7, v8);
        v122 = objc_msgSend_getIndexInCodemap_(self, v14, v12, v15, v16, v17);
        v133 = &v122;
        v22 = sub_18398D624(v130, v122);
        v23 = v22[3];
        v24 = v22[5];
        if (v24 == v23)
        {
          if (v24)
          {
            v22[4] = v23;
            operator delete(v23);
            v22[3] = 0;
            v22[4] = 0;
            v22[5] = 0;
          }

          operator new();
        }

        v25 = v22[4];
        if (v25 == v23)
        {
          *v25 = IndexInCodemap;
          v22[4] = &v25[v25 - v23 + 4];
        }

        else
        {
          *v23 = IndexInCodemap;
          v22[4] = (v23 + 4);
        }

        LODWORD(v133) = objc_msgSend_getIndexInCodemap_(self, v18, v12, v19, v20, v21);
        sub_18398DADC(v127, v133);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EF1EC970, v5, &v123, v134, 16, v8);
    }

    while (v9);
  }

  v26 = objc_msgSend_getIndexInCodemap_(self, v5, @"f", v6, v7, v8);
  v122 = objc_msgSend_getIndexInCodemap_(self, v27, @"\\int", v28, v29, v30);
  v133 = &v122;
  v35 = sub_18398D624(v130, v122);
  v36 = v35[3];
  v37 = v35[5];
  if (v37 == v36)
  {
    if (v37)
    {
      v35[4] = v36;
      operator delete(v36);
      v35[3] = 0;
      v35[4] = 0;
      v35[5] = 0;
    }

    operator new();
  }

  v38 = v35[4];
  if (v38 == v36)
  {
    *v38 = v26;
    v35[4] = &v38[v38 - v36 + 4];
  }

  else
  {
    *v36 = v26;
    v35[4] = (v36 + 4);
  }

  v39 = objc_msgSend_getIndexInCodemap_(self, v31, @"1", v32, v33, v34);
  v122 = objc_msgSend_getIndexInCodemap_(self, v40, @"\\setminus", v41, v42, v43);
  v133 = &v122;
  v48 = sub_18398D624(v130, v122);
  v49 = v48[3];
  v50 = v48[5];
  if (v50 == v49)
  {
    if (v50)
    {
      v48[4] = v49;
      operator delete(v49);
      v48[3] = 0;
      v48[4] = 0;
      v48[5] = 0;
    }

    operator new();
  }

  v51 = v48[4];
  if (v51 == v49)
  {
    *v51 = v39;
    v48[4] = &v51[v51 - v49 + 4];
  }

  else
  {
    *v49 = v39;
    v48[4] = (v49 + 4);
  }

  v52 = objc_msgSend_getIndexInCodemap_(self, v44, @"("), v45, v46, v47;
  v122 = objc_msgSend_getIndexInCodemap_(self, v53, @"\\lbrack", v54, v55, v56);
  v133 = &v122;
  v61 = sub_18398D624(v130, v122);
  v62 = v61[3];
  v63 = v61[5];
  if (v63 == v62)
  {
    if (v63)
    {
      v61[4] = v62;
      operator delete(v62);
      v61[3] = 0;
      v61[4] = 0;
      v61[5] = 0;
    }

    operator new();
  }

  v64 = v61[4];
  if (v64 == v62)
  {
    *v64 = v52;
    v61[4] = &v64[v64 - v62 + 4];
  }

  else
  {
    *v62 = v52;
    v61[4] = (v62 + 4);
  }

  v65 = objc_msgSend_getIndexInCodemap_(self, v57, @""), v58, v59, v60);
  v122 = objc_msgSend_getIndexInCodemap_(self, v66, @"\\rbrack", v67, v68, v69);
  v133 = &v122;
  v74 = sub_18398D624(v130, v122);
  v75 = v74[3];
  v76 = v74[5];
  if (v76 == v75)
  {
    if (v76)
    {
      v74[4] = v75;
      operator delete(v75);
      v74[3] = 0;
      v74[4] = 0;
      v74[5] = 0;
    }

    operator new();
  }

  v77 = v74[4];
  if (v77 == v75)
  {
    *v77 = v65;
    v74[4] = &v77[v77 - v75 + 4];
  }

  else
  {
    *v75 = v65;
    v74[4] = (v75 + 4);
  }

  LODWORD(v133) = objc_msgSend_getIndexInCodemap_(self, v70, @"\\lbrack", v71, v72, v73);
  sub_18398DADC(v127, v133);
  LODWORD(v133) = objc_msgSend_getIndexInCodemap_(self, v78, @"\\rbrack", v79, v80, v81);
  sub_18398DADC(v127, v133);
  v86 = objc_msgSend_getIndexInCodemap_(self, v82, @"\\sum", v83, v84, v85);
  v122 = objc_msgSend_getIndexInCodemap_(self, v87, @"\\Sigma", v88, v89, v90);
  v133 = &v122;
  v95 = sub_18398D624(v130, v122);
  v96 = v95[3];
  v97 = v95[5];
  if (v97 == v96)
  {
    if (v97)
    {
      v95[4] = v96;
      operator delete(v96);
      v95[3] = 0;
      v95[4] = 0;
      v95[5] = 0;
    }

    operator new();
  }

  v98 = v95[4];
  if (v98 == v96)
  {
    *v98 = v86;
    v95[4] = &v98[v98 - v96 + 4];
  }

  else
  {
    *v96 = v86;
    v95[4] = (v96 + 4);
  }

  v99 = objc_msgSend_getIndexInCodemap_(self, v91, @"\\prod", v92, v93, v94);
  v122 = objc_msgSend_getIndexInCodemap_(self, v100, @"\\Pi", v101, v102, v103);
  v133 = &v122;
  v104 = sub_18398D624(v130, v122);
  v105 = v104[3];
  v106 = v104[5];
  if (v106 == v105)
  {
    if (v106)
    {
      v104[4] = v105;
      operator delete(v105);
      v104[3] = 0;
      v104[4] = 0;
      v104[5] = 0;
    }

    operator new();
  }

  v107 = v104[4];
  if (v107 == v105)
  {
    *v107 = v99;
    v104[4] = &v107[v107 - v105 + 4];
  }

  else
  {
    *v105 = v99;
    v104[4] = (v105 + 4);
  }

  sub_183989A20(v119, v127);
  if (a3 + 560 != v130)
  {
    *(a3 + 148) = v132;
    sub_18383D8D0(a3 + 560, v131[0], 0);
  }

  if (a3 + 600 != v119)
  {
    *(a3 + 158) = v121;
    sub_18383E010(a3 + 600, __p, 0);
  }

  v108 = __p;
  if (__p)
  {
    do
    {
      v109 = *v108;
      operator delete(v108);
      v108 = v109;
    }

    while (v109);
  }

  v110 = v119[0];
  v119[0] = 0;
  if (v110)
  {
    operator delete(v110);
  }

  v111 = v128[0];
  if (v128[0])
  {
    do
    {
      v112 = *v111;
      operator delete(v111);
      v111 = v112;
    }

    while (v112);
  }

  v113 = v127[0];
  v127[0] = 0;
  if (v113)
  {
    operator delete(v113);
  }

  v114 = v131[0];
  if (v131[0])
  {
    do
    {
      v116 = *v114;
      v117 = v114[3];
      if (v117)
      {
        v114[4] = v117;
        operator delete(v117);
      }

      operator delete(v114);
      v114 = v116;
    }

    while (v116);
  }

  v115 = v130[0];
  v130[0] = 0;
  if (v115)
  {
    operator delete(v115);
  }
}

- (void)setUpDecoderConfusableAlternatives:(void *)a3
{
  v257[3] = *MEMORY[0x1E69E9840];
  *__n = 0u;
  *v225 = 0u;
  v226 = 1065353216;
  LODWORD(v245) = objc_msgSend_getIndexInCodemap_(self, a2, @"1", v3, v4, v5);
  DWORD1(v245) = 1028443341;
  DWORD2(v245) = objc_msgSend_getIndexInCodemap_(self, v7, @"l", v8, v9, v10);
  HIDWORD(v245) = 1008981770;
  LODWORD(v246) = objc_msgSend_getIndexInCodemap_(self, v11, @"I", v12, v13, v14);
  DWORD1(v246) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v15, @"|", v16, v17, v18);
  v256 = v223;
  v19 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v19 + 3, &v245, &v246 + 1, 3uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v20, @"|", v21, v22, v23);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v24, @"1", v25, v26, v27);
  *&v245 = v223;
  v28 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v28 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v29, @"1", v30, v31, v32);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v33, @"/", v34, v35, v36);
  *&v245 = v223;
  v37 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v37 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v38, @".", v39, v40, v41);
  HIDWORD(v256) = 1022739087;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v42, @"\\cdot", v43, v44, v45);
  *&v245 = v223;
  v46 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v46 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v47, @"\\cdot", v48, v49, v50);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v51, @".", v52, v53, v54);
  *&v245 = v223;
  v55 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v55 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v56, @".", v57, v58, v59);
  HIDWORD(v256) = 1022739087;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v60, @",", v61, v62, v63);
  *&v245 = v223;
  v64 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v64 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v65, @",", v66, v67, v68);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v69, @".", v70, v71, v72);
  *&v245 = v223;
  v73 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v73 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v74, @"2", v75, v76, v77);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v78, @"z", v79, v80, v81);
  *&v245 = v223;
  v82 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v82 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v83, @"2", v84, v85, v86);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v87, @"Z", v88, v89, v90);
  *&v245 = v223;
  v91 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v91 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v92, @"5", v93, v94, v95);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v96, @"s", v97, v98, v99);
  *&v245 = v223;
  v100 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v100 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v101, @"5", v102, v103, v104);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v105, @"S", v106, v107, v108);
  *&v245 = v223;
  v109 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v109 + 3, &v256, v257, 1uLL);
  LODWORD(v245) = objc_msgSend_getIndexInCodemap_(self, v110, @"s", v111, v112, v113);
  DWORD1(v245) = 1000593162;
  DWORD2(v245) = objc_msgSend_getIndexInCodemap_(self, v114, @"S", v115, v116, v117);
  HIDWORD(v245) = 1000593162;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v118, @"5", v119, v120, v121);
  v256 = v223;
  v122 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v122 + 3, &v245, &v246, 2uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v123, @"6", v124, v125, v126);
  HIDWORD(v256) = 1022739087;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v127, @"b", v128, v129, v130);
  *&v245 = v223;
  v131 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v131 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v132, @"b", v133, v134, v135);
  HIDWORD(v256) = 1000593162;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v136, @"6", v137, v138, v139);
  *&v245 = v223;
  v140 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v140 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v141, @"9", v142, v143, v144);
  HIDWORD(v256) = 1008981770;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v145, @"g", v146, v147, v148);
  *&v245 = v223;
  v149 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v149 + 3, &v256, v257, 1uLL);
  LODWORD(v256) = objc_msgSend_getIndexInCodemap_(self, v150, @"g", v151, v152, v153);
  HIDWORD(v256) = 1000593162;
  LODWORD(v223[0]) = objc_msgSend_getIndexInCodemap_(self, v154, @"9", v155, v156, v157);
  *&v245 = v223;
  v158 = sub_18398DDD8(__n, v223[0]);
  sub_18398E0F8(v158 + 3, &v256, v257, 1uLL);
  IndexInCodemap = objc_msgSend_getIndexInCodemap_(self, v159, @"1", v160, v161, v162);
  v241 = objc_msgSend_getIndexInCodemap_(self, v163, @"|", v164, v165, v166);
  v242 = objc_msgSend_getIndexInCodemap_(self, v167, @"I", v168, v169, v170);
  v243 = objc_msgSend_getIndexInCodemap_(self, v171, @"l", v172, v173, v174);
  v244 = objc_msgSend_getIndexInCodemap_(self, v175, @"/", v176, v177, v178);
  v245 = 0u;
  v246 = 0u;
  v247 = 1065353216;
  sub_18383D490(&v245, &IndexInCodemap);
  sub_18383D490(&v245, &v241);
  sub_18383D490(&v245, &v242);
  sub_18383D490(&v245, &v243);
  sub_18383D490(&v245, &v244);
  v237 = objc_msgSend_getIndexInCodemap_(self, v179, @"2", v180, v181, v182);
  v238 = objc_msgSend_getIndexInCodemap_(self, v183, @"z", v184, v185, v186);
  v239 = objc_msgSend_getIndexInCodemap_(self, v187, @"Z", v188, v189, v190);
  memset(v248, 0, sizeof(v248));
  v249 = 1065353216;
  sub_18383D490(v248, &v237);
  sub_18383D490(v248, &v238);
  sub_18383D490(v248, &v239);
  v234 = objc_msgSend_getIndexInCodemap_(self, v191, @"5", v192, v193, v194);
  v235 = objc_msgSend_getIndexInCodemap_(self, v195, @"s", v196, v197, v198);
  v236 = objc_msgSend_getIndexInCodemap_(self, v199, @"S", v200, v201, v202);
  memset(v250, 0, sizeof(v250));
  v251 = 1065353216;
  sub_18383D490(v250, &v234);
  sub_18383D490(v250, &v235);
  sub_18383D490(v250, &v236);
  v232 = objc_msgSend_getIndexInCodemap_(self, v203, @"6", v204, v205, v206);
  v233 = objc_msgSend_getIndexInCodemap_(self, v207, @"b", v208, v209, v210);
  memset(v252, 0, sizeof(v252));
  v253 = 1065353216;
  sub_18383D490(v252, &v232);
  sub_18383D490(v252, &v233);
  v229 = objc_msgSend_getIndexInCodemap_(self, v211, @"9", v212, v213, v214);
  v230 = objc_msgSend_getIndexInCodemap_(self, v215, @"g", v216, v217, v218);
  v231 = objc_msgSend_getIndexInCodemap_(self, v219, @"q", v220, v221, v222);
  memset(v254, 0, sizeof(v254));
  v255 = 1065353216;
  sub_18383D490(v254, &v229);
  sub_18383D490(v254, &v230);
  sub_18383D490(v254, &v231);
  memset(v223, 0, sizeof(v223));
  v227 = v223;
  v228 = 0;
  operator new();
}

- (id)recognizeDrawing:(id)a3 beamSize:(int64_t)a4 shouldCancel:(id)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v63 = a3;
  v64 = a5;
  v73 = 0;
  objc_msgSend__extractFeaturesFromDrawing_error_(self, v7, v63, &v73, v8, v9, a4);
  v62 = v73;
  if (v62)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_msgSend_localizedDescription(v62, v15, v16, v17, v18, v19);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_ERROR, "An error occurred in the math model when extracting features: %@", &buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v21 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v21 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    v27 = objc_msgSend_localizedDescription(v62, v22, v23, v24, v25, v26);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v27;
    _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "An error occurred in the math model when extracting features: %@", &buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  if (!v64 || (v64[2]() & 1) == 0)
  {
    objc_msgSend__createCompressedInputImage_(self, v10, v74, v11, v12, v13);
    __p = 0;
    v71 = 0;
    v72 = 0;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = self->_codeMap;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v66, v83, 16, v29);
    if (v30)
    {
      v31 = *v67;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v67 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v66 + 1) + 8 * i);
          v42 = objc_msgSend_UTF8String(v36, v37, v38, v39, v40, v41);
          v43 = v42;
          v44 = v71;
          if (v71 >= v72)
          {
            v47 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 3) + 1;
            if (v47 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_18368964C();
            }

            if (0x5555555555555556 * ((v72 - __p) >> 3) > v47)
            {
              v47 = 0x5555555555555556 * ((v72 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v72 - __p) >> 3) >= 0x555555555555555)
            {
              v48 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v48 = v47;
            }

            p_p = &__p;
            if (v48)
            {
              if (v48 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_183688F00();
            }

            v49 = (8 * ((v71 - __p) >> 3));
            *&buf = 0;
            *(&buf + 1) = v49;
            v80 = v49;
            v81 = 0;
            v50 = strlen(v42);
            if (v50 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_183688FF0();
            }

            v51 = v50;
            if (v50 >= 0x17)
            {
              operator new();
            }

            *(8 * ((v71 - __p) >> 3) + 0x17) = v50;
            if (v50)
            {
              memmove(v49, v43, v50);
            }

            v49[v51] = 0;
            v35 = v80 + 24;
            v52 = (*(&buf + 1) - (v71 - __p));
            memcpy(v52, __p, v71 - __p);
            v53 = __p;
            __p = v52;
            v71 = v35;
            v72 = v81;
            if (v53)
            {
              operator delete(v53);
            }
          }

          else
          {
            v45 = strlen(v42);
            if (v45 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_183688FF0();
            }

            v46 = v45;
            if (v45 >= 0x17)
            {
              operator new();
            }

            v71[23] = v45;
            if (v45)
            {
              memmove(v44, v43, v45);
            }

            v44[v46] = 0;
            v35 = v44 + 24;
          }

          v71 = v35;
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v66, v83, 16, v34);
      }

      while (v30);
    }

    objc_msgSend_segmentationAttThreshold(self, v54, v55, v56, v57, v58);
    sub_1838302C8(&buf, &__p, v59);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v74[0])
  {
    v74[1] = v74[0];
    operator delete(v74[0]);
  }

  return 0;
}

- (FeatureArray)_extractFeaturesFromDrawing:(SEL)a3 error:(id)a4
{
  v6 = a4;
  v12 = objc_msgSend_renderSymbolSize(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_minInputHeight(self, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_maxInputHeight(self, v19, v20, v21, v22, v23);
  v38 = 1;
  v40 = v18;
  v41 = objc_msgSend_minInputWidth(self, v25, v26, v27, v28, v29);
  v42 = v24;
  v43 = objc_msgSend_maxInputWidth(self, v30, v31, v32, v33, v34);
  v37 = &unk_1EF1BF8B8;
  v44 = v12;
  v39 = vmovn_s64(*&self->_padToMultipleOf);
  sub_1837BD608(v6, MEMORY[0x1E695EFF8], 0, &v36);
  sub_183969890(&v37, &v36);
}

- (vector<std::vector<std::unordered_map<int,)_createCompressedInputImage:()std:(int>>>> *__return_ptr)retstr :(CHEncoderDecoderNetwork *)self allocator<std:(SEL)a3 :(const void *)a4 vector<std::unordered_map<int
{
  encoderCompressionFactor = self->_encoderCompressionFactor;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v5 = **a4 / encoderCompressionFactor;
  if (v5 << 32)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18368964C();
  }

  operator new();
}

- (void)filterOutAlternatives:(void *)a3 codemap:(const void *)a4
{
  v4 = *a3;
  v5 = *(a3 + 1);
  v6 = v5 - *a3;
  if (v5 != *a3)
  {
    v8 = *(v4 + 80) - *(v4 + 72);
    if (v8)
    {
      v9 = *(v4 + 192);
      v10 = v9 / pow((v8 >> 2), 0.330993);
      if (v6 < 249)
      {
        return;
      }
    }

    else
    {
      v10 = *(v4 + 192);
      if (v6 < 249)
      {
        return;
      }
    }

    v11 = v10 + -2.30258509;
    v12 = 0xEF7BDEF7BDEF7BDFLL * (v6 >> 3);
    do
    {
      v14 = *a3;
      v15 = *a3 + 248 * (v12 - 1);
      v16 = *(v15 + 80) - *(v15 + 72);
      if (v16)
      {
        v17 = *(v15 + 192);
        v18 = v17 / pow((v16 >> 2), 0.330993);
        if (v18 < v11)
        {
          goto LABEL_12;
        }
      }

      else if (*(v15 + 192) < v11)
      {
LABEL_12:
        v19 = v14 + 248 * (v12 - 1);
        if (v19 + 248 != v5)
        {
          do
          {
            v20 = v19 + 248;
            sub_183842EDC(v19, v19 + 248);
            v21 = v19 + 496;
            v19 += 248;
          }

          while (v21 != v5);
          v5 = *(a3 + 1);
          v19 = v20;
        }

        while (v5 != v19)
        {
          v5 -= 248;
          sub_18383AB38(v5);
        }

        *(a3 + 1) = v19;
        v5 = v19;
      }
    }

    while (v12-- > 2);
  }
}

- (id)_bestPathTokensFromDecodingStates:(const void *)a3 drawing:(id)a4 codemap:(const void *)a5
{
  v12 = a4;
  if (*(a3 + 1) == *a3)
  {
    v56 = 0;
  }

  else
  {
    v58 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = sub_18398D0C0;
    v60[3] = &unk_1E6DE07B8;
    v62 = a5;
    v61 = v12;
    v17 = MEMORY[0x1865E6810](v60);
    v18 = *a3;
    if (*(a3 + 1) != *a3)
    {
      v19 = 0;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((*(v18 + 248 * v19 + 56) - *(v18 + 248 * v19 + 48)) >> 3) != (*(v18 + 248 * v19 + 80) - *(v18 + 248 * v19 + 72)) >> 2)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v20 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "Predicted sequence and segmentation have different length", buf, 2u);
          }

          v18 = *a3;
          if (0xAAAAAAAAAAAAAAABLL * ((*(*a3 + 248 * v19 + 56) - *(*a3 + 248 * v19 + 48)) >> 3) != (*(*a3 + 248 * v19 + 80) - *(*a3 + 248 * v19 + 72)) >> 2)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v21 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "Predicted sequence and segmentation have different length", buf, 2u);
            }

            v18 = *a3;
          }
        }

        v26 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v13, (*(v18 + 248 * v19 + 80) - *(v18 + 248 * v19 + 72)) >> 2, v14, v15, v16);
        v28 = *a3;
        if (((*(*a3 + 248 * v19 + 80) - *(*a3 + 248 * v19 + 72)) >> 2) >= 1)
        {
          v29 = 0;
          do
          {
            v30 = v28 + 248 * v19;
            v33 = *(v30 + 176);
            v31 = v30 + 176;
            v32 = v33;
            v27.n128_u64[0] = 0;
            if (!v33)
            {
              goto LABEL_25;
            }

            v34 = v31;
            v35 = v32;
            do
            {
              v36 = *(v35 + 28);
              v37 = v29 <= v36;
              v38 = v29 > v36;
              if (v37)
              {
                v34 = v35;
              }

              v35 = *(v35 + 8 * v38);
            }

            while (v35);
            if (v34 != v31 && v29 >= *(v34 + 28))
            {
              v45 = v31;
              do
              {
                v46 = *(v32 + 28);
                v37 = v29 <= v46;
                v47 = v29 > v46;
                if (v37)
                {
                  v45 = v32;
                }

                v32 = *(v32 + 8 * v47);
              }

              while (v32);
              if (v45 == v31 || v29 < *(v45 + 28))
              {
                v45 = v31;
              }

              v48 = *a5 + 24 * *(v45 + 32);
              if (*(v48 + 23) < 0)
              {
                v48 = *v48;
              }

              v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v22, v48, v23, v24, v25, 0.0);
              v28 = *a3;
              v49 = *a3 + 248 * v19;
              v52 = *(v49 + 176);
              v50 = v49 + 176;
              v51 = v52;
              if (!v52)
              {
                goto LABEL_46;
              }

              v53 = v50;
              do
              {
                v54 = *(v51 + 28);
                v37 = v29 <= v54;
                v55 = v29 > v54;
                if (v37)
                {
                  v53 = v51;
                }

                v51 = *(v51 + 8 * v55);
              }

              while (v51);
              if (v53 == v50 || v29 < *(v53 + 28))
              {
LABEL_46:
                v53 = v50;
              }

              v27.n128_f64[0] = *(v53 + 36);
            }

            else
            {
LABEL_25:
              v39 = 0;
            }

            v40 = (v17)[2](v17, v28 + 248 * v19, v29, v39, v27);
            objc_msgSend_addObject_(v26, v41, v40, v42, v43, v44);

            ++v29;
            v28 = *a3;
          }

          while (v29 < ((*(*a3 + 248 * v19 + 80) - *(*a3 + 248 * v19 + 72)) >> 2));
        }

        objc_msgSend_addObject_(v58, v22, v26, v23, v24, v25);

        ++v19;
        v18 = *a3;
      }

      while (v19 < 0xEF7BDEF7BDEF7BDFLL * ((*(a3 + 1) - *a3) >> 3));
    }

    v56 = v58;
  }

  return v56;
}

@end