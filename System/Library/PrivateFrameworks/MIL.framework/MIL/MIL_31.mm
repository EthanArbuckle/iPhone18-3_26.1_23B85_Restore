void sub_21838C31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + v10);
      Float = MIL::Fp16::GetFloat((a3 + 2 * v11));
      result = MIL::Fp16::FromFloat(v14, Float * v12);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_21838C3D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + v10);
      Float = MIL::Fp16::GetFloat((a3 + 2 * v11));
      result = MIL::Fp16::FromFloat(v14, Float * v12);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_21838C480(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E4M3FN>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp8E4M3FN::GetFloat((a1 + v10));
      v13 = MIL::Fp16::GetFloat((a3 + 2 * v11));
      result = MIL::Fp16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_21838C540(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E5M2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp8E5M2::GetFloat((a1 + v10));
      v13 = MIL::Fp16::GetFloat((a3 + 2 * v11));
      result = MIL::Fp16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_21838C600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>@<X0>(MIL::Bf16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Bf16::GetFloat(a1);
      v13 = MIL::Fp16::GetFloat((a3 + 2 * v11));
      result = MIL::Fp16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_21838C6C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>@<X0>(MIL::Fp16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp16::GetFloat(a1);
      v13 = MIL::Fp16::GetFloat((a3 + 2 * v11));
      result = MIL::Fp16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_21838C788(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + 4 * v10);
      Float = MIL::Fp16::GetFloat((a3 + 2 * v11));
      result = MIL::Fp16::FromFloat(v14, v12 * Float);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_21838C83C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>(std::string::size_type a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v47 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v48 = 0;
          do
          {
            v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v48);
            Int = MIL::UInt4::GetInt(&v83);
            v51 = *(a3 + 4 * v49);
            Float = MIL::Bf16::GetFloat((v47 + 2 * v49));
            v53 = *a6;
            *(*a6 + 4 * v48++) = v51 * (Int - Float);
          }

          while (v48 < (a6[1] - v53) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v30 = 0;
          do
          {
            v31 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v30);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v30);
            v32 = MIL::UInt4::GetInt(&v83);
            v33 = *a6;
            *(*a6 + 4 * v30++) = *(a3 + 4 * v31) * (v32 - *(Data + v31));
          }

          while (v30 < (a6[1] - v33) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v41 = 0;
        do
        {
          v42 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v41);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v41);
          v43 = MIL::UInt4::GetInt(&v83);
          v44 = *(a3 + 4 * v42);
          v45 = MIL::Fp16::GetFloat((v40 + 2 * v42));
          v46 = *a6;
          *(*a6 + 4 * v41++) = v44 * (v43 - v45);
        }

        while (v41 < (a6[1] - v46) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v25);
          v27 = MIL::UInt4::GetInt(&v83);
          v28 = *a6;
          *(*a6 + 4 * v25++) = *(a3 + 4 * v26) * (v27 - *(v24 + 4 * v26));
        }

        while (v25 < (a6[1] - v28) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v54 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v56 = v55;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v57 = 0;
        do
        {
          v58 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v57);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v57);
          v59 = MIL::UInt4::GetInt(&v83);
          v60 = *(a3 + 4 * v58);
          v84.__r_.__value_.__r.__words[0] = v54;
          v84.__r_.__value_.__l.__size_ = v56;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v58);
          v61 = MIL::Int4::GetInt(&v83);
          v62 = *a6;
          *(*a6 + 4 * v57++) = v60 * (v59 - v61);
        }

        while (v57 < (a6[1] - v62) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v34 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v35 = 0;
        do
        {
          v36 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v35);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v35);
          v37 = MIL::UInt4::GetInt(&v83);
          LOBYTE(v38) = *(v34 + v36);
          v39 = *a6;
          *(*a6 + 4 * v35++) = *(a3 + 4 * v36) * (v37 - v38);
        }

        while (v35 < (a6[1] - v39) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v63 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v64 = 0;
          do
          {
            v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v64);
            v66 = MIL::UInt4::GetInt(&v83);
            v67 = *(a3 + 4 * v65);
            v68 = MIL::Fp8E5M2::GetFloat((v63 + v65));
            v69 = *a6;
            *(*a6 + 4 * v64++) = v67 * (v66 - v68);
          }

          while (v64 < (a6[1] - v69) >> 2);
        }

        break;
      case 24:
        v70 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v71 = 0;
          do
          {
            v72 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v71);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v71);
            v73 = MIL::UInt4::GetInt(&v83);
            v74 = *(a3 + 4 * v72);
            v75 = MIL::Fp8E4M3FN::GetFloat((v70 + v72));
            v76 = *a6;
            *(*a6 + 4 * v71++) = v74 * (v73 - v75);
          }

          while (v71 < (a6[1] - v76) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v18);
            v20 = MIL::UInt4::GetInt(&v83);
            v21 = *(a3 + 4 * v19);
            v84.__r_.__value_.__r.__words[0] = v15;
            v84.__r_.__value_.__l.__size_ = v17;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v19);
            v22 = MIL::UInt4::GetInt(&v83);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v82);
        v78 = std::string::insert(&v82, 0, "Unsupported dType (");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v83, ") for offset.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v84);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838CF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>(std::string::size_type a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v47 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v48 = 0;
          do
          {
            v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v48);
            Int = MIL::Int4::GetInt(&v83);
            v51 = *(a3 + 4 * v49);
            Float = MIL::Bf16::GetFloat((v47 + 2 * v49));
            v53 = *a6;
            *(*a6 + 4 * v48++) = v51 * (Int - Float);
          }

          while (v48 < (a6[1] - v53) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v30 = 0;
          do
          {
            v31 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v30);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v30);
            v32 = MIL::Int4::GetInt(&v83);
            v33 = *a6;
            *(*a6 + 4 * v30++) = *(a3 + 4 * v31) * (v32 - *(Data + v31));
          }

          while (v30 < (a6[1] - v33) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v41 = 0;
        do
        {
          v42 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v41);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v41);
          v43 = MIL::Int4::GetInt(&v83);
          v44 = *(a3 + 4 * v42);
          v45 = MIL::Fp16::GetFloat((v40 + 2 * v42));
          v46 = *a6;
          *(*a6 + 4 * v41++) = v44 * (v43 - v45);
        }

        while (v41 < (a6[1] - v46) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v25);
          v27 = MIL::Int4::GetInt(&v83);
          v28 = *a6;
          *(*a6 + 4 * v25++) = *(a3 + 4 * v26) * (v27 - *(v24 + 4 * v26));
        }

        while (v25 < (a6[1] - v28) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v54 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v56 = v55;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v57 = 0;
        do
        {
          v58 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v57);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v57);
          v59 = MIL::Int4::GetInt(&v83);
          v60 = *(a3 + 4 * v58);
          v84.__r_.__value_.__r.__words[0] = v54;
          v84.__r_.__value_.__l.__size_ = v56;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v58);
          v61 = MIL::Int4::GetInt(&v83);
          v62 = *a6;
          *(*a6 + 4 * v57++) = v60 * (v59 - v61);
        }

        while (v57 < (a6[1] - v62) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v34 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v35 = 0;
        do
        {
          v36 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v35);
          v84.__r_.__value_.__r.__words[0] = a1;
          v84.__r_.__value_.__l.__size_ = a2;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v35);
          v37 = MIL::Int4::GetInt(&v83);
          LOBYTE(v38) = *(v34 + v36);
          v39 = *a6;
          *(*a6 + 4 * v35++) = *(a3 + 4 * v36) * (v37 - v38);
        }

        while (v35 < (a6[1] - v39) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v63 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v64 = 0;
          do
          {
            v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v64);
            v66 = MIL::Int4::GetInt(&v83);
            v67 = *(a3 + 4 * v65);
            v68 = MIL::Fp8E5M2::GetFloat((v63 + v65));
            v69 = *a6;
            *(*a6 + 4 * v64++) = v67 * (v66 - v68);
          }

          while (v64 < (a6[1] - v69) >> 2);
        }

        break;
      case 24:
        v70 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v71 = 0;
          do
          {
            v72 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v71);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v71);
            v73 = MIL::Int4::GetInt(&v83);
            v74 = *(a3 + 4 * v72);
            v75 = MIL::Fp8E4M3FN::GetFloat((v70 + v72));
            v76 = *a6;
            *(*a6 + 4 * v71++) = v74 * (v73 - v75);
          }

          while (v71 < (a6[1] - v76) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v84.__r_.__value_.__r.__words[0] = a1;
            v84.__r_.__value_.__l.__size_ = a2;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v18);
            v20 = MIL::Int4::GetInt(&v83);
            v21 = *(a3 + 4 * v19);
            v84.__r_.__value_.__r.__words[0] = v15;
            v84.__r_.__value_.__l.__size_ = v17;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v19);
            v22 = MIL::UInt4::GetInt(&v83);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v82);
        v78 = std::string::insert(&v82, 0, "Unsupported dType (");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v83, ") for offset.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v84);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838D6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v44 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v45 = 0;
          do
          {
            v46 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v45);
            v47 = *(a1 + v45);
            v48 = *(a3 + 4 * v46);
            Float = MIL::Bf16::GetFloat((v44 + 2 * v46));
            v50 = *a6;
            *(*a6 + 4 * v45++) = v48 * (v47 - Float);
          }

          while (v45 < (a6[1] - v50) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v29 = 0;
          do
          {
            v30 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v29);
            v31 = *a6;
            *(*a6 + 4 * v29) = *(a3 + 4 * v30) * (*(a1 + v29) - *(Data + v30));
            ++v29;
          }

          while (v29 < (a6[1] - v31) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v37 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v38 = 0;
        do
        {
          v39 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v38);
          v40 = *(a1 + v38);
          v41 = *(a3 + 4 * v39);
          v42 = MIL::Fp16::GetFloat((v37 + 2 * v39));
          v43 = *a6;
          *(*a6 + 4 * v38++) = v41 * (v40 - v42);
        }

        while (v38 < (a6[1] - v43) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v27 = *a6;
          *(*a6 + 4 * v25) = *(a3 + 4 * v26) * (*(a1 + v25) - *(v24 + 4 * v26));
          ++v25;
        }

        while (v25 < (a6[1] - v27) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v51 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v53 = v52;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v54 = 0;
        do
        {
          v55 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v54);
          v56 = *(a1 + v54);
          v57 = *(a3 + 4 * v55);
          v81.__r_.__value_.__r.__words[0] = v51;
          v81.__r_.__value_.__l.__size_ = v53;
          v80.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v81, v55);
          Int = MIL::Int4::GetInt(&v80);
          v59 = *a6;
          *(*a6 + 4 * v54++) = v57 * (v56 - Int);
        }

        while (v54 < (a6[1] - v59) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v32 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v33 = 0;
        do
        {
          v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
          LOBYTE(v35) = *(v32 + v34);
          v36 = *a6;
          *(*a6 + 4 * v33) = *(a3 + 4 * v34) * (*(a1 + v33) - v35);
          ++v33;
        }

        while (v33 < (a6[1] - v36) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v60 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v61 = 0;
          do
          {
            v62 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v61);
            v63 = *(a1 + v61);
            v64 = *(a3 + 4 * v62);
            v65 = MIL::Fp8E5M2::GetFloat((v60 + v62));
            v66 = *a6;
            *(*a6 + 4 * v61++) = v64 * (v63 - v65);
          }

          while (v61 < (a6[1] - v66) >> 2);
        }

        break;
      case 24:
        v67 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v68 = 0;
          do
          {
            v69 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v68);
            v70 = *(a1 + v68);
            v71 = *(a3 + 4 * v69);
            v72 = MIL::Fp8E4M3FN::GetFloat((v67 + v69));
            v73 = *a6;
            *(*a6 + 4 * v68++) = v71 * (v70 - v72);
          }

          while (v68 < (a6[1] - v73) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v20 = *(a1 + v18);
            v21 = *(a3 + 4 * v19);
            v81.__r_.__value_.__r.__words[0] = v15;
            v81.__r_.__value_.__l.__size_ = v17;
            v80.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v81, v19);
            v22 = MIL::UInt4::GetInt(&v80);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v79);
        v75 = std::string::insert(&v79, 0, "Unsupported dType (");
        v76 = *&v75->__r_.__value_.__l.__data_;
        v80.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
        *&v80.__r_.__value_.__l.__data_ = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        v77 = std::string::append(&v80, ") for offset.");
        v78 = *&v77->__r_.__value_.__l.__data_;
        v81.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
        *&v81.__r_.__value_.__l.__data_ = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v81);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838DD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v47 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v48 = 0;
          do
          {
            v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
            v50 = *(a1 + v48);
            v51 = *(a3 + 4 * v49);
            Float = MIL::Bf16::GetFloat((v47 + 2 * v49));
            v53 = *a6;
            *(*a6 + 4 * v48++) = v51 * (v50 - Float);
          }

          while (v48 < (a6[1] - v53) >> 2);
        }
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v30 = 0;
          do
          {
            v31 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v30);
            LOBYTE(v32) = *(a1 + v30);
            v33 = *a6;
            *(*a6 + 4 * v30++) = *(a3 + 4 * v31) * (v32 - *(Data + v31));
          }

          while (v30 < (a6[1] - v33) >> 2);
        }
      }
    }

    else if (v14 == 4)
    {
      v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v41 = 0;
        do
        {
          v42 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v41);
          v43 = *(a1 + v41);
          v44 = *(a3 + 4 * v42);
          v45 = MIL::Fp16::GetFloat((v40 + 2 * v42));
          v46 = *a6;
          *(*a6 + 4 * v41++) = v44 * (v43 - v45);
        }

        while (v41 < (a6[1] - v46) >> 2);
      }
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          LOBYTE(v27) = *(a1 + v25);
          v28 = *a6;
          *(*a6 + 4 * v25++) = *(a3 + 4 * v26) * (v27 - *(v24 + 4 * v26));
        }

        while (v25 < (a6[1] - v28) >> 2);
      }
    }
  }

  else if (v14 <= 19)
  {
    if (v14 == 13)
    {
      v54 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v56 = v55;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v57 = 0;
        do
        {
          v58 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v57);
          LOBYTE(v6) = *(a1 + v57);
          v59 = *(a3 + 4 * v58);
          v83.__r_.__value_.__r.__words[0] = v54;
          v83.__r_.__value_.__l.__size_ = v56;
          v82.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v83, v58);
          Int = MIL::Int4::GetInt(&v82);
          v61 = *a6;
          *(*a6 + 4 * v57++) = v59 * (v6 - Int);
        }

        while (v57 < (a6[1] - v61) >> 2);
      }
    }

    else
    {
      if (v14 != 14)
      {
        goto LABEL_49;
      }

      v34 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v35 = 0;
        do
        {
          v36 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v35);
          LOBYTE(v37) = *(a1 + v35);
          LOBYTE(v38) = *(v34 + v36);
          v39 = *a6;
          *(*a6 + 4 * v35++) = *(a3 + 4 * v36) * (v37 - v38);
        }

        while (v35 < (a6[1] - v39) >> 2);
      }
    }
  }

  else
  {
    switch(v14)
    {
      case 25:
        v62 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v63 = 0;
          do
          {
            v64 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v63);
            v65 = *(a1 + v63);
            v66 = *(a3 + 4 * v64);
            v67 = MIL::Fp8E5M2::GetFloat((v62 + v64));
            v68 = *a6;
            *(*a6 + 4 * v63++) = v66 * (v65 - v67);
          }

          while (v63 < (a6[1] - v68) >> 2);
        }

        break;
      case 24:
        v69 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v70 = 0;
          do
          {
            v71 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v70);
            v72 = *(a1 + v70);
            v73 = *(a3 + 4 * v71);
            v74 = MIL::Fp8E4M3FN::GetFloat((v69 + v71));
            v75 = *a6;
            *(*a6 + 4 * v70++) = v73 * (v72 - v74);
          }

          while (v70 < (a6[1] - v75) >> 2);
        }

        break;
      case 20:
        v16 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v18 = v17;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            LOBYTE(v6) = *(a1 + v19);
            v21 = *(a3 + 4 * v20);
            v83.__r_.__value_.__r.__words[0] = v16;
            v83.__r_.__value_.__l.__size_ = v18;
            v82.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v83, v20);
            v22 = MIL::UInt4::GetInt(&v82);
            v23 = *a6;
            *(*a6 + 4 * v19++) = v21 * (v6 - v22);
          }

          while (v19 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v15, &v81);
        v77 = std::string::insert(&v81, 0, "Unsupported dType (");
        v78 = *&v77->__r_.__value_.__l.__data_;
        v82.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
        *&v82.__r_.__value_.__l.__data_ = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = std::string::append(&v82, ") for offset.");
        v80 = *&v79->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v83);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838E400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E4M3FN>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v47 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v48 = 0;
          do
          {
            v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
            Float = MIL::Fp8E4M3FN::GetFloat((a1 + v48));
            v51 = *(a3 + 4 * v49);
            v52 = MIL::Bf16::GetFloat((v47 + 2 * v49));
            v53 = *a6;
            *(*a6 + 4 * v48++) = v51 * (Float - v52);
          }

          while (v48 < (a6[1] - v53) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v30 = 0;
          do
          {
            v31 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v30);
            v32 = MIL::Fp8E4M3FN::GetFloat((a1 + v30));
            v33 = *a6;
            *(*a6 + 4 * v30++) = *(a3 + 4 * v31) * (v32 - *(Data + v31));
          }

          while (v30 < (a6[1] - v33) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v41 = 0;
        do
        {
          v42 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v41);
          v43 = MIL::Fp8E4M3FN::GetFloat((a1 + v41));
          v44 = *(a3 + 4 * v42);
          v45 = MIL::Fp16::GetFloat((v40 + 2 * v42));
          v46 = *a6;
          *(*a6 + 4 * v41++) = v44 * (v43 - v45);
        }

        while (v41 < (a6[1] - v46) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v27 = MIL::Fp8E4M3FN::GetFloat((a1 + v25));
          v28 = *a6;
          *(*a6 + 4 * v25++) = *(a3 + 4 * v26) * (v27 - *(v24 + 4 * v26));
        }

        while (v25 < (a6[1] - v28) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v54 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v56 = v55;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v57 = 0;
        do
        {
          v58 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v57);
          v59 = MIL::Fp8E4M3FN::GetFloat((a1 + v57));
          v60 = *(a3 + 4 * v58);
          v84.__r_.__value_.__r.__words[0] = v54;
          v84.__r_.__value_.__l.__size_ = v56;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v58);
          Int = MIL::Int4::GetInt(&v83);
          v62 = *a6;
          *(*a6 + 4 * v57++) = v60 * (v59 - Int);
        }

        while (v57 < (a6[1] - v62) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v34 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v35 = 0;
        do
        {
          v36 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v35);
          v37 = MIL::Fp8E4M3FN::GetFloat((a1 + v35));
          LOBYTE(v38) = *(v34 + v36);
          v39 = *a6;
          *(*a6 + 4 * v35++) = *(a3 + 4 * v36) * (v37 - v38);
        }

        while (v35 < (a6[1] - v39) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v63 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v64 = 0;
          do
          {
            v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
            v66 = MIL::Fp8E4M3FN::GetFloat((a1 + v64));
            v67 = *(a3 + 4 * v65);
            v68 = MIL::Fp8E5M2::GetFloat((v63 + v65));
            v69 = *a6;
            *(*a6 + 4 * v64++) = v67 * (v66 - v68);
          }

          while (v64 < (a6[1] - v69) >> 2);
        }

        break;
      case 24:
        v70 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v71 = 0;
          do
          {
            v72 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v71);
            v73 = MIL::Fp8E4M3FN::GetFloat((a1 + v71));
            v74 = *(a3 + 4 * v72);
            v75 = MIL::Fp8E4M3FN::GetFloat((v70 + v72));
            v76 = *a6;
            *(*a6 + 4 * v71++) = v74 * (v73 - v75);
          }

          while (v71 < (a6[1] - v76) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v20 = MIL::Fp8E4M3FN::GetFloat((a1 + v18));
            v21 = *(a3 + 4 * v19);
            v84.__r_.__value_.__r.__words[0] = v15;
            v84.__r_.__value_.__l.__size_ = v17;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v19);
            v22 = MIL::UInt4::GetInt(&v83);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v82);
        v78 = std::string::insert(&v82, 0, "Unsupported dType (");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v83, ") for offset.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v84);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838EAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E5M2>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v47 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v48 = 0;
          do
          {
            v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
            Float = MIL::Fp8E5M2::GetFloat((a1 + v48));
            v51 = *(a3 + 4 * v49);
            v52 = MIL::Bf16::GetFloat((v47 + 2 * v49));
            v53 = *a6;
            *(*a6 + 4 * v48++) = v51 * (Float - v52);
          }

          while (v48 < (a6[1] - v53) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v30 = 0;
          do
          {
            v31 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v30);
            v32 = MIL::Fp8E5M2::GetFloat((a1 + v30));
            v33 = *a6;
            *(*a6 + 4 * v30++) = *(a3 + 4 * v31) * (v32 - *(Data + v31));
          }

          while (v30 < (a6[1] - v33) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v41 = 0;
        do
        {
          v42 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v41);
          v43 = MIL::Fp8E5M2::GetFloat((a1 + v41));
          v44 = *(a3 + 4 * v42);
          v45 = MIL::Fp16::GetFloat((v40 + 2 * v42));
          v46 = *a6;
          *(*a6 + 4 * v41++) = v44 * (v43 - v45);
        }

        while (v41 < (a6[1] - v46) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v27 = MIL::Fp8E5M2::GetFloat((a1 + v25));
          v28 = *a6;
          *(*a6 + 4 * v25++) = *(a3 + 4 * v26) * (v27 - *(v24 + 4 * v26));
        }

        while (v25 < (a6[1] - v28) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v54 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v56 = v55;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v57 = 0;
        do
        {
          v58 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v57);
          v59 = MIL::Fp8E5M2::GetFloat((a1 + v57));
          v60 = *(a3 + 4 * v58);
          v84.__r_.__value_.__r.__words[0] = v54;
          v84.__r_.__value_.__l.__size_ = v56;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v58);
          Int = MIL::Int4::GetInt(&v83);
          v62 = *a6;
          *(*a6 + 4 * v57++) = v60 * (v59 - Int);
        }

        while (v57 < (a6[1] - v62) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v34 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v35 = 0;
        do
        {
          v36 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v35);
          v37 = MIL::Fp8E5M2::GetFloat((a1 + v35));
          LOBYTE(v38) = *(v34 + v36);
          v39 = *a6;
          *(*a6 + 4 * v35++) = *(a3 + 4 * v36) * (v37 - v38);
        }

        while (v35 < (a6[1] - v39) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v63 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v64 = 0;
          do
          {
            v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
            v66 = MIL::Fp8E5M2::GetFloat((a1 + v64));
            v67 = *(a3 + 4 * v65);
            v68 = MIL::Fp8E5M2::GetFloat((v63 + v65));
            v69 = *a6;
            *(*a6 + 4 * v64++) = v67 * (v66 - v68);
          }

          while (v64 < (a6[1] - v69) >> 2);
        }

        break;
      case 24:
        v70 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v71 = 0;
          do
          {
            v72 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v71);
            v73 = MIL::Fp8E5M2::GetFloat((a1 + v71));
            v74 = *(a3 + 4 * v72);
            v75 = MIL::Fp8E4M3FN::GetFloat((v70 + v72));
            v76 = *a6;
            *(*a6 + 4 * v71++) = v74 * (v73 - v75);
          }

          while (v71 < (a6[1] - v76) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v20 = MIL::Fp8E5M2::GetFloat((a1 + v18));
            v21 = *(a3 + 4 * v19);
            v84.__r_.__value_.__r.__words[0] = v15;
            v84.__r_.__value_.__l.__size_ = v17;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v19);
            v22 = MIL::UInt4::GetInt(&v83);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v82);
        v78 = std::string::insert(&v82, 0, "Unsupported dType (");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v83, ") for offset.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v84);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838F180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>(MIL::Bf16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v47 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v48 = 0;
          do
          {
            v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
            Float = MIL::Bf16::GetFloat(a1);
            v51 = *(a3 + 4 * v49);
            v52 = MIL::Bf16::GetFloat((v47 + 2 * v49));
            v53 = *a6;
            *(*a6 + 4 * v48++) = v51 * (Float - v52);
            a1 = (a1 + 2);
          }

          while (v48 < (a6[1] - v53) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v30 = 0;
          do
          {
            v31 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v30);
            v32 = MIL::Bf16::GetFloat(a1);
            v33 = *a6;
            *(*a6 + 4 * v30++) = *(a3 + 4 * v31) * (v32 - *(Data + v31));
            a1 = (a1 + 2);
          }

          while (v30 < (a6[1] - v33) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v41 = 0;
        do
        {
          v42 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v41);
          v43 = MIL::Bf16::GetFloat(a1);
          v44 = *(a3 + 4 * v42);
          v45 = MIL::Fp16::GetFloat((v40 + 2 * v42));
          v46 = *a6;
          *(*a6 + 4 * v41++) = v44 * (v43 - v45);
          a1 = (a1 + 2);
        }

        while (v41 < (a6[1] - v46) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v27 = MIL::Bf16::GetFloat(a1);
          v28 = *a6;
          *(*a6 + 4 * v25++) = *(a3 + 4 * v26) * (v27 - *(v24 + 4 * v26));
          a1 = (a1 + 2);
        }

        while (v25 < (a6[1] - v28) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v54 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v56 = v55;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v57 = 0;
        do
        {
          v58 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v57);
          v59 = MIL::Bf16::GetFloat(a1);
          v60 = *(a3 + 4 * v58);
          v84.__r_.__value_.__r.__words[0] = v54;
          v84.__r_.__value_.__l.__size_ = v56;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v58);
          Int = MIL::Int4::GetInt(&v83);
          v62 = *a6;
          *(*a6 + 4 * v57++) = v60 * (v59 - Int);
          a1 = (a1 + 2);
        }

        while (v57 < (a6[1] - v62) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v34 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v35 = 0;
        do
        {
          v36 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v35);
          v37 = MIL::Bf16::GetFloat(a1);
          LOBYTE(v38) = *(v34 + v36);
          v39 = *a6;
          *(*a6 + 4 * v35++) = *(a3 + 4 * v36) * (v37 - v38);
          a1 = (a1 + 2);
        }

        while (v35 < (a6[1] - v39) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v63 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v64 = 0;
          do
          {
            v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
            v66 = MIL::Bf16::GetFloat(a1);
            v67 = *(a3 + 4 * v65);
            v68 = MIL::Fp8E5M2::GetFloat((v63 + v65));
            v69 = *a6;
            *(*a6 + 4 * v64++) = v67 * (v66 - v68);
            a1 = (a1 + 2);
          }

          while (v64 < (a6[1] - v69) >> 2);
        }

        break;
      case 24:
        v70 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v71 = 0;
          do
          {
            v72 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v71);
            v73 = MIL::Bf16::GetFloat(a1);
            v74 = *(a3 + 4 * v72);
            v75 = MIL::Fp8E4M3FN::GetFloat((v70 + v72));
            v76 = *a6;
            *(*a6 + 4 * v71++) = v74 * (v73 - v75);
            a1 = (a1 + 2);
          }

          while (v71 < (a6[1] - v76) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v20 = MIL::Bf16::GetFloat(a1);
            v21 = *(a3 + 4 * v19);
            v84.__r_.__value_.__r.__words[0] = v15;
            v84.__r_.__value_.__l.__size_ = v17;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v19);
            v22 = MIL::UInt4::GetInt(&v83);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
            a1 = (a1 + 2);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v82);
        v78 = std::string::insert(&v82, 0, "Unsupported dType (");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v83, ") for offset.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v84);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838F864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>(MIL::Fp16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v47 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v48 = 0;
          do
          {
            v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
            Float = MIL::Fp16::GetFloat(a1);
            v51 = *(a3 + 4 * v49);
            v52 = MIL::Bf16::GetFloat((v47 + 2 * v49));
            v53 = *a6;
            *(*a6 + 4 * v48++) = v51 * (Float - v52);
            a1 = (a1 + 2);
          }

          while (v48 < (a6[1] - v53) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v30 = 0;
          do
          {
            v31 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v30);
            v32 = MIL::Fp16::GetFloat(a1);
            v33 = *a6;
            *(*a6 + 4 * v30++) = *(a3 + 4 * v31) * (v32 - *(Data + v31));
            a1 = (a1 + 2);
          }

          while (v30 < (a6[1] - v33) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v40 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v41 = 0;
        do
        {
          v42 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v41);
          v43 = MIL::Fp16::GetFloat(a1);
          v44 = *(a3 + 4 * v42);
          v45 = MIL::Fp16::GetFloat((v40 + 2 * v42));
          v46 = *a6;
          *(*a6 + 4 * v41++) = v44 * (v43 - v45);
          a1 = (a1 + 2);
        }

        while (v41 < (a6[1] - v46) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v27 = MIL::Fp16::GetFloat(a1);
          v28 = *a6;
          *(*a6 + 4 * v25++) = *(a3 + 4 * v26) * (v27 - *(v24 + 4 * v26));
          a1 = (a1 + 2);
        }

        while (v25 < (a6[1] - v28) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v54 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v56 = v55;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v57 = 0;
        do
        {
          v58 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v57);
          v59 = MIL::Fp16::GetFloat(a1);
          v60 = *(a3 + 4 * v58);
          v84.__r_.__value_.__r.__words[0] = v54;
          v84.__r_.__value_.__l.__size_ = v56;
          v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v84, v58);
          Int = MIL::Int4::GetInt(&v83);
          v62 = *a6;
          *(*a6 + 4 * v57++) = v60 * (v59 - Int);
          a1 = (a1 + 2);
        }

        while (v57 < (a6[1] - v62) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v34 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v35 = 0;
        do
        {
          v36 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v35);
          v37 = MIL::Fp16::GetFloat(a1);
          LOBYTE(v38) = *(v34 + v36);
          v39 = *a6;
          *(*a6 + 4 * v35++) = *(a3 + 4 * v36) * (v37 - v38);
          a1 = (a1 + 2);
        }

        while (v35 < (a6[1] - v39) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v63 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v64 = 0;
          do
          {
            v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
            v66 = MIL::Fp16::GetFloat(a1);
            v67 = *(a3 + 4 * v65);
            v68 = MIL::Fp8E5M2::GetFloat((v63 + v65));
            v69 = *a6;
            *(*a6 + 4 * v64++) = v67 * (v66 - v68);
            a1 = (a1 + 2);
          }

          while (v64 < (a6[1] - v69) >> 2);
        }

        break;
      case 24:
        v70 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v71 = 0;
          do
          {
            v72 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v71);
            v73 = MIL::Fp16::GetFloat(a1);
            v74 = *(a3 + 4 * v72);
            v75 = MIL::Fp8E4M3FN::GetFloat((v70 + v72));
            v76 = *a6;
            *(*a6 + 4 * v71++) = v74 * (v73 - v75);
            a1 = (a1 + 2);
          }

          while (v71 < (a6[1] - v76) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v20 = MIL::Fp16::GetFloat(a1);
            v21 = *(a3 + 4 * v19);
            v84.__r_.__value_.__r.__words[0] = v15;
            v84.__r_.__value_.__l.__size_ = v17;
            v83.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v84, v19);
            v22 = MIL::UInt4::GetInt(&v83);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
            a1 = (a1 + 2);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v82);
        v78 = std::string::insert(&v82, 0, "Unsupported dType (");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v83, ") for offset.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v84);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_21838FF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X4>, unint64_t **a5@<X5>, uint64_t *a6@<X8>)
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
        v44 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v45 = 0;
          do
          {
            v46 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v45);
            v47 = *(a1 + 4 * v45);
            v48 = *(a3 + 4 * v46);
            Float = MIL::Bf16::GetFloat((v44 + 2 * v46));
            v50 = *a6;
            *(*a6 + 4 * v45++) = v48 * (v47 - Float);
          }

          while (v45 < (a6[1] - v50) >> 2);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v29 = 0;
          do
          {
            v30 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v29);
            v31 = *a6;
            *(*a6 + 4 * v29) = *(a3 + 4 * v30) * (*(a1 + 4 * v29) - *(Data + v30));
            ++v29;
          }

          while (v29 < (a6[1] - v31) >> 2);
        }
      }
    }

    else if (v13 == 4)
    {
      v37 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v38 = 0;
        do
        {
          v39 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v38);
          v40 = *(a1 + 4 * v38);
          v41 = *(a3 + 4 * v39);
          v42 = MIL::Fp16::GetFloat((v37 + 2 * v39));
          v43 = *a6;
          *(*a6 + 4 * v38++) = v41 * (v40 - v42);
        }

        while (v38 < (a6[1] - v43) >> 2);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v24 = MIL::IRTensorValue::GetDataView<float>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v25 = 0;
        do
        {
          v26 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v25);
          v27 = *a6;
          *(*a6 + 4 * v25) = *(a3 + 4 * v26) * (*(a1 + 4 * v25) - *(v24 + 4 * v26));
          ++v25;
        }

        while (v25 < (a6[1] - v27) >> 2);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v51 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v53 = v52;
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v54 = 0;
        do
        {
          v55 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v54);
          v56 = *(a1 + 4 * v54);
          v57 = *(a3 + 4 * v55);
          v81.__r_.__value_.__r.__words[0] = v51;
          v81.__r_.__value_.__l.__size_ = v53;
          v80.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v81, v55);
          Int = MIL::Int4::GetInt(&v80);
          v59 = *a6;
          *(*a6 + 4 * v54++) = v57 * (v56 - Int);
        }

        while (v54 < (a6[1] - v59) >> 2);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v32 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      std::vector<float>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v33 = 0;
        do
        {
          v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
          LOBYTE(v35) = *(v32 + v34);
          v36 = *a6;
          *(*a6 + 4 * v33) = *(a3 + 4 * v34) * (*(a1 + 4 * v33) - v35);
          ++v33;
        }

        while (v33 < (a6[1] - v36) >> 2);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v60 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v61 = 0;
          do
          {
            v62 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v61);
            v63 = *(a1 + 4 * v61);
            v64 = *(a3 + 4 * v62);
            v65 = MIL::Fp8E5M2::GetFloat((v60 + v62));
            v66 = *a6;
            *(*a6 + 4 * v61++) = v64 * (v63 - v65);
          }

          while (v61 < (a6[1] - v66) >> 2);
        }

        break;
      case 24:
        v67 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v68 = 0;
          do
          {
            v69 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v68);
            v70 = *(a1 + 4 * v68);
            v71 = *(a3 + 4 * v69);
            v72 = MIL::Fp8E4M3FN::GetFloat((v67 + v69));
            v73 = *a6;
            *(*a6 + 4 * v68++) = v71 * (v70 - v72);
          }

          while (v68 < (a6[1] - v73) >> 2);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        std::vector<float>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v18 = 0;
          do
          {
            v19 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v18);
            v20 = *(a1 + 4 * v18);
            v21 = *(a3 + 4 * v19);
            v81.__r_.__value_.__r.__words[0] = v15;
            v81.__r_.__value_.__l.__size_ = v17;
            v80.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v81, v19);
            v22 = MIL::UInt4::GetInt(&v80);
            v23 = *a6;
            *(*a6 + 4 * v18++) = v21 * (v20 - v22);
          }

          while (v18 < (a6[1] - v23) >> 2);
        }

        return;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v79);
        v75 = std::string::insert(&v79, 0, "Unsupported dType (");
        v76 = *&v75->__r_.__value_.__l.__data_;
        v80.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
        *&v80.__r_.__value_.__l.__data_ = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        v77 = std::string::append(&v80, ") for offset.");
        v78 = *&v77->__r_.__value_.__l.__data_;
        v81.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
        *&v81.__r_.__value_.__l.__data_ = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v81);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_2183905A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v16[0] = a1;
      v16[1] = a2;
      v15 = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(v16, v11);
      result = *(a3 + 4 * v12) * MIL::UInt4::GetInt(&v15);
      v13 = *a5;
      v14 = a5[1];
      *(*a5 + 4 * v11++) = result;
    }

    while (v11 < (v14 - v13) >> 2);
  }

  return result;
}

