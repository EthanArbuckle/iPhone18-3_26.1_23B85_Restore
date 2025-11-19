@interface CHDocumentLayoutAnalysisResult
+ (void)mergeTileStrokeClassificationMatrix:(const void *)a3 tileSparseAdjacencyMatrix:(const void *)a4 intoMergedStrokeClassificationMatrix:(void *)a5 mergedAdjacencyMatrix:(void *)a6 strokeIndexMapping:(const void *)a7 tileOverlapStrokeIndexes:(const void *)a8;
- (BOOL)isEqual:(id)a3;
- (CHDocumentLayoutAnalysisResult)initWithCoder:(id)a3;
- (CHDocumentLayoutAnalysisResult)initWithLastDocumentLayoutAnalysisResult:(id)a3 affectedLayoutAnalysisResultsPerTile:(id)a4 allLayoutAnalysisResultsPerTile:(id)a5 updatedStrokeIdentifiers:(id)a6 orderedStrokeIdentifiers:(id)a7 strokeBoundsPerStrokeIdentifier:(id)a8;
- (CHDocumentLayoutAnalysisResult)initWithLayoutAnalysisResultsPerTile:(id)a3 orderedStrokeIdentifiers:(id)a4 strokeBoundsPerStrokeIdentifier:(id)a5;
- (id).cxx_construct;
- (id)debugDescription;
- (id)description;
- (id)probabilityByScriptClassificationsForStrokeIndex:(unint64_t)a3 scriptCodeMap:(id)a4;
- (id)rawScriptClassificationResultForStrokeIndex:(unint64_t)a3 scriptCodeMap:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHDocumentLayoutAnalysisResult

- (CHDocumentLayoutAnalysisResult)initWithLayoutAnalysisResultsPerTile:(id)a3 orderedStrokeIdentifiers:(id)a4 strokeBoundsPerStrokeIdentifier:(id)a5
{
  v180 = *MEMORY[0x1E69E9840];
  v146 = a3;
  v153 = a4;
  v145 = a5;
  v172.receiver = self;
  v172.super_class = CHDocumentLayoutAnalysisResult;
  v147 = [(CHDocumentLayoutAnalysisResult *)&v172 init];
  if (v147)
  {
    objc_storeStrong(&v147->_layoutAnalysisResultsPerTile, a3);
    objc_storeStrong(&v147->_strokeBoundsPerStrokeIdentifier, a5);
    v147->_hash = 0x7FFFFFFFFFFFFFFFLL;
    v154 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10, v11, v12, v13);
    for (i = 0; i < objc_msgSend_count(v153, v14, v15, v16, v17, v18); ++i)
    {
      v25 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v20, i, v22, v23, v24);
      v30 = objc_msgSend_objectAtIndexedSubscript_(v153, v26, i, v27, v28, v29);
      objc_msgSend_setObject_forKeyedSubscript_(v154, v31, v25, v30, v32, v33);
    }

    v34 = objc_msgSend_count(v153, v20, v21, v22, v23, v24);
    __p[0] = 0;
    __p[1] = 0;
    v171 = 0;
    *buf = __p;
    buf[8] = 0;
    if (v34)
    {
      if (v34 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_18368964C();
    }

    v40 = objc_msgSend_count(v153, v35, v36, v37, v38, v39);
    v168 = 0uLL;
    v169 = 0;
    *buf = &v168;
    buf[8] = 0;
    if (v40)
    {
      if (v40 < 0x666666666666667)
      {
        operator new();
      }

      sub_18368964C();
    }

    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    obj = v146;
    v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v164, v179, 16, v42);
    if (v149)
    {
      v148 = *v165;
      do
      {
        for (j = 0; j != v149; ++j)
        {
          if (*v165 != v148)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v164 + 1) + 8 * j);
          v152 = objc_msgSend_objectForKeyedSubscript_(obj, v43, v47, v44, v45, v46);
          v163[0] = 0;
          v163[1] = 0;
          v162 = v163;
          v161[0] = 0;
          v161[1] = 0;
          v160 = v161;
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v155 = objc_msgSend_orderedStrokeIdentifiers(v47, v48, v49, v50, v51, v52);
          v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v53, &v156, v178, 16, v54);
          if (v60)
          {
            v61 = 0;
            v62 = *v157;
            do
            {
              for (k = 0; k != v60; ++k)
              {
                if (*v157 != v62)
                {
                  objc_enumerationMutation(v155);
                }

                v64 = *(*(&v156 + 1) + 8 * k);
                v65 = objc_msgSend_contextStrokeIdentifiers(v47, v55, v56, v57, v58, v59);
                v70 = objc_msgSend_containsObject_(v65, v66, v64, v67, v68, v69);

                if ((v70 & 1) == 0)
                {
                  v71 = objc_msgSend_objectForKeyedSubscript_(v154, v55, v64, v57, v58, v59);
                  v77 = objc_msgSend_integerValue(v71, v72, v73, v74, v75, v76);

                  v83 = v163[0];
LABEL_26:
                  if (!v83)
                  {
LABEL_30:
                    operator new();
                  }

                  while (1)
                  {
                    v84 = v83;
                    v85 = v83[4];
                    if (v61 < v85)
                    {
                      v83 = *v84;
                      goto LABEL_26;
                    }

                    if (v85 >= v61)
                    {
                      break;
                    }

                    v83 = v84[1];
                    if (!v83)
                    {
                      goto LABEL_30;
                    }
                  }

                  v84[5] = v77;
                  v86 = objc_msgSend_overlapStrokeIdentifiers(v47, v78, v79, v80, v81, v82);
                  v91 = objc_msgSend_containsObject_(v86, v87, v64, v88, v89, v90);

                  if (v91)
                  {
                    for (m = v161[0]; m; m = *v93)
                    {
                      while (1)
                      {
                        v93 = m;
                        v94 = m[4];
                        if (v61 < v94)
                        {
                          break;
                        }

                        if (v94 >= v61)
                        {
                          goto LABEL_39;
                        }

                        m = v93[1];
                        if (!m)
                        {
                          goto LABEL_38;
                        }
                      }
                    }

LABEL_38:
                    operator new();
                  }

LABEL_39:
                  ++v61;
                  if (v77 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v95 = qword_1EA84DC50[0];
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                    {
                      v101 = objc_msgSend_count(v153, v96, v97, v98, v99, v100);
                      *buf = 138412802;
                      *&buf[4] = v64;
                      v174 = 2112;
                      v175 = v47;
                      v176 = 2048;
                      v177 = v101;
                      _os_log_impl(&dword_18366B000, v95, OS_LOG_TYPE_ERROR, "Stroke identifier %@ from tile %@ not found in provided %lu ordered stroke identifiers.", buf, 0x20u);
                    }

                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v102 = qword_1EA84DC50[0];
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
                    {
                      v108 = objc_msgSend_count(v153, v103, v104, v105, v106, v107);
                      *buf = 138412802;
                      *&buf[4] = v64;
                      v174 = 2112;
                      v175 = v47;
                      v176 = 2048;
                      v177 = v108;
                      _os_log_impl(&dword_18366B000, v102, OS_LOG_TYPE_FAULT, "Stroke identifier %@ from tile %@ not found in provided %lu ordered stroke identifiers.", buf, 0x20u);
                    }
                  }
                }
              }

              v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v55, &v156, v178, 16, v59);
            }

            while (v60);
          }

          v114 = objc_msgSend_strokeClassificationMatrix(v152, v109, v110, v111, v112, v113);
          v120 = objc_msgSend_sparseAdjacencyMatrix(v152, v115, v116, v117, v118, v119);
          objc_msgSend_mergeTileStrokeClassificationMatrix_tileSparseAdjacencyMatrix_intoMergedStrokeClassificationMatrix_mergedAdjacencyMatrix_strokeIndexMapping_tileOverlapStrokeIndexes_(CHDocumentLayoutAnalysisResult, v121, v114, v120, __p, &v168, &v162, &v160);
          sub_18368D56C(&v160, v161[0]);
          sub_18368D56C(&v162, v163[0]);
        }

        v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v164, v179, 16, v46);
      }

      while (v149);
    }

    v122 = v147;
    p_begin = &v147->_strokeClassificationMatrix.__begin_;
    begin = v147->_strokeClassificationMatrix.__begin_;
    if (begin)
    {
      end = v147->_strokeClassificationMatrix.__end_;
      v126 = v147->_strokeClassificationMatrix.__begin_;
      if (end != begin)
      {
        v127 = v147->_strokeClassificationMatrix.__end_;
        do
        {
          v129 = *(v127 - 3);
          v127 -= 24;
          v128 = v129;
          if (v129)
          {
            *(end - 2) = v128;
            operator delete(v128);
          }

          end = v127;
        }

        while (v127 != begin);
        v126 = *p_begin;
      }

      v122 = v147;
      v147->_strokeClassificationMatrix.__end_ = begin;
      operator delete(v126);
      *p_begin = 0;
      v147->_strokeClassificationMatrix.__end_ = 0;
      v147->_strokeClassificationMatrix.__cap_ = 0;
    }

    p_sparseAdjacencyMatrix = &v122->_sparseAdjacencyMatrix;
    v131 = v122->_sparseAdjacencyMatrix.__begin_;
    *&v122->_strokeClassificationMatrix.__begin_ = *__p;
    v122->_strokeClassificationMatrix.__cap_ = v171;
    __p[0] = 0;
    __p[1] = 0;
    v171 = 0;
    if (v131)
    {
      v132 = v122->_sparseAdjacencyMatrix.__end_;
      v133 = v131;
      if (v132 != v131)
      {
        do
        {
          v134 = *(v132 - 3);
          if (v134)
          {
            do
            {
              v135 = *v134;
              operator delete(v134);
              v134 = v135;
            }

            while (v135);
          }

          v137 = *(v132 - 5);
          v132 -= 5;
          v136 = v137;
          *v132 = 0;
          if (v137)
          {
            operator delete(v136);
          }
        }

        while (v132 != v131);
        v133 = p_sparseAdjacencyMatrix->__begin_;
      }

      v147->_sparseAdjacencyMatrix.__end_ = v131;
      operator delete(v133);
      p_sparseAdjacencyMatrix->__begin_ = 0;
      p_sparseAdjacencyMatrix->__end_ = 0;
      p_sparseAdjacencyMatrix->__cap_ = 0;
      v138 = __p[0];
      *&v147->_sparseAdjacencyMatrix.__begin_ = v168;
      v147->_sparseAdjacencyMatrix.__cap_ = v169;
      if (v138)
      {
        v139 = __p[1];
        v140 = v138;
        if (__p[1] != v138)
        {
          v141 = __p[1];
          do
          {
            v143 = *(v141 - 3);
            v141 -= 24;
            v142 = v143;
            if (v143)
            {
              *(v139 - 2) = v142;
              operator delete(v142);
            }

            v139 = v141;
          }

          while (v141 != v138);
          v140 = __p[0];
        }

        __p[1] = v138;
        operator delete(v140);
      }
    }

    else
    {
      *&v122->_sparseAdjacencyMatrix.__begin_ = v168;
      v122->_sparseAdjacencyMatrix.__cap_ = v169;
    }
  }

  return v147;
}

