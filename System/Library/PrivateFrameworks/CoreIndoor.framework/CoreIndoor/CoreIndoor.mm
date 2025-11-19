void sub_245A2F5FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_245A7E644(&a9);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v13 = sub_245A7B168();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(a9) = 0;
      _os_log_impl(&dword_245A2E000, v13, OS_LOG_TYPE_ERROR, "_openTileFileForIncrementalIO: fail to open availability tile; most likely due to race condition", &a9, 2u);
    }

    a9 = 0uLL;
    sub_245A7B1C0(v9 + 8, &a9);
    sub_245A7E798(&a9);
    __cxa_end_catch();
    JUMPOUT(0x245A2F584);
  }

  if (*(v10 - 49) < 0)
  {
    operator delete(*(v10 - 72));
  }

  _Unwind_Resume(a1);
}

int *sub_245A2F6BC(int *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245A3C1B4();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v21 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;
  v12 = a3 | 0x10;
  if (a4 != 1)
  {
    v12 = a3;
  }

  if (a4 == 2)
  {
    v13 = a3 | 0x20;
  }

  else
  {
    v13 = v12;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v15 = open(p_dst, v13, a5);
  if (v21 < 0)
  {
    v16 = v15;
    operator delete(__dst);
    v15 = v16;
  }

  *a1 = v15;
  if (v15 == -1)
  {
    if (qword_28144B270 == -1)
    {
      v18 = qword_28144B278;
      if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_245A8EF90();
      v18 = qword_28144B278;
      if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245D786E0](exception, "error while opening availability file");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    LOWORD(__dst) = 0;
    _os_log_impl(&dword_245A2E000, v18, OS_LOG_TYPE_ERROR, "@IndoorAvl, error while opening file", &__dst, 2u);
    goto LABEL_26;
  }

  return a1;
}

void sub_245A2F8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A2F8E8(uint64_t a1)
{
  *a1 = &unk_2858A0718;
  if (qword_28144B978 != a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    MEMORY[0x245D78850](v4, 0x1000C8052888210);
  }

  v5 = *(a1 + 52);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 40) + 8 * i);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 52);
      }
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    MEMORY[0x245D78850](v8, 0x80C80B8603338);
  }

  if (*(a1 + 28) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 16) + 8 * v9);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v9;
    }

    while (v9 < *(a1 + 28));
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    MEMORY[0x245D78850](v11, 0x80C80B8603338);
  }

  MEMORY[0x245D78300](a1 + 8);

  JUMPOUT(0x245D78470);
}

void sub_245A2FA84(void *a1)
{
  *a1 = &unk_2858A0668;
  v2 = a1[2];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8052888210);
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

void sub_245A2FB0C(void *a1)
{
  *a1 = &unk_2858A05B8;
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8000313F17);
  }

  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x245D78850](v3, 0x1000C8000313F17);
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A2FBB8(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    if ((TagFallback & 0xFFFFFFF8) == 8)
    {
      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        v24 = 0;
        if (v11 >= v10)
        {
          goto LABEL_17;
        }

LABEL_15:
        if ((*v11 & 0x80000000) == 0)
        {
          v24 = *v11;
          *(this + 1) = v11 + 1;
          goto LABEL_18;
        }

LABEL_17:
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
        {
LABEL_18:
          v12 = *(a1 + 24);
          v13 = *(a1 + 16);
          if (v12 == *(a1 + 28))
          {
            if (2 * v12 <= v12 + 1)
            {
              v14 = v12 + 1;
            }

            else
            {
              v14 = 2 * v12;
            }

            if (v14 <= 4)
            {
              v14 = 4;
            }

            *(a1 + 28) = v14;
            operator new[]();
          }

          v15 = v24;
          *(a1 + 24) = v12 + 1;
          *(v13 + 4 * v12) = v15;
          v16 = *(a1 + 28) - *(a1 + 24);
          if (v16 >= 1)
          {
            for (i = v16 + 1; i > 1; --i)
            {
              v19 = *(this + 1);
              v20 = *(this + 2);
              if (v19 >= v20 || *v19 != 8)
              {
                break;
              }

              *(this + 1) = v19 + 1;
              if ((v19 + 1) >= v20 || (v21 = v19[1], (v21 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
                {
                  return 0;
                }

                v21 = v24;
                v13 = *(a1 + 16);
              }

              else
              {
                v24 = v19[1];
                *(this + 1) = v19 + 2;
              }

              v18 = *(a1 + 24);
              *(a1 + 24) = v18 + 1;
              *(v13 + 4 * v18) = v21;
            }
          }

LABEL_35:
          v23 = *(this + 1);
          v22 = *(this + 2);
          if (v23 >= v22 || *v23 != 8)
          {
            if (v23 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          v11 = v23 + 1;
          *(this + 1) = v11;
          v24 = 0;
          if (v11 < v22)
          {
            goto LABEL_15;
          }
        }

        return 0;
      }

      if (v8 == 2)
      {
        break;
      }
    }

    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_245A876AC(this, (a1 + 16));
  if (result)
  {
    goto LABEL_35;
  }

  return result;
}

void sub_245A301D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_245A39274(&a9);
  sub_245A7E644(v9);
  _Unwind_Resume(a1);
}

void sub_245A301F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  sub_245A37CE8(&a27);
  sub_245A7E644(v27);
  _Unwind_Resume(a1);
}

void sub_245A30224(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_245A30250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, char a28)
{
  MEMORY[0x245D78330](&a28);
  sub_245A37CE8(&a27);
  sub_245A7E644(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_245A30284(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = (*(*a2 + 40))(a2);
  v8 = a2;
  v9 = 0;
  v10 = 0;
  memset(v11, 0, 14);
  v12 = xmmword_245A9CEF0;
  v4 = *MEMORY[0x277D82C28];
  v13 = 0;
  v14 = v4;
  v15 = 0;
  v16 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(&v8);
  if (v9 >= v10 || (TagFallback = *v9, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(&v8);
    LODWORD(v11[1]) = TagFallback;
  }

  else
  {
    LODWORD(v11[1]) = *v9++;
  }

  v6 = TagFallback >> 3;
  *(a1 + 88) = v6;
  MEMORY[0x245D783D0](&v8);
  return v6;
}

uint64_t sub_245A3036C(uint64_t a1)
{
  *a1 = &unk_2858A0718;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  return a1;
}

uint64_t sub_245A303F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    sub_245A8ECB0();
  }

  v15 = a2;
  v16 = 0;
  v17 = 0;
  memset(v18, 0, 14);
  v19 = xmmword_245A9CEF0;
  v5 = *MEMORY[0x277D82C28];
  v20 = 0;
  v21 = v5;
  v22 = 0;
  v23 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(&v15);
  *buf = 0;
  if (v16 >= v17 || *v16 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&v15, buf))
    {
      v10 = 1;
      if (qword_28144B270 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  else
  {
    *buf = *v16++;
  }

  v6 = v20++;
  if (v6 >= v21)
  {
    v10 = 2;
    if (qword_28144B270 == -1)
    {
      goto LABEL_17;
    }

LABEL_22:
    sub_245A8EC88();
    goto LABEL_17;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(&v15);
  if (!sub_245A30654(a3, &v15, v7, v8))
  {
    v10 = 3;
    if (qword_28144B270 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (BYTE4(v18[1]) == 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(&v15);
    if (v20 >= 1)
    {
      --v20;
    }

    v9 = 1;
    goto LABEL_20;
  }

  v10 = 4;
  if (qword_28144B270 != -1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v11 = qword_28144B278;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = (*(*a2 + 40))(a2);
    *buf = 134349312;
    v25 = v12;
    v26 = 1026;
    v27 = v10;
    _os_log_impl(&dword_245A2E000, v11, OS_LOG_TYPE_FAULT, "@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, failed to read a venue bounds from the input stream, have read %{public}lld bytes, error %{public}d", buf, 0x12u);
  }

  v9 = 0;
LABEL_20:
  MEMORY[0x245D783D0](&v15);
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_245A30654(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            v7 = result;
            *(this + 8) = result;
            if (!result)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = v7;
            *(this + 1) = v6 + 1;
            if (!v7)
            {
              return 1;
            }
          }

          v8 = v7 >> 3;
          v9 = v7 & 7;
          if (v7 >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_44;
            }

            while (1)
            {
              v16 = *(v5 + 28);
              v17 = *(v5 + 24);
              if (v17 >= v16)
              {
                if (v16 == *(v5 + 32))
                {
                  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16));
                  v16 = *(v5 + 28);
                }

                *(v5 + 28) = v16 + 1;
                v20 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
                v21 = *(v5 + 16);
                v22 = *(v5 + 24);
                *(v5 + 24) = v22 + 1;
                *(v21 + 8 * v22) = v20;
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }
              }

              else
              {
                v18 = *(v5 + 16);
                *(v5 + 24) = v17 + 1;
                v19 = *(v18 + 8 * v17);
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }
              }

              v23 = *(this + 1);
              if (v23 >= *(this + 2))
              {
                break;
              }

              v24 = *v23;
              if (v24 != 10)
              {
                if (v24 != 18)
                {
                  goto LABEL_2;
                }

                *(this + 1) = v23 + 1;
                goto LABEL_38;
              }

              *(this + 1) = v23 + 1;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 == 3 && v9 == 2)
              {
                v10 = *(v5 + 52);
                v11 = *(v5 + 48);
                if (v11 >= v10)
                {
                  goto LABEL_57;
                }

                goto LABEL_13;
              }

              goto LABEL_44;
            }

            if (v9 != 2)
            {
              goto LABEL_44;
            }

LABEL_38:
            *(v5 + 104) |= 0x10u;
            v25 = *(v5 + 72);
            if (!v25)
            {
              operator new();
            }

            v66 = 0;
            v26 = *(this + 1);
            if (v26 >= *(this + 2) || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v66))
              {
                return 0;
              }
            }

            else
            {
              v66 = *v26;
              *(this + 1) = v26 + 1;
            }

            v29 = *(this + 14);
            v30 = *(this + 15);
            *(this + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_245A30E3C(v25, this, v31, v32) || *(this + 36) != 1)
            {
              return 0;
            }

            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v33 = *(this + 14);
            v34 = __OFSUB__(v33, 1);
            v35 = v33 - 1;
            if (v35 < 0 == v34)
            {
              *(this + 14) = v35;
            }

            v36 = *(this + 1);
            if (v36 < *(this + 2) && *v36 == 26)
            {
              while (1)
              {
                *(this + 1) = v36 + 1;
                v10 = *(v5 + 52);
                v11 = *(v5 + 48);
                if (v11 >= v10)
                {
LABEL_57:
                  if (v10 == *(v5 + 56))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 40));
                    v10 = *(v5 + 52);
                  }

                  *(v5 + 52) = v10 + 1;
                  operator new();
                }

LABEL_13:
                v12 = *(v5 + 40);
                *(v5 + 48) = v11 + 1;
                v13 = *(v12 + 8 * v11);
                v66 = 0;
                v37 = *(this + 1);
                if (v37 >= *(this + 2) || *v37 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v66))
                  {
                    return 0;
                  }
                }

                else
                {
                  v66 = *v37;
                  *(this + 1) = v37 + 1;
                }

                v38 = *(this + 14);
                v39 = *(this + 15);
                *(this + 14) = v38 + 1;
                if (v38 >= v39)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_245A30E3C(v13, this, v40, v41) || *(this + 36) != 1)
                {
                  return 0;
                }

                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v42 = *(this + 14);
                v34 = __OFSUB__(v42, 1);
                v43 = v42 - 1;
                if (v43 < 0 == v34)
                {
                  *(this + 14) = v43;
                }

                v36 = *(this + 1);
                v27 = *(this + 2);
                if (v36 >= v27)
                {
                  break;
                }

                v44 = *v36;
                if (v44 != 26)
                {
                  goto LABEL_71;
                }
              }
            }
          }
        }

        if (v8 == 4)
        {
          break;
        }

        if (v8 == 5)
        {
          if (v9 != 2)
          {
            goto LABEL_44;
          }

LABEL_97:
          *(v5 + 104) |= 4u;
          v55 = *(v5 + 64);
          if (!v55)
          {
            operator new();
          }

          v66 = 0;
          v56 = *(this + 1);
          if (v56 >= *(this + 2) || *v56 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v66))
            {
              return 0;
            }
          }

          else
          {
            v66 = *v56;
            *(this + 1) = v56 + 1;
          }

          v57 = *(this + 14);
          v58 = *(this + 15);
          *(this + 14) = v57 + 1;
          if (v57 >= v58)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A2FBB8(v55, this, v59, v60) || *(this + 36) != 1)
          {
            return 0;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v61 = *(this + 14);
          v34 = __OFSUB__(v61, 1);
          v62 = v61 - 1;
          if (v62 < 0 == v34)
          {
            *(this + 14) = v62;
          }

          v64 = *(this + 1);
          v63 = *(this + 2);
          if (v64 < v63 && *v64 == 48)
          {
            v15 = v64 + 1;
            *(this + 1) = v15;
            v66 = 0;
            if (v15 >= v63)
            {
              goto LABEL_115;
            }

LABEL_111:
            v65 = *v15;
            if ((v65 & 0x80000000) != 0)
            {
              goto LABEL_115;
            }

            *(this + 1) = v15 + 1;
            result = sub_245A2FBA8(v65);
            if (result)
            {
              goto LABEL_113;
            }

LABEL_117:
            result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8));
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          if (v8 != 6 || (v7 & 7) != 0)
          {
            goto LABEL_44;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
          v66 = 0;
          if (v15 < v14)
          {
            goto LABEL_111;
          }

LABEL_115:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v66);
          if (!result)
          {
            return result;
          }

          v65 = v66;
          result = sub_245A2FBA8(v66);
          if (!result)
          {
            goto LABEL_117;
          }

LABEL_113:
          *(v5 + 104) |= 8u;
          *(v5 + 96) = v65;
          if (*(this + 1) == *(this + 2))
          {
LABEL_118:
            if (*(this + 11) || *(this + 6) == *(this + 10))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }

      if ((v7 & 7) != 0)
      {
        break;
      }

      v28 = *(this + 1);
      v27 = *(this + 2);
      while (1)
      {
        v66 = 0;
        if (v28 >= v27 || *v28 < 0)
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v66);
          if (!result)
          {
            return 0;
          }
        }

        else
        {
          v66 = *v28;
          *(this + 1) = v28 + 1;
        }

        v45 = *(v5 + 88);
        v46 = *(v5 + 80);
        if (v45 == *(v5 + 92))
        {
          if (2 * v45 <= v45 + 1)
          {
            v47 = v45 + 1;
          }

          else
          {
            v47 = 2 * v45;
          }

          if (v47 <= 4)
          {
            v47 = 4;
          }

          *(v5 + 92) = v47;
          operator new[]();
        }

        v48 = v66;
        *(v5 + 88) = v45 + 1;
        *(v46 + 4 * v45) = v48;
        v49 = *(v5 + 92) - *(v5 + 88);
        if (v49 >= 1)
        {
          for (i = v49 + 1; i > 1; --i)
          {
            v52 = *(this + 1);
            v53 = *(this + 2);
            if (v52 >= v53 || *v52 != 32)
            {
              break;
            }

            *(this + 1) = v52 + 1;
            if ((v52 + 1) >= v53 || (v54 = v52[1], (v54 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v66);
              if (!result)
              {
                return 0;
              }

              v54 = v66;
              v46 = *(v5 + 80);
            }

            else
            {
              v66 = v52[1];
              *(this + 1) = v52 + 2;
            }

            v51 = *(v5 + 88);
            *(v5 + 88) = v51 + 1;
            *(v46 + 4 * v51) = v54;
          }
        }

LABEL_94:
        v36 = *(this + 1);
        v27 = *(this + 2);
        if (v36 >= v27)
        {
          break;
        }

        v44 = *v36;
        if (v44 == 42)
        {
          *(this + 1) = v36 + 1;
          goto LABEL_97;
        }

LABEL_71:
        if (v44 != 32)
        {
          goto LABEL_2;
        }

        v28 = v36 + 1;
        *(this + 1) = v28;
      }
    }

    if (v9 == 2)
    {
      result = sub_245A876AC(this, (v5 + 80));
      if (!result)
      {
        return result;
      }

      goto LABEL_94;
    }

LABEL_44:
    if (v9 == 4)
    {
      return 1;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_245A30E00(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A30E3C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_19;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        result = sub_245A40284(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 < v14)
        {
LABEL_40:
          if (*v15 == 18)
          {
            v12 = v15 + 1;
            *(this + 1) = v12;
            v27 = 0;
            if (v12 >= v14)
            {
              goto LABEL_44;
            }

LABEL_42:
            if (*v12 < 0)
            {
LABEL_44:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
              {
                return 0;
              }

              goto LABEL_45;
            }

            v27 = *v12;
            *(this + 1) = v12 + 1;
LABEL_45:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v28 = 0;
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28))
              {
                return 0;
              }

              v22 = v28;
              v23 = *(a1 + 48);
              v24 = *(a1 + 40);
              if (v23 == *(a1 + 52))
              {
                if (2 * v23 <= v23 + 1)
                {
                  v25 = v23 + 1;
                }

                else
                {
                  v25 = 2 * v23;
                }

                if (v25 <= 4)
                {
                  v25 = 4;
                }

                *(a1 + 52) = v25;
                operator new[]();
              }

              v21 = *(a1 + 40);
              *(a1 + 48) = v23 + 1;
              *(v21 + 8 * v23) = v22;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_57:
            v26 = *(this + 1);
            if (v26 < *(this + 2) && *v26 == 25)
            {
              *(this + 1) = v26 + 1;
LABEL_60:
              v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 64) = v28;
              *(a1 + 76) |= 4u;
              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_19;
        }

        v27 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
          {
            return 0;
          }
        }

        else
        {
          v27 = *v10;
          *(this + 1) = v10 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v28 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28))
          {
            return 0;
          }

          v17 = v28;
          v18 = *(a1 + 24);
          v19 = *(a1 + 16);
          if (v18 == *(a1 + 28))
          {
            if (2 * v18 <= v18 + 1)
            {
              v20 = v18 + 1;
            }

            else
            {
              v20 = 2 * v18;
            }

            if (v20 <= 4)
            {
              v20 = 4;
            }

            *(a1 + 28) = v20;
            operator new[]();
          }

          v16 = *(a1 + 16);
          *(a1 + 24) = v18 + 1;
          *(v16 + 8 * v18) = v17;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 < v14)
        {
          goto LABEL_40;
        }
      }
    }

    if (v9 == 1)
    {
      result = sub_245A40284(1, 0x12u, this, (a1 + 40));
      if (!result)
      {
        return result;
      }

      goto LABEL_57;
    }

    if (v9 == 2)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      v27 = 0;
      if (v12 >= v11)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

