@interface CSUImageCaptionDecoderAXKVCacheE1Network
- (BOOL)loadDecoderNetworkfromConfiguration:(id)configuration error:(id *)error;
- (EspressoTensor)inputTokens;
- (ModelOutput)predict;
- (id).cxx_construct;
- (map<std::string,)stateInputEspressoBuffers;
- (map<std::string,)stateInputEspressoBuffersShape;
- (map<std::string,)stateOutputEspressoBuffers;
- (shared_ptr<ik::EspressoNet>)decoderNet;
- (shared_ptr<std::unordered_map<std::string,)getOutputState;
- (vector<float,)inWords;
- (vector<float,)inputMask;
- (vector<float,)positionInput;
- (vector<float,)scaleInput;
- (vector<float,)wordProbs;
- (void)buildNetworkForSequenceLength:(unint64_t)length error:(id *)error;
- (void)copyInputContextIDs:(const void *)ds EncoderFeatures:(const void *)features KVCache:(const void *)cache MaskPosition:(unint64_t)position;
- (void)copyInputState:(const void *)state;
@end

@implementation CSUImageCaptionDecoderAXKVCacheE1Network

- (BOOL)loadDecoderNetworkfromConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v9 = objc_msgSend_decoderNetworkPath(configurationCopy, v5, v6, v7, v8);
  v10 = v9;
  v15 = objc_msgSend_UTF8String(v10, v11, v12, v13, v14);
  v16 = strlen(v15);
  if (v16 <= 0x7FFFFFFFFFFFFFF7)
  {
    v17 = v16;
    if (v16 < 0x17)
    {
      v24 = v16;
      if (v16)
      {
        memmove(&__dst, v15, v16);
      }

      *(&__dst + v17) = 0;

      objc_msgSend_espressoExecutionEngine(configurationCopy, v18, v19, v20, v21);
      operator new();
    }

    operator new();
  }

  sub_1AC060A04();
}

- (void)buildNetworkForSequenceLength:(unint64_t)length error:(id *)error
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *(*(self->_decoderNet.__ptr_ + 1) + 24);
  espresso_plan_build_clean();
  operator new();
}