- (CHDocumentLayoutAnalysisResult)initWithLastDocumentLayoutAnalysisResult:(id)a3 affectedLayoutAnalysisResultsPerTile:(id)a4 allLayoutAnalysisResultsPerTile:(id)a5 updatedStrokeIdentifiers:(id)a6 orderedStrokeIdentifiers:(id)a7 strokeBoundsPerStrokeIdentifier:(id)a8
{
  v293 = *MEMORY[0x1E69E9840];
  v248 = a3;
  v247 = a4;
  v245 = a5;
  v249 = a6;
  v256 = a7;
  v246 = a8;
  v283.receiver = self;
  v283.super_class = CHDocumentLayoutAnalysisResult;
  v250 = [(CHDocumentLayoutAnalysisResult *)&v283 init];

  v14 = v250;
  if (v250)
  {
    objc_storeStrong(&v250->_layoutAnalysisResultsPerTile, a5);
    objc_storeStrong(&v250->_strokeBoundsPerStrokeIdentifier, a8);
    v250->_hash = 0x7FFFFFFFFFFFFFFFLL;
    v257 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v15, v16, v17, v18, v19);
    for (i = 0; i < objc_msgSend_count(v256, v20, v21, v22, v23, v24); ++i)
    {
      v31 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v26, i, v28, v29, v30);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v256, v32, i, v33, v34, v35);
      objc_msgSend_setObject_forKeyedSubscript_(v257, v37, v31, v36, v38, v39);
    }

    *__p = 0u;
    *v281 = 0u;
    v282 = 1.0;
    prime = vcvtps_u32_f32(objc_msgSend_count(v249, v26, v27, v28, v29, v30) / 1.0);
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    if (prime > __p[1])
    {
      goto LABEL_10;
    }

    if (prime < __p[1])
    {
      v41 = vcvtps_u32_f32(v281[1] / v282);
      if (__p[1] < 3 || (v42 = vcnt_s8(__p[1]), v42.i16[0] = vaddlv_u8(v42), v42.u32[0] > 1uLL))
      {
        v41 = std::__next_prime(v41);
      }

      else
      {
        v43 = 1 << -__clz(v41 - 1);
        if (v41 >= 2)
        {
          v41 = v43;
        }
      }

      if (prime <= v41)
      {
        prime = v41;
      }

      if (prime < __p[1])
      {
LABEL_10:
        sub_183689098(__p, prime);
      }
    }

    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    obj = v249;
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v276, v286, 16, v45);
    if (v50)
    {
      v51 = *v277;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v277 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = objc_msgSend_objectForKeyedSubscript_(v257, v46, *(*(&v276 + 1) + 8 * j), v47, v48, v49);
          v59 = objc_msgSend_integerValue(v53, v54, v55, v56, v57, v58);
          if (!__p[1])
          {
            goto LABEL_46;
          }

          v60 = vcnt_s8(__p[1]);
          v60.i16[0] = vaddlv_u8(v60);
          if (v60.u32[0] > 1uLL)
          {
            v61 = v59;
            if (__p[1] <= v59)
            {
              v61 = v59 % __p[1];
            }
          }

          else
          {
            v61 = (__p[1] - 1) & v59;
          }

          v62 = *(__p[0] + v61);
          if (!v62 || (v63 = *v62) == 0)
          {
LABEL_46:
            operator new();
          }

          if (v60.u32[0] < 2uLL)
          {
            while (1)
            {
              v65 = v63[1];
              if (v65 == v59)
              {
                if (v63[2] == v59)
                {
                  goto LABEL_47;
                }
              }

              else if ((v65 & (__p[1] - 1)) != v61)
              {
                goto LABEL_46;
              }

              v63 = *v63;
              if (!v63)
              {
                goto LABEL_46;
              }
            }
          }

          while (1)
          {
            v64 = v63[1];
            if (v64 == v59)
            {
              break;
            }

            if (v64 >= __p[1])
            {
              v64 %= __p[1];
            }

            if (v64 != v61)
            {
              goto LABEL_46;
            }

LABEL_36:
            v63 = *v63;
            if (!v63)
            {
              goto LABEL_46;
            }
          }

          if (v63[2] != v59)
          {
            goto LABEL_36;
          }

LABEL_47:
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v276, v286, 16, v49);
      }

      while (v50);
    }

    v71 = objc_msgSend_strokeClassificationMatrix(v248, v66, v67, v68, v69, v70);
    v274[0] = 0;
    v274[1] = 0;
    v275 = 0;
    v77 = *v71;
    v78 = v71[1];
    *buf = v274;
    buf[8] = 0;
    if (v78 != v77)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v78 - v77) >> 3) <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_18368964C();
    }

    v79 = objc_msgSend_count(v256, v72, v73, v74, v75, v76);
    v85 = v274[1];
    v86 = 0xAAAAAAAAAAAAAAABLL * ((v274[1] - v274[0]) >> 3);
    v87 = v79 - v86;
    if (v79 <= v86)
    {
      if (v79 < v86)
      {
        v90 = v274[0] + 24 * v79;
        if (v274[1] != v90)
        {
          v91 = v274[1];
          do
          {
            v93 = *(v91 - 3);
            v91 -= 24;
            v92 = v93;
            if (v93)
            {
              *(v85 - 2) = v92;
              operator delete(v92);
            }

            v85 = v91;
          }

          while (v91 != v90);
        }

        v274[1] = v90;
      }
    }

    else
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v275 - v274[1]) >> 3) < v87)
      {
        if (v79 <= 0xAAAAAAAAAAAAAAALL)
        {
          v88 = 0x5555555555555556 * ((v275 - v274[0]) >> 3);
          if (v88 <= v79)
          {
            v88 = v79;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v275 - v274[0]) >> 3) >= 0x555555555555555)
          {
            v89 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v89 = v88;
          }

          if (v89 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_183688F00();
        }

        sub_18368964C();
      }

      bzero(v274[1], 24 * ((24 * v87 - 24) / 0x18) + 24);
      v274[1] = &v85[3 * ((24 * v87 - 24) / 0x18) + 3];
    }

    v94 = objc_msgSend_sparseAdjacencyMatrix(v248, v80, v81, v82, v83, v84);
    v272 = 0uLL;
    v273 = 0;
    v100 = *v94;
    v101 = v94[1];
    *buf = &v272;
    buf[8] = 0;
    if (v101 != v100)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v101 - v100) >> 3) <= 0x666666666666666)
      {
        operator new();
      }

      sub_18368964C();
    }

    v102 = objc_msgSend_count(v256, v95, v96, v97, v98, v99);
    v103 = *(&v272 + 1);
    v104 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v272 + 1) - v272) >> 3);
    v105 = v102 - v104;
    if (v102 <= v104)
    {
      if (v102 < v104)
      {
        v108 = v272 + 40 * v102;
        while (v103 != v108)
        {
          v109 = *(v103 - 24);
          if (v109)
          {
            do
            {
              v110 = *v109;
              operator delete(v109);
              v109 = v110;
            }

            while (v110);
          }

          v112 = *(v103 - 40);
          v103 -= 40;
          v111 = v112;
          *v103 = 0;
          if (v112)
          {
            operator delete(v111);
          }
        }

        *(&v272 + 1) = v108;
      }
    }

    else
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v273 - *(&v272 + 1)) >> 3) < v105)
      {
        if (v102 <= 0x666666666666666)
        {
          v106 = 0x999999999999999ALL * ((v273 - v272) >> 3);
          if (v106 <= v102)
          {
            v106 = v102;
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v273 - v272) >> 3) >= 0x333333333333333)
          {
            v107 = 0x666666666666666;
          }

          else
          {
            v107 = v106;
          }

          v292 = &v272;
          if (v107 <= 0x666666666666666)
          {
            operator new();
          }

          sub_183688F00();
        }

        sub_18368964C();
      }

      v113 = *(&v272 + 1) + 40 * v105;
      do
      {
        *v103 = 0uLL;
        *(v103 + 16) = 0uLL;
        *(v103 + 32) = 1065353216;
        v103 += 40;
      }

      while (v103 != v113);
      *(&v272 + 1) = v113;
    }

    v114 = v281[0];
    if (v281[0])
    {
LABEL_97:
      v115 = (v272 + 40 * v114[2]);
      v116 = v115[2];
      if (!v116)
      {
        goto LABEL_96;
      }

      v117 = __p[1];
      if (!__p[1])
      {
        goto LABEL_96;
      }

      while (1)
      {
        if (!*&v117)
        {
          goto LABEL_100;
        }

        v119 = v116[2];
        v120 = vcnt_s8(v117);
        v120.i16[0] = vaddlv_u8(v120);
        if (v120.u32[0] > 1uLL)
        {
          v121 = v116[2];
          if (v119 >= *&v117)
          {
            v121 = v119 % *&v117;
          }
        }

        else
        {
          v121 = v119 & (*&v117 - 1);
        }

        v122 = *(__p[0] + v121);
        if (!v122 || (v123 = *v122) == 0)
        {
LABEL_100:
          v118 = *v116;
          if (!*v116)
          {
            goto LABEL_96;
          }

          goto LABEL_101;
        }

        if (v120.u32[0] < 2uLL)
        {
          v124 = *&v117 - 1;
          while (1)
          {
            v126 = v123[1];
            if (v126 == v119)
            {
              if (v123[2] == v119)
              {
                goto LABEL_123;
              }
            }

            else if ((v126 & v124) != v121)
            {
              goto LABEL_100;
            }

            v123 = *v123;
            if (!v123)
            {
              goto LABEL_100;
            }
          }
        }

        while (1)
        {
          v125 = v123[1];
          if (v125 == v119)
          {
            break;
          }

          if (v125 >= *&v117)
          {
            v125 %= *&v117;
          }

          if (v125 != v121)
          {
            goto LABEL_100;
          }

LABEL_112:
          v123 = *v123;
          if (!v123)
          {
            goto LABEL_100;
          }
        }

        if (v123[2] != v119)
        {
          goto LABEL_112;
        }

LABEL_123:
        v127 = v115[1];
        v128 = v116[1];
        v129 = vcnt_s8(v127);
        v129.i16[0] = vaddlv_u8(v129);
        if (v129.u32[0] > 1uLL)
        {
          if (v128 >= *&v127)
          {
            v128 %= *&v127;
          }
        }

        else
        {
          v128 &= *&v127 - 1;
        }

        v118 = *v116;
        v130 = *v115;
        v131 = *(*v115 + 8 * v128);
        do
        {
          v132 = v131;
          v131 = *v131;
        }

        while (v131 != v116);
        if (v132 == v115 + 2)
        {
          goto LABEL_233;
        }

        v133 = v132[1];
        if (v129.u32[0] > 1uLL)
        {
          if (v133 >= *&v127)
          {
            v133 %= *&v127;
          }
        }

        else
        {
          v133 &= *&v127 - 1;
        }

        v134 = *v116;
        if (v133 == v128)
        {
LABEL_142:
          if (v134)
          {
            v135 = v134[1];
            goto LABEL_144;
          }
        }

        else
        {
LABEL_233:
          if (!v118)
          {
            goto LABEL_141;
          }

          v135 = v118[1];
          if (v129.u32[0] > 1uLL)
          {
            v136 = v118[1];
            if (v135 >= *&v127)
            {
              v136 = v135 % *&v127;
            }
          }

          else
          {
            v136 = v135 & (*&v127 - 1);
          }

          v134 = *v116;
          if (v136 != v128)
          {
LABEL_141:
            *(v130 + 8 * v128) = 0;
            v134 = *v116;
            goto LABEL_142;
          }

LABEL_144:
          if (v129.u32[0] > 1uLL)
          {
            if (v135 >= *&v127)
            {
              v135 %= *&v127;
            }
          }

          else
          {
            v135 &= *&v127 - 1;
          }

          if (v135 != v128)
          {
            *(v130 + 8 * v135) = v132;
            v134 = *v116;
          }
        }

        *v132 = v134;
        *v116 = 0;
        --v115[3];
        operator delete(v116);
        if (!v118)
        {
LABEL_96:
          v114 = *v114;
          if (!v114)
          {
            break;
          }

          goto LABEL_97;
        }

LABEL_101:
        v117 = __p[1];
        v116 = v118;
      }
    }

    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v253 = v247;
    v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v253, v137, &v268, v285, 16, v138);
    if (v252)
    {
      v251 = *v269;
      do
      {
        for (k = 0; k != v252; ++k)
        {
          if (*v269 != v251)
          {
            objc_enumerationMutation(v253);
          }

          v143 = *(*(&v268 + 1) + 8 * k);
          v255 = objc_msgSend_objectForKeyedSubscript_(v253, v139, v143, v140, v141, v142);
          v267[0] = 0;
          v267[1] = 0;
          v266 = v267;
          v265[0] = 0;
          v265[1] = 0;
          v264 = v265;
          v260 = 0u;
          v261 = 0u;
          v262 = 0u;
          v263 = 0u;
          obja = objc_msgSend_orderedStrokeIdentifiers(v143, v144, v145, v146, v147, v148);
          v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v149, &v260, v284, 16, v150);
          if (v156)
          {
            v157 = 0;
            v158 = *v261;
            do
            {
              for (m = 0; m != v156; ++m)
              {
                if (*v261 != v158)
                {
                  objc_enumerationMutation(obja);
                }

                v160 = *(*(&v260 + 1) + 8 * m);
                v161 = objc_msgSend_contextStrokeIdentifiers(v143, v151, v152, v153, v154, v155);
                v166 = objc_msgSend_containsObject_(v161, v162, v160, v163, v164, v165);

                if ((v166 & 1) == 0)
                {
                  v167 = objc_msgSend_objectForKeyedSubscript_(v257, v151, v160, v153, v154, v155);
                  v173 = objc_msgSend_integerValue(v167, v168, v169, v170, v171, v172);

                  v179 = v267[0];
LABEL_167:
                  if (!v179)
                  {
LABEL_171:
                    operator new();
                  }

                  while (1)
                  {
                    v180 = v179;
                    v181 = v179[4];
                    if (v157 < v181)
                    {
                      v179 = *v180;
                      goto LABEL_167;
                    }

                    if (v181 >= v157)
                    {
                      break;
                    }

                    v179 = v180[1];
                    if (!v179)
                    {
                      goto LABEL_171;
                    }
                  }

                  v180[5] = v173;
                  v182 = objc_msgSend_overlapStrokeIdentifiers(v143, v174, v175, v176, v177, v178);
                  v187 = objc_msgSend_containsObject_(v182, v183, v160, v184, v185, v186);

                  if (v187)
                  {
                    for (n = v265[0]; n; n = *v189)
                    {
                      while (1)
                      {
                        v189 = n;
                        v190 = n[4];
                        if (v157 < v190)
                        {
                          break;
                        }

                        if (v190 >= v157)
                        {
                          goto LABEL_180;
                        }

                        n = v189[1];
                        if (!n)
                        {
                          goto LABEL_179;
                        }
                      }
                    }

LABEL_179:
                    operator new();
                  }

LABEL_180:
                  ++v157;
                  if (v173 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v191 = qword_1EA84DC50[0];
                    if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                    {
                      v197 = objc_msgSend_count(v256, v192, v193, v194, v195, v196);
                      *buf = 138412802;
                      *&buf[4] = v160;
                      v288 = 2112;
                      v289 = v143;
                      v290 = 2048;
                      v291 = v197;
                      _os_log_impl(&dword_18366B000, v191, OS_LOG_TYPE_ERROR, "Stroke identifier %@ from tile %@ not found in provided %lu ordered stroke identifiers.", buf, 0x20u);
                    }

                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v198 = qword_1EA84DC50[0];
                    if (os_log_type_enabled(v198, OS_LOG_TYPE_FAULT))
                    {
                      v204 = objc_msgSend_count(v256, v199, v200, v201, v202, v203);
                      *buf = 138412802;
                      *&buf[4] = v160;
                      v288 = 2112;
                      v289 = v143;
                      v290 = 2048;
                      v291 = v204;
                      _os_log_impl(&dword_18366B000, v198, OS_LOG_TYPE_FAULT, "Stroke identifier %@ from tile %@ not found in provided %lu ordered stroke identifiers.", buf, 0x20u);
                    }
                  }
                }
              }

              v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v151, &v260, v284, 16, v155);
            }

            while (v156);
          }

          v210 = objc_msgSend_strokeClassificationMatrix(v255, v205, v206, v207, v208, v209);
          v216 = objc_msgSend_sparseAdjacencyMatrix(v255, v211, v212, v213, v214, v215);
          objc_msgSend_mergeTileStrokeClassificationMatrix_tileSparseAdjacencyMatrix_intoMergedStrokeClassificationMatrix_mergedAdjacencyMatrix_strokeIndexMapping_tileOverlapStrokeIndexes_(CHDocumentLayoutAnalysisResult, v217, v210, v216, v274, &v272, &v266, &v264);
          sub_18368D56C(&v264, v265[0]);
          sub_18368D56C(&v266, v267[0]);
        }

        v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v253, v139, &v268, v285, 16, v142);
      }

      while (v252);
    }

    v218 = v250;
    p_begin = &v250->_strokeClassificationMatrix.__begin_;
    begin = v250->_strokeClassificationMatrix.__begin_;
    if (begin)
    {
      end = v250->_strokeClassificationMatrix.__end_;
      v222 = v250->_strokeClassificationMatrix.__begin_;
      if (end != begin)
      {
        v223 = v250->_strokeClassificationMatrix.__end_;
        do
        {
          v225 = *(v223 - 3);
          v223 -= 24;
          v224 = v225;
          if (v225)
          {
            *(end - 2) = v224;
            operator delete(v224);
          }

          end = v223;
        }

        while (v223 != begin);
        v222 = *p_begin;
      }

      v218 = v250;
      v250->_strokeClassificationMatrix.__end_ = begin;
      operator delete(v222);
      *p_begin = 0;
      v250->_strokeClassificationMatrix.__end_ = 0;
      v250->_strokeClassificationMatrix.__cap_ = 0;
    }

    p_sparseAdjacencyMatrix = &v218->_sparseAdjacencyMatrix;
    v227 = v218->_sparseAdjacencyMatrix.__begin_;
    *&v218->_strokeClassificationMatrix.__begin_ = *v274;
    v218->_strokeClassificationMatrix.__cap_ = v275;
    v274[0] = 0;
    v274[1] = 0;
    v275 = 0;
    if (v227)
    {
      v228 = v218->_sparseAdjacencyMatrix.__end_;
      v229 = v227;
      if (v228 != v227)
      {
        do
        {
          v230 = *(v228 - 3);
          if (v230)
          {
            do
            {
              v231 = *v230;
              operator delete(v230);
              v230 = v231;
            }

            while (v231);
          }

          v233 = *(v228 - 5);
          v228 -= 5;
          v232 = v233;
          *v228 = 0;
          if (v233)
          {
            operator delete(v232);
          }
        }

        while (v228 != v227);
        v229 = p_sparseAdjacencyMatrix->__begin_;
      }

      v250->_sparseAdjacencyMatrix.__end_ = v227;
      operator delete(v229);
      p_sparseAdjacencyMatrix->__begin_ = 0;
      p_sparseAdjacencyMatrix->__end_ = 0;
      p_sparseAdjacencyMatrix->__cap_ = 0;
      v234 = v274[0];
      *&v250->_sparseAdjacencyMatrix.__begin_ = v272;
      v250->_sparseAdjacencyMatrix.__cap_ = v273;
      if (v234)
      {
        v235 = v274[1];
        v236 = v234;
        if (v274[1] != v234)
        {
          v237 = v274[1];
          do
          {
            v239 = *(v237 - 3);
            v237 -= 24;
            v238 = v239;
            if (v239)
            {
              *(v235 - 2) = v238;
              operator delete(v238);
            }

            v235 = v237;
          }

          while (v237 != v234);
          v236 = v274[0];
        }

        v274[1] = v234;
        operator delete(v236);
      }
    }

    else
    {
      *&v218->_sparseAdjacencyMatrix.__begin_ = v272;
      v218->_sparseAdjacencyMatrix.__cap_ = v273;
    }

    v240 = v281[0];
    if (v281[0])
    {
      do
      {
        v241 = *v240;
        operator delete(v240);
        v240 = v241;
      }

      while (v241);
    }

    v242 = __p[0];
    __p[0] = 0;
    if (v242)
    {
      operator delete(v242);
    }

    v14 = v250;
  }

  v243 = v14;

  return v243;
}