void sub_218390714(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v16[0] = a1;
      v16[1] = a2;
      v15 = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(v16, v11);
      result = *(a3 + 4 * v12) * MIL::Int4::GetInt(&v15);
      v13 = *a5;
      v14 = a5[1];
      *(*a5 + 4 * v11++) = result;
    }

    while (v11 < (v14 - v13) >> 2);
  }

  return result;
}

void sub_2183907E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      result = *(a3 + 4 * MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10)) * *(a1 + v10);
      v11 = *a5;
      v12 = a5[1];
      *(*a5 + 4 * v10++) = result;
    }

    while (v10 < (v12 - v11) >> 2);
  }

  return result;
}

void sub_21839088C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      LOBYTE(v12) = *(a1 + v10);
      result = *(a3 + 4 * v11) * v12;
      v13 = *a5;
      v14 = a5[1];
      *(*a5 + 4 * v10++) = result;
    }

    while (v10 < (v14 - v13) >> 2);
  }

  return result;
}

void sub_218390930(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E4M3FN>@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      result = MIL::Fp8E4M3FN::GetFloat((a1 + v10)) * *(a3 + 4 * v11);
      v12 = *a5;
      v13 = a5[1];
      *(*a5 + 4 * v10++) = result;
    }

    while (v10 < (v13 - v12) >> 2);
  }

  return result;
}