LABEL_19:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

off_t sub_245A31234(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v5) < 0)
  {
    sub_245A8E55C();
    return -1;
  }

  if ((v5.st_mode & 0xF000) != 0x8000)
  {
    sub_245A3B698(78, v3, a2, "boost::filesystem::file_size");
    return -1;
  }

  return v5.st_size;
}

void sub_245A312EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_245A312EC(a1, *a2);
    sub_245A312EC(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_245A31344(unint64_t *a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v3 >= 0x21)
  {
    v4 = *v1;
    v5 = *(v2 - 2);
    if (*v1 != v5)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v67 = fabs(v4);
      v68 = fabs(v5);
      v69 = vabdd_f64(v4, v5);
      if (v67 < v68)
      {
        v67 = v68;
      }

      if (v67 < 1.0)
      {
        v67 = 1.0;
      }

      if (v69 > v67 * 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }

    v6 = *(v1 + 8);
    v7 = *(v2 - 1);
    if (v6 != v7)
    {
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v9 = fabs(v6);
      v10 = fabs(v7);
      v11 = vabdd_f64(v6, v7);
      if (v9 >= v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10;
      }

      if (v12 < 1.0)
      {
        v12 = 1.0;
      }

      if (v11 > v12 * 2.22044605e-16)
      {
LABEL_20:
        v14 = *(v1 + 8);
        *&v70 = *v1;
        *(&v70 + 1) = v14;
        v15 = a1;
        sub_245A31BE4(a1, &v70);
        a1 = v15;
        v1 = *v15;
        v2 = v15[1];
        v3 = v2 - *v15;
      }
    }

    v16 = v3 >= 0x40;
    v17 = v1 + 16;
    if (v16 && v17 != v2)
    {
      v54 = v2 - v1 - 32;
      v55 = 0.0;
      v56 = (v1 + 16);
      v57 = v1;
      if (v54 < 0x30)
      {
        goto LABEL_90;
      }

      v58 = (v54 >> 4) + 1;
      v59 = 16 * (v58 & 0x1FFFFFFFFFFFFFFCLL);
      v56 = (v17 + v59);
      v57 = (v1 + v59);
      v60 = (v1 + 32);
      v61 = v58 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v62 = v60 - 4;
        v73 = vld2q_f64(v62);
        v75 = vld2q_f64(v60);
        v63 = v60 - 2;
        v64 = v60 + 2;
        v77 = vld2q_f64(v63);
        v79 = vld2q_f64(v64);
        v73.val[0] = vmulq_f64(vaddq_f64(v73.val[0], v77.val[0]), vsubq_f64(v73.val[1], v77.val[1]));
        v73.val[1] = vmulq_f64(vaddq_f64(v75.val[0], v79.val[0]), vsubq_f64(v75.val[1], v79.val[1]));
        v55 = v55 + v73.val[0].f64[0] + v73.val[0].f64[1] + v73.val[1].f64[0] + v73.val[1].f64[1];
        v60 += 8;
        v61 -= 4;
      }

      while (v61);
      if (v58 != (v58 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_90:
        do
        {
          v65 = *v56;
          v56 += 2;
          v55 = v55 + (*v57 + v65) * (v57[1] - v57[3]);
          v57 += 2;
        }

        while (v56 != v2);
      }

      if (v55 * 0.5 < 0.0 && v1 != v2)
      {
        v66 = v2 - 2;
        if (v66 > v1)
        {
          do
          {
            v70 = *(v17 - 16);
            *(v17 - 16) = *v66;
            *v66 = v70;
            v66 -= 2;
            v16 = v17 >= v66;
            v17 += 16;
          }

          while (!v16);
        }
      }
    }
  }

  v19 = a1[3];
  for (i = a1[4]; v19 != i; v19 += 3)
  {
    v21 = *v19;
    v22 = v19[1];
    v23 = v22 - *v19;
    if (v23 >= 0x21)
    {
      v24 = *v21;
      v25 = *(v22 - 2);
      if (*v21 != v25)
      {
        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        v50 = fabs(v24);
        v51 = fabs(v25);
        v52 = vabdd_f64(v24, v25);
        if (v50 < v51)
        {
          v50 = v51;
        }

        if (v50 < 1.0)
        {
          v50 = 1.0;
        }

        if (v52 > v50 * 2.22044605e-16)
        {
          goto LABEL_48;
        }
      }

      v26 = *(v21 + 8);
      v27 = *(v22 - 1);
      if (v26 != v27)
      {
        if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        v29 = fabs(v26);
        v30 = fabs(v27);
        v31 = vabdd_f64(v26, v27);
        if (v29 >= v30)
        {
          v32 = v29;
        }

        else
        {
          v32 = v30;
        }

        if (v32 < 1.0)
        {
          v32 = 1.0;
        }

        if (v31 > v32 * 2.22044605e-16)
        {
LABEL_48:
          v34 = *(v21 + 8);
          *&v70 = *v21;
          *(&v70 + 1) = v34;
          sub_245A31BE4(v19, &v70);
          v21 = *v19;
          v22 = v19[1];
          v23 = v22 - *v19;
        }
      }

      v16 = v23 >= 0x40;
      v35 = v21 + 16;
      if (v16 && v35 != v22)
      {
        v37 = v22 - v21 - 32;
        v38 = 0.0;
        v39 = (v21 + 16);
        v40 = v21;
        if (v37 < 0x30)
        {
          goto LABEL_91;
        }

        v41 = (v37 >> 4) + 1;
        v42 = 16 * (v41 & 0x1FFFFFFFFFFFFFFCLL);
        v39 = (v35 + v42);
        v40 = (v21 + v42);
        v43 = (v21 + 32);
        v44 = v41 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = v43 - 4;
          v72 = vld2q_f64(v45);
          v74 = vld2q_f64(v43);
          v46 = v43 - 2;
          v47 = v43 + 2;
          v76 = vld2q_f64(v46);
          v78 = vld2q_f64(v47);
          v72.val[0] = vmulq_f64(vaddq_f64(v72.val[0], v76.val[0]), vsubq_f64(v72.val[1], v76.val[1]));
          v72.val[1] = vmulq_f64(vaddq_f64(v74.val[0], v78.val[0]), vsubq_f64(v74.val[1], v78.val[1]));
          v38 = v38 + v72.val[0].f64[0] + v72.val[0].f64[1] + v72.val[1].f64[0] + v72.val[1].f64[1];
          v43 += 8;
          v44 -= 4;
        }

        while (v44);
        if (v41 != (v41 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_91:
          do
          {
            v48 = *v39;
            v39 += 2;
            v38 = v38 + (*v40 + v48) * (v40[1] - v40[3]);
            v40 += 2;
          }

          while (v39 != v22);
        }

        if (v38 * 0.5 > 0.0 && v21 != v22)
        {
          v49 = v22 - 2;
          if (v49 > v21)
          {
            do
            {
              v70 = *(v35 - 16);
              *(v35 - 16) = *v49;
              *v49 = v70;
              v49 -= 2;
              v16 = v35 >= v49;
              v35 += 16;
            }

            while (!v16);
          }
        }
      }
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

void *sub_245A317F0(void *a1, uint64_t a2)
{
  *a1 = &unk_2858A0668;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_245A3203C(a1, a2);
  return a1;
}

void sub_245A31860(_Unwind_Exception *a1)
{
  if (*v3)
  {
    MEMORY[0x245D78850](*v3, 0x1000C8052888210);
  }

  MEMORY[0x245D78300](v2);
  MEMORY[0x245D78470](v1);
  _Unwind_Resume(a1);
}

std::string::size_type sub_245A318AC(std::string *this, uint64_t a2, unint64_t a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  v8 = this;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2 - this;
    if (__n_add)
    {
      if (this > a3 || this->__r_.__value_.__r.__words + v9 + 1 <= a3)
      {
        v11 = 22;
        v12 = this;
        if (22 - v9 < __n_add)
        {
          goto LABEL_6;
        }

LABEL_14:
        if (v9 == v10)
        {
          v13 = v10 + __n_add;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(v12 + v10 + __n_add, v12 + v10, v9 - v10);
          v13 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_16;
      }

LABEL_21:
      memset(&v28, 0, sizeof(v28));
      if (a3 == a4)
      {
        size = 0;
        v20 = 0;
        v18 = 0;
      }

      else
      {
        do
        {
          std::string::push_back(&v28, *v7++);
        }

        while (v7 != a4);
        v18 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        size = v28.__r_.__value_.__l.__size_;
        v20 = v28.__r_.__value_.__r.__words[0];
        LOBYTE(v9) = *(&v8->__r_.__value_.__s + 23);
      }

      if ((v18 & 0x80u) == 0)
      {
        v21 = &v28;
      }

      else
      {
        v21 = v20;
      }

      if ((v18 & 0x80u) == 0)
      {
        v22 = v18;
      }

      else
      {
        v22 = size;
      }

      if ((v9 & 0x80) != 0)
      {
        v9 = v8->__r_.__value_.__l.__size_;
        v23 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v23 - v9 >= __n_add)
        {
          v24 = v8->__r_.__value_.__r.__words[0];
          v25 = v9 - v10;
          if (v9 == v10)
          {
LABEL_36:
            v26 = v10 + __n_add;
            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_52:
              v8->__r_.__value_.__l.__size_ = v26;
              v24->__r_.__value_.__s.__data_[v26] = 0;
              if (!v22)
              {
LABEL_42:
                if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
                {
                  result = v10 + v8->__r_.__value_.__r.__words[0];
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                else
                {
                  result = v8 + v10;
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                v27 = result;
                operator delete(v28.__r_.__value_.__l.__data_);
                return v27;
              }

LABEL_41:
              memmove(v24 + v10, v21, v22);
              goto LABEL_42;
            }

LABEL_40:
            *(&v8->__r_.__value_.__s + 23) = v26 & 0x7F;
            v24->__r_.__value_.__s.__data_[v26] = 0;
            if (!v22)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_51:
          memmove(v24 + v10 + __n_add, v24 + v10, v25);
          v26 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v9 = v9;
        v23 = 22;
        v24 = v8;
        if (22 - v9 >= __n_add)
        {
          v25 = v9 - v10;
          if (v9 == v10)
          {
            goto LABEL_36;
          }

          goto LABEL_51;
        }
      }

      std::string::__grow_by(v8, v23, v9 + __n_add - v23, v9, v10, 0, __n_add);
      v8->__r_.__value_.__l.__size_ = v9 + __n_add;
      v24 = v8->__r_.__value_.__r.__words[0];
      v26 = v9 + __n_add;
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v12 = this;
    return v12 + v10;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  v10 = a2 - this->__r_.__value_.__r.__words[0];
  if (!__n_add)
  {
    return v12 + v10;
  }

  v14 = this->__r_.__value_.__l.__size_;
  if (v12 <= a3 && v12->__r_.__value_.__r.__words + v14 + 1 > a3)
  {
    goto LABEL_21;
  }

  v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = this->__r_.__value_.__l.__size_;
  if (v11 - v14 >= __n_add)
  {
    goto LABEL_14;
  }

LABEL_6:
  std::string::__grow_by(this, v11, v9 + __n_add - v11, v9, v10, 0, __n_add);
  v8->__r_.__value_.__l.__size_ = v9 + __n_add;
  v12 = v8->__r_.__value_.__r.__words[0];
  v13 = v9 + __n_add;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    v8->__r_.__value_.__l.__size_ = v13;
    v12->__r_.__value_.__s.__data_[v13] = 0;
    v16 = a4 - v7;
    if (a4 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&v8->__r_.__value_.__s + 23) = v13 & 0x7F;
  v12->__r_.__value_.__s.__data_[v13] = 0;
  v16 = a4 - v7;
  if (a4 != v7)
  {
LABEL_17:
    memmove(v12 + v10, v7, v16);
  }

LABEL_18:
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v8->__r_.__value_.__r.__words[0];
  }

  return v8 + v10;
}

void sub_245A31B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A31BE4(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_245A7B094();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_245A3C610();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

std::string::size_type sub_245A31D04(std::string *this, uint64_t a2, unint64_t a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  v8 = this;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2 - this;
    if (__n_add)
    {
      if (a3 < this || this->__r_.__value_.__r.__words + v9 + 1 <= a3)
      {
        v11 = 22;
        v12 = this;
        if (22 - v9 < __n_add)
        {
          goto LABEL_6;
        }

LABEL_14:
        if (v9 == v10)
        {
          v13 = v10 + __n_add;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(v12 + v10 + __n_add, v12 + v10, v9 - v10);
          v13 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_16;
      }

LABEL_21:
      memset(&v28, 0, sizeof(v28));
      if (a4 == a3)
      {
        size = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        do
        {
          std::string::push_back(&v28, *v7++);
        }

        while (v7 != a4);
        v20 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        size = v28.__r_.__value_.__l.__size_;
        v19 = v28.__r_.__value_.__r.__words[0];
        LOBYTE(v9) = *(&v8->__r_.__value_.__s + 23);
      }

      if ((v20 & 0x80u) == 0)
      {
        v21 = &v28;
      }

      else
      {
        v21 = v19;
      }

      if ((v20 & 0x80u) == 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = size;
      }

      if ((v9 & 0x80) != 0)
      {
        v9 = v8->__r_.__value_.__l.__size_;
        v23 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v23 - v9 >= __n_add)
        {
          v24 = v8->__r_.__value_.__r.__words[0];
          v25 = v9 - v10;
          if (v9 == v10)
          {
LABEL_34:
            v26 = v10 + __n_add;
            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_52:
              v8->__r_.__value_.__l.__size_ = v26;
              v24->__r_.__value_.__s.__data_[v26] = 0;
              if (!v22)
              {
LABEL_42:
                if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
                {
                  result = v10 + v8->__r_.__value_.__r.__words[0];
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                else
                {
                  result = v8 + v10;
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                v27 = result;
                operator delete(v28.__r_.__value_.__l.__data_);
                return v27;
              }

LABEL_41:
              memmove(v24 + v10, v21, v22);
              goto LABEL_42;
            }

LABEL_40:
            *(&v8->__r_.__value_.__s + 23) = v26 & 0x7F;
            v24->__r_.__value_.__s.__data_[v26] = 0;
            if (!v22)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_51:
          memmove(v24 + v10 + __n_add, v24 + v10, v25);
          v26 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v9 = v9;
        v23 = 22;
        v24 = v8;
        if (22 - v9 >= __n_add)
        {
          v25 = v9 - v10;
          if (v9 == v10)
          {
            goto LABEL_34;
          }

          goto LABEL_51;
        }
      }

      std::string::__grow_by(v8, v23, v9 + __n_add - v23, v9, v10, 0, __n_add);
      v8->__r_.__value_.__l.__size_ = v9 + __n_add;
      v24 = v8->__r_.__value_.__r.__words[0];
      v26 = v9 + __n_add;
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v12 = this;
    return v12 + v10;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  v10 = a2 - this->__r_.__value_.__r.__words[0];
  if (!__n_add)
  {
    return v12 + v10;
  }

  v14 = this->__r_.__value_.__l.__size_;
  if (v12 <= a3 && v12->__r_.__value_.__r.__words + v14 + 1 > a3)
  {
    goto LABEL_21;
  }

  v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = this->__r_.__value_.__l.__size_;
  if (v11 - v14 >= __n_add)
  {
    goto LABEL_14;
  }

LABEL_6:
  std::string::__grow_by(this, v11, v9 + __n_add - v11, v9, v10, 0, __n_add);
  v8->__r_.__value_.__l.__size_ = v9 + __n_add;
  v12 = v8->__r_.__value_.__r.__words[0];
  v13 = v9 + __n_add;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    v8->__r_.__value_.__l.__size_ = v13;
    v12->__r_.__value_.__s.__data_[v13] = 0;
    v16 = a4 - v7;
    if (a4 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&v8->__r_.__value_.__s + 23) = v13 & 0x7F;
  v12->__r_.__value_.__s.__data_[v13] = 0;
  v16 = a4 - v7;
  if (a4 != v7)
  {
LABEL_17:
    memmove(v12 + v10, v7, v16);
  }

LABEL_18:
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v8->__r_.__value_.__r.__words[0];
  }

  return v8 + v10;
}

void sub_245A31FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245A3203C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A32170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A32184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A32198(void *a1)
{
  *a1 = &unk_2858A0668;
  v2 = a1[2];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8052888210);
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A32258(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_18;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (*(v6 + 8))
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
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

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v14[4];
      v9[4] = v15;
      v16 = *v8;
      v17 = (v5 + 8);
      v18 = (v5 + 8);
      if (*v8)
      {
        break;
      }

LABEL_23:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **v5;
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_25:
      sub_245A7AEE8(*(v5 + 8), v9);
      ++*(v5 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_23;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **v5;
    if (!v19)
    {
      goto LABEL_25;
    }

LABEL_24:
    *v5 = v19;
    goto LABEL_25;
  }

  v12 = v9;
LABEL_13:
  sub_245A312EC(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v5;
    v9 = v10;
LABEL_17:
    sub_245A312EC(a1, v9);
  }

LABEL_18:
  if (a2 != a3)
  {
    operator new();
  }
}

int *sub_245A3258C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_281B30AC0 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_281B30AC0 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::status", v4, v22);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 5;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 2;
      if (v8 == 11)
      {
        v11 = 8;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 11)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 7;
    }

    else
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_50:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

uint64_t sub_245A327F8(uint64_t a1)
{
  *a1 = &unk_2858A07C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FFF5C28F5C28F5CLL;
  *&v2 = 0xC8000000C8;
  *(&v2 + 1) = 0xC8000000C8;
  *(a1 + 56) = v2;
  *(a1 + 72) = xmmword_245A9D140;
  *(a1 + 88) = 0x40E0000000000001;
  *(a1 + 96) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 1088421888;
  return a1;
}

uint64_t sub_245A328A0(int *a1)
{
  v2 = *a1;
  if (v2 == -1)
  {
    sub_245A8F148();
  }

  result = close(v2);
  *a1 = -1;
  if (result == -1)
  {
    sub_245A8EFB8();
  }

  return result;
}

uint64_t sub_245A328E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    sub_245A8EDEC();
  }

  v6 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    *buf = 67109632;
    *&buf[4] = v7;
    v29 = 2050;
    v30 = v8;
    v31 = 2050;
    v32 = a3;
    _os_log_impl(&dword_245A2E000, v6, OS_LOG_TYPE_INFO, "@IndoorAvl, load, _readMetadataProtobufObjectsFromFile, got %d as field_number, so no more venue bounds; read %{public}lld bytes of %{public}lld from zcis", buf, 0x1Cu);
  }

  sub_245A2F8D0(a1 + 32, &v26);
  sub_245A32CB8(&v26, *(a1 + 96));
  MEMORY[0x245D78320](buf, v26, 0xFFFFFFFFLL);
  *(a1 + 64) = *(a1 + 96);
  v20[0] = buf;
  memset(&v20[1], 0, 30);
  v21 = xmmword_245A9CEF0;
  v9 = *MEMORY[0x277D82C28];
  v22 = 0;
  v23 = v9;
  v24 = 0;
  v25 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v20);
  if (a2)
  {
    LODWORD(a1) = *(a1 + 96);
    if (qword_28144B270 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_245A8EE00(v27);

    abort_report_np();
    __break(1u);
  }

  sub_245A8EC88();
LABEL_7:
  v10 = a3 - a1;
  v11 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 67240192;
    *&v27[4] = v10;
    _os_log_impl(&dword_245A2E000, v11, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, need to read %{public}d more", v27, 8u);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(v20);
  v12 = wireless_diagnostics::google::protobuf::MessageLite::ParseFromCodedStream();
  if (v12)
  {
    v13 = BYTE4(v20[4]);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v20);
    if (v13)
    {
      v14 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v20);
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EC88();
  }

  v15 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
  {
    *v27 = 67240192;
    *&v27[4] = v12;
    _os_log_impl(&dword_245A2E000, v15, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, Expected that we parsed and consumed the entire message, but we didn't, parsed = %{public}d", v27, 8u);
    if (qword_28144B270 != -1)
    {
      sub_245A8EC88();
    }
  }

  v16 = qword_28144B278;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = (*(*buf + 40))(buf);
    *v27 = 134349056;
    *&v27[4] = v17;
    _os_log_impl(&dword_245A2E000, v16, OS_LOG_TYPE_ERROR, "@IndoorAvl, _readMetadataProtobufObjectsFromFile, failed to read localizer params from the input stream, have read %{public}lld bytes from local stream", v27, 0xCu);
  }

  v14 = 0;
LABEL_21:
  MEMORY[0x245D783D0](v20);
  MEMORY[0x245D78330](buf);
  sub_245A37CE8(&v26);
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_245A32C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, char a26)
{
  MEMORY[0x245D783D0](&a12);
  MEMORY[0x245D78330](&a26);
  sub_245A37CE8(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_245A32CC4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          while (1)
          {
            while (1)
            {
              do
              {
                while (1)
                {
                  while (1)
                  {
                    do
                    {
                      while (1)
                      {
                        while (1)
                        {
                          do
                          {
                            do
                            {
                              while (1)
                              {
LABEL_1:
                                v6 = *(this + 1);
                                if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
                                {
                                  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
                                  *(this + 8) = TagFallback;
                                  if (!TagFallback)
                                  {
                                    return 1;
                                  }
                                }

                                else
                                {
                                  *(this + 8) = TagFallback;
                                  *(this + 1) = v6 + 1;
                                  if (!TagFallback)
                                  {
                                    return 1;
                                  }
                                }

                                v8 = TagFallback & 7;
                                switch(TagFallback >> 3)
                                {
                                  case 1u:
                                    if (v8 != 2)
                                    {
                                      goto LABEL_89;
                                    }

                                    break;
                                  case 0x10u:
                                    if (v8 == 2)
                                    {
                                      goto LABEL_61;
                                    }

                                    goto LABEL_89;
                                  case 0x11u:
                                    if (v8 != 1)
                                    {
                                      goto LABEL_89;
                                    }

                                    *v74 = 0;
                                    if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v74))
                                    {
                                      goto LABEL_49;
                                    }

                                    return 0;
                                  case 0x12u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v30 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v30 < v26)
                                    {
                                      goto LABEL_79;
                                    }

                                    goto LABEL_104;
                                  case 0x13u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v40 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v40 >= v26)
                                    {
                                      goto LABEL_112;
                                    }

                                    goto LABEL_109;
                                  case 0x14u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v31 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v31 >= v26)
                                    {
                                      goto LABEL_120;
                                    }

                                    goto LABEL_117;
                                  case 0x15u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v35 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v35 >= v26)
                                    {
                                      goto LABEL_128;
                                    }

                                    goto LABEL_125;
                                  case 0x16u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v36 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v36 >= v26)
                                    {
                                      goto LABEL_136;
                                    }

                                    goto LABEL_133;
                                  case 0x17u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v42 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v42 >= v26)
                                    {
                                      goto LABEL_144;
                                    }

                                    goto LABEL_141;
                                  case 0x18u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v41 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v41 >= v26)
                                    {
                                      goto LABEL_152;
                                    }

                                    goto LABEL_149;
                                  case 0x19u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v27 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v27 >= v26)
                                    {
                                      goto LABEL_160;
                                    }

                                    goto LABEL_157;
                                  case 0x1Au:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v32 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v32 >= v26)
                                    {
                                      goto LABEL_168;
                                    }

                                    goto LABEL_165;
                                  case 0x1Bu:
                                    if (v8 != 5)
                                    {
                                      goto LABEL_89;
                                    }

                                    v74[0] = 0;
                                    if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v74))
                                    {
                                      goto LABEL_42;
                                    }

                                    return 0;
                                  case 0x1Cu:
                                    if (v8 != 5)
                                    {
                                      goto LABEL_89;
                                    }

                                    v74[0] = 0;
                                    if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v74))
                                    {
                                      goto LABEL_32;
                                    }

                                    return 0;
                                  case 0x1Du:
                                    if (v8 != 2)
                                    {
                                      goto LABEL_89;
                                    }

                                    *(a1 + 112) |= 0x4000u;
                                    v25 = *(a1 + 96);
                                    if (v25)
                                    {
                                      goto LABEL_74;
                                    }

                                    goto LABEL_36;
                                  default:
LABEL_89:
                                    if (v8 == 4)
                                    {
                                      return 1;
                                    }

                                    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
                                    {
                                      return 0;
                                    }

                                    continue;
                                }

                                while (1)
                                {
                                  v9 = *(a1 + 28);
                                  v10 = *(a1 + 24);
                                  if (v10 >= v9)
                                  {
                                    if (v9 == *(a1 + 32))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
                                      v9 = *(a1 + 28);
                                    }

                                    *(a1 + 28) = v9 + 1;
                                    operator new();
                                  }

                                  v11 = *(a1 + 16);
                                  *(a1 + 24) = v10 + 1;
                                  v12 = *(v11 + 8 * v10);
                                  v74[0] = 0;
                                  v13 = *(this + 1);
                                  if (v13 >= *(this + 2) || *v13 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v74[0] = *v13;
                                    *(this + 1) = v13 + 1;
                                  }

                                  v14 = *(this + 14);
                                  v15 = *(this + 15);
                                  *(this + 14) = v14 + 1;
                                  if (v14 >= v15)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                  if (!sub_245A30654(v12, this, v16, v17) || *(this + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                  v18 = *(this + 14);
                                  v19 = __OFSUB__(v18, 1);
                                  v20 = v18 - 1;
                                  if (v20 < 0 == v19)
                                  {
                                    *(this + 14) = v20;
                                  }

                                  v21 = *(this + 1);
                                  v22 = *(this + 2);
                                  if (v21 >= v22 || *v21 != 10)
                                  {
                                    break;
                                  }

                                  *(this + 1) = v21 + 1;
                                }

                                if (v22 - v21 >= 2 && *v21 == 130 && v21[1] == 1)
                                {
                                  *(this + 1) = v21 + 2;
LABEL_61:
                                  *(a1 + 112) |= 2u;
                                  v33 = *(a1 + 40);
                                  if (!v33)
                                  {
                                    operator new();
                                  }

                                  v74[0] = 0;
                                  v34 = *(this + 1);
                                  if (v34 >= *(this + 2) || *v34 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v74[0] = *v34;
                                    *(this + 1) = v34 + 1;
                                  }

                                  v67 = *(this + 14);
                                  v68 = *(this + 15);
                                  *(this + 14) = v67 + 1;
                                  if (v67 >= v68)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                  if (!sub_245A33AD0(v33, this, v69, v70) || *(this + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                  v71 = *(this + 14);
                                  v19 = __OFSUB__(v71, 1);
                                  v72 = v71 - 1;
                                  if (v72 < 0 == v19)
                                  {
                                    *(this + 14) = v72;
                                  }

                                  v73 = *(this + 1);
                                  if (*(this + 4) - v73 > 1 && *v73 == 137 && v73[1] == 1)
                                  {
                                    *(this + 1) = v73 + 2;
                                    *v74 = 0;
                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v74) & 1) == 0)
                                    {
                                      return 0;
                                    }

LABEL_49:
                                    *(a1 + 48) = *v74;
                                    *(a1 + 112) |= 4u;
                                    v29 = *(this + 1);
                                    v26 = *(this + 2);
                                    if (v26 - v29 >= 2 && *v29 == 144 && v29[1] == 1)
                                    {
                                      break;
                                    }
                                  }
                                }
                              }

                              v30 = (v29 + 2);
                              *(this + 1) = v30;
                              if (v30 < v26)
                              {
LABEL_79:
                                v38 = *v30;
                                if ((v38 & 0x80000000) == 0)
                                {
                                  *(a1 + 56) = v38;
                                  v39 = (v30 + 1);
                                  *(this + 1) = v39;
                                  *(a1 + 112) |= 8u;
                                  if (v26 - v39 < 2)
                                  {
                                    goto LABEL_1;
                                  }

                                  break;
                                }
                              }

LABEL_104:
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                              if (!result)
                              {
                                return result;
                              }

                              v39 = *(this + 1);
                              v26 = *(this + 2);
                              *(a1 + 112) |= 8u;
                            }

                            while (v26 - v39 < 2);
                          }

                          while (*v39 != 152 || v39[1] != 1);
                          v40 = (v39 + 2);
                          *(this + 1) = v40;
                          if (v40 < v26)
                          {
                            break;
                          }

LABEL_112:
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
                          if (!result)
                          {
                            return result;
                          }

                          v51 = *(this + 1);
                          v26 = *(this + 2);
                          *(a1 + 112) |= 0x20u;
                          if (v26 - v51 >= 2)
                          {
                            goto LABEL_114;
                          }
                        }