+ (void)mergeTileStrokeClassificationMatrix:(const void *)a3 tileSparseAdjacencyMatrix:(const void *)a4 intoMergedStrokeClassificationMatrix:(void *)a5 mergedAdjacencyMatrix:(void *)a6 strokeIndexMapping:(const void *)a7 tileOverlapStrokeIndexes:(const void *)a8
{
  v78 = *MEMORY[0x1E69E9840];
  if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 3))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3);
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 3);
      *buf = 134218240;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "Number of strokes in the tile stroke classification matrix (%lu) doesn't match the number of strokes in the tile adjacency matrix (%lu)", buf, 0x16u);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 3))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v14 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3);
        v16 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 3);
        *buf = 134218240;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "Number of strokes in the tile stroke classification matrix (%lu) doesn't match the number of strokes in the tile adjacency matrix (%lu)", buf, 0x16u);
      }
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(a6 + 1) - *a6) >> 3))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v17 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3);
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((*(a6 + 1) - *a6) >> 3);
      *buf = 134218240;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_ERROR, "Number of strokes in the merged stroke classification matrix (%lu) doesn't match the number of strokes in the merged adjacency matrix (%lu)", buf, 0x16u);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(a6 + 1) - *a6) >> 3))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v20 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3);
        v22 = 0xCCCCCCCCCCCCCCCDLL * ((*(a6 + 1) - *a6) >> 3);
        *buf = 134218240;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_FAULT, "Number of strokes in the merged stroke classification matrix (%lu) doesn't match the number of strokes in the merged adjacency matrix (%lu)", buf, 0x16u);
      }
    }
  }

  v24 = *a3;
  v23 = *(a3 + 1);
  if (v23 != *a3)
  {
    v25 = 0;
    v73 = (a8 + 8);
    while (1)
    {
      v26 = *(a7 + 1);
      if (!v26)
      {
LABEL_122:
        sub_1836868A4("map::at:  key not found");
      }

      while (1)
      {
        while (1)
        {
          v27 = v26[4];
          if (v25 >= v27)
          {
            break;
          }

          v26 = *v26;
          if (!v26)
          {
            goto LABEL_122;
          }
        }

        if (v27 >= v25)
        {
          break;
        }

        v26 = v26[1];
        if (!v26)
        {
          goto LABEL_122;
        }
      }

      v28 = v26[5];
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3);
        if (v28 < v29)
        {
          goto LABEL_43;
        }
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v30 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3);
        *buf = 134218496;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        *&buf[24] = v31;
        _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_ERROR, "Tile stroke index %lu maps into %lu which is out of bounds for merged result of size %lu", buf, 0x20u);
      }

      if (v28 >= 0)
      {
        break;
      }