void sub_2183909D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E5M2>@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      result = MIL::Fp8E5M2::GetFloat((a1 + v10)) * *(a3 + 4 * v11);
      v12 = *a5;
      v13 = a5[1];
      *(*a5 + 4 * v10++) = result;
    }

    while (v10 < (v13 - v12) >> 2);
  }

  return result;
}

void sub_218390A80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>@<S0>(MIL::Bf16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      result = MIL::Bf16::GetFloat(a1) * *(a3 + 4 * v11);
      v12 = *a5;
      v13 = a5[1];
      *(*a5 + 4 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v13 - v12) >> 2);
  }

  return result;
}

void sub_218390B2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>@<S0>(MIL::Fp16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      result = MIL::Fp16::GetFloat(a1) * *(a3 + 4 * v11);
      v12 = *a5;
      v13 = a5[1];
      *(*a5 + 4 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v13 - v12) >> 2);
  }

  return result;
}

void sub_218390BD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      result = *(a1 + 4 * v10) * *(a3 + 4 * MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10));
      v11 = *a5;
      v12 = a5[1];
      *(*a5 + 4 * v10++) = result;
    }

    while (v10 < (v12 - v11) >> 2);
  }

  return result;
}

void sub_218390C78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  *(a1 + 64) = *a7;
  *a7 = 0;
  *(a7 + 8) = 0;
  MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_218390CF0(_Unwind_Exception *a1)
{
  v3 = v1[9];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::Impl(v1 + 7, v1 + 5, v1 + 3);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "Constexpr-SparseBlockwiseShiftScale");
  v2 = (*(**(this + 2) + 32))(*(this + 2));
  std::string::basic_string[abi:ne200100]<0>(&v35, "mask");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v2, &v35);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v3 = (*(**(this + 6) + 32))(*(this + 6));
  std::string::basic_string[abi:ne200100]<0>(&v35, "scale");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v3, &v35);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v4 = (*(**(this + 2) + 32))(*(this + 2));
  v5 = (*(**(this + 6) + 32))(*(this + 6));
  std::string::basic_string[abi:ne200100]<0>(&v35, "mask");
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

  v6 = (*(**(this + 2) + 32))(*(this + 2));
  v7 = (*(*v6 + 96))(v6);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v35, *v7, v7[1], (v7[1] - *v7) >> 3);
  v8 = (*(**(this + 6) + 32))(*(this + 6));
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

  v15 = (*(**(this + 6) + 32))(*(this + 6));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(v15, *(this + 1));
  v16 = (*(**(this + 2) + 32))(*(this + 2));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputShape(v16, *this);
  if (*(this + 8))
  {
    v17 = (*(**(this + 6) + 32))(*(this + 6));
    v18 = (*(**(this + 8) + 32))(*(this + 8));
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

void sub_218391260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v386, "Constexpr-SparseBlockwiseShiftScale");
  if (a2 == 1)
  {
    v8 = (*(**(this + 1) + 88))(*(this + 1));
    v9 = v8;
    if (v8 != 4)
    {
      if (v8 != 5)
      {
        if (v8 != 7)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": Unsupported dtype ", v386, &v400.__r_.__value_.__l.__data_);
          MIL::IRDataTypeToString(v9, &v399);
          if ((v399.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v349 = &v399;
          }

          else
          {
            v349 = v399.__r_.__value_.__r.__words[0];
          }

          if ((v399.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v399.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v399.__r_.__value_.__l.__size_;
          }

          v351 = std::string::append(&v400, v349, size);
          v352 = *&v351->__r_.__value_.__l.__data_;
          v401.__r_.__value_.__r.__words[2] = v351->__r_.__value_.__r.__words[2];
          *&v401.__r_.__value_.__l.__data_ = v352;
          v351->__r_.__value_.__l.__size_ = 0;
          v351->__r_.__value_.__r.__words[2] = 0;
          v351->__r_.__value_.__r.__words[0] = 0;
          v353 = std::string::append(&v401, " for nonzero data output");
          v354 = *&v353->__r_.__value_.__l.__data_;
          v388.__r_.__value_.__r.__words[2] = v353->__r_.__value_.__r.__words[2];
          *&v388.__r_.__value_.__l.__data_ = v354;
          v353->__r_.__value_.__l.__size_ = 0;
          v353->__r_.__value_.__r.__words[2] = 0;
          v353->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(exception, &v388);
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v10 = *(this + 2);
        v11 = *(this + 3);
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = *(this + 4);
        v12 = *(this + 5);
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = *(this + 6);
        v14 = *(this + 7);
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = *(this + 8);
        v17 = *(this + 9);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = (*(*v10 + 32))(v10);
        v19 = (*(*v18 + 96))(v18);
        MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v19, &v395);
        v20 = (*(*v15 + 32))(v15);
        v21 = (*(*v20 + 96))(v20);
        MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v21, &v393);
        MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v388, &v395, &v393);
        v22 = (*(*v13 + 32))(v13);
        v23 = (*(*v22 + 88))(v22);
        v24 = v23;
        if (v16)
        {
          if (v23 <= 8)
          {
            switch(v23)
            {
              case 4:
                v129 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
                v131 = v233;
                v234 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v13);
                v235 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>(v234, v129, v131, &v401);
                v236 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1;
                if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
                {
                  v237 = 0;
                }

                else
                {
                  v237 = v401.__r_.__value_.__r.__words[0];
                }

                v399.__r_.__value_.__r.__words[0] = v16;
                v399.__r_.__value_.__l.__size_ = v17;
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>(v237, v236, v235, &v399, &v388, &v400);
                if (v399.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
                }

                break;
              case 5:
                v129 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
                v131 = v218;
                Data = MIL::IRTensorValue::GetDataView<float>(v13);
                v220 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>(Data, v129, v131, &v401);
                v221 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 2;
                if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
                {
                  v222 = 0;
                }

                else
                {
                  v222 = v401.__r_.__value_.__r.__words[0];
                }

                v399.__r_.__value_.__r.__words[0] = v16;
                v399.__r_.__value_.__l.__size_ = v17;
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>(v222, v221, v220, &v399, &v388, &v400);
                if (v399.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
                }

                break;
              case 7:
                v129 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
                v131 = v130;
                v132 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v13);
                v133 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Bf16>(v132, v129, v131, &v401);
                v134 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1;
                if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
                {
                  v135 = 0;
                }

                else
                {
                  v135 = v401.__r_.__value_.__r.__words[0];
                }

                v399.__r_.__value_.__r.__words[0] = v16;
                v399.__r_.__value_.__l.__size_ = v17;
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>(v135, v134, v133, &v399, &v388, &v400);
                if (v399.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
                }

                break;
              default:
                goto LABEL_434;
            }
          }

          else if (v23 > 13)
          {
            if (v23 != 14)
            {
              if (v23 == 20)
              {
                v25 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
                v27 = v152;
                v153 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v13);
                v155 = v154;
                v156 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v153, v155, v25, v27, &v401);
                MIL::PackSubByteVec(&v401, &v400);
                if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
                {
                  v157 = 0;
                }

                else
                {
                  v157 = v400.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v157, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
                v397 = v16;
                v398 = v17;
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>(v158, v159, v156, &v397, &v388, &v399);
                if (v398)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v398);
                }

                goto LABEL_160;
              }

