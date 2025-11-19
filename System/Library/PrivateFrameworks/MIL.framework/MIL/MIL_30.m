void sub_21837BADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt1>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<float>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v35, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v34, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v35, v34);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v34);
      v32.__r_.__value_.__r.__words[0] = a1;
      v32.__r_.__value_.__l.__size_ = a2;
      v31.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v32, v13);
      Int = MIL::UInt1::GetInt(&v31);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v24 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v30, v24);
        v26 = std::string::insert(&v30, 0, "Index ");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, " cannot be negative");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v32);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v35;
      if (v36 != v35)
      {
        v18 = v36 - v35;
        v19 = (a3 + 4 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v21 = *v19++;
          v22 = v21;
          v23 = *v17++;
          *(v20 + 4 * v23) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_21837BDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 32) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 48) = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a1 + 64) = a7;
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::ValidateArgsAndTypeConstraints(a1);
}

void sub_21837BF18(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(v1 + 5, v1 + 3);
  _Unwind_Resume(a1);
}

void sub_21837C880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v42 & 1) == 0)
    {
LABEL_14:
      operator delete(v40);
      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v41);
  goto LABEL_14;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl *this, uint64_t a2)
{
  if (*(this + 68) == 1)
  {
    v4 = *(this + 16);
    if (v4 < 0)
    {
      v5 = (*(**(this + 4) + 32))(*(this + 4));
      v4 += MIL::IRTensorValueType::Rank(v5);
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(**(this + 2) + 32))(*(this + 2));
  v8 = (*(*v7 + 96))(v7);
  v9 = (*(**(*(v8 + 8) - 8) + 16))(*(*(v8 + 8) - 8));
  v10 = (*(*v9 + 48))(v9);
  v12 = *(this + 4);
  v11 = *(this + 5);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = (*(*v12 + 32))(v12);
  v14 = (*(*v13 + 96))(v13);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v14, &v431);
  v429.__r_.__value_.__r.__words[0] = 1;
  std::vector<unsigned long>::vector[abi:ne200100](&v430, (v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]) >> 3);
  MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v417, &v431, &v430, v10, v6);
  if (v430.__r_.__value_.__r.__words[0])
  {
    v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
    operator delete(v430.__r_.__value_.__l.__data_);
  }

  v15 = (*(*v12 + 32))(v12);
  v16 = (*(*v15 + 16))(v15);
  std::vector<MIL::UInt1>::vector[abi:ne200100](&v416, v16 * v10);
  std::vector<unsigned long>::vector[abi:ne200100](&v430, v424);
  std::vector<unsigned long>::vector[abi:ne200100](&v429, (v419 - v418) >> 3);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(&v417, i, &v430, &v429);
      if (v430.__r_.__value_.__l.__size_ != v430.__r_.__value_.__r.__words[0])
      {
        v18 = 0;
        do
        {
          v427 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v12);
          v428 = v19;
          v20 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v427, i);
          *(v416 + *(v430.__r_.__value_.__r.__words[0] + 8 * v18++)) = v20;
        }

        while (v18 < (v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0]) >> 3);
      }
    }
  }

  if (v429.__r_.__value_.__r.__words[0])
  {
    v429.__r_.__value_.__l.__size_ = v429.__r_.__value_.__r.__words[0];
    operator delete(v429.__r_.__value_.__l.__data_);
  }

  if (v430.__r_.__value_.__r.__words[0])
  {
    v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
    operator delete(v430.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v423 = __p;
    operator delete(__p);
  }

  if (v420)
  {
    v421 = v420;
    operator delete(v420);
  }

  if (v418)
  {
    v419 = v418;
    operator delete(v418);
  }

  if (v417.__r_.__value_.__r.__words[0])
  {
    v417.__r_.__value_.__l.__size_ = v417.__r_.__value_.__r.__words[0];
    operator delete(v417.__r_.__value_.__l.__data_);
  }

  if (v431.__r_.__value_.__r.__words[0])
  {
    v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
    operator delete(v431.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!a2)
  {
    v48 = (*(**this + 88))();
    if (v48 == 21)
    {
      MIL::PackSubByteVec(&v416, &v417);
      MIL::IRTensorValueType::MakeUInt1Value();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MIL::IRDataTypeToString(v48, &v430);
    v381 = std::string::insert(&v430, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
    v382 = *&v381->__r_.__value_.__l.__data_;
    v431.__r_.__value_.__r.__words[2] = v381->__r_.__value_.__r.__words[2];
    *&v431.__r_.__value_.__l.__data_ = v382;
    v381->__r_.__value_.__l.__size_ = 0;
    v381->__r_.__value_.__r.__words[2] = 0;
    v381->__r_.__value_.__r.__words[0] = 0;
    v383 = std::string::append(&v431, " for mask output");
    v384 = *&v383->__r_.__value_.__l.__data_;
    v417.__r_.__value_.__r.__words[2] = v383->__r_.__value_.__r.__words[2];
    *&v417.__r_.__value_.__l.__data_ = v384;
    v383->__r_.__value_.__l.__size_ = 0;
    v383->__r_.__value_.__r.__words[2] = 0;
    v383->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v417);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a2 != 1)
  {
    v379 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v379, "BlockwiseLutToSparse has two outputs, index i cannot be larger than 1.");
    __cxa_throw(v379, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = (*(**(this + 1) + 88))(*(this + 1));
  v22 = v21;
  if (v21 > 6)
  {
    if (v21 != 7)
    {
      if (v21 != 9)
      {
        if (v21 == 14)
        {
          v24 = *(this + 4);
          v23 = *(this + 5);
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          v26 = *(this + 6);
          v25 = *(this + 7);
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          }

          v28 = *(this + 2);
          v27 = *(this + 3);
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          v29 = (*(*v24 + 32))(v24);
          v30 = (*(*v29 + 96))(v29);
          MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v30, &v427);
          v31 = (*(*v28 + 32))(v28);
          v32 = (*(*v31 + 96))(v31);
          MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v32, &v425);
          v34 = *(v426 - 2);
          v33 = *(v426 - 1);
          memset(&v431, 0, sizeof(v431));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v431, v425, (v426 - 2), ((v426 - 2) - v425) >> 3);
          MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v417, &v427, &v431, v33, v6);
          if (v431.__r_.__value_.__r.__words[0])
          {
            v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
            operator delete(v431.__r_.__value_.__l.__data_);
          }

          v35 = (*(*v26 + 32))(v26);
          v36 = (*(*v35 + 88))(v35);
          v37 = v36;
          if (v36 > 20)
          {
            switch(v36)
            {
              case 21:
                v353 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v24);
                v355 = v354;
                v356 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v26);
                v358 = v357;
                Data = MIL::IRTensorValue::GetDataView<unsigned char>(v28);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v356, v358, v353, v355, &v431);
                MIL::PackSubByteVec(&v431, &v430);
                if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
                {
                  v360 = 0;
                }

                else
                {
                  v360 = v430.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v360, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt1>(v361, v362, Data, &v417, v34, &v429);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v429, &v416, &v415);
                break;
              case 22:
                v285 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v24);
                v287 = v286;
                v288 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v26);
                v290 = v289;
                v291 = MIL::IRTensorValue::GetDataView<unsigned char>(v28);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v288, v290, v285, v287, &v431);
                MIL::PackSubByteVec(&v431, &v430);
                if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
                {
                  v292 = 0;
                }

                else
                {
                  v292 = v430.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v292, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt3>(v293, v294, v291, &v417, v34, &v429);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v429, &v416, &v415);
                break;
              case 23:
                v179 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v24);
                v181 = v180;
                v182 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v26);
                v184 = v183;
                v185 = MIL::IRTensorValue::GetDataView<unsigned char>(v28);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v182, v184, v179, v181, &v431);
                MIL::PackSubByteVec(&v431, &v430);
                if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
                {
                  v186 = 0;
                }

                else
                {
                  v186 = v430.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v186, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt6>(v187, v188, v185, &v417, v34, &v429);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v429, &v416, &v415);
                break;
              default:
                goto LABEL_338;
            }
          }

          else
          {
            if (v36 == 14)
            {
              v347 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v24);
              v349 = v348;
              v350 = MIL::IRTensorValue::GetDataView<unsigned char>(v26);
              v351 = MIL::IRTensorValue::GetDataView<unsigned char>(v28);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v350, v347, v349, &v431);
              if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
              {
                v352 = 0;
              }

              else
              {
                v352 = v431.__r_.__value_.__r.__words[0];
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,unsigned char>(v352, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v351, &v417, v34, &v430);
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v430, &v416, &v415);
              goto LABEL_288;
            }

            if (v36 != 19)
            {
              if (v36 == 20)
              {
                v38 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v24);
                v40 = v39;
                v41 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v26);
                v43 = v42;
                v44 = MIL::IRTensorValue::GetDataView<unsigned char>(v28);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v41, v43, v38, v40, &v431);
                MIL::PackSubByteVec(&v431, &v430);
                if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v430.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v45, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt4>(v46, v47, v44, &v417, v34, &v429);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v429, &v416, &v415);
                goto LABEL_286;
              }

LABEL_338:
              v405 = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v37, &v429);
              v406 = std::string::insert(&v429, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
              v407 = *&v406->__r_.__value_.__l.__data_;
              v430.__r_.__value_.__r.__words[2] = v406->__r_.__value_.__r.__words[2];
              *&v430.__r_.__value_.__l.__data_ = v407;
              v406->__r_.__value_.__l.__size_ = 0;
              v406->__r_.__value_.__r.__words[2] = 0;
              v406->__r_.__value_.__r.__words[0] = 0;
              v408 = std::string::append(&v430, " for indices");
              v409 = *&v408->__r_.__value_.__l.__data_;
              v431.__r_.__value_.__r.__words[2] = v408->__r_.__value_.__r.__words[2];
              *&v431.__r_.__value_.__l.__data_ = v409;
              v408->__r_.__value_.__l.__size_ = 0;
              v408->__r_.__value_.__r.__words[2] = 0;
              v408->__r_.__value_.__r.__words[0] = 0;
              std::runtime_error::runtime_error(v405, &v431);
              __cxa_throw(v405, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v259 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v24);
            v261 = v260;
            v262 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v26);
            v264 = v263;
            v265 = MIL::IRTensorValue::GetDataView<unsigned char>(v28);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v262, v264, v259, v261, &v431);
            MIL::PackSubByteVec(&v431, &v430);
            if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
            {
              v266 = 0;
            }

            else
            {
              v266 = v430.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v266, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt2>(v267, v268, v265, &v417, v34, &v429);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v429, &v416, &v415);
          }

LABEL_286:
          if (v429.__r_.__value_.__r.__words[0])
          {
            v429.__r_.__value_.__l.__size_ = v429.__r_.__value_.__r.__words[0];
            operator delete(v429.__r_.__value_.__l.__data_);
          }