LABEL_44:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v32 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        v33 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3);
        *buf = 134218496;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        *&buf[24] = v33;
        _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_FAULT, "Tile stroke index %lu maps into %lu which is out of bounds for merged result of size %lu", buf, 0x20u);
      }

LABEL_49:
      v34 = *v73;
      if (!*v73)
      {
        goto LABEL_56;
      }

      v35 = (a8 + 8);
      do
      {
        if (*(v34 + 4) >= v25)
        {
          v35 = v34;
        }

        v34 = *&v34[8 * (*(v34 + 4) < v25)];
      }

      while (v34);
      if (v35 == v73 || v25 < v35[4])
      {
LABEL_56:
        v36 = *a3 + 24 * v25;
        v37 = (*a5 + 24 * v28);
        if (v37 != v36)
        {
          sub_18372F694(v37, *v36, *(v36 + 8), (*(v36 + 8) - *v36) >> 2);
        }
      }

      v38 = *a4 + 40 * v25;
      memset(buf, 0, sizeof(buf));
      v77 = 1.0;
      v39 = *(v38 + 24);
      prime = v39;
      if (v39 == 1)
      {
        prime = 2;
      }

      else if ((prime & (v39 - 1)) != 0)
      {
        prime = std::__next_prime(v39);
        v41 = *&buf[8];
        v42 = prime >= *&buf[8];
        if (prime <= *&buf[8])
        {
LABEL_64:
          if (v42)
          {
            goto LABEL_75;
          }

          v43 = vcvtps_u32_f32(*&buf[24] / v77);
          if (*&v41 < 3uLL || (v44 = vcnt_s8(v41), v44.i16[0] = vaddlv_u8(v44), v44.u32[0] > 1uLL))
          {
            v43 = std::__next_prime(v43);
          }

          else
          {
            v45 = 1 << -__clz(v43 - 1);
            if (v43 >= 2)
            {
              v43 = v45;
            }
          }

          if (prime <= v43)
          {
            prime = v43;
          }

          if (prime >= *&v41)
          {
            goto LABEL_75;
          }
        }
      }

      else
      {
        v41 = 0;
        v42 = 1;
        if (!prime)
        {
          goto LABEL_64;
        }
      }

      sub_183689098(buf, prime);