LABEL_434:
              v365 = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v24, &v399);
              v366 = std::string::insert(&v399, 0, "Constexpr-SparseBlockwiseShiftScale: Unsupported dType (");
              v367 = *&v366->__r_.__value_.__l.__data_;
              v400.__r_.__value_.__r.__words[2] = v366->__r_.__value_.__r.__words[2];
              *&v400.__r_.__value_.__l.__data_ = v367;
              v366->__r_.__value_.__l.__size_ = 0;
              v366->__r_.__value_.__r.__words[2] = 0;
              v366->__r_.__value_.__r.__words[0] = 0;
              v368 = std::string::append(&v400, ") for data.");
              v369 = *&v368->__r_.__value_.__l.__data_;
              v401.__r_.__value_.__r.__words[2] = v368->__r_.__value_.__r.__words[2];
              *&v401.__r_.__value_.__l.__data_ = v369;
              v368->__r_.__value_.__l.__size_ = 0;
              v368->__r_.__value_.__r.__words[2] = 0;
              v368->__r_.__value_.__r.__words[0] = 0;
              std::runtime_error::runtime_error(v365, &v401);
              __cxa_throw(v365, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v129 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
            v131 = v263;
            v264 = MIL::IRTensorValue::GetDataView<unsigned char>(v13);
            v265 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v264, v129, v131, &v401);
            v266 = v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0];
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v267 = 0;
            }

            else
            {
              v267 = v401.__r_.__value_.__r.__words[0];
            }

            v399.__r_.__value_.__r.__words[0] = v16;
            v399.__r_.__value_.__l.__size_ = v17;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>(v267, v266, v265, &v399, &v388, &v400);
            if (v399.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
            }
          }

          else
          {
            if (v23 != 9)
            {
              if (v23 == 13)
              {
                v25 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
                v27 = v26;
                v28 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v13);
                v30 = v29;
                v31 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>(v28, v30, v25, v27, &v401);
                MIL::PackSubByteVec(&v401, &v400);
                if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
                {
                  v32 = 0;
                }

                else
                {
                  v32 = v400.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char,true>(v32, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
                v397 = v16;
                v398 = v17;
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>(v33, v34, v31, &v397, &v388, &v399);
                if (v398)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v398);
                }

LABEL_160:
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v399, v25, v27, &v385);
                if (v399.__r_.__value_.__r.__words[0])
                {
                  v399.__r_.__value_.__l.__size_ = v399.__r_.__value_.__r.__words[0];
                  operator delete(v399.__r_.__value_.__l.__data_);
                }

                goto LABEL_315;
              }

              goto LABEL_434;
            }

            v129 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
            v131 = v258;
            v259 = MIL::IRTensorValue::GetDataView<signed char>(v13);
            v260 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>(v259, v129, v131, &v401);
            v261 = v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0];
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v262 = 0;
            }

            else
            {
              v262 = v401.__r_.__value_.__r.__words[0];
            }

            v399.__r_.__value_.__r.__words[0] = v16;
            v399.__r_.__value_.__l.__size_ = v17;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>(v262, v261, v260, &v399, &v388, &v400);
            if (v399.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
            }
          }

          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v400, v129, v131, &v385);
LABEL_315:
          if (v400.__r_.__value_.__r.__words[0])
          {
            v400.__r_.__value_.__l.__size_ = v400.__r_.__value_.__r.__words[0];
            operator delete(v400.__r_.__value_.__l.__data_);
          }

          if (v401.__r_.__value_.__r.__words[0])
          {
            v401.__r_.__value_.__l.__size_ = v401.__r_.__value_.__r.__words[0];
            operator delete(v401.__r_.__value_.__l.__data_);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          goto LABEL_403;
        }

        if (v23 <= 8)
        {
          switch(v23)
          {
            case 4:
              v298 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
              v300 = v299;
              v301 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v13);
              v302 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>(v301, v298, v300, &v401);
              if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
              {
                v303 = 0;
              }

              else
              {
                v303 = v401.__r_.__value_.__r.__words[0];
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>(v303, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1, v302, &v388, &v400);
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v400, v298, v300, &v385);
              break;
            case 5:
              v280 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
              v282 = v281;
              v283 = MIL::IRTensorValue::GetDataView<float>(v13);
              v284 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>(v283, v280, v282, &v401);
              if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
              {
                v285 = 0;
              }

              else
              {
                v285 = v401.__r_.__value_.__r.__words[0];
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>(v285, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 2, v284, &v388, &v400);
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v400, v280, v282, &v385);
              break;
            case 7:
              v172 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
              v174 = v173;
              v175 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v13);
              v176 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Bf16>(v175, v172, v174, &v401);
              if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
              {
                v177 = 0;
              }

              else
              {
                v177 = v401.__r_.__value_.__r.__words[0];
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>(v177, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1, v176, &v388, &v400);
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v400, v172, v174, &v385);
              break;
            default:
              goto LABEL_437;
          }
        }

        else if (v23 > 13)
        {
          if (v23 != 14)
          {
            if (v23 == 20)
            {
              v198 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
              v200 = v199;
              v201 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v13);
              v203 = v202;
              v204 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v201, v203, v198, v200, &v401);
              MIL::PackSubByteVec(&v401, &v400);
              if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
              {
                v205 = 0;
              }

              else
              {
                v205 = v400.__r_.__value_.__r.__words[0];
              }

              MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v205, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>(v206, v207, v204, &v388, &v399);
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v399, v198, v200, &v385);
LABEL_205:
              if (v399.__r_.__value_.__r.__words[0])
              {
                v399.__r_.__value_.__l.__size_ = v399.__r_.__value_.__r.__words[0];
                operator delete(v399.__r_.__value_.__l.__data_);
              }

              goto LABEL_399;
            }

LABEL_437:
            v380 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v24, &v399);
            v381 = std::string::insert(&v399, 0, "Constexpr-SparseBlockwiseShiftScale: Unsupported dType (");
            v382 = *&v381->__r_.__value_.__l.__data_;
            v400.__r_.__value_.__r.__words[2] = v381->__r_.__value_.__r.__words[2];
            *&v400.__r_.__value_.__l.__data_ = v382;
            v381->__r_.__value_.__l.__size_ = 0;
            v381->__r_.__value_.__r.__words[2] = 0;
            v381->__r_.__value_.__r.__words[0] = 0;
            v383 = std::string::append(&v400, ") for data.");
            v384 = *&v383->__r_.__value_.__l.__data_;
            v401.__r_.__value_.__r.__words[2] = v383->__r_.__value_.__r.__words[2];
            *&v401.__r_.__value_.__l.__data_ = v384;
            v383->__r_.__value_.__l.__size_ = 0;
            v383->__r_.__value_.__r.__words[2] = 0;
            v383->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v380, &v401);
            __cxa_throw(v380, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v334 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
          v336 = v335;
          v337 = MIL::IRTensorValue::GetDataView<unsigned char>(v13);
          v338 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v337, v334, v336, &v401);
          if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
          {
            v339 = 0;
          }

          else
          {
            v339 = v401.__r_.__value_.__r.__words[0];
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>(v339, v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0], v338, &v388, &v400);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v400, v334, v336, &v385);
        }

        else
        {
          if (v23 != 9)
          {
            if (v23 == 13)
            {
              v105 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
              v107 = v106;
              v108 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v13);
              v110 = v109;
              v111 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>(v108, v110, v105, v107, &v401);
              MIL::PackSubByteVec(&v401, &v400);
              if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
              {
                v112 = 0;
              }

              else
              {
                v112 = v400.__r_.__value_.__r.__words[0];
              }

              MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char,true>(v112, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>(v113, v114, v111, &v388, &v399);
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v399, v105, v107, &v385);
              goto LABEL_205;
            }

            goto LABEL_437;
          }

          v328 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v10);
          v330 = v329;
          v331 = MIL::IRTensorValue::GetDataView<signed char>(v13);
          v332 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v15);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>(v331, v328, v330, &v401);
          if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
          {
            v333 = 0;
          }

          else
          {
            v333 = v401.__r_.__value_.__r.__words[0];
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>(v333, v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0], v332, &v388, &v400);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v400, v328, v330, &v385);
        }

LABEL_399:
        if (v400.__r_.__value_.__r.__words[0])
        {
          v400.__r_.__value_.__l.__size_ = v400.__r_.__value_.__r.__words[0];
          operator delete(v400.__r_.__value_.__l.__data_);
        }

        if (v401.__r_.__value_.__r.__words[0])
        {
          v401.__r_.__value_.__l.__size_ = v401.__r_.__value_.__r.__words[0];
          operator delete(v401.__r_.__value_.__l.__data_);
        }

LABEL_403:
        if (__p)
        {
          v392 = __p;
          operator delete(__p);
        }

        if (v389)
        {
          v390 = v389;
          operator delete(v389);
        }

        if (v388.__r_.__value_.__r.__words[0])
        {
          v388.__r_.__value_.__l.__size_ = v388.__r_.__value_.__r.__words[0];
          operator delete(v388.__r_.__value_.__l.__data_);
        }

        if (v393)
        {
          v394 = v393;
          operator delete(v393);
        }

        if (v395)
        {
          v396 = v395;
          operator delete(v395);
        }

        MIL::IRTensorValueType::MakeBFloat16Value();
      }

      v35 = *(this + 2);
      v36 = *(this + 3);
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      v38 = *(this + 4);
      v37 = *(this + 5);
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      v40 = *(this + 6);
      v39 = *(this + 7);
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      v41 = *(this + 8);
      v42 = *(this + 9);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43 = (*(*v35 + 32))(v35);
      v44 = (*(*v43 + 96))(v43);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v44, &v395);
      v45 = (*(*v40 + 32))(v40);
      v46 = (*(*v45 + 96))(v45);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v46, &v393);
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v388, &v395, &v393);
      v47 = (*(*v38 + 32))(v38);
      v48 = (*(*v47 + 88))(v47);
      v49 = v48;
      if (v41)
      {
        if (v48 <= 8)
        {
          switch(v48)
          {
            case 4:
              v115 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
              v117 = v223;
              v224 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v38);
              v225 = MIL::IRTensorValue::GetDataView<float>(v40);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>(v224, v115, v117, &v401);
              v226 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1;
              if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
              {
                v227 = 0;
              }

              else
              {
                v227 = v401.__r_.__value_.__r.__words[0];
              }

              v399.__r_.__value_.__r.__words[0] = v41;
              v399.__r_.__value_.__l.__size_ = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>(v227, v226, v225, &v399, &v388, &v400);
              if (v399.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
              }

              break;
            case 5:
              v115 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
              v117 = v208;
              v209 = MIL::IRTensorValue::GetDataView<float>(v38);
              v210 = MIL::IRTensorValue::GetDataView<float>(v40);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>(v209, v115, v117, &v401);
              v211 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 2;
              if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
              {
                v212 = 0;
              }

              else
              {
                v212 = v401.__r_.__value_.__r.__words[0];
              }

              v399.__r_.__value_.__r.__words[0] = v41;
              v399.__r_.__value_.__l.__size_ = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>(v212, v211, v210, &v399, &v388, &v400);
              if (v399.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
              }

              break;
            case 7:
              v115 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
              v117 = v116;
              v118 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v38);
              v119 = MIL::IRTensorValue::GetDataView<float>(v40);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Bf16>(v118, v115, v117, &v401);
              v120 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1;
              if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
              {
                v121 = 0;
              }

              else
              {
                v121 = v401.__r_.__value_.__r.__words[0];
              }

              v399.__r_.__value_.__r.__words[0] = v41;
              v399.__r_.__value_.__l.__size_ = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>(v121, v120, v119, &v399, &v388, &v400);
              if (v399.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
              }

              break;
            default:
              goto LABEL_432;
          }
        }

        else if (v48 > 13)
        {
          if (v48 != 14)
          {
            if (v48 == 20)
            {
              v50 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
              v52 = v136;
              v137 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v38);
              v139 = v138;
              v140 = MIL::IRTensorValue::GetDataView<float>(v40);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v137, v139, v50, v52, &v401);
              MIL::PackSubByteVec(&v401, &v400);
              if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
              {
                v141 = 0;
              }

              else
              {
                v141 = v400.__r_.__value_.__r.__words[0];
              }

              MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v141, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
              v397 = v41;
              v398 = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>(v142, v143, v140, &v397, &v388, &v399);
              if (v398)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v398);
              }

              goto LABEL_138;
            }