LABEL_109:
                        v50 = *v40;
                        if (v50 < 0)
                        {
                          goto LABEL_112;
                        }

                        *(a1 + 64) = v50;
                        v51 = (v40 + 1);
                        *(this + 1) = v51;
                        *(a1 + 112) |= 0x20u;
                        if (v26 - v51 < 2)
                        {
                          goto LABEL_1;
                        }

LABEL_114:
                        if (*v51 == 160 && v51[1] == 1)
                        {
                          v31 = (v51 + 2);
                          *(this + 1) = v31;
                          if (v31 < v26)
                          {
LABEL_117:
                            v52 = *v31;
                            if ((v52 & 0x80000000) == 0)
                            {
                              *(a1 + 80) = v52;
                              v53 = (v31 + 1);
                              *(this + 1) = v53;
                              *(a1 + 112) |= 0x200u;
                              if (v26 - v53 < 2)
                              {
                                goto LABEL_1;
                              }

                              break;
                            }
                          }

LABEL_120:
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
                          if (!result)
                          {
                            return result;
                          }

                          v53 = *(this + 1);
                          v26 = *(this + 2);
                          *(a1 + 112) |= 0x200u;
                          if (v26 - v53 >= 2)
                          {
                            break;
                          }
                        }
                      }
                    }

                    while (*v53 != 168 || v53[1] != 1);
                    v35 = (v53 + 2);
                    *(this + 1) = v35;
                    if (v35 < v26)
                    {
                      break;
                    }

LABEL_128:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
                    if (!result)
                    {
                      return result;
                    }

                    v55 = *(this + 1);
                    v26 = *(this + 2);
                    *(a1 + 112) |= 0x800u;
                    if (v26 - v55 >= 2)
                    {
                      goto LABEL_130;
                    }
                  }

LABEL_125:
                  v54 = *v35;
                  if (v54 < 0)
                  {
                    goto LABEL_128;
                  }

                  *(a1 + 88) = v54;
                  v55 = (v35 + 1);
                  *(this + 1) = v55;
                  *(a1 + 112) |= 0x800u;
                  if (v26 - v55 < 2)
                  {
                    goto LABEL_1;
                  }

LABEL_130:
                  if (*v55 == 176 && v55[1] == 1)
                  {
                    v36 = (v55 + 2);
                    *(this + 1) = v36;
                    if (v36 < v26)
                    {
LABEL_133:
                      v56 = *v36;
                      if ((v56 & 0x80000000) == 0)
                      {
                        *(a1 + 60) = v56;
                        v57 = (v36 + 1);
                        *(this + 1) = v57;
                        *(a1 + 112) |= 0x10u;
                        if (v26 - v57 < 2)
                        {
                          goto LABEL_1;
                        }

                        break;
                      }
                    }

LABEL_136:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                    if (!result)
                    {
                      return result;
                    }

                    v57 = *(this + 1);
                    v26 = *(this + 2);
                    *(a1 + 112) |= 0x10u;
                    if (v26 - v57 >= 2)
                    {
                      break;
                    }
                  }
                }
              }

              while (*v57 != 184 || v57[1] != 1);
              v42 = (v57 + 2);
              *(this + 1) = v42;
              if (v42 < v26)
              {
                break;
              }

LABEL_144:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
              if (!result)
              {
                return result;
              }

              v59 = *(this + 1);
              v26 = *(this + 2);
              *(a1 + 112) |= 0x40u;
              if (v26 - v59 >= 2)
              {
                goto LABEL_146;
              }
            }

LABEL_141:
            v58 = *v42;
            if (v58 < 0)
            {
              goto LABEL_144;
            }

            *(a1 + 68) = v58;
            v59 = (v42 + 1);
            *(this + 1) = v59;
            *(a1 + 112) |= 0x40u;
            if (v26 - v59 < 2)
            {
              goto LABEL_1;
            }

LABEL_146:
            if (*v59 == 192 && v59[1] == 1)
            {
              v41 = (v59 + 2);
              *(this + 1) = v41;
              if (v41 < v26)
              {
LABEL_149:
                v60 = *v41;
                if ((v60 & 0x80000000) == 0)
                {
                  *(a1 + 84) = v60;
                  v61 = (v41 + 1);
                  *(this + 1) = v61;
                  *(a1 + 112) |= 0x400u;
                  if (v26 - v61 < 2)
                  {
                    goto LABEL_1;
                  }

                  break;
                }
              }

LABEL_152:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 84));
              if (!result)
              {
                return result;
              }

              v61 = *(this + 1);
              v26 = *(this + 2);
              *(a1 + 112) |= 0x400u;
              if (v26 - v61 >= 2)
              {
                break;
              }
            }
          }
        }

        while (*v61 != 200 || v61[1] != 1);
        v27 = (v61 + 2);
        *(this + 1) = v27;
        if (v27 < v26)
        {
          break;
        }

LABEL_160:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
        if (!result)
        {
          return result;
        }

        v63 = *(this + 1);
        v26 = *(this + 2);
        *(a1 + 112) |= 0x80u;
        if (v26 - v63 >= 2)
        {
          goto LABEL_162;
        }
      }

LABEL_157:
      v62 = *v27;
      if (v62 < 0)
      {
        goto LABEL_160;
      }

      *(a1 + 72) = v62;
      v63 = (v27 + 1);
      *(this + 1) = v63;
      *(a1 + 112) |= 0x80u;
      if (v26 - v63 < 2)
      {
        goto LABEL_1;
      }