LABEL_75:
      for (i = *(v38 + 16); i; i = *i)
      {
        v62 = *(a7 + 1);
        if (!v62)
        {
LABEL_121:
          sub_1836868A4("map::at:  key not found");
        }

        v63 = i[2];
        while (1)
        {
          while (1)
          {
            v64 = v62[4];
            if (v63 >= v64)
            {
              break;
            }

            v62 = *v62;
            if (!v62)
            {
              goto LABEL_121;
            }
          }

          if (v64 >= v63)
          {
            break;
          }

          v62 = v62[1];
          if (!v62)
          {
            goto LABEL_121;
          }
        }

        v65 = v62[5];
        if (v65 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v66 = *(i + 6);
          v74 = v65;
          v75 = &v74;
          *(sub_18372F7F0(buf, &v74) + 6) = v66;
        }
      }

      v47 = *a6 + 40 * v28;
      if (!*(v47 + 24))
      {
        if (v47 != buf)
        {
          *(v47 + 32) = v77;
          sub_18372FB2C(v47, *&buf[16], 0);
        }

        goto LABEL_116;
      }

      v48 = *&buf[16];
      if (*&buf[16])
      {
LABEL_78:
        v50 = (v48 + 2);
        v49 = v48[2];
        v51 = *(v47 + 8);
        if (!*&v51)
        {
          goto LABEL_98;
        }

        v52 = vcnt_s8(v51);
        v52.i16[0] = vaddlv_u8(v52);
        if (v52.u32[0] > 1uLL)
        {
          v53 = v48[2];
          if (v49 >= *&v51)
          {
            v53 = v49 % *&v51;
          }
        }

        else
        {
          v53 = (*&v51 - 1) & v49;
        }

        v54 = *(*v47 + 8 * v53);
        if (!v54 || (v55 = *v54) == 0)
        {
LABEL_98:
          v59 = *(v48 + 6);
          v75 = (v48 + 2);
          v60 = sub_18372DD50(v47, v49);
          goto LABEL_99;
        }

        if (v52.u32[0] < 2uLL)
        {
          v56 = *&v51 - 1;
          while (1)
          {
            v58 = v55[1];
            if (v58 == v49)
            {
              if (v55[2] == v49)
              {
                goto LABEL_101;
              }
            }

            else if ((v58 & v56) != v53)
            {
              goto LABEL_98;
            }

            v55 = *v55;
            if (!v55)
            {
              goto LABEL_98;
            }
          }
        }

        while (1)
        {
          v57 = v55[1];
          if (v57 == v49)
          {
            if (v55[2] == v49)
            {
LABEL_101:
              v75 = (v48 + 2);
              v61 = sub_18372DD50(v47, v49);
              v59 = *(v48 + 6);
              if (v61[6] > v59)
              {
                v75 = (v48 + 2);
                v59 = *(sub_18372DD50(v47, *v50) + 6);
              }

              v75 = (v48 + 2);
              v60 = sub_18372DD50(v47, *v50);
LABEL_99:
              v60[6] = v59;
              v48 = *v48;
              if (!v48)
              {
LABEL_116:
                v67 = *&buf[16];
                if (*&buf[16])
                {
                  do
                  {
                    v68 = *v67;
                    operator delete(v67);
                    v67 = v68;
                  }

                  while (v68);
                }

                break;
              }

              goto LABEL_78;
            }
          }

          else
          {
            if (v57 >= *&v51)
            {
              v57 %= *&v51;
            }

            if (v57 != v53)
            {
              goto LABEL_98;
            }
          }

          v55 = *v55;
          if (!v55)
          {
            goto LABEL_98;
          }
        }
      }

      v69 = *buf;
      *buf = 0;
      if (v69)
      {
        operator delete(v69);
      }

      v24 = *a3;
      v23 = *(a3 + 1);