- (void)copyInputContextIDs:(const void *)ds EncoderFeatures:(const void *)features KVCache:(const void *)cache MaskPosition:(unint64_t)position
{
  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  v31 = 21;
  strcpy(__p, "att_feats_placeholder");
  v29[0] = __p;
  v10 = sub_1AC0CF398(v32, __p);
  v11 = v10;
  *(v10 + 12) = *(features + 2);
  if (v10 + 5 != features)
  {
    sub_1AC06A3B8(v10 + 7, *(features + 2), *(features + 3), (*(features + 3) - *(features + 2)) >> 3);
  }

  v13 = *(features + 5);
  v12 = *(features + 6);
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = v11[11];
  v11[10] = v13;
  v11[11] = v12;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((v31 & 0x80000000) == 0)
    {
LABEL_8:
      v15 = position + 1;
      if (position == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*__p);
  v15 = position + 1;
  if (position == -1)
  {
LABEL_9:
    MEMORY[0] = 0;
    v16 = *ds;
    if (*(ds + 1) == *ds)
    {
      goto LABEL_21;
    }

    v17 = v16 + position;
    v18 = 4 * position - 4;
    if (v18 >= 0x1C)
    {
      v21 = (v18 >> 2) + 1;
      v22 = v21 & 0x7FFFFFFFFFFFFFF8;
      v19 = v22 * 4 + 4;
      v20 = &v16->u32[v22];
      v23 = v16 + 1;
      v24 = 20;
      v25 = v21 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v26 = vcvtq_f32_u32(*v23);
        *(v24 - 16) = vcvtq_f32_u32(v23[-1]);
        *v24 = v26;
        v23 += 2;
        v24 += 32;
        v25 -= 8;
      }

      while (v25);
      if (v21 == (v21 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_21:
        *__p = MEMORY[0xFFFFFFFFFFFFFFFC];
        sub_1AC0CD2B0(&self->_inWords.__begin_, __p, &__p[4], 1uLL);
        v28 = *(self->_decoderNet.__ptr_ + 1);
        HIBYTE(v29[2]) = 11;
        strcpy(v29, "in_word_ids");
        sub_1AC0C9D84(__p, *v28, v28[1], v29, self->_inWords.__begin_);
      }
    }

    else
    {
      v19 = 4;
      v20 = *ds;
    }

    do
    {
      v27 = *v20++;
      *v19 = v27;
      v19 += 4;
    }

    while (v20 != v17);
    goto LABEL_21;
  }

LABEL_13:
  if (!(v15 >> 62))
  {
    operator new();
  }

  sub_1AC060AAC();
}

- (void)copyInputState:(const void *)state
{
  if (!*state)
  {
    v46 = sub_1AC090E50();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC05D000, v46, OS_LOG_TYPE_INFO, "No input state to be copied!", buf, 2u);
    }

    return;
  }

  sub_1AC0CB4A4(&v58, *state);
  v4 = v59;
  if (!v59)
  {
    goto LABEL_97;
  }

  p_end_node = &self->_stateInputEspressoBuffersShape.__tree_.__end_node_;
  do
  {
    if (v4[39] < 0)
    {
      sub_1AC0674A0(v53, *(v4 + 2), *(v4 + 3));
    }

    else
    {
      *v53 = *(v4 + 1);
      v54 = *(v4 + 4);
    }

    v56 = 0;
    v57 = 0;
    v55 = 0;
    v7 = *(v4 + 5);
    v6 = *(v4 + 6);
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    if (v54 >= 0)
    {
      v8 = HIBYTE(v54);
    }

    else
    {
      v8 = v53[1];
    }

    if (v8 + 3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AC060A04();
    }

    if (v8 + 3 >= 0x17)
    {
      operator new();
    }

    v51[1] = 0;
    v52 = 0;
    v51[0] = 0;
    HIBYTE(v52) = v8 + 3;
    if (v8)
    {
      if (v54 >= 0)
      {
        v9 = v53;
      }

      else
      {
        v9 = v53[0];
      }

      memmove(v51, v9, v8);
    }

    v10 = 0;
    *(v51 + v8) = 7235935;
    v49 = 1;
    left = p_end_node->__left_;
    if (!p_end_node->__left_)
    {
LABEL_49:
      operator new();
    }

LABEL_22:
    if (v52 >= 0)
    {
      v12 = v51;
    }

    else
    {
      v12 = v51[0];
    }

    if (v52 >= 0)
    {
      v13 = HIBYTE(v52);
    }

    else
    {
      v13 = v51[1];
    }

    while (1)
    {
      while (1)
      {
        v14 = left;
        v17 = left[4];
        v15 = left + 4;
        v16 = v17;
        v18 = *(v15 + 23);
        v19 = v18 >= 0 ? v15 : v16;
        v20 = v18 >= 0 ? *(v15 + 23) : v15[1];
        v21 = (v20 >= v13 ? v13 : v20);
        v22 = memcmp(v12, v19, v21);
        if (v22)
        {
          break;
        }

        if (v13 >= v20)
        {
          goto LABEL_42;
        }

LABEL_28:
        left = *v14;
        if (!*v14)
        {
          goto LABEL_49;
        }
      }

      if (v22 < 0)
      {
        goto LABEL_28;
      }

LABEL_42:
      v23 = memcmp(v19, v12, v21);
      if (!v23)
      {
        break;
      }

      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_46:
      left = v14[1];
      if (!left)
      {
        goto LABEL_49;
      }
    }

    if (v20 < v13)
    {
      goto LABEL_46;
    }

LABEL_50:
    if (v10 < (v14[8] - v14[7]) >> 3)
    {
      v24 = p_end_node->__left_;
      if (!p_end_node->__left_)
      {
LABEL_103:
        operator new();
      }

      if (v52 >= 0)
      {
        v25 = v51;
      }

      else
      {
        v25 = v51[0];
      }

      if (v52 >= 0)
      {
        v26 = HIBYTE(v52);
      }

      else
      {
        v26 = v51[1];
      }

      while (1)
      {
        v27 = v24;
        v30 = v24[4];
        v28 = v24 + 4;
        v29 = v30;
        v31 = *(v28 + 23);
        if (v31 >= 0)
        {
          v32 = v28;
        }

        else
        {
          v32 = v29;
        }

        if (v31 >= 0)
        {
          v33 = *(v28 + 23);
        }

        else
        {
          v33 = v28[1];
        }

        if (v33 >= v26)
        {
          v34 = v26;
        }

        else
        {
          v34 = v33;
        }

        v35 = memcmp(v25, v32, v34);
        if (v35)
        {
          if (v35 < 0)
          {
            goto LABEL_58;
          }
        }

        else if (v26 < v33)
        {
LABEL_58:
          v24 = *v27;
          if (!*v27)
          {
            goto LABEL_103;
          }

          continue;
        }

        v36 = memcmp(v32, v25, v34);
        if (v36)
        {
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_78;
          }
        }

        else if (v33 >= v26)
        {
LABEL_78:
          v49 *= *(v27[7] + 8 * v10++);
          left = p_end_node->__left_;
          if (!p_end_node->__left_)
          {
            goto LABEL_49;
          }

          goto LABEL_22;
        }

        v24 = v27[1];
        if (!v24)
        {
          goto LABEL_103;
        }
      }
    }

    if (v49)
    {
      *buf = v51;
      v37 = sub_1AC0CDDC8(&self->_stateInputEspressoBuffers, v51);
      if (v49 > (v37[8] - v37[7]) >> 2)
      {
        *buf = v51;
        v38 = sub_1AC0CDDC8(&self->_stateInputEspressoBuffers, v51);
        v39 = v38[7];
        v40 = (v38[8] - v39) >> 2;
        if (v49 <= v40)
        {
          if (v49 < v40)
          {
            v38[8] = v39 + 4 * v49;
          }
        }

        else
        {
          sub_1AC0CCF4C((v38 + 7), v49 - v40);
        }
      }

      *buf = v51;
      v41 = (sub_1AC0CDDC8(&self->_stateInputEspressoBuffers, v51) + 7);
      if (v41 != &v55)
      {
        sub_1AC098720(v41, v55, v56, (v56 - v55) >> 2);
      }

      v42 = *(self->_decoderNet.__ptr_ + 1);
      v60 = v51;
      v43 = sub_1AC0CDDC8(&self->_stateInputEspressoBuffers, v51);
      sub_1AC0C9D84(buf, *v42, v42[1], v51, v43[7]);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[0]);
    }

    v4 = *v4;
  }

  while (v4);
  v44 = v59;
  if (v59)
  {
    do
    {
      v47 = *v44;
      v48 = *(v44 + 5);
      if (v48)
      {
        *(v44 + 6) = v48;
        operator delete(v48);
      }

      if (v44[39] < 0)
      {
        operator delete(*(v44 + 2));
      }

      operator delete(v44);
      v44 = v47;
    }

    while (v47);
  }