LABEL_162:
      if (*v63 == 208 && v63[1] == 1)
      {
        v32 = (v63 + 2);
        *(this + 1) = v32;
        if (v32 < v26)
        {
LABEL_165:
          v64 = *v32;
          if ((v64 & 0x80000000) == 0)
          {
            *(a1 + 76) = v64;
            v65 = (v32 + 1);
            *(this + 1) = v65;
            *(a1 + 112) |= 0x100u;
            if (v26 - v65 < 2)
            {
              goto LABEL_1;
            }

            break;
          }
        }

LABEL_168:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
        if (!result)
        {
          return result;
        }

        v65 = *(this + 1);
        v66 = *(this + 2);
        *(a1 + 112) |= 0x100u;
        if (v66 - v65 >= 2)
        {
          break;
        }
      }
    }

    if (*v65 == 221 && v65[1] == 1)
    {
      *(this + 1) = v65 + 2;
      v74[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v74) & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      *(a1 + 92) = v74[0];
      *(a1 + 112) |= 0x1000u;
      v28 = *(this + 1);
      if (*(this + 4) - v28 >= 2 && *v28 == 229 && v28[1] == 1)
      {
        *(this + 1) = v28 + 2;
        v74[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v74) & 1) == 0)
        {
          return 0;
        }

LABEL_32:
        *(a1 + 104) = v74[0];
        v23 = *(a1 + 112) | 0x2000;
        *(a1 + 112) = v23;
        v24 = *(this + 1);
        if (*(this + 4) - v24 >= 2 && *v24 == 234 && v24[1] == 1)
        {
          *(this + 1) = v24 + 2;
          *(a1 + 112) = v23 | 0x4000;
          v25 = *(a1 + 96);
          if (!v25)
          {
LABEL_36:
            operator new();
          }

LABEL_74:
          v74[0] = 0;
          v37 = *(this + 1);
          if (v37 >= *(this + 2) || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74))
            {
              return 0;
            }
          }

          else
          {
            v74[0] = *v37;
            *(this + 1) = v37 + 1;
          }

          v43 = *(this + 14);
          v44 = *(this + 15);
          *(this + 14) = v43 + 1;
          if (v43 >= v44)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A4AA88(v25, this, v45, v46) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v47 = *(this + 14);
          v19 = __OFSUB__(v47, 1);
          v48 = v47 - 1;
          if (v48 < 0 == v19)
          {
            *(this + 14) = v48;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            break;
          }
        }
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_245A33928(uint64_t this)
{
  v1 = this;
  v2 = *(this + 112);
  if ((v2 & 0x1FE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = sub_245A37D8C(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 48) = 0x3FFF5C28F5C28F5CLL;
    *&v3 = 0xC8000000C8;
    *(&v3 + 1) = 0xC8000000C8;
    *(v1 + 56) = v3;
    *(v1 + 72) = 200000000;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 76) = xmmword_245A9D160;
    *(v1 + 92) = 1088421888;
    *(v1 + 104) = 1088421888;
    if ((v2 & 0x4000) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = sub_245A4AA68(this);
      }
    }
  }

  if (*(v1 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 16) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 24));
  }

  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  *(v6 + 4) = 0;
  *(v6 + 26) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return this;
}

uint64_t sub_245A33A3C(uint64_t a1)
{
  *a1 = &unk_28589E508;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 191) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  return a1;
}

