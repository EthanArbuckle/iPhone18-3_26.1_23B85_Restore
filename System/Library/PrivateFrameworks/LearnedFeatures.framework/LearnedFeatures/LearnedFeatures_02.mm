void sub_255A9F85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  sub_255A9FD18(&a35);
  _Unwind_Resume(a1);
}

__n128 sub_255A9F8F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3F50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255A9F92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_tensor_descEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_tensor_descEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_tensor_descEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_tensor_descEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_255A9F9A4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_255A9FD04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A96174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A9FD18(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867CE768[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

uint64_t sub_255A9FD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a1 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 61, "((std::is_same_v<UT, uint8_t> && data_type == BufferDataType::Uint8) || (std::is_same_v<UT, half> && data_type == BufferDataType::Float16) || (std::is_same_v<UT, float> && data_type == BufferDataType::Float32))", 0xD2uLL, "Buffer type mismatch", 0x14uLL, sub_255C101E0) || (v29 = 0, v4 = *(a1 + 16), e5rt_buffer_object_get_data_ptr()) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 64, "ret == E5RT_ERROR_CODE_OK", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0))
  {
    abort();
  }

  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  e5rt_tensor_desc_get_shape();
  v26 = 0;
  v7 = *v5;
  e5rt_tensor_desc_get_strides();
  v25 = 0;
  v8 = *v5;
  e5rt_tensor_desc_retain_dtype();
  v30[0] = &unk_2867C3D98;
  v30[1] = MEMORY[0x277D07970];
  v30[2] = &v25;
  v31 = v30;
  v24 = 0;
  e5rt_tensor_desc_dtype_get_num_components();
  v23 = 0;
  e5rt_tensor_desc_dtype_get_element_size();
  v22 = 0;
  e5rt_tensor_desc_dtype_get_component_size();
  sub_255A82DE4(v28, v27, v26, 0, 0, v19);
  v16 = v20;
  v17 = v21;
  v18 = 1;
  v12[0] = 0;
  v15 = 0;
  sub_255B9F478(a2, v29, v19, &v16, &unk_255C417F8, v12);
  if (v15 == 1)
  {
    nullsub_87(&v14);
    v9 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    nullsub_87(v12);
  }

  if (!v31)
  {
    sub_255A93CCC();
  }

  (*(*v31 + 48))(v31);
  result = v31;
  if (v31 == v30)
  {
    result = (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    result = (*(*v31 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AA0060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A9247C(&a9);
  sub_255A8508C(v9 - 72);
  _Unwind_Resume(a1);
}

void sub_255AA00CC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255AA00E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*a1 != 1 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 61, "((std::is_same_v<UT, uint8_t> && data_type == BufferDataType::Uint8) || (std::is_same_v<UT, half> && data_type == BufferDataType::Float16) || (std::is_same_v<UT, float> && data_type == BufferDataType::Float32))", 0xD2uLL, "Buffer type mismatch", 0x14uLL, sub_255C101E0) || (v27 = 0, v4 = *(a1 + 16), e5rt_buffer_object_get_data_ptr()) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 64, "ret == E5RT_ERROR_CODE_OK", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0))
  {
    abort();
  }

  v25 = 0;
  v26 = 0;
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  e5rt_tensor_desc_get_shape();
  v24 = 0;
  v7 = *v5;
  e5rt_tensor_desc_get_strides();
  v23 = 0;
  v8 = *v5;
  e5rt_tensor_desc_retain_dtype();
  v28[0] = &unk_2867C3D98;
  v28[1] = MEMORY[0x277D07970];
  v28[2] = &v23;
  v29 = v28;
  v22 = 0;
  e5rt_tensor_desc_dtype_get_num_components();
  v21 = 0;
  e5rt_tensor_desc_dtype_get_element_size();
  v20 = 0;
  e5rt_tensor_desc_dtype_get_component_size();
  sub_255A83074(v26, v25, v24, 0, 0, v19);
  v16 = *&v19[5];
  v17 = v19[9];
  v18 = 1;
  v12[0] = 0;
  v15 = 0;
  sub_255B9E8F0(a2, v27, v19, &v16, dword_255C2FD20, v12);
  if (v15 == 1)
  {
    nullsub_87(&v14);
    v9 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    nullsub_87(v12);
  }

  if (!v29)
  {
    sub_255A93CCC();
  }

  (*(*v29 + 48))(v29);
  result = v29;
  if (v29 == v28)
  {
    result = (*(*v29 + 32))(v29);
  }

  else if (v29)
  {
    result = (*(*v29 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AA03D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A9247C(&a9);
  sub_255A8508C(v9 - 72);
  _Unwind_Resume(a1);
}

void sub_255AA0444(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255AA0460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a1 != 2 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 61, "((std::is_same_v<UT, uint8_t> && data_type == BufferDataType::Uint8) || (std::is_same_v<UT, half> && data_type == BufferDataType::Float16) || (std::is_same_v<UT, float> && data_type == BufferDataType::Float32))", 0xD2uLL, "Buffer type mismatch", 0x14uLL, sub_255C101E0) || (v29 = 0, v4 = *(a1 + 16), e5rt_buffer_object_get_data_ptr()) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 64, "ret == E5RT_ERROR_CODE_OK", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0))
  {
    abort();
  }

  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  e5rt_tensor_desc_get_shape();
  v26 = 0;
  v7 = *v5;
  e5rt_tensor_desc_get_strides();
  v25 = 0;
  v8 = *v5;
  e5rt_tensor_desc_retain_dtype();
  v30[0] = &unk_2867C3D98;
  v30[1] = MEMORY[0x277D07970];
  v30[2] = &v25;
  v31 = v30;
  v24 = 0;
  e5rt_tensor_desc_dtype_get_num_components();
  v23 = 0;
  e5rt_tensor_desc_dtype_get_element_size();
  v22 = 0;
  e5rt_tensor_desc_dtype_get_component_size();
  sub_255A8333C(v28, v27, v26, 0, 0, v19);
  v16 = v20;
  v17 = v21;
  v18 = 1;
  v12[0] = 0;
  v15 = 0;
  sub_255B9F478(a2, v29, v19, &v16, "@", v12);
  if (v15 == 1)
  {
    nullsub_87(&v14);
    v9 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    nullsub_87(v12);
  }

  if (!v31)
  {
    sub_255A93CCC();
  }

  (*(*v31 + 48))(v31);
  result = v31;
  if (v31 == v30)
  {
    result = (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    result = (*(*v31 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AA0750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A9247C(&a9);
  sub_255A8508C(v9 - 72);
  _Unwind_Resume(a1);
}

void sub_255AA07BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255AA07D8(uint64_t a1)
{
  nullsub_87(a1 + 24);
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v2;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v2 = v5;
  }

  return nullsub_87(v2);
}

uint64_t sub_255AA0880@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v13 = *MEMORY[0x277D85DE8];
  if ((*(result + 48) & 0x10) == 0)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/include/Kit/ML/DataView.h", 730, "format.Contains(FormatFlags::UINT8)", 0x23uLL, "The DataView does not contain uint8 data", 0x28uLL, sub_255C101E0);
    if (result)
    {
      goto LABEL_19;
    }
  }

  if (*(v2 + 112) == 1)
  {
    if (*(v2 + 108) == 1 && *(v2 + 96))
    {
      v4 = *(v2 + 64);
      v5 = *(v2 + 72);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v4;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          v4 = v6;
        }
      }

      result = (*(*v4 + 88))(v4, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v7 = 96;
  }

  else
  {
    v7 = 40;
  }

  v8 = *(v2 + v7);
  v9 = *(v2 + 36);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v2))) & 1) != 0 || (v10 = *(v2 + 16)) == 0)
  {
    v10 = 0;
    v12 = 0uLL;
  }

  else
  {
    v12 = *v2;
  }

  *(a2 + 28) = *(v2 + 20);
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 24) = v10;
  *(a2 + 44) = v9;
  if (v10 * v9 == -1)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (result)
    {
LABEL_19:
      abort();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255AA0A7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v13 = *MEMORY[0x277D85DE8];
  if ((*(result + 48) & 0x10) == 0)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/include/Kit/ML/DataView.h", 730, "format.Contains(FormatFlags::UINT8)", 0x23uLL, "The DataView does not contain uint8 data", 0x28uLL, sub_255C101E0);
    if (result)
    {
      goto LABEL_19;
    }
  }

  if (*(v2 + 112) == 1)
  {
    if (*(v2 + 108) == 1 && *(v2 + 96))
    {
      v4 = *(v2 + 64);
      v5 = *(v2 + 72);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v4;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          v4 = v6;
        }
      }

      result = (*(*v4 + 88))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v7 = 96;
  }

  else
  {
    v7 = 40;
  }

  v8 = *(v2 + v7);
  v9 = *(v2 + 36);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v2))) & 1) != 0 || (v10 = *(v2 + 16)) == 0)
  {
    v10 = 0;
    v12 = 0uLL;
  }

  else
  {
    v12 = *v2;
  }

  *(a2 + 28) = *(v2 + 20);
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 24) = v10;
  *(a2 + 44) = v9;
  if (v10 * v9 == -1)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (result)
    {
LABEL_19:
      abort();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

size_t *sub_255AA0C78(size_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 1);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v3))) & 1) == 0)
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      v5 = result;
      v6 = HIDWORD(*(a2 + 1));
      v7 = v3.i32[3] - 1;
      v8 = *(a2 + 10);
      v9 = *(a3 + 10);
      v10 = *a2;
      v11 = *a3;
      v26 = v4 - 1;
      if (v4 != 1)
      {
        v12 = *(a3 + 11);
        v27 = *(a2 + 11);
        v13 = *result;
        if (v3.i32[3] == 1)
        {
          if (!v13)
          {
            return result;
          }

          v21 = v4 - 2;
LABEL_32:
          result = memmove(v11, v10, v13);
          while (1)
          {
            v10 += v27;
            v11 += v12;
            if (!v21)
            {
              break;
            }

            v13 = *v5;
            --v21;
            if (*v5)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          if (!v13)
          {
            return result;
          }

          v25 = v12;
          v22 = v3.i32[3] - 1;
          v23 = HIDWORD(*(a2 + 1));
          v14 = 0;
          v24 = v3.i32[3] - 2;
          v28 = &v10[v8];
          v15 = &v11[v9];
LABEL_7:
          v16 = 0;
          v17 = 0;
          v18 = v24;
          if (v13)
          {
LABEL_8:
            result = memmove(&v11[v16], &v10[v17], v13);
          }

          while (v18)
          {
            v13 = *v5;
            --v18;
            v17 += v8;
            v16 += v9;
            if (*v5)
            {
              goto LABEL_8;
            }
          }

          if (*v5)
          {
            result = memmove(&v15[v16], &v28[v17], *v5);
          }

          while (1)
          {
            v10 += v27;
            v11 += v25;
            if (++v14 == v26)
            {
              break;
            }

            v13 = *v5;
            v28 += v27;
            v15 += v25;
            if (*v5)
            {
              goto LABEL_7;
            }
          }

          v7 = v22;
          v6 = v23;
        }
      }

      v19 = *v5;
      if (v7)
      {
        if (!v19)
        {
          return result;
        }

        v20 = v6 - 2;
LABEL_21:
        result = memmove(v11, v10, v19);
        while (1)
        {
          v10 += v8;
          v11 += v9;
          if (!v20)
          {
            break;
          }

          v19 = *v5;
          --v20;
          if (*v5)
          {
            goto LABEL_21;
          }
        }

        v19 = *v5;
      }

      if (v19)
      {

        return memmove(v11, v10, v19);
      }
    }
  }

  return result;
}

size_t *sub_255AA0EBC(size_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 1);
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v3))))
  {
    return result;
  }

  v4 = *(a2 + 6);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = *(a2 + 3) >> 64;
  v7 = *(a2 + 10);
  v64 = *(a2 + 9);
  v9 = *(a3 + 9);
  v8 = *(a3 + 10);
  v10 = *a2;
  v11 = *a3;
  v55 = v4 - 1;
  v61 = v8;
  v62 = v7;
  v63 = v3.i32[3] - 1;
  v50 = v3.i32[2] - 1;
  if (v4 != 1)
  {
    v53 = *(a3 + 11);
    v56 = *(a2 + 11);
    if (v3.i32[3] == 1)
    {
      v24 = *result;
      if (v3.i32[2] == 1)
      {
        if (!v24)
        {
          v49 = (v4 - 2) + 1;
          v10 += v49 * *(a2 + 11);
          v11 += v49 * v53;
          goto LABEL_81;
        }

        v47 = v4 - 2;
LABEL_87:
        result = memmove(v11, v10, v24);
        while (1)
        {
          v10 += v56;
          v11 += v53;
          if (!v47)
          {
            break;
          }

          v24 = *v5;
          --v47;
          if (*v5)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        if (!v24)
        {
          return result;
        }

        v25 = 0;
        v60 = v3.i32[2] - 2;
        v26 = &v10[v64];
        v27 = &v11[v9];
LABEL_30:
        v28 = v11;
        v29 = 0;
        v30 = 0;
        v31 = v60;
        if (v24)
        {
LABEL_31:
          result = memmove(&v28[v29], &v10[v30], v24);
        }

        while (v31)
        {
          v24 = *v5;
          --v31;
          v30 += v64;
          v29 += v9;
          if (*v5)
          {
            goto LABEL_31;
          }
        }

        v11 = v28;
        v8 = v61;
        if (*v5)
        {
          result = memmove(&v27[v29], &v26[v30], *v5);
        }

        while (1)
        {
          v10 += v56;
          v11 += v53;
          if (++v25 == v55)
          {
            break;
          }

          v24 = *v5;
          v26 += v56;
          v27 += v53;
          if (*v5)
          {
            goto LABEL_30;
          }
        }

        v7 = v62;
      }
    }

    else if (v3.i32[2] == 1)
    {
      v32 = 0;
      do
      {
        v33 = *v5;
        v34 = v63;
        v35 = v10;
        v36 = v11;
        if (*v5)
        {
          do
          {
            if (v33)
            {
              result = memmove(v36, v35, v33);
            }

            v35 += v7;
            v36 += v8;
            v33 = *v5;
            --v34;
          }

          while (v34);
          if (v33)
          {
            result = memmove(v36, v35, v33);
          }
        }

        v10 += v56;
        v11 += v53;
        ++v32;
      }

      while (v32 != v55);
    }

    else
    {
      v12 = 0;
      v59 = v3.i32[2] - 2;
      v58 = &v10[v64];
      v57 = &v11[v9];
      v13 = *(a3 + 11);
      do
      {
        v54 = v12;
        v14 = *v5;
        if (*v5)
        {
          v15 = 0;
          v16 = v57;
          v17 = v58;
          v51 = v11;
          v52 = v10;
          v18 = v10;
          v19 = v11;
          do
          {
            if (v14)
            {
              v20 = 0;
              v21 = 0;
              v22 = v59;
LABEL_13:
              result = memmove(&v19[v20], &v18[v21], v14);
              while (v22)
              {
                v14 = *v5;
                --v22;
                v21 += v64;
                v20 += v9;
                if (*v5)
                {
                  goto LABEL_13;
                }
              }

              v8 = v61;
              if (*v5)
              {
                result = memmove(&v16[v20], &v17[v21], *v5);
              }
            }

            v18 += v62;
            v19 += v8;
            ++v15;
            v14 = *v5;
            v17 += v62;
            v16 += v8;
          }

          while (v15 != v63);
          v23 = v59;
          v11 = v51;
          v10 = v52;
          v7 = v62;
          v13 = v53;
          if (v14)
          {
            while (1)
            {
              if (v14)
              {
                result = memmove(v19, v18, v14);
              }

              v18 += v64;
              v19 += v9;
              if (!v23)
              {
                break;
              }

              v14 = *v5;
              --v23;
            }

            if (*v5)
            {
              result = memmove(v19, v18, *v5);
            }
          }
        }

        v10 += v56;
        v11 += v13;
        v12 = v54 + 1;
        v57 += v13;
        v58 += v56;
      }

      while (v54 + 1 != v55);
    }
  }

  if (!v63)
  {
LABEL_64:
    v37 = v50;
    goto LABEL_65;
  }

  v24 = *v5;
  v37 = v50;
  if (v50)
  {
    if (!v24)
    {
      v45 = (HIDWORD(v6) - 2) + 1;
      v10 += v45 * v7;
      v11 += v45 * v8;
      goto LABEL_74;
    }

    v38 = 0;
    v39 = &v10[v64];
    v40 = &v11[v9];
LABEL_54:
    v41 = 0;
    v42 = 0;
    v43 = v6 - 2;
    if (v24)
    {
LABEL_55:
      result = memmove(&v11[v41], &v10[v42], v24);
    }

    while (v43)
    {
      v24 = *v5;
      --v43;
      v42 += v64;
      v41 += v9;
      if (*v5)
      {
        goto LABEL_55;
      }
    }

    if (*v5)
    {
      result = memmove(&v40[v41], &v39[v42], *v5);
    }

    while (1)
    {
      v10 += v62;
      v11 += v61;
      if (++v38 == v63)
      {
        goto LABEL_64;
      }

      v24 = *v5;
      v39 += v62;
      v40 += v61;
      if (*v5)
      {
        goto LABEL_54;
      }
    }
  }

  if (!v24)
  {
    v48 = (HIDWORD(v6) - 2) + 1;
    v10 += v48 * v7;
    v11 += v48 * v8;
    goto LABEL_81;
  }

  v44 = HIDWORD(v6) - 2;
LABEL_69:
  result = memmove(v11, v10, v24);
  while (1)
  {
    v10 += v7;
    v11 += v8;
    if (!v44)
    {
      break;
    }

    v24 = *v5;
    --v44;
    if (*v5)
    {
      goto LABEL_69;
    }
  }

LABEL_65:
  v24 = *v5;
  if (v37)
  {
LABEL_74:
    if (!v24)
    {
      return result;
    }

    v46 = v6 - 2;
LABEL_76:
    result = memmove(v11, v10, v24);
    while (1)
    {
      v10 += v64;
      v11 += v9;
      if (!v46)
      {
        break;
      }

      v24 = *v5;
      --v46;
      if (*v5)
      {
        goto LABEL_76;
      }
    }

    v24 = *v5;
  }

LABEL_81:
  if (v24)
  {

    return memmove(v11, v10, v24);
  }

  return result;
}