LABEL_288:
          if (v430.__r_.__value_.__r.__words[0])
          {
            v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
            operator delete(v430.__r_.__value_.__l.__data_);
          }

          if (v431.__r_.__value_.__r.__words[0])
          {
            v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
            operator delete(v431.__r_.__value_.__l.__data_);
          }

          if (__p)
          {
            v423 = __p;
            operator delete(__p);
          }

          if (v420)
          {
            v421 = v420;
            operator delete(v420);
          }

          if (v418)
          {
            v419 = v418;
            operator delete(v418);
          }

          if (v417.__r_.__value_.__r.__words[0])
          {
            v417.__r_.__value_.__l.__size_ = v417.__r_.__value_.__r.__words[0];
            operator delete(v417.__r_.__value_.__l.__data_);
          }

          if (v425)
          {
            v426 = v425;
            operator delete(v425);
          }

          if (v427)
          {
            v428 = v427;
            operator delete(v427);
          }

          MIL::IRTensorValueType::MakeUInt8Value();
        }

LABEL_334:
        v385 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v22, &v430);
        v386 = std::string::insert(&v430, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
        v387 = *&v386->__r_.__value_.__l.__data_;
        v431.__r_.__value_.__r.__words[2] = v386->__r_.__value_.__r.__words[2];
        *&v431.__r_.__value_.__l.__data_ = v387;
        v386->__r_.__value_.__l.__size_ = 0;
        v386->__r_.__value_.__r.__words[2] = 0;
        v386->__r_.__value_.__r.__words[0] = 0;
        v388 = std::string::append(&v431, " for nonzero data output");
        v389 = *&v388->__r_.__value_.__l.__data_;
        v417.__r_.__value_.__r.__words[2] = v388->__r_.__value_.__r.__words[2];
        *&v417.__r_.__value_.__l.__data_ = v389;
        v388->__r_.__value_.__l.__size_ = 0;
        v388->__r_.__value_.__r.__words[2] = 0;
        v388->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v385, &v417);
        __cxa_throw(v385, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v100 = *(this + 4);
      v99 = *(this + 5);
      if (v99)
      {
        atomic_fetch_add_explicit((v99 + 8), 1uLL, memory_order_relaxed);
      }

      v102 = *(this + 6);
      v101 = *(this + 7);
      if (v101)
      {
        atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
      }

      v104 = *(this + 2);
      v103 = *(this + 3);
      if (v103)
      {
        atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
      }

      v105 = (*(*v100 + 32))(v100);
      v106 = (*(*v105 + 96))(v105);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v106, &v427);
      v107 = (*(*v104 + 32))(v104);
      v108 = (*(*v107 + 96))(v107);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v108, &v425);
      v110 = *(v426 - 2);
      v109 = *(v426 - 1);
      memset(&v431, 0, sizeof(v431));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v431, v425, (v426 - 2), ((v426 - 2) - v425) >> 3);
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v417, &v427, &v431, v109, v6);
      if (v431.__r_.__value_.__r.__words[0])
      {
        v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
        operator delete(v431.__r_.__value_.__l.__data_);
      }

      v111 = (*(*v102 + 32))(v102);
      v112 = (*(*v111 + 88))(v111);
      v113 = v112;
      if (v112 > 20)
      {
        switch(v112)
        {
          case 21:
            v311 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v100);
            v313 = v312;
            v314 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v102);
            v316 = v315;
            v317 = MIL::IRTensorValue::GetDataView<signed char>(v104);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v314, v316, v311, v313, &v431);
            MIL::PackSubByteVec(&v431, &v430);
            if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
            {
              v318 = 0;
            }

            else
            {
              v318 = v430.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v318, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt1>(v319, v320, v317, &v417, v110, &v429);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v429, &v416, &v415);
            break;
          case 22:
            v229 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v100);
            v231 = v230;
            v232 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v102);
            v234 = v233;
            v235 = MIL::IRTensorValue::GetDataView<signed char>(v104);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v232, v234, v229, v231, &v431);
            MIL::PackSubByteVec(&v431, &v430);
            if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
            {
              v236 = 0;
            }

            else
            {
              v236 = v430.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v236, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt3>(v237, v238, v235, &v417, v110, &v429);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v429, &v416, &v415);
            break;
          case 23:
            v159 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v100);
            v161 = v160;
            v162 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v102);
            v164 = v163;
            v165 = MIL::IRTensorValue::GetDataView<signed char>(v104);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v162, v164, v159, v161, &v431);
            MIL::PackSubByteVec(&v431, &v430);
            if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
            {
              v166 = 0;
            }

            else
            {
              v166 = v430.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v166, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt6>(v167, v168, v165, &v417, v110, &v429);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v429, &v416, &v415);
            break;
          default:
            goto LABEL_336;
        }
      }

      else
      {
        if (v112 == 14)
        {
          v305 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v100);
          v307 = v306;
          v308 = MIL::IRTensorValue::GetDataView<unsigned char>(v102);
          v309 = MIL::IRTensorValue::GetDataView<signed char>(v104);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v308, v305, v307, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v310 = 0;
          }

          else
          {
            v310 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,unsigned char>(v310, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v309, &v417, v110, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v430, &v416, &v415);
          goto LABEL_230;
        }

        if (v112 != 19)
        {
          if (v112 == 20)
          {
            v114 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v100);
            v116 = v115;
            v117 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v102);
            v119 = v118;
            v120 = MIL::IRTensorValue::GetDataView<signed char>(v104);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v117, v119, v114, v116, &v431);
            MIL::PackSubByteVec(&v431, &v430);
            if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
            {
              v121 = 0;
            }

            else
            {
              v121 = v430.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v121, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt4>(v122, v123, v120, &v417, v110, &v429);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v429, &v416, &v415);
            goto LABEL_228;
          }

LABEL_336:
          v395 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v113, &v429);
          v396 = std::string::insert(&v429, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
          v397 = *&v396->__r_.__value_.__l.__data_;
          v430.__r_.__value_.__r.__words[2] = v396->__r_.__value_.__r.__words[2];
          *&v430.__r_.__value_.__l.__data_ = v397;
          v396->__r_.__value_.__l.__size_ = 0;
          v396->__r_.__value_.__r.__words[2] = 0;
          v396->__r_.__value_.__r.__words[0] = 0;
          v398 = std::string::append(&v430, " for indices");
          v399 = *&v398->__r_.__value_.__l.__data_;
          v431.__r_.__value_.__r.__words[2] = v398->__r_.__value_.__r.__words[2];
          *&v431.__r_.__value_.__l.__data_ = v399;
          v398->__r_.__value_.__l.__size_ = 0;
          v398->__r_.__value_.__r.__words[2] = 0;
          v398->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v395, &v431);
          __cxa_throw(v395, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v219 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v100);
        v221 = v220;
        v222 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v102);
        v224 = v223;
        v225 = MIL::IRTensorValue::GetDataView<signed char>(v104);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v222, v224, v219, v221, &v431);
        MIL::PackSubByteVec(&v431, &v430);
        if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
        {
          v226 = 0;
        }

        else
        {
          v226 = v430.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v226, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt2>(v227, v228, v225, &v417, v110, &v429);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v429, &v416, &v415);
      }

LABEL_228:
      if (v429.__r_.__value_.__r.__words[0])
      {
        v429.__r_.__value_.__l.__size_ = v429.__r_.__value_.__r.__words[0];
        operator delete(v429.__r_.__value_.__l.__data_);
      }

LABEL_230:
      if (v430.__r_.__value_.__r.__words[0])
      {
        v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
        operator delete(v430.__r_.__value_.__l.__data_);
      }

      if (v431.__r_.__value_.__r.__words[0])
      {
        v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
        operator delete(v431.__r_.__value_.__l.__data_);
      }

      if (__p)
      {
        v423 = __p;
        operator delete(__p);
      }

      if (v420)
      {
        v421 = v420;
        operator delete(v420);
      }

      if (v418)
      {
        v419 = v418;
        operator delete(v418);
      }

      if (v417.__r_.__value_.__r.__words[0])
      {
        v417.__r_.__value_.__l.__size_ = v417.__r_.__value_.__r.__words[0];
        operator delete(v417.__r_.__value_.__l.__data_);
      }

      if (v425)
      {
        v426 = v425;
        operator delete(v425);
      }

      if (v427)
      {
        v428 = v427;
        operator delete(v427);
      }

      MIL::IRTensorValueType::MakeInt8Value();
    }

    v75 = *(this + 4);
    v74 = *(this + 5);
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
    }

    v77 = *(this + 6);
    v76 = *(this + 7);
    if (v76)
    {
      atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
    }

    v79 = *(this + 2);
    v78 = *(this + 3);
    if (v78)
    {
      atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
    }

    v80 = (*(*v75 + 32))(v75);
    v81 = (*(*v80 + 96))(v80);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v81, &v427);
    v82 = (*(*v79 + 32))(v79);
    v83 = (*(*v82 + 96))(v82);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v83, &v425);
    v85 = *(v426 - 2);
    v84 = *(v426 - 1);
    memset(&v431, 0, sizeof(v431));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v431, v425, (v426 - 2), ((v426 - 2) - v425) >> 3);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v417, &v427, &v431, v84, v6);
    if (v431.__r_.__value_.__r.__words[0])
    {
      v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
      operator delete(v431.__r_.__value_.__l.__data_);
    }

    v86 = (*(*v77 + 32))(v77);
    v87 = (*(*v86 + 88))(v86);
    v88 = v87;
    if (v87 > 20)
    {
      switch(v87)
      {
        case 21:
          v275 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v75);
          v277 = v276;
          v278 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v77);
          v280 = v279;
          v281 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v79);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v278, v280, v275, v277, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v282 = 0;
          }

          else
          {
            v282 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v282, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt1>(v283, v284, v281, &v417, v85, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v429, &v416, &v415);
          break;
        case 22:
          v209 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v75);
          v211 = v210;
          v212 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v77);
          v214 = v213;
          v215 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v79);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v212, v214, v209, v211, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v216 = 0;
          }

          else
          {
            v216 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v216, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt3>(v217, v218, v215, &v417, v85, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v429, &v416, &v415);
          break;
        case 23:
          v149 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v75);
          v151 = v150;
          v152 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v77);
          v154 = v153;
          v155 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v79);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v152, v154, v149, v151, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v156 = 0;
          }

          else
          {
            v156 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v156, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt6>(v157, v158, v155, &v417, v85, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v429, &v416, &v415);
          break;
        default:
          goto LABEL_335;
      }
    }

    else
    {
      if (v87 == 14)
      {
        v269 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v75);
        v271 = v270;
        v272 = MIL::IRTensorValue::GetDataView<unsigned char>(v77);
        v273 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v79);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v272, v269, v271, &v431);
        if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
        {
          v274 = 0;
        }

        else
        {
          v274 = v431.__r_.__value_.__r.__words[0];
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,unsigned char>(v274, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v273, &v417, v85, &v430);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v430, &v416, &v415);
        goto LABEL_195;
      }

      if (v87 != 19)
      {
        if (v87 == 20)
        {
          v89 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v75);
          v91 = v90;
          v92 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v77);
          v94 = v93;
          v95 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v79);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v92, v94, v89, v91, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v96 = 0;
          }

          else
          {
            v96 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v96, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt4>(v97, v98, v95, &v417, v85, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v429, &v416, &v415);
          goto LABEL_193;
        }

