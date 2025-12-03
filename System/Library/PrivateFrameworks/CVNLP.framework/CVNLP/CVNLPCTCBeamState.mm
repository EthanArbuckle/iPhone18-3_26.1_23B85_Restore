@interface CVNLPCTCBeamState
- (CVNLPCTCBeamState)init;
- (id)debugDescription;
- (id)pathForString:(id)string;
- (void)addPath:(id)path;
- (void)applyWordLanguageModelProbabilityToPaths;
- (void)enumeratePathsWithBlock:(id)block;
- (void)kBest:(id *)best discarded:(id *)discarded k:(unint64_t)k shouldUpdateLMState:(BOOL)state;
- (void)mergePathsWithTrailingWhitespaces;
@end

@implementation CVNLPCTCBeamState

- (CVNLPCTCBeamState)init
{
  v6.receiver = self;
  v6.super_class = CVNLPCTCBeamState;
  v2 = [(CVNLPCTCBeamState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutablePaths = v2->_mutablePaths;
    v2->_mutablePaths = v3;
  }

  return v2;
}

- (void)addPath:(id)path
{
  pathCopy = path;
  mutablePaths = self->_mutablePaths;
  v19 = pathCopy;
  v9 = objc_msgSend_string(pathCopy, v6, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(mutablePaths, v10, v9, v11);

  if (v12)
  {
    objc_msgSend_merge_logProbCumulator_(v12, v13, v19, &unk_1F554FA10);
  }

  else
  {
    v16 = self->_mutablePaths;
    v17 = objc_msgSend_string(v19, v13, v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v18, v19, v17);
  }
}

- (id)debugDescription
{
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1D9DB9544;
  v10[3] = &unk_1E858E338;
  v6 = v5;
  v11 = v6;
  objc_msgSend_enumeratePathsWithBlock_(self, v7, v10, v8);

  return v6;
}

- (id)pathForString:(id)string
{
  v4 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, a2, string, v3);

  return v4;
}

- (void)enumeratePathsWithBlock:(id)block
{
  blockCopy = block;
  mutablePaths = self->_mutablePaths;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9DB970C;
  v9[3] = &unk_1E858E360;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mutablePaths, v7, v9, v8);
}