uint64_t sub_245A33AD0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (2)
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 < v9)
        {
          v11 = *v10;
          if ((v11 & 0x8000000000000000) == 0)
          {
            *(a1 + 16) = v11;
            v12 = v10 + 1;
            *(this + 1) = v12;
            *(a1 + 300) |= 1u;
            if (v12 < v9)
            {
              goto LABEL_435;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        *(a1 + 300) |= 1u;
        if (v12 >= v9)
        {
          continue;
        }

LABEL_435:
        if (*v12 != 16)
        {
          continue;
        }

        v51 = v12 + 1;
        *(this + 1) = v51;
        if (v51 >= v9)
        {
LABEL_440:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v201 = *(this + 1);
          v9 = *(this + 2);
          *(a1 + 300) |= 2u;
          if (v201 < v9)
          {
            goto LABEL_442;
          }

          continue;
        }

LABEL_437:
        v200 = *v51;
        if (v200 < 0)
        {
          goto LABEL_440;
        }

        *(a1 + 24) = v200;
        v201 = v51 + 1;
        *(this + 1) = v201;
        *(a1 + 300) |= 2u;
        if (v201 >= v9)
        {
          continue;
        }

LABEL_442:
        if (*v201 != 24)
        {
          continue;
        }

        v40 = v201 + 1;
        *(this + 1) = v40;
        v264[0] = 0;
        if (v40 < v9)
        {
LABEL_444:
          v202 = *v40;
          if ((v202 & 0x80000000) == 0)
          {
            *(this + 1) = v40 + 1;
            if (v202 <= 0xF)
            {
              goto LABEL_446;
            }

            goto LABEL_449;
          }
        }

LABEL_447:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
        if (!result)
        {
          return result;
        }

        v202 = v264[0];
        if (v264[0] <= 0xF)
        {
LABEL_446:
          *(a1 + 300) |= 4u;
          *(a1 + 28) = v202;
          goto LABEL_450;
        }

LABEL_449:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_450:
        v203 = *(this + 1);
        v61 = *(this + 2);
        if (v203 >= v61 || *v203 != 32)
        {
          continue;
        }

        v62 = v203 + 1;
        *(this + 1) = v62;
LABEL_453:
        v264[0] = 0;
        if (v62 >= v61 || (v204 = *v62, (v204 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
          if (!result)
          {
            return result;
          }

          v204 = v264[0];
          if (v264[0] <= 3)
          {
LABEL_456:
            *(a1 + 300) |= 8u;
            *(a1 + 32) = v204;
            goto LABEL_460;
          }
        }

        else
        {
          *(this + 1) = v62 + 1;
          if (v204 <= 3)
          {
            goto LABEL_456;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_460:
        v205 = *(this + 1);
        v64 = *(this + 2);
        if (v205 >= v64 || *v205 != 40)
        {
          continue;
        }

        v65 = v205 + 1;
        *(this + 1) = v65;
LABEL_463:
        v264[0] = 0;
        if (v65 >= v64 || (v206 = *v65, (v206 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
          if (!result)
          {
            return result;
          }

          v206 = v264[0];
          if (v264[0] <= 2)
          {
LABEL_466:
            *(a1 + 300) |= 0x10u;
            *(a1 + 36) = v206;
            goto LABEL_470;
          }
        }

        else
        {
          *(this + 1) = v65 + 1;
          if (v206 <= 2)
          {
            goto LABEL_466;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_470:
        v207 = *(this + 1);
        if (v207 >= *(this + 2) || *v207 != 61)
        {
          continue;
        }

        *(this + 1) = v207 + 1;
LABEL_473:
        v264[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v264[0];
        *(a1 + 300) |= 0x20u;
        v208 = *(this + 1);
        if (v208 >= *(this + 2) || *v208 != 69)
        {
          continue;
        }

        *(this + 1) = v208 + 1;
LABEL_477:
        v264[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v264[0];
        v209 = *(a1 + 300) | 0x40;
        *(a1 + 300) = v209;
        v210 = *(this + 1);
        if (v210 >= *(this + 2) || *v210 != 74)
        {
          continue;
        }

        *(this + 1) = v210 + 1;
        *(a1 + 300) = v209 | 0x80;
        v52 = *(a1 + 48);
        if (!v52)
        {
LABEL_481:
          operator new();
        }

LABEL_482:
        v264[0] = 0;
        v211 = *(this + 1);
        if (v211 >= *(this + 2) || *v211 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
          {
            return 0;
          }
        }

        else
        {
          v264[0] = *v211;
          *(this + 1) = v211 + 1;
        }

        v212 = *(this + 14);
        v213 = *(this + 15);
        *(this + 14) = v212 + 1;
        if (v212 >= v213)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A5193C(v52, this, v214, v215) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v216 = *(this + 14);
        v89 = __OFSUB__(v216, 1);
        v217 = v216 - 1;
        if (v217 < 0 == v89)
        {
          *(this + 14) = v217;
        }

        v218 = *(this + 1);
        if (v218 >= *(this + 2) || *v218 != 82)
        {
          continue;
        }

        *(this + 1) = v218 + 1;
        *(a1 + 300) |= 0x100u;
        v71 = *(a1 + 56);
        if (!v71)
        {
LABEL_494:
          operator new();
        }

LABEL_174:
        v264[0] = 0;
        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
          {
            return 0;
          }
        }

        else
        {
          v264[0] = *v72;
          *(this + 1) = v72 + 1;
        }

        v219 = *(this + 14);
        v220 = *(this + 15);
        *(this + 14) = v219 + 1;
        if (v219 >= v220)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A52230(v71, this, v221, v222) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v223 = *(this + 14);
        v89 = __OFSUB__(v223, 1);
        v224 = v223 - 1;
        if (v224 < 0 == v89)
        {
          *(this + 14) = v224;
        }

        v225 = *(this + 1);
        if (v225 >= *(this + 2) || *v225 != 90)
        {
          continue;
        }

        *(this + 1) = v225 + 1;
        *(a1 + 300) |= 0x200u;
        v69 = *(a1 + 64);
        if (!v69)
        {
LABEL_506:
          operator new();
        }

LABEL_170:
        v264[0] = 0;
        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
          {
            return 0;
          }
        }

        else
        {
          v264[0] = *v70;
          *(this + 1) = v70 + 1;
        }

        v226 = *(this + 14);
        v227 = *(this + 15);
        *(this + 14) = v226 + 1;
        if (v226 >= v227)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A53088(v69, this, v228, v229) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v230 = *(this + 14);
        v89 = __OFSUB__(v230, 1);
        v231 = v230 - 1;
        if (v231 < 0 == v89)
        {
          *(this + 14) = v231;
        }

        v232 = *(this + 1);
        if (v232 >= *(this + 2) || *v232 != 98)
        {
          continue;
        }

        *(this + 1) = v232 + 1;
        *(a1 + 300) |= 0x400u;
        v29 = *(a1 + 72);
        if (!v29)
        {
LABEL_518:
          operator new();
        }

LABEL_59:
        v264[0] = 0;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
          {
            return 0;
          }
        }

        else
        {
          v264[0] = *v30;
          *(this + 1) = v30 + 1;
        }

        v233 = *(this + 14);
        v234 = *(this + 15);
        *(this + 14) = v233 + 1;
        if (v233 >= v234)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A50BF4(v29, this, v235, v236) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v237 = *(this + 14);
        v89 = __OFSUB__(v237, 1);
        v238 = v237 - 1;
        if (v238 < 0 == v89)
        {
          *(this + 14) = v238;
        }

        v239 = *(this + 1);
        if (v239 >= *(this + 2) || *v239 != 109)
        {
          continue;
        }

        *(this + 1) = v239 + 1;
LABEL_530:
        v264[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = v264[0];
        v240 = *(a1 + 300) | 0x800;
        *(a1 + 300) = v240;
        v241 = *(this + 1);
        if (v241 >= *(this + 2) || *v241 != 114)
        {
          continue;
        }

        *(this + 1) = v241 + 1;
        *(a1 + 300) = v240 | 0x1000;
        v37 = *(a1 + 80);
        if (!v37)
        {
LABEL_534:
          operator new();
        }

LABEL_535:
        v264[0] = 0;
        v242 = *(this + 1);
        if (v242 >= *(this + 2) || *v242 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
          {
            return 0;
          }
        }

        else
        {
          v264[0] = *v242;
          *(this + 1) = v242 + 1;
        }

        v243 = *(this + 14);
        v244 = *(this + 15);
        *(this + 14) = v243 + 1;
        if (v243 >= v244)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A364A0(v37, this, v245, v246) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v247 = *(this + 14);
        v89 = __OFSUB__(v247, 1);
        v248 = v247 - 1;
        if (v248 < 0 == v89)
        {
          *(this + 14) = v248;
        }

        v249 = *(this + 1);
        if (v249 >= *(this + 2) || *v249 != 122)
        {
          continue;
        }

        *(this + 1) = v249 + 1;
        *(a1 + 300) |= 0x2000u;
        v24 = *(a1 + 88);
        if (!v24)
        {
LABEL_547:
          operator new();
        }

LABEL_49:
        v264[0] = 0;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
          {
            return 0;
          }
        }

        else
        {
          v264[0] = *v25;
          *(this + 1) = v25 + 1;
        }

        v250 = *(this + 14);
        v251 = *(this + 15);
        *(this + 14) = v250 + 1;
        if (v250 >= v251)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A54DD0(v24, this, v252, v253) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v254 = *(this + 14);
        v89 = __OFSUB__(v254, 1);
        v255 = v254 - 1;
        if (v255 < 0 == v89)
        {
          *(this + 14) = v255;
        }

        v256 = *(this + 1);
        if (*(this + 4) - v256 <= 1 || *v256 != 130 || v256[1] != 1)
        {
          continue;
        }

        *(this + 1) = v256 + 2;
        *(a1 + 300) |= 0x4000u;
        v54 = *(a1 + 104);
        if (!v54)
        {
LABEL_560:
          operator new();
        }

LABEL_138:
        v264[0] = 0;
        v55 = *(this + 1);
        if (v55 >= *(this + 2) || *v55 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
          {
            return 0;
          }
        }

        else
        {
          v264[0] = *v55;
          *(this + 1) = v55 + 1;
        }

        v257 = *(this + 14);
        v258 = *(this + 15);
        *(this + 14) = v257 + 1;
        if (v257 < v258)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (sub_245A4F38C(v54, this, v259, v260))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v261 = *(this + 14);
              v89 = __OFSUB__(v261, 1);
              v262 = v261 - 1;
              if (v262 < 0 == v89)
              {
                *(this + 14) = v262;
              }

              v263 = *(this + 1);
              if (*(this + 4) - v263 > 1 && *v263 == 137 && v263[1] == 1)
              {
                *(this + 1) = v263 + 2;
                *v264 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v264) & 1) == 0)
                {
                  return 0;
                }

LABEL_142:
                *(a1 + 112) = *v264;
                *(a1 + 300) |= 0x8000u;
                v57 = *(this + 1);
                v56 = *(this + 2);
                if (v56 - v57 >= 2 && *v57 == 144 && v57[1] == 1)
                {
                  v58 = (v57 + 2);
                  *(this + 1) = v58;
                  v264[0] = 0;
                  if (v58 < v56)
                  {
LABEL_188:
                    v76 = *v58;
                    if ((v76 & 0x80000000) == 0)
                    {
                      *(this + 1) = v58 + 1;
                      if (v76 > 1)
                      {
                        goto LABEL_269;
                      }

                      goto LABEL_190;
                    }
                  }

LABEL_267:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
                  if (!result)
                  {
                    return result;
                  }

                  v76 = v264[0];
                  if (v264[0] > 1)
                  {
LABEL_269:
                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
                    goto LABEL_270;
                  }

LABEL_190:
                  *(a1 + 300) |= 0x10000u;
                  *(a1 + 100) = v76;
LABEL_270:
                  v112 = *(this + 1);
                  if (*(this + 4) - v112 >= 2 && *v112 == 157 && v112[1] == 1)
                  {
                    *(this + 1) = v112 + 2;
                    v264[0] = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                    {
                      return 0;
                    }

LABEL_178:
                    *(a1 + 120) = v264[0];
                    *(a1 + 300) |= 0x20000u;
                    v73 = *(this + 1);
                    if (*(this + 4) - v73 >= 2 && *v73 == 165 && v73[1] == 1)
                    {
                      *(this + 1) = v73 + 2;
                      v264[0] = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                      {
                        return 0;
                      }

LABEL_36:
                      *(a1 + 124) = v264[0];
                      *(a1 + 300) |= 0x40000u;
                      v20 = *(this + 1);
                      if (*(this + 4) - v20 >= 2 && *v20 == 173 && v20[1] == 1)
                      {
                        *(this + 1) = v20 + 2;
LABEL_83:
                        v264[0] = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                        {
                          return 0;
                        }

                        *(a1 + 128) = v264[0];
                        *(a1 + 300) |= 0x80000u;
                        v38 = *(this + 1);
                        if (*(this + 4) - v38 >= 2 && *v38 == 181 && v38[1] == 1)
                        {
                          *(this + 1) = v38 + 2;
LABEL_198:
                          v264[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                          {
                            return 0;
                          }

                          *(a1 + 248) = v264[0];
                          *(a1 + 304) |= 0x100u;
                          v78 = *(this + 1);
                          if (*(this + 4) - v78 >= 2 && *v78 == 189 && v78[1] == 1)
                          {
                            *(this + 1) = v78 + 2;
                            v264[0] = 0;
                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                            {
                              return 0;
                            }

LABEL_42:
                            *(a1 + 136) = v264[0];
                            v21 = *(a1 + 300) | 0x200000;
                            *(a1 + 300) = v21;
                            v22 = *(this + 1);
                            if (*(this + 4) - v22 >= 2 && *v22 == 194 && v22[1] == 1)
                            {
                              *(this + 1) = v22 + 2;
                              *(a1 + 300) = v21 | 0x400000;
                              v23 = *(a1 + 144);
                              if (!v23)
                              {
LABEL_75:
                                operator new();
                              }

LABEL_76:
                              v264[0] = 0;
                              v36 = *(this + 1);
                              if (v36 >= *(this + 2) || *v36 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v264[0] = *v36;
                                *(this + 1) = v36 + 1;
                              }

                              v102 = *(this + 14);
                              v103 = *(this + 15);
                              *(this + 14) = v102 + 1;
                              if (v102 >= v103)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                              if (!sub_245A560F0(v23, this, v104, v105) || *(this + 36) != 1)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                              v106 = *(this + 14);
                              v89 = __OFSUB__(v106, 1);
                              v107 = v106 - 1;
                              if (v107 < 0 == v89)
                              {
                                *(this + 14) = v107;
                              }

                              v109 = *(this + 1);
                              v108 = *(this + 2);
                              if (v108 - v109 > 1 && *v109 == 200 && v109[1] == 1)
                              {
                                v28 = (v109 + 2);
                                *(this + 1) = v28;
                                v264[0] = 0;
                                if (v28 < v108)
                                {
LABEL_257:
                                  v110 = *v28;
                                  if ((v110 & 0x80000000) == 0)
                                  {
                                    *(this + 1) = v28 + 1;
                                    if (v110 <= 1)
                                    {
                                      goto LABEL_259;
                                    }

                                    goto LABEL_359;
                                  }
                                }

LABEL_357:
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
                                if (!result)
                                {
                                  return result;
                                }

                                v110 = v264[0];
                                if (v264[0] <= 1)
                                {
LABEL_259:
                                  *(a1 + 300) |= 0x800000u;
                                  *(a1 + 140) = v110;
                                  goto LABEL_360;
                                }

LABEL_359:
                                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_360:
                                v160 = *(this + 1);
                                if (*(this + 4) - v160 >= 2 && *v160 == 209 && v160[1] == 1)
                                {
                                  *(this + 1) = v160 + 2;
                                  *v264 = 0;
                                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v264) & 1) == 0)
                                  {
                                    return 0;
                                  }

LABEL_110:
                                  *(a1 + 152) = *v264;
                                  v45 = *(a1 + 300) | 0x1000000;
                                  *(a1 + 300) = v45;
                                  v46 = *(this + 1);
                                  if (*(this + 4) - v46 >= 2 && *v46 == 218 && v46[1] == 1)
                                  {
                                    *(this + 1) = v46 + 2;
                                    *(a1 + 300) = v45 | 0x2000000;
                                    v26 = *(a1 + 160);
                                    if (!v26)
                                    {
LABEL_114:
                                      operator new();
                                    }

LABEL_115:
                                    v264[0] = 0;
                                    v47 = *(this + 1);
                                    if (v47 >= *(this + 2) || *v47 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v264[0] = *v47;
                                      *(this + 1) = v47 + 1;
                                    }

                                    v94 = *(this + 14);
                                    v95 = *(this + 15);
                                    *(this + 14) = v94 + 1;
                                    if (v94 >= v95)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                    if (!sub_245A575C8(v26, this, v96, v97) || *(this + 36) != 1)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                    v98 = *(this + 14);
                                    v89 = __OFSUB__(v98, 1);
                                    v99 = v98 - 1;
                                    if (v99 < 0 == v89)
                                    {
                                      *(this + 14) = v99;
                                    }

                                    v100 = *(this + 1);
                                    if (*(this + 4) - v100 > 1 && *v100 == 226 && v100[1] == 1)
                                    {
                                      *(this + 1) = v100 + 2;
                                      *(a1 + 300) |= 0x4000000u;
                                      v80 = *(a1 + 168);
                                      if (!v80)
                                      {
LABEL_209:
                                        operator new();
                                      }

LABEL_244:
                                      v264[0] = 0;
                                      v101 = *(this + 1);
                                      if (v101 >= *(this + 2) || *v101 < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v264[0] = *v101;
                                        *(this + 1) = v101 + 1;
                                      }

                                      v152 = *(this + 14);
                                      v153 = *(this + 15);
                                      *(this + 14) = v152 + 1;
                                      if (v152 >= v153)
                                      {
                                        return 0;
                                      }

                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                      if (!sub_245A6C6B4(v80, this, v154, v155) || *(this + 36) != 1)
                                      {
                                        return 0;
                                      }

                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                      v156 = *(this + 14);
                                      v89 = __OFSUB__(v156, 1);
                                      v157 = v156 - 1;
                                      if (v157 < 0 == v89)
                                      {
                                        *(this + 14) = v157;
                                      }

                                      v158 = *(this + 1);
                                      if (*(this + 4) - v158 > 1 && *v158 == 234 && v158[1] == 1)
                                      {
                                        *(this + 1) = v158 + 2;
                                        *(a1 + 300) |= 0x8000000u;
                                        v79 = *(a1 + 176);
                                        if (!v79)
                                        {
LABEL_206:
                                          operator new();
                                        }

LABEL_354:
                                        v264[0] = 0;
                                        v159 = *(this + 1);
                                        if (v159 >= *(this + 2) || *v159 < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v264[0] = *v159;
                                          *(this + 1) = v159 + 1;
                                        }

                                        v169 = *(this + 14);
                                        v170 = *(this + 15);
                                        *(this + 14) = v169 + 1;
                                        if (v169 >= v170)
                                        {
                                          return 0;
                                        }

                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                        if (!sub_245A56868(v79, this, v171, v172) || *(this + 36) != 1)
                                        {
                                          return 0;
                                        }

                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                        v173 = *(this + 14);
                                        v89 = __OFSUB__(v173, 1);
                                        v174 = v173 - 1;
                                        if (v174 < 0 == v89)
                                        {
                                          *(this + 14) = v174;
                                        }

                                        v175 = *(this + 1);
                                        v33 = *(this + 2);
                                        if (v33 - v175 > 1 && *v175 == 240 && v175[1] == 1)
                                        {
                                          v34 = (v175 + 2);
                                          *(this + 1) = v34;
                                          v264[0] = 0;
                                          if (v34 < v33)
                                          {
LABEL_388:
                                            v176 = *v34;
                                            if ((v176 & 0x80000000) == 0)
                                            {
                                              v177 = (v34 + 1);
                                              *(this + 1) = v177;
                                              goto LABEL_405;
                                            }
                                          }

LABEL_403:
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v176 = v264[0];
                                          v177 = *(this + 1);
                                          v33 = *(this + 2);
LABEL_405:
                                          *(a1 + 192) = v176 != 0;
                                          *(a1 + 300) |= 0x10000000u;
                                          if (v33 - v177 >= 2 && *v177 == 249 && v177[1] == 1)
                                          {
                                            *(this + 1) = v177 + 2;
                                            *v264 = 0;
                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v264) & 1) == 0)
                                            {
                                              return 0;
                                            }

LABEL_93:
                                            *(a1 + 184) = *v264;
                                            *(a1 + 300) |= 0x20000000u;
                                            v42 = *(this + 1);
                                            v41 = *(this + 2);
                                            if (v41 - v42 >= 2 && *v42 == 128 && v42[1] == 2)
                                            {
                                              v43 = (v42 + 2);
                                              *(this + 1) = v43;
                                              v264[0] = 0;
                                              if (v43 >= v41)
                                              {
                                                goto LABEL_260;
                                              }

LABEL_149:
                                              v59 = *v43;
                                              if ((v59 & 0x80000000) != 0)
                                              {
LABEL_260:
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v59 = v264[0];
                                                v60 = *(this + 1);
                                                v41 = *(this + 2);
                                                goto LABEL_262;
                                              }

                                              v60 = (v43 + 1);
                                              *(this + 1) = v60;
LABEL_262:
                                              *(a1 + 193) = v59 != 0;
                                              *(a1 + 300) |= 0x40000000u;
                                              if (v41 - v60 >= 2 && *v60 == 141 && v60[1] == 2)
                                              {
                                                *(this + 1) = v60 + 2;
                                                v264[0] = 0;
                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                                                {
                                                  return 0;
                                                }

LABEL_100:
                                                *(a1 + 196) = v264[0];
                                                *(a1 + 300) |= 0x80000000;
                                                v44 = *(this + 1);
                                                if (*(this + 4) - v44 >= 2 && *v44 == 146 && v44[1] == 2)
                                                {
                                                  *(this + 1) = v44 + 2;
LABEL_217:
                                                  *(a1 + 304) |= 1u;
                                                  v82 = *(a1 + 200);
                                                  if (!v82)
                                                  {
                                                    operator new();
                                                  }

                                                  v264[0] = 0;
                                                  v83 = *(this + 1);
                                                  if (v83 >= *(this + 2) || *v83 < 0)
                                                  {
                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                    {
                                                      return 0;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v264[0] = *v83;
                                                    *(this + 1) = v83 + 1;
                                                  }

                                                  v84 = *(this + 14);
                                                  v85 = *(this + 15);
                                                  *(this + 14) = v84 + 1;
                                                  if (v84 >= v85)
                                                  {
                                                    return 0;
                                                  }

                                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                  if (!sub_245A4FD90(v82, this, v86, v87) || *(this + 36) != 1)
                                                  {
                                                    return 0;
                                                  }

                                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                  v88 = *(this + 14);
                                                  v89 = __OFSUB__(v88, 1);
                                                  v90 = v88 - 1;
                                                  if (v90 < 0 == v89)
                                                  {
                                                    *(this + 14) = v90;
                                                  }

                                                  v91 = *(this + 1);
                                                  v31 = *(this + 2);
                                                  if (v31 - v91 > 1 && *v91 == 152 && v91[1] == 2)
                                                  {
                                                    v32 = (v91 + 2);
                                                    *(this + 1) = v32;
                                                    v264[0] = 0;
                                                    if (v32 >= v31)
                                                    {
                                                      goto LABEL_310;
                                                    }

LABEL_232:
                                                    v92 = *v32;
                                                    if ((v92 & 0x80000000) != 0)
                                                    {
LABEL_310:
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v92 = v264[0];
                                                      v93 = *(this + 1);
                                                      v31 = *(this + 2);
                                                      goto LABEL_312;
                                                    }

                                                    v93 = (v32 + 1);
                                                    *(this + 1) = v93;
LABEL_312:
                                                    *(a1 + 194) = v92 != 0;
                                                    v135 = *(a1 + 304) | 2;
                                                    *(a1 + 304) = v135;
                                                    if (v31 - v93 >= 2 && *v93 == 162 && v93[1] == 2)
                                                    {
                                                      *(this + 1) = v93 + 2;
                                                      *(a1 + 304) = v135 | 4;
                                                      v74 = *(a1 + 208);
                                                      if (!v74)
                                                      {
LABEL_316:
                                                        operator new();
                                                      }

LABEL_317:
                                                      v264[0] = 0;
                                                      v136 = *(this + 1);
                                                      if (v136 >= *(this + 2) || *v136 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v264[0] = *v136;
                                                        *(this + 1) = v136 + 1;
                                                      }

                                                      v137 = *(this + 14);
                                                      v138 = *(this + 15);
                                                      *(this + 14) = v137 + 1;
                                                      if (v137 >= v138)
                                                      {
                                                        return 0;
                                                      }

                                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                      if (!sub_245A5BFB0(v74, this, v139, v140) || *(this + 36) != 1)
                                                      {
                                                        return 0;
                                                      }

                                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                      v141 = *(this + 14);
                                                      v89 = __OFSUB__(v141, 1);
                                                      v142 = v141 - 1;
                                                      if (v142 < 0 == v89)
                                                      {
                                                        *(this + 14) = v142;
                                                      }

                                                      v143 = *(this + 1);
                                                      if (*(this + 4) - v143 > 1 && *v143 == 170 && v143[1] == 2)
                                                      {
                                                        *(this + 1) = v143 + 2;
                                                        *(a1 + 304) |= 8u;
                                                        v81 = *(a1 + 216);
                                                        if (!v81)
                                                        {
LABEL_212:
                                                          operator new();
                                                        }

LABEL_330:
                                                        v264[0] = 0;
                                                        v144 = *(this + 1);
                                                        if (v144 >= *(this + 2) || *v144 < 0)
                                                        {
                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v264[0] = *v144;
                                                          *(this + 1) = v144 + 1;
                                                        }

                                                        v145 = *(this + 14);
                                                        v146 = *(this + 15);
                                                        *(this + 14) = v145 + 1;
                                                        if (v145 >= v146)
                                                        {
                                                          return 0;
                                                        }

                                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                        if (!sub_245A5CD28(v81, this, v147, v148) || *(this + 36) != 1)
                                                        {
                                                          return 0;
                                                        }

                                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                        v149 = *(this + 14);
                                                        v89 = __OFSUB__(v149, 1);
                                                        v150 = v149 - 1;
                                                        if (v150 < 0 == v89)
                                                        {
                                                          *(this + 14) = v150;
                                                        }

                                                        v151 = *(this + 1);
                                                        if (*(this + 4) - v151 > 1 && *v151 == 181 && v151[1] == 2)
                                                        {
                                                          *(this + 1) = v151 + 2;
                                                          v264[0] = 0;
                                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                                                          {
                                                            return 0;
                                                          }

LABEL_27:
                                                          *(a1 + 132) = v264[0];
                                                          *(a1 + 300) |= 0x100000u;
                                                          v18 = *(this + 1);
                                                          if (*(this + 4) - v18 >= 2 && *v18 == 189 && v18[1] == 2)
                                                          {
                                                            *(this + 1) = v18 + 2;
LABEL_159:
                                                            v264[0] = 0;
                                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                                                            {
                                                              return 0;
                                                            }

                                                            *(a1 + 224) = v264[0];
                                                            v66 = *(a1 + 304) | 0x10;
                                                            *(a1 + 304) = v66;
                                                            v67 = *(this + 1);
                                                            if (*(this + 4) - v67 >= 2 && *v67 == 194 && v67[1] == 2)
                                                            {
                                                              *(this + 1) = v67 + 2;
                                                              *(a1 + 304) = v66 | 0x20;
                                                              v17 = *(a1 + 232);
                                                              if (!v17)
                                                              {
LABEL_164:
                                                                operator new();
                                                              }

LABEL_165:
                                                              v264[0] = 0;
                                                              v68 = *(this + 1);
                                                              if (v68 >= *(this + 2) || *v68 < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v264[0] = *v68;
                                                                *(this + 1) = v68 + 1;
                                                              }

                                                              v113 = *(this + 14);
                                                              v114 = *(this + 15);
                                                              *(this + 14) = v113 + 1;
                                                              if (v113 >= v114)
                                                              {
                                                                return 0;
                                                              }

                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                              if (!sub_245A4FD90(v17, this, v115, v116) || *(this + 36) != 1)
                                                              {
                                                                return 0;
                                                              }

                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                              v117 = *(this + 14);
                                                              v89 = __OFSUB__(v117, 1);
                                                              v118 = v117 - 1;
                                                              if (v118 < 0 == v89)
                                                              {
                                                                *(this + 14) = v118;
                                                              }

                                                              v119 = *(this + 1);
                                                              if (*(this + 4) - v119 > 1 && *v119 == 205 && v119[1] == 2)
                                                              {
                                                                *(this + 1) = v119 + 2;
                                                                v264[0] = 0;
                                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                                                                {
                                                                  return 0;
                                                                }

LABEL_17:
                                                                *(a1 + 228) = v264[0];
                                                                v14 = *(a1 + 304) | 0x40;
                                                                *(a1 + 304) = v14;
                                                                v15 = *(this + 1);
                                                                if (*(this + 4) - v15 >= 2 && *v15 == 210 && v15[1] == 2)
                                                                {
                                                                  *(this + 1) = v15 + 2;
                                                                  *(a1 + 304) = v14 | 0x80;
                                                                  v16 = *(a1 + 240);
                                                                  if (!v16)
                                                                  {
LABEL_69:
                                                                    operator new();
                                                                  }

LABEL_70:
                                                                  v264[0] = 0;
                                                                  v35 = *(this + 1);
                                                                  if (v35 >= *(this + 2) || *v35 < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v264[0] = *v35;
                                                                    *(this + 1) = v35 + 1;
                                                                  }

                                                                  v120 = *(this + 14);
                                                                  v121 = *(this + 15);
                                                                  *(this + 14) = v120 + 1;
                                                                  if (v120 >= v121)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                                  if (!sub_245A53088(v16, this, v122, v123) || *(this + 36) != 1)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                                  v124 = *(this + 14);
                                                                  v89 = __OFSUB__(v124, 1);
                                                                  v125 = v124 - 1;
                                                                  if (v125 < 0 == v89)
                                                                  {
                                                                    *(this + 14) = v125;
                                                                  }

                                                                  v126 = *(this + 1);
                                                                  if (*(this + 4) - v126 > 1 && *v126 == 221 && v126[1] == 2)
                                                                  {
                                                                    *(this + 1) = v126 + 2;
                                                                    v264[0] = 0;
                                                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264) & 1) == 0)
                                                                    {
                                                                      return 0;
                                                                    }

LABEL_120:
                                                                    *(a1 + 252) = v264[0];
                                                                    v48 = *(a1 + 304) | 0x200;
                                                                    *(a1 + 304) = v48;
                                                                    v49 = *(this + 1);
                                                                    if (*(this + 4) - v49 >= 2 && *v49 == 226 && v49[1] == 2)
                                                                    {
                                                                      *(this + 1) = v49 + 2;
                                                                      *(a1 + 304) = v48 | 0x400;
                                                                      v50 = *(a1 + 256);
                                                                      if (!v50)
                                                                      {
LABEL_193:
                                                                        operator new();
                                                                      }

LABEL_194:
                                                                      v264[0] = 0;
                                                                      v77 = *(this + 1);
                                                                      if (v77 >= *(this + 2) || *v77 < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v264[0] = *v77;
                                                                        *(this + 1) = v77 + 1;
                                                                      }

                                                                      v127 = *(this + 14);
                                                                      v128 = *(this + 15);
                                                                      *(this + 14) = v127 + 1;
                                                                      if (v127 >= v128)
                                                                      {
                                                                        return 0;
                                                                      }

                                                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                                      if (!sub_245A6D090(v50, this, v129, v130) || *(this + 36) != 1)
                                                                      {
                                                                        return 0;
                                                                      }

                                                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                                      v131 = *(this + 14);
                                                                      v89 = __OFSUB__(v131, 1);
                                                                      v132 = v131 - 1;
                                                                      if (v132 < 0 == v89)
                                                                      {
                                                                        *(this + 14) = v132;
                                                                      }

                                                                      v133 = *(this + 1);
                                                                      if (*(this + 4) - v133 > 1 && *v133 == 234 && v133[1] == 2)
                                                                      {
                                                                        *(this + 1) = v133 + 2;
                                                                        *(a1 + 304) |= 0x800u;
                                                                        v13 = *(a1 + 264);
                                                                        if (!v13)
                                                                        {
LABEL_14:
                                                                          operator new();
                                                                        }

LABEL_307:
                                                                        v264[0] = 0;
                                                                        v134 = *(this + 1);
                                                                        if (v134 >= *(this + 2) || *v134 < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v264[0] = *v134;
                                                                          *(this + 1) = v134 + 1;
                                                                        }

                                                                        v161 = *(this + 14);
                                                                        v162 = *(this + 15);
                                                                        *(this + 14) = v161 + 1;
                                                                        if (v161 >= v162)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                                        if (!sub_245A6EAB8(v13, this, v163, v164) || *(this + 36) != 1)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                                        v165 = *(this + 14);
                                                                        v89 = __OFSUB__(v165, 1);
                                                                        v166 = v165 - 1;
                                                                        if (v166 < 0 == v89)
                                                                        {
                                                                          *(this + 14) = v166;
                                                                        }

                                                                        v167 = *(this + 1);
                                                                        if (*(this + 4) - v167 > 1 && *v167 == 242 && v167[1] == 2)
                                                                        {
                                                                          *(this + 1) = v167 + 2;
                                                                          *(a1 + 304) |= 0x1000u;
                                                                          v19 = *(a1 + 272);
                                                                          if (!v19)
                                                                          {
LABEL_33:
                                                                            operator new();
                                                                          }

LABEL_375:
                                                                          v264[0] = 0;
                                                                          v168 = *(this + 1);
                                                                          if (v168 >= *(this + 2) || *v168 < 0)
                                                                          {
                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                                            {
                                                                              return 0;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v264[0] = *v168;
                                                                            *(this + 1) = v168 + 1;
                                                                          }

                                                                          v178 = *(this + 14);
                                                                          v179 = *(this + 15);
                                                                          *(this + 14) = v178 + 1;
                                                                          if (v178 >= v179)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                                          if (!sub_245A700E4(v19, this, v180, v181) || *(this + 36) != 1)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                                          v182 = *(this + 14);
                                                                          v89 = __OFSUB__(v182, 1);
                                                                          v183 = v182 - 1;
                                                                          if (v183 < 0 == v89)
                                                                          {
                                                                            *(this + 14) = v183;
                                                                          }

                                                                          v184 = *(this + 1);
                                                                          if (*(this + 4) - v184 > 1 && *v184 == 250 && v184[1] == 2)
                                                                          {
                                                                            *(this + 1) = v184 + 2;
                                                                            *(a1 + 304) |= 0x2000u;
                                                                            v53 = *(a1 + 280);
                                                                            if (!v53)
                                                                            {
LABEL_135:
                                                                              operator new();
                                                                            }

LABEL_400:
                                                                            v264[0] = 0;
                                                                            v185 = *(this + 1);
                                                                            if (v185 >= *(this + 2) || *v185 < 0)
                                                                            {
                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                                              {
                                                                                return 0;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v264[0] = *v185;
                                                                              *(this + 1) = v185 + 1;
                                                                            }

                                                                            v186 = *(this + 14);
                                                                            v187 = *(this + 15);
                                                                            *(this + 14) = v186 + 1;
                                                                            if (v186 >= v187)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                                            if (!sub_245A6D77C(v53, this, v188, v189) || *(this + 36) != 1)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                                            v190 = *(this + 14);
                                                                            v89 = __OFSUB__(v190, 1);
                                                                            v191 = v190 - 1;
                                                                            if (v191 < 0 == v89)
                                                                            {
                                                                              *(this + 14) = v191;
                                                                            }

                                                                            v192 = *(this + 1);
                                                                            if (*(this + 4) - v192 > 1 && *v192 == 130 && v192[1] == 3)
                                                                            {
                                                                              *(this + 1) = v192 + 2;
                                                                              *(a1 + 304) |= 0x4000u;
                                                                              v63 = *(a1 + 288);
                                                                              if (!v63)
                                                                              {
LABEL_155:
                                                                                operator new();
                                                                              }

LABEL_420:
                                                                              v264[0] = 0;
                                                                              v193 = *(this + 1);
                                                                              if (v193 >= *(this + 2) || *v193 < 0)
                                                                              {
                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v264))
                                                                                {
                                                                                  return 0;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v264[0] = *v193;
                                                                                *(this + 1) = v193 + 1;
                                                                              }

                                                                              v194 = *(this + 14);
                                                                              v195 = *(this + 15);
                                                                              *(this + 14) = v194 + 1;
                                                                              if (v194 >= v195)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                                                                              if (!sub_245A6E02C(v63, this, v196, v197) || *(this + 36) != 1)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                                                                              v198 = *(this + 14);
                                                                              v89 = __OFSUB__(v198, 1);
                                                                              v199 = v198 - 1;
                                                                              if (v199 < 0 == v89)
                                                                              {
                                                                                *(this + 14) = v199;
                                                                              }

                                                                              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                                                                              {
                                                                                *(this + 8) = 0;
                                                                                result = 1;
                                                                                *(this + 36) = 1;
                                                                                return result;
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v51 = *(this + 1);
        v9 = *(this + 2);
        if (v51 >= v9)
        {
          goto LABEL_440;
        }

        goto LABEL_437;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v40 = *(this + 1);
        v39 = *(this + 2);
        v264[0] = 0;
        if (v40 >= v39)
        {
          goto LABEL_447;
        }

        goto LABEL_444;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v62 = *(this + 1);
        v61 = *(this + 2);
        goto LABEL_453;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v65 = *(this + 1);
        v64 = *(this + 2);
        goto LABEL_463;
      case 7u:
        if (v8 == 5)
        {
          goto LABEL_473;
        }

        goto LABEL_214;
      case 8u:
        if (v8 == 5)
        {
          goto LABEL_477;
        }

        goto LABEL_214;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x80u;
        v52 = *(a1 + 48);
        if (!v52)
        {
          goto LABEL_481;
        }

        goto LABEL_482;
      case 0xAu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x100u;
        v71 = *(a1 + 56);
        if (v71)
        {
          goto LABEL_174;
        }

        goto LABEL_494;
      case 0xBu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x200u;
        v69 = *(a1 + 64);
        if (v69)
        {
          goto LABEL_170;
        }

        goto LABEL_506;
      case 0xCu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x400u;
        v29 = *(a1 + 72);
        if (v29)
        {
          goto LABEL_59;
        }

        goto LABEL_518;
      case 0xDu:
        if (v8 == 5)
        {
          goto LABEL_530;
        }

        goto LABEL_214;
      case 0xEu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x1000u;
        v37 = *(a1 + 80);
        if (!v37)
        {
          goto LABEL_534;
        }

        goto LABEL_535;
      case 0xFu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x2000u;
        v24 = *(a1 + 88);
        if (v24)
        {
          goto LABEL_49;
        }

        goto LABEL_547;
      case 0x10u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x4000u;
        v54 = *(a1 + 104);
        if (v54)
        {
          goto LABEL_138;
        }

        goto LABEL_560;
      case 0x11u:
        if (v8 != 1)
        {
          goto LABEL_214;
        }

        *v264 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v264))
        {
          goto LABEL_142;
        }

        return 0;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v58 = *(this + 1);
        v75 = *(this + 2);
        v264[0] = 0;
        if (v58 < v75)
        {
          goto LABEL_188;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v264[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264))
        {
          goto LABEL_178;
        }

        return 0;
      case 0x14u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v264[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264))
        {
          goto LABEL_36;
        }

        return 0;
      case 0x15u:
        if (v8 == 5)
        {
          goto LABEL_83;
        }

        goto LABEL_214;
      case 0x16u:
        if (v8 == 5)
        {
          goto LABEL_198;
        }

        goto LABEL_214;
      case 0x17u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v264[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264))
        {
          goto LABEL_42;
        }

        return 0;
      case 0x18u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x400000u;
        v23 = *(a1 + 144);
        if (!v23)
        {
          goto LABEL_75;
        }

        goto LABEL_76;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v28 = *(this + 1);
        v27 = *(this + 2);
        v264[0] = 0;
        if (v28 >= v27)
        {
          goto LABEL_357;
        }

        goto LABEL_257;
      case 0x1Au:
        if (v8 != 1)
        {
          goto LABEL_214;
        }

        *v264 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v264))
        {
          goto LABEL_110;
        }

        return 0;
      case 0x1Bu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x2000000u;
        v26 = *(a1 + 160);
        if (!v26)
        {
          goto LABEL_114;
        }

        goto LABEL_115;
      case 0x1Cu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x4000000u;
        v80 = *(a1 + 168);
        if (!v80)
        {
          goto LABEL_209;
        }

        goto LABEL_244;
      case 0x1Du:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x8000000u;
        v79 = *(a1 + 176);
        if (!v79)
        {
          goto LABEL_206;
        }

        goto LABEL_354;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v34 = *(this + 1);
        v33 = *(this + 2);
        v264[0] = 0;
        if (v34 >= v33)
        {
          goto LABEL_403;
        }

        goto LABEL_388;
      case 0x1Fu:
        if (v8 != 1)
        {
          goto LABEL_214;
        }

        *v264 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v264))
        {
          goto LABEL_93;
        }

        return 0;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v43 = *(this + 1);
        v41 = *(this + 2);
        v264[0] = 0;
        if (v43 < v41)
        {
          goto LABEL_149;
        }

        goto LABEL_260;
      case 0x21u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v264[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264))
        {
          goto LABEL_100;
        }

        return 0;
      case 0x22u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        goto LABEL_217;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v32 = *(this + 1);
        v31 = *(this + 2);
        v264[0] = 0;
        if (v32 >= v31)
        {
          goto LABEL_310;
        }

        goto LABEL_232;
      case 0x24u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 4u;
        v74 = *(a1 + 208);
        if (!v74)
        {
          goto LABEL_316;
        }

        goto LABEL_317;
      case 0x25u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 8u;
        v81 = *(a1 + 216);
        if (!v81)
        {
          goto LABEL_212;
        }

        goto LABEL_330;
      case 0x26u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v264[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264))
        {
          goto LABEL_27;
        }

        return 0;
      case 0x27u:
        if (v8 == 5)
        {
          goto LABEL_159;
        }

        goto LABEL_214;
      case 0x28u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x20u;
        v17 = *(a1 + 232);
        if (!v17)
        {
          goto LABEL_164;
        }

        goto LABEL_165;
      case 0x29u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v264[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264))
        {
          goto LABEL_17;
        }

        return 0;
      case 0x2Au:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x80u;
        v16 = *(a1 + 240);
        if (!v16)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      case 0x2Bu:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v264[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v264))
        {
          goto LABEL_120;
        }

        return 0;
      case 0x2Cu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x400u;
        v50 = *(a1 + 256);
        if (!v50)
        {
          goto LABEL_193;
        }

        goto LABEL_194;
      case 0x2Du:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x800u;
        v13 = *(a1 + 264);
        if (!v13)
        {
          goto LABEL_14;
        }

        goto LABEL_307;
      case 0x2Eu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x1000u;
        v19 = *(a1 + 272);
        if (!v19)
        {
          goto LABEL_33;
        }

        goto LABEL_375;
      case 0x2Fu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x2000u;
        v53 = *(a1 + 280);
        if (!v53)
        {
          goto LABEL_135;
        }

        goto LABEL_400;
      case 0x30u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x4000u;
        v63 = *(a1 + 288);
        if (!v63)
        {
          goto LABEL_155;
        }

        goto LABEL_420;
      default:
LABEL_214:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

void sub_245A36374(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v1);
  MEMORY[0x245D78870](v4, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_245A364A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 5)
          {
            goto LABEL_39;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v20;
          *(a1 + 44) |= 1u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 21)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_28;
          }
        }

        else if (v8 == 2)
        {
          if (v9 != 5)
          {
            goto LABEL_39;
          }

LABEL_28:
          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v20;
          *(a1 + 44) |= 2u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 29)
          {
            *(this + 1) = v13 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_32;
          }
        }

        else
        {
          if (v8 != 3 || v9 != 5)
          {
            goto LABEL_39;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

LABEL_32:
          *(a1 + 24) = v20;
          *(a1 + 44) |= 4u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 37)
          {
            *(this + 1) = v14 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_39;
      }

      v20 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      *(a1 + 28) = v20;
      *(a1 + 44) |= 8u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 45)
      {
        *(this + 1) = v15 + 1;
LABEL_42:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v20;
        *(a1 + 44) |= 0x10u;
        v16 = *(this + 1);
        v10 = *(this + 2);
        if (v16 < v10 && *v16 == 48)
        {
          v11 = v16 + 1;
          *(this + 1) = v11;
          v20 = 0;
          if (v11 >= v10)
          {
            goto LABEL_48;
          }

LABEL_46:
          v17 = *v11;
          if ((v17 & 0x80000000) != 0)
          {
LABEL_48:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
            if (!result)
            {
              return result;
            }

            v17 = v20;
            v18 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_50;
          }

          v18 = v11 + 1;
          *(this + 1) = v18;
LABEL_50:
          *(a1 + 36) = v17 != 0;
          *(a1 + 44) |= 0x20u;
          if (v18 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 5)
    {
      if (v9 == 5)
      {
        goto LABEL_42;
      }
    }

    else if (v8 == 6 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v20 = 0;
      if (v11 >= v10)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

LABEL_39:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A367E8(uint64_t a1)
{
  if (*(a1 + 24) < 1)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = *(*(a1 + 16) + 8 * v2);
    result = (*(*v3 + 40))(v3);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v2;
  }

  while (v2 < *(a1 + 24));
  return result;
}

uint64_t sub_245A36864(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 112);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      v6 = *result;
      *(v6 + 112) = *(*result + 112) | 2;
      v7 = *(v6 + 40);
      if (!v7)
      {
LABEL_6:
        operator new();
      }
    }

    else
    {
      v5 = *(qword_28144B968 + 40);
      v8 = *result;
      *(v8 + 112) = *(*result + 112) | 2;
      v7 = *(v8 + 40);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    result = sub_245A37D20(v7, v5);
    v4 = *(a2 + 112);
  }

  if ((v4 & 4) != 0)
  {
    v9 = *v3;
    v10 = *(a2 + 48);
    *(v9 + 112) = *(*v3 + 112) | 4;
    *(v9 + 48) = v10;
    v4 = *(a2 + 112);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

  v11 = *v3;
  v12 = *(a2 + 56);
  *(v11 + 112) = *(*v3 + 112) | 8;
  *(v11 + 56) = v12;
  v4 = *(a2 + 112);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *v3;
  v14 = *(a2 + 60);
  *(v13 + 112) = *(*v3 + 112) | 0x10;
  *(v13 + 60) = v14;
  v4 = *(a2 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = *v3;
  v16 = *(a2 + 64);
  *(v15 + 112) = *(*v3 + 112) | 0x20;
  *(v15 + 64) = v16;
  v4 = *(a2 + 112);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = *v3;
  v18 = *(a2 + 68);
  *(v17 + 112) = *(*v3 + 112) | 0x40;
  *(v17 + 68) = v18;
  v4 = *(a2 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = *v3;
  v20 = *(a2 + 72);
  *(v19 + 112) = *(*v3 + 112) | 0x80;
  *(v19 + 72) = v20;
  v4 = *(a2 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v21 = *v3;
  v22 = *(a2 + 76);
  *(v21 + 112) = *(*v3 + 112) | 0x100;
  *(v21 + 76) = v22;
  v4 = *(a2 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v23 = *v3;
  v24 = *(a2 + 80);
  *(v23 + 112) = *(*v3 + 112) | 0x200;
  *(v23 + 80) = v24;
  v4 = *(a2 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v25 = *v3;
  v26 = *(a2 + 84);
  *(v25 + 112) = *(*v3 + 112) | 0x400;
  *(v25 + 84) = v26;
  v4 = *(a2 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  v27 = *v3;
  v28 = *(a2 + 88);
  *(v27 + 112) = *(*v3 + 112) | 0x800;
  *(v27 + 88) = v28;
  v4 = *(a2 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v29 = *v3;
  v30 = *(a2 + 92);
  *(v29 + 112) = *(*v3 + 112) | 0x1000;
  *(v29 + 92) = v30;
  v4 = *(a2 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = *v3;
  v32 = *(a2 + 104);
  *(v31 + 112) = *(*v3 + 112) | 0x2000;
  *(v31 + 104) = v32;
  if ((*(a2 + 112) & 0x4000) == 0)
  {
    return result;
  }

LABEL_34:
  v33 = *(a2 + 96);
  if (!v33)
  {
    v33 = *(qword_28144B968 + 96);
    v36 = *v3;
    *(v36 + 112) = *(*v3 + 112) | 0x4000;
    v35 = *(v36 + 96);
    if (v35)
    {
      goto LABEL_36;
    }

LABEL_40:
    operator new();
  }

  v34 = *v3;
  *(v34 + 112) = *(*v3 + 112) | 0x4000;
  v35 = *(v34 + 96);
  if (!v35)
  {
    goto LABEL_40;
  }

LABEL_36:

  return sub_245A4B288(v35, v33);
}

uint64_t sub_245A36BD0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v75);
    v4 = *(a2 + 300);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(a2 + 300);
    if (!v4)
    {
LABEL_13:
      if ((v4 & 0xFF00) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_28;
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 300) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 300);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 300) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 300);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a2 + 28);
  *(a1 + 300) |= 4u;
  *(a1 + 28) = v7;
  v4 = *(a2 + 300);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 32);
  *(a1 + 300) |= 8u;
  *(a1 + 32) = v8;
  v4 = *(a2 + 300);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 36);
  *(a1 + 300) |= 0x10u;
  *(a1 + 36) = v9;
  v4 = *(a2 + 300);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 40);
  *(a1 + 300) |= 0x20u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 300);
  if ((v4 & 0x40) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 44);
  *(a1 + 300) |= 0x40u;
  *(a1 + 44) = v11;
  v4 = *(a2 + 300);
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  *(a1 + 300) |= 0x80u;
  v12 = *(a1 + 48);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    sub_245A516B8(v12, v13);
    v4 = *(a2 + 300);
    if ((v4 & 0xFF00) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_245A516B8(v12, *(qword_28144B8C0 + 48));
    v4 = *(a2 + 300);
    if ((v4 & 0xFF00) == 0)
    {
      goto LABEL_62;
    }
  }

LABEL_28:
  if ((v4 & 0x100) != 0)
  {
    *(a1 + 300) |= 0x100u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 56);
    if (!v15)
    {
      v15 = *(qword_28144B8C0 + 56);
    }

    sub_245A51F4C(v14, v15);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x200) != 0)
  {
    *(a1 + 300) |= 0x200u;
    v16 = *(a1 + 64);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 64);
    if (!v17)
    {
      v17 = *(qword_28144B8C0 + 64);
    }

    sub_245A52C34(v16, v17);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x400) != 0)
  {
    *(a1 + 300) |= 0x400u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 72);
    if (!v19)
    {
      v19 = *(qword_28144B8C0 + 72);
    }

    sub_245A508E8(v18, v19);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x800) != 0)
  {
    v20 = *(a2 + 96);
    *(a1 + 300) |= 0x800u;
    *(a1 + 96) = v20;
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x1000) != 0)
  {
    *(a1 + 300) |= 0x1000u;
    v21 = *(a1 + 80);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 80);
    if (!v22)
    {
      v22 = *(qword_28144B8C0 + 80);
    }

    sub_245A38350(v21, v22);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x2000) != 0)
  {
    *(a1 + 300) |= 0x2000u;
    v23 = *(a1 + 88);
    if (!v23)
    {
      operator new();
    }

    v24 = *(a2 + 88);
    if (!v24)
    {
      v24 = *(qword_28144B8C0 + 88);
    }

    sub_245A54950(v23, v24);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x4000) != 0)
  {
    *(a1 + 300) |= 0x4000u;
    v25 = *(a1 + 104);
    if (!v25)
    {
      operator new();
    }

    v26 = *(a2 + 104);
    if (!v26)
    {
      v26 = *(qword_28144B8C0 + 104);
    }

    sub_245A4F104(v25, v26);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x8000) != 0)
  {
    v27 = *(a2 + 112);
    *(a1 + 300) |= 0x8000u;
    *(a1 + 112) = v27;
    v4 = *(a2 + 300);
  }

LABEL_62:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_72;
  }

  if ((v4 & 0x10000) != 0)
  {
    v50 = *(a2 + 100);
    *(a1 + 300) |= 0x10000u;
    *(a1 + 100) = v50;
    v4 = *(a2 + 300);
    if ((v4 & 0x20000) == 0)
    {
LABEL_65:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_137;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_65;
  }

  v51 = *(a2 + 120);
  *(a1 + 300) |= 0x20000u;
  *(a1 + 120) = v51;
  v4 = *(a2 + 300);
  if ((v4 & 0x40000) == 0)
  {
LABEL_66:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_138;
  }

LABEL_137:
  v52 = *(a2 + 124);
  *(a1 + 300) |= 0x40000u;
  *(a1 + 124) = v52;
  v4 = *(a2 + 300);
  if ((v4 & 0x80000) == 0)
  {
LABEL_67:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_139;
  }

LABEL_138:
  v53 = *(a2 + 128);
  *(a1 + 300) |= 0x80000u;
  *(a1 + 128) = v53;
  v4 = *(a2 + 300);
  if ((v4 & 0x100000) == 0)
  {
LABEL_68:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_140;
  }

LABEL_139:
  v54 = *(a2 + 132);
  *(a1 + 300) |= 0x100000u;
  *(a1 + 132) = v54;
  v4 = *(a2 + 300);
  if ((v4 & 0x200000) == 0)
  {
LABEL_69:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_141;
  }

LABEL_140:
  v55 = *(a2 + 136);
  *(a1 + 300) |= 0x200000u;
  *(a1 + 136) = v55;
  v4 = *(a2 + 300);
  if ((v4 & 0x400000) == 0)
  {
LABEL_70:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_141:
  *(a1 + 300) |= 0x400000u;
  v56 = *(a1 + 144);
  if (!v56)
  {
    operator new();
  }

  v57 = *(a2 + 144);
  if (v57)
  {
    sub_245A55EAC(v56, v57);
    v4 = *(a2 + 300);
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_72;
    }

LABEL_71:
    v28 = *(a2 + 140);
    *(a1 + 300) |= 0x800000u;
    *(a1 + 140) = v28;
    v4 = *(a2 + 300);
    goto LABEL_72;
  }

  sub_245A55EAC(v56, *(qword_28144B8C0 + 144));
  v4 = *(a2 + 300);
  if ((v4 & 0x800000) != 0)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (!HIBYTE(v4))
  {
    goto LABEL_94;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v29 = *(a2 + 152);
    *(a1 + 300) |= 0x1000000u;
    *(a1 + 152) = v29;
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x2000000) != 0)
  {
    *(a1 + 300) |= 0x2000000u;
    v30 = *(a1 + 160);
    if (!v30)
    {
      operator new();
    }

    v31 = *(a2 + 160);
    if (!v31)
    {
      v31 = *(qword_28144B8C0 + 160);
    }

    sub_245A572E0(v30, v31);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x4000000) != 0)
  {
    *(a1 + 300) |= 0x4000000u;
    v32 = *(a1 + 168);
    if (!v32)
    {
      operator new();
    }

    v33 = *(a2 + 168);
    if (!v33)
    {
      v33 = *(qword_28144B8C0 + 168);
    }

    sub_245A5B12C(v32, v33);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x8000000) != 0)
  {
    *(a1 + 300) |= 0x8000000u;
    v34 = *(a1 + 176);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 176);
    if (!v35)
    {
      v35 = *(qword_28144B8C0 + 176);
    }

    sub_245A56558(v34, v35);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x10000000) != 0)
  {
    v62 = *(a2 + 192);
    *(a1 + 300) |= 0x10000000u;
    *(a1 + 192) = v62;
    v4 = *(a2 + 300);
    if ((v4 & 0x20000000) == 0)
    {
LABEL_92:
      if ((v4 & 0x40000000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_153;
    }
  }

  else if ((v4 & 0x20000000) == 0)
  {
    goto LABEL_92;
  }

  v63 = *(a2 + 184);
  *(a1 + 300) |= 0x20000000u;
  *(a1 + 184) = v63;
  v4 = *(a2 + 300);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_93:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_154:
    v65 = *(a2 + 196);
    *(a1 + 300) |= 0x80000000;
    *(a1 + 196) = v65;
    v36 = *(a2 + 304);
    if (!v36)
    {
      goto LABEL_126;
    }

    goto LABEL_95;
  }

LABEL_153:
  v64 = *(a2 + 193);
  *(a1 + 300) |= 0x40000000u;
  *(a1 + 193) = v64;
  if ((*(a2 + 300) & 0x80000000) != 0)
  {
    goto LABEL_154;
  }

LABEL_94:
  v36 = *(a2 + 304);
  if (!v36)
  {
    goto LABEL_126;
  }

LABEL_95:
  if (v36)
  {
    *(a1 + 304) |= 1u;
    v37 = *(a1 + 200);
    if (!v37)
    {
      operator new();
    }

    v38 = *(a2 + 200);
    if (!v38)
    {
      v38 = *(qword_28144B8C0 + 200);
    }

    sub_245A4FA3C(v37, v38);
    v36 = *(a2 + 304);
  }

  if ((v36 & 2) != 0)
  {
    v39 = *(a2 + 194);
    *(a1 + 304) |= 2u;
    *(a1 + 194) = v39;
    v36 = *(a2 + 304);
  }

  if ((v36 & 4) != 0)
  {
    *(a1 + 304) |= 4u;
    v40 = *(a1 + 208);
    if (!v40)
    {
      operator new();
    }

    v41 = *(a2 + 208);
    if (!v41)
    {
      v41 = *(qword_28144B8C0 + 208);
    }

    sub_245A5B27C(v40, v41);
    v36 = *(a2 + 304);
  }

  if ((v36 & 8) != 0)
  {
    *(a1 + 304) |= 8u;
    v42 = *(a1 + 216);
    if (!v42)
    {
      operator new();
    }

    v43 = *(a2 + 216);
    if (!v43)
    {
      v43 = *(qword_28144B8C0 + 216);
    }

    sub_245A5B470(v42, v43);
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x10) != 0)
  {
    v44 = *(a2 + 224);
    *(a1 + 304) |= 0x10u;
    *(a1 + 224) = v44;
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x20) != 0)
  {
    *(a1 + 304) |= 0x20u;
    v45 = *(a1 + 232);
    if (!v45)
    {
      operator new();
    }

    v46 = *(a2 + 232);
    if (!v46)
    {
      v46 = *(qword_28144B8C0 + 232);
    }

    sub_245A4FA3C(v45, v46);
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x40) != 0)
  {
    v47 = *(a2 + 228);
    *(a1 + 304) |= 0x40u;
    *(a1 + 228) = v47;
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x80) != 0)
  {
    *(a1 + 304) |= 0x80u;
    v48 = *(a1 + 240);
    if (!v48)
    {
      operator new();
    }

    v49 = *(a2 + 240);
    if (!v49)
    {
      v49 = *(qword_28144B8C0 + 240);
    }

    sub_245A52C34(v48, v49);
    v36 = *(a2 + 304);
  }

LABEL_126:
  if ((v36 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v36 & 0x100) != 0)
  {
    v58 = *(a2 + 248);
    *(a1 + 304) |= 0x100u;
    *(a1 + 248) = v58;
    v36 = *(a2 + 304);
    if ((v36 & 0x200) == 0)
    {
LABEL_129:
      if ((v36 & 0x400) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_147;
    }
  }

  else if ((v36 & 0x200) == 0)
  {
    goto LABEL_129;
  }

  v59 = *(a2 + 252);
  *(a1 + 304) |= 0x200u;
  *(a1 + 252) = v59;
  v36 = *(a2 + 304);
  if ((v36 & 0x400) == 0)
  {
LABEL_130:
    if ((v36 & 0x800) == 0)
    {
      goto LABEL_131;
    }

LABEL_171:
    *(a1 + 304) |= 0x800u;
    v66 = *(a1 + 264);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 264);
    if (v67)
    {
      sub_245A5B688(v66, v67);
      v36 = *(a2 + 304);
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      sub_245A5B688(v66, *(qword_28144B8C0 + 264));
      v36 = *(a2 + 304);
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_178;
      }
    }

LABEL_132:
    if ((v36 & 0x2000) == 0)
    {
      goto LABEL_133;
    }

LABEL_184:
    *(a1 + 304) |= 0x2000u;
    v70 = *(a1 + 280);
    if (!v70)
    {
      operator new();
    }

    v71 = *(a2 + 280);
    if (v71)
    {
      sub_245A5BA78(v70, v71);
      if ((*(a2 + 304) & 0x4000) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else
    {
      sub_245A5BA78(v70, *(qword_28144B8C0 + 280));
      if ((*(a2 + 304) & 0x4000) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    goto LABEL_190;
  }

LABEL_147:
  *(a1 + 304) |= 0x400u;
  v60 = *(a1 + 256);
  if (!v60)
  {
    operator new();
  }

  v61 = *(a2 + 256);
  if (v61)
  {
    sub_245A5B5A0(v60, v61);
    v36 = *(a2 + 304);
    if ((v36 & 0x800) != 0)
    {
      goto LABEL_171;
    }
  }

  else
  {
    sub_245A5B5A0(v60, *(qword_28144B8C0 + 256));
    v36 = *(a2 + 304);
    if ((v36 & 0x800) != 0)
    {
      goto LABEL_171;
    }
  }

LABEL_131:
  if ((v36 & 0x1000) == 0)
  {
    goto LABEL_132;
  }

LABEL_178:
  *(a1 + 304) |= 0x1000u;
  v68 = *(a1 + 272);
  if (!v68)
  {
    operator new();
  }

  v69 = *(a2 + 272);
  if (v69)
  {
    sub_245A5B7D8(v68, v69);
    v36 = *(a2 + 304);
    if ((v36 & 0x2000) != 0)
    {
      goto LABEL_184;
    }
  }

  else
  {
    sub_245A5B7D8(v68, *(qword_28144B8C0 + 272));
    v36 = *(a2 + 304);
    if ((v36 & 0x2000) != 0)
    {
      goto LABEL_184;
    }
  }

LABEL_133:
  if ((v36 & 0x4000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_190:
  *(a1 + 304) |= 0x4000u;
  v72 = *(a1 + 288);
  if (!v72)
  {
    operator new();
  }

  v73 = *(a2 + 288);
  if (!v73)
  {
    v73 = *(qword_28144B8C0 + 288);
  }

  sub_245A5BBA8(v72, v73);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A37C54(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

void sub_245A37CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A37CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *sub_245A37CE8(int *result)
{
  if (*result != -1)
  {
    v1 = result;
    sub_245A328A0(result);
    return v1;
  }

  return result;
}

uint64_t sub_245A37D20(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_245A36BD0(v4, a2);
  }

  return result;
}

uint64_t sub_245A37D8C(uint64_t this)
{
  v1 = this;
  v2 = (this + 300);
  v3 = *(this + 300);
  if (v3)
  {
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    if (v3 < 0)
    {
      this = *(this + 48);
      if (this)
      {
        if (*(this + 32))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 24) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v5 = *v2;
  if ((*v2 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v6 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v6)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 2) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        v7 = *(this + 44);
        if (v7)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          if ((v7 & 0x10) != 0)
          {
            v8 = *(this + 32);
            if (v8)
            {
              if (*(v8 + 28))
              {
                *(v8 + 16) = 0;
              }

              v10 = *(v8 + 8);
              v9 = (v8 + 8);
              *(v9 + 5) = 0;
              if (v10)
              {
                v11 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
                this = v11;
              }
            }
          }
        }

        v12 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v12)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 4) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if (*(this + 48))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 40) = 0;
          *(this + 32) = 0;
        }

        v13 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        if (v13)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 96) = 0;
    if ((*(v1 + 301) & 0x10) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 29) = 0;
        }

        v14 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v14)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 0x20) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        v15 = *(this + 76);
        if (v15)
        {
          *(this + 56) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
          *(this + 16) = 0;
        }

        if ((v15 & 0xFF00) != 0)
        {
          *(this + 64) = 0;
          *(this + 60) = 0;
        }

        v16 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        *(this + 68) = 0;
        if (v16)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 0x40) != 0)
    {
      this = *(v1 + 104);
      if (this)
      {
        if (*(this + 40))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v17 = *(this + 8);
        this += 8;
        *(this + 32) = 0;
        if (v17)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 112) = 0;
    v5 = *(v1 + 300);
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v1 + 100) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    if ((v5 & 0x400000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        if (*(this + 24))
        {
          *(this + 16) = 0;
        }

        v18 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        if (v18)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 140) = 0;
    v5 = *(v1 + 300);
  }

  if (HIBYTE(v5))
  {
    *(v1 + 152) = 0;
    if ((v5 & 0x2000000) != 0)
    {
      this = *(v1 + 160);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 29) = 0;
        }

        v19 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v19)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 3) & 4) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        if (*(this + 56))
        {
          *(this + 48) = 0;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v20 = *(this + 8);
        this += 8;
        *(this + 48) = 0;
        if (v20)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 3) & 8) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        if (*(this + 76))
        {
          *(this + 64) = 0;
          *(this + 32) = 0u;
          *(this + 48) = 0u;
          *(this + 16) = 0u;
        }

        v21 = *(this + 8);
        this += 8;
        *(this + 68) = 0;
        if (v21)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 184) = 0;
    *(v1 + 196) = 0;
  }

  if (*(v1 + 304))
  {
    if (*(v1 + 304))
    {
      this = *(v1 + 200);
      if (this)
      {
        v22 = *(this + 44);
        if (v22)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        if ((v22 & 0xFF00) != 0)
        {
          *(this + 36) = 0;
        }

        v23 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v23)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 194) = 0;
    if ((*(v1 + 304) & 4) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        v24 = *(this + 60);
        if (v24)
        {
          *(this + 40) = 0;
          *(this + 36) = 0;
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        if ((v24 & 0xFF00) != 0)
        {
          *(this + 48) = 0;
        }

        v25 = *(this + 8);
        this += 8;
        *(this + 52) = 0;
        if (v25)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 304) & 8) != 0)
    {
      this = *(v1 + 216);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v26 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v26)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 224) = 0;
    if ((*(v1 + 304) & 0x20) != 0)
    {
      this = *(v1 + 232);
      if (this)
      {
        v27 = *(this + 44);
        if (v27)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        if ((v27 & 0xFF00) != 0)
        {
          *(this + 36) = 0;
        }

        v28 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v28)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 228) = 0;
    if ((*(v1 + 304) & 0x80) != 0)
    {
      this = *(v1 + 240);
      if (this)
      {
        v29 = *(this + 44);
        if (v29)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          if ((v29 & 0x10) != 0)
          {
            v30 = *(this + 32);
            if (v30)
            {
              if (*(v30 + 28))
              {
                *(v30 + 16) = 0;
              }

              v32 = *(v30 + 8);
              v31 = (v30 + 8);
              *(v31 + 5) = 0;
              if (v32)
              {
                v33 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v31);
                this = v33;
              }
            }
          }
        }

        v34 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v34)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v35 = *(v1 + 304);
  if ((v35 & 0xFF00) != 0)
  {
    *(v1 + 248) = 0;
    if ((v35 & 0x400) != 0)
    {
      this = *(v1 + 256);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v36 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v36)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 8) != 0)
    {
      this = *(v1 + 264);
      if (this)
      {
        if (*(this + 60))
        {
          *(this + 48) = 0;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v37 = *(this + 8);
        this += 8;
        *(this + 52) = 0;
        if (v37)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 0x10) != 0)
    {
      this = *(v1 + 272);
      if (this)
      {
        v38 = *(this + 44);
        if (v38)
        {
          *(this + 24) = 0;
          if ((v38 & 4) != 0)
          {
            v39 = *(this + 16);
            if (v39)
            {
              if (*(v39 + 36))
              {
                *(v39 + 16) = 0;
                *(v39 + 24) = 0;
              }

              v41 = *(v39 + 8);
              v40 = (v39 + 8);
              *(v40 + 7) = 0;
              if (v41)
              {
                v42 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v40);
                this = v42;
              }
            }
          }

          *(this + 26) = 0;
          v38 = *(this + 44);
        }

        if ((v38 & 0xFF00) != 0)
        {
          *(this + 36) = 0;
          *(this + 34) = 0;
        }

        v43 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v43)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 0x20) != 0)
    {
      this = *(v1 + 280);
      if (this)
      {
        if (*(this + 48))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 40) = 0;
          *(this + 32) = 0;
        }

        v44 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        if (v44)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 0x40) != 0)
    {
      this = *(v1 + 288);
      if (this)
      {
        if (*(this + 56))
        {
          *(this + 48) = 0;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v45 = *(this + 8);
        this += 8;
        *(this + 48) = 0;
        if (v45)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  *v2 = 0;
  v47 = *(v1 + 8);
  v46 = (v1 + 8);
  if (v47)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v46);
  }

  return this;
}