LABEL_432:
            v355 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v49, &v399);
            v356 = std::string::insert(&v399, 0, "Constexpr-SparseBlockwiseShiftScale: Unsupported dType (");
            v357 = *&v356->__r_.__value_.__l.__data_;
            v400.__r_.__value_.__r.__words[2] = v356->__r_.__value_.__r.__words[2];
            *&v400.__r_.__value_.__l.__data_ = v357;
            v356->__r_.__value_.__l.__size_ = 0;
            v356->__r_.__value_.__r.__words[2] = 0;
            v356->__r_.__value_.__r.__words[0] = 0;
            v358 = std::string::append(&v400, ") for data.");
            v359 = *&v358->__r_.__value_.__l.__data_;
            v401.__r_.__value_.__r.__words[2] = v358->__r_.__value_.__r.__words[2];
            *&v401.__r_.__value_.__l.__data_ = v359;
            v358->__r_.__value_.__l.__size_ = 0;
            v358->__r_.__value_.__r.__words[2] = 0;
            v358->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v355, &v401);
            __cxa_throw(v355, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v115 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
          v117 = v243;
          v244 = MIL::IRTensorValue::GetDataView<unsigned char>(v38);
          v245 = MIL::IRTensorValue::GetDataView<float>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v244, v115, v117, &v401);
          v246 = v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0];
          if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
          {
            v247 = 0;
          }

          else
          {
            v247 = v401.__r_.__value_.__r.__words[0];
          }

          v399.__r_.__value_.__r.__words[0] = v41;
          v399.__r_.__value_.__l.__size_ = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>(v247, v246, v245, &v399, &v388, &v400);
          if (v399.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
          }
        }

        else
        {
          if (v48 != 9)
          {
            if (v48 == 13)
            {
              v50 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
              v52 = v51;
              v53 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v38);
              v55 = v54;
              v56 = MIL::IRTensorValue::GetDataView<float>(v40);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>(v53, v55, v50, v52, &v401);
              MIL::PackSubByteVec(&v401, &v400);
              if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
              {
                v57 = 0;
              }

              else
              {
                v57 = v400.__r_.__value_.__r.__words[0];
              }

              MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char,true>(v57, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
              v397 = v41;
              v398 = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>(v58, v59, v56, &v397, &v388, &v399);
              if (v398)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v398);
              }

LABEL_138:
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v399, v50, v52, &v385);
              if (v399.__r_.__value_.__r.__words[0])
              {
                v399.__r_.__value_.__l.__size_ = v399.__r_.__value_.__r.__words[0];
                operator delete(v399.__r_.__value_.__l.__data_);
              }

              goto LABEL_271;
            }

            goto LABEL_432;
          }

          v115 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
          v117 = v238;
          v239 = MIL::IRTensorValue::GetDataView<signed char>(v38);
          v240 = MIL::IRTensorValue::GetDataView<float>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>(v239, v115, v117, &v401);
          v241 = v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0];
          if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
          {
            v242 = 0;
          }

          else
          {
            v242 = v401.__r_.__value_.__r.__words[0];
          }

          v399.__r_.__value_.__r.__words[0] = v41;
          v399.__r_.__value_.__l.__size_ = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>(v242, v241, v240, &v399, &v388, &v400);
          if (v399.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
          }
        }

        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v400, v115, v117, &v385);
LABEL_271:
        if (v400.__r_.__value_.__r.__words[0])
        {
          v400.__r_.__value_.__l.__size_ = v400.__r_.__value_.__r.__words[0];
          operator delete(v400.__r_.__value_.__l.__data_);
        }

        if (v401.__r_.__value_.__r.__words[0])
        {
          v401.__r_.__value_.__l.__size_ = v401.__r_.__value_.__r.__words[0];
          operator delete(v401.__r_.__value_.__l.__data_);
        }

        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        goto LABEL_357;
      }

      if (v48 <= 8)
      {
        switch(v48)
        {
          case 4:
            v286 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
            v288 = v287;
            v289 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v38);
            v290 = MIL::IRTensorValue::GetDataView<float>(v40);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>(v289, v286, v288, &v401);
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v291 = 0;
            }

            else
            {
              v291 = v401.__r_.__value_.__r.__words[0];
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>(v291, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1, v290, &v388, &v400);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v400, v286, v288, &v385);
            break;
          case 5:
            v268 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
            v270 = v269;
            v271 = MIL::IRTensorValue::GetDataView<float>(v38);
            v272 = MIL::IRTensorValue::GetDataView<float>(v40);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>(v271, v268, v270, &v401);
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v273 = 0;
            }

            else
            {
              v273 = v401.__r_.__value_.__r.__words[0];
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>(v273, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 2, v272, &v388, &v400);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v400, v268, v270, &v385);
            break;
          case 7:
            v160 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
            v162 = v161;
            v163 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v38);
            v164 = MIL::IRTensorValue::GetDataView<float>(v40);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Bf16>(v163, v160, v162, &v401);
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v165 = 0;
            }

            else
            {
              v165 = v401.__r_.__value_.__r.__words[0];
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>(v165, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1, v164, &v388, &v400);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v400, v160, v162, &v385);
            break;
          default:
            goto LABEL_435;
        }
      }

      else if (v48 > 13)
      {
        if (v48 != 14)
        {
          if (v48 == 20)
          {
            v178 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
            v180 = v179;
            v181 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v38);
            v183 = v182;
            v184 = MIL::IRTensorValue::GetDataView<float>(v40);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v181, v183, v178, v180, &v401);
            MIL::PackSubByteVec(&v401, &v400);
            if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
            {
              v185 = 0;
            }

            else
            {
              v185 = v400.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v185, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>(v186, v187, v184, &v388, &v399);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v399, v178, v180, &v385);
LABEL_189:
            if (v399.__r_.__value_.__r.__words[0])
            {
              v399.__r_.__value_.__l.__size_ = v399.__r_.__value_.__r.__words[0];
              operator delete(v399.__r_.__value_.__l.__data_);
            }

            goto LABEL_353;
          }

LABEL_435:
          v370 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v49, &v399);
          v371 = std::string::insert(&v399, 0, "Constexpr-SparseBlockwiseShiftScale: Unsupported dType (");
          v372 = *&v371->__r_.__value_.__l.__data_;
          v400.__r_.__value_.__r.__words[2] = v371->__r_.__value_.__r.__words[2];
          *&v400.__r_.__value_.__l.__data_ = v372;
          v371->__r_.__value_.__l.__size_ = 0;
          v371->__r_.__value_.__r.__words[2] = 0;
          v371->__r_.__value_.__r.__words[0] = 0;
          v373 = std::string::append(&v400, ") for data.");
          v374 = *&v373->__r_.__value_.__l.__data_;
          v401.__r_.__value_.__r.__words[2] = v373->__r_.__value_.__r.__words[2];
          *&v401.__r_.__value_.__l.__data_ = v374;
          v373->__r_.__value_.__l.__size_ = 0;
          v373->__r_.__value_.__r.__words[2] = 0;
          v373->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v370, &v401);
          __cxa_throw(v370, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v310 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
        v312 = v311;
        v313 = MIL::IRTensorValue::GetDataView<unsigned char>(v38);
        v314 = MIL::IRTensorValue::GetDataView<float>(v40);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v313, v310, v312, &v401);
        if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
        {
          v315 = 0;
        }

        else
        {
          v315 = v401.__r_.__value_.__r.__words[0];
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>(v315, v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0], v314, &v388, &v400);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v400, v310, v312, &v385);
      }

      else
      {
        if (v48 != 9)
        {
          if (v48 == 13)
          {
            v85 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
            v87 = v86;
            v88 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v38);
            v90 = v89;
            v91 = MIL::IRTensorValue::GetDataView<float>(v40);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>(v88, v90, v85, v87, &v401);
            MIL::PackSubByteVec(&v401, &v400);
            if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
            {
              v92 = 0;
            }

            else
            {
              v92 = v400.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char,true>(v92, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>(v93, v94, v91, &v388, &v399);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v399, v85, v87, &v385);
            goto LABEL_189;
          }

          goto LABEL_435;
        }

        v304 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v35);
        v306 = v305;
        v307 = MIL::IRTensorValue::GetDataView<signed char>(v38);
        v308 = MIL::IRTensorValue::GetDataView<float>(v40);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>(v307, v304, v306, &v401);
        if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
        {
          v309 = 0;
        }

        else
        {
          v309 = v401.__r_.__value_.__r.__words[0];
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>(v309, v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0], v308, &v388, &v400);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v400, v304, v306, &v385);
      }

LABEL_353:
      if (v400.__r_.__value_.__r.__words[0])
      {
        v400.__r_.__value_.__l.__size_ = v400.__r_.__value_.__r.__words[0];
        operator delete(v400.__r_.__value_.__l.__data_);
      }

      if (v401.__r_.__value_.__r.__words[0])
      {
        v401.__r_.__value_.__l.__size_ = v401.__r_.__value_.__r.__words[0];
        operator delete(v401.__r_.__value_.__l.__data_);
      }

LABEL_357:
      if (__p)
      {
        v392 = __p;
        operator delete(__p);
      }

      if (v389)
      {
        v390 = v389;
        operator delete(v389);
      }

      if (v388.__r_.__value_.__r.__words[0])
      {
        v388.__r_.__value_.__l.__size_ = v388.__r_.__value_.__r.__words[0];
        operator delete(v388.__r_.__value_.__l.__data_);
      }

      if (v393)
      {
        v394 = v393;
        operator delete(v393);
      }

      if (v395)
      {
        v396 = v395;
        operator delete(v395);
      }

      MIL::IRTensorValueType::MakeFloat32Value();
    }

    v60 = *(this + 2);
    v61 = *(this + 3);
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v63 = *(this + 4);
    v62 = *(this + 5);
    if (v62)
    {
      atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
    }

    v65 = *(this + 6);
    v64 = *(this + 7);
    if (v64)
    {
      atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
    }

    v66 = *(this + 8);
    v67 = *(this + 9);
    if (v67)
    {
      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v68 = (*(*v60 + 32))(v60);
    v69 = (*(*v68 + 96))(v68);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v69, &v395);
    v70 = (*(*v65 + 32))(v65);
    v71 = (*(*v70 + 96))(v70);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v71, &v393);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v388, &v395, &v393);
    v72 = (*(*v63 + 32))(v63);
    v73 = (*(*v72 + 88))(v72);
    v74 = v73;
    if (v66)
    {
      if (v73 <= 8)
      {
        switch(v73)
        {
          case 4:
            v122 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
            v124 = v228;
            v229 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v63);
            v230 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>(v229, v122, v124, &v401);
            v231 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1;
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v232 = 0;
            }

            else
            {
              v232 = v401.__r_.__value_.__r.__words[0];
            }

            v399.__r_.__value_.__r.__words[0] = v66;
            v399.__r_.__value_.__l.__size_ = v67;
            if (v67)
            {
              atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>(v232, v231, v230, &v399, &v388, &v400);
            if (v399.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
            }

            break;
          case 5:
            v122 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
            v124 = v213;
            v214 = MIL::IRTensorValue::GetDataView<float>(v63);
            v215 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>(v214, v122, v124, &v401);
            v216 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 2;
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v217 = 0;
            }

            else
            {
              v217 = v401.__r_.__value_.__r.__words[0];
            }

            v399.__r_.__value_.__r.__words[0] = v66;
            v399.__r_.__value_.__l.__size_ = v67;
            if (v67)
            {
              atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>(v217, v216, v215, &v399, &v388, &v400);
            if (v399.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
            }

            break;
          case 7:
            v122 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
            v124 = v123;
            v125 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v63);
            v126 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Bf16>(v125, v122, v124, &v401);
            v127 = (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1;
            if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
            {
              v128 = 0;
            }

            else
            {
              v128 = v401.__r_.__value_.__r.__words[0];
            }

            v399.__r_.__value_.__r.__words[0] = v66;
            v399.__r_.__value_.__l.__size_ = v67;
            if (v67)
            {
              atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>(v128, v127, v126, &v399, &v388, &v400);
            if (v399.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
            }

            break;
          default:
            goto LABEL_433;
        }
      }

      else if (v73 > 13)
      {
        if (v73 != 14)
        {
          if (v73 == 20)
          {
            v75 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
            v77 = v144;
            v145 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v63);
            v147 = v146;
            v148 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v145, v147, v75, v77, &v401);
            MIL::PackSubByteVec(&v401, &v400);
            if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
            {
              v149 = 0;
            }

            else
            {
              v149 = v400.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v149, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
            v397 = v66;
            v398 = v67;
            if (v67)
            {
              atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>(v150, v151, v148, &v397, &v388, &v399);
            if (v398)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v398);
            }

            goto LABEL_149;
          }

LABEL_433:
          v360 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v74, &v399);
          v361 = std::string::insert(&v399, 0, "Constexpr-SparseBlockwiseShiftScale: Unsupported dType (");
          v362 = *&v361->__r_.__value_.__l.__data_;
          v400.__r_.__value_.__r.__words[2] = v361->__r_.__value_.__r.__words[2];
          *&v400.__r_.__value_.__l.__data_ = v362;
          v361->__r_.__value_.__l.__size_ = 0;
          v361->__r_.__value_.__r.__words[2] = 0;
          v361->__r_.__value_.__r.__words[0] = 0;
          v363 = std::string::append(&v400, ") for data.");
          v364 = *&v363->__r_.__value_.__l.__data_;
          v401.__r_.__value_.__r.__words[2] = v363->__r_.__value_.__r.__words[2];
          *&v401.__r_.__value_.__l.__data_ = v364;
          v363->__r_.__value_.__l.__size_ = 0;
          v363->__r_.__value_.__r.__words[2] = 0;
          v363->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v360, &v401);
          __cxa_throw(v360, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v122 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
        v124 = v253;
        v254 = MIL::IRTensorValue::GetDataView<unsigned char>(v63);
        v255 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v254, v122, v124, &v401);
        v256 = v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0];
        if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
        {
          v257 = 0;
        }

        else
        {
          v257 = v401.__r_.__value_.__r.__words[0];
        }

        v399.__r_.__value_.__r.__words[0] = v66;
        v399.__r_.__value_.__l.__size_ = v67;
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>(v257, v256, v255, &v399, &v388, &v400);
        if (v399.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        if (v73 != 9)
        {
          if (v73 == 13)
          {
            v75 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
            v77 = v76;
            v78 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v63);
            v80 = v79;
            v81 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>(v78, v80, v75, v77, &v401);
            MIL::PackSubByteVec(&v401, &v400);
            if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
            {
              v82 = 0;
            }

            else
            {
              v82 = v400.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char,true>(v82, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
            v397 = v66;
            v398 = v67;
            if (v67)
            {
              atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>(v83, v84, v81, &v397, &v388, &v399);
            if (v398)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v398);
            }

LABEL_149:
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v399, v75, v77, &v385);
            if (v399.__r_.__value_.__r.__words[0])
            {
              v399.__r_.__value_.__l.__size_ = v399.__r_.__value_.__r.__words[0];
              operator delete(v399.__r_.__value_.__l.__data_);
            }

            goto LABEL_293;
          }

          goto LABEL_433;
        }

        v122 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
        v124 = v248;
        v249 = MIL::IRTensorValue::GetDataView<signed char>(v63);
        v250 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>(v249, v122, v124, &v401);
        v251 = v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0];
        if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
        {
          v252 = 0;
        }

        else
        {
          v252 = v401.__r_.__value_.__r.__words[0];
        }

        v399.__r_.__value_.__r.__words[0] = v66;
        v399.__r_.__value_.__l.__size_ = v67;
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>(v252, v251, v250, &v399, &v388, &v400);
        if (v399.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v399.__r_.__value_.__l.__size_);
        }
      }

      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v400, v122, v124, &v385);
