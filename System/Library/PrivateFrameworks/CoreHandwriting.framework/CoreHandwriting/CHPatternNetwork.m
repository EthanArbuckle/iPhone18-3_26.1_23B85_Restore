@interface CHPatternNetwork
+ (BOOL)isString:(id)a3 fullPattern:(int64_t)a4 inNetwork:(id)a5;
+ (id)newCursorByAdvancingWithString:(id)a3 fromCursor:(id)a4 inNetwork:(id)a5;
+ (id)newCursorByAdvancingWithSymbol:(unint64_t)a3 fromCursor:(id)a4 inNetwork:(id)a5;
+ (id)rootCursorForContentType:(int)a3 inNetwork:(id)a4 forFirstSegmentGroup:(BOOL)a5;
+ (id)rootCursorForPatternType:(int64_t)a3 inNetwork:(id)a4 forFirstSegmentGroup:(BOOL)a5;
- (CHPatternNetwork)initWithFile:(id)a3;
- (void)dealloc;
@end

@implementation CHPatternNetwork

+ (id)rootCursorForContentType:(int)a3 inNetwork:(id)a4 forFirstSegmentGroup:(BOOL)a5
{
  v5 = a5;
  v6 = *&a3;
  v7 = a4;
  v12 = v7;
  if (v7 && (v13 = v7[4], objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, v6, v9, v10, v11), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v13, v15, v14, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), v14, v19))
  {
    if (v6 || !v5)
    {
      v32 = v19;
    }

    else
    {
      v24 = objc_msgSend_objectForKey_(v12[3], v20, &unk_1EF1EDF00, v21, v22, v23);
      v30 = objc_msgSend_unsignedLongValue(v24, v25, v26, v27, v28, v29);

      v31 = v19;
      objc_opt_self();
      v32 = objc_alloc_init(NetworkCursor);
      if (v32)
      {
        begin = v31->_nodeIndexes.__begin_;
        if (v31->_nodeIndexes.__end_ != begin)
        {
          v34 = 0;
          do
          {
            stateType = v31->_stateType;
            v37 = begin[v34];
            sub_1836DB51C(&v32->_nodeIndexes, &v37);
            v32->_stateType |= stateType;
            ++v34;
            begin = v31->_nodeIndexes.__begin_;
          }

          while (v34 < v31->_nodeIndexes.__end_ - begin);
        }

        v37 = v30;
        sub_1836DB51C(&v32->_nodeIndexes, &v37);
      }
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (id)rootCursorForPatternType:(int64_t)a3 inNetwork:(id)a4 forFirstSegmentGroup:(BOOL)a5
{
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(NetworkCursor);
    v8 = v6[3];
    v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a3, v10, v11, v12);
    v18 = objc_msgSend_objectForKey_(v8, v14, v13, v15, v16, v17);
    v24 = objc_msgSend_unsignedLongValue(v18, v19, v20, v21, v22, v23);

    v26 = v24;
    if (v7)
    {
      sub_1836DB51C(&v7->_nodeIndexes, &v26);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newCursorByAdvancingWithString:(id)a3 fromCursor:(id)a4 inNetwork:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = v9;
  v16 = 0;
  if (v8 && v9)
  {
    if (v8[2] != v8[1])
    {
      if (!objc_msgSend_length(v7, v10, v11, v12, v13, v14))
      {
        v16 = v8;
        goto LABEL_9;
      }

      v21 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v7, v17, 0, v18, v19, v20);
      v25 = v22;
      if (v22 <= 1)
      {
        v26 = v21;
        v27 = objc_msgSend_substringWithRange_(v7, v22, v21, v22, v23, v24);
        v32 = objc_msgSend_substringFromIndex_(v7, v28, &v25[v26], v29, v30, v31);
        v37 = objc_msgSend_characterAtIndex_(v27, v33, 0, v34, v35, v36);
        v38 = sub_183986558(v15, v8, v37);
        v16 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v39, v32, v38, v15, v40);

        goto LABEL_9;
      }
    }

    v16 = 0;
  }

LABEL_9:

  return v16;
}

+ (id)newCursorByAdvancingWithSymbol:(unint64_t)a3 fromCursor:(id)a4 inNetwork:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = 0;
  if (v7 && v8)
  {
    if (v7[2] == v7[1])
    {
      v9 = 0;
    }

    else
    {
      v10 = v8;
      v11 = sub_183986558(v8, v7, a3);
      v9 = v11;
      if (!v11 || v11->_nodeIndexes.__end_ == v11->_nodeIndexes.__begin_)
      {

        v9 = 0;
      }

      v8 = v10;
    }
  }

  return v9;
}