_DWORD *sub_255AA1430(_DWORD *a1, uint64_t a2, size_t *a3, char *__src, char *__dst)
{
  if (a1[14])
  {
    v10 = 0;
    while (1)
    {
      v33 = v10;
      v34 = __src;
      v35 = __dst;
      if (a1[11])
      {
        break;
      }

LABEL_3:
      sub_255AA16FC(a1, a2, a3, __src, __dst);
      __src = &v34[a1[15]];
      __dst = &v35[a1[16]];
      v10 = v33 + 1;
      if ((v33 + 1) >= a1[14])
      {
        goto LABEL_29;
      }
    }

    v11 = 0;
    while (1)
    {
      v36 = v11;
      __dsta = __dst;
      v15 = __src;
      if (a1[8])
      {
        v16 = 0;
        v15 = __src;
        while (1)
        {
          v19 = a1[3];
          v20 = a1[4];
          *a2 = v15;
          *(a2 + 8) = v19;
          *(a2 + 16) = __dst;
          *(a2 + 24) = v20;
          v21 = a1[5];
          v22 = *a3;
          if (!v21)
          {
            break;
          }

          if (v22)
          {
            v23 = 0;
            v24 = v15;
            v25 = __dst;
            do
            {
              *a2 = v24;
              *(a2 + 16) = v25;
              if (v22)
              {
                memmove(v25, v24, v22);
                v21 = a1[5];
              }

              v24 += a1[6];
              v25 += a1[7];
              ++v23;
              v22 = *a3;
            }

            while (v23 < v21);
            goto LABEL_19;
          }

          v17 = &v15[a1[6] * v21];
          v18 = &__dst[a1[7] * v21];
          *a2 = v17;
          *(a2 + 16) = v18;
LABEL_11:
          v15 += a1[9];
          __dst += a1[10];
          if (++v16 >= a1[8])
          {
            goto LABEL_21;
          }
        }

        v25 = __dst;
        v24 = v15;
LABEL_19:
        *a2 = v24;
        *(a2 + 16) = v25;
        if (v22)
        {
          memmove(v25, v24, v22);
        }

        goto LABEL_11;
      }

LABEL_21:
      v26 = a1[3];
      v27 = a1[4];
      *a2 = v15;
      *(a2 + 8) = v26;
      *(a2 + 16) = __dst;
      *(a2 + 24) = v27;
      v28 = a1[5];
      v29 = *a3;
      if (!v28)
      {
        goto LABEL_27;
      }

      if (v29)
      {
        break;
      }

      v12 = &v15[a1[6] * v28];
      v13 = &__dst[a1[7] * v28];
      *a2 = v12;
      *(a2 + 16) = v13;
      v14 = v36;
LABEL_7:
      __src += a1[12];
      __dst = &__dsta[a1[13]];
      v11 = v14 + 1;
      if (v11 >= a1[11])
      {
        goto LABEL_3;
      }
    }

    for (i = 0; i < v28; ++i)
    {
      *a2 = v15;
      *(a2 + 16) = __dst;
      if (v29)
      {
        memmove(__dst, v15, v29);
        v28 = a1[5];
      }

      v15 += a1[6];
      __dst += a1[7];
      v29 = *a3;
    }

LABEL_27:
    *a2 = v15;
    *(a2 + 16) = __dst;
    v14 = v36;
    if (v29)
    {
      memmove(__dst, v15, v29);
    }

    goto LABEL_7;
  }

LABEL_29:
  if (a1[11])
  {
    v31 = 0;
    do
    {
      sub_255AA16FC(a1, a2, a3, __src, __dst);
      __src += a1[12];
      __dst += a1[13];
      ++v31;
    }

    while (v31 < a1[11]);
  }

  return sub_255AA16FC(a1, a2, a3, __src, __dst);
}

_DWORD *sub_255AA16FC(_DWORD *result, uint64_t a2, size_t *a3, char *__src, char *__dst)
{
  v9 = result;
  if (result[8])
  {
    v10 = 0;
    while (1)
    {
      v13 = v9[3];
      v14 = v9[4];
      *a2 = __src;
      *(a2 + 8) = v13;
      *(a2 + 16) = __dst;
      *(a2 + 24) = v14;
      v15 = v9[5];
      v16 = *a3;
      if (!v15)
      {
        break;
      }

      if (v16)
      {
        v17 = 0;
        v18 = __src;
        v19 = __dst;
        do
        {
          *a2 = v18;
          *(a2 + 16) = v19;
          if (v16)
          {
            result = memmove(v19, v18, v16);
            v15 = v9[5];
          }

          v18 += v9[6];
          v19 += v9[7];
          ++v17;
          v16 = *a3;
        }

        while (v17 < v15);
        goto LABEL_12;
      }

      v11 = &__src[v9[6] * v15];
      v12 = &__dst[v9[7] * v15];
      *a2 = v11;
      *(a2 + 16) = v12;
LABEL_4:
      __src += v9[9];
      __dst += v9[10];
      if (++v10 >= v9[8])
      {
        goto LABEL_14;
      }
    }

    v19 = __dst;
    v18 = __src;
LABEL_12:
    *a2 = v18;
    *(a2 + 16) = v19;
    if (v16)
    {
      result = memmove(v19, v18, v16);
    }

    goto LABEL_4;
  }

LABEL_14:
  v20 = v9[3];
  v21 = v9[4];
  *a2 = __src;
  *(a2 + 8) = v20;
  *(a2 + 16) = __dst;
  *(a2 + 24) = v21;
  v22 = v9[5];
  v23 = *a3;
  if (v22)
  {
    if (!v23)
    {
      v25 = &__src[v9[6] * v22];
      v26 = &__dst[v9[7] * v22];
      *a2 = v25;
      *(a2 + 16) = v26;
      return result;
    }

    for (i = 0; i < v22; ++i)
    {
      *a2 = __src;
      *(a2 + 16) = __dst;
      if (v23)
      {
        result = memmove(__dst, __src, v23);
        v22 = v9[5];
      }

      __src += v9[6];
      __dst += v9[7];
      v23 = *a3;
    }
  }

  *a2 = __src;
  *(a2 + 16) = __dst;
  if (v23)
  {

    return memmove(__dst, __src, v23);
  }

  return result;
}

_DWORD *sub_255AA18DC(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (a1[14])
  {
    v10 = 0;
    do
    {
      v11 = a5;
      v12 = a4;
      if (a1[11])
      {
        v13 = 0;
        v12 = a4;
        v11 = a5;
        do
        {
          v14 = v12;
          v15 = v11;
          if (a1[8])
          {
            v16 = 0;
            v14 = v12;
            v15 = v11;
            do
            {
              v17 = v14;
              v18 = v15;
              if (a1[5])
              {
                v19 = 0;
                v17 = v14;
                v18 = v15;
                do
                {
                  v20 = v18;
                  v21 = v17;
                  if (a1[2])
                  {
                    v22 = 0;
                    v21 = v17;
                    v20 = v18;
                    do
                    {
                      *v20 = *v21;
                      v21 += a1[3];
                      v20 += a1[4];
                      ++v22;
                    }

                    while (v22 < a1[2]);
                  }

                  *v20 = *v21;
                  v17 += a1[6];
                  v18 += a1[7];
                  ++v19;
                }

                while (v19 < a1[5]);
              }

              if (a1[2])
              {
                v23 = 0;
                do
                {
                  *v18 = *v17;
                  v17 += a1[3];
                  v18 += a1[4];
                  ++v23;
                }

                while (v23 < a1[2]);
              }

              *v18 = *v17;
              v14 += a1[9];
              v15 += a1[10];
              ++v16;
            }

            while (v16 < a1[8]);
          }

          if (a1[5])
          {
            v24 = 0;
            do
            {
              v25 = v15;
              v26 = v14;
              if (a1[2])
              {
                v27 = 0;
                v26 = v14;
                v25 = v15;
                do
                {
                  *v25 = *v26;
                  v26 += a1[3];
                  v25 += a1[4];
                  ++v27;
                }

                while (v27 < a1[2]);
              }

              *v25 = *v26;
              v14 += a1[6];
              v15 += a1[7];
              ++v24;
            }

            while (v24 < a1[5]);
          }

          if (a1[2])
          {
            v28 = 0;
            do
            {
              *v15 = *v14;
              v14 += a1[3];
              v15 += a1[4];
              ++v28;
            }

            while (v28 < a1[2]);
          }

          *v15 = *v14;
          v12 += a1[12];
          v11 += a1[13];
          ++v13;
        }

        while (v13 < a1[11]);
      }

      sub_255AA1BAC(a1, a2, a3, v12, v11);
      a4 += a1[15];
      a5 += a1[16];
      ++v10;
    }

    while (v10 < a1[14]);
  }

  if (a1[11])
  {
    v29 = 0;
    do
    {
      sub_255AA1BAC(a1, a2, a3, a4, a5);
      a4 += a1[12];
      a5 += a1[13];
      ++v29;
    }

    while (v29 < a1[11]);
  }

  return sub_255AA1BAC(a1, a2, a3, a4, a5);
}

_DWORD *sub_255AA1BAC(_DWORD *result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (result[8])
  {
    v5 = 0;
    do
    {
      v6 = a4;
      v7 = a5;
      if (result[5])
      {
        v8 = 0;
        v6 = a4;
        v7 = a5;
        do
        {
          v9 = v7;
          v10 = v6;
          if (result[2])
          {
            v11 = 0;
            v10 = v6;
            v9 = v7;
            do
            {
              *v9 = *v10;
              v10 += result[3];
              v9 += result[4];
              ++v11;
            }

            while (v11 < result[2]);
          }

          *v9 = *v10;
          v6 += result[6];
          v7 += result[7];
          ++v8;
        }

        while (v8 < result[5]);
      }

      if (result[2])
      {
        v12 = 0;
        do
        {
          *v7 = *v6;
          v6 += result[3];
          v7 += result[4];
          ++v12;
        }

        while (v12 < result[2]);
      }

      *v7 = *v6;
      a4 += result[9];
      a5 += result[10];
      ++v5;
    }

    while (v5 < result[8]);
  }

  if (result[5])
  {
    v13 = 0;
    do
    {
      v14 = a5;
      v15 = a4;
      if (result[2])
      {
        v16 = 0;
        v15 = a4;
        v14 = a5;
        do
        {
          *v14 = *v15;
          v15 += result[3];
          v14 += result[4];
          ++v16;
        }

        while (v16 < result[2]);
      }

      *v14 = *v15;
      a4 += result[6];
      a5 += result[7];
      ++v13;
    }

    while (v13 < result[5]);
  }

  if (result[2])
  {
    v17 = 0;
    do
    {
      *a5 = *a4;
      a4 += result[3];
      a5 += result[4];
      ++v17;
    }

    while (v17 < result[2]);
  }

  *a5 = *a4;
  return result;
}