uint64_t sub_245A38350(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(a1 + 44) |= 2u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 24);
  *(a1 + 44) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 32);
    *(a1 + 44) |= 0x10u;
    *(a1 + 32) = v11;
    if ((*(a2 + 44) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 28);
  *(a1 + 44) |= 8u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x20u;
    *(a1 + 36) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A38498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A384AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A384C0(uint64_t a1)
{
  *a1 = &unk_2858A07C8;
  if (qword_28144B968 != a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 96);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 28);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 16) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(a1 + 28);
      }
    }
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x245D78850](v7, 0x80C80B8603338);
  }

  MEMORY[0x245D78300](a1 + 8);

  JUMPOUT(0x245D78470);
}

uint64_t sub_245A385F4(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (!v4)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8EDEC();
    }

    v5 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_245A2E000, v5, OS_LOG_TYPE_INFO, "@IndoorAvl, read, requested to getNextVenueBoundsIncrementally but have no file handle, opening now", v20, 2u);
    }

    sub_245A2F8D0(a1 + 32, v20);
    operator new();
  }

  v6 = sub_245A30284(a1, v4);
  v7 = v6;
  if (v6 != 1)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8EC88();
    }

    v9 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v20[0] = 67240192;
    v20[1] = v7;
    v10 = "@IndoorAvl, read, getNextVenueBoundsIncrementally, encountered field with number %{public}d, so there are no more venue bounds left, releasing file handle";
    v11 = v9;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 8;
    goto LABEL_18;
  }

  if (sub_245A303F4(v6, v4, a2))
  {
    result = 1;
    goto LABEL_23;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EC88();
  }

  v14 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20[0]) = 0;
    v10 = "@IndoorAvl, read, getNextVenueBoundsIncrementally, expected that we should have another VenueBounds object, but we don't";
    v11 = v14;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 2;