LABEL_26:
      if (++v25 >= 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3))
      {
        return;
      }
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3);
LABEL_43:
    if (v28 < v29)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }
}

- (id)probabilityByScriptClassificationsForStrokeIndex:(unint64_t)a3 scriptCodeMap:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3);
  if (v12 <= a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v33 = 134217984;
      v34 = a3;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Stroke index %lu out of bounds when getting raw script classification from document layout analysis result.", &v33, 0xCu);
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3);
  }

  if (v12 <= a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v33 = 134217984;
      v34 = a3;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_FAULT, "Stroke index %lu out of bounds when getting raw script classification from document layout analysis result.", &v33, 0xCu);
    }
  }

  v19 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9, v10);
  if (*(self->_strokeClassificationMatrix.__begin_ + 3 * a3 + 1) != *(self->_strokeClassificationMatrix.__begin_ + 3 * a3))
  {
    v20 = 0;
    do
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(v11, v15, v20, v16, v17, v18);
      LODWORD(v22) = *(*(self->_strokeClassificationMatrix.__begin_ + 3 * a3) + 4 * v20);
      v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v23, v24, v25, v26, v27, v22);
      objc_msgSend_setObject_forKeyedSubscript_(v19, v29, v28, v21, v30, v31);

      ++v20;
    }

    while (v20 < (*(self->_strokeClassificationMatrix.__begin_ + 3 * a3 + 1) - *(self->_strokeClassificationMatrix.__begin_ + 3 * a3)) >> 2);
  }

  return v19;
}