LABEL_335:
        v390 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v88, &v429);
        v391 = std::string::insert(&v429, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
        v392 = *&v391->__r_.__value_.__l.__data_;
        v430.__r_.__value_.__r.__words[2] = v391->__r_.__value_.__r.__words[2];
        *&v430.__r_.__value_.__l.__data_ = v392;
        v391->__r_.__value_.__l.__size_ = 0;
        v391->__r_.__value_.__r.__words[2] = 0;
        v391->__r_.__value_.__r.__words[0] = 0;
        v393 = std::string::append(&v430, " for indices");
        v394 = *&v393->__r_.__value_.__l.__data_;
        v431.__r_.__value_.__r.__words[2] = v393->__r_.__value_.__r.__words[2];
        *&v431.__r_.__value_.__l.__data_ = v394;
        v393->__r_.__value_.__l.__size_ = 0;
        v393->__r_.__value_.__r.__words[2] = 0;
        v393->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v390, &v431);
        __cxa_throw(v390, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v199 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v75);
      v201 = v200;
      v202 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v77);
      v204 = v203;
      v205 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v79);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v202, v204, v199, v201, &v431);
      MIL::PackSubByteVec(&v431, &v430);
      if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
      {
        v206 = 0;
      }

      else
      {
        v206 = v430.__r_.__value_.__r.__words[0];
      }

      MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v206, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt2>(v207, v208, v205, &v417, v85, &v429);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v429, &v416, &v415);
    }

LABEL_193:
    if (v429.__r_.__value_.__r.__words[0])
    {
      v429.__r_.__value_.__l.__size_ = v429.__r_.__value_.__r.__words[0];
      operator delete(v429.__r_.__value_.__l.__data_);
    }

LABEL_195:
    if (v430.__r_.__value_.__r.__words[0])
    {
      v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
      operator delete(v430.__r_.__value_.__l.__data_);
    }

    if (v431.__r_.__value_.__r.__words[0])
    {
      v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
      operator delete(v431.__r_.__value_.__l.__data_);
    }

    if (__p)
    {
      v423 = __p;
      operator delete(__p);
    }

    if (v420)
    {
      v421 = v420;
      operator delete(v420);
    }

    if (v418)
    {
      v419 = v418;
      operator delete(v418);
    }

    if (v417.__r_.__value_.__r.__words[0])
    {
      v417.__r_.__value_.__l.__size_ = v417.__r_.__value_.__r.__words[0];
      operator delete(v417.__r_.__value_.__l.__data_);
    }

    if (v425)
    {
      v426 = v425;
      operator delete(v425);
    }

    if (v427)
    {
      v428 = v427;
      operator delete(v427);
    }

    MIL::IRTensorValueType::MakeBFloat16Value();
  }

  if (v21 != 4)
  {
    if (v21 != 5)
    {
      goto LABEL_334;
    }

    v50 = *(this + 4);
    v49 = *(this + 5);
    if (v49)
    {
      atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
    }

    v52 = *(this + 6);
    v51 = *(this + 7);
    if (v51)
    {
      atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
    }

    v54 = *(this + 2);
    v53 = *(this + 3);
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    v55 = (*(*v50 + 32))(v50);
    v56 = (*(*v55 + 96))(v55);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v56, &v427);
    v57 = (*(*v54 + 32))(v54);
    v58 = (*(*v57 + 96))(v57);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v58, &v425);
    v60 = *(v426 - 2);
    v59 = *(v426 - 1);
    memset(&v431, 0, sizeof(v431));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v431, v425, (v426 - 2), ((v426 - 2) - v425) >> 3);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v417, &v427, &v431, v59, v6);
    if (v431.__r_.__value_.__r.__words[0])
    {
      v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
      operator delete(v431.__r_.__value_.__l.__data_);
    }

    v61 = (*(*v52 + 32))(v52);
    v62 = (*(*v61 + 88))(v61);
    v63 = v62;
    if (v62 > 20)
    {
      switch(v62)
      {
        case 21:
          v369 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v50);
          v371 = v370;
          v372 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v52);
          v374 = v373;
          v375 = MIL::IRTensorValue::GetDataView<float>(v54);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v372, v374, v369, v371, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v376 = 0;
          }

          else
          {
            v376 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v376, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt1>(v377, v378, v375, &v417, v60, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v429, &v416, &v415);
          break;
        case 22:
          v321 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v50);
          v323 = v322;
          v324 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v52);
          v326 = v325;
          v327 = MIL::IRTensorValue::GetDataView<float>(v54);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v324, v326, v321, v323, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v328 = 0;
          }

          else
          {
            v328 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v328, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt3>(v329, v330, v327, &v417, v60, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v429, &v416, &v415);
          break;
        case 23:
          v189 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v50);
          v191 = v190;
          v192 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v52);
          v194 = v193;
          v195 = MIL::IRTensorValue::GetDataView<float>(v54);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v192, v194, v189, v191, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v196 = 0;
          }

          else
          {
            v196 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v196, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt6>(v197, v198, v195, &v417, v60, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v429, &v416, &v415);
          break;
        default:
          goto LABEL_339;
      }
    }

    else
    {
      if (v62 == 14)
      {
        v363 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v50);
        v365 = v364;
        v366 = MIL::IRTensorValue::GetDataView<unsigned char>(v52);
        v367 = MIL::IRTensorValue::GetDataView<float>(v54);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v366, v363, v365, &v431);
        if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
        {
          v368 = 0;
        }

        else
        {
          v368 = v431.__r_.__value_.__r.__words[0];
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,unsigned char>(v368, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v367, &v417, v60, &v430);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v430, &v416, &v415);
        goto LABEL_315;
      }

      if (v62 != 19)
      {
        if (v62 == 20)
        {
          v64 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v50);
          v66 = v65;
          v67 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v52);
          v69 = v68;
          v70 = MIL::IRTensorValue::GetDataView<float>(v54);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v67, v69, v64, v66, &v431);
          MIL::PackSubByteVec(&v431, &v430);
          if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
          {
            v71 = 0;
          }

          else
          {
            v71 = v430.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v71, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt4>(v72, v73, v70, &v417, v60, &v429);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v429, &v416, &v415);
          goto LABEL_313;
        }

LABEL_339:
        v410 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v63, &v429);
        v411 = std::string::insert(&v429, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
        v412 = *&v411->__r_.__value_.__l.__data_;
        v430.__r_.__value_.__r.__words[2] = v411->__r_.__value_.__r.__words[2];
        *&v430.__r_.__value_.__l.__data_ = v412;
        v411->__r_.__value_.__l.__size_ = 0;
        v411->__r_.__value_.__r.__words[2] = 0;
        v411->__r_.__value_.__r.__words[0] = 0;
        v413 = std::string::append(&v430, " for indices");
        v414 = *&v413->__r_.__value_.__l.__data_;
        v431.__r_.__value_.__r.__words[2] = v413->__r_.__value_.__r.__words[2];
        *&v431.__r_.__value_.__l.__data_ = v414;
        v413->__r_.__value_.__l.__size_ = 0;
        v413->__r_.__value_.__r.__words[2] = 0;
        v413->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v410, &v431);
        __cxa_throw(v410, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v295 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v50);
      v297 = v296;
      v298 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v52);
      v300 = v299;
      v301 = MIL::IRTensorValue::GetDataView<float>(v54);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v298, v300, v295, v297, &v431);
      MIL::PackSubByteVec(&v431, &v430);
      if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
      {
        v302 = 0;
      }

      else
      {
        v302 = v430.__r_.__value_.__r.__words[0];
      }

      MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v302, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt2>(v303, v304, v301, &v417, v60, &v429);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v429, &v416, &v415);
    }

LABEL_313:
    if (v429.__r_.__value_.__r.__words[0])
    {
      v429.__r_.__value_.__l.__size_ = v429.__r_.__value_.__r.__words[0];
      operator delete(v429.__r_.__value_.__l.__data_);
    }

LABEL_315:
    if (v430.__r_.__value_.__r.__words[0])
    {
      v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
      operator delete(v430.__r_.__value_.__l.__data_);
    }

    if (v431.__r_.__value_.__r.__words[0])
    {
      v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
      operator delete(v431.__r_.__value_.__l.__data_);
    }

    if (__p)
    {
      v423 = __p;
      operator delete(__p);
    }

    if (v420)
    {
      v421 = v420;
      operator delete(v420);
    }

    if (v418)
    {
      v419 = v418;
      operator delete(v418);
    }

    if (v417.__r_.__value_.__r.__words[0])
    {
      v417.__r_.__value_.__l.__size_ = v417.__r_.__value_.__r.__words[0];
      operator delete(v417.__r_.__value_.__l.__data_);
    }

    if (v425)
    {
      v426 = v425;
      operator delete(v425);
    }

    if (v427)
    {
      v428 = v427;
      operator delete(v427);
    }

    MIL::IRTensorValueType::MakeFloat32Value();
  }

  v125 = *(this + 4);
  v124 = *(this + 5);
  if (v124)
  {
    atomic_fetch_add_explicit((v124 + 8), 1uLL, memory_order_relaxed);
  }

  v127 = *(this + 6);
  v126 = *(this + 7);
  if (v126)
  {
    atomic_fetch_add_explicit((v126 + 8), 1uLL, memory_order_relaxed);
  }

  v129 = *(this + 2);
  v128 = *(this + 3);
  if (v128)
  {
    atomic_fetch_add_explicit((v128 + 8), 1uLL, memory_order_relaxed);
  }

  v130 = (*(*v125 + 32))(v125);
  v131 = (*(*v130 + 96))(v130);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v131, &v427);
  v132 = (*(*v129 + 32))(v129);
  v133 = (*(*v132 + 96))(v132);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v133, &v425);
  v135 = *(v426 - 2);
  v134 = *(v426 - 1);
  memset(&v431, 0, sizeof(v431));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v431, v425, (v426 - 2), ((v426 - 2) - v425) >> 3);
  MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v417, &v427, &v431, v134, v6);
  if (v431.__r_.__value_.__r.__words[0])
  {
    v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
    operator delete(v431.__r_.__value_.__l.__data_);
  }

  v136 = (*(*v127 + 32))(v127);
  v137 = (*(*v136 + 88))(v136);
  v138 = v137;
  if (v137 > 20)
  {
    switch(v137)
    {
      case 21:
        v337 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v125);
        v339 = v338;
        v340 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v127);
        v342 = v341;
        v343 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v129);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v340, v342, v337, v339, &v431);
        MIL::PackSubByteVec(&v431, &v430);
        if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
        {
          v344 = 0;
        }

        else
        {
          v344 = v430.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v344, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt1>(v345, v346, v343, &v417, v135, &v429);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v429, &v416, &v415);
        break;
      case 22:
        v249 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v125);
        v251 = v250;
        v252 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v127);
        v254 = v253;
        v255 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v129);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v252, v254, v249, v251, &v431);
        MIL::PackSubByteVec(&v431, &v430);
        if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
        {
          v256 = 0;
        }

        else
        {
          v256 = v430.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v256, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt3>(v257, v258, v255, &v417, v135, &v429);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v429, &v416, &v415);
        break;
      case 23:
        v169 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v125);
        v171 = v170;
        v172 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v127);
        v174 = v173;
        v175 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v129);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v172, v174, v169, v171, &v431);
        MIL::PackSubByteVec(&v431, &v430);
        if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
        {
          v176 = 0;
        }

        else
        {
          v176 = v430.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v176, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt6>(v177, v178, v175, &v417, v135, &v429);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v429, &v416, &v415);
        break;
      default:
        goto LABEL_337;
    }
  }

  else
  {
    if (v137 == 14)
    {
      v331 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v125);
      v333 = v332;
      v334 = MIL::IRTensorValue::GetDataView<unsigned char>(v127);
      v335 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v129);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v334, v331, v333, &v431);
      if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
      {
        v336 = 0;
      }

      else
      {
        v336 = v431.__r_.__value_.__r.__words[0];
      }

      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,unsigned char>(v336, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v335, &v417, v135, &v430);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v430, &v416, &v415);
      goto LABEL_261;
    }

    if (v137 != 19)
    {
      if (v137 == 20)
      {
        v139 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v125);
        v141 = v140;
        v142 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v127);
        v144 = v143;
        v145 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v129);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v142, v144, v139, v141, &v431);
        MIL::PackSubByteVec(&v431, &v430);
        if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
        {
          v146 = 0;
        }

        else
        {
          v146 = v430.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v146, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt4>(v147, v148, v145, &v417, v135, &v429);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v429, &v416, &v415);
        goto LABEL_259;
      }