LABEL_18:
    _os_log_impl(&dword_245A2E000, v11, v12, v10, v20, v13);
  }

LABEL_19:
  v15 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v17 = *(a1 + 80);
  v16 = (a1 + 80);
  sub_245A328A0(v17);
  result = *v16;
  *v16 = 0;
  if (result)
  {
    v18 = sub_245A37CE8(result);
    MEMORY[0x245D78870](v18, 0x1000C4052888210);
    result = 0;
  }

LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

std::string::size_type sub_245A38948@<X0>(std::string::size_type result@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = *(result + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    v7 = *(*v5 + 23);
    if (v7 >= 0)
    {
      v8 = *v5;
    }

    else
    {
      v8 = **v5;
    }

    if (v7 >= 0)
    {
      v9 = *(*v5 + 23);
    }

    else
    {
      v9 = (*v5)[1];
    }

    result = sub_245A31D04(a3, a3, v8, (v8 + v9), v9);
    v10 = v5 + 1;
    v11 = &v5[v6];
    if (v10 == v11)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
    v11 = &v5[v6];
    if (v10 == v11)
    {
      return result;
    }
  }

  do
  {
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    v15 = strlen(a2);
    sub_245A318AC(a3, v13 + v14, a2, &a2[v15], v15);
    v16 = *(a3 + 23);
    if ((v16 & 0x80u) == 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a3 + 8);
    }

    v18 = *(*v10 + 23);
    if (v18 >= 0)
    {
      v19 = *v10;
    }

    else
    {
      v19 = **v10;
    }

    if (v18 >= 0)
    {
      v20 = *(*v10 + 23);
    }

    else
    {
      v20 = (*v10)[1];
    }

    result = sub_245A31D04(a3, v17 + v16, v19, (v19 + v20), v20);
    ++v10;
  }

  while (v10 != v11);
  return result;
}