- (id)rawScriptClassificationResultForStrokeIndex:(unint64_t)a3 scriptCodeMap:(id)a4
{
  v6 = objc_msgSend_probabilityByScriptClassificationsForStrokeIndex_scriptCodeMap_(self, a2, a3, a4, v4, v5);
  v7 = [CHScriptClassificationRawResult alloc];
  v12 = objc_msgSend_initWithProbabilityByScriptClassifications_(v7, v8, v6, v9, v10, v11);

  return v12;
}

- (CHDocumentLayoutAnalysisResult)initWithCoder:(id)a3
{
  v65[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  __p = 0;
  v59 = 0;
  v60 = 0;
  objc_msgSend_deserializeStrokeClassificationMatrix_sparseAdjacencyMatrix_withCoder_(CHDocumentLayoutAnalysisTileResult, v5, &v61, &__p, v4, v6);
  v7 = MEMORY[0x1E695DFD8];
  v65[0] = objc_opt_class();
  v65[1] = objc_opt_class();
  v65[2] = objc_opt_class();
  v65[3] = objc_opt_class();
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v65, 4, v9, v10);
  v16 = objc_msgSend_setWithArray_(v7, v12, v11, v13, v14, v15);
  v20 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v17, v16, @"layoutAnalysisResultsPerTile", v18, v19);

  v21 = MEMORY[0x1E695DFD8];
  v64[0] = objc_opt_class();
  v64[1] = objc_opt_class();
  v64[2] = objc_opt_class();
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v64, 3, v23, v24);
  v30 = objc_msgSend_setWithArray_(v21, v26, v25, v27, v28, v29);
  v34 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v31, v30, @"strokeBoundsPerStrokeIdentifier", v32, v33);

  v57.receiver = self;
  v57.super_class = CHDocumentLayoutAnalysisResult;
  v35 = [(CHDocumentLayoutAnalysisResult *)&v57 init];
  v36 = v35;
  if (v35)
  {
    p_strokeClassificationMatrix = &v35->_strokeClassificationMatrix;
    if (&v36->_strokeClassificationMatrix != &v61)
    {
      sub_18372D05C(p_strokeClassificationMatrix, v61, v62, 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 3));
    }

    if (&v36->_sparseAdjacencyMatrix != &__p)
    {
      sub_18372D3D4(&v36->_sparseAdjacencyMatrix, __p, v59, 0xCCCCCCCCCCCCCCCDLL * ((v59 - __p) >> 3));
    }

    objc_storeStrong(&v36->_layoutAnalysisResultsPerTile, v20);
    objc_storeStrong(&v36->_strokeBoundsPerStrokeIdentifier, v34);
    v36->_hash = objc_msgSend_decodeIntegerForKey_(v4, v38, @"hash", v39, v40, v41);
  }

  v42 = v36;

  v43 = __p;
  if (__p)
  {
    v44 = v59;
    v45 = __p;
    if (v59 != __p)
    {
      do
      {
        v46 = *(v44 - 3);
        if (v46)
        {
          do
          {
            v47 = *v46;
            operator delete(v46);
            v46 = v47;
          }

          while (v47);
        }

        v49 = *(v44 - 5);
        v44 -= 5;
        v48 = v49;
        *v44 = 0;
        if (v49)
        {
          operator delete(v48);
        }
      }

      while (v44 != v43);
      v45 = __p;
    }

    v59 = v43;
    operator delete(v45);
  }

  v50 = v61;
  if (v61)
  {
    v51 = v62;
    v52 = v61;
    if (v62 != v61)
    {
      v53 = v62;
      do
      {
        v55 = *(v53 - 3);
        v53 -= 3;
        v54 = v55;
        if (v55)
        {
          *(v51 - 2) = v54;
          operator delete(v54);
        }

        v51 = v53;
      }

      while (v53 != v50);
      v52 = v61;
    }

    v62 = v50;
    operator delete(v52);
  }

  return v42;
}

- (void)encodeWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3);
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3);
      v22 = 134218240;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Number of strokes in the stroke classification matrix (%lu) doesn't match the number of strokes in the adjacency matrix (%lu)", &v22, 0x16u);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3))
    {
      if (qword_1EA84DC48 == -1)
      {
        v10 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v10 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3);
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3);
      v22 = 134218240;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_FAULT, "Number of strokes in the stroke classification matrix (%lu) doesn't match the number of strokes in the adjacency matrix (%lu)", &v22, 0x16u);
      goto LABEL_10;
    }
  }

LABEL_11:
  objc_msgSend_serializeStrokeClassificationMatrix_sparseAdjacencyMatrix_withCoder_(CHDocumentLayoutAnalysisTileResult, v4, &self->_strokeClassificationMatrix, &self->_sparseAdjacencyMatrix, v6, v5);
  objc_msgSend_encodeObject_forKey_(v6, v13, self->_strokeBoundsPerStrokeIdentifier, @"strokeBoundsPerStrokeIdentifier", v14, v15);
  objc_msgSend_encodeObject_forKey_(v6, v16, self->_layoutAnalysisResultsPerTile, @"layoutAnalysisResultsPerTile", v17, v18);
  objc_msgSend_encodeInteger_forKey_(v6, v19, self->_hash, @"hash", v20, v21);
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CHDocumentLayoutAnalysisResult;
  v3 = [(CHDocumentLayoutAnalysisResult *)&v10 description];
  v8 = objc_msgSend_stringByAppendingFormat_(v3, v4, @" Stroke count = %lu", v5, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3));

  return v8;
}