LABEL_337:
      v400 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v138, &v429);
      v401 = std::string::insert(&v429, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
      v402 = *&v401->__r_.__value_.__l.__data_;
      v430.__r_.__value_.__r.__words[2] = v401->__r_.__value_.__r.__words[2];
      *&v430.__r_.__value_.__l.__data_ = v402;
      v401->__r_.__value_.__l.__size_ = 0;
      v401->__r_.__value_.__r.__words[2] = 0;
      v401->__r_.__value_.__r.__words[0] = 0;
      v403 = std::string::append(&v430, " for indices");
      v404 = *&v403->__r_.__value_.__l.__data_;
      v431.__r_.__value_.__r.__words[2] = v403->__r_.__value_.__r.__words[2];
      *&v431.__r_.__value_.__l.__data_ = v404;
      v403->__r_.__value_.__l.__size_ = 0;
      v403->__r_.__value_.__r.__words[2] = 0;
      v403->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v400, &v431);
      __cxa_throw(v400, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v239 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v125);
    v241 = v240;
    v242 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v127);
    v244 = v243;
    v245 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v129);
    MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v242, v244, v239, v241, &v431);
    MIL::PackSubByteVec(&v431, &v430);
    if (v430.__r_.__value_.__l.__size_ == v430.__r_.__value_.__r.__words[0])
    {
      v246 = 0;
    }

    else
    {
      v246 = v430.__r_.__value_.__r.__words[0];
    }

    MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v246, v430.__r_.__value_.__l.__size_ - v430.__r_.__value_.__r.__words[0], v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]);
    MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt2>(v247, v248, v245, &v417, v135, &v429);
    MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v429, &v416, &v415);
  }

LABEL_259:
  if (v429.__r_.__value_.__r.__words[0])
  {
    v429.__r_.__value_.__l.__size_ = v429.__r_.__value_.__r.__words[0];
    operator delete(v429.__r_.__value_.__l.__data_);
  }

LABEL_261:
  if (v430.__r_.__value_.__r.__words[0])
  {
    v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
    operator delete(v430.__r_.__value_.__l.__data_);
  }

  if (v431.__r_.__value_.__r.__words[0])
  {
    v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
    operator delete(v431.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v423 = __p;
    operator delete(__p);
  }

  if (v420)
  {
    v421 = v420;
    operator delete(v420);
  }

  if (v418)
  {
    v419 = v418;
    operator delete(v418);
  }

  if (v417.__r_.__value_.__r.__words[0])
  {
    v417.__r_.__value_.__l.__size_ = v417.__r_.__value_.__r.__words[0];
    operator delete(v417.__r_.__value_.__l.__data_);
  }

  if (v425)
  {
    v426 = v425;
    operator delete(v425);
  }

  if (v427)
  {
    v428 = v427;
    operator delete(v427);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_21837F154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (*(v42 - 137) < 0)
  {
    operator delete(*(v42 - 160));
  }

  if (*(v42 - 161) < 0)
  {
    operator delete(*(v42 - 184));
    if ((v38 & 1) == 0)
    {
LABEL_10:
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::~BlockwiseLutToDenseIndexConverter(&a19);
      if (__p)
      {
        a38 = __p;
        operator delete(__p);
      }

      v44 = *(v42 - 208);
      if (v44)
      {
        *(v42 - 200) = v44;
        operator delete(v44);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (a11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a11);
      }

      if (a16)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v41);
  goto LABEL_10;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::~BlockwiseLutToSparse(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::~BlockwiseLutToSparse(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::BlockwiseLutToSparse(void *a1)
{
  *MIL::AbstractConstExpr::AbstractConstExpr(a1) = &unk_2829EC608;
  std::make_unique[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,int &,0>();
}

{
  *MIL::AbstractConstExpr::AbstractConstExpr(a1) = &unk_2829EC608;
  std::make_unique[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::nullopt_t const&,0>();
}

void sub_21837F94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void sub_21837FB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot compute to get a single output since BlockwiseLutToSparse has two outputs.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_21837FC80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 - *a1 != a2[1] - *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v9));
      v11 = *a1;
      if (Int)
      {
        v12 = a3[2];
        if (v8 >= v12)
        {
          v13 = v8;
          v14 = (v8 + 1);
          if ((v8 + 1) < 0)
          {
            *a3 = 0;
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v12 > v14)
          {
            v14 = 2 * v12;
          }

          if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            operator new();
          }

          *v8++ = *(v11 + v9);
          memcpy(0, 0, v13);
          a3[1] = v13 + 1;
          a3[2] = 0;
        }

        else
        {
          *v8++ = *(v11 + v9);
        }

        a3[1] = v8;
        v11 = *a1;
      }

      ++v9;
    }

    while (v9 < a1[1] - v11);
  }

  *a3 = 0;
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt6>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt6::UInt6(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_21837FF2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(6 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt3>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt3::UInt3(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_218380120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(3 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt2>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt2::UInt2(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_218380288(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(2 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt1>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt1::UInt1(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_2183803F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 - *a1 != a2[1] - *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v9));
      v11 = *a1;
      if (Int)
      {
        v12 = a3[2];
        if (v8 >= v12)
        {
          v13 = v8;
          v14 = (v8 + 1);
          if ((v8 + 1) < 0)
          {
            *a3 = 0;
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v12 > v14)
          {
            v14 = 2 * v12;
          }

          if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            operator new();
          }

          *v8++ = *(v11 + v9);
          memcpy(0, 0, v13);
          a3[1] = v13 + 1;
          a3[2] = 0;
        }

        else
        {
          *v8++ = *(v11 + v9);
        }

        a3[1] = v8;
        v11 = *a1;
      }

      ++v9;
    }

    while (v9 < a1[1] - v11);
  }

  *a3 = 0;
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(uint64_t *a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a2[1] - *a2 != (v4 - *a1) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v8));
      v10 = *a1;
      if (Int)
      {
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = v15 >> 1;
          if (v15 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v17 = v11 - v14;
          if (v17 <= v16 + 1)
          {
            v18 = v16 + 1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v19);
          }

          v20 = (2 * v16);
          v21 = *(v10 + 2 * v8);
          v22 = &v20[-(v15 >> 1)];
          *v20 = v21;
          v13 = v20 + 1;
          memcpy(v22, v14, v15);
          v23 = *a3;
          *a3 = v22;
          a3[1] = v13;
          a3[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12 = *(v10 + 2 * v8);
          v13 = v12 + 1;
        }

        a3[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 1);
  }
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(uint64_t *a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a2[1] - *a2 != (v4 - *a1) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v8));
      v10 = *a1;
      if (Int)
      {
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = v15 >> 1;
          if (v15 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v17 = v11 - v14;
          if (v17 <= v16 + 1)
          {
            v18 = v16 + 1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v19);
          }

          v20 = (2 * v16);
          v21 = *(v10 + 2 * v8);
          v22 = &v20[-(v15 >> 1)];
          *v20 = v21;
          v13 = v20 + 1;
          memcpy(v22, v14, v15);
          v23 = *a3;
          *a3 = v22;
          a3[1] = v13;
          a3[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12 = *(v10 + 2 * v8);
          v13 = v12 + 1;
        }

        a3[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 1);
  }
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(uint64_t *a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a2[1] - *a2 != (v4 - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v8));
      v10 = *a1;
      if (Int)
      {
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = (v15 >> 2) + 1;
          if (v16 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v17 = v11 - v14;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v18);
          }

          v19 = (4 * (v15 >> 2));
          *v19 = *(v10 + 4 * v8);
          v13 = v19 + 1;
          memcpy(0, v14, v15);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v13;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = *(v10 + 4 * v8);
          v13 = v12 + 1;
        }

        a3[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 2);
  }
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::~Impl(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 40) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_218380C3C(_Unwind_Exception *a1)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(v1 + 4, v1 + 2);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "Constexpr-BlockwiseShiftScale");
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  std::string::basic_string[abi:ne200100]<0>(&v35, "data");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v2, &v35);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v3 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v35, "scale");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v3, &v35);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v4 = (*(**(this + 1) + 32))(*(this + 1));
  v5 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v35, "data");
  std::string::basic_string[abi:ne200100]<0>(&v32, "scale");
  MIL::Operators::Common::Shared::ConstExprs::AssertSameRank(v4, v5, &v35, &v32);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v6 = (*(**(this + 1) + 32))(*(this + 1));
  v7 = (*(*v6 + 96))(v6);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v35, *v7, v7[1], (v7[1] - *v7) >> 3);
  v8 = (*(**(this + 3) + 32))(*(this + 3));
  v9 = (*(*v8 + 96))(v8);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v32, *v9, v9[1], (v9[1] - *v9) >> 3);
  v10 = v35;
  if (v36 != v35)
  {
    v11 = 0;
    do
    {
      v12 = MIL::IRDimension::AsConstant(v10[v11]);
      v13 = (*(*v12 + 48))(v12);
      v14 = MIL::IRDimension::AsConstant(*(v32 + v11));
      if (v13 % (*(*v14 + 48))(v14))
      {
        std::operator+<char>();
        v19 = std::string::append(&v29, ", number of scales along each dimension should be a factor of corresponding dimension size of data. Assertion error along dimension ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v28, v11);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v28;
        }

        else
        {
          v21 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v30, v21, size);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v11;
      v10 = v35;
    }

    while (v11 < v36 - v35);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
    v10 = v35;
  }

  if (v10)
  {
    v36 = v10;
    operator delete(v10);
  }

  v15 = (*(**(this + 3) + 32))(*(this + 3));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(v15, *this);
  v16 = (*(**(this + 1) + 32))(*(this + 1));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputShape(v16, *this);
  if (*(this + 5))
  {
    v17 = (*(**(this + 3) + 32))(*(this + 3));
    v18 = (*(**(this + 5) + 32))(*(this + 5));
    std::string::basic_string[abi:ne200100]<0>(&v35, "scale");
    std::string::basic_string[abi:ne200100]<0>(&v32, "offset");
    MIL::Operators::Common::Shared::ConstExprs::AssertConstantAndSameShape(v17, v18, &v35);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }
  }

  if (v27 < 0)
  {
    operator delete(__p);
  }
}