void sub_245A38A68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245A38AAC(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 112) & 0x80) != 0)
  {
    v1 = *(*a1 + 72);
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8EDEC();
    }

    v1 = 200000000;
    v2 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67240192;
      v5[1] = 200000000;
      _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'indoorprefetchmaxfloorcount', using value of %{public}d", v5, 8u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_245A38B80(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 113) & 4) != 0)
  {
    v4 = (*a1 + 84);
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8EDEC();
    }

    v2 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*a1 + 80);
      v7[0] = 67240192;
      v7[1] = v3;
      _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEFAULT, "No regional value specified for 'regionalLocationOfInterestMergeRadiusKM', using indoor value of %{public}u", v7, 8u);
    }

    v4 = (*a1 + 80);
  }

  result = *v4;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245A38C8C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 113))
  {
    v1 = *(*a1 + 76);
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8EDEC();
    }

    v1 = 100000000;
    v2 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67240192;
      v5[1] = 100000000;
      _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'regionalprefetchmaxtotalbytes', using value of %{public}d", v5, 8u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_245A38D60(void *a1)
{
  *a1 = &unk_28589E508;
  v1 = a1 + 1;
  sub_245A38DFC(a1);
  MEMORY[0x245D78300](v1);

  JUMPOUT(0x245D78470);
}

void *sub_245A38DFC(void *result)
{
  if (qword_28144B8C0 != result)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[7];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[8];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[9];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[10];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[11];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[13];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[18];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[20];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[21];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[22];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[25];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[26];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[27];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[29];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[30];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[32];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[33];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[34];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[35];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    result = v1[36];
    if (result)
    {
      v22 = *(*result + 8);

      return v22();
    }
  }

  return result;
}

uint64_t sub_245A391E0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((*(*result + 112) & 2) != 0)
  {
    v3 = *(*result + 40);
    if (!v3)
    {
      v3 = *(qword_28144B968 + 40);
    }

    *a2 = 0;
    result = sub_245A39558((a2 + 8), v3);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_245A39278(void *a1)
{
  *a1 = &unk_28589E508;
  v2 = a1 + 1;
  sub_245A38DFC(a1);
  MEMORY[0x245D78300](v2);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

void sub_245A392EC(void *a1)
{
  *a1 = &unk_28589E198;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A39390(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 112) & 0x40) != 0)
  {
    v4 = (*a1 + 68);
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8EDEC();
    }

    v2 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      v3 = *(*a1 + 64);
      v7[0] = 67240192;
      v7[1] = v3;
      _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'regionalPrefetchMaxFloorCount', using indoor value of %{public}u", v7, 8u);
    }

    v4 = (*a1 + 64);
  }

  result = *v4;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245A39474(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 112) & 0x10) != 0)
  {
    v4 = (*a1 + 60);
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8EDEC();
    }

    v2 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      v3 = *(*a1 + 56);
      v7[0] = 67240192;
      v7[1] = v3;
      _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'regionalPrefetchRadiusKM', using indoor value of %{public}u", v7, 8u);
    }

    v4 = (*a1 + 56);
  }

  result = *v4;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245A39558(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28589E508;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 191) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  sub_245A36BD0(a1, a2);
  return a1;
}

uint64_t sub_245A39674(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return *(a1 + 60);
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 + 16);
  v4 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v4)
  {
    LODWORD(result) = 0;
    v9 = v3;
LABEL_11:
    v12 = &v3[v2];
    do
    {
      v13 = *v9++;
      result = (*(v13 + 48) + result);
    }

    while (v9 != v12);
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = v4 + 1;
  v8 = (v4 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v9 = &v3[v8];
  v10 = v3 + 1;
  v11 = v8;
  do
  {
    v5 += *(*(v10 - 1) + 48);
    v6 += *(*v10 + 48);
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  result = (v6 + v5);
  if (v7 != v8)
  {
    goto LABEL_11;
  }

  return result;
}

_DWORD *sub_245A3971C(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  *a2 = -1;
  return result;
}

void sub_245A3993C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id location, uint64_t a12, id a13)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a13);
  _Unwind_Resume(a1);
}

void sub_245A3996C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, id a13)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a13);
  _Unwind_Resume(a1);
}

void sub_245A39ABC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_245A39AE4(double *a1, double *a2, double *a3, uint64_t a4)
{
  v22 = 0;
  v8 = sub_245A3A4CC(a1, a2, a3, a4, &v22 + 1, &v22);
  if (v8 == 1)
  {
    goto LABEL_4;
  }

  if (v8)
  {
    if (v8 == -1)
    {
LABEL_4:
      if (HIBYTE(v22))
      {
        v9 = a2;
      }

      else
      {
        v9 = a3;
      }

      v10 = a1[1];
      v11 = v9[1];
      if (v10 == v11)
      {
        goto LABEL_37;
      }

      if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v16 = fabs(v10);
        v17 = fabs(v11);
        v18 = vabdd_f64(v10, v11);
        if (v16 < v17)
        {
          v16 = v17;
        }

        if (v16 < 1.0)
        {
          v16 = 1.0;
        }

        if (v18 <= v16 * 2.22044605e-16)
        {
          goto LABEL_37;
        }
      }

      v13 = v10 >= v11 ? v8 : -v8;
      if (!v13)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (v13 * v8 >= 1)
      {
        *a4 += v8;
      }

      goto LABEL_36;
    }

    v14 = v8;
    v23 = 1.0;
    v15 = sub_245A3A3A8(a2, a3, a1, &v23);
    if (v15 == 0.0)
    {
      goto LABEL_18;
    }

    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v19 = fabs(v15);
      if (v15 > 0.0)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v19 <= v23 * 2.22044605e-16)
      {
LABEL_18:
        v13 = 0;
      }
    }

    else if (v15 > 0.0)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    v8 = v14;
    if (!v13)
    {
LABEL_37:
      v20 = 0;
      *(a4 + 4) = 1;
      *a4 = 0;
      return v20 & 1;
    }

    goto LABEL_34;
  }

LABEL_36:
  v20 = *(a4 + 4) ^ 1;
  return v20 & 1;
}

double sub_245A39C8C(double *a1, double **a2)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6 == v5)
  {
    return 0.0;
  }

  v21[3] = v2;
  v21[4] = v3;
  v19 = 0;
  v20 = 0;
  v21[0] = 0;
  sub_245A3A67C(a1, v5, v6, &v18, v21, &v20, &v19);
  v8 = v20[1];
  v9 = *a1;
  v10 = a1[1];
  v11 = v21[0][1];
  v12 = *v20 - *v21[0];
  v13 = v8 - v11;
  v14 = *a1 - *v21[0];
  v15 = (v10 - v11) * (v8 - v11) + v14 * v12;
  if (v15 <= 0.0)
  {
    return sqrt(v14 * v14 + 0.0 + (v10 - v11) * (v10 - v11));
  }

  v16 = v13 * v13 + v12 * v12;
  if (v16 <= v15)
  {
    return sqrt((v9 - *v20) * (v9 - *v20) + 0.0 + (v10 - v8) * (v10 - v8));
  }

  else
  {
    return sqrt((v9 - (*v21[0] + v12 * (v15 / v16))) * (v9 - (*v21[0] + v12 * (v15 / v16))) + 0.0 + (v10 - (v11 + v13 * (v15 / v16))) * (v10 - (v11 + v13 * (v15 / v16))));
  }
}

double sub_245A39D8C(double *a1, double **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - *a2) < 0x40)
  {
    return sub_245A39C8C(a1, a2);
  }

  LODWORD(v61) = 0;
  BYTE4(v61) = 0;
  if (v3 + 2 == v4)
  {
    return sub_245A39C8C(a1, a2);
  }

  v5 = a2;
  do
  {
    if (!sub_245A39AE4(a1, v3, v3 + 2, &v61))
    {
      break;
    }

    v6 = v3 + 4;
    v3 += 2;
  }

  while (v6 != v4);
  a2 = v5;
  if ((BYTE4(v61) & 1) == 0 && !LODWORD(v61))
  {
    return sub_245A39C8C(a1, a2);
  }

  v9 = v5[3];
  v10 = v5[4];
  v7 = 0.0;
  if (v9 == v10)
  {
    return v7;
  }

  while (1)
  {
    v11 = v9[1];
    v12 = *v9 + 2;
    if ((v11 - *v9) >= 0x40 && v12 != v11)
    {
      break;
    }

LABEL_13:
    v9 += 3;
    if (v9 == v10)
    {
      return v7;
    }
  }

  v14 = 0;
  do
  {
    v17 = *(v12 - 2);
    v18 = *a1;
    if (v17 == *a1)
    {
      v19 = 1;
      v20 = *v12;
      if (*v12 == v18)
      {
        goto LABEL_29;
      }
    }

    else if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = fabs(v17);
      v29 = fabs(v18);
      v30 = vabdd_f64(v17, v18);
      if (v28 < v29)
      {
        v28 = v29;
      }

      if (v28 < 1.0)
      {
        v28 = 1.0;
      }

      v19 = v30 <= v28 * 2.22044605e-16;
      v20 = *v12;
      if (*v12 == v18)
      {
LABEL_29:
        v21 = 1;
        if (v19)
        {
          goto LABEL_30;
        }

LABEL_60:
        if (v19)
        {
LABEL_61:
          if (v20 <= v18)
          {
            v34 = -1;
          }

          else
          {
            v34 = 1;
          }

          if (v19)
          {
            v35 = v12 - 2;
          }

          else
          {
            v35 = v12;
          }

          v36 = a1[1];
          v37 = v35[1];
          if (v36 == v37)
          {
            goto LABEL_13;
          }

LABEL_74:
          if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v38 = fabs(v36);
            v39 = fabs(v37);
            v40 = vabdd_f64(v36, v37);
            if (v38 < v39)
            {
              v38 = v39;
            }

            if (v38 < 1.0)
            {
              v38 = 1.0;
            }

            if (v40 <= v38 * 2.22044605e-16)
            {
              goto LABEL_13;
            }
          }

          if (v36 >= v37)
          {
            v15 = v34;
          }

          else
          {
            v15 = -v34;
          }

          goto LABEL_22;
        }

        if (v21)
        {
          if (v17 <= v18)
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          v36 = a1[1];
          v37 = v12[1];
          if (v36 == v37)
          {
            goto LABEL_13;
          }

          goto LABEL_74;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v19 = 0;
      v20 = *v12;
      if (*v12 == v18)
      {
        goto LABEL_29;
      }
    }

    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v31 = fabs(v20);
      v32 = fabs(v18);
      v33 = vabdd_f64(v20, v18);
      if (v31 < v32)
      {
        v31 = v32;
      }

      if (v31 < 1.0)
      {
        v31 = 1.0;
      }

      v21 = v33 <= v31 * 2.22044605e-16;
      if (v19 && v21)
      {
LABEL_30:
        v22 = a1[1];
        v23 = *(v12 - 1);
        v24 = v12[1];
        if (v23 <= v22 && v24 >= v22)
        {
          goto LABEL_13;
        }

        if (v23 >= v22 && v24 <= v22)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

      goto LABEL_60;
    }

    if (v19)
    {
      goto LABEL_61;
    }

LABEL_82:
    if (v17 < v18 && v20 > v18)
    {
      v34 = 2;
LABEL_93:
      v61 = 1.0;
      v43 = sub_245A3A3A8(v12 - 2, v12, a1, &v61);
      if (v43 == 0.0)
      {
        goto LABEL_13;
      }

      if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v44 = fabs(v43);
        if (v43 > 0.0)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v44 <= v61 * 2.22044605e-16)
        {
          goto LABEL_13;
        }
      }

      else if (v43 > 0.0)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

LABEL_22:
      if (v34 * v15 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v34;
      }

      v14 += v16;
      goto LABEL_26;
    }

    if (v17 > v18 && v20 < v18)
    {
      v34 = -2;
      goto LABEL_93;
    }

LABEL_26:
    v12 += 2;
  }

  while (v12 != v11);
  if (!v14)
  {
    goto LABEL_13;
  }

  v45 = *v9;
  v46 = v9[1];
  if (v46 != *v9)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0.0;
    sub_245A3A67C(a1, v45, v46, &v58, &v61, &v60, &v59);
    v47 = v60[1];
    v48 = *a1;
    v49 = a1[1];
    v50 = *(*&v61 + 8);
    v51 = *v60 - **&v61;
    v52 = v47 - v50;
    v53 = *a1 - **&v61;
    v54 = (v49 - v50) * (v47 - v50) + v53 * v51;
    if (v54 <= 0.0)
    {
      return sqrt(v53 * v53 + 0.0 + (v49 - v50) * (v49 - v50));
    }

    else
    {
      v55 = v52 * v52 + v51 * v51;
      if (v55 <= v54)
      {
        v56 = v49 - v47;
        v57 = v48 - *v60;
      }

      else
      {
        v56 = v49 - (v50 + v52 * (v54 / v55));
        v57 = v48 - (**&v61 + v51 * (v54 / v55));
      }

      return sqrt(v57 * v57 + 0.0 + v56 * v56);
    }
  }

  return v7;
}