- (id)debugDescription
{
  v6 = objc_msgSend_descriptionForStrokeClassificationMatrix_(CHDocumentLayoutAnalysisTileResult, a2, &self->_strokeClassificationMatrix, v2, v3, v4);
  v11 = objc_msgSend_descriptionForSparseAdjacencyMatrix_(CHDocumentLayoutAnalysisTileResult, v7, &self->_sparseAdjacencyMatrix, v8, v9, v10);
  v17 = objc_msgSend_description(self, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_stringByAppendingFormat_(v17, v18, @"\n%@", v19, v20, v21, v6);

  v27 = objc_msgSend_stringByAppendingFormat_(v22, v23, @"\n%@", v24, v25, v26, v11);

  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v11 = v5;
    if (self)
    {
      if (self == v5)
      {
        isEqualToDictionary = 1;
LABEL_34:

        goto LABEL_35;
      }

      v12 = objc_msgSend_hash(self, v6, v7, v8, v9, v10);
      if (v12 == objc_msgSend_hash(v11, v13, v14, v15, v16, v17))
      {
        v23 = objc_msgSend_strokeClassificationMatrix(v11, v18, v19, v20, v21, v22);
        begin = self->_strokeClassificationMatrix.__begin_;
        end = self->_strokeClassificationMatrix.__end_;
        v31 = *v23;
        if (end - begin == v23[1] - *v23)
        {
          if (begin == end)
          {
LABEL_12:
            v35 = objc_msgSend_sparseAdjacencyMatrix(v11, v24, v25, v26, v27, v28);
            v41 = self->_sparseAdjacencyMatrix.__begin_;
            v42 = self->_sparseAdjacencyMatrix.__end_;
            v43 = *v35;
            if (v42 - v41 == *(v35 + 8) - *v35)
            {
              if (v41 == v42)
              {
LABEL_16:
                v44 = objc_msgSend_count(self->_layoutAnalysisResultsPerTile, v36, v37, v38, v39, v40);
                v50 = objc_msgSend_layoutAnalysisResultsPerTile(v11, v45, v46, v47, v48, v49);
                v56 = objc_msgSend_count(v50, v51, v52, v53, v54, v55);

                if (v44 == v56)
                {
                  strokeBoundsPerStrokeIdentifier = self->_strokeBoundsPerStrokeIdentifier;
                  v68 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v11, v57, v58, v59, v60, v61);
                  if (strokeBoundsPerStrokeIdentifier == v68)
                  {
                    isEqualToDictionary = 1;
                  }

                  else
                  {
                    v69 = self->_strokeBoundsPerStrokeIdentifier;
                    v70 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v11, v63, v64, v65, v66, v67);
                    isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v69, v71, v70, v72, v73, v74);
                  }

                  goto LABEL_23;
                }
              }

              else
              {
                while (sub_18372F4B0(v41, v43))
                {
                  v41 += 40;
                  v43 += 5;
                  if (v41 == v42)
                  {
                    goto LABEL_16;
                  }
                }
              }
            }
          }

          else
          {
            while (1)
            {
              v33 = *begin;
              v32 = begin[1];
              v34 = *v31;
              if (v32 - *begin != *(v31 + 8) - *v31)
              {
                break;
              }

              if (v33 != v32)
              {
                while (*v33 == *v34)
                {
                  ++v33;
                  ++v34;
                  if (v33 == v32)
                  {
                    goto LABEL_11;
                  }
                }

                break;
              }

LABEL_11:
              begin += 3;
              v31 += 24;
              if (begin == end)
              {
                goto LABEL_12;
              }
            }
          }
        }

        isEqualToDictionary = 0;
LABEL_23:
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v76 = self->_layoutAnalysisResultsPerTile;
        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v94, v98, 16, v78);
        if (v83)
        {
          v84 = *v95;
          while (2)
          {
            for (i = 0; i != v83; ++i)
            {
              if (*v95 != v84)
              {
                objc_enumerationMutation(v76);
              }

              if ((isEqualToDictionary & 1) == 0)
              {
                isEqualToDictionary = 0;
                goto LABEL_33;
              }

              v86 = *(*(&v94 + 1) + 8 * i);
              v87 = objc_msgSend_objectForKeyedSubscript_(self->_layoutAnalysisResultsPerTile, v79, v86, v80, v81, v82, v94);
              v92 = objc_msgSend_objectForKeyedSubscript_(self->_layoutAnalysisResultsPerTile, v88, v86, v89, v90, v91);
              isEqualToDictionary = sub_1837285DC(v87, v92);
            }

            v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v79, &v94, v98, 16, v82);
            if (v83)
            {
              continue;
            }

            break;
          }
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    isEqualToDictionary = 0;
    goto LABEL_34;
  }

  isEqualToDictionary = 0;
LABEL_35:

  return isEqualToDictionary;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    begin = self->_strokeClassificationMatrix.__begin_;
    end = self->_strokeClassificationMatrix.__end_;
    v9 = 0;
    v10 = end - begin;
    if (end != begin)
    {
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v13 = *&begin[24 * v11];
        v14 = *&begin[24 * v11 + 8] - v13;
        if (v14)
        {
          v15 = v14 >> 2;
          if ((v14 >> 2) <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v14 >> 2;
          }

          if (v15 <= 7)
          {
            v17 = 0;
LABEL_16:
            v36 = v16 - v17;
            v37 = &v13->f32[v17];
            do
            {
              v38 = *v37++;
              v39 = LODWORD(v38);
              if (v38 == 0.0)
              {
                v39 = 0;
              }

              *&v9 ^= v39;
              --v36;
            }

            while (v36);
            goto LABEL_6;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFF8;
          v18 = 0uLL;
          v19 = v9;
          v20 = v13 + 1;
          v21 = v16 & 0xFFFFFFFFFFFFFFF8;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = v20[-1];
            v25 = vceqzq_f32(v24);
            v26.i64[0] = v25.i32[2];
            v26.i64[1] = v25.i32[3];
            v27 = v26;
            v26.i64[0] = v25.i32[0];
            v26.i64[1] = v25.i32[1];
            v28 = v26;
            v29 = vceqzq_f32(*v20);
            v26.i64[0] = v29.i32[2];
            v26.i64[1] = v29.i32[3];
            v30 = v26;
            v26.i64[0] = v29.i32[0];
            v26.i64[1] = v29.i32[1];
            v31 = v26;
            v26.i64[0] = v24.u32[2];
            v26.i64[1] = v24.u32[3];
            v32 = v26;
            v26.i64[0] = v24.u32[0];
            v26.i64[1] = v24.u32[1];
            v33 = v26;
            v26.i64[0] = v20->i64[1];
            v26.i64[1] = HIDWORD(*v20);
            v34 = v26;
            v26.i64[0] = v20->u32[0];
            v26.i64[1] = HIDWORD(v20->i64[0]);
            v18 = veorq_s8(vbicq_s8(v32, v27), v18);
            v19 = veorq_s8(vbicq_s8(v33, v28), v19);
            v23 = veorq_s8(vbicq_s8(v34, v30), v23);
            v22 = veorq_s8(vbicq_s8(v26, v31), v22);
            v20 += 2;
            v21 -= 8;
          }

          while (v21);
          v35 = veorq_s8(veorq_s8(v22, v19), veorq_s8(v23, v18));
          v9 = veor_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
          if (v15 != v17)
          {
            goto LABEL_16;
          }
        }

LABEL_6:
        ++v11;
      }

      while (v11 != v12);
    }

    v41 = self->_sparseAdjacencyMatrix.__begin_;
    v40 = self->_sparseAdjacencyMatrix.__end_;
    if (v40 == v41)
    {
      v43 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      do
      {
        v44 = v41[5 * v42 + 2];
        if (v44)
        {
          do
          {
            v45 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], a2, *(v44 + 2), v2, v3, v4);
            v51 = objc_msgSend_hash(v45, v46, v47, v48, v49, v50);
            v52 = v44[6];
            v53 = LODWORD(v52);
            if (v52 == 0.0)
            {
              v53 = 0;
            }

            v43 ^= v51 ^ v53;

            v44 = *v44;
          }

          while (v44);
          v41 = self->_sparseAdjacencyMatrix.__begin_;
          v40 = self->_sparseAdjacencyMatrix.__end_;
        }

        ++v42;
      }

      while (v42 < 0xCCCCCCCCCCCCCCCDLL * ((v40 - v41) >> 3));
    }

    result = v43 ^ *&v9;
    self->_hash = v43 ^ *&v9;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end