void sub_255AA1D50(uint64_t a1)
{
  nullsub_87(a1 + 24);
  v2 = *(a1 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  nullsub_87(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AA1DF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_255AA1E0C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_255AA1EB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v13 = *MEMORY[0x277D85DE8];
  if ((*(result + 48) & 0x20) == 0)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/include/Kit/ML/DataView.h", 727, "format.Contains(FormatFlags::FLOAT16)", 0x25uLL, "The DataView does not contain half data", 0x27uLL, sub_255C101E0);
    if (result)
    {
      goto LABEL_19;
    }
  }

  if (*(v2 + 112) == 1)
  {
    if (*(v2 + 108) == 1 && *(v2 + 96))
    {
      v4 = *(v2 + 64);
      v5 = *(v2 + 72);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v4;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          v4 = v6;
        }
      }

      result = (*(*v4 + 88))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v7 = 96;
  }

  else
  {
    v7 = 40;
  }

  v8 = *(v2 + v7);
  v9 = *(v2 + 36);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v2))) & 1) != 0 || (v10 = *(v2 + 16)) == 0)
  {
    v10 = 0;
    v12 = 0uLL;
  }

  else
  {
    v12 = *v2;
  }

  *(a2 + 28) = *(v2 + 20);
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 24) = v10;
  *(a2 + 44) = v9;
  if (v10 * v9 == -1)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (result)
    {
LABEL_19:
      abort();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

__int16 sub_255AA20AC@<H0>(_DWORD *a1@<X0>, unsigned __int8 *a2@<X1>, _WORD *a3@<X2>, __n128 a4@<Q0>)
{
  if (a1[8])
  {
    v4 = 0;
    do
    {
      v5 = a2;
      v6 = a3;
      if (a1[5])
      {
        v7 = 0;
        v5 = a2;
        v6 = a3;
        do
        {
          v8 = v6;
          v9 = v5;
          if (a1[2])
          {
            v10 = 0;
            v9 = v5;
            v8 = v6;
            do
            {
              a4.n128_u8[0] = *v9;
              *a4.n128_u16 = a4.n128_u16[0];
              *v8 = a4.n128_u16[0];
              v9 += a1[3];
              v8 += a1[4];
              ++v10;
            }

            while (v10 < a1[2]);
          }

          a4.n128_u8[0] = *v9;
          *a4.n128_u16 = a4.n128_u16[0];
          *v8 = a4.n128_u16[0];
          v5 += a1[6];
          v6 += a1[7];
          ++v7;
        }

        while (v7 < a1[5]);
      }

      if (a1[2])
      {
        v11 = 0;
        do
        {
          a4.n128_u8[0] = *v5;
          *a4.n128_u16 = a4.n128_u16[0];
          *v6 = a4.n128_u16[0];
          v5 += a1[3];
          v6 += a1[4];
          ++v11;
        }

        while (v11 < a1[2]);
      }

      a4.n128_u8[0] = *v5;
      *a4.n128_u16 = a4.n128_u16[0];
      *v6 = a4.n128_u16[0];
      a2 += a1[9];
      a3 += a1[10];
      ++v4;
    }

    while (v4 < a1[8]);
  }

  if (a1[5])
  {
    v12 = 0;
    do
    {
      v13 = a3;
      v14 = a2;
      if (a1[2])
      {
        v15 = 0;
        v14 = a2;
        v13 = a3;
        do
        {
          a4.n128_u8[0] = *v14;
          *a4.n128_u16 = a4.n128_u16[0];
          *v13 = a4.n128_u16[0];
          v14 += a1[3];
          v13 += a1[4];
          ++v15;
        }

        while (v15 < a1[2]);
      }

      a4.n128_u8[0] = *v14;
      *a4.n128_u16 = a4.n128_u16[0];
      *v13 = a4.n128_u16[0];
      a2 += a1[6];
      a3 += a1[7];
      ++v12;
    }

    while (v12 < a1[5]);
  }

  if (a1[2])
  {
    v16 = 0;
    do
    {
      a4.n128_u8[0] = *a2;
      *a4.n128_u16 = a4.n128_u16[0];
      *a3 = a4.n128_u16[0];
      a2 += a1[3];
      a3 += a1[4];
      ++v16;
    }

    while (v16 < a1[2]);
  }

  a4.n128_u8[0] = *a2;
  *&result = a4.n128_u16[0];
  *a3 = *&result;
  return result;
}

uint64_t sub_255AA2270@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v13 = *MEMORY[0x277D85DE8];
  if ((*(result + 48) & 0x40) == 0)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/include/Kit/ML/DataView.h", 724, "format.Contains(FormatFlags::FLOAT32)", 0x25uLL, "The DataView does not contain float data", 0x28uLL, sub_255C101E0);
    if (result)
    {
      goto LABEL_19;
    }
  }

  if (*(v2 + 112) == 1)
  {
    if (*(v2 + 108) == 1 && *(v2 + 96))
    {
      v4 = *(v2 + 64);
      v5 = *(v2 + 72);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v4;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          v4 = v6;
        }
      }

      result = (*(*v4 + 88))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v7 = 96;
  }

  else
  {
    v7 = 40;
  }

  v8 = *(v2 + v7);
  v9 = *(v2 + 36);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v2))) & 1) != 0 || (v10 = *(v2 + 16)) == 0)
  {
    v10 = 0;
    v12 = 0uLL;
  }

  else
  {
    v12 = *v2;
  }

  *(a2 + 28) = *(v2 + 20);
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 24) = v10;
  *(a2 + 44) = v9;
  if (v10 * v9 == -1)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (result)
    {
LABEL_19:
      abort();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255AA246C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v13 = *MEMORY[0x277D85DE8];
  if ((*(result + 48) & 0x40) == 0)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/include/Kit/ML/DataView.h", 724, "format.Contains(FormatFlags::FLOAT32)", 0x25uLL, "The DataView does not contain float data", 0x28uLL, sub_255C101E0);
    if (result)
    {
      goto LABEL_19;
    }
  }

  if (*(v2 + 112) == 1)
  {
    if (*(v2 + 108) == 1 && *(v2 + 96))
    {
      v4 = *(v2 + 64);
      v5 = *(v2 + 72);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v4;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          v4 = v6;
        }
      }

      result = (*(*v4 + 88))(v4, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v7 = 96;
  }

  else
  {
    v7 = 40;
  }

  v8 = *(v2 + v7);
  v9 = *(v2 + 36);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v2))) & 1) != 0 || (v10 = *(v2 + 16)) == 0)
  {
    v10 = 0;
    v12 = 0uLL;
  }

  else
  {
    v12 = *v2;
  }

  *(a2 + 28) = *(v2 + 20);
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 24) = v10;
  *(a2 + 44) = v9;
  if (v10 * v9 == -1)
  {
    result = sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (result)
    {
LABEL_19:
      abort();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_255AA2668(_DWORD *a1, float *a2, _BYTE *a3)
{
  if (a1[11])
  {
    v6 = 0;
    do
    {
      v7 = a3;
      v8 = a2;
      if (a1[8])
      {
        v9 = 0;
        v8 = a2;
        v7 = a3;
        do
        {
          v10 = v8;
          v11 = v7;
          if (a1[5])
          {
            v12 = 0;
            v10 = v8;
            v11 = v7;
            do
            {
              v13 = v11;
              v14 = v10;
              if (a1[2])
              {
                v15 = 0;
                v14 = v10;
                v13 = v11;
                do
                {
                  *v13 = *v14;
                  v14 += a1[3];
                  v13 += a1[4];
                  ++v15;
                }

                while (v15 < a1[2]);
              }

              *v13 = *v14;
              v10 += a1[6];
              v11 += a1[7];
              ++v12;
            }

            while (v12 < a1[5]);
          }

          if (a1[2])
          {
            v16 = 0;
            do
            {
              *v11 = *v10;
              v10 += a1[3];
              v11 += a1[4];
              ++v16;
            }

            while (v16 < a1[2]);
          }

          *v11 = *v10;
          v8 += a1[9];
          v7 += a1[10];
          ++v9;
        }

        while (v9 < a1[8]);
      }

      sub_255AA2830(a1, v8, v7);
      a2 += a1[12];
      a3 += a1[13];
      ++v6;
    }

    while (v6 < a1[11]);
  }

  if (a1[8])
  {
    v17 = 0;
    do
    {
      sub_255AA2830(a1, a2, a3);
      a2 += a1[9];
      a3 += a1[10];
      ++v17;
    }

    while (v17 < a1[8]);
  }

  return sub_255AA2830(a1, a2, a3);
}

float sub_255AA2830(_DWORD *a1, float *a2, _BYTE *a3)
{
  if (a1[5])
  {
    v3 = 0;
    do
    {
      v4 = a3;
      v5 = a2;
      if (a1[2])
      {
        v6 = 0;
        v5 = a2;
        v4 = a3;
        do
        {
          *v4 = *v5;
          v5 += a1[3];
          v4 += a1[4];
          ++v6;
        }

        while (v6 < a1[2]);
      }

      *v4 = *v5;
      a2 += a1[6];
      a3 += a1[7];
      ++v3;
    }

    while (v3 < a1[5]);
  }

  if (a1[2])
  {
    v7 = 0;
    do
    {
      *a3 = *a2;
      a2 += a1[3];
      a3 += a1[4];
      ++v7;
    }

    while (v7 < a1[2]);
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

__int16 sub_255AA28F4@<H0>(_DWORD *a1@<X0>, int *a2@<X1>, _WORD *a3@<X2>)
{
  if (a1[8])
  {
    v3 = 0;
    do
    {
      v9 = a2;
      v10 = a3;
      if (a1[5])
      {
        v11 = 0;
        v9 = a2;
        v10 = a3;
        do
        {
          v13 = v10;
          v14 = v9;
          if (a1[2])
          {
            v15 = 0;
            v14 = v9;
            v13 = v10;
            do
            {
              _S0 = *v14;
              __asm { FCVT            H0, S0 }

              *v13 = _S0;
              v14 += a1[3];
              v13 += a1[4];
              ++v15;
            }

            while (v15 < a1[2]);
          }

          _S0 = *v14;
          __asm { FCVT            H0, S0 }

          *v13 = _S0;
          v9 += a1[6];
          v10 += a1[7];
          ++v11;
        }

        while (v11 < a1[5]);
      }

      if (a1[2])
      {
        v17 = 0;
        do
        {
          _S0 = *v9;
          __asm { FCVT            H0, S0 }

          *v10 = _S0;
          v9 += a1[3];
          v10 += a1[4];
          ++v17;
        }

        while (v17 < a1[2]);
      }

      _S0 = *v9;
      __asm { FCVT            H0, S0 }

      *v10 = _S0;
      a2 += a1[9];
      a3 += a1[10];
      ++v3;
    }

    while (v3 < a1[8]);
  }

  if (a1[5])
  {
    v19 = 0;
    do
    {
      v21 = a3;
      v22 = a2;
      if (a1[2])
      {
        v23 = 0;
        v22 = a2;
        v21 = a3;
        do
        {
          _S0 = *v22;
          __asm { FCVT            H0, S0 }

          *v21 = _S0;
          v22 += a1[3];
          v21 += a1[4];
          ++v23;
        }

        while (v23 < a1[2]);
      }

      _S0 = *v22;
      __asm { FCVT            H0, S0 }

      *v21 = _S0;
      a2 += a1[6];
      a3 += a1[7];
      ++v19;
    }

    while (v19 < a1[5]);
  }

  if (a1[2])
  {
    v25 = 0;
    do
    {
      _S0 = *a2;
      __asm { FCVT            H0, S0 }

      *a3 = _S0;
      a2 += a1[3];
      a3 += a1[4];
      ++v25;
    }

    while (v25 < a1[2]);
  }

  _S0 = *a2;
  __asm { FCVT            H0, S0 }

  *a3 = result;
  return result;
}

uint64_t *sub_255AA2AB8(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 1);
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v3))))
  {
    return result;
  }

  v4 = *(a2 + 6);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = HIDWORD(*(a2 + 1));
  v7 = v3.i32[3] - 1;
  v8 = *(a2 + 10);
  v9 = *(a3 + 10);
  v10 = *a2;
  v11 = *a3;
  v33 = v4 - 1;
  if (v4 != 1)
  {
    v12 = *(a3 + 11);
    v13 = *(a2 + 11);
    v14 = *result;
    if (v3.i32[3] == 1)
    {
      if (!v14)
      {
        return result;
      }

      v28 = 0;
      v29 = HIDWORD(*(a2 + 1));
      v23 = v4 - 2;
LABEL_20:
      result = memmove(v11, v10, 4 * v14);
      while (v23)
      {
        v14 = *v5;
        --v23;
        v10 += 4 * v13;
        v11 += 4 * v12;
        if (*v5)
        {
          goto LABEL_20;
        }
      }

      v10 += 4 * v13;
      v11 += 4 * v12;
    }

    else
    {
      if (!v14)
      {
        v24 = 4 * (v4 - 2) + 4;
        v10 += v24 * v13;
        v11 += v24 * v12;
LABEL_28:
        if (!v14)
        {
          return result;
        }

        v25 = v6 - 2;
LABEL_30:
        result = memmove(v11, v10, 4 * v14);
        while (v25)
        {
          v14 = *v5;
          --v25;
          v10 += 4 * v8;
          v11 += 4 * v9;
          if (*v5)
          {
            goto LABEL_30;
          }
        }

        v14 = *v5;
        v10 += 4 * v8;
        v11 += 4 * v9;
        goto LABEL_35;
      }

      v28 = v3.i32[3] - 1;
      v29 = HIDWORD(*(a2 + 1));
      v15 = 0;
      v30 = v3.i32[3] - 2;
      v26 = *(a3 + 10);
      v27 = *(a2 + 10);
      v16 = 4 * v8;
      v17 = &v10[4 * v8];
      v18 = 4 * v9;
      v19 = &v11[v18];
      v31 = 4 * v12;
      v32 = 4 * v13;
LABEL_7:
      v34 = v17;
      v20 = 0;
      v21 = 0;
      v22 = v30;
      if (v14)
      {
LABEL_8:
        result = memmove(&v11[v20], &v10[v21], 4 * v14);
      }

      while (v22)
      {
        v14 = *v5;
        --v22;
        v21 += v16;
        v20 += v18;
        if (*v5)
        {
          goto LABEL_8;
        }
      }

      v17 = v34;
      if (*v5)
      {
        result = memmove(&v19[v20], &v34[v21], 4 * *v5);
      }

      while (1)
      {
        v10 += v32;
        v11 += v31;
        if (++v15 == v33)
        {
          break;
        }

        v14 = *v5;
        v17 += v32;
        v19 += v31;
        if (*v5)
        {
          goto LABEL_7;
        }
      }

      v9 = v26;
      v8 = v27;
    }

    v7 = v28;
    v6 = v29;
  }

  v14 = *v5;
  if (v7)
  {
    goto LABEL_28;
  }

LABEL_35:
  if (v14)
  {

    return memmove(v11, v10, 4 * v14);
  }

  return result;
}