void sub_2183811A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 80);
  if (v42)
  {
    *(v40 - 72) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 56);
  if (v43)
  {
    *(v40 - 48) = v43;
    operator delete(v43);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ComputeOutput(uint64_t **this)
{
  v2 = (*(**this + 88))(*this);
  if (v2 != 4)
  {
    v3 = v2;
    if (v2 != 5)
    {
      if (v2 != 7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v3, &v306);
        v257 = std::string::insert(&v306, 0, "Constexpr-BlockwiseShiftScale: Unsupported ");
        v258 = *&v257->__r_.__value_.__l.__data_;
        v307.__r_.__value_.__r.__words[2] = v257->__r_.__value_.__r.__words[2];
        *&v307.__r_.__value_.__l.__data_ = v258;
        v257->__r_.__value_.__l.__size_ = 0;
        v257->__r_.__value_.__r.__words[2] = 0;
        v257->__r_.__value_.__r.__words[0] = 0;
        v259 = std::string::append(&v307, " output type");
        v260 = *&v259->__r_.__value_.__l.__data_;
        v301.__r_.__value_.__r.__words[2] = v259->__r_.__value_.__r.__words[2];
        *&v301.__r_.__value_.__l.__data_ = v260;
        v259->__r_.__value_.__l.__size_ = 0;
        v259->__r_.__value_.__r.__words[2] = 0;
        v259->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v301);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v4 = this[1];
      v5 = this[2];
      if (v5)
      {
        atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
      }

      v7 = this[3];
      v6 = this[4];
      if (v6)
      {
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
      }

      v9 = this[5];
      v8 = this[6];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = (*(*v4 + 32))(v4);
      v11 = (*(*v10 + 96))(v10);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v11, &v307);
      v12 = (*(*v7 + 32))(v7);
      v13 = (*(*v12 + 96))(v12);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v13, &v306);
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v301, &v307, &v306);
      v14 = (*(*v4 + 32))(v4);
      v15 = (*(*v14 + 88))(v14);
      if (!v9)
      {
        if (v15 <= 12)
        {
          if (v15 > 6)
          {
            if (v15 == 7)
            {
              v216 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v4);
              v218 = v217;
              v219 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>(v216, v218, v219, &v301, &v297);
              goto LABEL_164;
            }

            if (v15 == 9)
            {
              Data = MIL::IRTensorValue::GetDataView<signed char>(v4);
              v122 = v121;
              v123 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>(Data, v122, v123, &v301, &v297);
              goto LABEL_164;
            }
          }

          else
          {
            if (v15 == 4)
            {
              v212 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v4);
              v214 = v213;
              v215 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>(v212, v214, v215, &v301, &v297);
              goto LABEL_164;
            }

            if (v15 == 5)
            {
              v84 = MIL::IRTensorValue::GetDataView<float>(v4);
              v86 = v85;
              v87 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>(v84, v86, v87, &v301, &v297);
              goto LABEL_164;
            }
          }
        }

        else if (v15 <= 19)
        {
          if (v15 == 13)
          {
            v232 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v4);
            v234 = v233;
            v235 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>(v232, v234, v235, &v301, &v297);
            goto LABEL_164;
          }

          if (v15 == 14)
          {
            v132 = MIL::IRTensorValue::GetDataView<unsigned char>(v4);
            v134 = v133;
            v135 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>(v132, v134, v135, &v301, &v297);
            goto LABEL_164;
          }
        }

        else
        {
          switch(v15)
          {
            case 25:
              v244 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v4);
              v246 = v245;
              v247 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>(v244, v246, v247, &v301, &v297);
              goto LABEL_164;
            case 24:
              v252 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v4);
              v254 = v253;
              v255 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>(v252, v254, v255, &v301, &v297);
              goto LABEL_164;
            case 20:
              v60 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v4);
              v62 = v61;
              v63 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>(v60, v62, v63, &v301, &v297);
              goto LABEL_164;
          }
        }

        v291 = v15;
        v292 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v291, &v298);
        v293 = std::string::insert(&v298, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
        v294 = *&v293->__r_.__value_.__l.__data_;
        v299.__r_.__value_.__r.__words[2] = v293->__r_.__value_.__r.__words[2];
        *&v299.__r_.__value_.__l.__data_ = v294;
        v293->__r_.__value_.__l.__size_ = 0;
        v293->__r_.__value_.__r.__words[2] = 0;
        v293->__r_.__value_.__r.__words[0] = 0;
        v295 = std::string::append(&v299, ") for data.");
        v296 = *&v295->__r_.__value_.__l.__data_;
        v300.__r_.__value_.__r.__words[2] = v295->__r_.__value_.__r.__words[2];
        *&v300.__r_.__value_.__l.__data_ = v296;
        v295->__r_.__value_.__l.__size_ = 0;
        v295->__r_.__value_.__r.__words[2] = 0;
        v295->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v292, &v300);
        __cxa_throw(v292, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v15 <= 12)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v156 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v4);
            v158 = v157;
            v159 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
            v300.__r_.__value_.__r.__words[0] = v9;
            v300.__r_.__value_.__l.__size_ = v8;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>(v156, v158, v159, &v300, &v301, &v297);
          }

          else
          {
            if (v15 != 9)
            {
              goto LABEL_193;
            }

            v96 = MIL::IRTensorValue::GetDataView<signed char>(v4);
            v98 = v97;
            v99 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
            v300.__r_.__value_.__r.__words[0] = v9;
            v300.__r_.__value_.__l.__size_ = v8;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>(v96, v98, v99, &v300, &v301, &v297);
          }
        }

        else if (v15 == 4)
        {
          v152 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v4);
          v154 = v153;
          v155 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
          v300.__r_.__value_.__r.__words[0] = v9;
          v300.__r_.__value_.__l.__size_ = v8;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>(v152, v154, v155, &v300, &v301, &v297);
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_193;
          }

          v72 = MIL::IRTensorValue::GetDataView<float>(v4);
          v74 = v73;
          v75 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
          v300.__r_.__value_.__r.__words[0] = v9;
          v300.__r_.__value_.__l.__size_ = v8;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>(v72, v74, v75, &v300, &v301, &v297);
        }
      }

      else if (v15 <= 19)
      {
        if (v15 == 13)
        {
          v172 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v4);
          v174 = v173;
          v175 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
          v300.__r_.__value_.__r.__words[0] = v9;
          v300.__r_.__value_.__l.__size_ = v8;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>(v172, v174, v175, &v300, &v301, &v297);
        }

        else
        {
          if (v15 != 14)
          {
            goto LABEL_193;
          }

          v108 = MIL::IRTensorValue::GetDataView<unsigned char>(v4);
          v110 = v109;
          v111 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
          v300.__r_.__value_.__r.__words[0] = v9;
          v300.__r_.__value_.__l.__size_ = v8;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>(v108, v110, v111, &v300, &v301, &v297);
        }
      }

      else
      {
        switch(v15)
        {
          case 20:
            v184 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v4);
            v186 = v185;
            v187 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
            v300.__r_.__value_.__r.__words[0] = v9;
            v300.__r_.__value_.__l.__size_ = v8;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>(v184, v186, v187, &v300, &v301, &v297);
            break;
          case 24:
            v192 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v4);
            v194 = v193;
            v195 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
            v300.__r_.__value_.__r.__words[0] = v9;
            v300.__r_.__value_.__l.__size_ = v8;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>(v192, v194, v195, &v300, &v301, &v297);
            break;
          case 25:
            v16 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v4);
            v18 = v17;
            v19 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v7);
            v300.__r_.__value_.__r.__words[0] = v9;
            v300.__r_.__value_.__l.__size_ = v8;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>(v16, v18, v19, &v300, &v301, &v297);
            break;
          default:
LABEL_193:
            v273 = v15;
            v274 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v273, &v298);
            v275 = std::string::insert(&v298, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
            v276 = *&v275->__r_.__value_.__l.__data_;
            v299.__r_.__value_.__r.__words[2] = v275->__r_.__value_.__r.__words[2];
            *&v299.__r_.__value_.__l.__data_ = v276;
            v275->__r_.__value_.__l.__size_ = 0;
            v275->__r_.__value_.__r.__words[2] = 0;
            v275->__r_.__value_.__r.__words[0] = 0;
            v277 = std::string::append(&v299, ") for data.");
            v278 = *&v277->__r_.__value_.__l.__data_;
            v300.__r_.__value_.__r.__words[2] = v277->__r_.__value_.__r.__words[2];
            *&v300.__r_.__value_.__l.__data_ = v278;
            v277->__r_.__value_.__l.__size_ = 0;
            v277->__r_.__value_.__r.__words[2] = 0;
            v277->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v274, &v300);
            __cxa_throw(v274, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      if (v300.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v300.__r_.__value_.__l.__size_);
      }