LABEL_293:
      if (v400.__r_.__value_.__r.__words[0])
      {
        v400.__r_.__value_.__l.__size_ = v400.__r_.__value_.__r.__words[0];
        operator delete(v400.__r_.__value_.__l.__data_);
      }

      if (v401.__r_.__value_.__r.__words[0])
      {
        v401.__r_.__value_.__l.__size_ = v401.__r_.__value_.__r.__words[0];
        operator delete(v401.__r_.__value_.__l.__data_);
      }

      if (v67)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      goto LABEL_380;
    }

    if (v73 <= 8)
    {
      switch(v73)
      {
        case 4:
          v292 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
          v294 = v293;
          v295 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v63);
          v296 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>(v295, v292, v294, &v401);
          if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
          {
            v297 = 0;
          }

          else
          {
            v297 = v401.__r_.__value_.__r.__words[0];
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>(v297, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1, v296, &v388, &v400);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v400, v292, v294, &v385);
          break;
        case 5:
          v274 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
          v276 = v275;
          v277 = MIL::IRTensorValue::GetDataView<float>(v63);
          v278 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>(v277, v274, v276, &v401);
          if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
          {
            v279 = 0;
          }

          else
          {
            v279 = v401.__r_.__value_.__r.__words[0];
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>(v279, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 2, v278, &v388, &v400);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v400, v274, v276, &v385);
          break;
        case 7:
          v166 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
          v168 = v167;
          v169 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v63);
          v170 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Bf16>(v169, v166, v168, &v401);
          if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
          {
            v171 = 0;
          }

          else
          {
            v171 = v401.__r_.__value_.__r.__words[0];
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>(v171, (v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]) >> 1, v170, &v388, &v400);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v400, v166, v168, &v385);
          break;
        default:
          goto LABEL_436;
      }
    }

    else if (v73 > 13)
    {
      if (v73 != 14)
      {
        if (v73 == 20)
        {
          v188 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
          v190 = v189;
          v191 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v63);
          v193 = v192;
          v194 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v191, v193, v188, v190, &v401);
          MIL::PackSubByteVec(&v401, &v400);
          if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
          {
            v195 = 0;
          }

          else
          {
            v195 = v400.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v195, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>(v196, v197, v194, &v388, &v399);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v399, v188, v190, &v385);
LABEL_197:
          if (v399.__r_.__value_.__r.__words[0])
          {
            v399.__r_.__value_.__l.__size_ = v399.__r_.__value_.__r.__words[0];
            operator delete(v399.__r_.__value_.__l.__data_);
          }

          goto LABEL_376;
        }

LABEL_436:
        v375 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v74, &v399);
        v376 = std::string::insert(&v399, 0, "Constexpr-SparseBlockwiseShiftScale: Unsupported dType (");
        v377 = *&v376->__r_.__value_.__l.__data_;
        v400.__r_.__value_.__r.__words[2] = v376->__r_.__value_.__r.__words[2];
        *&v400.__r_.__value_.__l.__data_ = v377;
        v376->__r_.__value_.__l.__size_ = 0;
        v376->__r_.__value_.__r.__words[2] = 0;
        v376->__r_.__value_.__r.__words[0] = 0;
        v378 = std::string::append(&v400, ") for data.");
        v379 = *&v378->__r_.__value_.__l.__data_;
        v401.__r_.__value_.__r.__words[2] = v378->__r_.__value_.__r.__words[2];
        *&v401.__r_.__value_.__l.__data_ = v379;
        v378->__r_.__value_.__l.__size_ = 0;
        v378->__r_.__value_.__r.__words[2] = 0;
        v378->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v375, &v401);
        __cxa_throw(v375, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v322 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
      v324 = v323;
      v325 = MIL::IRTensorValue::GetDataView<unsigned char>(v63);
      v326 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v325, v322, v324, &v401);
      if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
      {
        v327 = 0;
      }

      else
      {
        v327 = v401.__r_.__value_.__r.__words[0];
      }

      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>(v327, v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0], v326, &v388, &v400);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v400, v322, v324, &v385);
    }

    else
    {
      if (v73 != 9)
      {
        if (v73 == 13)
        {
          v95 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
          v97 = v96;
          v98 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v63);
          v100 = v99;
          v101 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>(v98, v100, v95, v97, &v401);
          MIL::PackSubByteVec(&v401, &v400);
          if (v400.__r_.__value_.__l.__size_ == v400.__r_.__value_.__r.__words[0])
          {
            v102 = 0;
          }

          else
          {
            v102 = v400.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char,true>(v102, v400.__r_.__value_.__l.__size_ - v400.__r_.__value_.__r.__words[0], v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>(v103, v104, v101, &v388, &v399);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v399, v95, v97, &v385);
          goto LABEL_197;
        }

        goto LABEL_436;
      }

      v316 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v60);
      v318 = v317;
      v319 = MIL::IRTensorValue::GetDataView<signed char>(v63);
      v320 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v65);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>(v319, v316, v318, &v401);
      if (v401.__r_.__value_.__l.__size_ == v401.__r_.__value_.__r.__words[0])
      {
        v321 = 0;
      }

      else
      {
        v321 = v401.__r_.__value_.__r.__words[0];
      }

      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>(v321, v401.__r_.__value_.__l.__size_ - v401.__r_.__value_.__r.__words[0], v320, &v388, &v400);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v400, v316, v318, &v385);
    }

LABEL_376:
    if (v400.__r_.__value_.__r.__words[0])
    {
      v400.__r_.__value_.__l.__size_ = v400.__r_.__value_.__r.__words[0];
      operator delete(v400.__r_.__value_.__l.__data_);
    }

    if (v401.__r_.__value_.__r.__words[0])
    {
      v401.__r_.__value_.__l.__size_ = v401.__r_.__value_.__r.__words[0];
      operator delete(v401.__r_.__value_.__l.__data_);
    }

LABEL_380:
    if (__p)
    {
      v392 = __p;
      operator delete(__p);
    }

    if (v389)
    {
      v390 = v389;
      operator delete(v389);
    }

    if (v388.__r_.__value_.__r.__words[0])
    {
      v388.__r_.__value_.__l.__size_ = v388.__r_.__value_.__r.__words[0];
      operator delete(v388.__r_.__value_.__l.__data_);
    }

    if (v393)
    {
      v394 = v393;
      operator delete(v393);
    }

    if (v395)
    {
      v396 = v395;
      operator delete(v395);
    }

    MIL::IRTensorValueType::MakeFloat16Value();
  }

  if (a2)
  {
    v340 = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" has two outputs, index i cannot be larger than 1.", v386, &v388.__r_.__value_.__l.__data_);
    std::runtime_error::runtime_error(v340, &v388);
    __cxa_throw(v340, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = (*(**this + 88))();
  if (v6 != 21)
  {
    v341 = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": Unsupported dtype ", v386, &v400.__r_.__value_.__l.__data_);
    MIL::IRDataTypeToString(v6, &v399);
    if ((v399.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v342 = &v399;
    }

    else
    {
      v342 = v399.__r_.__value_.__r.__words[0];
    }

    if ((v399.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v343 = HIBYTE(v399.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v343 = v399.__r_.__value_.__l.__size_;
    }

    v344 = std::string::append(&v400, v342, v343);
    v345 = *&v344->__r_.__value_.__l.__data_;
    v401.__r_.__value_.__r.__words[2] = v344->__r_.__value_.__r.__words[2];
    *&v401.__r_.__value_.__l.__data_ = v345;
    v344->__r_.__value_.__l.__size_ = 0;
    v344->__r_.__value_.__r.__words[2] = 0;
    v344->__r_.__value_.__r.__words[0] = 0;
    v346 = std::string::append(&v401, " for mask output");
    v347 = *&v346->__r_.__value_.__l.__data_;
    v388.__r_.__value_.__r.__words[2] = v346->__r_.__value_.__r.__words[2];
    *&v388.__r_.__value_.__l.__data_ = v347;
    v346->__r_.__value_.__l.__size_ = 0;
    v346->__r_.__value_.__r.__words[2] = 0;
    v346->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v341, &v388);
    __cxa_throw(v341, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = *(this + 3);
  *a3 = *(this + 2);
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (v387 < 0)
  {
    operator delete(v386[0]);
  }
}

void sub_218393CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  if (*(v45 - 137) < 0)
  {
    operator delete(*(v45 - 160));
  }

  if (*(v45 - 161) < 0)
  {
    operator delete(*(v45 - 184));
    if ((v42 & 1) == 0)
    {
LABEL_10:
      if (__p)
      {
        a35 = __p;
        operator delete(__p);
      }

      if (a37)
      {
        a38 = a37;
        operator delete(a37);
      }

      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (a10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a10);
      }

      if (a11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a11);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v41);
  goto LABEL_10;
}

void MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::~SparseBlockwiseShiftScale(MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::~SparseBlockwiseShiftScale(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_218394488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::Impl((v12 | 8), (v13 | 8), (v14 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot compute to get a single output since SparseBlockwiseShiftScale has two outputs.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v26[0] = a2;
  v26[1] = a3;
  v6 = *a1;
  v5 = a1[1];
  if (a3 != (v5 - *a1) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v5 != v6)
  {
    v8 = 0;
    do
    {
      v25 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v26, v8);
      Int = MIL::UInt1::GetInt(&v25);
      v10 = *a1;
      if (Int)
      {
        v12 = a4[1];
        v11 = a4[2];
        if (v12 >= v11)
        {
          v14 = *a4;
          v15 = v12 - *a4;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a4, v19);
          }

          v20 = (2 * v16);
          v21 = *(v10 + 2 * v8);
          v22 = &v20[-(v15 >> 1)];
          *v20 = v21;
          v13 = v20 + 1;
          memcpy(v22, v14, v15);
          v23 = *a4;
          *a4 = v22;
          a4[1] = v13;
          a4[2] = 0;
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

        a4[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 1);
  }
}

void MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Bf16>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a4, a3);
  if (a4[1] != *a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v11 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v12, v8);
      result = MIL::UInt1::GetInt(&v11);
      if (result)
      {
        v9 = *(a1 + 2 * v7++);
        v10 = *a4;
        *(*a4 + 2 * v8) = v9;
      }

      else
      {
        v10 = *a4;
        *(*a4 + 2 * v8) = 0;
      }

      ++v8;
    }

    while (v8 < (a4[1] - v10) >> 1);
  }

  return result;
}

void sub_21839481C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v26[0] = a2;
  v26[1] = a3;
  v6 = *a1;
  v5 = a1[1];
  if (a3 != (v5 - *a1) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v5 != v6)
  {
    v8 = 0;
    do
    {
      v25 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v26, v8);
      Int = MIL::UInt1::GetInt(&v25);
      v10 = *a1;
      if (Int)
      {
        v12 = a4[1];
        v11 = a4[2];
        if (v12 >= v11)
        {
          v14 = *a4;
          v15 = v12 - *a4;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a4, v19);
          }

          v20 = (2 * v16);
          v21 = *(v10 + 2 * v8);
          v22 = &v20[-(v15 >> 1)];
          *v20 = v21;
          v13 = v20 + 1;
          memcpy(v22, v14, v15);
          v23 = *a4;
          *a4 = v22;
          a4[1] = v13;
          a4[2] = 0;
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

        a4[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 1);
  }
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v23[0] = a2;
  v23[1] = a3;
  v6 = *a1;
  v5 = a1[1];
  if (a3 != (v5 - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v5 != v6)
  {
    v8 = 0;
    do
    {
      v22 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v23, v8);
      Int = MIL::UInt1::GetInt(&v22);
      v10 = *a1;
      if (Int)
      {
        v12 = a4[1];
        v11 = a4[2];
        if (v12 >= v11)
        {
          v14 = *a4;
          v15 = v12 - *a4;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a4, v18);
          }

          v19 = (4 * (v15 >> 2));
          *v19 = *(v10 + 4 * v8);
          v13 = v19 + 1;
          memcpy(0, v14, v15);
          v20 = *a4;
          *a4 = 0;
          a4[1] = v13;
          a4[2] = 0;
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

        a4[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 2);
  }
}

void MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::~Impl(MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void MIL::Operators::Common::ios18::Conv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218397190(_Unwind_Exception *a1)
{
  v4 = STACK[0x5B8];
  STACK[0x5B8] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x5E0], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4C0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConvTranspose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21839A4A0(_Unwind_Exception *a1)
{
  v4 = STACK[0x5C8];
  STACK[0x5C8] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x5F0], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4D0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(a1, v4, a3);
}

void sub_21839B19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::ElementwiseBinary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21839C22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Add::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21839D924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ElementwiseBinaryBoolOutput::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21839ED50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 128);
  *(v59 - 128) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ElementwiseBinaryLogical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21839FE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = *(v53 - 96);
  *(v53 - 96) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 88), 0);
  v56 = *v52;
  *v52 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LogicalAnd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A0F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = *(v53 - 80);
  *(v53 - 80) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 72), 0);
  v56 = *v52;
  *v52 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LogicalOr::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A2088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = *(v53 - 80);
  *(v53 - 80) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 72), 0);
  v56 = *v52;
  *v52 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LogicalXor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A31AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = *(v53 - 80);
  *(v53 - 80) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 72), 0);
  v56 = *v52;
  *v52 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Equal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A44C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Greater::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A5850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::GreaterEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A6BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Less::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A7F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LessEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183A92E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::NotEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183AA670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::FloorDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183ABC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Maximum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183AD35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Minimum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183AEA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Mod::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B016C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Mul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B1874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Pow::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B2F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::RealDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Sub::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B5D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v71 = a63;
  a63 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Cast::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B7788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a72)
  {
    (*(*a72 + 8))(a72);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  v75 = *v72;
  *v72 = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v73 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ElementwiseUnary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B8B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Acos::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183B9CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Acosh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183BAECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Asin::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183BC0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Asinh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183BD28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Atan::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183BE46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Atanh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183BF64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Ceil::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Clip::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C1D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    (*(*a67 + 8))(a67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  v73 = *v70;
  *v70 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Cos::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C30AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Cosh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ElementwiseUnaryWithEpsilon::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C55C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a57)
  {
    (*(*a57 + 8))(a57);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v68 = *v65;
  *v65 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Inverse::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::ElementwiseUnaryWithEpsilon::Make();
}

void sub_2183C5BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Log::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::ElementwiseUnaryWithEpsilon::Make();
}