uint64_t *sub_255AA2D3C(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 1);
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v3))))
  {
    return result;
  }

  v4 = *(a2 + 6);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v58 = a2[2];
  v6 = v3.i32[2] - 1;
  v57 = HIDWORD(*(a2 + 1));
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = *(a3 + 9);
  v74 = *a2;
  __dst = *a3;
  v62 = v3.i32[2] - 1;
  v63 = v4 - 1;
  v72 = v3.i32[3] - 1;
  v59 = v9;
  v60 = v7;
  v55 = v8;
  v56 = *(a3 + 10);
  if (v4 != 1)
  {
    v10 = *(a3 + 11);
    v11 = *(a2 + 11);
    if (v3.i32[3] != 1)
    {
      v12 = 0;
      v71 = v3.i32[2] - 2;
      v61 = v3.i32[3] - 2;
      v13 = 4 * (v3.i32[3] - 2) + 4;
      v64 = 4 * v10;
      v65 = 4 * v11;
      v14 = &v74[v13 * v8];
      v15 = &__dst[v13 * *(a3 + 10)];
      v16 = 4 * v7;
      v17 = &v74[4 * v7];
      v76 = 4 * v8;
      v18 = 4 * v9;
      v19 = &__dst[4 * v9];
      v75 = 4 * *(a3 + 10);
      v6 = v3.i32[2] - 1;
      v20 = v63;
      while (1)
      {
        v21 = *v5;
        v70 = v12;
        v68 = v15;
        v69 = v14;
        v66 = v19;
        v67 = v17;
        if (!v6)
        {
          break;
        }

        if (v21)
        {
          v22 = 0;
          v15 = __dst;
          v78 = v19;
          v14 = v74;
          v23 = v17;
LABEL_10:
          v24 = 0;
          v25 = 0;
          v26 = v71;
          if (v21)
          {
LABEL_11:
            result = memmove(&v15[v24], &v14[v25], 4 * v21);
          }

          while (v26)
          {
            v21 = *v5;
            --v26;
            v25 += v16;
            v24 += v18;
            if (*v5)
            {
              goto LABEL_11;
            }
          }

          if (*v5)
          {
            result = memmove(&v78[v24], &v23[v25], 4 * *v5);
          }

          while (1)
          {
            v14 += v76;
            v15 += v75;
            if (++v22 == v72)
            {
              break;
            }

            v21 = *v5;
            v23 += v76;
            v78 += v75;
            if (*v5)
            {
              goto LABEL_10;
            }
          }

          v6 = v62;
          v20 = v63;
          v21 = *v5;
          if (!v62)
          {
            goto LABEL_35;
          }
        }

        v30 = v71;
        v31 = v72;
        if (v21)
        {
LABEL_30:
          result = memmove(v15, v14, 4 * v21);
          while (v30)
          {
            v21 = *v5;
            --v30;
            v14 += v16;
            v15 += v18;
            if (*v5)
            {
              goto LABEL_30;
            }
          }

          v21 = *v5;
          v14 += v16;
          v15 += v18;
          goto LABEL_35;
        }

LABEL_6:
        v74 += v65;
        __dst += v64;
        v12 = v70 + 1;
        v14 = &v69[v65];
        v15 = &v68[v64];
        v17 = &v67[v65];
        v19 = &v66[v64];
        if (v70 + 1 == v20)
        {
          goto LABEL_38;
        }
      }

      v27 = __dst;
      v28 = v74;
      v29 = v61;
      if (v21)
      {
        while (1)
        {
          if (v21)
          {
            result = memmove(v27, v28, 4 * v21);
          }

          if (!v29)
          {
            break;
          }

          v21 = *v5;
          --v29;
          v28 += v76;
          v27 += v75;
        }

        v14 = &v28[v76];
        v15 = &v27[v75];
        v21 = *v5;
      }

LABEL_35:
      v31 = v72;
      if (v21)
      {
        result = memmove(v15, v14, 4 * v21);
      }

      goto LABEL_6;
    }

    v32 = *result;
    if (v3.i32[2] == 1)
    {
      if (!v32)
      {
        return result;
      }

      v52 = v4 - 2;
LABEL_78:
      result = memmove(__dst, v74, 4 * v32);
      while (v52)
      {
        v32 = *v5;
        --v52;
        v74 += 4 * v11;
        __dst += 4 * v10;
        if (*v5)
        {
          goto LABEL_78;
        }
      }

      v74 += 4 * v11;
      __dst += 4 * v10;
    }

    else
    {
      if (!v32)
      {
        v53 = 4 * (v4 - 2) + 4;
        v74 += v53 * v11;
        v51 = &__dst[v53 * v10];
        goto LABEL_84;
      }

      v40 = 0;
      v77 = v3.i32[2] - 2;
      v41 = 4 * v7;
      v42 = &v74[4 * v7];
      v80 = 4 * v11;
      v43 = 4 * v9;
      v44 = &__dst[4 * v9];
      v45 = 4 * v10;
LABEL_55:
      v46 = 0;
      v47 = 0;
      v48 = v77;
      if (v32)
      {
LABEL_56:
        result = memmove(&__dst[v46], &v74[v47], 4 * v32);
      }

      while (v48)
      {
        v32 = *v5;
        --v48;
        v47 += v41;
        v46 += v43;
        if (*v5)
        {
          goto LABEL_56;
        }
      }

      if (*v5)
      {
        result = memmove(&v44[v46], &v42[v47], 4 * *v5);
      }

      while (1)
      {
        v74 += v80;
        __dst += v45;
        if (++v40 == v63)
        {
          break;
        }

        v32 = *v5;
        v42 += v80;
        v44 += v45;
        if (*v5)
        {
          goto LABEL_55;
        }
      }
    }

    v6 = v62;
    if (!v72)
    {
      goto LABEL_87;
    }

LABEL_39:
    v32 = *v5;
    v9 = v59;
    v7 = v60;
    if (!v6)
    {
      if (!v32)
      {
        return result;
      }

      v49 = v57 - 2;
LABEL_69:
      result = memmove(__dst, v74, 4 * v32);
      while (v49)
      {
        v32 = *v5;
        --v49;
        v74 += 4 * v55;
        __dst += 4 * v56;
        if (*v5)
        {
          goto LABEL_69;
        }
      }

      v74 += 4 * v55;
      __dst += 4 * v56;
      v32 = *v5;
      if (!v62)
      {
        goto LABEL_95;
      }

      goto LABEL_88;
    }

    if (v32)
    {
      v33 = 0;
      v34 = &v74[4 * v60];
      v79 = 4 * v55;
      v35 = &__dst[4 * v59];
      v36 = 4 * v56;
LABEL_42:
      v37 = 0;
      v38 = 0;
      v39 = v58 - 2;
      if (v32)
      {
LABEL_43:
        result = memmove(&__dst[v37], &v74[v38], 4 * v32);
      }

      while (v39)
      {
        v32 = *v5;
        --v39;
        v38 += 4 * v60;
        v37 += 4 * v59;
        if (*v5)
        {
          goto LABEL_43;
        }
      }

      if (*v5)
      {
        result = memmove(&v35[v37], &v34[v38], 4 * *v5);
      }

      while (1)
      {
        v74 += v79;
        __dst += v36;
        if (++v33 == v72)
        {
          break;
        }

        v32 = *v5;
        v34 += v79;
        v35 += v36;
        if (*v5)
        {
          goto LABEL_42;
        }
      }

      v9 = v59;
      v7 = v60;
      v32 = *v5;
      if (v62)
      {
        goto LABEL_88;
      }

      goto LABEL_95;
    }

    v50 = 4 * (v57 - 2) + 4;
    v74 += v50 * v55;
    v51 = &__dst[v50 * v56];
LABEL_84:
    __dst = v51;
LABEL_88:
    if (!v32)
    {
      return result;
    }

    v54 = v58 - 2;
LABEL_90:
    result = memmove(__dst, v74, 4 * v32);
    while (v54)
    {
      v32 = *v5;
      --v54;
      v74 += 4 * v7;
      __dst += 4 * v9;
      if (*v5)
      {
        goto LABEL_90;
      }
    }

    v32 = *v5;
    v74 += 4 * v7;
    __dst += 4 * v9;
    goto LABEL_95;
  }

  v31 = v3.i32[3] - 1;
LABEL_38:
  if (v31)
  {
    goto LABEL_39;
  }

LABEL_87:
  v9 = v59;
  v7 = v60;
  v32 = *v5;
  if (v6)
  {
    goto LABEL_88;
  }

LABEL_95:
  if (v32)
  {

    return memmove(__dst, v74, 4 * v32);
  }

  return result;
}

_DWORD *sub_255AA3498(_DWORD *a1, uint64_t a2, uint64_t *a3, char *__src, char *__dst)
{
  if (a1[14])
  {
    v10 = 0;
    while (1)
    {
      v35 = v10;
      v36 = __src;
      v37 = __dst;
      if (a1[11])
      {
        break;
      }

LABEL_3:
      sub_255AA378C(a1, a2, a3, __src, __dst);
      __src = &v36[4 * a1[15]];
      __dst = &v37[4 * a1[16]];
      v10 = v35 + 1;
      if ((v35 + 1) >= a1[14])
      {
        goto LABEL_29;
      }
    }

    v11 = 0;
    while (1)
    {
      v38 = v11;
      __dsta = __dst;
      v16 = __src;
      if (a1[8])
      {
        v17 = 0;
        v16 = __src;
        while (1)
        {
          v21 = a1[3];
          v22 = a1[4];
          *a2 = v16;
          *(a2 + 8) = v21;
          *(a2 + 16) = __dst;
          *(a2 + 24) = v22;
          v23 = a1[5];
          v24 = *a3;
          if (!v23)
          {
            break;
          }

          if (v24)
          {
            v25 = 0;
            v26 = v16;
            v27 = __dst;
            do
            {
              *a2 = v26;
              *(a2 + 16) = v27;
              if (v24)
              {
                memmove(v27, v26, 4 * v24);
                v23 = a1[5];
              }

              v26 += 4 * a1[6];
              v27 += 4 * a1[7];
              ++v25;
              v24 = *a3;
            }

            while (v25 < v23);
            goto LABEL_19;
          }

          v18 = 4 * (v23 - 1) + 4;
          v19 = &v16[v18 * a1[6]];
          v20 = &__dst[v18 * a1[7]];
          *a2 = v19;
          *(a2 + 16) = v20;
LABEL_11:
          v16 += 4 * a1[9];
          __dst += 4 * a1[10];
          if (++v17 >= a1[8])
          {
            goto LABEL_21;
          }
        }

        v27 = __dst;
        v26 = v16;
LABEL_19:
        *a2 = v26;
        *(a2 + 16) = v27;
        if (v24)
        {
          memmove(v27, v26, 4 * v24);
        }

        goto LABEL_11;
      }

LABEL_21:
      v28 = a1[3];
      v29 = a1[4];
      *a2 = v16;
      *(a2 + 8) = v28;
      *(a2 + 16) = __dst;
      *(a2 + 24) = v29;
      v30 = a1[5];
      v31 = *a3;
      if (!v30)
      {
        goto LABEL_27;
      }

      if (v31)
      {
        break;
      }

      v12 = 4 * (v30 - 1) + 4;
      v13 = &v16[v12 * a1[6]];
      v14 = &__dst[v12 * a1[7]];
      *a2 = v13;
      *(a2 + 16) = v14;
      v15 = v38;
LABEL_7:
      __src += 4 * a1[12];
      __dst = &__dsta[4 * a1[13]];
      v11 = v15 + 1;
      if (v11 >= a1[11])
      {
        goto LABEL_3;
      }
    }

    for (i = 0; i < v30; ++i)
    {
      *a2 = v16;
      *(a2 + 16) = __dst;
      if (v31)
      {
        memmove(__dst, v16, 4 * v31);
        v30 = a1[5];
      }

      v16 += 4 * a1[6];
      __dst += 4 * a1[7];
      v31 = *a3;
    }

LABEL_27:
    *a2 = v16;
    *(a2 + 16) = __dst;
    v15 = v38;
    if (v31)
    {
      memmove(__dst, v16, 4 * v31);
    }

    goto LABEL_7;
  }

LABEL_29:
  if (a1[11])
  {
    v33 = 0;
    do
    {
      sub_255AA378C(a1, a2, a3, __src, __dst);
      __src += 4 * a1[12];
      __dst += 4 * a1[13];
      ++v33;
    }

    while (v33 < a1[11]);
  }

  return sub_255AA378C(a1, a2, a3, __src, __dst);
}

_DWORD *sub_255AA378C(_DWORD *result, uint64_t a2, uint64_t *a3, char *__src, char *__dst)
{
  v9 = result;
  if (result[8])
  {
    v10 = 0;
    while (1)
    {
      v14 = v9[3];
      v15 = v9[4];
      *a2 = __src;
      *(a2 + 8) = v14;
      *(a2 + 16) = __dst;
      *(a2 + 24) = v15;
      v16 = v9[5];
      v17 = *a3;
      if (!v16)
      {
        break;
      }

      if (v17)
      {
        v18 = 0;
        v19 = __src;
        v20 = __dst;
        do
        {
          *a2 = v19;
          *(a2 + 16) = v20;
          if (v17)
          {
            result = memmove(v20, v19, 4 * v17);
            v16 = v9[5];
          }

          v19 += 4 * v9[6];
          v20 += 4 * v9[7];
          ++v18;
          v17 = *a3;
        }

        while (v18 < v16);
        goto LABEL_12;
      }

      v11 = 4 * (v16 - 1) + 4;
      v12 = &__src[v11 * v9[6]];
      v13 = &__dst[v11 * v9[7]];
      *a2 = v12;
      *(a2 + 16) = v13;
LABEL_4:
      __src += 4 * v9[9];
      __dst += 4 * v9[10];
      if (++v10 >= v9[8])
      {
        goto LABEL_14;
      }
    }

    v20 = __dst;
    v19 = __src;
LABEL_12:
    *a2 = v19;
    *(a2 + 16) = v20;
    if (v17)
    {
      result = memmove(v20, v19, 4 * v17);
    }

    goto LABEL_4;
  }

LABEL_14:
  v21 = v9[3];
  v22 = v9[4];
  *a2 = __src;
  *(a2 + 8) = v21;
  *(a2 + 16) = __dst;
  *(a2 + 24) = v22;
  v23 = v9[5];
  v24 = *a3;
  if (v23)
  {
    if (!v24)
    {
      v26 = 4 * (v23 - 1) + 4;
      v27 = &__src[v26 * v9[6]];
      v28 = &__dst[v26 * v9[7]];
      *a2 = v27;
      *(a2 + 16) = v28;
      return result;
    }

    for (i = 0; i < v23; ++i)
    {
      *a2 = __src;
      *(a2 + 16) = __dst;
      if (v24)
      {
        result = memmove(__dst, __src, 4 * v24);
        v23 = v9[5];
      }

      __src += 4 * v9[6];
      __dst += 4 * v9[7];
      v24 = *a3;
    }
  }

  *a2 = __src;
  *(a2 + 16) = __dst;
  if (v24)
  {

    return memmove(__dst, __src, 4 * v24);
  }

  return result;
}