- (void)kBest:(id *)best discarded:(id *)discarded k:(unint64_t)k shouldUpdateLMState:(BOOL)state
{
  v91 = 0;
  v92 = &v91;
  v93 = 0x4812000000;
  v94 = sub_1D9DB9D5C;
  v95 = sub_1D9DB9D80;
  v96 = &unk_1D9DF809A;
  v98 = 0;
  v99 = 0;
  __p = 0;
  if (objc_msgSend_count(self->_mutablePaths, a2, best, discarded))
  {
    v14 = v92;
    v15 = objc_msgSend_count(self->_mutablePaths, v11, v12, v13);
    if (v15 > (v14[8] - v14[6]) >> 3)
    {
      if (!(v15 >> 61))
      {
        v18 = v14[7];
        operator new();
      }

      sub_1D9D84AB0();
    }

    mutablePaths = self->_mutablePaths;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = sub_1D9DB9D98;
    v90[3] = &unk_1E858E388;
    v90[4] = &v91;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mutablePaths, v16, v90, v17);
    v20 = v92[6];
    v21 = v92[7];
    kCopy = v21 - v20 - 1;
    if (kCopy >= k)
    {
      kCopy = k;
    }

    v23 = &v20[kCopy];
    if (v23 != v21)
    {
      do
      {
        v24 = v21 - v20;
        if (v24 < 2)
        {
          break;
        }

        if (v24 == 3)
        {
          v61 = v20[1];
          v62 = *(v21 - 1);
          *(v21 - 1) = fmin(v61, v62);
          v20[1] = fmax(v61, v62);
          v63 = *(v21 - 1);
          v64 = fmax(v63, *v20);
          *(v21 - 1) = fmin(v63, *v20);
          v65 = v20[1];
          if (v64 > v65)
          {
            v20[1] = v65;
          }

          else
          {
            *v20 = v65;
            v20[1] = v64;
          }

          break;
        }

        if (v24 == 2)
        {
          v66 = *(v21 - 1);
          v67 = *v20;
          if (v66 > *v20)
          {
            *v20 = v66;
            *(v21 - 1) = v67;
          }

          break;
        }

        if (v24 <= 7)
        {
          while (v20 != v21 - 1)
          {
            v68 = v20++;
            if (v68 != v21 && v20 != v21)
            {
              v69 = *v68;
              v70 = *v68;
              v71 = v20;
              v72 = v68;
              v73 = v20;
              do
              {
                v74 = *v73++;
                v75 = v74 <= v70;
                v70 = fmax(v74, v70);
                if (!v75)
                {
                  v72 = v71;
                }

                v71 = v73;
              }

              while (v73 != v21);
              if (v72 != v68)
              {
                *v68 = *v72;
                *v72 = v69;
              }
            }
          }

          break;
        }

        v25 = &v20[(v21 - v20) >> 4];
        v26 = v21 - 1;
        v27 = *(v21 - 1);
        v28 = *v25;
        v29 = fmax(*v25, v27);
        *v26 = fmin(*v25, v27);
        *v25 = v29;
        v30 = *(v21 - 1);
        v31 = *v20;
        v32 = fmax(v30, *v20);
        *v26 = fmin(v30, *v20);
        v33 = *v25;
        v34 = *v25;
        if (v32 <= *v25)
        {
          *v20 = v33;
          v34 = v32;
        }

        v35 = v30 <= v31;
        if (v32 <= v33)
        {
          v35 = 1;
        }

        *v25 = v34;
        if (v28 <= v27)
        {
          v35 = 1;
        }

        v36 = *v20;
        if (*v20 <= v34)
        {
          v37 = v21 - 1;
          while (--v37 != v20)
          {
            if (*v37 > v34)
            {
              *v20 = *v37;
              *v37 = v36;
              if (v35)
              {
                v35 = 2;
              }

              else
              {
                v35 = 1;
              }

              v38 = v20 + 1;
              if (v20 + 1 < v37)
              {
                goto LABEL_20;
              }

              goto LABEL_36;
            }
          }

          v49 = v20 + 1;
          if (v36 <= *v26)
          {
            if (v49 == v26)
            {
              break;
            }

            while (1)
            {
              v50 = *v49;
              if (v36 > *v49)
              {
                break;
              }

              if (++v49 == v26)
              {
                goto LABEL_86;
              }
            }

            *v49++ = *v26;
            *v26 = v50;
          }

          if (v49 == v26)
          {
            break;
          }

          while (1)
          {
            v54 = *v20;
            do
            {
              v55 = *v49++;
              v56 = v55;
            }

            while (v54 <= v55);
            v57 = v49 - 1;
            do
            {
              v58 = *--v26;
              v59 = v58;
            }

            while (v54 > v58);
            if (v57 >= v26)
            {
              break;
            }

            *v57 = v59;
            *v26 = v56;
          }

          v20 = v49 - 1;
          if (v57 > v23)
          {
            break;
          }
        }

        else
        {
          v37 = v21 - 1;
          v38 = v20 + 1;
          if (v20 + 1 >= v21 - 1)
          {
LABEL_36:
            v43 = v38;
          }

          else
          {
LABEL_20:
            v39 = v38;
            while (1)
            {
              v40 = *v25;
              do
              {
                v41 = *v39++;
                v42 = v41;
              }

              while (v41 > v40);
              v43 = v39 - 1;
              do
              {
                v44 = *--v37;
                v45 = v44;
              }

              while (v44 <= v40);
              if (v43 >= v37)
              {
                break;
              }

              *v43 = v45;
              *v37 = v42;
              ++v35;
              if (v43 == v25)
              {
                v25 = v37;
              }
            }
          }

          if (v43 != v25)
          {
            v46 = *v43;
            if (*v25 > *v43)
            {
              *v43 = *v25;
              *v25 = v46;
              ++v35;
            }
          }

          if (v43 == v23)
          {
            break;
          }

          if (!v35)
          {
            if (v43 <= v23)
            {
              v51 = v43 + 1;
              while (v51 != v21)
              {
                v53 = *(v51 - 1);
                v52 = *v51++;
                if (v52 > v53)
                {
                  goto LABEL_42;
                }
              }
            }

            else
            {
              while (v38 != v43)
              {
                v48 = *(v38 - 1);
                v47 = *v38++;
                if (v47 > v48)
                {
                  goto LABEL_42;
                }
              }
            }

            break;
          }

LABEL_42:
          if (v43 <= v23)
          {
            v20 = v43 + 1;
          }

          else
          {
            v21 = v43;
          }
        }
      }

      while (v21 != v23);
LABEL_86:
      v20 = v92[6];
    }

    v60 = v20[kCopy];
  }

  else
  {
    v60 = 0.0;
  }

  v76 = objc_alloc_init(CVNLPCTCBeamState);
  v77 = objc_alloc_init(CVNLPCTCBeamState);
  v78 = self->_mutablePaths;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_1D9DB9EFC;
  v85[3] = &unk_1E858E3B0;
  v88 = v60;
  v79 = v76;
  v86 = v79;
  stateCopy = state;
  v80 = v77;
  v87 = v80;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v78, v81, v85, v82);
  if (best)
  {
    v83 = v79;
    *best = v79;
  }

  if (discarded)
  {
    v84 = v80;
    *discarded = v80;
  }

  _Block_object_dispose(&v91, 8);
  if (__p)
  {
    v98 = __p;
    operator delete(__p);
  }
}

- (void)mergePathsWithTrailingWhitespaces
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_mutablePaths;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v36, v41, 16);
  if (v9)
  {
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = objc_msgSend_stringByAppendingString_(v12, v7, @" ", v8);
        v18 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, v14, v13, v15);
        if (v18)
        {
          v19 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, v16, v12, v17);
          objc_msgSend_merge_logProbCumulator_(v19, v20, v18, &unk_1F554FA30);

          objc_msgSend_addObject_(v31, v21, v13, v22);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v36, v41, 16);
    }

    while (v9);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = v31;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v32, v40, 16);
  if (v27)
  {
    v28 = *v33;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_removeObjectForKey_(self->_mutablePaths, v25, *(*(&v32 + 1) + 8 * j), v26);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v32, v40, 16);
    }

    while (v27);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)applyWordLanguageModelProbabilityToPaths
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_mutablePaths;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v34, v38, 16);
  if (v6)
  {
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, v4, *(*(&v34 + 1) + 8 * i), v5);
        v13 = objc_msgSend_languageResourceBundle(v9, v10, v11, v12);
        v20 = objc_msgSend_wordLanguageModel(v13, v14, v15, v16);
        if (v20)
        {
          v21 = objc_msgSend_languageResourceBundle(v9, v17, v18, v19);
          v25 = objc_msgSend_wordLanguageModel(v21, v22, v23, v24);
          v29 = objc_msgSend_lmSPIType(v25, v26, v27, v28) == 1;

          if (v29)
          {
            v30 = objc_opt_class();
            objc_msgSend_applyWordLanguageModelProbabilityToPath_stemmedFromPath_isCommittingToken_(v30, v31, v9, v9, 1);
          }
        }

        else
        {
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v34, v38, 16);
    }

    while (v6);
  }

  v32 = *MEMORY[0x1E69E9840];
}

@end