@interface CSUVisualGenerationTextEncoderV1
- (BOOL)loadResources:(id *)resources;
- (CSUVisualGenerationTextEncoderV1)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
- (unordered_map<std::string,)_inputTokenTensorsWithTokenIDs:()std:()std:(std:(ik:(CSUVisualGenerationTextEncoderV1 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(vector<unsigned)int allocator<std:(std::allocator<unsigned int>> *)std :pair<const)std::string :equal_to<std::string> :hash<std::string>;
- (vector<unsigned)getTokenIDsOnText:(CSUVisualGenerationTextEncoderV1 *)self withBOS:(SEL)s withEOS:(id)oS withError:(BOOL)error;
- (void)_unsafeRunOnInput:(id)input completion:(id)completion;
- (void)runOnInput:(id)input completion:(id)completion;
@end

@implementation CSUVisualGenerationTextEncoderV1

- (CSUVisualGenerationTextEncoderV1)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CSUVisualGenerationTextEncoderV1;
  v6 = [(CSUVisualGenerationTextEncoderV1 *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (vector<unsigned)getTokenIDsOnText:(CSUVisualGenerationTextEncoderV1 *)self withBOS:(SEL)s withEOS:(id)oS withError:(BOOL)error
{
  v8 = a6;
  errorCopy = error;
  oSCopy = oS;
  if ((objc_msgSend_loadResources_(self, v13, a7, v14, v15) & 1) == 0)
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    goto LABEL_26;
  }

  if (objc_msgSend_inputIsLowerCase(self->_configuration, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_lowercaseString(oSCopy, v20, v21, v22, v23);

    oSCopy = v24;
  }

  ptr = self->_vocabulary.__ptr_;
  v26 = oSCopy;
  v55 = oSCopy;
  v31 = objc_msgSend_UTF8String(v26, v27, v28, v29, v30);
  v32 = strlen(v31);
  if (v32 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v33 = v32;
  if (v32 >= 0x17)
  {
    operator new();
  }

  v57 = v32;
  if (v32)
  {
    memmove(&__dst, v31, v32);
  }

  *(&__dst + v33) = 0;
  (*(*ptr + 16))(&__p, ptr, &__dst, 0);
  oSCopy = v55;
  if ((v57 & 0x80000000) == 0)
  {
    if (!errorCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  operator delete(__dst);
  if (errorCopy)
  {
LABEL_15:
    LODWORD(__dst) = 1;
    sub_1AC071660(&__p, __p, &__dst);
  }

LABEL_16:
  v39 = __p;
  v38 = v59;
  if (objc_msgSend_maximumSequenceLength(self->_configuration, v34, v35, v36, v37) >= ((v38 - v39) >> 2))
  {
    v53 = v59;
    if (!v8)
    {
      v53 = v59 - 4;
    }

    if (v53 != __p)
    {
      if (((v53 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    objc_msgSend_maximumSequenceLength(self->_configuration, v40, v41, v42, v43);
    NSLog(&cfstr_TokenizedQuery.isa, v55, 0);
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    v44 = MEMORY[0x1E696AEC0];
    v45 = objc_msgSend_maximumSequenceLength(self->_configuration, v40, v41, v42, v43);
    v49 = objc_msgSend_stringWithFormat_(v44, v46, @"input text exceeded max allowed length %zu", v47, v48, v45);
    *a7 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v50, v49, v51, v52);

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

LABEL_26:

  return result;
}

- (unordered_map<std::string,)_inputTokenTensorsWithTokenIDs:()std:()std:(std:(ik:(CSUVisualGenerationTextEncoderV1 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(vector<unsigned)int allocator<std:(std::allocator<unsigned int>> *)std :pair<const)std::string :equal_to<std::string> :hash<std::string>
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_maximumSequenceLength(self->_configuration, a3, std, v4, v5);
  __p = 0;
  v8 = 0;
  v9 = 0;
  operator new();
}

- (BOOL)loadResources:(id *)resources
{
  if (!self->_textEncoderNet.__ptr_)
  {
    v6 = objc_msgSend_vocabularyModelPath(self->_configuration, a2, resources, v3, v4);
    objc_msgSend_UTF8String(v6, v7, v8, v9, v10);
    sub_1AC0D4C68();
  }

  return 1;
}

- (void)_unsafeRunOnInput:(id)input completion:(id)completion
{
  v156 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  completionCopy = completion;
  v154 = 0;
  v129 = completionCopy;
  LOBYTE(completion) = objc_msgSend_loadResources_(self, v7, &v154, v8, v9);
  v10 = v154;
  if (completion)
  {
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v11 = inputCopy;
    v127 = v11;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v144, v155, 16);
    if (v13)
    {
      v14 = 0;
      v130 = *v145;
      v15 = v10;
      while (1)
      {
        if (*v145 != v130)
        {
          objc_enumerationMutation(v11);
        }

        v16 = **(&v144 + 1);
        v21 = objc_msgSend_string(v16, v17, v18, v19, v20);
        v131 = v13;
        v26 = objc_msgSend_count(v11, v22, v23, v24, v25);
        v143 = v15;
        objc_msgSend_getTokenIDsOnText_withBOS_withEOS_withError_(self, v27, v21, v14 == 0, v14 == v26 - 1, &v143);
        v10 = v143;

        if (v10)
        {
          break;
        }

        shouldReturnMask = objc_msgSend_shouldReturnMask(v16, v28, v29, v30, v31);
        v71 = v152;
        v72 = __p;
        v73 = v141;
        if (shouldReturnMask)
        {
          v74 = (v152 - v151) >> 2;
          v75 = v74 + ((v141 - __p) >> 2);
          v76 = v149;
          if (v149 >= v150)
          {
            selfCopy = self;
            v79 = v148;
            v80 = v149 - v148;
            v81 = (v149 - v148) >> 4;
            v82 = v81 + 1;
            if ((v81 + 1) >> 60)
            {
LABEL_102:
              sub_1AC060AAC();
            }

            v83 = v150 - v148;
            if ((v150 - v148) >> 3 > v82)
            {
              v82 = v83 >> 3;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFF0)
            {
              v84 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v82;
            }

            if (v84)
            {
              if (!(v84 >> 60))
              {
                operator new();
              }

LABEL_103:
              sub_1AC066FD4();
            }

            v85 = (16 * v81);
            *v85 = v74;
            v85[1] = v75;
            v77 = 16 * v81 + 16;
            memcpy(0, v79, v80);
            v148 = 0;
            v149 = v77;
            v150 = 0;
            if (v79)
            {
              operator delete(v79);
            }

            self = selfCopy;
            v11 = v127;
          }

          else
          {
            *v149 = v74;
            *(v76 + 1) = v75;
            v77 = (v76 + 16);
          }

          v149 = v77;
          v71 = v152;
          v72 = __p;
          v73 = v141;
          completionCopy = v129;
        }

        sub_1AC075F44(&v151, v71, v72, v73, (v73 - v72) >> 2);
        ++v14;
        v32 = __p;
        if (__p)
        {
          goto LABEL_8;
        }

LABEL_9:

        if (v10)
        {
LABEL_59:

          v86 = v148;
          if (v148)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        if (v131 >= 2)
        {
          for (i = 1; v131 != i; ++i)
          {
            if (*v145 != v130)
            {
              objc_enumerationMutation(v11);
            }

            v35 = *(*(&v144 + 1) + 8 * i);
            v40 = objc_msgSend_string(v35, v36, v37, v38, v39);
            v45 = objc_msgSend_count(v11, v41, v42, v43, v44);
            v143 = 0;
            objc_msgSend_getTokenIDsOnText_withBOS_withEOS_withError_(self, v46, v40, v14 == 0, v14 == v45 - 1, &v143);
            v10 = v143;

            if (v10)
            {
              completionCopy[2](completionCopy, 0, v10);
              v51 = __p;
              if (__p)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v52 = objc_msgSend_shouldReturnMask(v35, v47, v48, v49, v50);
              v53 = v152;
              v54 = __p;
              v55 = v141;
              if (v52)
              {
                selfCopy2 = self;
                v57 = (v152 - v151) >> 2;
                v58 = v57 + ((v141 - __p) >> 2);
                v59 = v149;
                if (v149 >= v150)
                {
                  v61 = v148;
                  v62 = v149 - v148;
                  v63 = (v149 - v148) >> 4;
                  v64 = v63 + 1;
                  if ((v63 + 1) >> 60)
                  {
                    goto LABEL_102;
                  }

                  v65 = v150 - v148;
                  if ((v150 - v148) >> 3 > v64)
                  {
                    v64 = v65 >> 3;
                  }

                  if (v65 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v66 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v66 = v64;
                  }

                  if (v66)
                  {
                    if (!(v66 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_103;
                  }

                  v67 = (v149 - v148) >> 4;
                  v68 = (16 * v63);
                  *v68 = v57;
                  v68[1] = v58;
                  v60 = 16 * v63 + 16;
                  v69 = &v68[-2 * v67];
                  memcpy(v69, v61, v62);
                  v148 = v69;
                  v149 = v60;
                  v150 = 0;
                  if (v61)
                  {
                    operator delete(v61);
                  }

                  self = selfCopy2;
                  v11 = v127;
                }

                else
                {
                  *v149 = v57;
                  *(v59 + 1) = v58;
                  v60 = (v59 + 16);
                  self = selfCopy2;
                }

                v149 = v60;
                v53 = v152;
                v54 = __p;
                v55 = v141;
                completionCopy = v129;
              }

              sub_1AC075F44(&v151, v53, v54, v55, (v55 - v54) >> 2);
              ++v14;
              v51 = __p;
              if (__p)
              {
LABEL_18:
                v141 = v51;
                operator delete(v51);
              }
            }

            if (v10)
            {
              goto LABEL_59;
            }
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v33, &v144, v155, 16);
        v15 = 0;
        v10 = 0;
        if (!v13)
        {
          goto LABEL_64;
        }
      }

      completionCopy[2](completionCopy, 0, v10);
      v32 = __p;
      if (!__p)
      {
        goto LABEL_9;
      }

LABEL_8:
      v141 = v32;
      operator delete(v32);
      goto LABEL_9;
    }

LABEL_64:

    v138 = 0;
    v139 = 0;
    v137 = 0;
    if (v152 != v151)
    {
      if (((v152 - v151) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    objc_msgSend__inputTokenTensorsWithTokenIDs_(self, v88, &v137, v89, v90);
    if (v137)
    {
      v138 = v137;
      operator delete(v137);
    }

    sub_1AC0669EC(self->_textEncoderNet.__ptr_, &__p, v136);
    v91 = [CSUVisualGenerationTextEncoderV1NetworkOutput alloc];
    v96 = objc_msgSend_outputLastHiddenState(self->_configuration, v92, v93, v94, v95);
    v97 = v96;
    v102 = objc_msgSend_UTF8String(v96, v98, v99, v100, v101);
    v103 = strlen(v102);
    if (v103 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v104 = v103;
    if (v103 >= 0x17)
    {
      operator new();
    }

    v135 = v103;
    if (v103)
    {
      memmove(&__dst, v102, v103);
    }

    *(&__dst + v104) = 0;
    v109 = sub_1AC068CD4(v136, &__dst);
    if (!v109)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    v110 = objc_msgSend_outputCLIPPooledLayer(self->_configuration, v105, v106, v107, v108);
    v111 = v110;
    v116 = objc_msgSend_UTF8String(v110, v112, v113, v114, v115);
    v117 = strlen(v116);
    if (v117 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v118 = v117;
    if (v117 >= 0x17)
    {
      operator new();
    }

    v133 = v117;
    if (v117)
    {
      memmove(&v132, v116, v117);
    }

    *(&v132 + v118) = 0;
    v119 = sub_1AC068CD4(v136, &v132);
    if (!v119)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    HiddenLayer_PooledCLIPEmbedding_MaskIndices = objc_msgSend_initWithLastHiddenLayer_PooledCLIPEmbedding_MaskIndices_(v91, v120, (v109 + 5), (v119 + 5), &v148);
    if (v133 < 0)
    {
      operator delete(v132);
    }

    if (v135 < 0)
    {
      operator delete(__dst);
    }

    (completionCopy)[2](completionCopy, HiddenLayer_PooledCLIPEmbedding_MaskIndices, v10);
    sub_1AC066D78(v136);
    v122 = v142;
    if (v142)
    {
      while (1)
      {
        v123 = *v122;
        v122[5] = &unk_1F20D01C0;
        v124 = v122[11];
        if (v124)
        {
          if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v125 = v122[7];
        if (v125)
        {
          goto LABEL_93;
        }

LABEL_94:
        if (*(v122 + 39) < 0)
        {
          operator delete(v122[2]);
        }

        operator delete(v122);
        v122 = v123;
        if (!v123)
        {
          goto LABEL_98;
        }
      }

      (v124->__on_zero_shared)(v124);
      std::__shared_weak_count::__release_weak(v124);
      v125 = v122[7];
      if (!v125)
      {
        goto LABEL_94;
      }

LABEL_93:
      v122[8] = v125;
      operator delete(v125);
      goto LABEL_94;
    }

LABEL_98:
    v126 = __p;
    __p = 0;
    if (v126)
    {
      operator delete(v126);
    }

    completionCopy = v129;
    v86 = v148;
    if (v148)
    {
LABEL_60:
      v149 = v86;
      operator delete(v86);
    }

LABEL_61:
    if (v151)
    {
      v152 = v151;
      operator delete(v151);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }

  v87 = *MEMORY[0x1E69E9840];
}

- (void)runOnInput:(id)input completion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  objc_msgSend__unsafeRunOnInput_completion_(self, v8, inputCopy, completionCopy, v9);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end