LABEL_164:
      if (__p)
      {
        v305 = __p;
        operator delete(__p);
      }

      if (v302)
      {
        v303 = v302;
        operator delete(v302);
      }

      if (v301.__r_.__value_.__r.__words[0])
      {
        v301.__r_.__value_.__l.__size_ = v301.__r_.__value_.__r.__words[0];
        operator delete(v301.__r_.__value_.__l.__data_);
      }

      if (v306.__r_.__value_.__r.__words[0])
      {
        v306.__r_.__value_.__l.__size_ = v306.__r_.__value_.__r.__words[0];
        operator delete(v306.__r_.__value_.__l.__data_);
      }

      if (v307.__r_.__value_.__r.__words[0])
      {
        v307.__r_.__value_.__l.__size_ = v307.__r_.__value_.__r.__words[0];
        operator delete(v307.__r_.__value_.__l.__data_);
      }

      MIL::IRTensorValueType::MakeBFloat16Value();
    }

    v20 = this[1];
    v21 = this[2];
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    }

    v23 = this[3];
    v22 = this[4];
    if (v22)
    {
      atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
    }

    v25 = this[5];
    v24 = this[6];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = (*(*v20 + 32))(v20);
    v27 = (*(*v26 + 96))(v26);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v27, &v307);
    v28 = (*(*v23 + 32))(v23);
    v29 = (*(*v28 + 96))(v28);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v29, &v306);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v301, &v307, &v306);
    v30 = (*(*v20 + 32))(v20);
    v31 = (*(*v30 + 88))(v30);
    if (!v25)
    {
      if (v31 <= 12)
      {
        if (v31 > 6)
        {
          if (v31 == 7)
          {
            v200 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v20);
            v202 = v201;
            v203 = MIL::IRTensorValue::GetDataView<float>(v23);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>(v200, v202, v203, &v301, &v297);
            goto LABEL_135;
          }

          if (v31 == 9)
          {
            v112 = MIL::IRTensorValue::GetDataView<signed char>(v20);
            v114 = v113;
            v115 = MIL::IRTensorValue::GetDataView<float>(v23);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>(v112, v114, v115, &v301, &v297);
            goto LABEL_135;
          }
        }

        else
        {
          if (v31 == 4)
          {
            v196 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v20);
            v198 = v197;
            v199 = MIL::IRTensorValue::GetDataView<float>(v23);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>(v196, v198, v199, &v301, &v297);
            goto LABEL_135;
          }

          if (v31 == 5)
          {
            v76 = MIL::IRTensorValue::GetDataView<float>(v20);
            v78 = v77;
            v79 = MIL::IRTensorValue::GetDataView<float>(v23);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>(v76, v78, v79, &v301, &v297);
            goto LABEL_135;
          }
        }
      }

      else if (v31 <= 19)
      {
        if (v31 == 13)
        {
          v220 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v20);
          v222 = v221;
          v223 = MIL::IRTensorValue::GetDataView<float>(v23);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>(v220, v222, v223, &v301, &v297);
          goto LABEL_135;
        }

        if (v31 == 14)
        {
          v124 = MIL::IRTensorValue::GetDataView<unsigned char>(v20);
          v126 = v125;
          v127 = MIL::IRTensorValue::GetDataView<float>(v23);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>(v124, v126, v127, &v301, &v297);
          goto LABEL_135;
        }
      }

      else
      {
        switch(v31)
        {
          case 25:
            v228 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v20);
            v230 = v229;
            v231 = MIL::IRTensorValue::GetDataView<float>(v23);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E5M2>(v228, v230, v231, &v301, &v297);
            goto LABEL_135;
          case 24:
            v240 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v20);
            v242 = v241;
            v243 = MIL::IRTensorValue::GetDataView<float>(v23);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E4M3FN>(v240, v242, v243, &v301, &v297);
            goto LABEL_135;
          case 20:
            v52 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v20);
            v54 = v53;
            v55 = MIL::IRTensorValue::GetDataView<float>(v23);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>(v52, v54, v55, &v301, &v297);
            goto LABEL_135;
        }
      }

      v279 = v31;
      v280 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v279, &v298);
      v281 = std::string::insert(&v298, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
      v282 = *&v281->__r_.__value_.__l.__data_;
      v299.__r_.__value_.__r.__words[2] = v281->__r_.__value_.__r.__words[2];
      *&v299.__r_.__value_.__l.__data_ = v282;
      v281->__r_.__value_.__l.__size_ = 0;
      v281->__r_.__value_.__r.__words[2] = 0;
      v281->__r_.__value_.__r.__words[0] = 0;
      v283 = std::string::append(&v299, ") for data.");
      v284 = *&v283->__r_.__value_.__l.__data_;
      v300.__r_.__value_.__r.__words[2] = v283->__r_.__value_.__r.__words[2];
      *&v300.__r_.__value_.__l.__data_ = v284;
      v283->__r_.__value_.__l.__size_ = 0;
      v283->__r_.__value_.__r.__words[2] = 0;
      v283->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v280, &v300);
      __cxa_throw(v280, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v31 <= 12)
    {
      if (v31 > 6)
      {
        if (v31 == 7)
        {
          v140 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v20);
          v142 = v141;
          v143 = MIL::IRTensorValue::GetDataView<float>(v23);
          v300.__r_.__value_.__r.__words[0] = v25;
          v300.__r_.__value_.__l.__size_ = v24;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>(v140, v142, v143, &v300, &v301, &v297);
        }

        else
        {
          if (v31 != 9)
          {
            goto LABEL_191;
          }

          v88 = MIL::IRTensorValue::GetDataView<signed char>(v20);
          v90 = v89;
          v91 = MIL::IRTensorValue::GetDataView<float>(v23);
          v300.__r_.__value_.__r.__words[0] = v25;
          v300.__r_.__value_.__l.__size_ = v24;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>(v88, v90, v91, &v300, &v301, &v297);
        }
      }

      else if (v31 == 4)
      {
        v136 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v20);
        v138 = v137;
        v139 = MIL::IRTensorValue::GetDataView<float>(v23);
        v300.__r_.__value_.__r.__words[0] = v25;
        v300.__r_.__value_.__l.__size_ = v24;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>(v136, v138, v139, &v300, &v301, &v297);
      }

      else
      {
        if (v31 != 5)
        {
          goto LABEL_191;
        }

        v64 = MIL::IRTensorValue::GetDataView<float>(v20);
        v66 = v65;
        v67 = MIL::IRTensorValue::GetDataView<float>(v23);
        v300.__r_.__value_.__r.__words[0] = v25;
        v300.__r_.__value_.__l.__size_ = v24;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>(v64, v66, v67, &v300, &v301, &v297);
      }
    }

    else if (v31 <= 19)
    {
      if (v31 == 13)
      {
        v160 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v20);
        v162 = v161;
        v163 = MIL::IRTensorValue::GetDataView<float>(v23);
        v300.__r_.__value_.__r.__words[0] = v25;
        v300.__r_.__value_.__l.__size_ = v24;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>(v160, v162, v163, &v300, &v301, &v297);
      }

      else
      {
        if (v31 != 14)
        {
          goto LABEL_191;
        }

        v100 = MIL::IRTensorValue::GetDataView<unsigned char>(v20);
        v102 = v101;
        v103 = MIL::IRTensorValue::GetDataView<float>(v23);
        v300.__r_.__value_.__r.__words[0] = v25;
        v300.__r_.__value_.__l.__size_ = v24;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>(v100, v102, v103, &v300, &v301, &v297);
      }
    }

    else
    {
      switch(v31)
      {
        case 20:
          v168 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v20);
          v170 = v169;
          v171 = MIL::IRTensorValue::GetDataView<float>(v23);
          v300.__r_.__value_.__r.__words[0] = v25;
          v300.__r_.__value_.__l.__size_ = v24;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>(v168, v170, v171, &v300, &v301, &v297);
          break;
        case 24:
          v180 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v20);
          v182 = v181;
          v183 = MIL::IRTensorValue::GetDataView<float>(v23);
          v300.__r_.__value_.__r.__words[0] = v25;
          v300.__r_.__value_.__l.__size_ = v24;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E4M3FN>(v180, v182, v183, &v300, &v301, &v297);
          break;
        case 25:
          v32 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v20);
          v34 = v33;
          v35 = MIL::IRTensorValue::GetDataView<float>(v23);
          v300.__r_.__value_.__r.__words[0] = v25;
          v300.__r_.__value_.__l.__size_ = v24;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E5M2>(v32, v34, v35, &v300, &v301, &v297);
          break;
        default:
LABEL_191:
          v261 = v31;
          v262 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v261, &v298);
          v263 = std::string::insert(&v298, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
          v264 = *&v263->__r_.__value_.__l.__data_;
          v299.__r_.__value_.__r.__words[2] = v263->__r_.__value_.__r.__words[2];
          *&v299.__r_.__value_.__l.__data_ = v264;
          v263->__r_.__value_.__l.__size_ = 0;
          v263->__r_.__value_.__r.__words[2] = 0;
          v263->__r_.__value_.__r.__words[0] = 0;
          v265 = std::string::append(&v299, ") for data.");
          v266 = *&v265->__r_.__value_.__l.__data_;
          v300.__r_.__value_.__r.__words[2] = v265->__r_.__value_.__r.__words[2];
          *&v300.__r_.__value_.__l.__data_ = v266;
          v265->__r_.__value_.__l.__size_ = 0;
          v265->__r_.__value_.__r.__words[2] = 0;
          v265->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v262, &v300);
          __cxa_throw(v262, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    if (v300.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v300.__r_.__value_.__l.__size_);
    }

LABEL_135:
    if (__p)
    {
      v305 = __p;
      operator delete(__p);
    }

    if (v302)
    {
      v303 = v302;
      operator delete(v302);
    }

    if (v301.__r_.__value_.__r.__words[0])
    {
      v301.__r_.__value_.__l.__size_ = v301.__r_.__value_.__r.__words[0];
      operator delete(v301.__r_.__value_.__l.__data_);
    }

    if (v306.__r_.__value_.__r.__words[0])
    {
      v306.__r_.__value_.__l.__size_ = v306.__r_.__value_.__r.__words[0];
      operator delete(v306.__r_.__value_.__l.__data_);
    }

    if (v307.__r_.__value_.__r.__words[0])
    {
      v307.__r_.__value_.__l.__size_ = v307.__r_.__value_.__r.__words[0];
      operator delete(v307.__r_.__value_.__l.__data_);
    }

    MIL::IRTensorValueType::MakeFloat32Value();
  }

  v36 = this[1];
  v37 = this[2];
  if (v37)
  {
    atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
  }

  v39 = this[3];
  v38 = this[4];
  if (v38)
  {
    atomic_fetch_add_explicit(v38 + 1, 1uLL, memory_order_relaxed);
  }

  v41 = this[5];
  v40 = this[6];
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = (*(*v36 + 32))(v36);
  v43 = (*(*v42 + 96))(v42);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v43, &v307);
  v44 = (*(*v39 + 32))(v39);
  v45 = (*(*v44 + 96))(v44);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v45, &v306);
  MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v301, &v307, &v306);
  v46 = (*(*v36 + 32))(v36);
  v47 = (*(*v46 + 88))(v46);
  if (!v41)
  {
    if (v47 <= 12)
    {
      if (v47 > 6)
      {
        if (v47 == 7)
        {
          v208 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v36);
          v210 = v209;
          v211 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>(v208, v210, v211, &v301, &v297);
          goto LABEL_150;
        }

        if (v47 == 9)
        {
          v116 = MIL::IRTensorValue::GetDataView<signed char>(v36);
          v118 = v117;
          v119 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>(v116, v118, v119, &v301, &v297);
          goto LABEL_150;
        }
      }

      else
      {
        if (v47 == 4)
        {
          v204 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
          v206 = v205;
          v207 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>(v204, v206, v207, &v301, &v297);
          goto LABEL_150;
        }

        if (v47 == 5)
        {
          v80 = MIL::IRTensorValue::GetDataView<float>(v36);
          v82 = v81;
          v83 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>(v80, v82, v83, &v301, &v297);
          goto LABEL_150;
        }
      }
    }

    else if (v47 <= 19)
    {
      if (v47 == 13)
      {
        v224 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v36);
        v226 = v225;
        v227 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>(v224, v226, v227, &v301, &v297);
        goto LABEL_150;
      }

      if (v47 == 14)
      {
        v128 = MIL::IRTensorValue::GetDataView<unsigned char>(v36);
        v130 = v129;
        v131 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>(v128, v130, v131, &v301, &v297);
        goto LABEL_150;
      }
    }

    else
    {
      switch(v47)
      {
        case 25:
          v236 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v36);
          v238 = v237;
          v239 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E5M2>(v236, v238, v239, &v301, &v297);
          goto LABEL_150;
        case 24:
          v248 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v36);
          v250 = v249;
          v251 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E4M3FN>(v248, v250, v251, &v301, &v297);
          goto LABEL_150;
        case 20:
          v56 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v36);
          v58 = v57;
          v59 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>(v56, v58, v59, &v301, &v297);
          goto LABEL_150;
      }
    }

    v285 = v47;
    v286 = __cxa_allocate_exception(0x10uLL);
    MIL::IRDataTypeToString(v285, &v298);
    v287 = std::string::insert(&v298, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
    v288 = *&v287->__r_.__value_.__l.__data_;
    v299.__r_.__value_.__r.__words[2] = v287->__r_.__value_.__r.__words[2];
    *&v299.__r_.__value_.__l.__data_ = v288;
    v287->__r_.__value_.__l.__size_ = 0;
    v287->__r_.__value_.__r.__words[2] = 0;
    v287->__r_.__value_.__r.__words[0] = 0;
    v289 = std::string::append(&v299, ") for data.");
    v290 = *&v289->__r_.__value_.__l.__data_;
    v300.__r_.__value_.__r.__words[2] = v289->__r_.__value_.__r.__words[2];
    *&v300.__r_.__value_.__l.__data_ = v290;
    v289->__r_.__value_.__l.__size_ = 0;
    v289->__r_.__value_.__r.__words[2] = 0;
    v289->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v286, &v300);
    __cxa_throw(v286, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v47 <= 12)
  {
    if (v47 > 6)
    {
      if (v47 == 7)
      {
        v148 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v36);
        v150 = v149;
        v151 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
        v300.__r_.__value_.__r.__words[0] = v41;
        v300.__r_.__value_.__l.__size_ = v40;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>(v148, v150, v151, &v300, &v301, &v297);
      }

      else
      {
        if (v47 != 9)
        {
          goto LABEL_192;
        }

        v92 = MIL::IRTensorValue::GetDataView<signed char>(v36);
        v94 = v93;
        v95 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
        v300.__r_.__value_.__r.__words[0] = v41;
        v300.__r_.__value_.__l.__size_ = v40;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>(v92, v94, v95, &v300, &v301, &v297);
      }
    }

    else if (v47 == 4)
    {
      v144 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
      v146 = v145;
      v147 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
      v300.__r_.__value_.__r.__words[0] = v41;
      v300.__r_.__value_.__l.__size_ = v40;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>(v144, v146, v147, &v300, &v301, &v297);
    }

    else
    {
      if (v47 != 5)
      {
        goto LABEL_192;
      }

      v68 = MIL::IRTensorValue::GetDataView<float>(v36);
      v70 = v69;
      v71 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
      v300.__r_.__value_.__r.__words[0] = v41;
      v300.__r_.__value_.__l.__size_ = v40;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>(v68, v70, v71, &v300, &v301, &v297);
    }
  }

  else if (v47 <= 19)
  {
    if (v47 == 13)
    {
      v164 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v36);
      v166 = v165;
      v167 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
      v300.__r_.__value_.__r.__words[0] = v41;
      v300.__r_.__value_.__l.__size_ = v40;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>(v164, v166, v167, &v300, &v301, &v297);
    }

    else
    {
      if (v47 != 14)
      {
        goto LABEL_192;
      }

      v104 = MIL::IRTensorValue::GetDataView<unsigned char>(v36);
      v106 = v105;
      v107 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
      v300.__r_.__value_.__r.__words[0] = v41;
      v300.__r_.__value_.__l.__size_ = v40;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>(v104, v106, v107, &v300, &v301, &v297);
    }
  }

  else
  {
    switch(v47)
    {
      case 20:
        v176 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v36);
        v178 = v177;
        v179 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
        v300.__r_.__value_.__r.__words[0] = v41;
        v300.__r_.__value_.__l.__size_ = v40;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>(v176, v178, v179, &v300, &v301, &v297);
        break;
      case 24:
        v188 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v36);
        v190 = v189;
        v191 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
        v300.__r_.__value_.__r.__words[0] = v41;
        v300.__r_.__value_.__l.__size_ = v40;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E4M3FN>(v188, v190, v191, &v300, &v301, &v297);
        break;
      case 25:
        v48 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v36);
        v50 = v49;
        v51 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v39);
        v300.__r_.__value_.__r.__words[0] = v41;
        v300.__r_.__value_.__l.__size_ = v40;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E5M2>(v48, v50, v51, &v300, &v301, &v297);
        break;
      default:
LABEL_192:
        v267 = v47;
        v268 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v267, &v298);
        v269 = std::string::insert(&v298, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
        v270 = *&v269->__r_.__value_.__l.__data_;
        v299.__r_.__value_.__r.__words[2] = v269->__r_.__value_.__r.__words[2];
        *&v299.__r_.__value_.__l.__data_ = v270;
        v269->__r_.__value_.__l.__size_ = 0;
        v269->__r_.__value_.__r.__words[2] = 0;
        v269->__r_.__value_.__r.__words[0] = 0;
        v271 = std::string::append(&v299, ") for data.");
        v272 = *&v271->__r_.__value_.__l.__data_;
        v300.__r_.__value_.__r.__words[2] = v271->__r_.__value_.__r.__words[2];
        *&v300.__r_.__value_.__l.__data_ = v272;
        v271->__r_.__value_.__l.__size_ = 0;
        v271->__r_.__value_.__r.__words[2] = 0;
        v271->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v268, &v300);
        __cxa_throw(v268, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (v300.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v300.__r_.__value_.__l.__size_);
  }

LABEL_150:
  if (__p)
  {
    v305 = __p;
    operator delete(__p);
  }

  if (v302)
  {
    v303 = v302;
    operator delete(v302);
  }

  if (v301.__r_.__value_.__r.__words[0])
  {
    v301.__r_.__value_.__l.__size_ = v301.__r_.__value_.__r.__words[0];
    operator delete(v301.__r_.__value_.__l.__data_);
  }

  if (v306.__r_.__value_.__r.__words[0])
  {
    v306.__r_.__value_.__l.__size_ = v306.__r_.__value_.__r.__words[0];
    operator delete(v306.__r_.__value_.__l.__data_);
  }

  if (v307.__r_.__value_.__r.__words[0])
  {
    v307.__r_.__value_.__l.__size_ = v307.__r_.__value_.__r.__words[0];
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_218382CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v43 & 1) == 0)
    {
LABEL_10:
      v46 = *(v44 - 136);
      if (v46)
      {
        *(v44 - 128) = v46;
        operator delete(v46);
      }

      v47 = *(v44 - 112);
      if (v47)
      {
        *(v44 - 104) = v47;
        operator delete(v47);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        if (!v40)
        {
LABEL_16:
          if (!v39)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else if (!v40)
      {
        goto LABEL_16;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      if (!v39)
      {
LABEL_18:
        _Unwind_Resume(a1);
      }

LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      goto LABEL_18;
    }
  }

  else if (!v43)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v42);
  goto LABEL_10;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::~BlockwiseShiftScale(MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::~BlockwiseShiftScale(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_21838318C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale *this, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(this + 1);

    MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ComputeOutput(v2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BlockwiseLutToDense has a single output.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::UInt4::GetInt(&v94);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::UInt4::GetInt(&v94);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::UInt4::GetInt(&v94);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::UInt4::GetInt(&v94);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::UInt4::GetInt(&v94);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::UInt4::GetInt(&v94);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::UInt4::GetInt(&v94);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::UInt4::GetInt(&v94);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::UInt4::GetInt(&v94);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183839A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::Int4::GetInt(&v94);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::Int4::GetInt(&v94);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::Int4::GetInt(&v94);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::Int4::GetInt(&v94);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::Int4::GetInt(&v94);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::Int4::GetInt(&v94);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::Int4::GetInt(&v94);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::Int4::GetInt(&v94);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::Int4::GetInt(&v94);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183841D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v58 = *(a1 + v56);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (v58 - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = *(a1 + v48);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = *(a1 + v66);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = *(a1 + v73);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = *(a1 + v81);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = *(a1 + v19);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218384918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v13 = (*(**a4 + 32))();
  v14 = (*(*v13 + 88))(v13);
  v15 = v14;
  if (v14 <= 12)
  {
    if (v14 > 6)
    {
      if (v14 == 7)
      {
        v54 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v55 = 0;
          do
          {
            v56 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v55);
            LOBYTE(v6) = *(a1 + v55);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v56));
            v58 = MIL::Bf16::GetFloat((v54 + 2 * v56));
            result = MIL::Bf16::FromFloat(v59, Float * (v6 - v58));
            v60 = *a6;
            *(*a6 + 2 * v55++) = result;
          }

          while (v55 < (a6[1] - v60) >> 1);
        }
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v14 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          LOBYTE(v6) = *(a1 + v48);
          v50 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v51 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v52, v50 * (v6 - v51));
          v53 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v53) >> 1);
      }
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v14 <= 19)
  {
    if (v14 == 13)
    {
      v61 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v63 = v62;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v64 = 0;
        do
        {
          v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
          LOBYTE(v6) = *(a1 + v64);
          v66 = MIL::Bf16::GetFloat((a3 + 2 * v65));
          v90.__r_.__value_.__r.__words[0] = v61;
          v90.__r_.__value_.__l.__size_ = v63;
          v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v90, v65);
          Int = MIL::Int4::GetInt(&v89);
          result = MIL::Bf16::FromFloat(Int, v66 * (v6 - Int));
          v68 = *a6;
          *(*a6 + 2 * v64++) = result;
        }

        while (v64 < (a6[1] - v68) >> 1);
      }
    }

    else
    {
      if (v14 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v14)
    {
      case 25:
        v69 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v70 = 0;
          do
          {
            v71 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v70);
            LOBYTE(v6) = *(a1 + v70);
            v72 = MIL::Bf16::GetFloat((a3 + 2 * v71));
            v73 = MIL::Fp8E5M2::GetFloat((v69 + v71));
            result = MIL::Bf16::FromFloat(v74, v72 * (v6 - v73));
            v75 = *a6;
            *(*a6 + 2 * v70++) = result;
          }

          while (v70 < (a6[1] - v75) >> 1);
        }

        break;
      case 24:
        v76 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v77 = 0;
          do
          {
            v78 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v77);
            LOBYTE(v6) = *(a1 + v77);
            v79 = MIL::Bf16::GetFloat((a3 + 2 * v78));
            v80 = MIL::Fp8E4M3FN::GetFloat((v76 + v78));
            result = MIL::Bf16::FromFloat(v81, v79 * (v6 - v80));
            v82 = *a6;
            *(*a6 + 2 * v77++) = result;
          }

          while (v77 < (a6[1] - v82) >> 1);
        }

        break;
      case 20:
        v16 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v18 = v17;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v20 = 0;
          do
          {
            v21 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v20);
            LOBYTE(v6) = *(a1 + v20);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v21));
            v90.__r_.__value_.__r.__words[0] = v16;
            v90.__r_.__value_.__l.__size_ = v18;
            v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v90, v21);
            v23 = MIL::UInt4::GetInt(&v89);
            result = MIL::Bf16::FromFloat(v23, v22 * (v6 - v23));
            v24 = *a6;
            *(*a6 + 2 * v20++) = result;
          }

          while (v20 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v15, &v88);
        v84 = std::string::insert(&v88, 0, "Unsupported dType (");
        v85 = *&v84->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        v86 = std::string::append(&v89, ") for offset.");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v90);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218385044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E4M3FN::GetFloat((a1 + v56));
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E4M3FN::GetFloat((a1 + v33));
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E4M3FN::GetFloat((a1 + v48));
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E4M3FN::GetFloat((a1 + v26));
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E4M3FN::GetFloat((a1 + v66));
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E4M3FN::GetFloat((a1 + v40));
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E4M3FN::GetFloat((a1 + v73));
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E4M3FN::GetFloat((a1 + v81));
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E4M3FN::GetFloat((a1 + v19));
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218385794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E5M2::GetFloat((a1 + v56));
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E5M2::GetFloat((a1 + v33));
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E5M2::GetFloat((a1 + v48));
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E5M2::GetFloat((a1 + v26));
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E5M2::GetFloat((a1 + v66));
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E5M2::GetFloat((a1 + v40));
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E5M2::GetFloat((a1 + v73));
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E5M2::GetFloat((a1 + v81));
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E5M2::GetFloat((a1 + v19));
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218385EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>@<X0>(MIL::Bf16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Bf16::GetFloat(a1);
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Bf16::GetFloat(a1);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Bf16::GetFloat(a1);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Bf16::GetFloat(a1);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Bf16::GetFloat(a1);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Bf16::GetFloat(a1);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Bf16::GetFloat(a1);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Bf16::GetFloat(a1);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Bf16::GetFloat(a1);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218386658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>@<X0>(MIL::Fp16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp16::GetFloat(a1);
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp16::GetFloat(a1);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp16::GetFloat(a1);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp16::GetFloat(a1);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp16::GetFloat(a1);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp16::GetFloat(a1);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp16::GetFloat(a1);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp16::GetFloat(a1);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp16::GetFloat(a1);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218386DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v58 = *(a1 + 4 * v56);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (v58 - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + 4 * v33);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = *(a1 + 4 * v48);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + 4 * v26);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = *(a1 + 4 * v66);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + 4 * v40);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = *(a1 + 4 * v73);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = *(a1 + 4 * v81);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = *(a1 + 4 * v19);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183874D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v19[0] = a1;
      v19[1] = a2;
      v18 = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(v19, v11);
      Int = MIL::UInt4::GetInt(&v18);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v12));
      result = MIL::Bf16::FromFloat(v15, Float * Int);
      v16 = *a5;
      v17 = a5[1];
      *(*a5 + 2 * v11++) = result;
    }

    while (v11 < (v17 - v16) >> 1);
  }

  return result;
}