LABEL_97:
  v45 = v58;
  v58 = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

- (ModelOutput)predict
{
  sub_1AC0CB8EC(self->_decoderNet.__ptr_, &self->_outputTensors);
  sub_1AC0669EC(self->_decoderNet.__ptr_, &self->_inputTensors, v14);
  sub_1AC06ABB4(v14);
  vocabSize = self->_vocabSize;
  if (vocabSize)
  {
    if ((vocabSize & 0x8000000000000000) == 0)
    {
      begin = self->_wordProbs.__begin_;
      operator new();
    }

    sub_1AC060AAC();
  }

  result = objc_msgSend_getOutputState(self, v5, v6, v7, v8);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  retstr->var0.__begin_ = 0;
  retstr->var0.__end_ = 0;
  retstr->var0.__cap_ = 0;
  retstr->var1.var0 = v12;
  retstr->var1.var1 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    retstr->var2 = 1;
    if (!atomic_fetch_add((v13 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v13 + 16))();
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    retstr->var2 = 1;
  }

  if (v13 && !atomic_fetch_add((v13 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v13 + 16))();
    std::__shared_weak_count::__release_weak(v13);
  }

  return result;
}

- (shared_ptr<std::unordered_map<std::string,)getOutputState
{
  memset(v54, 0, sizeof(v54));
  v55 = 1065353216;
  begin_node = self->_stateOutputEspressoBuffers.__tree_.__begin_node_;
  p_end_node = &self->_stateOutputEspressoBuffers.__tree_.__end_node_;
  if (begin_node == &self->_stateOutputEspressoBuffers.__tree_.__end_node_)
  {
LABEL_97:
    operator new();
  }

  v44 = &self->_stateInputEspressoBuffers.__tree_.__end_node_;
  while (1)
  {
    left_high = SHIBYTE(begin_node[6].__left_);
    if (left_high < 0)
    {
      left = begin_node[4].__left_;
      v5 = begin_node[5].__left_ - 4;
      if (v5 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_98:
        sub_1AC060A04();
      }
    }

    else
    {
      left = &begin_node[4];
      v5 = left_high - 4;
      if ((left_high - 4) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_98;
      }
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v53 = v5;
    if (&left[v5] != left)
    {
      memmove(__dst, left, v5);
    }

    *(__dst + v5) = 0;
    if ((v53 & 0x80u) == 0)
    {
      v6 = v53;
    }

    else
    {
      v6 = __dst[1];
    }

    if (v6 + 3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    if (v6 + 3 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v51 = 0;
    __p[0] = 0;
    HIBYTE(v51) = v6 + 3;
    if (v6)
    {
      if ((v53 & 0x80u) == 0)
      {
        v7 = __dst;
      }

      else
      {
        v7 = __dst[0];
      }

      memmove(__p, v7, v6);
    }

    *(__p + v6) = 7235935;
    v56 = __p;
    v8 = *(sub_1AC0CDC18(&self->_stateInputEspressoBuffersShape, __p)[7] + 8);
    v56 = __p;
    v9 = *(sub_1AC0CDC18(&self->_stateInputEspressoBuffersShape, __p)[7] + 16);
    v56 = __p;
    v45 = *sub_1AC0CDC18(&self->_stateInputEspressoBuffersShape, __p)[7];
    v10 = v9 * (v8 + 1) * v45;
    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    if (v9)
    {
      v11 = 0;
      v47 = v45 * (v8 + 1);
      v48 = v45 * v8;
      __n = 4 * v45 * v8;
      do
      {
        if (!v48)
        {
          goto LABEL_58;
        }

        v12 = v44->__left_;
        if (!v44->__left_)
        {
LABEL_56:
          operator new();
        }

        if (v51 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v51 >= 0)
        {
          v14 = HIBYTE(v51);
        }

        else
        {
          v14 = __p[1];
        }

        while (1)
        {
          while (1)
          {
            v15 = v12;
            v18 = v12[4];
            v16 = v12 + 4;
            v17 = v18;
            v19 = *(v16 + 23);
            v20 = v19 >= 0 ? v16 : v17;
            v21 = v19 >= 0 ? *(v16 + 23) : v16[1];
            v22 = (v21 >= v14 ? v14 : v21);
            v23 = memcmp(v13, v20, v22);
            if (v23)
            {
              break;
            }

            if (v14 >= v21)
            {
              goto LABEL_51;
            }

LABEL_37:
            v12 = *v15;
            if (!*v15)
            {
              goto LABEL_56;
            }
          }

          if (v23 < 0)
          {
            goto LABEL_37;
          }

LABEL_51:
          v24 = memcmp(v20, v13, v22);
          if (v24)
          {
            if ((v24 & 0x80000000) == 0)
            {
              break;
            }

            goto LABEL_55;
          }

          if (v21 >= v14)
          {
            break;
          }

LABEL_55:
          v12 = v15[1];
          if (!v12)
          {
            goto LABEL_56;
          }
        }

        memcpy((4 * v47 * v11), (v15[7] + 4 * v11 * v48), __n);
LABEL_58:
        v25 = p_end_node->__left_;
        if (!p_end_node->__left_)
        {
LABEL_84:
          operator new();
        }

        v26 = HIBYTE(begin_node[6].__left_);
        if (v26 >= 0)
        {
          v27 = begin_node + 4;
        }

        else
        {
          v27 = begin_node[4].__left_;
        }

        if (v26 >= 0)
        {
          v28 = HIBYTE(begin_node[6].__left_);
        }

        else
        {
          v28 = begin_node[5].__left_;
        }

        while (2)
        {
          while (2)
          {
            v29 = v25;
            v32 = v25[4];
            v30 = v25 + 4;
            v31 = v32;
            v33 = *(v30 + 23);
            if (v33 >= 0)
            {
              v34 = v30;
            }

            else
            {
              v34 = v31;
            }

            if (v33 >= 0)
            {
              v35 = *(v30 + 23);
            }

            else
            {
              v35 = v30[1];
            }

            if (v35 >= v28)
            {
              v36 = v28;
            }

            else
            {
              v36 = v35;
            }

            v37 = memcmp(v27, v34, v36);
            if (v37)
            {
              if (v37 < 0)
              {
                goto LABEL_65;
              }
            }

            else if (v28 < v35)
            {
LABEL_65:
              v25 = *v29;
              if (!*v29)
              {
                goto LABEL_84;
              }

              continue;
            }

            break;
          }

          v38 = memcmp(v34, v27, v36);
          if (v38)
          {
            if ((v38 & 0x80000000) == 0)
            {
              goto LABEL_28;
            }

LABEL_83:
            v25 = v29[1];
            if (!v25)
            {
              goto LABEL_84;
            }

            continue;
          }

          break;
        }

        if (v35 < v28)
        {
          goto LABEL_83;
        }

LABEL_28:
        memcpy((__n + 4 * v47 * v11), (v29[7] + 4 * v11 * v45), 4 * v45);
        ++v11;
      }

      while (v11 != v9);
    }

    v56 = __dst;
    v39 = sub_1AC0D0570(v54, __dst);
    sub_1AC098720(v39 + 5, 0, 0, 0);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_88:
        v40 = begin_node[1].__left_;
        if (v40)
        {
          goto LABEL_92;
        }

        goto LABEL_94;
      }
    }

    else if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    operator delete(__dst[0]);
    v40 = begin_node[1].__left_;
    if (v40)
    {
      do
      {
LABEL_92:
        v41 = v40;
        v40 = v40->__left_;
      }

      while (v40);
      goto LABEL_3;
    }

    do
    {
LABEL_94:
      v41 = begin_node[2].__left_;
      v42 = v41->__left_ == begin_node;
      begin_node = v41;
    }

    while (!v42);
LABEL_3:
    begin_node = v41;
    if (v41 == p_end_node)
    {
      goto LABEL_97;
    }
  }
}

- (shared_ptr<ik::EspressoNet>)decoderNet
{
  cntrl = self->_decoderNet.__cntrl_;
  *v2 = self->_decoderNet.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (EspressoTensor)inputTokens
{
  retstr->_vptr$Tensor = &unk_1F20D01C0;
  ptr = self[5].storage_.__ptr_;
  retstr->shape_.sizes_.__begin_ = 0;
  retstr->type_ = ptr;
  retstr->shape_.sizes_.__end_ = 0;
  retstr->shape_.sizes_.__cap_ = 0;
  cntrl = self[5].storage_.__cntrl_;
  v5 = self[6]._vptr$Tensor;
  if (v5 != cntrl)
  {
    if (((v5 - cntrl) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  end = self[6].shape_.sizes_.__end_;
  retstr->storage_.__ptr_ = self[6].shape_.sizes_.__begin_;
  retstr->storage_.__cntrl_ = end;
  if (end)
  {
    atomic_fetch_add_explicit(end + 1, 1uLL, memory_order_relaxed);
  }

  retstr->_vptr$Tensor = &unk_1F20D0320;
  return self;
}

- (map<std::string,)stateOutputEspressoBuffers
{
  retstr->__tree_.__end_node_.__left_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  begin_node = self[5].__tree_.__begin_node_;
  v5 = &self[5].__tree_.__end_node_;
  if (begin_node != &self[5].__tree_.__end_node_)
  {
    do
    {
      self = sub_1AC0CD6E4(retstr, p_end_node, &begin_node[1].__tree_.__end_node_.__left_);
      left = begin_node->__tree_.__end_node_.__left_;
      if (left)
      {
        do
        {
          size = left;
          left = left->__tree_.__begin_node_;
        }

        while (left);
      }

      else
      {
        do
        {
          size = begin_node->__tree_.__size_;
          v9 = *size == begin_node;
          begin_node = size;
        }

        while (!v9);
      }

      begin_node = size;
    }

    while (size != v5);
  }

  return self;
}

- (map<std::string,)stateInputEspressoBuffers
{
  retstr->__tree_.__end_node_.__left_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  begin_node = self[6].__tree_.__begin_node_;
  v5 = &self[6].__tree_.__end_node_;
  if (begin_node != &self[6].__tree_.__end_node_)
  {
    do
    {
      self = sub_1AC0CD6E4(retstr, p_end_node, &begin_node[1].__tree_.__end_node_.__left_);
      left = begin_node->__tree_.__end_node_.__left_;
      if (left)
      {
        do
        {
          size = left;
          left = left->__tree_.__begin_node_;
        }

        while (left);
      }

      else
      {
        do
        {
          size = begin_node->__tree_.__size_;
          v9 = *size == begin_node;
          begin_node = size;
        }

        while (!v9);
      }

      begin_node = size;
    }

    while (size != v5);
  }

  return self;
}

- (map<std::string,)stateInputEspressoBuffersShape
{
  retstr->__tree_.__end_node_.__left_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  begin_node = self[7].__tree_.__begin_node_;
  v5 = &self[7].__tree_.__end_node_;
  if (begin_node != &self[7].__tree_.__end_node_)
  {
    do
    {
      self = sub_1AC0BC540(retstr, p_end_node, &v11, &v10, &begin_node[1].__tree_.__end_node_.__left_);
      if (!self->__tree_.__begin_node_)
      {
        sub_1AC0CD8CC();
      }

      left = begin_node->__tree_.__end_node_.__left_;
      if (left)
      {
        do
        {
          size = left;
          left = left->__tree_.__begin_node_;
        }

        while (left);
      }

      else
      {
        do
        {
          size = begin_node->__tree_.__size_;
          v9 = *size == begin_node;
          begin_node = size;
        }

        while (!v9);
      }

      begin_node = size;
    }

    while (size != v5);
  }

  return self;
}

- (vector<float,)inWords
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[8].__begin_;
  end = self[8].__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return self;
}

- (vector<float,)inputMask
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[9].__begin_;
  end = self[9].__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return self;
}

- (vector<float,)positionInput
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[10].__begin_;
  end = self[10].__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return self;
}

- (vector<float,)scaleInput
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[11].__begin_;
  end = self[11].__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return self;
}

- (vector<float,)wordProbs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[12].__begin_;
  end = self[12].__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return self;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 16) = 0;
  *(self + 15) = self + 128;
  *(self + 19) = 0;
  *(self + 17) = 0;
  *(self + 18) = self + 152;
  *(self + 23) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  *(self + 21) = self + 176;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 12) = 0u;
  *(self + 80) = 4;
  *(self + 45) = 0;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 38) = 0;
  *(self + 39) = &unk_1F20D0320;
  return self;
}

@end