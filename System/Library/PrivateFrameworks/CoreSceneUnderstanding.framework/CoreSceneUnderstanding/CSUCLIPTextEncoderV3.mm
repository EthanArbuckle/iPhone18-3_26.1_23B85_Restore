@interface CSUCLIPTextEncoderV3
- (BOOL)loadResources:(id *)resources;
- (CSUCLIPTextEncoderV3)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
- (unordered_map<std::string,)_inputTokenTensorsWithText:()std:()std:(std:(ik:(CSUCLIPTextEncoderV3 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>;
- (unordered_map<std::string,)_inputTokenTensorsWithTextBatch:()std:()std:(std:(ik:(CSUCLIPTextEncoderV3 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>;
- (void)_unsafeRunOnInputText:(id)text completion:(id)completion;
- (void)runOnInputText:(id)text completion:(id)completion;
@end

@implementation CSUCLIPTextEncoderV3

- (CSUCLIPTextEncoderV3)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CSUCLIPTextEncoderV3;
  v6 = [(CSUCLIPTextEncoderV3 *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (unordered_map<std::string,)_inputTokenTensorsWithTextBatch:()std:()std:(std:(ik:(CSUCLIPTextEncoderV3 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a4;
  if (self->_vocabulary.__ptr_)
  {
    objc_msgSend_maximumSequenceLength(self->_configuration, v5, v6, v7, v8);
    objc_msgSend_count(v15, v9, v10, v11, v12);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Tokenizer called before initializing vocabulary");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

- (unordered_map<std::string,)_inputTokenTensorsWithText:()std:()std:(std:(ik:(CSUCLIPTextEncoderV3 *)self :(SEL)a3 Tensor>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v14[0] = v5;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v14, 1, v7);
  objc_msgSend__inputTokenTensorsWithTextBatch_(self, v9, v8, v10, v11);

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)loadResources:(id *)resources
{
  if (!self->_textEncoderNet.__ptr_)
  {
    v5 = objc_msgSend_vocabularyModelPath(self->_configuration, a2, resources, v3, v4);
    objc_msgSend_UTF8String(v5, v6, v7, v8, v9);
    sub_1AC0BEE1C();
  }

  return 1;
}

- (void)_unsafeRunOnInputText:(id)text completion:(id)completion
{
  v138 = *MEMORY[0x1E69E9840];
  textCopy = text;
  completionCopy = completion;
  v125 = 0;
  LOBYTE(completion) = objc_msgSend_loadResources_(self, v6, &v125, v7, v8);
  v12 = v125;
  if ((completion & 1) == 0)
  {
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_70;
  }

  objc_msgSend__inputTokenTensorsWithText_(self, v9, textCopy, v10, v11);
  sub_1AC0669EC(self->_tokenEmbeddingNet.__ptr_, v124, v123);
  v17 = objc_msgSend_outputTokenEmbeddingIDTensorName(self->_configuration, v13, v14, v15, v16);
  v18 = v17;
  v23 = objc_msgSend_UTF8String(v17, v19, v20, v21, v22);
  v24 = strlen(v23);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    operator new();
  }

  v127 = v24;
  if (v24)
  {
    memmove(&__dst, v23, v24);
  }

  *(&__dst + v25) = 0;
  v26 = sub_1AC0686D0(v123, &__dst);
  if (!v26)
  {
    sub_1AC0672B0("unordered_map::at: key not found");
  }

  v116 = &unk_1F20D01C0;
  v117 = *(v26 + 12);
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v28 = v26[7];
  v27 = v26[8];
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v29 = v26[11];
  v121 = v26[10];
  v122 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
  }

  v116 = &unk_1F20D0320;
  if (v127 < 0)
  {
    operator delete(__dst);
  }

  v34 = objc_msgSend_outputTokenEmbeddingMaskTensorName(self->_configuration, v30, v31, v32, v33);
  v35 = v34;
  v40 = objc_msgSend_UTF8String(v34, v36, v37, v38, v39);
  v41 = strlen(v40);
  if (v41 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v42 = v41;
  if (v41 >= 0x17)
  {
    operator new();
  }

  v127 = v41;
  if (v41)
  {
    memmove(&__dst, v40, v41);
  }

  *(&__dst + v42) = 0;
  v43 = sub_1AC0686D0(v123, &__dst);
  if (!v43)
  {
    sub_1AC0672B0("unordered_map::at: key not found");
  }

  v109 = &unk_1F20D01C0;
  v110 = *(v43 + 12);
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v45 = v43[7];
  v44 = v43[8];
  if (v44 != v45)
  {
    if (((v44 - v45) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v46 = v43[11];
  v114 = v43[10];
  v115 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(v46 + 1, 1uLL, memory_order_relaxed);
  }

  v109 = &unk_1F20D0320;
  if (v127 < 0)
  {
    operator delete(__dst);
  }

  ptr = self->_textEncoderNet.__ptr_;
  v52 = objc_msgSend_inputTokenEmbeddingIDTensorName(self->_configuration, v48, v49, v50, v51);
  v53 = v52;
  v58 = objc_msgSend_UTF8String(v52, v54, v55, v56, v57);
  v59 = strlen(v58);
  if (v59 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v60 = v59;
  if (v59 >= 0x17)
  {
    operator new();
  }

  v105 = v59;
  if (v59)
  {
    memmove(__p, v58, v59);
  }

  *(__p + v60) = 0;
  sub_1AC0BFB18(&__dst, __p, &v116);
  v65 = objc_msgSend_inputTokenEmbeddingMaskTensorName(self->_configuration, v61, v62, v63, v64);
  v66 = v65;
  v71 = objc_msgSend_UTF8String(v65, v67, v68, v69, v70);
  v72 = strlen(v71);
  if (v72 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v73 = v72;
  if (v72 >= 0x17)
  {
    operator new();
  }

  v103 = v72;
  if (v72)
  {
    memmove(v102, v71, v72);
  }

  *(v102 + v73) = 0;
  sub_1AC0BFB18(v132, v102, &v109);
  memset(v106, 0, sizeof(v106));
  v107 = 1065353216;
  sub_1AC06C114(v106, &__dst);
  sub_1AC06C114(v106, v132);
  sub_1AC0669EC(ptr, v106, v108);
  sub_1AC066D78(v106);
  v134 = &unk_1F20D01C0;
  v74 = v137;
  if (v137 && !atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v74->__on_zero_shared)(v74);
    std::__shared_weak_count::__release_weak(v74);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  if (v133 < 0)
  {
    operator delete(v132[0]);
  }

  v128 = &unk_1F20D01C0;
  v75 = v131;
  if (v131 && !atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v75->__on_zero_shared)(v75);
    std::__shared_weak_count::__release_weak(v75);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v127 < 0)
  {
    operator delete(__dst);
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_72:
    operator delete(v102[0]);
    goto LABEL_57;
  }

  if (v103 < 0)
  {
    goto LABEL_72;
  }

LABEL_57:

  if (v105 < 0)
  {
    operator delete(__p[0]);
  }

  v76 = [CSUCLIPTextEncoderV3NetworkOutput alloc];
  v81 = objc_msgSend_outputTokenEmbeddingIDTensorName(self->_configuration, v77, v78, v79, v80);
  v82 = sub_1AC0BFC24(v123, v81);
  v87 = objc_msgSend_outputTokenEmbeddingMaskTensorName(self->_configuration, v83, v84, v85, v86);
  v88 = sub_1AC0BFC24(v123, v87);
  v93 = objc_msgSend_outputTextEmbeddingTensorName(self->_configuration, v89, v90, v91, v92);
  v94 = sub_1AC0BFC24(v108, v93);
  v96 = objc_msgSend_initWithTokenEmbeddingIDs_tokenEmbeddingMask_clipTextEmbedding_(v76, v95, v82, v88, v94);

  (completionCopy)[2](completionCopy, v96, v12);
  sub_1AC066D78(v108);
  v109 = &unk_1F20D01C0;
  v97 = v115;
  if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v97->__on_zero_shared)(v97);
    std::__shared_weak_count::__release_weak(v97);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  v116 = &unk_1F20D01C0;
  v98 = v122;
  if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v98->__on_zero_shared)(v98);
    std::__shared_weak_count::__release_weak(v98);
  }

  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  sub_1AC066D78(v123);
  sub_1AC066D78(v124);
LABEL_70:

  v99 = *MEMORY[0x1E69E9840];
}

- (void)runOnInputText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  objc_msgSend__unsafeRunOnInputText_completion_(self, v8, textCopy, completionCopy, v9);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end