void sub_2183C5C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Rsqrt::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::ElementwiseUnaryWithEpsilon::Make();
}

void sub_2183C5D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ElementwiseUnaryWithInt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C6A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  v61 = *v58;
  *v58 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Abs::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C7D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  v61 = *v58;
  *v58 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Exp2::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183C8FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  v61 = *v58;
  *v58 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Sign::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183CA2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  v61 = *v58;
  *v58 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Square::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183CB574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  v61 = *v58;
  *v58 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Threshold::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183CC9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a60)
  {
    (*(*a60 + 8))(a60);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a63, 0);
  v71 = *v68;
  *v68 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Exp::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183CDCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Floor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183CEE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Round::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D007C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Sin::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D125C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Sinh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Sqrt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D361C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Tan::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D47FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Tanh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D59DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LogicalNot::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D675C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  v47 = *(v45 - 80);
  *(v45 - 80) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v45 - 72), 0);
  v48 = *v44;
  *v44 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v45 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a38, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseGather::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D7D08(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x200], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseGatherWithAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183D9638(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Gather::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183DB0F4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::GatherAlongAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183DCB1C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::GatherNd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183DE540(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Affine::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183E0F88(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3E0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x478], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CropResize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183E463C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 192);
  *(v2 - 192) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x478], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x550], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Resample::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183E841C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 104), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x7A8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x688], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Resize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183EAC5C(_Unwind_Exception *a1)
{
  v4 = STACK[0x268];
  STACK[0x268] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x280], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2A8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateMatMul(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  MIL::Operators::Common::ios17::CustomValidators::ValidateMatMul(this, v50);
  if (!MIL::ValidationResult::IsGood(v50))
  {
    *(a2 + 8) = v51;
    v51 = 0uLL;
    *(a2 + 24) = v52;
    *(a2 + 40) = v53;
    v52 = 0uLL;
    v53 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v54;
    goto LABEL_20;
  }

  std::string::basic_string[abi:ne200100]<0>(v56, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v56, "y");
  v7 = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  if (!(*(*v6 + 104))(v6) || ((*(*v8 + 104))(v8) & 1) == 0)
  {
    MIL::ValidationResult::ValidationResult(a2);
    goto LABEL_20;
  }

  v9 = (*(*v6 + 96))(v6);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v47, *v9, v9[1], (v9[1] - *v9) >> 3);
  v10 = (*(*v8 + 96))(v8);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v44, *v10, v10[1], (v10[1] - *v10) >> 3);
  std::string::basic_string[abi:ne200100]<0>(v56, "transpose_x");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v12 = MIL::IRValue::GetScalar<BOOL>(ParameterValue);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v56, "transpose_y");
  v13 = MIL::IROperation::GetParameterValue(this);
  v14 = MIL::IRValue::GetScalar<BOOL>(v13);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  v15 = v47;
  if (v48 - v47 != 8)
  {
    v15 = (v48 - 16);
    if (!v12)
    {
      v15 = (v48 - 8);
    }
  }

  v16 = *v15;
  v17 = v44;
  if (v45 - v44 != 8)
  {
    if (v14)
    {
      v17 = (v45 - 8);
    }

    else
    {
      v17 = (v45 - 16);
    }
  }

  v18 = *v17;
  if ((*(*v16 + 16))(v16))
  {
    if ((*(*v18 + 16))(v18))
    {
      v19 = (*(*v16 + 16))(v16);
      v20 = (*(*v19 + 48))(v19);
      v21 = (*(*v18 + 16))(v18);
      if (v20 != (*(*v21 + 48))(v21))
      {
        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v26 = LocationPtr[1];
        v42 = *LocationPtr;
        v43 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v40, "x shape and y shape are not compatible.");
        MIL::ValidationResult::ValidationResult(a2, &v42, 315, v40);
        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        goto LABEL_37;
      }
    }
  }

  if ((v48 - v47) >= 9 && (v45 - v44) >= 9)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(&v37, v47, (v48 - 16), (v48 - 16 - v47) >> 3);
    v35 = 0;
    v36 = 0;
    __p = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(&__p, v44, (v45 - 16), (v45 - 16 - v44) >> 3);
    v56[0] = 0;
    v56[1] = 0;
    v57 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v56, v37, v38, (v38 - v37) >> 3);
    v58 = 0;
    v59[0] = 0;
    v59[1] = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v58, __p, v35, (v35 - __p) >> 3);
    memset(v33, 0, sizeof(v33));
    std::vector<std::vector<MIL::IRDimension const*>>::__init_with_size[abi:ne200100]<std::vector<MIL::IRDimension const*> const*,std::vector<MIL::IRDimension const*> const*>(v33, v56, &v60, 2uLL);
    CanBroadcastShapes = MIL::Validation::CanBroadcastShapes(v33);
    v55 = v33;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v55);
    for (i = 0; i != -6; i -= 3)
    {
      v24 = v59[i - 1];
      if (v24)
      {
        v59[i] = v24;
        operator delete(v24);
      }
    }

    if (!CanBroadcastShapes)
    {
      v27 = MIL::IRObject::GetLocationPtr(this);
      v28 = v27[1];
      v31 = *v27;
      v32 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "x shape and y shape are not broadcastable.");
      MIL::ValidationResult::ValidationResult(a2, &v31, 315, v29);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      goto LABEL_37;
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }

  MIL::ValidationResult::ValidationResult(a2);
LABEL_37:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

LABEL_20:
  MIL::ValidationResult::~ValidationResult(v50);
}

void sub_2183EBABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  MIL::ValidationResult::~ValidationResult((v38 - 168));
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Linear::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183ED5A4(_Unwind_Exception *a1)
{
  v4 = STACK[0x2E0];
  STACK[0x2E0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F8], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x320], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::MatMul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183EF344(_Unwind_Exception *a1)
{
  v4 = STACK[0x230];
  STACK[0x230] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x270], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceTensorToTensorBuffer(MIL::IRUnknownProperty **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorToTensorBuffer(a1, v4, a3);
}

void sub_2183EFA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceTensorBufferToTensor(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorBufferToTensor(a1, v4, a3);
}

void sub_2183EFB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::PixelBufferToTensor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183F0BE0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 176);
  *(v2 - 176) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x240], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::TensorBufferToTensor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183F23C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55)
{
  v58 = *(v56 - 200);
  *(v56 - 200) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *v55;
  *v55 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x290], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::TensorToPixelBuffer::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183F3D1C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x280], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::TensorToTensorBuffer::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183F5B18(_Unwind_Exception *a1)
{
  v3 = STACK[0x510];
  STACK[0x510] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BatchNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183F8560(_Unwind_Exception *a1)
{
  v4 = STACK[0x438];
  STACK[0x438] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x460], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::InstanceNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183FAB90(_Unwind_Exception *a1)
{
  v4 = STACK[0x318];
  STACK[0x318] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x340], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::L2Norm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183FC728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = STACK[0x210];
  STACK[0x210] = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v73 - 88), 0);
  v76 = *v72;
  *v72 = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a72, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LayerNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2183FE500(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x280], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LocalResponseNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184003BC(_Unwind_Exception *a1)
{
  v4 = STACK[0x2C0];
  STACK[0x2C0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2A8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceBasePool(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceBasePool(a1, &v3, a3);
}

void sub_218400BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::BasePool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218402774(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 104), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x318], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x340], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseAvgPool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218404CF4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 104), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x328], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x350], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::AvgPool::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseAvgPool::Make();
}

void sub_218405724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::L2Pool::Make(uint64_t a1, void *a2)
{
  v2[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = &unk_2829EA4C8;
  v2[1] = MIL::Operators::Common::ios18::CustomValidators::ValidateL2Pool;
  v2[3] = v2;
  MIL::Operators::Common::ios18::BasePool::Make();
}

void sub_218405804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::MaxPool::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BasePool::Make();
}

void sub_2184058B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Dequantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218406D00(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x258], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::DynamicDequantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218408654(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x230], 0);
  _Unwind_Resume(a1);
}

void sub_218408C9C()
{
  v1 = *(v0 - 80);
  if (v1)
  {
    *(v0 - 72) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x218408C14);
}

void MIL::Operators::Common::ios18::DynamicQuantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218409900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a48)
  {
    (*(*a48 + 8))(a48);
  }

  v59 = *v57;
  *v57 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Quantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21840B36C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x268], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::RandomBernoulli::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21840CA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 120);
  *(v66 - 120) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 88), 0);
  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::RandomCategorical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21840DE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a53)
  {
    (*(*a53 + 8))(a53);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v64 = *v61;
  *v61 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v62 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a61, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::RandomNormal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21840F458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 120);
  *(v67 - 120) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 88), 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::RandomUniform::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218410B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 120);
  *(v67 - 120) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 88), 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::GRU::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184149D8(_Unwind_Exception *a1)
{
  v4 = STACK[0x730];
  STACK[0x730] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x688], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x758], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LSTM::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21841B534(_Unwind_Exception *a1)
{
  v4 = STACK[0xBC0];
  STACK[0xBC0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0xAB8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0xBE8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::RNN::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218420228(_Unwind_Exception *a1)
{
  v4 = STACK[0x620];
  STACK[0x620] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x5A8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x648], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceBaseArgReduction(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceBaseArgReduction(a1, v4, a3);
}

void sub_218421254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::BaseArgReduction::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218422630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(v71 - 144);
  *(v71 - 144) = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a67, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ReduceArgmax::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseArgReduction::Make();
}

void sub_218422D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ReduceArgmin::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseArgReduction::Make();
}

void sub_218422DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseScatter::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218424E5C(_Unwind_Exception *a1)
{
  v4 = STACK[0x310];
  STACK[0x310] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x328], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x350], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseScatterWithAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184279C8(_Unwind_Exception *a1)
{
  v4 = STACK[0x320];
  STACK[0x320] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x360], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Scatter::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseScatterWithAxis::Make();
}

void sub_2184284BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ScatterAlongAxis::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseScatterWithAxis::Make();
}

void sub_218428570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ScatterNd::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseScatter::Make();
}

void sub_218428624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateReadState(MIL::Operators::Common::ios18::CustomValidators *this, const MIL::IROperation *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v27, "input");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v4 = MIL::IRValueType::AsStateType(ParameterType);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  MIL::IROperation::GetOutputType(this, 0);
  std::string::basic_string[abi:ne200100]<0>(&v27, "read_offset");
  v5 = MIL::IROperation::TryGetParameterType(this, &v27, 0);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  WrappedType = MIL::IRStateValueType::GetWrappedType(v4);
  v7 = MIL::IRValueType::TryCastAsMemoryLayoutType(WrappedType);
  if (v7)
  {
    v8 = MIL::IRStateValueType::GetWrappedType(v4);
    v9 = MIL::IRValueType::AsMemoryLayoutType(v8);
    v7 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v9);
    if (v7)
    {
      if (!v5)
      {
        exception = __cxa_allocate_exception(0x48uLL);
        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v17 = LocationPtr[1];
        *&v26 = *LocationPtr;
        *(&v26 + 1) = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v25, "State wraps a circular_buffer, but parameter 'read_offset' is missing.");
        MIL::ValidationError::ValidationError(exception, &v26, v25, 315);
      }
    }
  }

  if (v5 && !v7)
  {
    v12 = __cxa_allocate_exception(0x48uLL);
    v13 = MIL::IRObject::GetLocationPtr(this);
    v14 = v13[1];
    *&v24 = *v13;
    *(&v24 + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v23, "Parameter 'read_offset' is specified incorrectly since the state does not wrap a circular_buffer.");
    MIL::ValidationError::ValidationError(v12, &v24, v23, 315);
  }

  std::string::basic_string[abi:ne200100]<0>(&v27, "read_offset");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, &v27, 0);
  v11 = ParameterValue;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_15;
  }

  ParameterValue = MIL::IRValue::GetScalar<int>(v11);
  if ((ParameterValue & 0x80000000) != 0)
  {
    v18 = __cxa_allocate_exception(0x48uLL);
    v19 = MIL::IRObject::GetLocationPtr(this);
    v20 = v19[1];
    *&v22 = *v19;
    *(&v22 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, "Parameter 'read_offset' needs to be greater than or equal to zero.");
    MIL::ValidationError::ValidationError(v18, &v22, v21, 315);
  }