float sub_255AA3994(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  if (a1[14])
  {
    v10 = 0;
    while (1)
    {
      v125 = v10;
      v11 = v9[11];
      v126 = a4;
      v127 = a5;
      if (v11)
      {
        break;
      }

LABEL_3:
      v8 = a2;
      v7 = a3;
      sub_255AA4030(v9, a2, a3, a4, a5);
      a4 = &v126[v9[15]];
      a5 = &v127[v9[16]];
      v10 = v125 + 1;
      if ((v125 + 1) >= v9[14])
      {
        goto LABEL_66;
      }
    }

    v12 = v9[8];
    v13 = v9[5];
    v14 = v9[12];
    v15 = v9[13];
    v16 = v9[2];
    if (v12)
    {
      v18 = v9[9];
      v17 = v9[10];
      if (v13)
      {
        v131 = v14;
        v19 = v9[6];
        v20 = v9[7];
        v21 = v18;
        v22 = 4 * v19;
        v130 = v15;
        v23 = v17;
        v24 = 4 * v20;
        if (v16)
        {
          v25 = 0;
          v26 = 4 * v9[3];
          v27 = 4 * v9[4];
          v28 = &a4[v22 / 4];
          v29 = &a5[v24 / 4];
          v30 = &a4[v21];
          v31 = &a5[v23];
          v32 = &a4[v18 + v19];
          v33 = &a4[v22 / 4 + v21];
          v34 = &a5[v17 + v20];
          v35 = &a5[v24 / 4 + v23];
          v129 = v9[11];
          do
          {
            v140 = v25;
            v36 = 0;
            v132 = v35;
            v133 = v34;
            v134 = v33;
            v135 = v32;
            v37 = v33;
            v136 = v31;
            v137 = v30;
            v38 = v30;
            v138 = v29;
            v139 = v28;
            v141 = a5;
            v39 = a5;
            v40 = a4;
            do
            {
              v41 = 0;
              v42 = v38;
              v43 = v31;
              v44 = v32;
              v45 = v37;
              v46 = v34;
              v47 = v35;
              v48 = v29;
              v49 = v28;
              v50 = v39;
              v51 = v40;
              do
              {
                v52 = v49;
                v53 = v48;
                v54 = v50;
                v55 = v51;
                v56 = v16;
                do
                {
                  *v54 = *v55;
                  v55 = (v55 + v26);
                  v54 = (v54 + v27);
                  --v56;
                }

                while (v56);
                *v54 = *v55;
                v51 = (v51 + v22);
                v50 = (v50 + v24);
                ++v41;
                v49 = &v52[v22 / 4];
                v48 = &v53[v24 / 4];
              }

              while (v41 != v13);
              v57 = v16;
              do
              {
                *v53 = *v52;
                v52 = (v52 + v26);
                v53 = (v53 + v27);
                --v57;
              }

              while (v57);
              v40 = (v40 + v21 * 4);
              v39 = (v39 + v23 * 4);
              ++v36;
              v28 = (v28 + v21 * 4);
              *v53 = *v52;
              v29 = (v29 + v23 * 4);
              v38 = &v42[v21];
              v31 = &v43[v23];
              v32 = &v44[v21];
              v37 = &v45[v21];
              v34 = &v46[v23];
              v35 = &v47[v23];
            }

            while (v36 != v12);
            v58 = 0;
            do
            {
              v59 = v44;
              v60 = v45;
              v61 = v46;
              v62 = v47;
              v63 = v43;
              v64 = v42;
              v65 = v16;
              do
              {
                *v63 = *v64;
                v64 = (v64 + v26);
                v63 = (v63 + v27);
                --v65;
              }

              while (v65);
              v42 = (v42 + v22);
              v43 = (v43 + v24);
              ++v58;
              v44 = (v44 + v22);
              *v63 = *v64;
              v45 = (v45 + v22);
              v46 = &v61[v24 / 4];
              v47 = (v47 + v24);
            }

            while (v58 != v13);
            v66 = v16;
            v9 = a1;
            do
            {
              v59 = (v59 + v26);
              *v62 = *v60;
              v60 = (v60 + v26);
              v61 = (v61 + v27);
              v62 = (v62 + v27);
              --v66;
            }

            while (v66);
            a4 = (a4 + v131 * 4);
            a5 = &v141[v130];
            v67 = *v59;
            v25 = v140 + 1;
            v28 = &v139[v131];
            *v61 = v67;
            v29 = &v138[v130];
            v30 = &v137[v131];
            v31 = &v136[v130];
            v32 = &v135[v131];
            v33 = &v134[v131];
            v34 = &v133[v130];
            v35 = &v132[v130];
          }

          while (v140 + 1 != v129);
        }

        else
        {
          v102 = 0;
          v103 = &a4[v21];
          v104 = &a5[v23];
          do
          {
            v105 = 0;
            v106 = v104;
            v107 = v103;
            v108 = a5;
            v109 = a4;
            do
            {
              v110 = v107;
              v111 = v106;
              v112 = v108;
              v113 = v109;
              v114 = v13;
              do
              {
                *v112 = *v113;
                v113 = (v113 + v22);
                v112 = (v112 + v24);
                --v114;
              }

              while (v114);
              *v112 = *v113;
              v109 = (v109 + v21 * 4);
              v108 = (v108 + v23 * 4);
              ++v105;
              v107 = &v110[v21];
              v106 = &v111[v23];
            }

            while (v105 != v12);
            v115 = v13;
            do
            {
              *v111 = *v110;
              v110 = (v110 + v22);
              v111 = (v111 + v24);
              --v115;
            }

            while (v115);
            *v111 = *v110;
            a4 = (a4 + v131 * 4);
            a5 = (a5 + v130 * 4);
            ++v102;
            v103 = (v103 + v131 * 4);
            v104 = (v104 + v130 * 4);
          }

          while (v102 != v11);
        }
      }

      else
      {
        v82 = 0;
        if (v16)
        {
          v83 = 4 * v14;
          v84 = v18;
          v85 = 4 * v9[3];
          v86 = 4 * v15;
          v87 = v17;
          v88 = 4 * v9[4];
          v89 = &a4[v18];
          v90 = &a5[v87];
          do
          {
            v91 = 0;
            v92 = v90;
            v93 = v89;
            v94 = a5;
            v95 = a4;
            do
            {
              v96 = v93;
              v97 = v92;
              v98 = v94;
              v99 = v95;
              v100 = v16;
              do
              {
                *v98 = *v99;
                v99 = (v99 + v85);
                v98 = (v98 + v88);
                --v100;
              }

              while (v100);
              *v98 = *v99;
              v95 = (v95 + v84 * 4);
              v94 = (v94 + v87 * 4);
              ++v91;
              v93 = &v96[v84];
              v92 = &v97[v87];
            }

            while (v91 != v12);
            v101 = v16;
            do
            {
              *v97 = *v96;
              v96 = (v96 + v85);
              v97 = (v97 + v88);
              --v101;
            }

            while (v101);
            *v97 = *v96;
            a4 = (a4 + v83);
            a5 = (a5 + v86);
            ++v82;
            v89 = (v89 + v83);
            v90 = (v90 + v86);
          }

          while (v82 != v11);
        }

        else
        {
          v116 = 4 * v14;
          v117 = 4 * v15;
          do
          {
            v118 = a5;
            v119 = a4;
            v120 = v12;
            do
            {
              *v118 = *v119;
              v119 += v18;
              v118 += v17;
              --v120;
            }

            while (v120);
            *v118 = *v119;
            a4 = (a4 + v116);
            a5 = (a5 + v117);
            ++v82;
          }

          while (v82 != v11);
        }
      }

      goto LABEL_3;
    }

    while (!v13)
    {
      v73 = a5;
      v74 = a4;
      if (v16)
      {
        v72 = v9[3];
        v71 = v9[4];
        v74 = a4;
        v73 = a5;
LABEL_36:
        v78 = 4 * v72;
        v79 = v16;
        do
        {
          *v73 = *v74;
          v74 = (v74 + v78);
          v73 += v71;
          --v79;
        }

        while (v79);
      }

LABEL_26:
      *v73 = *v74;
      a4 += v14;
      a5 += v15;
      if (++v12 == v11)
      {
        goto LABEL_3;
      }
    }

    v69 = v9[6];
    v68 = v9[7];
    if (!v16)
    {
      v80 = 4 * v69;
      v73 = a5;
      v74 = a4;
      v81 = v13;
      do
      {
        *v73 = *v74;
        v74 = (v74 + v80);
        v73 += v68;
        --v81;
      }

      while (v81);
      goto LABEL_26;
    }

    v70 = 0;
    v72 = v9[3];
    v71 = v9[4];
    v73 = a5;
    v74 = a4;
    do
    {
      v75 = v73;
      v76 = v74;
      v77 = v16;
      do
      {
        *v75 = *v76;
        v76 += v72;
        v75 += v71;
        --v77;
      }

      while (v77);
      *v75 = *v76;
      v74 += v69;
      v73 += v68;
      ++v70;
    }

    while (v70 != v13);
    goto LABEL_36;
  }

LABEL_66:
  if (v9[11])
  {
    v121 = 0;
    do
    {
      sub_255AA4030(v9, v8, v7, a4, a5);
      a4 += v9[12];
      a5 += v9[13];
      ++v121;
    }

    while (v121 < v9[11]);
  }

  return sub_255AA4030(v9, v8, v7, a4, a5);
}

float sub_255AA4030(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = a1[8];
  v6 = a1[5];
  if (!v5)
  {
    v7 = a1[2];
    if (v6)
    {
      goto LABEL_12;
    }

    if (!v7)
    {
      goto LABEL_37;
    }

LABEL_26:
    v36 = a1[3];
    v37 = a1[4];
    do
    {
LABEL_27:
      *a5 = *a4;
      a4 += v36;
      a5 += v37;
      --v7;
    }

    while (v7);
    goto LABEL_37;
  }

  v7 = a1[2];
  v8 = a1[9];
  v9 = a1[10];
  if (v6)
  {
    v10 = a1[6];
    v11 = a1[7];
    if (!v7)
    {
      v50 = 4 * v8;
      v51 = 4 * v10;
      v52 = 4 * v9;
      v53 = 4 * v11;
      do
      {
        v54 = a5;
        v55 = a4;
        v56 = v6;
        do
        {
          *v54 = *v55;
          v55 = (v55 + v51);
          v54 = (v54 + v53);
          --v56;
        }

        while (v56);
        *v54 = *v55;
        a4 = (a4 + v50);
        a5 = (a5 + v52);
        ++v7;
      }

      while (v7 != v5);
      v32 = a1[6];
      v33 = a1[7];
      do
      {
LABEL_34:
        *a5 = *a4;
        a4 += v32;
        a5 += v33;
        --v6;
      }

      while (v6);
      goto LABEL_37;
    }

    v12 = 0;
    v13 = 4 * v8;
    v14 = v10;
    v15 = 4 * a1[3];
    v16 = 4 * v9;
    v17 = v11;
    v18 = 4 * a1[4];
    v19 = &a4[v14];
    v20 = &a5[v17];
    do
    {
      v21 = 0;
      v22 = v20;
      v23 = v19;
      v24 = a5;
      v25 = a4;
      do
      {
        v26 = v23;
        v27 = v22;
        v28 = v24;
        v29 = v25;
        v30 = v7;
        do
        {
          *v28 = *v29;
          v29 = (v29 + v15);
          v28 = (v28 + v18);
          --v30;
        }

        while (v30);
        *v28 = *v29;
        v25 = (v25 + v14 * 4);
        v24 = (v24 + v17 * 4);
        ++v21;
        v23 = &v26[v14];
        v22 = &v27[v17];
      }

      while (v21 != v6);
      v31 = v7;
      do
      {
        *v27 = *v26;
        v26 = (v26 + v15);
        v27 = (v27 + v18);
        --v31;
      }

      while (v31);
      *v27 = *v26;
      a4 = (a4 + v13);
      a5 = (a5 + v16);
      ++v12;
      v19 = (v19 + v13);
      v20 = (v20 + v16);
    }

    while (v12 != v5);
LABEL_12:
    v32 = a1[6];
    v33 = a1[7];
    if (v7)
    {
      v34 = 0;
      v35 = 4 * v32;
      v36 = a1[3];
      v37 = a1[4];
      v38 = 4 * v33;
      do
      {
        v39 = a5;
        v40 = a4;
        v41 = v7;
        do
        {
          *v39 = *v40;
          v40 += v36;
          v39 += v37;
          --v41;
        }

        while (v41);
        *v39 = *v40;
        a4 = (a4 + v35);
        a5 = (a5 + v38);
        ++v34;
      }

      while (v34 != v6);
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  if (v7)
  {
    v42 = 0;
    v43 = 4 * v8;
    v44 = 4 * a1[3];
    v45 = 4 * v9;
    v46 = 4 * a1[4];
    do
    {
      v47 = a5;
      v48 = a4;
      v49 = v7;
      do
      {
        *v47 = *v48;
        v48 = (v48 + v44);
        v47 = (v47 + v46);
        --v49;
      }

      while (v49);
      *v47 = *v48;
      a4 = (a4 + v43);
      a5 = (a5 + v45);
      ++v42;
    }

    while (v42 != v5);
    goto LABEL_26;
  }

  do
  {
    *a5 = *a4;
    a4 += v8;
    a5 += v9;
    --v5;
  }

  while (v5);
LABEL_37:
  result = *a4;
  *a5 = *a4;
  return result;
}

void sub_255AA42D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    nullsub_87(a2 + 80);
    v4 = *(a2 + 72);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2 + 56;
    }

    else
    {
      v5 = a2 + 56;
    }

    nullsub_87(v5);
  }
}

void sub_255AA4388(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    nullsub_87(a2 + 80);
    v4 = *(a2 + 72);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2 + 56;
    }

    else
    {
      v5 = a2 + 56;
    }

    nullsub_87(v5);
  }
}

uint64_t sub_255AA443C(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 152) == 1)
    {
      v2 = *(a1 + 144);
      if (v2 != -1)
      {
        (off_2867CE610[v2])(&v4, a1 + 24);
      }

      *(a1 + 144) = -1;
    }

    return a1;
  }

  else
  {
    (**a1)(a1);
    return a1;
  }
}

uint64_t sub_255AA44EC(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 128) == *(a2 + 128))
  {
    if (!*(result + 128))
    {
      return result;
    }

    v3 = *(result + 120);
    v4 = *(a2 + 120);
    if (v3 != -1)
    {
      if (v4 == -1)
      {
        result = (off_2867CE610[v3])(&v7, result, a2);
        *(v2 + 120) = -1;
        return result;
      }

LABEL_15:
      v7 = result;
      return (off_2867CE640[v4])(&v7, result, a2);
    }

    if (v4 != -1)
    {
      goto LABEL_15;
    }
  }

  else if (*(result + 128))
  {
    v5 = *(result + 120);
    if (v5 != -1)
    {
      result = (off_2867CE610[v5])(&v7, result, a2);
    }

    *(v2 + 120) = -1;
    *(v2 + 128) = 0;
  }

  else
  {
    *result = 0;
    *(result + 120) = -1;
    v6 = *(a2 + 120);
    if (v6 != -1)
    {
      v7 = result;
      result = (off_2867CE658[v6])(&v7, a2);
      *(v2 + 120) = v6;
    }

    *(v2 + 128) = 1;
  }

  return result;
}

void sub_255AA4630(uint64_t a1, _BYTE *a2)
{
  *a1 = &unk_2867C51A8;
  *(a1 + 8) = *a2;
  operator new();
}

void sub_255AA4714(_Unwind_Exception *a1)
{
  MEMORY[0x259C49320](v2, 0x1012C40EC159624);
  nullsub_87(v1);
  _Unwind_Resume(a1);
}

void sub_255AA4740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255AA4880(va);
  nullsub_87(v2);
  _Unwind_Resume(a1);
}

void sub_255AA4774(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AA47AC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255AA4810(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000255C2FDC5)
  {
    if (((v2 & 0x8000000255C2FDC5 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000255C2FDC5))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000255C2FDC5 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AA4880(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x259C49320](v1, 0x1012C40EC159624);
    return v2;
  }

  return result;
}

__n128 sub_255AA494C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867CE788;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA4984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP31e5rt_e5_compiler_config_optionsEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP31e5rt_e5_compiler_config_optionsEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP31e5rt_e5_compiler_config_optionsEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP31e5rt_e5_compiler_config_optionsEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255AA4A70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867CE808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA4AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_e5_compilerEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_e5_compilerEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_e5_compilerEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP16e5rt_e5_compilerEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255AA4B94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867CE888;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA4BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP24e5rt_e5_compiler_optionsEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP24e5rt_e5_compiler_optionsEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP24e5rt_e5_compiler_optionsEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP24e5rt_e5_compiler_optionsEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_255AA4D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_255AA4DB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3E48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA4DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP20e5rt_program_libraryEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP20e5rt_program_libraryEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP20e5rt_program_libraryEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP20e5rt_program_libraryEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255AA4ED4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867CE908;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA4F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_program_functionEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_program_functionEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_program_functionEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_program_functionEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255AA4FF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867CE988;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA5030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP42e5rt_precompiled_compute_op_create_optionsEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP42e5rt_precompiled_compute_op_create_optionsEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP42e5rt_precompiled_compute_op_create_optionsEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP42e5rt_precompiled_compute_op_create_optionsEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **sub_255AA50A8(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_255AA548C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9C134(va);
  _Unwind_Resume(a1);
}

void sub_255AA54A4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    __n = 2;
  }

  else if ((__n & (__n - 1)) != 0)
  {
    v2 = a1;
    __n = std::__next_prime(__n);
    a1 = v2;
  }

  v3 = *(a1 + 8);
  if (__n > *&v3)
  {
    goto LABEL_6;
  }

  if (__n >= *&v3)
  {
    return;
  }

  v4 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
  if (*&v3 < 3uLL || (v5 = vcnt_s8(v3), v5.i16[0] = vaddlv_u8(v5), v5.u32[0] > 1uLL))
  {
    v7 = a1;
    v8 = __n;
    prime = std::__next_prime(v4);
    a1 = v7;
    if (v8 <= prime)
    {
      __n = prime;
    }

    else
    {
      __n = v8;
    }

    if (__n >= *&v3)
    {
      return;
    }

LABEL_6:

    sub_255B61FE8(a1, __n);
    return;
  }

  v6 = 1 << -__clz(v4 - 1);
  if (v4 >= 2)
  {
    v4 = v6;
  }

  if (__n <= v4)
  {
    __n = v4;
  }

  if (__n < *&v3)
  {
    goto LABEL_6;
  }
}

void sub_255AA55D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867C3970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t **sub_255AA5630(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_255AA5B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A966F4(va);
  _Unwind_Resume(a1);
}