void sub_218387670(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v19[0] = a1;
      v19[1] = a2;
      v18 = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(v19, v11);
      Int = MIL::Int4::GetInt(&v18);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v12));
      result = MIL::Bf16::FromFloat(v15, Float * Int);
      v16 = *a5;
      v17 = a5[1];
      *(*a5 + 2 * v11++) = result;
    }

    while (v11 < (v17 - v16) >> 1);
  }

  return result;
}

void sub_218387754(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + v10);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v12);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387808(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + v10);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v12);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_2183878B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp8E4M3FN::GetFloat((a1 + v10));
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387978(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp8E5M2::GetFloat((a1 + v10));
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387A38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>@<X0>(MIL::Bf16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Bf16::GetFloat(a1);
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387AFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>@<X0>(MIL::Fp16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp16::GetFloat(a1);
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387BC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + 4 * v10);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, v12 * Float);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387C74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(void *a1, uint64_t **a2, unint64_t **a3)
{
  MIL::Operators::Common::Shared::ConstExprs::GetBlockSizes(a2, a3, a1);
  MIL::Operators::Common::Shared::ConstExprs::GetStrides(a2, a1 + 3);
  MIL::Operators::Common::Shared::ConstExprs::GetStrides(a3, a1 + 6);
  return a1;
}

void sub_218387CF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(unint64_t **this, unint64_t a2)
{
  MIL::Operators::Common::Shared::ConstExprs::UnravelIndex(a2, this + 3, v14);
  std::vector<unsigned long>::vector[abi:ne200100](&__p, this[7] - this[6]);
  v3 = __p;
  if (v13 != __p)
  {
    v4 = (v13 - __p) >> 3;
    v5 = v14[0];
    v6 = *this;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      *v3++ = v7 / v9;
      --v4;
    }

    while (v4);
  }

  v10 = MIL::Operators::Common::Shared::ConstExprs::RavelIndex(&__p, (this + 6));
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  return v10;
}

void sub_218387DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::UInt4::GetInt(&v94);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::UInt4::GetInt(&v94);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::UInt4::GetInt(&v94);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::UInt4::GetInt(&v94);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::UInt4::GetInt(&v94);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::UInt4::GetInt(&v94);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::UInt4::GetInt(&v94);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::UInt4::GetInt(&v94);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::UInt4::GetInt(&v94);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218388570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::Int4::GetInt(&v94);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::Int4::GetInt(&v94);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::Int4::GetInt(&v94);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::Int4::GetInt(&v94);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::Int4::GetInt(&v94);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::Int4::GetInt(&v94);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::Int4::GetInt(&v94);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::Int4::GetInt(&v94);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::Int4::GetInt(&v94);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218388DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v58 = *(a1 + v56);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, Float * (v58 - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = *(a1 + v48);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = *(a1 + v66);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = *(a1 + v73);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = *(a1 + v81);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = *(a1 + v19);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183894E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v13 = (*(**a4 + 32))();
  v14 = (*(*v13 + 88))(v13);
  v15 = v14;
  if (v14 <= 12)
  {
    if (v14 > 6)
    {
      if (v14 == 7)
      {
        v54 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v55 = 0;
          do
          {
            v56 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v55);
            LOBYTE(v6) = *(a1 + v55);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v56));
            v58 = MIL::Bf16::GetFloat((v54 + 2 * v56));
            result = MIL::Fp16::FromFloat(v59, Float * (v6 - v58));
            v60 = *a6;
            *(*a6 + 2 * v55++) = result;
          }

          while (v55 < (a6[1] - v60) >> 1);
        }
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v14 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          LOBYTE(v6) = *(a1 + v48);
          v50 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v51 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v52, v50 * (v6 - v51));
          v53 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v53) >> 1);
      }
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v14 <= 19)
  {
    if (v14 == 13)
    {
      v61 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v63 = v62;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v64 = 0;
        do
        {
          v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
          LOBYTE(v6) = *(a1 + v64);
          v66 = MIL::Fp16::GetFloat((a3 + 2 * v65));
          v90.__r_.__value_.__r.__words[0] = v61;
          v90.__r_.__value_.__l.__size_ = v63;
          v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v90, v65);
          Int = MIL::Int4::GetInt(&v89);
          result = MIL::Fp16::FromFloat(Int, v66 * (v6 - Int));
          v68 = *a6;
          *(*a6 + 2 * v64++) = result;
        }

        while (v64 < (a6[1] - v68) >> 1);
      }
    }

    else
    {
      if (v14 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v14)
    {
      case 25:
        v69 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v70 = 0;
          do
          {
            v71 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v70);
            LOBYTE(v6) = *(a1 + v70);
            v72 = MIL::Fp16::GetFloat((a3 + 2 * v71));
            v73 = MIL::Fp8E5M2::GetFloat((v69 + v71));
            result = MIL::Fp16::FromFloat(v74, v72 * (v6 - v73));
            v75 = *a6;
            *(*a6 + 2 * v70++) = result;
          }

          while (v70 < (a6[1] - v75) >> 1);
        }

        break;
      case 24:
        v76 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v77 = 0;
          do
          {
            v78 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v77);
            LOBYTE(v6) = *(a1 + v77);
            v79 = MIL::Fp16::GetFloat((a3 + 2 * v78));
            v80 = MIL::Fp8E4M3FN::GetFloat((v76 + v78));
            result = MIL::Fp16::FromFloat(v81, v79 * (v6 - v80));
            v82 = *a6;
            *(*a6 + 2 * v77++) = result;
          }

          while (v77 < (a6[1] - v82) >> 1);
        }

        break;
      case 20:
        v16 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v18 = v17;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v20 = 0;
          do
          {
            v21 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v20);
            LOBYTE(v6) = *(a1 + v20);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v21));
            v90.__r_.__value_.__r.__words[0] = v16;
            v90.__r_.__value_.__l.__size_ = v18;
            v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v90, v21);
            v23 = MIL::UInt4::GetInt(&v89);
            result = MIL::Fp16::FromFloat(v23, v22 * (v6 - v23));
            v24 = *a6;
            *(*a6 + 2 * v20++) = result;
          }

          while (v20 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v15, &v88);
        v84 = std::string::insert(&v88, 0, "Unsupported dType (");
        v85 = *&v84->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        v86 = std::string::append(&v89, ") for offset.");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v90);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218389C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E4M3FN>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E4M3FN::GetFloat((a1 + v56));
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E4M3FN::GetFloat((a1 + v33));
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E4M3FN::GetFloat((a1 + v48));
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E4M3FN::GetFloat((a1 + v26));
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E4M3FN::GetFloat((a1 + v66));
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E4M3FN::GetFloat((a1 + v40));
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E4M3FN::GetFloat((a1 + v73));
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E4M3FN::GetFloat((a1 + v81));
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E4M3FN::GetFloat((a1 + v19));
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838A35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E5M2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E5M2::GetFloat((a1 + v56));
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E5M2::GetFloat((a1 + v33));
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E5M2::GetFloat((a1 + v48));
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E5M2::GetFloat((a1 + v26));
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E5M2::GetFloat((a1 + v66));
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E5M2::GetFloat((a1 + v40));
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E5M2::GetFloat((a1 + v73));
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E5M2::GetFloat((a1 + v81));
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E5M2::GetFloat((a1 + v19));
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838AAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>@<X0>(MIL::Bf16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Bf16::GetFloat(a1);
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Bf16::GetFloat(a1);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Bf16::GetFloat(a1);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Bf16::GetFloat(a1);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Bf16::GetFloat(a1);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Bf16::GetFloat(a1);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Bf16::GetFloat(a1);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Bf16::GetFloat(a1);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Bf16::GetFloat(a1);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838B220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>@<X0>(MIL::Fp16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp16::GetFloat(a1);
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp16::GetFloat(a1);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp16::GetFloat(a1);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp16::GetFloat(a1);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp16::GetFloat(a1);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp16::GetFloat(a1);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp16::GetFloat(a1);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp16::GetFloat(a1);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp16::GetFloat(a1);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838B994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v58 = *(a1 + 4 * v56);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, Float * (v58 - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + 4 * v33);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = *(a1 + 4 * v48);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + 4 * v26);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = *(a1 + 4 * v66);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + 4 * v40);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = *(a1 + 4 * v73);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = *(a1 + 4 * v81);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = *(a1 + 4 * v19);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838C09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v19[0] = a1;
      v19[1] = a2;
      v18 = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(v19, v11);
      Int = MIL::UInt4::GetInt(&v18);
      Float = MIL::Fp16::GetFloat((a3 + 2 * v12));
      result = MIL::Fp16::FromFloat(v15, Float * Int);
      v16 = *a5;
      v17 = a5[1];
      *(*a5 + 2 * v11++) = result;
    }

    while (v11 < (v17 - v16) >> 1);
  }

  return result;
}

void sub_21838C238(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v19[0] = a1;
      v19[1] = a2;
      v18 = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(v19, v11);
      Int = MIL::Int4::GetInt(&v18);
      Float = MIL::Fp16::GetFloat((a3 + 2 * v12));
      result = MIL::Fp16::FromFloat(v15, Float * Int);
      v16 = *a5;
      v17 = a5[1];
      *(*a5 + 2 * v11++) = result;
    }

    while (v11 < (v17 - v16) >> 1);
  }

  return result;
}