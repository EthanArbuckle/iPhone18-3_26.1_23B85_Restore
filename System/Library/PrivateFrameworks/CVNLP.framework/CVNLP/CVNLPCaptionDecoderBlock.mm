@interface CVNLPCaptionDecoderBlock
- ($C4732ECC957FA13B9B3DF4A51A95735B)decoderNet;
- ($FD4688982923A924290ECB669CAF1EC2)attFeatsPlaceholderBlob;
- ($FD4688982923A924290ECB669CAF1EC2)blockInput;
- ($FD4688982923A924290ECB669CAF1EC2)blockOutput;
- ($FD4688982923A924290ECB669CAF1EC2)maskInput;
- ($FD4688982923A924290ECB669CAF1EC2)positionInput;
- ($FD4688982923A924290ECB669CAF1EC2)scaleInput;
- (BOOL)_loadNetwork:(id)a3 modelIndex:(unint64_t)a4;
- (CVNLPCaptionDecoderBlock)initWithOptions:(id)a3 modelIndex:(unint64_t)a4 runTimeParams:(id)a5;
- (id).cxx_construct;
- (map<std::string,)stateInputEspressoBuffers;
- (map<std::string,)stateInputEspressoBuffersShape;
- (map<std::string,)stateOutputEspressoBuffers;
- (vector<std::string,)decoderInputNames;
- (void)_runBlockWithCopyOutputBlock:(id)a3;
- (void)buildNetworkForSequenceLength:(unint64_t)a3 imageFeatures:(id)a4;
- (void)copyInputState:(id)a3;
- (void)copyOutputState:(id)a3;
- (void)dealloc;
- (void)runBlockWithCopyInput:(float *)a3 copyOutputBlock:(id)a4;
- (void)runBlockWithCopyInputBlock:(id)a3 copyOutputBlock:(id)a4;
- (void)setAttFeatsPlaceholderBlob:(id *)a3;
- (void)setBlockInput:(id *)a3;
- (void)setBlockOutput:(id *)a3;
- (void)setDecoderInputNames:()vector<std:(std::allocator<std::string>> *)a3 :string;
- (void)setMaskInput:(id *)a3;
- (void)setPositionInput:(id *)a3;
- (void)setScaleInput:(id *)a3;
- (void)setStateInputEspressoBuffers:()map<std:()std:()std:(std:(std::vector<float>>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :vector<float> :string;
- (void)setStateInputEspressoBuffersShape:()map<std:(std:()std:(std:(std::vector<unsigned long>>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :vector<unsigned)long> :string;
- (void)setStateOutputEspressoBuffers:()map<std:()std:()std:(std:(std::vector<float>>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :vector<float> :string;
@end

@implementation CVNLPCaptionDecoderBlock

- (CVNLPCaptionDecoderBlock)initWithOptions:(id)a3 modelIndex:(unint64_t)a4 runTimeParams:(id)a5
{
  v8 = a3;
  v9 = a5;
  v29.receiver = self;
  v29.super_class = CVNLPCaptionDecoderBlock;
  v10 = [(CVNLPCaptionModelBase *)&v29 initWithOptions:v8 runTimeParams:v9];
  v11 = v10;
  if (v10)
  {
    v10->_modelIndex = a4;
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("decoder_queue", v12);
    decoderQueue = v11->_decoderQueue;
    v11->_decoderQueue = v13;

    v17 = objc_msgSend_objectForKeyedSubscript_(v8, v15, CVNLPCaptionModelPath, v16);
    if ((objc_msgSend__loadNetwork_modelIndex_(v11, v18, v17, a4) & 1) == 0)
    {

      v27 = 0;
      goto LABEL_6;
    }

    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"DecodeBlockExecute:%tu", v20, v11->_modelIndex);
    metricString = v11->_metricString;
    v11->_metricString = v21;

    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"DecodeBlockCopy:%tu", v24, v11->_modelIndex);
    metricCopyString = v11->_metricCopyString;
    v11->_metricCopyString = v25;
  }

  v27 = v11;
LABEL_6:

  return v27;
}

- (void)dealloc
{
  if (self->_decoderPlan)
  {
    espresso_plan_destroy();
  }

  if (self->_decoderCtx)
  {
    espresso_context_destroy();
  }

  sub_1D9DB1094(&self->_stateInputEspressoBuffers, self->_stateInputEspressoBuffers.__tree_.__end_node_.__left_);
  self->_stateInputEspressoBuffers.__tree_.__begin_node_ = &self->_stateInputEspressoBuffers.__tree_.__end_node_;
  self->_stateInputEspressoBuffers.__tree_.__size_ = 0;
  self->_stateInputEspressoBuffers.__tree_.__end_node_.__left_ = 0;
  sub_1D9DB87A4(self->_stateInputEspressoBuffersShape.__tree_.__end_node_.__left_);
  self->_stateInputEspressoBuffersShape.__tree_.__begin_node_ = &self->_stateInputEspressoBuffersShape.__tree_.__end_node_;
  self->_stateInputEspressoBuffersShape.__tree_.__size_ = 0;
  self->_stateInputEspressoBuffersShape.__tree_.__end_node_.__left_ = 0;
  sub_1D9DB1094(&self->_stateOutputEspressoBuffers, self->_stateOutputEspressoBuffers.__tree_.__end_node_.__left_);
  self->_stateOutputEspressoBuffers.__tree_.__begin_node_ = &self->_stateOutputEspressoBuffers.__tree_.__end_node_;
  self->_stateOutputEspressoBuffers.__tree_.__end_node_.__left_ = 0;
  self->_stateOutputEspressoBuffers.__tree_.__size_ = 0;
  v3.receiver = self;
  v3.super_class = CVNLPCaptionDecoderBlock;
  [(CVNLPCaptionDecoderBlock *)&v3 dealloc];
}

- (BOOL)_loadNetwork:(id)a3 modelIndex:(unint64_t)a4
{
  v6 = a3;
  self->_decoderCtx = espresso_create_context();
  self->_decoderPlan = espresso_create_plan();
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"decoder_block%tu_opt.espresso.net", v8, a4);
  v12 = objc_msgSend_URLByAppendingPathComponent_(v6, v10, v9, v11);

  v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v13, v14, v15);
  v20 = objc_msgSend_path(v12, v17, v18, v19);
  v23 = objc_msgSend_fileExistsAtPath_(v16, v21, v20, v22);

  if (!v23)
  {
    if (!a4)
    {
      v42 = objc_msgSend_URLByAppendingPathComponent_(v6, v24, @"decoder_opt.espresso.net", v26);

      v47 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v44, v45, v46);
      v51 = objc_msgSend_path(v42, v48, v49, v50);
      v54 = objc_msgSend_fileExistsAtPath_(v47, v52, v51, v53);

      if (v54)
      {
        decoderPlan = self->_decoderPlan;
        v59 = objc_msgSend_path(v42, v55, v56, v57);
        v60 = v59;
        objc_msgSend_UTF8String(v60, v61, v62, v63);
        LODWORD(decoderPlan) = espresso_plan_add_network();

        if (decoderPlan)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v111 = self->_decoderPlan;
          espresso_plan_get_error_info();
          std::runtime_error::runtime_error(exception, v112);
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v64 = self->_decoderPlan;
        if (espresso_plan_build())
        {
          v113 = __cxa_allocate_exception(0x10uLL);
          v114 = self->_decoderPlan;
          espresso_plan_get_error_info();
          std::runtime_error::runtime_error(v113, v115);
          __cxa_throw(v113, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        plan = self->_decoderNet.plan;
        v66 = *&self->_decoderNet.network_index;
        p_decoderInputNames = &self->_decoderInputNames;
        p_decoderNet = &self->_decoderNet;
        if (c_network_get_input_names())
        {
          v116 = __cxa_allocate_exception(0x10uLL);
          v117 = self->_decoderPlan;
          espresso_plan_get_error_info();
          std::runtime_error::runtime_error(v116, v118);
          __cxa_throw(v116, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        begin = p_decoderInputNames->__begin_;
        end = self->_decoderInputNames.__end_;
        if (0xAAAAAAAAAAAAAAABLL * ((end - p_decoderInputNames->__begin_) >> 3) >= 5 && begin != end)
        {
          do
          {
            while (1)
            {
              if (begin[23] < 0)
              {
                sub_1D9D12B94(__p, *begin, *(begin + 1));
              }

              else
              {
                v70 = *begin;
                v139 = *(begin + 2);
                *__p = v70;
              }

              v71 = HIBYTE(v139);
              if (v139 >= 0)
              {
                v72 = __p;
              }

              else
              {
                v72 = __p[0];
              }

              if (v139 >= 0)
              {
                v73 = SHIBYTE(v139);
              }

              else
              {
                v73 = __p[1];
              }

              if (v73 >= 5)
              {
                v74 = v72 + v73;
                v75 = v72;
                do
                {
                  v76 = memchr(v75, 95, v73 - 4);
                  if (!v76)
                  {
                    break;
                  }

                  if (*v76 == 1767863135 && v76[4] == 110)
                  {
                    if (v76 != v74 && v76 - v72 != -1)
                    {
                      v78 = (v74 - 3);
                      v79 = v74 - 3 - v72;
                      if (v79 <= 0x7FFFFFFFFFFFFFF7)
                      {
                        if (v79 <= 0x16)
                        {
                          v137 = v79;
                          if (v78 != v72)
                          {
                            memmove(&__dst, v72, v79);
                          }

                          *(&__dst + v79) = 0;
                          operator new();
                        }

                        operator new();
                      }

                      sub_1D9D12168();
                    }

                    break;
                  }

                  v75 = (v76 + 1);
                  v73 = v74 - v75;
                }

                while (v74 - v75 >= 5);
              }

              if (v71 < 0)
              {
                break;
              }

              begin += 24;
              if (begin == end)
              {
                goto LABEL_51;
              }
            }

            operator delete(__p[0]);
            begin += 24;
          }

          while (begin != end);
        }

LABEL_51:
        v80 = p_decoderNet->plan;
        v81 = *&self->_decoderNet.network_index;
        if (espresso_network_bind_buffer())
        {
          v119 = __cxa_allocate_exception(0x10uLL);
          v120 = self->_decoderPlan;
          espresso_plan_get_error_info();
          std::runtime_error::runtime_error(v119, v121);
          __cxa_throw(v119, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v82 = p_decoderNet->plan;
        v83 = *&self->_decoderNet.network_index;
        if (espresso_network_bind_buffer())
        {
          v122 = __cxa_allocate_exception(0x10uLL);
          v123 = self->_decoderPlan;
          espresso_plan_get_error_info();
          std::runtime_error::runtime_error(v122, v124);
          __cxa_throw(v122, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v84 = p_decoderNet->plan;
        v85 = *&self->_decoderNet.network_index;
        if (espresso_network_bind_buffer())
        {
          v125 = __cxa_allocate_exception(0x10uLL);
          v126 = self->_decoderPlan;
          espresso_plan_get_error_info();
          std::runtime_error::runtime_error(v125, v127);
          __cxa_throw(v125, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((self->_decoderInputNames.__end_ - self->_decoderInputNames.__begin_) >> 3) >= 5)
        {
          v86 = p_decoderNet->plan;
          v87 = *&self->_decoderNet.network_index;
          if (espresso_network_bind_buffer())
          {
            v128 = __cxa_allocate_exception(0x10uLL);
            v129 = self->_decoderPlan;
            espresso_plan_get_error_info();
            std::runtime_error::runtime_error(v128, v130);
            __cxa_throw(v128, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v88 = p_decoderNet->plan;
          v89 = *&self->_decoderNet.network_index;
          if (espresso_network_bind_buffer())
          {
            v131 = __cxa_allocate_exception(0x10uLL);
            v132 = self->_decoderPlan;
            espresso_plan_get_error_info();
            std::runtime_error::runtime_error(v131, v133);
            __cxa_throw(v131, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v90 = p_decoderNet->plan;
          v91 = *&self->_decoderNet.network_index;
          if (espresso_network_bind_buffer())
          {
            v92 = __cxa_allocate_exception(0x10uLL);
            v93 = self->_decoderPlan;
            espresso_plan_get_error_info();
            std::runtime_error::runtime_error(v92, v94);
            __cxa_throw(v92, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        goto LABEL_8;
      }

      v12 = v42;
    }

    v43 = 0;
    goto LABEL_19;
  }

  v27 = self->_decoderPlan;
  v28 = objc_msgSend_path(v12, v24, v25, v26);
  v29 = v28;
  objc_msgSend_UTF8String(v29, v30, v31, v32);
  v33 = &self->_decoderNet;
  v34 = espresso_plan_add_network();

  if (v34)
  {
    v95 = __cxa_allocate_exception(0x10uLL);
    v96 = self->_decoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v95, v97);
    __cxa_throw(v95, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v35 = self->_decoderPlan;
  if (espresso_plan_build())
  {
    v98 = __cxa_allocate_exception(0x10uLL);
    v99 = self->_decoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v98, v100);
    __cxa_throw(v98, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v36 = v33->plan;
  v37 = *&self->_decoderNet.network_index;
  if (espresso_network_bind_buffer())
  {
    v101 = __cxa_allocate_exception(0x10uLL);
    v102 = self->_decoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v101, v103);
    __cxa_throw(v101, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v38 = v33->plan;
  v39 = *&self->_decoderNet.network_index;
  if (espresso_network_bind_buffer())
  {
    v104 = __cxa_allocate_exception(0x10uLL);
    v105 = self->_decoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v104, v106);
    __cxa_throw(v104, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v40 = v33->plan;
  v41 = *&self->_decoderNet.network_index;
  if (espresso_network_bind_buffer())
  {
    v107 = __cxa_allocate_exception(0x10uLL);
    v108 = self->_decoderPlan;
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v107, v109);
    __cxa_throw(v107, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v42 = v12;
LABEL_8:

  v43 = 1;
LABEL_19:

  return v43;
}

- (void)buildNetworkForSequenceLength:(unint64_t)a3 imageFeatures:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_decoderInputNames.__end_ - self->_decoderInputNames.__begin_) >> 3) >= 5)
  {
    decoderPlan = self->_decoderPlan;
    espresso_plan_build_clean();
    operator new();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)copyInputState:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v4 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v75, v80, 16);
  if (v6)
  {
    v7 = *v76;
    v67 = self;
    v68 = v4;
    v66 = *v76;
    do
    {
      v8 = 0;
      v69 = v6;
      do
      {
        if (*v76 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v71 = v8;
        v9 = *(*(&v75 + 1) + 8 * v8);
        v10 = v9;
        v14 = objc_msgSend_UTF8String(v9, v11, v12, v13);
        v15 = strlen(v14);
        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1D9D12168();
        }

        v16 = v15;
        if (v15 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v15;
        if (v15)
        {
          memmove(&__dst, v14, v15);
        }

        __dst.__r_.__value_.__s.__data_[v16] = 0;
        v17 = std::string::append(&__dst, "_in");
        v20 = *&v17->__r_.__value_.__l.__data_;
        v74 = v17->__r_.__value_.__r.__words[2];
        *__p = v20;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v70 = objc_msgSend_objectForKey_(v4, v18, v9, v19);
        v21 = 0;
        p_stateInputEspressoBuffersShape = &self->_stateInputEspressoBuffersShape;
        left = p_stateInputEspressoBuffersShape->__tree_.__end_node_.__left_;
        p_end_node = &p_stateInputEspressoBuffersShape->__tree_.__end_node_;
        v24 = left;
        v72 = 1;
        if (!left)
        {
LABEL_40:
          operator new();
        }

        while (1)
        {
          v26 = v74 >= 0 ? HIBYTE(v74) : __p[1];
          v27 = v74 >= 0 ? __p : __p[0];
          while (1)
          {
            while (1)
            {
              v28 = v24;
              v29 = v24 + 32;
              v30 = *(v24 + 4);
              v31 = v24[55];
              if (v31 >= 0)
              {
                v32 = v24[55];
              }

              else
              {
                v32 = *(v24 + 5);
              }

              if (v31 >= 0)
              {
                v33 = v29;
              }

              else
              {
                v33 = v30;
              }

              if (v32 >= v26)
              {
                v34 = v26;
              }

              else
              {
                v34 = v32;
              }

              v35 = memcmp(v27, v33, v34);
              v36 = v26 < v32;
              if (v35)
              {
                v36 = v35 < 0;
              }

              if (!v36)
              {
                break;
              }

              v24 = *v28;
              if (!*v28)
              {
                goto LABEL_40;
              }
            }

            v37 = memcmp(v33, v27, v34);
            v38 = v32 < v26;
            if (v37)
            {
              v38 = v37 < 0;
            }

            if (!v38)
            {
              break;
            }

            v24 = v28[1];
            if (!v24)
            {
              goto LABEL_40;
            }
          }

          if (v21 >= (v28[8] - v28[7]) >> 3)
          {
            break;
          }

          v24 = p_end_node->__left_;
          if (!p_end_node->__left_)
          {
LABEL_82:
            operator new();
          }

          if (v74 >= 0)
          {
            v39 = HIBYTE(v74);
          }

          else
          {
            v39 = __p[1];
          }

          if (v74 >= 0)
          {
            v40 = __p;
          }

          else
          {
            v40 = __p[0];
          }

          v41 = p_end_node->__left_;
          while (1)
          {
            while (1)
            {
              v42 = v41;
              v45 = v41[4];
              v43 = v41 + 4;
              v44 = v45;
              v46 = *(v43 + 23);
              if (v46 >= 0)
              {
                v47 = *(v43 + 23);
              }

              else
              {
                v47 = v43[1];
              }

              if (v46 >= 0)
              {
                v48 = v43;
              }

              else
              {
                v48 = v44;
              }

              if (v47 >= v39)
              {
                v49 = v39;
              }

              else
              {
                v49 = v47;
              }

              v50 = memcmp(v40, v48, v49);
              v51 = v39 < v47;
              if (v50)
              {
                v51 = v50 < 0;
              }

              if (!v51)
              {
                break;
              }

              v41 = *v42;
              if (!*v42)
              {
                goto LABEL_82;
              }
            }

            v52 = memcmp(v48, v40, v49);
            v53 = v47 < v39;
            if (v52)
            {
              v53 = v52 < 0;
            }

            if (!v53)
            {
              break;
            }

            v41 = v42[1];
            if (!v41)
            {
              goto LABEL_82;
            }
          }

          v72 *= *(v42[7] + 8 * v21++);
          if (!v24)
          {
            goto LABEL_40;
          }
        }

        self = v67;
        v4 = v68;
        v7 = v66;
        if (v72)
        {
          __dst.__r_.__value_.__r.__words[0] = __p;
          v54 = sub_1D9D90464(&v67->_stateInputEspressoBuffers, __p);
          if (v72 > (v54[8] - v54[7]) >> 2)
          {
            __dst.__r_.__value_.__r.__words[0] = __p;
            v55 = sub_1D9D90464(&v67->_stateInputEspressoBuffers, __p);
            v56 = v55[7];
            v57 = (v55[8] - v56) >> 2;
            if (v72 <= v57)
            {
              if (v72 < v57)
              {
                v55[8] = v56 + 4 * v72;
              }
            }

            else
            {
              sub_1D9DAA550((v55 + 7), v72 - v57);
            }
          }

          __dst.__r_.__value_.__r.__words[0] = __p;
          v58 = sub_1D9D90464(&v67->_stateInputEspressoBuffers, __p)[7];
          v59 = v70;
          v63 = objc_msgSend_bytes(v70, v60, v61, v62);
          memcpy(v58, v63, 4 * v72);
        }

        if (SHIBYTE(v74) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = v71 + 1;
      }

      while (v71 + 1 != v69);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v64, &v75, v80, 16);
    }

    while (v6);
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (void)copyOutputState:(id)a3
{
  v55 = a3;
  begin_node = self->_stateOutputEspressoBuffers.__tree_.__begin_node_;
  p_end_node = &self->_stateOutputEspressoBuffers.__tree_.__end_node_;
  if (begin_node != &self->_stateOutputEspressoBuffers.__tree_.__end_node_)
  {
    v57 = self;
    do
    {
      left_high = SHIBYTE(begin_node[6].__left_);
      if (left_high < 0)
      {
        left = begin_node[4].__left_;
        v7 = begin_node[5].__left_ - 4;
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_97:
          sub_1D9D12168();
        }
      }

      else
      {
        left = &begin_node[4];
        v7 = left_high - 4;
        if ((left_high - 4) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_97;
        }
      }

      if (v7 > 0x16)
      {
        operator new();
      }

      v66 = v7;
      if (&left[v7] != left)
      {
        memmove(__dst, left, v7);
      }

      *(__dst + v7) = 0;
      if ((v66 & 0x80u) == 0)
      {
        v8 = v66;
      }

      else
      {
        v8 = __dst[1];
      }

      if (v8 + 3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1D9D12168();
      }

      if (v8 + 3 >= 0x17)
      {
        operator new();
      }

      __p[1] = 0;
      v64 = 0;
      __p[0] = 0;
      HIBYTE(v64) = v8 + 3;
      if (v8)
      {
        if ((v66 & 0x80u) == 0)
        {
          v9 = __dst;
        }

        else
        {
          v9 = __dst[0];
        }

        memmove(__p, v9, v8);
      }

      *(__p + v8) = 7235935;
      v67 = __p;
      v10 = v57;
      v11 = *(sub_1D9DB8880(&v57->_stateInputEspressoBuffersShape, __p)[7] + 8);
      v67 = __p;
      v12 = *(sub_1D9DB8880(&v57->_stateInputEspressoBuffersShape, __p)[7] + 16);
      v67 = __p;
      v59 = *sub_1D9DB8880(&v57->_stateInputEspressoBuffersShape, __p)[7];
      v14 = v12 * (v11 + 1) * v59;
      if (v14)
      {
        if (!(v14 >> 62))
        {
          operator new();
        }

        sub_1D9D84AB0();
      }

      if (v12)
      {
        v15 = 0;
        v60 = v59 * (v11 + 1);
        v61 = v59 * v11;
        __n = 4 * v59 * v11;
        v58 = v12;
        do
        {
          if (v61)
          {
            v16 = v10->_stateInputEspressoBuffers.__tree_.__end_node_.__left_;
            if (!v16)
            {
LABEL_54:
              operator new();
            }

            if (v64 >= 0)
            {
              v17 = HIBYTE(v64);
            }

            else
            {
              v17 = __p[1];
            }

            if (v64 >= 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0];
            }

            while (1)
            {
              while (1)
              {
                v19 = v16;
                v22 = v16[4];
                v20 = v16 + 4;
                v21 = v22;
                v23 = *(v20 + 23);
                if (v23 >= 0)
                {
                  v24 = *(v20 + 23);
                }

                else
                {
                  v24 = v20[1];
                }

                if (v23 >= 0)
                {
                  v25 = v20;
                }

                else
                {
                  v25 = v21;
                }

                if (v24 >= v17)
                {
                  v26 = v17;
                }

                else
                {
                  v26 = v24;
                }

                v27 = memcmp(v18, v25, v26);
                v28 = v17 < v24;
                if (v27)
                {
                  v28 = v27 < 0;
                }

                if (!v28)
                {
                  break;
                }

                v16 = *v19;
                if (!*v19)
                {
                  goto LABEL_54;
                }
              }

              v29 = memcmp(v25, v18, v26);
              v30 = v24 < v17;
              if (v29)
              {
                v30 = v29 < 0;
              }

              if (!v30)
              {
                break;
              }

              v16 = v19[1];
              if (!v16)
              {
                goto LABEL_54;
              }
            }

            v10 = v57;
            memcpy((4 * v15 * v60), (v19[7] + 4 * v15 * v61), __n);
          }

          v31 = p_end_node->__left_;
          if (!p_end_node->__left_)
          {
LABEL_80:
            operator new();
          }

          v32 = SHIBYTE(begin_node[6].__left_);
          if (v32 >= 0)
          {
            v33 = HIBYTE(begin_node[6].__left_);
          }

          else
          {
            v33 = begin_node[5].__left_;
          }

          if (v32 >= 0)
          {
            v34 = begin_node + 4;
          }

          else
          {
            v34 = begin_node[4].__left_;
          }

          while (1)
          {
            while (1)
            {
              v35 = v31;
              v38 = v31[4];
              v36 = v31 + 4;
              v37 = v38;
              v39 = *(v36 + 23);
              if (v39 >= 0)
              {
                v40 = *(v36 + 23);
              }

              else
              {
                v40 = v36[1];
              }

              if (v39 >= 0)
              {
                v41 = v36;
              }

              else
              {
                v41 = v37;
              }

              if (v40 >= v33)
              {
                v42 = v33;
              }

              else
              {
                v42 = v40;
              }

              v43 = memcmp(v34, v41, v42);
              v44 = v33 < v40;
              if (v43)
              {
                v44 = v43 < 0;
              }

              if (!v44)
              {
                break;
              }

              v31 = *v35;
              if (!*v35)
              {
                goto LABEL_80;
              }
            }

            v45 = memcmp(v41, v34, v42);
            v46 = v40 < v33;
            if (v45)
            {
              v46 = v45 < 0;
            }

            if (!v46)
            {
              break;
            }

            v31 = v35[1];
            if (!v31)
            {
              goto LABEL_80;
            }
          }

          memcpy((__n + 4 * v15 * v60), (v35[7] + 4 * v15 * v59), 4 * v59);
          ++v15;
        }

        while (v15 != v58);
      }

      v49 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v13, 0, 0, v55);
      if ((v66 & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v47, __dst, v48);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v47, __dst[0], v48);
      }
      v50 = ;
      objc_msgSend_setObject_forKeyedSubscript_(v55, v51, v49, v50);

      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
        if ((v66 & 0x80000000) == 0)
        {
LABEL_87:
          v52 = begin_node[1].__left_;
          if (v52)
          {
            goto LABEL_91;
          }

          goto LABEL_93;
        }
      }

      else if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      operator delete(__dst[0]);
      v52 = begin_node[1].__left_;
      if (v52)
      {
        do
        {
LABEL_91:
          v53 = v52;
          v52 = v52->__left_;
        }

        while (v52);
        goto LABEL_3;
      }

      do
      {
LABEL_93:
        v53 = begin_node[2].__left_;
        v54 = v53->__left_ == begin_node;
        begin_node = v53;
      }

      while (!v54);
LABEL_3:
      begin_node = v53;
    }

    while (v53 != p_end_node);
  }
}

- (void)runBlockWithCopyInputBlock:(id)a3 copyOutputBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_decoderQueue(self, v8, v9, v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D9DB6914;
  block[3] = &unk_1E858E278;
  v12 = v6;
  v21 = v12;
  dispatch_sync(v11, block);

  v16 = objc_msgSend_decoderQueue(self, v13, v14, v15);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1D9DB6924;
  v18[3] = &unk_1E858E2A0;
  v18[4] = self;
  v19 = v7;
  v17 = v7;
  dispatch_async(v16, v18);
}

- (void)runBlockWithCopyInput:(float *)a3 copyOutputBlock:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_decoderQueue(self, v7, v8, v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D9DB69FC;
  block[3] = &unk_1E858E2C8;
  v13 = v6;
  v14 = a3;
  block[4] = self;
  v11 = v6;
  dispatch_async(v10, block);
}

- (void)_runBlockWithCopyOutputBlock:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_perfResults(self, v5, v6, v7);
  v12 = objc_msgSend_metricString(self, v9, v10, v11);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1D9DB6D28;
  v24[3] = &unk_1E858E2F0;
  v24[4] = self;
  objc_msgSend_run_block_(v8, v13, v12, v24);

  v17 = objc_msgSend_nextBlock(self, v14, v15, v16);

  if (v17)
  {
    objc_msgSend_blockOutput(self, v18, v19, v20);
    objc_msgSend__blob_size_(self, v21, &v23, v22);
    operator new[]();
  }

  v4[2](v4);
}

- ($C4732ECC957FA13B9B3DF4A51A95735B)decoderNet
{
  p_decoderNet = &self->_decoderNet;
  plan = self->_decoderNet.plan;
  v4 = *&p_decoderNet->network_index;
  result.var1 = v4;
  result.var0 = plan;
  return result;
}

- ($FD4688982923A924290ECB669CAF1EC2)attFeatsPlaceholderBlob
{
  v3 = *&self[2].var1;
  *&retstr->var10 = *&self[1].var14;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[2].var2[1];
  v4 = *&self[1].var8;
  *&retstr->var3[2] = *&self[1].var6;
  *&retstr->var4 = v4;
  v5 = *&self[1].var12;
  *&retstr->var6 = *&self[1].var10;
  *&retstr->var8 = v5;
  v6 = *self[1].var3;
  *&retstr->var0 = *&self[1].var2[2];
  *retstr->var2 = v6;
  v7 = *&self[1].var4;
  *&retstr->var2[2] = *&self[1].var3[2];
  *retstr->var3 = v7;
  return self;
}

- (void)setAttFeatsPlaceholderBlob:(id *)a3
{
  v4 = *a3->var2;
  v3 = *&a3->var2[2];
  *&self->_attFeatsPlaceholderBlob.data = *&a3->var0;
  *self->_attFeatsPlaceholderBlob.dim = v4;
  *&self->_attFeatsPlaceholderBlob.dim[2] = v3;
  v5 = *&a3->var6;
  v7 = *a3->var3;
  v6 = *&a3->var3[2];
  *&self->_attFeatsPlaceholderBlob.width = *&a3->var4;
  *&self->_attFeatsPlaceholderBlob.channels = v5;
  *self->_attFeatsPlaceholderBlob.stride = v7;
  *&self->_attFeatsPlaceholderBlob.stride[2] = v6;
  v9 = *&a3->var10;
  v8 = *&a3->var12;
  v10 = *&a3->var8;
  *&self->_attFeatsPlaceholderBlob.storage_type = *&a3->var14;
  *&self->_attFeatsPlaceholderBlob.stride_height = v9;
  *&self->_attFeatsPlaceholderBlob.stride_batch_number = v8;
  *&self->_attFeatsPlaceholderBlob.sequence_length = v10;
}

- ($FD4688982923A924290ECB669CAF1EC2)scaleInput
{
  v3 = *&self[3].var1;
  *&retstr->var10 = *&self[2].var14;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[3].var2[1];
  v4 = *&self[2].var8;
  *&retstr->var3[2] = *&self[2].var6;
  *&retstr->var4 = v4;
  v5 = *&self[2].var12;
  *&retstr->var6 = *&self[2].var10;
  *&retstr->var8 = v5;
  v6 = *self[2].var3;
  *&retstr->var0 = *&self[2].var2[2];
  *retstr->var2 = v6;
  v7 = *&self[2].var4;
  *&retstr->var2[2] = *&self[2].var3[2];
  *retstr->var3 = v7;
  return self;
}

- (void)setScaleInput:(id *)a3
{
  v4 = *a3->var2;
  v3 = *&a3->var2[2];
  *&self->_scaleInput.data = *&a3->var0;
  *self->_scaleInput.dim = v4;
  *&self->_scaleInput.dim[2] = v3;
  v5 = *&a3->var6;
  v7 = *a3->var3;
  v6 = *&a3->var3[2];
  *&self->_scaleInput.width = *&a3->var4;
  *&self->_scaleInput.channels = v5;
  *self->_scaleInput.stride = v7;
  *&self->_scaleInput.stride[2] = v6;
  v9 = *&a3->var10;
  v8 = *&a3->var12;
  v10 = *&a3->var8;
  *&self->_scaleInput.storage_type = *&a3->var14;
  *&self->_scaleInput.stride_height = v9;
  *&self->_scaleInput.stride_batch_number = v8;
  *&self->_scaleInput.sequence_length = v10;
}

- ($FD4688982923A924290ECB669CAF1EC2)positionInput
{
  v3 = *&self[4].var1;
  *&retstr->var10 = *&self[3].var14;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[4].var2[1];
  v4 = *&self[3].var8;
  *&retstr->var3[2] = *&self[3].var6;
  *&retstr->var4 = v4;
  v5 = *&self[3].var12;
  *&retstr->var6 = *&self[3].var10;
  *&retstr->var8 = v5;
  v6 = *self[3].var3;
  *&retstr->var0 = *&self[3].var2[2];
  *retstr->var2 = v6;
  v7 = *&self[3].var4;
  *&retstr->var2[2] = *&self[3].var3[2];
  *retstr->var3 = v7;
  return self;
}

- (void)setPositionInput:(id *)a3
{
  v4 = *a3->var2;
  v3 = *&a3->var2[2];
  *&self->_positionInput.data = *&a3->var0;
  *self->_positionInput.dim = v4;
  *&self->_positionInput.dim[2] = v3;
  v5 = *&a3->var6;
  v7 = *a3->var3;
  v6 = *&a3->var3[2];
  *&self->_positionInput.width = *&a3->var4;
  *&self->_positionInput.channels = v5;
  *self->_positionInput.stride = v7;
  *&self->_positionInput.stride[2] = v6;
  v9 = *&a3->var10;
  v8 = *&a3->var12;
  v10 = *&a3->var8;
  *&self->_positionInput.storage_type = *&a3->var14;
  *&self->_positionInput.stride_height = v9;
  *&self->_positionInput.stride_batch_number = v8;
  *&self->_positionInput.sequence_length = v10;
}

- ($FD4688982923A924290ECB669CAF1EC2)maskInput
{
  v3 = *&self[5].var1;
  *&retstr->var10 = *&self[4].var14;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[5].var2[1];
  v4 = *&self[4].var8;
  *&retstr->var3[2] = *&self[4].var6;
  *&retstr->var4 = v4;
  v5 = *&self[4].var12;
  *&retstr->var6 = *&self[4].var10;
  *&retstr->var8 = v5;
  v6 = *self[4].var3;
  *&retstr->var0 = *&self[4].var2[2];
  *retstr->var2 = v6;
  v7 = *&self[4].var4;
  *&retstr->var2[2] = *&self[4].var3[2];
  *retstr->var3 = v7;
  return self;
}

- (void)setMaskInput:(id *)a3
{
  v4 = *a3->var2;
  v3 = *&a3->var2[2];
  *&self->_maskInput.data = *&a3->var0;
  *self->_maskInput.dim = v4;
  *&self->_maskInput.dim[2] = v3;
  v5 = *&a3->var6;
  v7 = *a3->var3;
  v6 = *&a3->var3[2];
  *&self->_maskInput.width = *&a3->var4;
  *&self->_maskInput.channels = v5;
  *self->_maskInput.stride = v7;
  *&self->_maskInput.stride[2] = v6;
  v9 = *&a3->var10;
  v8 = *&a3->var12;
  v10 = *&a3->var8;
  *&self->_maskInput.storage_type = *&a3->var14;
  *&self->_maskInput.stride_height = v9;
  *&self->_maskInput.stride_batch_number = v8;
  *&self->_maskInput.sequence_length = v10;
}

- ($FD4688982923A924290ECB669CAF1EC2)blockInput
{
  v3 = *&self[6].var1;
  *&retstr->var10 = *&self[5].var14;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[6].var2[1];
  v4 = *&self[5].var8;
  *&retstr->var3[2] = *&self[5].var6;
  *&retstr->var4 = v4;
  v5 = *&self[5].var12;
  *&retstr->var6 = *&self[5].var10;
  *&retstr->var8 = v5;
  v6 = *self[5].var3;
  *&retstr->var0 = *&self[5].var2[2];
  *retstr->var2 = v6;
  v7 = *&self[5].var4;
  *&retstr->var2[2] = *&self[5].var3[2];
  *retstr->var3 = v7;
  return self;
}

- (void)setBlockInput:(id *)a3
{
  v4 = *a3->var2;
  v3 = *&a3->var2[2];
  *&self->_blockInput.data = *&a3->var0;
  *self->_blockInput.dim = v4;
  *&self->_blockInput.dim[2] = v3;
  v5 = *&a3->var6;
  v7 = *a3->var3;
  v6 = *&a3->var3[2];
  *&self->_blockInput.width = *&a3->var4;
  *&self->_blockInput.channels = v5;
  *self->_blockInput.stride = v7;
  *&self->_blockInput.stride[2] = v6;
  v9 = *&a3->var10;
  v8 = *&a3->var12;
  v10 = *&a3->var8;
  *&self->_blockInput.storage_type = *&a3->var14;
  *&self->_blockInput.stride_height = v9;
  *&self->_blockInput.stride_batch_number = v8;
  *&self->_blockInput.sequence_length = v10;
}

- ($FD4688982923A924290ECB669CAF1EC2)blockOutput
{
  v3 = *&self[7].var1;
  *&retstr->var10 = *&self[6].var14;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[7].var2[1];
  v4 = *&self[6].var8;
  *&retstr->var3[2] = *&self[6].var6;
  *&retstr->var4 = v4;
  v5 = *&self[6].var12;
  *&retstr->var6 = *&self[6].var10;
  *&retstr->var8 = v5;
  v6 = *self[6].var3;
  *&retstr->var0 = *&self[6].var2[2];
  *retstr->var2 = v6;
  v7 = *&self[6].var4;
  *&retstr->var2[2] = *&self[6].var3[2];
  *retstr->var3 = v7;
  return self;
}

- (void)setBlockOutput:(id *)a3
{
  v4 = *a3->var2;
  v3 = *&a3->var2[2];
  *&self->_blockOutput.data = *&a3->var0;
  *self->_blockOutput.dim = v4;
  *&self->_blockOutput.dim[2] = v3;
  v5 = *&a3->var6;
  v7 = *a3->var3;
  v6 = *&a3->var3[2];
  *&self->_blockOutput.width = *&a3->var4;
  *&self->_blockOutput.channels = v5;
  *self->_blockOutput.stride = v7;
  *&self->_blockOutput.stride[2] = v6;
  v9 = *&a3->var10;
  v8 = *&a3->var12;
  v10 = *&a3->var8;
  *&self->_blockOutput.storage_type = *&a3->var14;
  *&self->_blockOutput.stride_height = v9;
  *&self->_blockOutput.stride_batch_number = v8;
  *&self->_blockOutput.sequence_length = v10;
}

- (map<std::string,)stateOutputEspressoBuffers
{
  retstr->__tree_.__end_node_.__left_ = 0;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  p_size = &self[4].__tree_.__size_;
  left = self[4].__tree_.__end_node_.__left_;
  if (left != &self[4].__tree_.__size_)
  {
    do
    {
      self = sub_1D9DB7C50(retstr, &retstr->__tree_.__end_node_, &left[1].__tree_.__end_node_.__left_);
      begin_node = left->__tree_.__end_node_.__left_;
      if (begin_node)
      {
        do
        {
          size = begin_node;
          begin_node = begin_node->__tree_.__begin_node_;
        }

        while (begin_node);
      }

      else
      {
        do
        {
          size = left->__tree_.__size_;
          v8 = *size == left;
          left = size;
        }

        while (!v8);
      }

      left = size;
    }

    while (size != p_size);
  }

  return self;
}

- (void)setStateOutputEspressoBuffers:()map<std:()std:()std:(std:(std::vector<float>>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :vector<float> :string
{
  p_stateOutputEspressoBuffers = &self->_stateOutputEspressoBuffers;
  if (p_stateOutputEspressoBuffers != a3)
  {
    sub_1D9DB8068(p_stateOutputEspressoBuffers, a3->__tree_.__begin_node_, &a3->__tree_.__end_node_);
  }
}

- (map<std::string,)stateInputEspressoBuffers
{
  retstr->__tree_.__end_node_.__left_ = 0;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  p_size = &self[5].__tree_.__size_;
  left = self[5].__tree_.__end_node_.__left_;
  if (left != &self[5].__tree_.__size_)
  {
    do
    {
      self = sub_1D9DB7C50(retstr, &retstr->__tree_.__end_node_, &left[1].__tree_.__end_node_.__left_);
      begin_node = left->__tree_.__end_node_.__left_;
      if (begin_node)
      {
        do
        {
          size = begin_node;
          begin_node = begin_node->__tree_.__begin_node_;
        }

        while (begin_node);
      }

      else
      {
        do
        {
          size = left->__tree_.__size_;
          v8 = *size == left;
          left = size;
        }

        while (!v8);
      }

      left = size;
    }

    while (size != p_size);
  }

  return self;
}

- (void)setStateInputEspressoBuffers:()map<std:()std:()std:(std:(std::vector<float>>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :vector<float> :string
{
  p_stateInputEspressoBuffers = &self->_stateInputEspressoBuffers;
  if (p_stateInputEspressoBuffers != a3)
  {
    sub_1D9DB8068(p_stateInputEspressoBuffers, a3->__tree_.__begin_node_, &a3->__tree_.__end_node_);
  }
}

- (map<std::string,)stateInputEspressoBuffersShape
{
  retstr->__tree_.__end_node_.__left_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  left = self[6].__tree_.__end_node_.__left_;
  if (left != &self[6].__tree_.__size_)
  {
    do
    {
      if (p_end_node->__left_)
      {
        v5 = p_end_node + 1;
      }

      else
      {
        v5 = p_end_node;
      }

      if (!v5->__left_)
      {
        sub_1D9DB8660();
      }

      begin_node = left->__tree_.__end_node_.__left_;
      if (begin_node)
      {
        do
        {
          size = begin_node;
          begin_node = begin_node->__tree_.__begin_node_;
        }

        while (begin_node);
      }

      else
      {
        do
        {
          size = left->__tree_.__size_;
          v8 = size->__tree_.__begin_node_ == left;
          left = size;
        }

        while (!v8);
      }

      left = size;
    }

    while (size != &self[6].__tree_.__size_);
  }

  return self;
}

- (void)setStateInputEspressoBuffersShape:()map<std:(std:()std:(std:(std::vector<unsigned long>>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :vector<unsigned)long> :string
{
  p_stateInputEspressoBuffersShape = &self->_stateInputEspressoBuffersShape;
  if (&self->_stateInputEspressoBuffersShape != a3)
  {
    p_end_node = &a3->__tree_.__end_node_;
    begin_node = a3->__tree_.__begin_node_;
    if (self->_stateInputEspressoBuffersShape.__tree_.__size_)
    {
      v6 = p_stateInputEspressoBuffersShape->__tree_.__begin_node_;
      v8 = &self->_stateInputEspressoBuffersShape.__tree_.__end_node_;
      left = self->_stateInputEspressoBuffersShape.__tree_.__end_node_.__left_;
      self->_stateInputEspressoBuffersShape.__tree_.__begin_node_ = &self->_stateInputEspressoBuffersShape.__tree_.__end_node_;
      left[2] = 0;
      self->_stateInputEspressoBuffersShape.__tree_.__end_node_.__left_ = 0;
      self->_stateInputEspressoBuffersShape.__tree_.__size_ = 0;
      if (v6[1].__left_)
      {
        v9 = v6[1].__left_;
      }

      else
      {
        v9 = v6;
      }

      p_left = &v9->__left_;
      if (v9)
      {
        v10 = v9[2].__left_;
        if (v10)
        {
          v11 = *v10;
          if (*v10 == v9)
          {
            *v10 = 0;
            while (1)
            {
              v34 = *(v10 + 1);
              if (!v34)
              {
                break;
              }

              do
              {
                v10 = v34;
                v34 = *v34;
              }

              while (v34);
            }
          }

          else
          {
            for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
            {
              do
              {
                v10 = v11;
                v11 = *v11;
              }

              while (v11);
            }
          }
        }

        v35 = v10;
        if (begin_node != p_end_node)
        {
          while (1)
          {
            std::string::operator=(&v9[4], &begin_node[4]);
            if (v9 != begin_node)
            {
              sub_1D9D64204(&v9[7], begin_node[7].__left_, begin_node[8].__left_, (begin_node[8].__left_ - begin_node[7].__left_) >> 3);
            }

            v12 = v8->__left_;
            v13 = &p_stateInputEspressoBuffersShape->__tree_.__end_node_;
            v14 = &p_stateInputEspressoBuffersShape->__tree_.__end_node_;
            if (!v8->__left_)
            {
              break;
            }

            v15 = *(p_left + 55);
            if (v15 >= 0)
            {
              v16 = *(p_left + 55);
            }

            else
            {
              v16 = p_left[5];
            }

            if (v15 >= 0)
            {
              v17 = p_left + 4;
            }

            else
            {
              v17 = p_left[4];
            }

            do
            {
              while (1)
              {
                v13 = v12;
                v20 = v12[4].__left_;
                v18 = v12 + 4;
                v19 = v20;
                left_high = SHIBYTE(v18[2].__left_);
                if (left_high >= 0)
                {
                  v22 = HIBYTE(v18[2].__left_);
                }

                else
                {
                  v22 = v18[1].__left_;
                }

                if (left_high >= 0)
                {
                  v23 = v18;
                }

                else
                {
                  v23 = v19;
                }

                if (v22 >= v16)
                {
                  v24 = v16;
                }

                else
                {
                  v24 = v22;
                }

                v25 = memcmp(v17, v23, v24);
                v26 = v16 < v22;
                if (v25)
                {
                  v26 = v25 < 0;
                }

                if (!v26)
                {
                  break;
                }

                v12 = v13->__left_;
                v14 = v13;
                if (!v13->__left_)
                {
                  goto LABEL_36;
                }
              }

              v12 = v13[1].__left_;
            }

            while (v12);
            *p_left = 0;
            p_left[1] = 0;
            p_left[2] = v13;
            v13[1].__left_ = p_left;
            v27 = *p_stateInputEspressoBuffersShape->__tree_.__begin_node_;
            if (v27)
            {
              goto LABEL_37;
            }

LABEL_38:
            sub_1D9D1312C(p_stateInputEspressoBuffersShape->__tree_.__end_node_.__left_, p_left);
            ++p_stateInputEspressoBuffersShape->__tree_.__size_;
            v9 = v35;
            p_left = v35;
            if (v35)
            {
              v10 = *(v35 + 2);
              if (v10)
              {
                v28 = *v10;
                if (*v10 == v35)
                {
                  *v10 = 0;
                  while (1)
                  {
                    v32 = *(v10 + 1);
                    if (!v32)
                    {
                      break;
                    }

                    do
                    {
                      v10 = v32;
                      v32 = *v32;
                    }

                    while (v32);
                  }
                }

                else
                {
                  for (*(v10 + 1) = 0; v28; v28 = *(v10 + 1))
                  {
                    do
                    {
                      v10 = v28;
                      v28 = *v28;
                    }

                    while (v28);
                  }
                }
              }

              v35 = v10;
              v29 = begin_node[1].__left_;
              if (v29)
              {
                do
                {
LABEL_47:
                  v30 = v29;
                  v29 = v29->__left_;
                }

                while (v29);
                goto LABEL_51;
              }
            }

            else
            {
              v10 = 0;
              v29 = begin_node[1].__left_;
              if (v29)
              {
                goto LABEL_47;
              }
            }

            do
            {
              v30 = begin_node[2].__left_;
              v31 = v30->__left_ == begin_node;
              begin_node = v30;
            }

            while (!v31);
LABEL_51:
            if (v9)
            {
              begin_node = v30;
              if (v30 != p_end_node)
              {
                continue;
              }
            }

            goto LABEL_62;
          }

LABEL_36:
          *p_left = 0;
          p_left[1] = 0;
          p_left[2] = v13;
          v14->__left_ = p_left;
          v27 = *p_stateInputEspressoBuffersShape->__tree_.__begin_node_;
          if (!v27)
          {
            goto LABEL_38;
          }

LABEL_37:
          p_stateInputEspressoBuffersShape->__tree_.__begin_node_ = v27;
          goto LABEL_38;
        }

        v30 = begin_node;
LABEL_62:
        sub_1D9DB87A4(v9);
        if (v10)
        {
          for (i = *(v10 + 2); i; i = *(i + 2))
          {
            v10 = i;
          }

          sub_1D9DB87A4(v10);
        }
      }

      else
      {
        v30 = begin_node;
      }

      begin_node = v30;
    }

    if (begin_node != p_end_node)
    {
      sub_1D9DB8660();
    }
  }
}

- (vector<std::string,)decoderInputNames
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_1D9D29BD0(retstr, self->_decoderInputNames.__begin_, self->_decoderInputNames.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_decoderInputNames.__end_ - self->_decoderInputNames.__begin_) >> 3));
}

- (void)setDecoderInputNames:()vector<std:(std::allocator<std::string>> *)a3 :string
{
  p_decoderInputNames = &self->_decoderInputNames;
  if (p_decoderInputNames != a3)
  {
    sub_1D9D75118(p_decoderInputNames, a3->__begin_, a3->__end_, 0xAAAAAAAAAAAAAAABLL * ((a3->__end_ - a3->__begin_) >> 3));
  }
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 13) = self + 112;
  *(self + 18) = 0;
  *(self + 17) = 0;
  *(self + 16) = self + 136;
  *(self + 21) = 0;
  *(self + 20) = 0;
  *(self + 19) = self + 160;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 22) = 0;
  return self;
}

@end