- (CHPatternNetwork)initWithFile:(id)a3
{
  v186 = *MEMORY[0x1E69E9840];
  v181.receiver = self;
  v181.super_class = CHPatternNetwork;
  v156 = a3;
  v167 = [(CHPatternNetwork *)&v181 init];
  v3 = v156;
  v9 = objc_msgSend_UTF8String(v156, v4, v5, v6, v7, v8);
  if (sub_1837A3290(v9, 0, __s))
  {
    operator new();
  }

  v166 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11, v12, v13, v14);
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  objc_opt_self();
  v19 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v15, &unk_1EF1EDEA0, v16, v17, v18, @"0x61a649a", &unk_1EF1EDD98, @"0x34f55ec", &unk_1EF1EDDF8, @"0x7f7446f", &unk_1EF1EDED0, @"0xe6b391a", &unk_1EF1EDDB0, @"0x08d4b39", &unk_1EF1EDDC8, @"0xbdde29e", &unk_1EF1EDD68, @"0x633a6c7", &unk_1EF1EDD80, @"0x346ff32", &unk_1EF1EDE28, @"0xf9be5b7", &unk_1EF1EDDE0, @"0xf9dd946", &unk_1EF1EDE70, @"0x27087b3", &unk_1EF1EDF00, @"0x5fb9dc5", &unk_1EF1EDF18, @"0xcf06682", &unk_1EF1EDF30, @"0xcff9621", 0);
  obj = v19;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v177, v184, 16, v21);
  if (v26)
  {
    v27 = *v178;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v178 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v177 + 1) + 8 * i);
        v30 = objc_msgSend_scannerWithString_(MEMORY[0x1E696AE88], v22, v29, v23, v24, v25);
        v176 = 0;
        objc_msgSend_scanHexInt_(v30, v31, &v176, v32, v33, v34);
        v39 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v35, v176, v36, v37, v38);
        objc_opt_self();
        v44 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v40, &unk_1EF1EDEA0, v41, v42, v43, @"0x61a649a", &unk_1EF1EDD98, @"0x34f55ec", &unk_1EF1EDDF8, @"0x7f7446f", &unk_1EF1EDED0, @"0xe6b391a", &unk_1EF1EDDB0, @"0x08d4b39", &unk_1EF1EDDC8, @"0xbdde29e", &unk_1EF1EDD68, @"0x633a6c7", &unk_1EF1EDD80, @"0x346ff32", &unk_1EF1EDE28, @"0xf9be5b7", &unk_1EF1EDDE0, @"0xf9dd946", &unk_1EF1EDE70, @"0x27087b3", &unk_1EF1EDF00, @"0x5fb9dc5", &unk_1EF1EDF18, @"0xcf06682", &unk_1EF1EDF30, @"0xcff9621", 0);
        v49 = objc_msgSend_objectForKeyedSubscript_(v44, v45, v29, v46, v47, v48);
        objc_msgSend_setObject_forKeyedSubscript_(v166, v50, v49, v39, v51, v52);
      }

      v19 = obj;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v177, v184, 16, v25);
    }

    while (v26);
  }

  objc_storeStrong(&v167->_symbols, v166);
  v157 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v53, v54, v55, v56, v57);
  network = v167->_network;
  v63 = network[10];
  if (network[11] != v63)
  {
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = *(v63 + v64 + 16);
      if (v66 == *(v63 + v64 + 24))
      {
        v67 = *(v63 + v64 + 8);
        symbols = v167->_symbols;
        v69 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v58, v66, v59, v60, v61);
        v74 = objc_msgSend_objectForKey_(symbols, v70, v69, v71, v72, v73);

        if (v74)
        {
          v79 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v75, v67, v76, v77, v78);
          objc_msgSend_setObject_forKey_(v157, v80, v79, v74, v81, v82);
        }

        network = v167->_network;
        v63 = network[10];
      }

      ++v65;
      v64 += 72;
    }

    while (v65 < 0x8E38E38E38E38E39 * ((network[11] - v63) >> 3));
  }

  objc_storeStrong(&v167->_startNodes, v157);
  v160 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v83, v84, v85, v86, v87);
  objc_opt_self();
  objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v88, &unk_1EF1EC8C8, v89, v90, v91, &unk_1EF1EDE10, &unk_1EF1EC8E0, &unk_1EF1EDE40, &unk_1EF1EC8F8, &unk_1EF1EDE58, &unk_1EF1EC910, &unk_1EF1EDE88, &unk_1EF1EC928, &unk_1EF1EDEB8, &unk_1EF1EC940, &unk_1EF1EDEE8, 0);
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v161 = v173 = 0u;
  v97 = objc_msgSend_allKeys(v161, v92, v93, v94, v95, v96);
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v172, v183, 16, v99);
  if (v100)
  {
    v158 = v97;
    v159 = *v173;
    do
    {
      v105 = 0;
      v162 = v100;
      do
      {
        if (*v173 != v159)
        {
          objc_enumerationMutation(v97);
        }

        v163 = v105;
        v106 = *(*(&v172 + 1) + 8 * v105);
        v107 = objc_msgSend_objectForKey_(v161, v101, v106, v102, v103, v104);
        v108 = objc_alloc_init(NetworkCursor);
        obja = v106;
        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v109 = v107;
        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v168, v182, 16, v111);
        if (v116)
        {
          v117 = *v169;
          if (v108)
          {
            do
            {
              for (j = 0; j != v116; ++j)
              {
                if (*v169 != v117)
                {
                  objc_enumerationMutation(v109);
                }

                v120 = *(*(&v168 + 1) + 8 * j);
                v121 = objc_msgSend_objectForKey_(v167->_startNodes, v112, v120, v113, v114, v115);
                v122 = v121 == 0;

                if (!v122)
                {
                  v123 = objc_msgSend_objectForKey_(v167->_startNodes, v112, v120, v113, v114, v115);
                  v129 = objc_msgSend_unsignedLongValue(v123, v124, v125, v126, v127, v128);

                  end = v108->_nodeIndexes.__end_;
                  cap = v108->_nodeIndexes.__cap_;
                  if (end < cap)
                  {
                    *end = v129;
                    v119 = (end + 8);
                  }

                  else
                  {
                    begin = v108->_nodeIndexes.__begin_;
                    v133 = end - begin;
                    v134 = (end - begin) >> 3;
                    v135 = v134 + 1;
                    if ((v134 + 1) >> 61)
                    {
                      sub_1836D58DC();
                    }

                    v136 = cap - begin;
                    if (v136 >> 2 > v135)
                    {
                      v135 = v136 >> 2;
                    }

                    if (v136 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v137 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v137 = v135;
                    }

                    if (v137)
                    {
                      if (!(v137 >> 61))
                      {
                        operator new();
                      }

                      sub_183688F00();
                    }

                    v138 = (end - begin) >> 3;
                    v139 = (8 * v134);
                    v140 = (8 * v134 - 8 * v138);
                    *v139 = v129;
                    v119 = (v139 + 1);
                    memcpy(v140, begin, v133);
                    v108->_nodeIndexes.__begin_ = v140;
                    v108->_nodeIndexes.__end_ = v119;
                    v108->_nodeIndexes.__cap_ = 0;
                    if (begin)
                    {
                      operator delete(begin);
                    }
                  }

                  v108->_nodeIndexes.__end_ = v119;
                }
              }

              v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v112, &v168, v182, 16, v115);
            }

            while (v116);
          }

          else
          {
            do
            {
              for (k = 0; k != v116; ++k)
              {
                if (*v169 != v117)
                {
                  objc_enumerationMutation(v109);
                }

                v145 = *(*(&v168 + 1) + 8 * k);
                v146 = objc_msgSend_objectForKey_(v167->_startNodes, v112, v145, v113, v114, v115);
                v147 = v146 == 0;

                if (!v147)
                {
                  v148 = objc_msgSend_objectForKey_(v167->_startNodes, v112, v145, v113, v114, v115);
                  objc_msgSend_unsignedLongValue(v148, v149, v150, v151, v152, v153);
                }
              }

              v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v112, &v168, v182, 16, v115);
            }

            while (v116);
          }
        }

        objc_msgSend_setObject_forKey_(v160, v141, v108, obja, v142, v143);
        v105 = v163 + 1;
        v97 = v158;
      }

      while (v163 + 1 != v162);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v101, &v172, v183, 16, v104);
    }

    while (v100);
  }

  startCursorForContentTypes = v167->_startCursorForContentTypes;
  v167->_startCursorForContentTypes = v160;

  return v167;
}