LABEL_15:
  MIL::MILContext::Make(ParameterValue);
}

void sub_218428CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  v66 = *(v64 - 232);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    if ((v63 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v62);
  goto LABEL_8;
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceReadState(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v9 = MIL::IRValueType::AsStateType(SingleValueType);
  WrappedType = MIL::IRStateValueType::GetWrappedType(v9);
  if ((v15[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  v11 = *a2;
  v12 = a2[1];
  v13[0] = v11;
  v13[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const* const*,MIL::IRValueType const* const*>(a4, &__p, v15, 1uLL);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

uint64_t MIL::Operators::Common::ios18::anonymous namespace::ExtractTensor(uint64_t a1, void *a2, MIL::IRValueType *a3)
{
  if (!(*(*a3 + 24))(a3))
  {
    if (MIL::IRValueType::TryCastAsMemoryLayoutType(a3))
    {
      v6 = MIL::IRValueType::AsMemoryLayoutType(a3);
      v7 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v6);
      v8 = MIL::IRValueType::AsMemoryLayoutType(a3);
      if (v7)
      {
        v9 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v8);
        Shape = MIL::IRTensorBufferValueType::GetShape(v9);
        v19 = 0;
        v20 = 0;
        __p = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *Shape, Shape[1], (Shape[1] - *Shape) >> 3);
        MIL::IRTensorBufferValueType::GetDataType(v9);
        MIL::IRTensorValueType::MakeWithShape();
      }

      if (MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v8))
      {
        v11 = MIL::IRValueType::AsMemoryLayoutType(a3);
        v12 = MIL::IRMemoryLayoutValueType::AsCircularBufferType(v11);
        v13 = MIL::IRCircularBufferValueType::GetShape(v12);
        v19 = 0;
        v20 = 0;
        __p = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v13, v13[1], (v13[1] - *v13) >> 3);
        MIL::IRCircularBufferValueType::GetDataType(v12);
        MIL::IRTensorValueType::MakeWithShape();
      }
    }

    exception = __cxa_allocate_exception(0x48uLL);
    v15 = a2[1];
    *&v17 = *a2;
    *(&v17 + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v16, "Parameter 'input' needs to be a state wrapping either a tensor, tensor_buffer, or circular_buffer.");
    MIL::ValidationError::ValidationError(exception, &v17, v16, 315);
  }

  return MIL::IRValueType::AsTensorType(a3);
}

void sub_21842924C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v19)
  {
    __cxa_free_exception(v18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateWriteState(MIL::Operators::Common::ios18::CustomValidators *this, const MIL::IROperation *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v26, "input");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v4 = MIL::IRValueType::AsStateType(ParameterType);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "data");
  MIL::IROperation::GetParameterType(this);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  WrappedType = MIL::IRStateValueType::GetWrappedType(v4);
  std::string::basic_string[abi:ne200100]<0>(&v26, "write_offset");
  v6 = MIL::IROperation::TryGetParameterType(this, &v26, 0);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  v7 = MIL::IRValueType::TryCastAsMemoryLayoutType(WrappedType);
  if (v7)
  {
    v8 = MIL::IRValueType::AsMemoryLayoutType(WrappedType);
    v7 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v8);
    if (v7)
    {
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x48uLL);
        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v16 = LocationPtr[1];
        *&v25 = *LocationPtr;
        *(&v25 + 1) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v24, "State wraps a circular_buffer, but parameter 'write_offset' is missing.");
        MIL::ValidationError::ValidationError(exception, &v25, v24, 315);
      }
    }
  }

  if (v6 && !v7)
  {
    v11 = __cxa_allocate_exception(0x48uLL);
    v12 = MIL::IRObject::GetLocationPtr(this);
    v13 = v12[1];
    *&v23 = *v12;
    *(&v23 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "Parameter 'write_offset' is specified incorrectly since the state does not wrap a circular_buffer.");
    MIL::ValidationError::ValidationError(v11, &v23, v22, 315);
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "write_offset");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, &v26, 0);
  v10 = ParameterValue;
  if (v27 < 0)
  {
    operator delete(v26);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_17;
  }

  ParameterValue = MIL::IRValue::GetScalar<int>(v10);
  if ((ParameterValue & 0x80000000) != 0)
  {
    v17 = __cxa_allocate_exception(0x48uLL);
    v18 = MIL::IRObject::GetLocationPtr(this);
    v19 = v18[1];
    *&v21 = *v18;
    *(&v21 + 1) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "Parameter 'write_offset' needs to be greater than or equal to zero.");
    MIL::ValidationError::ValidationError(v17, &v21, v20, 315);
  }

LABEL_17:
  MIL::MILContext::Make(ParameterValue);
}

void sub_2184296A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
    if ((v35 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v36);
  goto LABEL_8;
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceWriteState(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void MIL::Operators::Common::ios18::ReadState::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21842A068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a37, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a43, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::WriteState::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21842AA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, __int16 a52, char a53, char a54)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void MIL::Operators::Common::ios18::NonMaximumSuppression::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21842D388(_Unwind_Exception *a1)
{
  v5 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x498], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Topk::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21842EE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a69)
  {
    (*(*a69 + 8))(a69);
  }

  v74 = *v72;
  *v72 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a72, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x228], 0);
  _Unwind_Resume(a1);
}

uint64_t MIL::Operators::Common::ios18::CustomValidators::ValidateSliceUpdate@<X0>(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  MIL::Validation::OpToTypeInferenceParams(this, v11, v6);
  IsGood = MIL::ValidationResult::IsGood(v6);
  if (IsGood)
  {
    MIL::MILContext::Make(IsGood);
  }

  *(a2 + 8) = v7;
  v7 = 0uLL;
  *(a2 + 24) = v8;
  *(a2 + 40) = v9;
  v8 = 0uLL;
  v9 = 0;
  *a2 = &unk_2829E9B70;
  *(a2 + 48) = v10;
  MIL::ValidationResult::~ValidationResult(v6);
  return std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v11);
}

void sub_21842F914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a45)
  {
    operator delete(a45);
  }

  v48 = *(v46 - 176);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  MIL::ValidationResult::~ValidationResult((v46 - 168));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v46 - 112);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Concat::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218430604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v57 = *(v55 - 96);
  *(v55 - 96) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *v54;
  *v54 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 128), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ExpandDims::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218431980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  v74 = *(v72 - 128);
  *(v72 - 128) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *v71;
  *v71 = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v72 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a71, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Reshape::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218432FDC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ReshapeLike::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184349B4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 160), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x228], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Reverse::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184362A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58)
{
  v61 = *(v59 - 128);
  *(v59 - 128) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x258], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ReverseSequence::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218437EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 128);
  *(v67 - 128) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SliceByIndex::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21843A948(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x440], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SliceBySize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21843CD04(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 168), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SliceUpdate::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21843FD18(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SlidingWindows::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218441ACC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Squeeze::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184431C0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Transpose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184448B8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateScaledDotProductAttention(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "query");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "key");
  v7 = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v9 = MIL::IROperation::GetParameterType(this);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v12 = MIL::IRValueType::AsTensorType(OutputType);
  std::string::basic_string[abi:ne200100]<0>(__p, "attn_mask");
  if (MIL::IROperation::TryGetParameterType(this, __p, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "attn_mask");
    v13 = MIL::IROperation::TryGetParameterType(this, v18, 0);
    v14 = MIL::IRValueType::AsTensorType(v13);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v16 = LocationPtr[1];
  v17[0] = *LocationPtr;
  v17[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_218445058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateScaledDotProductAttentionInputs(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, MIL::ValidationResult *a7@<X8>)
{
  v91 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 104))(a1) || !(*(*a3 + 104))(a3) || !(*(*a2 + 104))(a2) || a4 && ((*(*a4 + 104))(a4) & 1) == 0)
  {
    v45 = a6[1];
    v85 = *a6;
    v86 = v45;
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v83, "Scaled Dot Product Attention currently doesn't support variadic shapes.");
    MIL::ValidationResult::ValidationResult(a7, &v85, 318, v83);
    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    v46 = v86;
    if (!v86)
    {
      return;
    }

LABEL_47:
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    return;
  }

  v14 = (*(*a1 + 96))(a1);
  v15 = (*(*a2 + 96))(a2);
  v16 = (*(*a3 + 96))(a3);
  v17 = v14[1] - *v14;
  if (v17 != v15[1] - *v15 || (v18 = v16, v16[1] - *v16 != v17))
  {
    v47 = a6[1];
    v81 = *a6;
    v82 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v79, "Query, key, and value should have the same rank.");
    MIL::ValidationResult::ValidationResult(a7, &v81, 304, v79);
    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    v46 = v82;
    if (!v82)
    {
      return;
    }

    goto LABEL_47;
  }

  if (a5)
  {
    v19 = (*(*a5 + 96))(a5);
    if (v19[1] - *v19 != v17)
    {
      v48 = a6[1];
      v77 = *a6;
      v78 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v75, "Output should have the same rank as query, key, and value.");
      MIL::ValidationResult::ValidationResult(a7, &v77, 304, v75);
      if (v76 < 0)
      {
        operator delete(v75[0]);
      }

      v46 = v78;
      if (!v78)
      {
        return;
      }

      goto LABEL_47;
    }
  }

  v54 = v17 >> 3;
  v53 = (v17 >> 3) - 2;
  if (v53 < 2)
  {
LABEL_30:
    if (a4)
    {
      __p = 0;
      v61 = 0;
      v62 = 0;
      std::vector<std::string const*>::reserve(&__p, v54);
      v39 = v54 - 1;
      if (v54 != 1)
      {
        v40 = 0;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v14 + v40));
          v40 += 8;
          --v39;
        }

        while (v39);
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v15 + 8 * v53));
      v41 = (*(*a4 + 96))(a4);
      memset(v88, 0, sizeof(v88));
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v88, *v41, v41[1], (v41[1] - *v41) >> 3);
      v89 = 0;
      v90[0] = 0;
      v90[1] = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v89, __p, v61, (v61 - __p) >> 3);
      memset(v59, 0, sizeof(v59));
      std::vector<std::vector<MIL::IRDimension const*>>::__init_with_size[abi:ne200100]<std::vector<MIL::IRDimension const*> const*,std::vector<MIL::IRDimension const*> const*>(v59, v88, &v91, 2uLL);
      CanBroadcastShapes = MIL::Validation::CanBroadcastShapes(v59);
      v87 = v59;
      std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v87);
      for (i = 0; i != -6; i -= 3)
      {
        v44 = v88[i + 3];
        if (v44)
        {
          v90[i] = v44;
          operator delete(v44);
        }
      }

      if (!CanBroadcastShapes)
      {
        v49 = a6[1];
        v57 = *a6;
        v58 = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v55, "Attention mask is not broadcastable with query/value/key.");
        MIL::ValidationResult::ValidationResult(a7, &v57, 304, v55);
        if (v56 < 0)
        {
          operator delete(v55[0]);
        }

        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        return;
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }
    }

    MIL::ValidationResult::ValidationResult(a7);
    return;
  }

  v20 = 0;
  while (1)
  {
    v21 = *(*v15 + 8 * v20 + 8);
    if ((*(*v21 + 16))(v21))
    {
      v22 = *(*v15 + 8 * v20 + 8);
      v23 = (*(*v22 + 16))(v22);
      v24 = (*(*v23 + 48))(v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = *(*v14 + 8 * v20 + 8);
    if ((*(*v25 + 16))(v25))
    {
      break;
    }

LABEL_19:
    v30 = *(*v18 + 8 * v20 + 8);
    if ((*(*v30 + 16))(v30))
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        v31 = *(*v18 + 8 * v20 + 8);
        v32 = (*(*v31 + 16))(v31);
        if ((*(*v32 + 48))(v32) != v24)
        {
          v51 = a6[1];
          v69 = *a6;
          v70 = v51;
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v67, "Inner dimensions of Query, Key, and Value must match.");
          MIL::ValidationResult::ValidationResult(a7, &v69, 304, v67);
          if (v68 < 0)
          {
            operator delete(v67[0]);
          }

          v46 = v70;
          if (v70)
          {
            goto LABEL_47;
          }

          return;
        }
      }

      v33 = *(*v18 + 8 * v20 + 8);
      v34 = (*(*v33 + 16))(v33);
      v24 = (*(*v34 + 48))(v34);
    }

    if (a5)
    {
      v35 = *(*(*(*a5 + 96))(a5) + 8 * v20 + 8);
      if ((*(*v35 + 16))(v35) && v24 >= 1)
      {
        v37 = *(*(*(*a5 + 96))(a5) + 8 * v20 + 8);
        v38 = (*(*v37 + 16))(v37);
        if ((*(*v38 + 48))(v38) != v24)
        {
          v52 = a6[1];
          v65 = *a6;
          v66 = v52;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v63, "Inner dimensions of Output must match Query, Key, and Value.");
          MIL::ValidationResult::ValidationResult(a7, &v65, 304, v63);
          if (v64 < 0)
          {
            operator delete(v63[0]);
          }

          v46 = v66;
          if (v66)
          {
            goto LABEL_47;
          }

          return;
        }
      }
    }

    if (v54 - 3 == ++v20)
    {
      goto LABEL_30;
    }
  }

  if (v24 < 0 || (v26 = *(*v14 + 8 * v20 + 8), v27 = (*(*v26 + 16))(v26), (*(*v27 + 48))(v27) == v24))
  {
    v28 = *(*v14 + 8 * v20 + 8);
    v29 = (*(*v28 + 16))(v28);
    v24 = (*(*v29 + 48))(v29);
    goto LABEL_19;
  }

  v50 = a6[1];
  v73 = *a6;
  v74 = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v71, "Inner dimensions of Query, Key, and Value must match.");
  MIL::ValidationResult::ValidationResult(a7, &v73, 304, v71);
  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  v46 = v74;
  if (v74)
  {
    goto LABEL_47;
  }
}