void sub_255AA5B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A966F4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_255AA5B30(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

__n128 sub_255AA5D5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA5D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_execution_streamEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_execution_streamEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_execution_streamEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP21e5rt_execution_streamEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_255AA5E0C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      do
      {
        v4 = *v2;
        sub_255A93D64((v2 + 5));
        if (*(v2 + 39) < 0)
        {
          operator delete(v2[2]);
        }

        operator delete(v2);
        v2 = v4;
      }

      while (v4);
    }

    *(a1 + 16) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      bzero(*a1, 8 * v3);
    }

    *(a1 + 24) = 0;
  }
}

void sub_255AA5F20(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_255AA5F58(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867C3900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AA5FD4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_255AA54A4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_255AA605C(a1, (i + 2));
  }

  return a1;
}

uint64_t **sub_255AA605C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_255AA6460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9C134(va);
  _Unwind_Resume(a1);
}

void sub_255AA6474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9C134(va);
  _Unwind_Resume(a1);
}

size_t sub_255AA648C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE6D8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

_BYTE *sub_255AA6590(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255AA6990(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255AA6690(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE6D8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255AA6784(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CE6D8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255AA6944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255AA6990(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255AA6B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_255AA6B50(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255AA6F50(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255AA6C50(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE6D8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255AA6D44(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CE6D8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255AA6F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255AA6F50(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255AA70EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255AA7100(const char **a1@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, const std::string::value_type *a4@<X4>, std::string::size_type a5@<X5>, std::string *a6@<X8>)
{
  v11 = a1 - a3;
  v30 = *MEMORY[0x277D85DE8];
  if (v11 >= -1)
  {
    v12 = -1;
  }

  else
  {
    v12 = a1 - a3;
  }

  *&v29 = a1;
  *(&v29 + 1) = a2;
  if (a1 == a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v19 = a1;
    do
    {
      sub_255AA7398(&v29 + 8, v19);
      if ((v27 & 0x80u) == 0)
      {
        v20 = v27;
      }

      else
      {
        v20 = v26;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        operator delete(__p);
      }

      v13 += v20;
      v19 = (v29 + 8);
      *&v29 = v19;
    }

    while (v19 != a3);
  }

  v14 = v13 + a5 * ~v12;
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v14 >= 0x17)
  {
    v15 = v14 | 7;
    if (v15 == 23)
    {
      v16 = 24;
    }

    else
    {
      v16 = v15;
    }

    sub_255A7F3EC(a6, v16);
  }

  *&v29 = a1;
  *(&v29 + 1) = a2;
  if (v11 < 0)
  {
    sub_255AA7398(&v29 + 8, a1);
    if ((v27 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v18 = v27;
    }

    else
    {
      v18 = v26;
    }

    std::string::append(a6, p_p, v18);
    if (v27 < 0)
    {
      operator delete(__p);
      if ((v11 + 1) < 2)
      {
        goto LABEL_41;
      }
    }

    else if ((v11 + 1) < 2)
    {
      goto LABEL_41;
    }

    *&v29 = v29 + 8;
    for (i = v29; i != a3; *&i = i + 8)
    {
      std::string::append(a6, a4, a5);
      sub_255AA7398(&i + 8, i);
      if ((v27 & 0x80u) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v22 = v27;
      }

      else
      {
        v22 = v26;
      }

      std::string::append(a6, v21, v22);
      if (v27 < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_41:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_255AA7348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255AA7398(uint64_t a1, const char **a2)
{
  v4 = 0;
  if (*a2)
  {
    sub_255AA748C(v3, a2);
  }

  else
  {
    v5[0] = v3;
    v5[1] = "nullptr";
    v5[2] = v3;
    v5[3] = "nullptr";
    v5[4] = "nullptr";
    v6 = v5;
    sub_255A80890(&v6);
  }

  if (v4 == -1)
  {
    sub_255A7C284();
  }

  v5[0] = &v6;
  result = (off_2867CE750[v4])(v5, v3);
  if (v4 != -1)
  {
    return (off_2867CE6D8[v4])(v5, v3);
  }

  return result;
}

uint64_t sub_255AA748C(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    (off_2867CE6D8[v4])(&v9, a1);
  }

  *(a1 + 24) = -1;
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = 1;
  return a1;
}

__n128 sub_255AA75FC(uint64_t a1, uint64_t a2)
{
  *a2 = &off_2867C3FA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA7634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP12e5rt_io_portEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP12e5rt_io_portEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP12e5rt_io_portEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP12e5rt_io_portEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_255AA76AC@<W0>(_BOOL8 result@<X0>, _BYTE *a2@<X8>)
{
  v5 = result;
  if (result)
  {
    v3 = result;
    TypeID = j__CFArrayGetTypeID();
    result = sub_255C02598(&v5, TypeID);
    if (result)
    {
      j__CFRetain(v3);
      sub_255A95624(&v5, v3);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_255AA7860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_255AA790C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3CE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255AA7954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPNS_3kit2ml20EspressoV2StreamPoolERP21e5rt_execution_streamEJS8_SB_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPNS_3kit2ml20EspressoV2StreamPoolERP21e5rt_execution_streamEJS8_SB_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPNS_3kit2ml20EspressoV2StreamPoolERP21e5rt_execution_streamEJS8_SB_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPNS_3kit2ml20EspressoV2StreamPoolERP21e5rt_execution_streamEJS8_SB_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **sub_255AA79CC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_255AA7DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9C134(va);
  _Unwind_Resume(a1);
}

void sub_255AA7DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9C134(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_255AA7DFC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_255AA7FB4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_255AA816C(int a1)
{
  if (a1)
  {
    v1 = v4;
    v3 = 1701602414;
    v2 = 12;
  }

  else
  {
    v1 = &v3 + 1;
    v2 = 9;
  }

  *v1 = 0;
  v4[11] = v2;
  operator new();
}

void sub_255AA8480(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  __cxa_free_exception(v28);
  if (a9 == 1 && a8 < 0)
  {
    operator delete(__p);
  }

  sub_255A7F000(&a11, MEMORY[0x277D82818]);
  MEMORY[0x259C49250](va);
  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_255AA8514(uint64_t a1@<X0>, std::string::size_type a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v5 = a4;
  v9 = (*(*a1 + 16))(a1, a3, a4);
  if (!v9 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Resource/src/Resource.mm", 96, "bundle", 6uLL, &unk_255C2500B, 0, sub_255C101E0) || ([v9 bundlePath], (v14 = objc_claimAutoreleasedReturnValue()) == 0) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Resource/src/Resource.mm", 98, "bundle_path", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0) || (objc_msgSend(v9, "resourcePath", v14), (v10 = objc_claimAutoreleasedReturnValue()) == 0) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Resource/src/Resource.mm", 100, "resources_path", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0))
  {
    abort();
  }

  v11 = [v10 UTF8String];
  v12 = strlen(v11);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v17 = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  *(&__dst + v13) = 0;
  sub_255AA8808(&__dst);
  sub_255AA8960(a5, &__dst, a2, a3, v5);
  if (v17 < 0)
  {
    operator delete(__dst);
  }
}

void sub_255AA87C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AA8808(const void **a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = *(a1 + 23);
  }

  else
  {
    v1 = a1[1];
  }

  if (v1 + 10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v1 + 10 >= 0x17)
  {
    operator new();
  }

  memset(&v3, 0, sizeof(v3));
  *(&v3.__pn_.__r_.__value_.__s + 23) = v1 + 10;
  if (v1)
  {
    if (*(a1 + 23) >= 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = *a1;
    }

    memmove(&v3, v2, v1);
  }

  strcpy(&v3 + v1, "/.disabled");
  v4 = v3;
  std::__fs::filesystem::__status(&v4, 0);
  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_255AA8944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AA8960(std::string *a1, std::string::size_type a2, std::string::size_type a3, void *a4, char a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  v23.__pn_.__r_.__value_.__r.__words[0] = v9;
  v23.__pn_.__r_.__value_.__l.__size_ = v8;
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  v23.__pn_.__r_.__value_.__r.__words[2] = v11;
  v24 = v10;
  sub_255A7F250(&v23, &v25, "/", 1uLL, &__p);
  memset(&v23, 0, sizeof(v23));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_255AA8D4C(&v23.__pn_, p_p, (p_p + size));
  std::__fs::filesystem::__status(&v23, 0);
  v14 = v22;
  if (SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__pn_.__r_.__value_.__l.__data_);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = v22;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

  if (v15 != 255)
  {
    *a1 = __p;
    a1[1].__r_.__value_.__s.__data_[0] = 1;
    goto LABEL_32;
  }

LABEL_21:
  if (a5)
  {
    v16 = sub_255A7F9C8(a4, "Resource at '", 13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    v19 = sub_255A7F9C8(v16, v17, v18);
    sub_255A7F9C8(v19, "' does not exist.", 17);
  }

  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_255AA8B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_255AA8BA0(uint64_t a1, void *a2, char a3)
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 8)];
  if (v5 || (a3 & 1) == 0)
  {
    goto LABEL_2;
  }

  v12 = 0;
  v13[0] = v11;
  v13[1] = "Could not access bundle location";
  v13[2] = v11;
  v13[3] = "Could not access bundle location";
  v13[4] = "Could not access bundle location";
  v14 = v13;
  sub_255AA9164(&v14);
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v13[0] = &v14;
  (off_2867CEAD0[v12])(__p, v13, v11);
  if (v12 != -1)
  {
    (off_2867CEAB8[v12])(v13, v11);
  }

  v7 = (v10 & 0x80u) == 0 ? __p : __p[0];
  v8 = (v10 & 0x80u) == 0 ? v10 : __p[1];
  sub_255A7F9C8(a2, v7, v8);
  v5 = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v5 = 0;
  }

  else
  {
LABEL_2:
  }

  return v5;
}

void sub_255AA8CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AA8D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

void sub_255AA8D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

std::string *sub_255AA8D4C(std::string *this, std::string *a2, std::string *a3)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v6 = v10 >> 63;
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v9 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v9->__r_.__value_.__l.__data_ + size + 1) > a2)
  {
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v19 = a3 - a2;
    if (a3 != a2)
    {
      memcpy(__dst, a2, v5);
    }

    *(__dst + v5) = 0;
    if ((v19 & 0x80u) == 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __dst[1];
    }

    std::string::append(this, v15, v16);
    if (v19 < 0)
    {
      operator delete(__dst[0]);
    }

    return this;
  }

LABEL_12:
  if (v7 - size < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v7 >= v5 + size - v7)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      operator new();
    }

LABEL_35:
    sub_255A7BCA8();
  }

  v12 = this;
  if (v6)
  {
    v12 = this->__r_.__value_.__r.__words[0];
  }

  v13 = v12 + size;
  if (a3 != a2)
  {
    memmove(v12 + size, a2, v5);
  }

  v13[v5] = 0;
  v14 = v5 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  return this;
}

void sub_255AA8FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_255AA8FFC()
{
  sub_255C09444(__p);
  if ((v7 & 1) == 0 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Resource/src/Resource.mm", 120, "wrapper_path", 0xCuLL, &unk_255C2500B, 0, sub_255C101E0) || ((v0 = MEMORY[0x277CCA8D8], v6 >= 0) ? (v1 = __p) : (v1 = __p[0]), ([MEMORY[0x277CCACA8] stringWithUTF8String:v1], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "bundleWithPath:", v2), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Resource/src/Resource.mm", 123, "bundle", 6uLL, &unk_255C2500B, 0, sub_255C101E0)))
  {
    abort();
  }

  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_255AA9128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_255AA9164(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CEAB8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255AA9258(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_27F7DCDB0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(qword_27F7DCDB0))
  {
    *a1 = qword_27F7DCDA8;
  }

  else
  {
    sub_255AA92E4();
    __cxa_guard_release(qword_27F7DCDB0);
    *a1 = qword_27F7DCDA8;
  }
}

void *sub_255AA92E4()
{
  sub_255AAD130(&qword_27F7DCDA8);
  __p[0] = qword_27F7DCDA8;
  v0 = sub_255AACC1C(__p);
  v5 = qword_27F7DCDA8;
  v4 = 7;
  strcpy(__p, "cv3dapi");
  v1 = sub_255AACC28(&v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_255AAC418(v0);
  sub_255AAC61C(v0, 6);
  return sub_255AAC61C(v1, 6);
}

void sub_255AA9398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255AA93B4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *result = a2;
  result[1] = a3;
  if (v3)
  {
    std::mutex::~mutex((v3 + 56));
    v4 = *(v3 + 32);
    if (v4)
    {
      do
      {
        v6 = *v4;
        v7 = *(v4 + 5);
        *(v4 + 5) = 0;
        if (v7)
        {
          sub_255AAE1A0((v4 + 40), v7);
        }

        if (v4[39] < 0)
        {
          operator delete(*(v4 + 2));
        }

        operator delete(v4);
        v4 = v6;
      }

      while (v6);
    }

    v5 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    sub_255AA947C((v3 + 8));

    JUMPOUT(0x259C49320);
  }

  return result;
}

void *sub_255AA947C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::~mutex((v1 + 56));
    v3 = *(v1 + 32);
    if (v3)
    {
      do
      {
        v5 = *v3;
        v6 = *(v3 + 5);
        *(v3 + 5) = 0;
        if (v6)
        {
          sub_255AAE1A0((v3 + 40), v6);
        }

        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v5;
      }

      while (v5);
    }

    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    sub_255AA947C(v1 + 8);
    MEMORY[0x259C49320](v1, 0x10A0C400EF86968);
    return v2;
  }

  return result;
}

uint64_t sub_255AA9530(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v16 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    operator new();
  }

  v14 = 0;
  va_copy(__dst, va);
  v3 = vsnprintf(__str, 0x200uLL, __format, va);
  if (v3 >= 0x200)
  {
    operator new();
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v3 >= 0x17)
  {
    operator new();
  }

  v13 = v3;
  if (v3)
  {
    memmove(__dst, __str, v3);
  }

  *(__dst + v4) = 0;
  if ((v13 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __dst[1];
  }

  sub_255A7F9C8((v5 + 16), v6, v7);
  if (v13 < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = v14;
  if (v14)
  {
    v9 = *v14;
    if (*v14)
    {
      *(v14 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x259C49320](v8, 0x10C402FEFCB83);
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255AA9990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255AADF7C(va);
  _Unwind_Resume(a1);
}

void sub_255AA99A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_255AADF7C(&a17);
    _Unwind_Resume(a1);
  }

  sub_255AADF7C(&a17);
  _Unwind_Resume(a1);
}

void sub_255AA9A44(uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 31) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  operator new();
}

void sub_255AA9C20(_Unwind_Exception *a1)
{
  sub_255A7A508(v2);
  sub_255AA9F24((v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_255AA9CAC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 72);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255AAF22C();
}

void sub_255AA9E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255AA9E64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255AA9E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B0A26C(va);
  _Unwind_Resume(a1);
}

void *sub_255AA9E8C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_255AAE090(v1 + 128, *(v1 + 136));
    std::mutex::~mutex((v1 + 64));
    sub_255AAE090(v1 + 40, *(v1 + 48));
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v1;
    *v1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x259C49320](v1, 0x10A0C40AA1AA5A8);
    return v2;
  }

  return result;
}

void *sub_255AA9F24(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    MEMORY[0x259C49320](v2, 0x30C40EEE2E2AFLL);
    return v3;
  }

  return v1;
}

uint64_t sub_255AA9FCC(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_255A7E018((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  v9 = *(a4 + 56);
  *(a1 + 48) = *(a4 + 48);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  v10 = *a5;
  if (!*a5)
  {
    operator new();
  }

  *a5 = 0;
  *(a1 + 72) = v10;
  return a1;
}

void sub_255AAA0DC(_Unwind_Exception *a1)
{
  sub_255A7A508(v3);
  sub_255AA9F24(v4);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255AAA108(uint64_t ***a1, uint64_t a2)
{
  v4 = *a1;
  std::mutex::lock((*a1 + 7));
  v5 = *(a2 + 23);
  v6 = v5;
  v7 = *a2;
  v8 = *(a2 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v10 = 0;
  while (v9[v10] == 46)
  {
    if (v5 == ++v10)
    {
      goto LABEL_15;
    }
  }

  if (v10 == -1)
  {
LABEL_15:
    v11 = **a1;
  }

  else
  {
    if (sub_255AAAB34(a2))
    {
      if (v6 < 0)
      {
        sub_255A7E018(&v14, v7, v8);
      }

      else
      {
        v14 = *a2;
        v15 = *(a2 + 16);
      }
    }

    else
    {
      sub_255AAACE0(a2, &v14);
    }

    v13 = sub_255AAF9B4(v4 + 2, &v14);
    if (!v13)
    {
      operator new();
    }

    v11 = v13[5];
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }
  }

  std::mutex::unlock((v4 + 7));
  return v11;
}

void sub_255AAA9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  v41 = a30;
  a30 = 0;
  if (v41)
  {
    sub_255AAE1A0(&a30, v41);
  }

  sub_255AA9E8C((v39 - 136));
  sub_255BC15AC(&a36);
  MEMORY[0x259C49320](v37, v36);
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  std::mutex::unlock((v38 + 56));
  _Unwind_Resume(a1);
}

BOOL sub_255AAAB34(_BYTE *__s)
{
  v1 = __s[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (__s[23])
    {
      v2 = __s;
      v3 = __s[23];
      goto LABEL_6;
    }

    return 1;
  }

  v3 = *(__s + 1);
  if (!v3)
  {
    return 1;
  }

  v2 = *__s;
LABEL_6:
  v4 = 0;
  while (v2[v4] != 46)
  {
    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  if (v3 != v4 && !v4)
  {
    return 0;
  }

LABEL_13:
  v7 = *__s;
  v6 = *(__s + 1);
  if (v1 >= 0)
  {
    v8 = __s;
  }

  else
  {
    v8 = *__s;
  }

  if (v1 >= 0)
  {
    v9 = __s[23];
  }

  else
  {
    v9 = *(__s + 1);
  }

  v10 = v9;
  while (v10)
  {
    v11 = v8[--v10];
    if (v11 == 46)
    {
      if ((v1 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

  v10 = -1;
  if ((v1 & 0x80000000) == 0)
  {
LABEL_23:
    v7 = __s;
    v6 = __s[23];
    if (v10 == v1 - 1)
    {
      return 0;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (v10 == v6 - 1)
  {
    return 0;
  }

LABEL_28:
  if (v6 >= 2)
  {
    v12 = &v7[v6];
    v13 = v7;
    do
    {
      v14 = memchr(v13, 46, v6 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 != v12 && v14 - v7 != -1)
        {
          return 0;
        }

        break;
      }

      v13 = v14 + 1;
      v6 = v12 - v13;
    }

    while (v12 - v13 >= 2);
  }

  if (!v9)
  {
    return 1;
  }

  v15 = 0;
  while (memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", v8[v15], 0x40uLL))
  {
    if (v9 == ++v15)
    {
      return 1;
    }
  }

  return v15 == -1;
}

void sub_255AAACE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_255AAAB34(a1))
  {
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
      v5 = *(a1 + 8);

      sub_255A7E018(a2, v4, v5);
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
    }

    return;
  }

  if (*(a1 + 23) < 0)
  {
    sub_255A7E018(&v78, *a1, *(a1 + 8));
  }

  else
  {
    v78 = *a1;
    v79 = *(a1 + 16);
  }

LABEL_10:
  v6 = HIBYTE(v79);
  v7 = *(&v78 + 1);
  v8 = v78;
  if (v79 >= 0)
  {
    v9 = &v78;
  }

  else
  {
    v9 = v78;
  }

  if (v79 >= 0)
  {
    v10 = HIBYTE(v79);
  }

  else
  {
    v10 = *(&v78 + 1);
  }

  if (v10 >= 2)
  {
    v11 = v9 + v10;
    v12 = v10;
    v13 = v9;
    do
    {
      v14 = memchr(v13, 46, v12 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 == v11)
        {
          break;
        }

        v15 = v14 - v9;
        if (v14 - v9 == -1)
        {
          break;
        }

        if (v10 < v15)
        {
          sub_255A93C24();
        }

        sub_255AAEBEC(&v78, v15, 1uLL);
        goto LABEL_10;
      }

      v13 = (v14 + 1);
      v12 = v11 - v13;
    }

    while (v11 - v13 >= 2);
  }

  if (v10)
  {
    v16 = 0;
    while (*(v9 + v16) != 46)
    {
      if (v10 == ++v16)
      {
        goto LABEL_34;
      }
    }

    if (v10 != v16 && !v16)
    {
      sub_255AAEBEC(&v78, 0, 1uLL);
      v6 = HIBYTE(v79);
      v7 = *(&v78 + 1);
      v8 = v78;
    }
  }

LABEL_34:
  if ((v6 & 0x80u) == 0)
  {
    v17 = &v78;
  }

  else
  {
    v17 = v8;
  }

  if ((v6 & 0x80u) == 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = v7;
  }

  v19 = v17 - 1;
  while (v18)
  {
    v20 = v19[v18--];
    if (v20 == 46)
    {
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_44;
      }

LABEL_47:
      if (v18 == v7 - 1)
      {
        goto LABEL_48;
      }

LABEL_51:
      v21 = *(&v78 + 1);
      if (*(&v78 + 1))
      {
        v22 = v78;
        goto LABEL_53;
      }

LABEL_60:
      *(a2 + 23) = 0;
      *a2 = 0;
      if ((v6 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_161;
    }
  }

  v18 = -1;
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v7 = v6;
  if (v18 == v6 - 1)
  {
LABEL_48:
    sub_255AAEBEC(&v78, v7, 1uLL);
    LODWORD(v6) = HIBYTE(v79);
    if (SHIBYTE(v79) < 0)
    {
      goto LABEL_51;
    }
  }

  if (!v6)
  {
    goto LABEL_60;
  }

  v21 = v6;
  v22 = &v78;
LABEL_53:
  v23 = (v22 + v21);
  v24 = v21 - 1;
  while (1)
  {
    v25 = memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", *v22, 0x40uLL);
    if (!v25 || v25 - "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_." == -1)
    {
      break;
    }

    v22 = (v22 + 1);
    --v24;
    if (v22 == v23)
    {
      goto LABEL_73;
    }
  }

  if (v22 == v23 || (v22 + 1) == v23)
  {
    v23 = v22;
  }

  else
  {
    v27 = 1;
    v23 = v22;
    do
    {
      v28 = *(v22 + v27);
      v29 = memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", v28, 0x40uLL);
      if (v29)
      {
        v30 = v29 - "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_." == -1;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        *v23 = v28;
        v23 = (v23 + 1);
      }

      ++v27;
      --v24;
    }

    while (v24);
    LODWORD(v6) = HIBYTE(v79);
  }

LABEL_73:
  v32 = *(&v78 + 1);
  v31 = v78;
  if ((v6 & 0x80u) == 0)
  {
    v33 = &v78 + v6;
  }

  else
  {
    v33 = (v78 + *(&v78 + 1));
  }

  if ((v6 & 0x80u) == 0)
  {
    v34 = &v78;
  }

  else
  {
    v34 = v78;
  }

  if ((v6 & 0x80u) == 0)
  {
    v32 = v6;
  }

  v35 = v23 - v34;
  if (v32 < v23 - v34)
  {
    sub_255A93C24();
  }

  if (v33 - v23 == -1)
  {
    if ((v6 & 0x80) != 0)
    {
      *(&v78 + 1) = v23 - v34;
    }

    else
    {
      HIBYTE(v79) = v35 & 0x7F;
      v31 = &v78;
    }

    *(v31 + v35) = 0;
  }

  else
  {
    sub_255AAEBEC(&v78, v35, v33 - v23);
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_255AAB63C(v63, &v78, 24);
  __p[0] = 0;
  __p[1] = 0;
  v62 = 0;
  while (1)
  {
    v37 = sub_255AAB900(v63, __p, 0x2Eu);
    if ((*(v37 + *(*v37 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v38 = v76;
    if (v76 < v77)
    {
      if (SHIBYTE(v62) < 0)
      {
        sub_255A7E018(v76, __p[0], __p[1]);
      }

      else
      {
        v36 = *__p;
        v76[2] = v62;
        *v38 = v36;
      }

      v76 = v38 + 3;
    }

    else
    {
      v76 = sub_255A997FC(&v75, __p);
    }
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

  v63[0] = *MEMORY[0x277D82818];
  v39 = v63[0];
  v40 = *(MEMORY[0x277D82818] + 72);
  v41 = *(MEMORY[0x277D82818] + 64);
  *(v63 + *(v63[0] - 24)) = v41;
  v42 = v40;
  v64 = v40;
  v65 = MEMORY[0x277D82878] + 16;
  if (v71 < 0)
  {
    operator delete(v70);
  }

  v65 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v66);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v74);
  v43 = HIBYTE(v79);
  if (v79 < 0)
  {
    v43 = *(&v78 + 1);
  }

  if (v43)
  {
    sub_255A7EBE8(v63);
    v44 = v75;
    v45 = v76;
    if (v75 != v76)
    {
      if (*(v75 + 23) < 0)
      {
        sub_255A7E018(__p, *v75, v75[1]);
      }

      else
      {
        v46 = *v75;
        v62 = v75[2];
        *__p = v46;
      }

      if (SHIBYTE(v62) >= 0)
      {
        v48 = HIBYTE(v62);
      }

      else
      {
        v48 = __p[1];
      }

      if (v48)
      {
        if (SHIBYTE(v62) >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        sub_255A7F9C8(&v64, v49, v48);
      }

      else
      {
        sub_255A7F9C8(&v64, "_", 1);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
      }

      v50 = v44 + 3;
      if ((v44 + 24) != v45)
      {
        do
        {
          if (*(v50 + 23) < 0)
          {
            sub_255A7E018(__p, *v50, v50[1]);
          }

          else
          {
            v51 = *v50;
            v62 = v50[2];
            *__p = v51;
          }

          sub_255A7F9C8(&v64, ".", 1);
          if (SHIBYTE(v62) >= 0)
          {
            v52 = HIBYTE(v62);
          }

          else
          {
            v52 = __p[1];
          }

          if (v52)
          {
            if (SHIBYTE(v62) >= 0)
            {
              v53 = __p;
            }

            else
            {
              v53 = __p[0];
            }

            sub_255A7F9C8(&v64, v53, v52);
          }

          else
          {
            sub_255A7F9C8(&v64, "_", 1);
          }

          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }

          v50 += 3;
        }

        while (v50 != v45);
      }
    }

    if ((v73 & 0x10) != 0)
    {
      v55 = v72;
      if (v72 < v69)
      {
        v72 = v69;
        v55 = v69;
      }

      v56 = &v68;
    }

    else
    {
      if ((v73 & 8) == 0)
      {
        v54 = 0;
        *(a2 + 23) = 0;
        goto LABEL_150;
      }

      v56 = v67;
      v55 = v67[2];
    }

    v57 = *v56;
    v54 = v55 - *v56;
    if (v54 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    if (v54 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v54;
    if (v54)
    {
      memmove(a2, v57, v54);
    }

LABEL_150:
    *(a2 + v54) = 0;
    v63[0] = v39;
    *(v63 + *(v39 - 24)) = v41;
    v64 = v42;
    v65 = MEMORY[0x277D82878] + 16;
    if (v71 < 0)
    {
      operator delete(v70);
    }

    v65 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v66);
    std::iostream::~basic_iostream();
    MEMORY[0x259C49250](v74);
    v47 = v75;
    if (!v75)
    {
      goto LABEL_160;
    }

    goto LABEL_153;
  }

  *(a2 + 23) = 1;
  *a2 = 95;
  v47 = v75;
  if (v75)
  {
LABEL_153:
    v58 = v76;
    v59 = v47;
    if (v76 != v47)
    {
      do
      {
        v60 = *(v58 - 1);
        v58 -= 3;
        if (v60 < 0)
        {
          operator delete(*v58);
        }
      }

      while (v58 != v47);
      v59 = v75;
    }

    v76 = v47;
    operator delete(v59);
  }

LABEL_160:
  if ((v79 & 0x8000000000000000) == 0)
  {
    return;
  }

LABEL_161:
  operator delete(v78);
}

void sub_255AAB5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_255A78E78(&a16);
  sub_255B59860((v16 - 136));
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255AAB63C(uint64_t *a1, __int128 *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_255AAFB6C((a1 + 3), a2, a3);
  return a1;
}

void sub_255AAB8CC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v1);
  _Unwind_Resume(a1);
}

void *sub_255AAB900(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x259C48F50](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_255AABA64(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x255AABA24);
  }

  __cxa_rethrow();
}

uint64_t sub_255AABAF4(char *a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 1);
    if (v3 <= v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = a1[23];
    if (v3 <= v4)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 1;
  }

  if (v2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9)
  {
    if (v3 >= v9)
    {
      v10 = &v7[v3];
      v11 = *v8;
      v12 = v3;
      v13 = v7;
      while (1)
      {
        v14 = v12 - v9;
        if (v14 == -1)
        {
          break;
        }

        result = memchr(v13, v11, v14 + 1);
        if (!result)
        {
          return result;
        }

        v15 = result;
        result = memcmp(result, v8, v9);
        if (!result)
        {
          if (v15 == v10 || v15 != v7)
          {
            return result;
          }

          goto LABEL_30;
        }

        result = 0;
        v13 = (v15 + 1);
        v12 = &v10[-v15 - 1];
        if (v12 < v9)
        {
          return result;
        }
      }
    }

    return 0;
  }

LABEL_30:
  if (v7[v9] != 46 || v3 <= v9 + 1)
  {
    return 0;
  }

  while (v7[v9 + 1] == 46)
  {
    result = 0;
    if (v3 - 1 == ++v9)
    {
      return result;
    }
  }

  return v9 != -2;
}

BOOL sub_255AABC8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  std::mutex::lock(v4 + 1);
  std::mutex::lock((a1 + 64));
  v5 = *(a2 + 72);
  v6 = *(v5 + 128);
  if (v6 != v5 + 136)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    sub_255AAF22C();
  }

  v9 = *(a1 + 152) != 0;
  std::mutex::unlock((a1 + 64));
  std::mutex::unlock(v4 + 1);
  return v9;
}

void sub_255AABEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_255B0A26C(va2);
  sub_255A7A508(va1);
  sub_255A7A508(va);
  std::mutex::unlock(v2 + 1);
  std::mutex::unlock(v3 + 1);
  _Unwind_Resume(a1);
}

void sub_255AABEEC(std::mutex *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_255AAE2C4(a1, &v5);
  }

  std::mutex::lock(a1 + 1);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = v4;
  v9 = v4;
  v6 = 0;
  v7 = 0;
  sub_255AAF22C();
}

void sub_255AAC088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_255B0A26C(va1);
  sub_255A7A508(va);
  std::mutex::unlock(v4 + 1);
  _Unwind_Resume(a1);
}

void *sub_255AAC0C0(void *result, uint64_t a2)
{
  v2 = *(*(a2 + 72) + 16);
  if (v2)
  {
    v3 = result;
    v4 = result[1];
    v5 = *(*(v2 + 16) + 72);
    v6[0] = *v3;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_255AABEEC(v5, v6, 0);
  }

  return result;
}

uint64_t **sub_255AAC1AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  result = v4[6];
  if (result)
  {
    v7 = v4 + 6;
    v8 = v4[6];
    do
    {
      v9 = v8[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 == v4 + 6)
    {
      return 0;
    }

    else if (v7[4] <= a2)
    {
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        v14 = v7;
        do
        {
          v13 = v14[2];
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (v4[5] == v7)
      {
        v4[5] = v13;
      }

      --v4[7];
      sub_255AAF524(result, v7);
      v17 = v7[6];
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      operator delete(v7);
      v18 = *(a1 + 72);
      if (a3)
      {
        sub_255AAE3B4(*(a1 + 72), a2);
        v19 = *(v18 + 152);
      }

      else
      {
        std::mutex::lock((v18 + 64));
        sub_255AAE3B4(v18, a2);
        v19 = *(v18 + 152);
        std::mutex::unlock((v18 + 64));
      }

      *(a1 + 64) = v19 != 0;
      v20 = a2;
      sub_255AAC37C(&v20, a1);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255AAC37C(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 72) + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      v5 = *v3;
      v6 = *(v4 + 72);
      std::mutex::lock((v6 + 64));
      sub_255AAE3B4(v6, v5);
      v7 = *(v6 + 152);
      std::mutex::unlock((v6 + 64));
      *(v4 + 64) = v7 != 0;
      result = sub_255AAC37C(v3, v2[2]);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_255AAC418(void *a1)
{
  v2 = *a1;
  std::mutex::lock((*a1 + 56));
  v4 = (a1[9] + 64);
  std::mutex::lock(v4);
  while (1)
  {
    v3 = a1[9];
    if (!*(v3 + 56))
    {
      break;
    }

    sub_255AAC1AC(a1, *(*(v3 + 40) + 32), &v4);
  }

  std::mutex::unlock(v4);
  std::mutex::unlock((v2 + 56));
}

void sub_255AAC4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  std::mutex::unlock(a10);
  std::mutex::unlock((v10 + 56));
  _Unwind_Resume(a1);
}

unint64_t sub_255AAC4C0(uint64_t a1, const char *a2, int a3, unint64_t a4)
{
  v8 = *(a1 + 72);
  std::mutex::lock(v8 + 1);
  v9 = 40;
  if (a3)
  {
    v9 = 128;
  }

  v10 = (*(a1 + 72) + v9);
  if (!a4)
  {
    goto LABEL_14;
  }

  v11 = v10[1];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v10 + 1;
  do
  {
    v13 = v11[4];
    v14 = v13 >= a4;
    v15 = v13 < a4;
    if (v14)
    {
      v12 = v11;
    }

    v11 = v11[v15];
  }

  while (v11);
  if (v12 == v10 + 1 || (v16 = v12[4], v16 > a4))
  {
LABEL_14:
    if (!a2)
    {
      goto LABEL_25;
    }

    v19 = *v10;
    v18 = v10 + 1;
    v17 = v19;
    if (v19 != v18)
    {
      while (1)
      {
        v20 = (*(*v17[4] + 24))(v17[4]);
        if (v20 == a2 || !strcmp(v20, a2))
        {
          break;
        }

        v21 = v17[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v17[2];
            v23 = *v22 == v17;
            v17 = v22;
          }

          while (!v23);
        }

        v17 = v22;
        if (v22 == v18)
        {
          goto LABEL_25;
        }
      }
    }

    if (v17 == v18)
    {
LABEL_25:
      v16 = 0;
    }

    else
    {
      v16 = v17[4];
    }
  }

  std::mutex::unlock(v8 + 1);
  return v16;
}

void *sub_255AAC61C(void *result, int a2)
{
  v2 = result[5];
  if (!v2)
  {
    std::mutex::lock((*result + 56));
    operator new();
  }

  **v2 = a2;
  return result;
}

void sub_255AACA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (a11 == a10)
  {
    v13 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = __p;
    if (!__p)
    {
LABEL_3:
      std::mutex::unlock((v11 + 56));
      _Unwind_Resume(a1);
    }
  }

  operator delete(v13);
  std::mutex::unlock((v11 + 56));
  _Unwind_Resume(a1);
}

void sub_255AACAEC(_Unwind_Exception *a1)
{
  MEMORY[0x259C49320](v2, 0x1000C4052888210);
  MEMORY[0x259C49320](v1, 0x30C40EEE2E2AFLL);
  std::mutex::unlock((v3 + 56));
  _Unwind_Resume(a1);
}

void sub_255AACB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255BC23F4(&a9);
  std::mutex::unlock((v9 + 56));
  _Unwind_Resume(a1);
}

uint64_t sub_255AACB68(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  v3 = *(v2 + 128);
  v4 = (v2 + 136);
  if (v3 != (v2 + 136))
  {
    do
    {
      result = v3[5];
      if (*(result + 8) == 1)
      {
        result = (*(*result + 16))(result, a2);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_255AAD024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  MEMORY[0x259C49320](v25, 0x1093C402D7449D9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C49320](v23, v24);
  _Unwind_Resume(a1);
}

uint64_t sub_255AAD0F0(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void *sub_255AAD134@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 48))(&v4);
  *a2 = v4;
  return result;
}

void sub_255AAD18C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AAD204(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a2 / 1000 % 1000;
  if (v3 >= 0)
  {
    v4 = *a2 / 1000 % 1000;
  }

  else
  {
    v4 = v3 + 1000;
  }

  *&__t.tm_sec = *a2 - 1000 * v4;
  v17 = std::chrono::system_clock::to_time_t(&__t);
  v5 = localtime_r(&v17, &__t);
  strcpy(__s, "yyyy.mm.dd.HH-MM.SS.fff");
  v6 = strlen(__s);
  strftime(__s, v6, "%Y-%m-%d %H:%M:%S", v5);
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memcpy(__dst, __s, v7);
  }

  *(__dst + v8) = 0;
  if ((v15 & 0x80u) == 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = __dst[1];
  }

  v11 = sub_255A7F9C8((a1 + 16), v9, v10);
  sub_255A7F9C8(v11, ",", 1);
  if (v15 < 0)
  {
    operator delete(__dst[0]);
    if (v4 <= 9)
    {
      goto LABEL_18;
    }
  }

  else if (v4 <= 9)
  {
LABEL_18:
    sub_255A7F9C8((a1 + 16), "00", 2);
    goto LABEL_22;
  }

  if (v4 <= 0x63)
  {
    sub_255A7F9C8((a1 + 16), "0", 1);
  }

LABEL_22:
  result = MEMORY[0x259C48FF0](a1 + 16, v4);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255AAD420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AAD454(uint64_t a1, void **a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (byte_27F7DC597 < 0)
  {
    sub_255A7E018(v5, *aPatternlayout, *&aPatternlayout[8]);
  }

  else
  {
    *v5 = *aPatternlayout;
    v6 = unk_27F7DC590;
  }

  v8 = 0x700000000000000;
  *__p = *"ILayout";
  sub_255AAEC90(a2, v5, v9, 2uLL);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(v5[0]);
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v6) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v3 = *MEMORY[0x277D85DE8];
}

void sub_255AAD554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_255C104F8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255AAD638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_255A7EBE8(v40);
  v6 = *(a1 + 31);
  v39 = a3;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
    if (v6 < 2)
    {
      goto LABEL_75;
    }

    goto LABEL_5;
  }

  if (v6 >= 2)
  {
LABEL_5:
    v7 = 0;
    v8 = (a1 + 8);
    v9 = 1;
    while (1)
    {
      if (*(a1 + 31) < 0)
      {
        v12 = *(a1 + 31);
        if (*(*v8 + v7) != 37)
        {
LABEL_37:
          v18 = a1 + 8;
          if (v12 < 0)
          {
            v18 = *v8;
          }

          LOBYTE(__dst[0]) = *(v18 + v7);
          sub_255A7F9C8(&v41, __dst, 1);
          v9 = v7;
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *(a1 + 31);
        if (*(v8 + v7) != 37)
        {
          goto LABEL_37;
        }
      }

      v13 = a1 + 8;
      if (v12 < 0)
      {
        v13 = *v8;
      }

      v14 = (v13 + v9);
      v15 = v6 <= v9 + 1 ? v9 + 1 : v6;
      while (1)
      {
        v16 = *v14;
        if (v16 > 101)
        {
          break;
        }

        if (v16 <= 75)
        {
          if (v16 == 37)
          {
            v26 = "%";
            goto LABEL_52;
          }

          if (v16 == 70)
          {
            v10 = *(a2 + 32);
            v22 = strrchr(v10, 47);
            if (v22)
            {
              v10 = v22 + 1;
            }

            else
            {
              v30 = strrchr(v10, 92);
              if (v30)
              {
                v10 = v30 + 1;
              }
            }

            goto LABEL_7;
          }
        }

        else
        {
          switch(v16)
          {
            case 'L':
              MEMORY[0x259C48FC0](&v41, *(a2 + 40));
              goto LABEL_8;
            case 'c':
              v10 = *a2;
LABEL_7:
              v11 = strlen(v10);
              sub_255A7F9C8(&v41, v10, v11);
              goto LABEL_8;
            case 'd':
              sub_255AAD204(v40, (a2 + 16));
              goto LABEL_8;
          }
        }

LABEL_34:
        v17 = a1 + 8;
        if (*(a1 + 31) < 0)
        {
          v17 = *v8;
        }

        v14 = (v17 + v9++ + 1);
        if (v9 >= v6)
        {
          v9 = v15;
          goto LABEL_8;
        }
      }

      if (v16 > 111)
      {
        switch(v16)
        {
          case 'p':
            v10 = off_279807678[*(a2 + 24)];
            goto LABEL_7;
          case 'r':
            if ((atomic_load_explicit(&qword_27F7DCDD0, memory_order_acquire) & 1) == 0)
            {
              sub_255C105A4();
            }

            MEMORY[0x259C48FF0](&v41, (*(a2 + 8) - qword_27F7DCDC8) / 1000000);
            goto LABEL_8;
          case 't':
            v23 = pthread_self();
            v24 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ (v23 >> 32));
            v25 = 0x9DDFEA08EB382D69 * ((v23 >> 32) ^ (v24 >> 47) ^ v24);
            MEMORY[0x259C48FE0](&v41, 0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47)));
            goto LABEL_8;
        }

        goto LABEL_34;
      }

      if (v16 == 102)
      {
        v10 = *(a2 + 48);
        goto LABEL_7;
      }

      if (v16 != 109)
      {
        break;
      }

      v19 = *(a2 + 56);
      v20 = *(v19 + 120);
      if ((v20 & 0x10) != 0)
      {
        v27 = *(v19 + 112);
        v28 = *(v19 + 72);
        if (v27 < v28)
        {
          *(v19 + 112) = v28;
          v27 = v28;
        }

        v29 = *(v19 + 64);
        v21 = v27 - v29;
        if (v27 - v29 <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_62;
        }

LABEL_91:
        sub_255A7BCA8();
      }

      if ((v20 & 8) == 0)
      {
        v21 = 0;
        v54 = 0;
        goto LABEL_67;
      }

      v29 = *(v19 + 40);
      v21 = *(v19 + 56) - v29;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_91;
      }

LABEL_62:
      if (v21 >= 0x17)
      {
        operator new();
      }

      v54 = v21;
      if (v21)
      {
        memmove(__dst, v29, v21);
      }

LABEL_67:
      *(__dst + v21) = 0;
      if ((v54 & 0x80u) == 0)
      {
        v31 = __dst;
      }

      else
      {
        v31 = __dst[0];
      }

      if ((v54 & 0x80u) == 0)
      {
        v32 = v54;
      }

      else
      {
        v32 = __dst[1];
      }

      sub_255A7F9C8(&v41, v31, v32);
      if (v54 < 0)
      {
        operator delete(__dst[0]);
      }

LABEL_8:
      v7 = v9 + 1;
      v9 += 2;
      if (v9 >= v6)
      {
        goto LABEL_75;
      }
    }

    if (v16 == 110)
    {
      v26 = "\n";
LABEL_52:
      sub_255A7F9C8(&v41, v26, 1);
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_75:
  if ((v51 & 0x10) != 0)
  {
    v35 = v50;
    v33 = v39;
    if (v50 < v47)
    {
      v50 = v47;
      v35 = v47;
    }

    v36 = v46;
    v34 = v35 - v46;
    if (v35 - v46 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v33 = v39;
    if ((v51 & 8) == 0)
    {
      v34 = 0;
      v39[23] = 0;
      goto LABEL_86;
    }

    v36 = v44;
    v34 = v45 - v44;
    if ((v45 - v44) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_90:
      sub_255A7BCA8();
    }
  }

  if (v34 >= 0x17)
  {
    operator new();
  }

  v33[23] = v34;
  if (v34)
  {
    memmove(v33, v36, v34);
  }

LABEL_86:
  v33[v34] = 0;
  v40[0] = *MEMORY[0x277D82818];
  v37 = *(MEMORY[0x277D82818] + 72);
  *(v40 + *(v40[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v41 = v37;
  v42 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(__p);
  }

  v42 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v43);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C49250](&v52);
}

void sub_255AADC78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A78E78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AADCC0(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_255AADD1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C49320);
}

void sub_255AADD94(uint64_t a1, uint64_t a2)
{
  if (((1 << (*(a2 + 24) - 1)) | *(a1 + 24)) == *(a1 + 24))
  {
    (*(**(a1 + 16) + 40))(&__p);
    std::mutex::lock(&stru_27F7DC540);
    v3 = *(a2 + 24);
    if ((v3 - 1) < 3)
    {
      if ((atomic_load_explicit(qword_27F7DCDD8, memory_order_acquire) & 1) == 0)
      {
        sub_255C105DC();
      }

      if ((v14 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v14 & 0x80u) == 0)
      {
        v8 = v14;
      }

      else
      {
        v8 = v13;
      }

      sub_255A7F9C8(qword_27F7DCE10, p_p, v8);
      v6 = &qword_27F7DCE10;
      if (atomic_load_explicit(qword_27F7DCDD8, memory_order_acquire))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v3 - 4) >= 3)
      {
        goto LABEL_24;
      }

      if ((atomic_load_explicit(qword_27F7DCDD8, memory_order_acquire) & 1) == 0)
      {
        sub_255C105DC();
      }

      if ((v14 & 0x80u) == 0)
      {
        v4 = &__p;
      }

      else
      {
        v4 = __p;
      }

      if ((v14 & 0x80u) == 0)
      {
        v5 = v14;
      }

      else
      {
        v5 = v13;
      }

      sub_255A7F9C8(qword_27F7DCE18, v4, v5);
      v6 = &qword_27F7DCE18;
      if (atomic_load_explicit(qword_27F7DCDD8, memory_order_acquire))
      {
LABEL_23:
        v9 = *v6;
        std::ostream::flush();
LABEL_24:
        std::mutex::unlock(&stru_27F7DC540);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    v10 = v6;
    v11 = __cxa_guard_acquire(qword_27F7DCDD8);
    v6 = v10;
    if (v11)
    {
      qword_27F7DCE10 = MEMORY[0x277D82678];
      qword_27F7DCE18 = MEMORY[0x277D82670];
      __cxa_guard_release(qword_27F7DCDD8);
      v6 = v10;
    }

    goto LABEL_23;
  }
}

void sub_255AADF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255AADF7C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x259C49320](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

void sub_255AADFD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AAE010(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255AAE030(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255AAE090(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_255AAE090(a1, *a2);
    sub_255AAE090(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}