+ (BOOL)isString:(id)a3 fullPattern:(int64_t)a4 inNetwork:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11 = objc_msgSend_rootCursorForPatternType_inNetwork_forFirstSegmentGroup_(CHPatternNetwork, v9, a4, v8, 0, v10);
  v14 = objc_msgSend_newCursorByAdvancingWithString_fromCursor_inNetwork_(CHPatternNetwork, v12, v7, v11, v8, v13);

  LOBYTE(v11) = objc_msgSend_isCompletePattern(v14, v15, v16, v17, v18, v19);
  return v11;
}

- (void)dealloc
{
  network = self->_network;
  if (network)
  {
    v4 = sub_18390C484(network);
    MEMORY[0x1865E5EC0](v4, 0x10B2C40E2EDC6FALL);
    self->_network = 0;
  }

  symbols = self->_symbols;
  if (symbols)
  {
    self->_symbols = 0;
  }

  startNodes = self->_startNodes;
  if (startNodes)
  {
    self->_startNodes = 0;
  }

  startCursorForContentTypes = self->_startCursorForContentTypes;
  if (startCursorForContentTypes)
  {
    self->_startCursorForContentTypes = 0;
  }

  v8.receiver = self;
  v8.super_class = CHPatternNetwork;
  [(CHPatternNetwork *)&v8 dealloc];
}

@end