void sub_1D0C57CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cnframework::Supervisor::Pause(cnframework::Supervisor *this)
{
  std::mutex::lock((this + 416));
  *(this + 408) = 0;
  std::mutex::unlock((this + 416));
  if (cnprint::CNPrinter::GetLogLevel(v2) <= 1)
  {
    v12 = 3;
    v11 = 1;
    (*(*this + 40))(__p, this);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      LOBYTE(v8) = __p[0];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s calling Supervisor::Pause", v3, v4, v5, v6, v7, v8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 408) = 0;
}

void sub_1D0C57DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnframework::Supervisor::IsRunning(cnframework::Supervisor *this)
{
  std::mutex::lock((this + 416));
  v2 = *(this + 408);
  std::mutex::unlock((this + 416));
  return v2;
}

void cnframework::Supervisor::Start(cnframework::Supervisor *this)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v23 = 3;
    v22 = 1;
    (*(*this + 40))(__p, this);
    if (v21 >= 0)
    {
      v7 = __p;
    }

    else
    {
      LOBYTE(v7) = __p[0];
    }

    cnprint::CNPrinter::Print(&v23, &v22, "%s calling Supervisor::Start", v2, v3, v4, v5, v6, v7);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 480) == 1)
  {
    v23 = 3;
    v22 = 4;
    (*(*this + 40))(__p, this);
    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      LOBYTE(v13) = __p[0];
    }

    cnprint::CNPrinter::Print(&v23, &v22, "%s called Supervisor::Start after Supervisor::TearDown", v8, v9, v10, v11, v12, v13);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::recursive_mutex::lock(this + 4);
    if (*(this + 29) == *(this + 30))
    {
      v23 = 3;
      v22 = 4;
      (*(*this + 40))(__p, this);
      if (v21 >= 0)
      {
        v19 = __p;
      }

      else
      {
        LOBYTE(v19) = __p[0];
      }

      cnprint::CNPrinter::Print(&v23, &v22, "%s called Supervisor::Start with no registered active objects", v14, v15, v16, v17, v18, v19);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::recursive_mutex::unlock(this + 4);
    std::mutex::lock((this + 416));
    *(this + 408) = 1;
    std::mutex::unlock((this + 416));
  }
}

void sub_1D0C57FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v16 + 4);
  _Unwind_Resume(a1);
}

void cnframework::Supervisor::TearDown(cnframework::Supervisor *this)
{
  v18 = 3;
  v17 = 2;
  (*(*this + 40))(__p);
  if (v16 >= 0)
  {
    v7 = __p;
  }

  else
  {
    LOBYTE(v7) = __p[0];
  }

  cnprint::CNPrinter::Print(&v18, &v17, "%s calling Supervisor::TearDown", v2, v3, v4, v5, v6, v7);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  cnframework::Supervisor::Pause(this);
  *(this + 480) = 1;
  if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
  {
    v18 = 3;
    v17 = 1;
    (*(*this + 40))(__p, this);
    if (v16 >= 0)
    {
      v14 = __p;
    }

    else
    {
      LOBYTE(v14) = __p[0];
    }

    cnprint::CNPrinter::Print(&v18, &v17, "%s torn down successfully", v9, v10, v11, v12, v13, v14);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0C58154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cnframework::Supervisor::RegisterActiveObject(std::recursive_mutex *this, cnframework::ActiveObjectBase *a2)
{
  if (this[7].__m_.__opaque[24] == 1)
  {
    LOWORD(v32[0]) = 3;
    LOBYTE(v35) = 4;
    (*(this->__m_.__sig + 40))(__p, this, a2);
    if (v37 >= 0)
    {
      v8 = __p;
    }

    else
    {
      LOBYTE(v8) = __p[0];
    }

    cnprint::CNPrinter::Print(v32, &v35, "%s called Supervisor::RegisterActiveObject after Supervisor::TearDown", v3, v4, v5, v6, v7, v8);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::recursive_mutex::lock(this + 4);
    for (i = *&this[3].__m_.__opaque[32]; i != *&this[3].__m_.__opaque[40]; ++i)
    {
      v11 = *i;
      if (*i == a2)
      {
        v35 = 3;
        v34 = 4;
        (*(this->__m_.__sig + 40))(__p, this);
        v21 = v37;
        v22 = __p[0];
        (*(*v11 + 16))(v32, v11);
        v28 = __p;
        if (v21 < 0)
        {
          LOBYTE(v28) = v22;
        }

        cnprint::CNPrinter::Print(&v35, &v34, "%s called Supervisor::RegisterActiveObject twice on %s.", v23, v24, v25, v26, v27, v28);
        if (v33 < 0)
        {
          operator delete(v32[0]);
        }

        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_31;
      }
    }

    cnframework::ActiveObjectBase::SetEventDistributor(a2, this);
    v13 = *&this[3].__m_.__opaque[40];
    v12 = *&this[3].__m_.__opaque[48];
    if (v13 >= v12)
    {
      v15 = *&this[3].__m_.__opaque[32];
      v16 = v13 - v15;
      v17 = (v13 - v15) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_1D0C5663C();
      }

      v19 = v12 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        sub_1D0C54BE8();
      }

      v29 = (v13 - v15) >> 3;
      v30 = (8 * v17);
      v31 = (8 * v17 - 8 * v29);
      *v30 = a2;
      v14 = v30 + 1;
      memcpy(v31, v15, v16);
      *&this[3].__m_.__opaque[32] = v31;
      *&this[3].__m_.__opaque[40] = v14;
      *&this[3].__m_.__opaque[48] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = a2;
      v14 = v13 + 8;
    }

    *&this[3].__m_.__opaque[40] = v14;
LABEL_31:
    std::recursive_mutex::unlock(this + 4);
  }
}

void sub_1D0C58414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::recursive_mutex::unlock(v24 + 4);
  _Unwind_Resume(a1);
}

void sub_1D0C58478(raven::RavenCoarseOdometerActiveObject *a1)
{
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(raven::RavenCoarseOdometerActiveObject *this)
{
  *this = &unk_1F4CD5620;
  v4 = (this + 176);
  sub_1D0BBBD80(&v4);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  sub_1D0C577A0(this + 32);
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t cnframework::EventSubscription::EventSubscription(uint64_t this)
{
  *this = 1;
  *(this + 8) = MEMORY[0x1E69E54A8];
  *(this + 16) = 1;
  *(this + 24) = 0;
  return this;
}

{
  *this = 1;
  *(this + 8) = MEMORY[0x1E69E54A8];
  *(this + 16) = 1;
  *(this + 24) = 0;
  return this;
}

uint64_t cnframework::EventSubscription::EventSubscription(uint64_t this, const std::type_info *a2, const cnframework::ActiveObjectBase *a3)
{
  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = a3;
  return this;
}

{
  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = a3;
  return this;
}

uint64_t cnframework::EventSubscription::EventSubscription(uint64_t this, const std::type_info *a2)
{
  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = 1;
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = 1;
  *(this + 24) = 0;
  return this;
}

uint64_t cnframework::EventSubscription::EventSubscription(uint64_t this, const cnframework::ActiveObjectBase *a2)
{
  *this = 1;
  *(this + 8) = MEMORY[0x1E69E54A8];
  *(this + 16) = 0;
  *(this + 24) = a2;
  return this;
}

{
  *this = 1;
  *(this + 8) = MEMORY[0x1E69E54A8];
  *(this + 16) = 0;
  *(this + 24) = a2;
  return this;
}

BOOL cnframework::EventSubscription::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = sub_1D0B7CA64(*(a1 + 1), *(a2 + 1));
  if (result)
  {
    return a1[16] == a2[16] && *(a1 + 3) == *(a2 + 3);
  }

  return result;
}

uint64_t cnlogging::details::ByteUnstuffer::readAndUnstuff(unint64_t **this, void *a2, uint64_t *a3, uint64_t *a4)
{
  a2[1] = *a2;
  v22 = 0;
  while (1)
  {
    result = cnlogging::details::ByteUnstuffer::readAndUnstuffU8(this, &v22);
    if (!result)
    {
      return result;
    }

    sub_1D0C58918(a2, &v22);
    if ((v22 & 0x80000000) == 0)
    {
      *a4 = 0;
      result = cnlogging::details::ByteUnstuffer::decodeLength(v9, a2, 0, a4);
      if (result)
      {
        v10 = a2[1] - *a2;
        *a3 = v10;
        if (*a4)
        {
          v11 = 0;
          while (1)
          {
            result = cnlogging::details::ByteUnstuffer::readAndUnstuffU8(this, &v22);
            if (!result)
            {
              break;
            }

            sub_1D0C58918(a2, &v22);
            if (++v11 >= *a4)
            {
              v10 = a2[1] - *a2;
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          v12 = 4;
          while (1)
          {
            result = cnlogging::details::ByteUnstuffer::readAndUnstuffU8(this, &v22);
            if (!result)
            {
              break;
            }

            sub_1D0C58918(a2, &v22);
            if (!--v12)
            {
              v21 = 0;
              v14 = cnlogging::details::ByteUnstuffer::decodeChecksum(v13, a2, v10, &v21);
              result = 0;
              if (v14)
              {
                v15 = *a4;
                if (*a4)
                {
                  v16 = 0;
                  v17 = (*a2 + *a3);
                  v18 = 1;
                  do
                  {
                    v19 = *v17++;
                    v18 = (v18 + v19) % 0xFFF1;
                    v16 = (v18 + v16) % 0xFFF1;
                    --v15;
                  }

                  while (v15);
                  v20 = v18 | (v16 << 16);
                }

                else
                {
                  v20 = 1;
                }

                return v20 == v21;
              }

              return result;
            }
          }
        }
      }

      return result;
    }
  }
}

uint64_t cnlogging::details::ByteUnstuffer::readAndUnstuffU8(unint64_t **this, unsigned __int8 *a2)
{
  v2 = *this;
  if (*(*this + 2) == -1)
  {
    return 0;
  }

  v3 = v2[3];
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v2[4];
  if (v3 >= v4)
  {
    return 0;
  }

  v5 = v2[2];
  if (!v5)
  {
    return 0;
  }

  v6 = *v2;
  if (v3 >= *v2)
  {
    return 0;
  }

  v7 = *(v5 + v3);
  v8 = v3 + 1;
  v2[3] = v3 + 1;
  v9 = v7 | (*(this + 4) << 8);
  *(this + 4) = v9;
  if (v9 == 32381)
  {
    return 0;
  }

  if (v9 == 32349)
  {
    if (v8 < v4 && v8 < v6)
    {
      v12 = *(v5 + v8);
      v2[3] = v3 + 2;
      *(this + 4) = v12 | (v7 << 8);
      LOBYTE(v7) = v12;
      goto LABEL_14;
    }

    return 0;
  }

LABEL_14:
  *a2 = v7;
  return 1;
}

void sub_1D0C58918(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1D0C58BCC();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t cnlogging::details::ByteUnstuffer::decodeLength(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a2 + 8) - *a2;
  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v20, (*a2 + a3));
  v11 = v20;
  v12 = 0;
  v13 = 0;
  v14[0] = 0;
  *(v14 + 6) = 0;
  v15 = xmmword_1D0E76380;
  v6 = *MEMORY[0x1E69E5950];
  v16 = 0;
  v17 = v6;
  v18 = 0;
  v19 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(&v11);
  v10 = 0;
  if (v12 >= v13 || (v7 = *v12, (v7 & 0x80000000) != 0))
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&v11, &v10))
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = v10;
  }

  else
  {
    ++v12;
  }

  *a4 = v7;
  v8 = 1;
LABEL_7:
  MEMORY[0x1D387E3A0](&v11);
  MEMORY[0x1D387E300](v20);
  return v8;
}

uint64_t cnlogging::details::ByteUnstuffer::decodeChecksum(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v15, (*a2 + a3));
  v8[0] = v15;
  v8[1] = 0;
  v8[2] = 0;
  v9[0] = 0;
  *(v9 + 6) = 0;
  v10 = xmmword_1D0E76380;
  v5 = *MEMORY[0x1E69E5950];
  v11 = 0;
  v12 = v5;
  v13 = 0;
  v14 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v8);
  LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v8, a4);
  MEMORY[0x1D387E3A0](v8);
  MEMORY[0x1D387E300](v15);
  return LittleEndian32Fallback;
}

uint64_t cnlogging::details::InputStreamSync::sync(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 < 0)
  {
    return 0;
  }

  if (v3 <= *(*a1 + 32))
  {
    *(*a1 + 24) = v3;
    while (1)
    {
      v13 = 0;
      if ((cnlogging::details::InputStreamSync::findNextSentinelAndGetVersionByteIdx(a1, a2, &v13) & 1) == 0)
      {
        break;
      }

      v7 = *a1;
      v8 = v13;
      *(v7 + 24) = v13;
      if (*(v7 + 8) == -1)
      {
        break;
      }

      if (v8 < 0)
      {
        break;
      }

      if (v8 >= *(v7 + 32))
      {
        break;
      }

      v9 = *(v7 + 16);
      if (!v9 || v8 >= *v7)
      {
        break;
      }

      v10 = *(v9 + v8);
      *(v7 + 24) = v8 + 1;
      if (v10 == 1)
      {
        v11 = v8 >= 2;
        v12 = v8 - 2;
        if (!v11)
        {
          return 0;
        }

        a1[1] = v12;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t cnlogging::details::InputStreamSync::findNextSentinelAndGetVersionByteIdx(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v20 = 0;
  v6 = *a1;
  v7 = *(v6 + 24);
  if (a2 == 1)
  {
    v8 = *(v6 + 32);
    if (v8 - v7 >= 3)
    {
      if (*(v6 + 8) != -1)
      {
        v9 = 0;
        v10 = 1;
        v11 = *(v6 + 24);
        do
        {
          v12 = 0;
          if (v7 < 0)
          {
            return v12;
          }

          if (v11 >= v8)
          {
            return v12;
          }

          v12 = *(v6 + 16);
          if (!v12)
          {
            return v12;
          }

          v13 = v10;
          if (v11 >= *v6)
          {
            return 0;
          }

          v10 = 0;
          v14 = *(v12 + v11++);
          *(v6 + 24) = v11;
          v9 = v14 | (v9 << 8);
        }

        while ((v13 & 1) != 0);
        v20 = v14;
        if (v9 == 32381)
        {
          *a3 = v7 + 2;
          if (v7 <= *(v6 + 32))
          {
            *(v6 + 24) = v7;
            return 1;
          }

          return 0;
        }

        goto LABEL_14;
      }

      return 0;
    }
  }

  if (v7 < 0)
  {
    return 0;
  }

LABEL_14:
  if (v7 > *(v6 + 32))
  {
    return 0;
  }

  *(v6 + 24) = v7;
  v16 = cnlogging::details::ByteReader::readNextByte(v6, a2, &v20);
  v12 = 0;
  if (!v16 || a2 > 1)
  {
    return v12;
  }

  v17 = 0;
  while (a2)
  {
    HIDWORD(v18) = v20;
    LODWORD(v18) = v17 << 16;
    v17 = v18 >> 24;
    if ((v18 >> 24) == 32381)
    {
      v19 = *(*a1 + 24) + 3;
      goto LABEL_27;
    }

LABEL_24:
    if ((cnlogging::details::ByteReader::readNextByte(*a1, a2, &v20) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = v20 | (v17 << 8);
  if (v17 != 32381)
  {
    goto LABEL_24;
  }

  v19 = *(*a1 + 24);
LABEL_27:
  *a3 = v19;
  return 1;
}

BOOL cnlogging::details::InputStreamSync::getSyncIdx(cnlogging::details::InputStreamSync *this, uint64_t *a2)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    *a2 = v2;
  }

  return v2 != -1;
}

uint64_t cnlogging::ProtobufInputStream::ProtobufInputStream(uint64_t a1, const std::string *a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  cnlogging::ProtobufInputStream::open(a1, a2);
  return a1;
}

void sub_1D0C58EF4(_Unwind_Exception *a1)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  cnlogging::details::ByteReader::~ByteReader(v1);
  _Unwind_Resume(a1);
}

uint64_t cnlogging::ProtobufInputStream::open(cnlogging::details::MmapWrapper *this, const std::string *a2)
{
  if (*(this + 2) != -1)
  {
    cnlogging::details::MmapWrapper::close(this);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  v4 = cnlogging::details::ByteReader::open(this, a2);
  if (v4)
  {
    std::string::operator=((this + 80), a2);
    *(this + 13) = 0;
    *(this + 14) = 0;
    *(this + 6) = -1;
  }

  else if (*(this + 103) < 0)
  {
    **(this + 10) = 0;
    *(this + 11) = 0;
  }

  else
  {
    *(this + 80) = 0;
    *(this + 103) = 0;
  }

  return v4;
}

void cnlogging::ProtobufInputStream::~ProtobufInputStream(void **this)
{
  cnlogging::ProtobufInputStream::close(this);
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  cnlogging::details::ByteReader::~ByteReader(this);
}

_DWORD *cnlogging::ProtobufInputStream::close(_DWORD *this)
{
  v1 = this;
  if (this[2] != -1)
  {
    this = cnlogging::details::MmapWrapper::close(this);
  }

  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  if (*(v1 + 103) < 0)
  {
    **(v1 + 10) = 0;
    *(v1 + 11) = 0;
  }

  else
  {
    *(v1 + 80) = 0;
    *(v1 + 103) = 0;
  }

  *(v1 + 13) = 0;
  *(v1 + 14) = 0;
  *(v1 + 6) = -1;
  return this;
}

uint64_t cnlogging::ProtobufInputStream::readNextProtobuf(cnlogging::ProtobufInputStream *this, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  if (*(this + 2) == -1)
  {
    return 0;
  }

  v7 = *(this + 14);
  ProtobufAtCurrentIdxNoSync = 0;
  if (cnlogging::details::InputStreamSync::sync(this + 5, 0, &v7))
  {
    do
    {
      ProtobufAtCurrentIdxNoSync = cnlogging::ProtobufInputStream::readProtobufAtCurrentIdxNoSync(this, a2);
      if (ProtobufAtCurrentIdxNoSync)
      {
        break;
      }

      v5 = *(this + 6);
      if (v5 == -1)
      {
        break;
      }

      v7 = v5 + 1;
    }

    while ((cnlogging::details::InputStreamSync::sync(this + 5, 0, &v7) & 1) != 0);
  }

  return ProtobufAtCurrentIdxNoSync;
}

uint64_t cnlogging::ProtobufInputStream::readProtobufAtCurrentIdxNoSync(cnlogging::ProtobufInputStream *this, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  *v9 = 0;
  v10 = 0;
  v7 = this;
  v8 = 0;
  result = cnlogging::details::ByteUnstuffer::readAndUnstuff(&v7, this + 7, &v10, v9);
  if (result)
  {
    result = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(a2, (*(this + 7) + v10));
    if (result)
    {
      v5 = *(this + 6);
      if (v5 == -1)
      {
        return 0;
      }

      else
      {
        v6 = *(this + 3);
        *(this + 13) = v5;
        *(this + 14) = v6;
        return 1;
      }
    }
  }

  return result;
}

uint64_t cnlogging::ProtobufInputStream::readPrevProtobuf(cnlogging::ProtobufInputStream *this, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  if (*(this + 2) == -1)
  {
    return 0;
  }

  v11[3] = v2;
  v11[4] = v3;
  v5 = *(this + 13);
  v6 = v5 < 1;
  v7 = v5 - 1;
  if (v6)
  {
    return 0;
  }

  v11[0] = v7;
  if (!cnlogging::details::InputStreamSync::sync(this + 5, 1u, v11))
  {
    return 0;
  }

  while (1)
  {
    result = cnlogging::ProtobufInputStream::readProtobufAtCurrentIdxNoSync(this, a2);
    if (result)
    {
      break;
    }

    v10 = *(this + 6);
    if (v10 == -1)
    {
      break;
    }

    v11[0] = v10 - 1;
    if ((cnlogging::details::InputStreamSync::sync(this + 5, 1u, v11) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t cnlogging::ProtobufInputStream::readFirstProtobuf(cnlogging::ProtobufInputStream *this, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  if (*(this + 2) != -1 && (*(this + 4) & 0x8000000000000000) == 0)
  {
    *(this + 3) = 0;
    *(this + 13) = 0;
    *(this + 14) = 0;
  }

  return cnlogging::ProtobufInputStream::readNextProtobuf(this, a2);
}

uint64_t cnlogging::ProtobufInputStream::readLastProtobuf(cnlogging::ProtobufInputStream *this, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  if (*(this + 2) != -1)
  {
    v2 = *(this + 4);
    if ((v2 & 0x8000000000000000) == 0)
    {
      *(this + 3) = v2;
      *(this + 13) = v2;
      *(this + 14) = v2;
    }
  }

  return cnlogging::ProtobufInputStream::readPrevProtobuf(this, a2);
}

uint64_t cnlogging::ProtobufInputStream::readProtobufContainingIdx(cnlogging::ProtobufInputStream *this, uint64_t *a2, wireless_diagnostics::google::protobuf::MessageLite *a3)
{
  if (*(this + 2) == -1 || !cnlogging::details::InputStreamSync::sync(this + 5, 1u, a2))
  {
    return 0;
  }

  return cnlogging::ProtobufInputStream::readProtobufAtCurrentIdxNoSync(this, a3);
}

uint64_t cnlogging::ProtobufInputStream::reset(cnlogging::ProtobufInputStream *this)
{
  *(this + 13) = 0;
  *(this + 14) = 0;
  return cnlogging::ProtobufInputStream::open(this, (this + 80));
}

uint64_t cnlogging::details::CNProtobufStreamChecksum::fletcher16(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*a1 + a2);
    do
    {
      v6 = *v5++;
      v4 = (v4 + v6) % 0xFFu;
      v3 = (v4 + v3) % 0xFFu;
      --a3;
    }

    while (a3);
    return (v4 | (v3 << 8));
  }

  else
  {
    return 0;
  }
}

uint64_t cnlogging::details::ByteReader::ByteReader(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  cnlogging::details::ByteReader::open(a1, a2);
  return a1;
}

uint64_t cnlogging::details::ByteReader::open(cnlogging::details::MmapWrapper *this, uint64_t a2)
{
  if (*(this + 2) != -1)
  {
    cnlogging::details::MmapWrapper::close(this);
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  result = cnlogging::details::MmapWrapper::open(this, a2);
  if (result)
  {
    v5 = *this;
    *(this + 3) = 0;
    *(this + 4) = v5;
  }

  return result;
}

void cnlogging::details::ByteReader::~ByteReader(cnlogging::details::ByteReader *this)
{
  if (*(this + 2) != -1)
  {
    cnlogging::details::MmapWrapper::close(this);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  cnlogging::details::MmapWrapper::close(this);
}

_DWORD *cnlogging::details::ByteReader::close(_DWORD *this)
{
  v1 = this;
  if (this[2] != -1)
  {
    this = cnlogging::details::MmapWrapper::close(this);
  }

  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  return this;
}

uint64_t cnlogging::details::ByteReader::setReadIdx(cnlogging::details::ByteReader *this, const uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0 || v2 > *(this + 4))
  {
    return 0;
  }

  *(this + 3) = v2;
  return 1;
}

uint64_t cnlogging::details::ByteReader::readNextByte(uint64_t a1, int a2, _BYTE *a3)
{
  if (*(a1 + 8) == -1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (v3 < 0)
  {
    return 0;
  }

  if (v3 >= *(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4 || v3 >= *a1)
  {
    return 0;
  }

  v5 = *(v4 + v3);
  if (!a2)
  {
    v6 = 1;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v6 = -1;
LABEL_11:
  *(a1 + 24) = v6 + v3;
  *a3 = v5;
  return 1;
}

uint64_t cnlogging::details::MmapWrapper::MmapWrapper(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  cnlogging::details::MmapWrapper::open(a1, a2);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  cnlogging::details::MmapWrapper::open(a1, a2);
  return a1;
}

uint64_t cnlogging::details::MmapWrapper::open(uint64_t a1, uint64_t a2)
{
  cnlogging::details::MmapWrapper::close(a1);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = open(v4, 0);
  *(a1 + 8) = v5;
  if (v5 != -1)
  {
    if (!fstat(v5, &v9))
    {
      st_size = v9.st_size;
      *a1 = v9.st_size;
      v8 = mmap(0, st_size, 1, 2, *(a1 + 8), 0);
      if (v8 != -1)
      {
        *(a1 + 16) = v8;
        return 1;
      }
    }

    cnlogging::details::MmapWrapper::close(a1);
  }

  return 0;
}

void cnlogging::details::MmapWrapper::~MmapWrapper(cnlogging::details::MmapWrapper *this)
{
  cnlogging::details::MmapWrapper::close(this);
}

{
  cnlogging::details::MmapWrapper::close(this);
}

uint64_t cnlogging::details::MmapWrapper::close(cnlogging::details::MmapWrapper *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    munmap(v2, *this);
  }

  result = *(this + 2);
  if (result != -1)
  {
    result = close(result);
  }

  *(this + 2) = -1;
  *this = 0;
  *(this + 2) = 0;
  return result;
}

uint64_t cnlogging::details::MmapWrapper::readByteAtIdx(cnlogging::details::MmapWrapper *this, const uint64_t *a2, unsigned __int8 *a3)
{
  if (*(this + 2) == -1)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2 < 0 || v4 >= *this)
  {
    return 0;
  }

  *a3 = *(v3 + v4);
  return 1;
}

uint64_t cnlogging::ProtobufOutputStream::ProtobufOutputStream(uint64_t a1, const std::string *a2, _DWORD *a3)
{
  *(a1 + 464) = 0;
  v6 = MEMORY[0x1E69E5530] + 64;
  *(a1 + 416) = MEMORY[0x1E69E5530] + 64;
  v7 = *(MEMORY[0x1E69E54D0] + 16);
  v8 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 8));
  v10 = MEMORY[0x1E69E5530] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  *(a1 + 416) = v6;
  MEMORY[0x1D387E8B0](a1 + 8);
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  cnlogging::ProtobufOutputStream::open(a1, a2, a3);
  return a1;
}

void sub_1D0C598E0(_Unwind_Exception *a1)
{
  v5 = *(v2 + 592);
  if (v5)
  {
    *(v2 + 600) = v5;
    operator delete(v5);
  }

  if (*(v2 + 591) < 0)
  {
    operator delete(*v3);
  }

  sub_1D0C54438(v2, MEMORY[0x1E69E54D0]);
  MEMORY[0x1D387EBF0](v1);
  _Unwind_Resume(a1);
}

uint64_t cnlogging::ProtobufOutputStream::open(cnlogging::ProtobufOutputStream *this, const std::string *a2, _DWORD *a3)
{
  if (*(this + 16))
  {
    cnlogging::ProtobufOutputStream::close(this);
  }

  if (*(this + 591) < 0)
  {
    **(this + 71) = 0;
    *(this + 72) = 0;
  }

  else
  {
    *(this + 568) = 0;
    *(this + 591) = 0;
  }

  if (*a3 > 1u)
  {
    return 0;
  }

  std::ofstream::open();
  if ((*(this + *(*this - 24) + 32) & 5) != 0)
  {
    return 0;
  }

  std::string::operator=((this + 568), a2);
  return 1;
}

void cnlogging::ProtobufOutputStream::~ProtobufOutputStream(void **this)
{
  cnlogging::ProtobufOutputStream::close(this);
  v2 = this[74];
  if (v2)
  {
    this[75] = v2;
    operator delete(v2);
  }

  if (*(this + 591) < 0)
  {
    operator delete(this[71]);
  }

  v3 = MEMORY[0x1E69E54D0];
  v4 = *MEMORY[0x1E69E54D0];
  *this = *MEMORY[0x1E69E54D0];
  *(this + *(v4 - 24)) = *(v3 + 24);
  MEMORY[0x1D387E8C0](this + 1);
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](this + 52);
}

void cnlogging::ProtobufOutputStream::close(cnlogging::ProtobufOutputStream *this)
{
  if (*(this + 16) && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*this - 24)), *(this + *(*this - 24) + 32) | 4);
  }

  if (*(this + 591) < 0)
  {
    **(this + 71) = 0;
    *(this + 72) = 0;
  }

  else
  {
    *(this + 568) = 0;
    *(this + 591) = 0;
  }
}

uint64_t cnlogging::ProtobufOutputStream::append(cnlogging::ProtobufOutputStream *this, const wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  if (!*(this + 16))
  {
    return 0;
  }

  result = cnlogging::ProtobufOutputStream::populateBytesToStuff(this, a2);
  if (result)
  {
    result = cnlogging::ProtobufOutputStream::writeSentinelAndVersion(this);
    if (result)
    {
      v4 = *(this + 74);
      v5 = *(this + 75);
      if (v4 == v5)
      {
        return 1;
      }

      else
      {
        v6 = 0;
        v7 = v4 + 1;
        do
        {
          v8 = *(v7 - 1);
          if (v6 && (v8 & 0xFFFFFFDF) == 0x5D)
          {
            v11 = 93;
            sub_1D0BCD7C4(this, &v11, 1);
          }

          v12 = v8;
          sub_1D0BCD7C4(this, &v12, 1);
          v9 = *(this + *(*this - 24) + 32) & 5;
          result = v9 == 0;
          v6 = v8 == 126;
          if (v9)
          {
            v10 = 1;
          }

          else
          {
            v10 = v7 == v5;
          }

          ++v7;
        }

        while (!v10);
      }
    }
  }

  return result;
}

uint64_t cnlogging::ProtobufOutputStream::populateBytesToStuff(cnlogging::ProtobufOutputStream *this, const wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  if (!(*(*a2 + 40))(a2) || (*(*a2 + 72))(a2) < 1)
  {
    return 0;
  }

  v4 = (*(*a2 + 72))(a2);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 + v5;
  v9 = *(this + 74);
  *(this + 75) = v9;
  v10 = v8 + 4;
  if (v8 != -4)
  {
    if (*(this + 76) - v9 < v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D0C58BCC();
    }

    v11 = &v9[v10];
    bzero(v9, v10);
    *(this + 75) = v11;
    v9 = *(this + 74);
  }

  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v19, v9);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18);
  v7 = MEMORY[0x1D387E640](a2, v18);
  if (v7)
  {
    if (v5)
    {
      v12 = 0;
      v13 = v5;
      v14 = (*(this + 74) + v6);
      v15 = 1;
      do
      {
        v16 = *v14++;
        v15 = (v15 + v16) % 0xFFF1;
        v12 = (v15 + v12) % 0xFFF1;
        --v13;
      }

      while (v13);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v18);
  }

  MEMORY[0x1D387E430](v18);
  MEMORY[0x1D387E3C0](v19);
  return v7;
}

void sub_1D0C59F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x1D387E430](va);
  MEMORY[0x1D387E3C0](va1);
  _Unwind_Resume(a1);
}

BOOL cnlogging::ProtobufOutputStream::writeSentinelAndVersion(cnlogging::ProtobufOutputStream *this)
{
  if (!*(this + 16))
  {
    return 0;
  }

  v5 = 126;
  v2 = sub_1D0BCD7C4(this, &v5, 1);
  v6 = 125;
  v3 = sub_1D0BCD7C4(v2, &v6, 1);
  v7 = 1;
  sub_1D0BCD7C4(v3, &v7, 1);
  return (*(this + *(*this - 24) + 32) & 5) == 0;
}

uint64_t cnlogging::ProtobufOutputStream::flush(cnlogging::ProtobufOutputStream *this)
{
  if (!*(this + 16))
  {
    return 0;
  }

  std::ostream::flush();
  if ((*(this + *(*this - 24) + 32) & 5) == 0)
  {
    return 1;
  }

  cnlogging::ProtobufOutputStream::close(this);
  return 0;
}

uint64_t cnlogging::ProtobufOutputStream::writeToVector(unsigned __int8 **this, const wireless_diagnostics::google::protobuf::MessageLite *a2, void *a3, int a4)
{
  if (!a4)
  {
    a3[1] = *a3;
  }

  v6 = cnlogging::ProtobufOutputStream::populateBytesToStuff(this, a2);
  if (v6)
  {
    sub_1D0C58918(a3, &unk_1D0E76390);
    sub_1D0C58918(a3, &unk_1D0E76391);
    sub_1D0C58918(a3, &unk_1D0E76392);
    v7 = this[74];
    v8 = this[75];
    if (v7 != v8)
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        v12 = *v7;
        if (v9 && (v10 & 0xFFFFFFDF) == 0x5D)
        {
          sub_1D0C58918(a3, &unk_1D0E76393);
        }

        sub_1D0C58918(a3, &v12);
        v9 = v12 == 126;
        ++v7;
      }

      while (v7 != v8);
    }
  }

  return v6;
}

uint64_t cnnavigation::GNSSElAz(uint64_t a1, __int128 *a2, uint64_t a3, int a4, void *a5, void *a6)
{
  v7 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  return cnnavigation::details::GNSSElAz(a1, &v7, a2, a3, a4, a5, a6, 0, v14);
}

uint64_t cnnavigation::GNSSElAz(uint64_t a1, __int128 *a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7)
{
  v8 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  return cnnavigation::details::GNSSElAz(a1, &v8, a2, a3, a4, a5, a6, 1, a7);
}

uint64_t cnnavigation::details::GNSSElAz(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5, void *a6, void *a7, int a8, uint64_t a9)
{
  v13 = 0;
  v25 = *MEMORY[0x1E69E9840];
  do
  {
    if ((*(a3 + v13) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_8;
    }

    v13 += 8;
  }

  while (v13 != 24);
  v19 = *a3;
  v20 = *(a3 + 2);
  result = (*(*a4 + 56))(a4, a1, a2, &v17, &v23, &v21);
  if (!result)
  {
    v23 = v17;
    v24 = v18;
    v21 = 0;
    v22 = 0;
    result = cnnavigation::SatElAz(&v19, &v23, a5, &v21, a8, a9);
    if (!result)
    {
      v15 = v22;
      *a6 = v21;
      *a7 = v15;
    }
  }

LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::ThinShellIonosphereModel::GetIonosphericDelay(cnnavigation::ThinShellIonosphereModel *this, int a2, double a3, const double *a4, const double *a5, double a6, double *a7)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  v9 = *a5;
  v10 = *(a5 + 2);
  v8 = 0xBFF921FB54442D18;
  return cnnavigation::ThinShellIonosphereModel::GetIonosphericDelay(this, &v11, &v9, a7, &v8, a6);
}

uint64_t cnnavigation::ThinShellIonosphereModel::GetIonosphericDelay(uint64_t a1, uint64_t a2, __int128 *a3, double *a4, double *a5, double a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 72);
  v42 = 1;
  v43 = v11;
  v44 = 0u;
  v45 = 0u;
  v12 = *a2;
  v46 = 0u;
  v47 = v12;
  v48 = *(a2 + 16);
  v49 = *a3;
  v50 = *(a3 + 2);
  if (cnnavigation::details::IonospherePiercePoint::ComputeIonospherePiercePointCoordinates(&v42))
  {
    v51[0] = 5;
    LOBYTE(v54) = 4;
    v18 = "#iono,ThinShellIonosphereModel::GetIonosphericDelay,failed to calculate IPP coordinates";
    v19 = &v54;
LABEL_6:
    cnprint::CNPrinter::Print(v51, v19, v18, v13, v14, v15, v16, v17, v39);
LABEL_7:
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v54 = 0.0;
  v55 = 0.0;
  v56 = 0;
  v52 = *a2;
  v53 = *(a2 + 16);
  v20 = cnnavigation::ECEFToLLA(&v52, v42, &v54, 0, v51);
  if (v20)
  {
    v51[0] = 5;
    v41 = 4;
    v18 = "#iono,ThinShellIonosphereModel::GetIonosphericDelay,conversion of current receiver position from ECEF to LLA failed";
LABEL_5:
    v19 = &v41;
    goto LABEL_6;
  }

  v23 = *(&v45 + 1) - v54;
  v24 = *&v46 - v55;
  LogLevel = cnprint::CNPrinter::GetLogLevel(v20);
  if (!LogLevel)
  {
    v51[0] = 5;
    v41 = 0;
    v40 = v23 * 57.2957795;
    cnprint::CNPrinter::Print(v51, &v41, "#iono,delta_latitude_deg,%.3lf,delta_longitude_deg,%.3lf,elevation_at_rx,%.3lf,azimuth_at_rx,%.3lf", v26, v27, v28, v29, v30, SLOBYTE(v40));
  }

  if (1.57079633 - *&v44 < *a5)
  {
    if (cnprint::CNPrinter::GetLogLevel(LogLevel))
    {
      goto LABEL_7;
    }

    v51[0] = 5;
    v41 = 0;
    v18 = "#iono,ThinShellIonosphereModel::GetIonosphericDelay,satellite elevation below threshold, not computing delay";
    goto LABEL_5;
  }

  if (*(&v44 + 1) >= 1.57079633 || *(&v44 + 1) < 0.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(LogLevel) > 1)
    {
      goto LABEL_7;
    }

    v51[0] = 5;
    v41 = 1;
    v18 = "#iono,WARNING: ThinShellIonosphereModel::GetIonosphericDelay,cannot proceed,sv_zenith_angle_at_ipp_rad is invalid";
    goto LABEL_5;
  }

  v31 = *(a1 + 80) + *(a1 + 88) * v23 + *(a1 + 96) * v24 + v23 * (*(a1 + 104) * 0.5) * v23 + v23 * *(a1 + 112) * v24 + v24 * (*(a1 + 120) * 0.5) * v24;
  v32 = 1.0 / cos(*(&v44 + 1));
  if (!cnprint::CNPrinter::GetLogLevel(v33))
  {
    v51[0] = 5;
    v41 = 0;
    cnprint::CNPrinter::Print(v51, &v41, "#iono,vtec_to_stec_mapping_function,%.3lf", v34, v35, v36, v37, v38, SLOBYTE(v32));
  }

  result = 0;
  *a4 = v31 * v32 * 1.0e16 * 40.308193 / (a6 * a6) / 299792458.0;
LABEL_8:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 cnnavigation::ThinShellIonosphereModel::UpdateParameters(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 104) = a2[6];
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 168) = a2[10];
  *(a1 + 152) = v9;
  *(a1 + 136) = v8;
  *(a1 + 120) = result;
  return result;
}

uint64_t cnnavigation::ThinShellIonosphereModel::IsValid(cnnavigation::ThinShellIonosphereModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 5;
  v10 = 4;
  cnprint::CNPrinter::Print(&v11, &v10, "#iono,ThinShellIonosphereModel::IsValid,check for validity failed, requires time of interest", a4, a5, a6, a7, a8, v9);
  return 0;
}

uint64_t cnnavigation::GLONASSTimeToJulianTime(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  result = 0xFFFFFFFFLL;
  if (v3 >= 0.0 && v3 < 86401.0)
  {
    result = 0;
    v5 = (v3 + 0.0) / 86400.0 + 0.375;
    *a2 = v2 + 2450082 + vcvtmd_s64_f64(v5);
    *(a2 + 8) = v5 - floor(v5);
  }

  return result;
}

uint64_t cnnavigation::GLONASSTimeToJulianTime(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *a1;
  if (*a1 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  result = 0xFFFFFFFFLL;
  if (v4 >= 0.0 && v4 < 86401.0)
  {
    result = 0;
    v6 = (v4 + a3) / 86400.0 + 0.375;
    *a2 = v3 + 2450082 + vcvtmd_s64_f64(v6);
    *(a2 + 8) = v6 - floor(v6);
  }

  return result;
}

uint64_t cnnavigation::JulianTimeToGLONASSTime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + -0.375;
  v3 = *a1 - 2450083 + vcvtmd_s64_f64(v2);
  if (v3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v3 + 1;
  *(a2 + 8) = (v2 - floor(v2)) * 86400.0;
  return result;
}

uint64_t cnnavigation::JulianTimeToGLONASSTime(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 8) + -0.375 + a3 / -86400.0;
  v4 = *a1 - 2450083 + vcvtmd_s64_f64(v3);
  if (v4 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v4 + 1;
  *(a2 + 8) = (v3 - floor(v3)) * 86400.0;
  return result;
}

uint64_t cnnavigation::GLONASSSatelliteClockOffset(int a1, uint64_t a2, double *a3, int a4, uint64_t a5, double a6, double a7, double a8)
{
  if (!*(a2 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a8 < 0.0 || ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v8 && (*&a8 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a2 + 112);
  v11 = fabs(a8 + -1602000000.0);
  v12 = fabs(a8 + -1246000000.0);
  if (v11 > 7875000.0 && v12 > 6125000.0)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = *(a2 + 120) - v10 * (a6 - *(a2 + 24) + (a1 - *(a2 + 20)) * 86400.0 + a7 - *(a2 + 32));
  v15 = 0.0;
  if (v11 >= v12)
  {
    v15 = *(a2 + 128);
  }

  *a3 = -(v15 + v14);
  result = 0;
  if (a4)
  {
    *a5 = v10;
    *(a5 + 8) = 0;
  }

  return result;
}

uint64_t cnnavigation::GLONASSSatelliteClockOffsetRate(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a2 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = *(a2 + 112);
  return result;
}

uint64_t cnnavigation::GLONASSSatelliteClockOffsetRate(uint64_t a1, uint64_t a2, void *a3, int a4, _OWORD *a5)
{
  if (!*(a2 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = *(a2 + 112);
  result = 0;
  if (a4)
  {
    *a5 = xmmword_1D0E764B0;
  }

  return result;
}

uint64_t cnnavigation::GLONASSSatelliteClockOffsetRate(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4)
{
  if (!*(a2 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = *(a2 + 112);
  *a4 = xmmword_1D0E764B0;
  return result;
}

uint64_t cnnavigation::GLONASSDopplerShift(int a1, float64x2_t *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, int a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14)
{
  v24 = a9 - a12;
  v50 = 0;
  if (a8)
  {
    result = cnnavigation::GLONASSTimeOfFlight(a1, a2, a4, a5, a6, &v50, 1, v51, a9 - a12, a10, a11);
    if (result)
    {
      return result;
    }

    v49 = 0.0;
    result = cnnavigation::GLONASSTimeOfFlightRate(a1, a2, a3, a4, a5, a6, &v49, 1, v24, a10, a11, &v43);
  }

  else
  {
    result = cnnavigation::GLONASSTimeOfFlight(a1, a2, a4, a5, a6, &v50, 0, v51, a9 - a12, a10, a11);
    if (result)
    {
      return result;
    }

    v49 = 0.0;
    result = cnnavigation::GLONASSTimeOfFlightRate(a1, a2, a3, a4, a5, a6, &v49, 0, v24, a10, a11, v51);
  }

  if (!result)
  {
    if (*(a4 + 16))
    {
      v26 = v49;
      v27 = *(a4 + 112);
      v28 = 1.0 - a13 - v49;
      v29 = a13 + v49 * (1.0 - a13);
      v30 = 1.0 - v28 * v27;
      v31 = v28 * v27 - v29 / v30;
      *a7 = v31 * a11;
      result = 0;
      if (a8)
      {
        v32 = 1.0 - v29 / (v30 * v30);
        v33 = (v26 + -1.0) / v30;
        v34 = (a13 + -1.0) / v30;
        v35 = v28 * ((1.0 - v51[0]) * -0.0) - v27 * v43;
        v36 = v46;
        v37 = v28 * (v53 * 0.0) - v27 * v46;
        v38 = v48;
        v39 = -(v27 * v48);
        v40 = v34 * v43;
        v41 = v31 + a11 * (v34 * v44 + v32 * (v28 * (v51[1] * 0.0 + 0.0) - v27 * v44));
        *a14 = (v34 * v43 + v32 * v35) * a11;
        *(a14 + 8) = v41;
        *(a14 + 16) = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v45, v34), vmlsq_lane_f64(vmulq_n_f64(vmulq_f64(v52, 0), v28), v45, v27, 0), v32), a11);
        *(a14 + 32) = (v34 * v36 + v32 * v37) * a11;
        *(a14 + 40) = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v47, v34), vmulq_n_f64(v47, -v27), v32), a11);
        *(a14 + 56) = (v34 * v38 + v32 * v39) * a11;
        *(a14 + 64) = (v32 * -v35 - v40) * a11;
        *(a14 + 72) = (v33 - v32 * v27) * a11;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

__n128 cnnavigation::TAITime::TAITime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 cnnavigation::TAITime::TAITime(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

{
  result = *a2;
  *this = *a2;
  return result;
}

void *cnnavigation::TAITime::TAITime(void *a1, double *a2)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return cnnavigation::TAITime::TAITime(a1, a2, v3);
}

{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return cnnavigation::TAITime::TAITime(a1, a2, v3);
}

{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return cnnavigation::TAITime::TAITime(a1, a2, v3);
}

{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return cnnavigation::TAITime::TAITime(a1, a2, v3);
}

{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return cnnavigation::TAITime::TAITime(a1, a2, v3);
}

{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return cnnavigation::TAITime::TAITime(a1, a2, v3);
}

__n128 cnnavigation::TAITime::operator=(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t cnnavigation::TAITime::ToBeiDouTime(cnnavigation::TAITime *this)
{
  v2 = 0;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return cnnavigation::TAITime::ToBeiDouTime(this, &v2);
}

uint64_t cnnavigation::TAITime::ToGalileoTime(cnnavigation::TAITime *this)
{
  v2 = 0;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return cnnavigation::TAITime::ToGalileoTime(this, &v2);
}

uint64_t cnnavigation::TAITime::ToNavicTime(cnnavigation::TAITime *this)
{
  v2 = 0;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return cnnavigation::TAITime::ToNavicTime(this, &v2);
}

uint64_t cnnavigation::TAITime::ToGPSTime(cnnavigation::TAITime *this)
{
  v2 = 0;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return cnnavigation::TAITime::ToGPSTime(this, &v2);
}

uint64_t cnnavigation::TAITime::ToJulianTime(cnnavigation::TAITime *a1, cnnavigation::GNSSUTCParameters *this, uint64_t a3)
{
  if (cnnavigation::GNSSUTCParameters::IsValid(this))
  {
    v6 = *(this + 1);
    result = 0xFFFFFFFFLL;
    if (v6 <= 2)
    {
      if (v6 == 1)
      {
        *v34 = 0;
        *&v34[8] = 0u;
        v35 = 0u;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *v34 = cnnavigation::TAITime::ToGPSTime(a1, v34);
        *&v34[8] = v26;
        v32 = sub_1D0C34690(v34, v27, v28);
        v33 = v29;
        v30 = sub_1D0B7C8AC(&v32, this + 6);
        v31 = 64;
        if (v30)
        {
          v31 = 40;
        }

        if (!cnnavigation::GPSTimeToJulianTime(v34, *(this + v31), a3))
        {
          return 0;
        }
      }

      else
      {
        if (v6 != 2)
        {
          return result;
        }

        *v34 = 1;
        *&v34[8] = 0;
        if (!cnnavigation::TAITime::ToGLONASSTime(a1, this, v34) && *v34 >= 1 && *&v34[8] >= 0.0 && *&v34[8] < 86401.0)
        {
          v15 = (*&v34[8] + 0.0) / 86400.0 + 0.375;
          *a3 = *v34 + 2450082 + vcvtmd_s64_f64(v15);
          *(a3 + 8) = v15 - floor(v15);
          return 0;
        }
      }
    }

    else
    {
      switch(v6)
      {
        case 3u:
          *v34 = 0;
          *&v34[8] = 0u;
          v35 = 0u;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v32 = cnnavigation::TAITime::ToGalileoTime(a1, v34);
          v33 = v16;
          *v17.i64 = floor(v16);
          *v18.i64 = v16 - *v17.i64;
          *v34 = 0uLL;
          CNTimeSpan::SetTimeSpan(v34, vcvtmd_s64_f64(v16) + 604800 * v32, v18, v17);
          v19 = sub_1D0B7C8AC(v34, this + 6);
          v20 = 64;
          if (v19)
          {
            v20 = 40;
          }

          if (!cnnavigation::GalileoTimeToJulianTime(&v32, *(this + v20), a3))
          {
            return 0;
          }

          break;
        case 4u:
          *v34 = 0;
          *&v34[8] = 0u;
          v35 = 0u;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v32 = cnnavigation::TAITime::ToBeiDouTime(a1, v34);
          v33 = v21;
          *v22.i64 = floor(v21);
          *v23.i64 = v21 - *v22.i64;
          *v34 = 0uLL;
          CNTimeSpan::SetTimeSpan(v34, vcvtmd_s64_f64(v21) + 604800 * v32, v23, v22);
          v24 = sub_1D0B7C8AC(v34, this + 6);
          v25 = 64;
          if (v24)
          {
            v25 = 40;
          }

          if (!cnnavigation::BeiDouTimeToJulianTime(&v32, *(this + v25), a3))
          {
            return 0;
          }

          break;
        case 6u:
          *v34 = 0;
          *&v34[8] = 0u;
          v35 = 0u;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v32 = cnnavigation::TAITime::ToNavicTime(a1, v34);
          v33 = v8;
          *v9.i64 = floor(v8);
          *v10.i64 = v8 - *v9.i64;
          *v34 = 0uLL;
          CNTimeSpan::SetTimeSpan(v34, vcvtmd_s64_f64(v8) + 604800 * v32, v10, v9);
          v11 = sub_1D0B7C8AC(v34, this + 6);
          v14 = 64;
          if (v11)
          {
            v14 = 40;
          }

          if (!cnnavigation::NavicTimeToJulianTime(&v32, *(this + v14), a3, v12, v13))
          {
            return 0;
          }

          break;
        default:
          return result;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::GPSTimeToJulianTime(double *a1, int a2, uint64_t a3)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1[1];
  result = 0xFFFFFFFFLL;
  if (v4 >= 0.0 && v4 < 604800.0)
  {
    result = 0;
    v6 = vcvtmd_s64_f64(v4 / 86400.0);
    v7 = (v4 - a2) / 86400.0 + 0.5 - v6;
    *a3 = v6 - v3 + 8 * v3 + 2444244 + vcvtmd_s64_f64(v7);
    *(a3 + 8) = v7 - floor(v7);
  }

  return result;
}

double cnnavigation::DayOfYearTimeToJulianTime(double *a1, uint64_t a2)
{
  v8 = *a1;
  v9 = xmmword_1D0E76550;
  v10 = 0;
  if (!cnnavigation::GregorianTimeToJulianTime(&v8, &v6))
  {
    v5 = v7 + a1[1];
    *a2 = v6 + *(a1 + 1) + vcvtmd_s64_f64(v5) - 1;
    result = v5 - floor(v5);
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t cnnavigation::GregorianTimeToJulianTime(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 < -4712)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 4);
  v5 = *(a1 + 8);
  v7 = *(a1 + 12);
  v10 = v7 < 12 && v5 == 1 && v6 == 1 && v2 == -4712;
  result = 0xFFFFFFFFLL;
  if (!v10 && v6 - 13 >= 0xFFFFFFF4 && (v5 - 32) >= 0xFFFFFFE1 && v7 <= 0x17)
  {
    v14 = *(a1 + 16);
    if (v14 <= 0x3B)
    {
      v15 = *(a1 + 24);
      if (v15 >= 0.0 && v15 < 60.0)
      {
        result = 0;
        v17 = v6 < 3;
        if (v6 < 3)
        {
          v6 += 12;
        }

        v18 = v5 + (v2 - v17) / -100 + (v2 - v17) / 400 + ((v6 + 1) * 30.6001) + ((v2 - v17 + 4716) * 365.25);
        v19 = v15 / 86400.0 + (v7 - 12) / 24.0 + v14 / 1440.0;
        if (v19 >= 0.0)
        {
          v20 = -1524;
        }

        else
        {
          v20 = -1525;
        }

        v21 = v18 + v20 + 2;
        if (v19 < 0.0)
        {
          v19 = v19 + 1.0;
        }

        *a2 = v21;
        *(a2 + 8) = v19;
      }
    }
  }

  return result;
}

double cnnavigation::JulianTimeToDayOfYearTime(uint64_t a1, uint64_t a2)
{
  result = cnnavigation::JulianTimeToGregorianTime(a1, &v10);
  if (!v5)
  {
    v11 = xmmword_1D0E76550;
    v12 = 0;
    if (!cnnavigation::GregorianTimeToJulianTime(&v10, &v8))
    {
      v6 = *(a1 + 8) - v9;
      v7 = *a1 - v8 + vcvtmd_s64_f64(v6) + 1;
      *a2 = v10;
      *(a2 + 4) = v7;
      result = v6 - floor(v6);
      *(a2 + 8) = result;
    }
  }

  return result;
}

double cnnavigation::JulianTimeToGregorianTime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = floor(v2);
  v4 = v3 + *a1;
  result = v2 - v3;
  v6 = 0.5;
  if (result >= 0.5)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = -0.5;
  }

  v8 = v4 + v7;
  if (v8 >= 0.0)
  {
    if (result >= 0.5)
    {
      v6 = -0.5;
    }

    v9 = result + v6;
    v10 = v8 + -1721119.5;
    v11 = floor((v10 * 4.0 + 3.0) / 146097.0);
    v12 = v10 - floor(v11 * 146097.0 * 0.25);
    v13 = floor((v12 * 100.0 + 99.0) / 36525.0);
    v14 = v12 - floor(v13 * 36525.0 / 100.0);
    v15 = v13 + v11 * 100.0;
    v16 = (v14 * 5.0 + 461.0) / 153.0;
    v17 = v15;
    v18 = vcvtmd_s64_f64(v16);
    v19 = v14 - floor((floor(v16) * 153.0 + -457.0) / 5.0) + 1.0;
    if (v18 > 12)
    {
      v18 -= 12;
      ++v17;
    }

    v20 = v9 * 24.0;
    v21 = v9 - floor(v9 * 24.0) / 24.0;
    v22 = vcvtmd_s64_f64(v21 * 1440.0);
    *a2 = v17;
    *(a2 + 4) = v18;
    *(a2 + 8) = v19;
    *(a2 + 12) = vcvtmd_s64_f64(v20);
    result = (v21 - floor(v21 * 1440.0) / 1440.0) * 86400.0;
    *(a2 + 16) = v22;
    *(a2 + 24) = result;
  }

  return result;
}

double cnnavigation::JulianTimeToiOSTime(uint64_t a1, uint64_t a2, double result)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    result = *(a1 + 8);
    if (result + v3 >= 0.0)
    {
      v4 = v3 - 2451910 + vcvtmd_s64_f64(result);
      v5 = (result - floor(result) + -0.5) * 86400.0;
      v6 = vcvtmd_s64_f64(v5) + 86400 * v4;
      result = v5 - floor(v5);
      *a2 = v6;
      *(a2 + 8) = result;
    }
  }

  return result;
}

double cnnavigation::DayOfYearTimeToiOSTime(double *a1, uint64_t a2)
{
  result = cnnavigation::DayOfYearTimeToJulianTime(a1, v5);
  if (!v4)
  {
    return cnnavigation::JulianTimeToiOSTime(v5, a2, result);
  }

  return result;
}

double cnnavigation::iOSTimeToDayOfYearTime(uint64_t a1, uint64_t a2)
{
  if (!cnnavigation::iOSTimeToJulianTime(a1, v4))
  {
    return cnnavigation::JulianTimeToDayOfYearTime(v4, a2);
  }

  return result;
}

_BYTE *cnnavigation::iOSTimeToLocalTime@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = (round(*(a1 + 8)) + *a1) + 978307200;
  v3 = localtime(&v7);
  if (v3 && strftime(v8, 0x50uLL, "%Y-%m-%d %H:%M:%S%z", v3))
  {
    v4 = v8;
  }

  else
  {
    v4 = &unk_1D0ED88E9;
  }

  result = sub_1D0B751F4(a2, v4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::GPSPseudorange(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int a7, float64x2_t *a8, double a9, double a10, double a11)
{
  v17 = a1;
  v18 = a9 - a11;
  v32 = 0.0;
  if (cnnavigation::GPSTimeOfFlight(a1, a2, a3, a4, a5, &v32, (a7 & 1) != 0, v33.f64, a9 - a11, a10))
  {
    return 0xFFFFFFFFLL;
  }

  v31 = 0.0;
  v19 = v32;
  if (cnnavigation::GPSSatelliteClockOffset(v17, a3, &v31, a7, v30, v18 - v32, a10))
  {
    return 0xFFFFFFFFLL;
  }

  *a6 = v31 * -299792458.0 + v19 * 299792458.0 + a11 * 299792458.0;
  result = 0;
  if (a7)
  {
    v21 = v30[0];
    v22 = v33.f64[0];
    v23.f64[0] = v21 - v33.f64[0] * v21;
    v23.f64[1] = v30[1];
    v24 = vdupq_n_s64(0xC1B1DE784A000000);
    v25 = vdupq_n_s64(0x41B1DE784A000000uLL);
    v26 = v35;
    v27 = vmulq_f64(v23, v24);
    v28 = v35 * v30[0];
    v29 = vmlaq_f64(vmulq_f64(vmulq_n_f64(v34, -v30[0]), v24), v25, v34);
    *a8 = vmlaq_f64(v27, v25, v33);
    a8[1] = v29;
    a8[2].f64[0] = v28 * 299792458.0 + v26 * 299792458.0;
    a8[2].f64[1] = v21 * 299792458.0 + v22 * -299792458.0 + 299792458.0;
  }

  return result;
}

double cnnavigation::GalileoEphemerides::GalileoSignalInSpaceAccuracy(cnnavigation::GalileoEphemerides *this)
{
  if (this != 255)
  {
    if (this <= 0x31)
    {
      return this * 0.01;
    }

    if (this <= 0x4A)
    {
      v2 = (this - 50);
      v3 = 0.02;
      v4 = 0.5;
      return v4 + v2 * v3;
    }

    if (this <= 0x63)
    {
      v2 = (this - 75);
      v3 = 0.04;
      v4 = 1.0;
      return v4 + v2 * v3;
    }

    if (this <= 0x7D)
    {
      v2 = (this - 100);
      v3 = 0.16;
      v4 = 2.0;
      return v4 + v2 * v3;
    }
  }

  return NAN;
}

uint64_t cnnavigation::GalileoEphemerides::GNSSFindSat(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, double *a5, double *a6)
{
  if (*(a1 + 32) != 3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = cnnavigation::TAITime::ToGalileoTime(this, a3);
  v12 = *(a1 + 112);
  if (fabs(v12) < 2.22044605e-16 || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v10;
  v16 = *(a1 + 104);
  result = 0xFFFFFFFFLL;
  if (v16 >= 0.0 && v16 < 1.0 && (*(a1 + 104) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v71 = *(a1 + 128);
    v17 = *(a1 + 136);
    v74 = *(a1 + 144);
    v75 = *(a1 + 120);
    v86 = *(a1 + 152);
    v80 = *(a1 + 160);
    v81 = *(a1 + 168);
    v82 = *(a1 + 176);
    v83 = *(a1 + 184);
    v84 = *(a1 + 192);
    v85 = *(a1 + 200);
    v77 = *(a1 + 56);
    v18 = v11 - v77 + (v15 - *(a1 + 48)) * 604800.0;
    v79 = v12 * v12;
    v78 = *(a1 + 96) + 19964980.4 / (v12 * (v12 * v12));
    v19 = *(a1 + 88) + v78 * v18;
    v20 = 10;
    v21 = v19;
    do
    {
      v22 = sin(v21);
      v21 = v19 + v16 * v22;
      --v20;
    }

    while (v20);
    v72 = cos(v21);
    v73 = sqrt(1.0 - v16 * v16);
    v23 = v17 + atan2(v73 * v22, v72 - v16);
    v24 = __sincos_stret(v23 + v23);
    sinval = v24.__sinval;
    cosval = v24.__cosval;
    v27 = v23 + v80 * v24.__cosval + v81 * v24.__sinval;
    v70 = 1.0 - v16 * v72;
    v28 = v79 * v70 + v82 * v24.__cosval + v83 * v24.__sinval;
    v29 = v71 + v86 * v18 + v84 * v24.__cosval + v85 * v24.__sinval;
    v30 = v74 + -0.0000729211515;
    v31 = v75 + (v74 + -0.0000729211515) * v18 + v77 * -0.0000729211515;
    v32 = __sincos_stret(v27);
    v76 = v28 * v32.__cosval;
    v33 = v28 * v32.__sinval;
    v34 = __sincos_stret(v29);
    v37 = __sincos_stret(v31);
    v36 = v37.__cosval;
    v35 = v37.__sinval;
    result = 0;
    v38 = v70;
    v39 = -(v34.__cosval * v33 * v37.__sinval);
    v40 = v73 * (v78 / v70) / v70;
    v41 = v78 / v70 * (v22 * (v16 * (-v78 / (v38 * v38))));
    v42 = v41 / v70 + v22 * (v16 * (-(v78 / v70) / (v38 * v38))) * (v78 / v70);
    v43 = v78 / v70 * (v72 * (v78 / v70)) + v22 * v41;
    v44 = v81 * cosval - v80 * sinval + v81 * cosval - v80 * sinval;
    v45 = v40 + v44 * v40;
    v46 = v83 * cosval - v82 * sinval + v83 * cosval - v82 * sinval;
    v47 = v16 * v79 * v22 * (v78 / v70) + v46 * v40;
    v48 = v85 * cosval - v84 * sinval + v85 * cosval - v84 * sinval;
    v49 = v86 + v48 * v40;
    v50 = v47 * v32.__cosval - v33 * v45;
    v51 = v73 * v42 + v44 * (v73 * v42) + v40 * ((-(v81 * v24.__sinval) - v80 * v24.__cosval) * 4.0) * v40;
    v52 = v76 * v45 + v47 * v32.__sinval;
    v53 = v49 * (v34.__sinval * v33);
    v54 = v16 * v79 * v43 + v46 * (v73 * v42) + v40 * ((-(v83 * v24.__sinval) - v82 * v24.__cosval) * 4.0) * v40;
    v55 = (v74 + -0.0000729211515) * (v37.__cosval * v76);
    v56 = v49 * (v34.__cosval * v33);
    v57 = v40 * (v40 * ((-(v85 * v24.__sinval) - v84 * v24.__cosval) * 4.0)) + v48 * (v73 * v42);
    v58 = v54 * v32.__cosval - v32.__sinval * v47 * v45 - (v45 * (v76 * v45) + v32.__sinval * v47 * v45 + v33 * v51);
    v59 = v45 * (v32.__cosval * v47) + v54 * v32.__sinval + v45 * -(v33 * v45) + v32.__cosval * v47 * v45 + v76 * v51;
    v60 = v30 * v55 + v37.__sinval * v50 * v30;
    v61 = v49 * (v34.__sinval * v52);
    v62 = v37.__cosval * (v34.__cosval * v52);
    v63 = v34.__cosval * v59 * v35 - v61 * v35 + v62 * (v74 + -0.0000729211515);
    v64 = v35 * (v49 * v56) + v61 * v35 + v34.__sinval * v33 * v57 * v35 + v37.__cosval * v53 * (v74 + -0.0000729211515);
    v65 = v34.__cosval * v59 * v36 - v61 * v36;
    v66 = v55 + v50 * v37.__sinval + v34.__cosval * v52 * v36 - v53 * v36 + v39 * (v74 + -0.0000729211515);
    v67 = v36 * (v49 * v56) + v61 * v36 + v34.__sinval * v33 * v57 * v36;
    v68 = (v74 + -0.0000729211515) * -(v76 * v37.__sinval);
    v69 = v37.__cosval * (v34.__cosval * v33);
    *a4 = v76 * v37.__cosval - v34.__cosval * v33 * v37.__sinval;
    a4[1] = v69 + v76 * v37.__sinval;
    a4[2] = v34.__sinval * v33;
    *a5 = v68 + v50 * v37.__cosval - v34.__cosval * v52 * v37.__sinval + v53 * v37.__sinval - v69 * (v74 + -0.0000729211515);
    a5[1] = v66;
    a5[2] = v56 + v52 * v34.__sinval;
    *a6 = v64 + v58 * v37.__cosval - v37.__sinval * v50 * (v74 + -0.0000729211515) - v60 - v63 - (v62 * (v74 + -0.0000729211515) - v37.__cosval * v53 * (v74 + -0.0000729211515) + (v74 + -0.0000729211515) * v39 * (v74 + -0.0000729211515));
    a6[1] = v30 * v68 + v37.__cosval * v50 * v30 + (v74 + -0.0000729211515) * (v37.__cosval * v50) + v58 * v37.__sinval + v65 - v37.__sinval * (v34.__cosval * v52) * v30 - (v67 + -(v53 * v37.__sinval) * v30) - (v30 * -(v53 * v37.__sinval) + v37.__sinval * (v34.__cosval * v52) * v30 + v30 * v69 * v30);
    a6[2] = v34.__cosval * v52 * v49 - v53 * v49 + v34.__cosval * v33 * v57 + v49 * (v34.__cosval * v52) + v59 * v34.__sinval;
  }

  return result;
}

uint64_t cnnavigation::GalileoEphemerides::GNSSSatelliteClockOffset(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, int a5, double *a6, double a7)
{
  if (*(a1 + 32) != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v59[2] = v16;
  v59[3] = v15;
  v59[4] = v14;
  v59[5] = v13;
  v59[6] = v12;
  v59[7] = v11;
  v59[8] = v10;
  v59[9] = v9;
  v59[18] = v7;
  v59[19] = v8;
  if (!*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v23 = cnnavigation::TAITime::ToGalileoTime(this, a3);
  v25 = *(a1 + 112);
  if (fabs(v25) < 2.22044605e-16 || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v28 = v23;
  v29 = *(a1 + 104);
  result = 0xFFFFFFFFLL;
  if (v29 < 0.0 || v29 >= 1.0 || (*(a1 + 104) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return result;
  }

  v30 = v24;
  v31 = v24 - *(a1 + 72) + (v28 - *(a1 + 64)) * 604800.0;
  v57 = *(a1 + 216);
  v32 = *(a1 + 224);
  v58 = *(a1 + 208) + v57 * v31 + v32 * (v31 * v31);
  v33 = *(a1 + 96) + 19964980.4 / (v25 * (v25 * v25));
  v34 = *(a1 + 88) + v33 * (v24 - *(a1 + 56) + (v28 - *(a1 + 48)) * 604800.0);
  v35 = 10;
  v36 = v34;
  do
  {
    v36 = v34 + v29 * sin(v36);
    --v35;
  }

  while (v35);
  v37 = *&a7 <= -1 || ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
  if (v37 && (*&a7 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v39 = v25 * -4.44280731e-10;
  v40 = 1.0;
  v41 = 0.0;
  if (!*(a1 + 248))
  {
    if (*(a1 + 249) || fabs(a7 + -1207140000.0) <= 0.000000015)
    {
      if (*(a1 + 250) || fabs(a7 + -1176450000.0) <= 0.000000015)
      {
        goto LABEL_31;
      }

      v42 = 240;
    }

    else
    {
      v42 = 232;
    }

    v40 = 1575420000.0 / a7 * (1575420000.0 / a7);
    v41 = *(a1 + v42);
  }

LABEL_31:
  v43 = v58 + v25 * -4.44280731e-10 * (v36 - v34);
  v44 = v41 * v40;
  if (a5)
  {
    v58 = (v40 + v40) / a7 * v41;
    v56 = v57 + (v32 + v32) * v31 + v39 * (v33 / (1.0 - v29 * cos(v36))) - v39 * v33;
  }

  v45 = v43 - v44;
  if (cnnavigation::GNSSUTCParameters::IsValid(a3) && *(a3 + 1) == 3)
  {
    v59[0] = 0;
    v59[1] = 0;
    *v46.i64 = v30;
    *v48.i64 = CNTimeSpan::SetTimeSpan(v59, 604800 * v28, v46, v47);
    v49 = *(a3 + 1);
    v50 = *(a3 + 2);
    v52 = CNTimeSpan::operator-(v59, a3 + 3, v48, v51);
    *a4 = v45 - (v49 + v50 * (v53 + v52));
    if (a5)
    {
      v54 = *(a3 + 2);
      v55 = 1.0 / (1.0 - v54);
      *a6 = (v56 - v54) * v55;
      a6[1] = v58 / v55;
    }
  }

  else
  {
    *a4 = v45;
    if (a5)
    {
      result = 0;
      *a6 = v56;
      a6[1] = v58;
      return result;
    }
  }

  return 0;
}

uint64_t cnnavigation::GalileoEphemerides::GNSSSatelliteClockOffsetRate(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, int a5, uint64_t a6)
{
  if (*(a1 + 32) != 3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = cnnavigation::TAITime::ToGalileoTime(this, a3);
  v13 = *(a1 + 112);
  if (fabs(v13) < 2.22044605e-16 || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = *(a1 + 104);
  v16 = v15 >= 0.0 && v15 < 1.0;
  if (!v16 || (*(a1 + 104) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v12 - *(a1 + 72) + (v11 - *(a1 + 64)) * 604800.0;
  v20 = *(a1 + 96) + 19964980.4 / (v13 * (v13 * v13));
  v21 = *(a1 + 88) + v20 * (v12 - *(a1 + 56) + (v11 - *(a1 + 48)) * 604800.0);
  v22 = 10;
  v23 = v21;
  do
  {
    v24 = sin(v23);
    v23 = v21 + v15 * v24;
    --v22;
  }

  while (v22);
  v25 = *(a1 + 224) + *(a1 + 224);
  v26 = *(a1 + 216) + v25 * v19;
  v27 = 1.0 - v15 * cos(v21 + v15 * v24);
  v28 = v13 * -4.44280731e-10 * (v20 / v27 - v20);
  if (a5)
  {
    v13 = v13 * -4.44280731e-10 * (v20 / v27 * ((v21 - v23) * (v20 / v27)) / v27) + v13 * -4.44280731e-10 * -0.0 + v25;
  }

  v29 = v28 + v26;
  if (cnnavigation::GNSSUTCParameters::IsValid(a3) && *(a3 + 1) == 3)
  {
    v30 = *(a3 + 2);
    v31 = 1.0 / (1.0 - v30);
    *a4 = (v29 - v30) * v31;
    if (a5)
    {
      v13 = v13 * (v31 * v31);
LABEL_25:
      result = 0;
      *a6 = v13;
      *(a6 + 8) = 0;
      return result;
    }
  }

  else
  {
    *a4 = v29;
    if (a5)
    {
      goto LABEL_25;
    }
  }

  return 0;
}

uint64_t sub_1D0C5C834(uint64_t a1)
{
  *a1 = &unk_1F4CD58E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = &unk_1F4CD5F70;
  return a1;
}

void sub_1D0C5C8A0(uint64_t a1)
{
  *a1 = &unk_1F4CD58E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = &unk_1F4CD5F70;

  JUMPOUT(0x1D387ECA0);
}

uint64_t cnnavigation::GLONASSEphemerides::GNSSFindSat(uint64_t a1, uint64_t a2, cnnavigation::GNSSUTCParameters *this, float64x2_t *a4, double *a5, double *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v34 = 1;
  v35 = 0.0;
  if (cnnavigation::TAITime::ToGLONASSTime(a2, this, &v34))
  {
    goto LABEL_2;
  }

  v14 = v34;
  v15 = v35;
  v33[0] = 0.0;
  v33[1] = 0.0;
  *v11.i64 = v35;
  CNTimeSpan::SetTimeSpan(v33, 86400 * (v34 - 1), v11, v12);
  v16 = sub_1D0B7CF88(v33, this + 6);
  v17 = 40;
  if (v16)
  {
    v17 = 64;
  }

  result = cnnavigation::GLONASSFindSat(v14, a1, v42.f64, &v39, &v36, v15, *(this + v17));
  if (!result)
  {
    v19 = 0;
    v20 = v43 + 0.18;
    v21 = 0.0;
    v22 = v39 + v40 * 0.0 + v41 * 0.0;
    v23 = v40 + v39 * 0.0 + v41 * 0.0;
    v24 = v41 + v40 * 0.0 + v39 * 0.0;
    v25 = v37 * 0.0 + v36 * 0.0;
    v26 = v38;
    v27 = v36 + v37 * 0.0 + v38 * 0.0;
    v28 = v37 + v36 * 0.0 + v38 * 0.0;
    *a4 = vaddq_f64(v42, xmmword_1D0E76600);
    a4[1].f64[0] = v20;
    *a5 = v22;
    a5[1] = v23;
    a5[2] = v24;
    *a6 = v27;
    a6[1] = v28;
    a6[2] = v26 + v25;
    do
    {
      v21 = v21 + a4->f64[v19] * a4->f64[v19];
      ++v19;
    }

    while (v19 != 3);
    if (sqrt(v21) < 6341752.3)
    {
LABEL_2:
      result = 0xFFFFFFFFLL;
      goto LABEL_6;
    }

    IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
    result = 0;
    if (IsValid && *(this + 1) == 2)
    {
      v30 = 0;
      v31 = 1.0 / (1.0 - *(this + 2));
      do
      {
        a5[v30] = v31 * a5[v30];
        ++v30;
      }

      while (v30 != 3);
      for (i = 0; i != 3; ++i)
      {
        a6[i] = v31 * a6[i];
      }

      result = 0;
    }
  }

LABEL_6:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::GLONASSEphemerides::GNSSSatelliteClockOffset(uint64_t a1, uint64_t a2, cnnavigation::GNSSUTCParameters *this, double *a4, int a5, double *a6, double a7)
{
  v36 = 1;
  v37 = 0.0;
  if (cnnavigation::TAITime::ToGLONASSTime(a2, this, &v36))
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v36;
  v17 = v37;
  v35[0] = 0.0;
  v35[1] = 0.0;
  *v13.i64 = v37;
  CNTimeSpan::SetTimeSpan(v35, 86400 * (v36 - 1), v13, v14);
  v18 = sub_1D0B7CF88(v35, this + 6);
  v19 = 40;
  if (v18)
  {
    v19 = 64;
  }

  v20 = *(this + v19);
  v34 = 0.0;
  v15 = cnnavigation::GLONASSSatelliteClockOffset(v16, a1, &v34, a5, &v32, v17, v20, a7);
  if (!v15)
  {
    if (cnnavigation::GNSSUTCParameters::IsValid(this) && *(this + 1) == 2)
    {
      v23 = *(this + 1);
      v24 = *(this + 2);
      v25 = CNTimeSpan::operator-(v35, this + 3, v21, v22);
      *a4 = v34 - (v23 + v24 * (v26 + v25));
      if (!a5)
      {
        return v15;
      }

      v27 = *(this + 2);
      v28 = 1.0 / (1.0 - v27);
      v29 = v33;
      *a6 = (v32 - v27) * v28;
      v30 = v29 / v28;
    }

    else
    {
      *a4 = v34;
      if (!a5)
      {
        return v15;
      }

      v30 = v33;
      *a6 = v32;
    }

    a6[1] = v30;
  }

  return v15;
}

uint64_t cnnavigation::GLONASSEphemerides::GNSSSatelliteClockOffsetRate(uint64_t a1, uint64_t a2, cnnavigation::GNSSUTCParameters *this, double *a4, int a5, uint64_t a6)
{
  v19 = 1;
  v20 = 0.0;
  if (cnnavigation::TAITime::ToGLONASSTime(a2, this, &v19))
  {
    return 0xFFFFFFFFLL;
  }

  *v11.i64 = v20;
  v18[0] = 0.0;
  v18[1] = 0.0;
  CNTimeSpan::SetTimeSpan(v18, 86400 * (v19 - 1), v11, v12);
  sub_1D0B7CF88(v18, this + 6);
  if (!*(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v14 = *(a1 + 112);
  if (cnnavigation::GNSSUTCParameters::IsValid(this) && *(this + 1) == 2)
  {
    v15 = *(this + 2);
    v16 = 1.0 / (1.0 - v15);
    *a4 = (v14 - v15) * v16;
    if (a5)
    {
      v17 = v16 * v16 * -0.0;
LABEL_10:
      result = 0;
      *a6 = v17;
      *(a6 + 8) = 0;
      return result;
    }
  }

  else
  {
    *a4 = v14;
    if (a5)
    {
      v17 = -0.0;
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t cnnavigation::GLONASSPseudorange(int a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int a7, float64x2_t *a8, double a9, double a10, double a11, double a12)
{
  v20 = a9 - a12;
  v34 = 0.0;
  result = cnnavigation::GLONASSTimeOfFlight(a1, a2, a3, a4, a5, &v34, (a7 & 1) != 0, v35.f64, a9 - a12, a10, a11);
  if (!result)
  {
    v33 = 0.0;
    v22 = v34;
    if (cnnavigation::GLONASSSatelliteClockOffset(a1, a3, &v33, a7, v32, v20 - v34, a10, a11))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      *a6 = v33 * -299792458.0 + v22 * 299792458.0 + a12 * 299792458.0;
      result = 0;
      if (a7)
      {
        v23 = v32[0];
        v24 = v35.f64[0];
        v25.f64[0] = v23 - v35.f64[0] * v23;
        v25.f64[1] = v32[1];
        v26 = vdupq_n_s64(0xC1B1DE784A000000);
        v27 = vdupq_n_s64(0x41B1DE784A000000uLL);
        v28 = v37;
        v29 = vmulq_f64(v25, v26);
        v30 = v37 * v32[0];
        v31 = vmlaq_f64(vmulq_f64(vmulq_n_f64(v36, -v32[0]), v26), v27, v36);
        *a8 = vmlaq_f64(v29, v27, v35);
        a8[1] = v31;
        a8[2].f64[0] = v30 * 299792458.0 + v28 * 299792458.0;
        a8[2].f64[1] = v23 * 299792458.0 + v24 * -299792458.0 + 299792458.0;
      }
    }
  }

  return result;
}

double cnnavigation::KlobucharModelParameters::KlobucharModelParameters(cnnavigation::KlobucharModelParameters *this)
{
  *this = &unk_1F4CD5A50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = xmmword_1D0E76640;
  result = -0.0007;
  *(this + 56) = xmmword_1D0E76650;
  *(this + 72) = 0;
  return result;
}

{
  *this = &unk_1F4CD5A50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = xmmword_1D0E76640;
  result = -0.0007;
  *(this + 56) = xmmword_1D0E76650;
  *(this + 72) = 0;
  return result;
}

double cnnavigation::KlobucharModelParameters::KlobucharModelParameters(cnnavigation::KlobucharModelParameters *this, double *a2, double *a3)
{
  *this = &unk_1F4CD5A50;
  *(this + 1) = *a2;
  *(this + 2) = a2[1];
  *(this + 3) = a2[2];
  *(this + 4) = a2[3];
  *(this + 5) = *a3;
  *(this + 6) = a3[1];
  *(this + 7) = a3[2];
  result = a3[3];
  *(this + 8) = result;
  *(this + 72) = 0;
  return result;
}

{
  *this = &unk_1F4CD5A50;
  *(this + 1) = *a2;
  *(this + 2) = a2[1];
  *(this + 3) = a2[2];
  *(this + 4) = a2[3];
  *(this + 5) = *a3;
  *(this + 6) = a3[1];
  *(this + 7) = a3[2];
  result = a3[3];
  *(this + 8) = result;
  *(this + 72) = 0;
  return result;
}

__n128 cnnavigation::KlobucharModelParameters::KlobucharModelParameters(cnnavigation::KlobucharModelParameters *this, const cnnavigation::KlobucharModelParameters *a2)
{
  *this = &unk_1F4CD5A50;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(this + 72) = *(a2 + 72);
  return result;
}

{
  *this = &unk_1F4CD5A50;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(this + 72) = *(a2 + 72);
  return result;
}

double cnnavigation::KlobucharIonosphereModel::KlobucharIonosphereModel(cnnavigation::KlobucharIonosphereModel *this)
{
  *this = &unk_1F4CD5A70;
  *(this + 1) = &unk_1F4CD5A50;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  result = 0.0008;
  *(this + 3) = xmmword_1D0E76640;
  *(this + 4) = xmmword_1D0E76650;
  *(this + 80) = 0;
  return result;
}

{
  *this = &unk_1F4CD5A70;
  *(this + 1) = &unk_1F4CD5A50;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  result = 0.0008;
  *(this + 3) = xmmword_1D0E76640;
  *(this + 4) = xmmword_1D0E76650;
  *(this + 80) = 0;
  return result;
}

__n128 cnnavigation::KlobucharIonosphereModel::KlobucharIonosphereModel(__n128 *this, const cnnavigation::KlobucharModelParameters *a2)
{
  this->n128_u64[0] = &unk_1F4CD5A70;
  this->n128_u64[1] = &unk_1F4CD5A50;
  this[1] = *(a2 + 8);
  this[2] = *(a2 + 24);
  this[3] = *(a2 + 40);
  result = *(a2 + 56);
  this[4] = result;
  this[5].n128_u8[0] = *(a2 + 72);
  return result;
}

void cnnavigation::KlobucharIonosphereModel::~KlobucharIonosphereModel(cnnavigation::KlobucharIonosphereModel *this)
{
  *this = &unk_1F4CD58A8;
}

{
  *this = &unk_1F4CD58A8;
}

{
  *this = &unk_1F4CD58A8;
  JUMPOUT(0x1D387ECA0);
}

uint64_t cnnavigation::KlobucharIonosphereModel::GetIonosphericDelay(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, int a8, uint64_t a9)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80))
  {
    v22 = 0xFFFFFFFFLL;
    goto LABEL_42;
  }

  v10 = a8;
  if (a8)
  {
    v16 = cnnavigation::SatElAz(a5, a6, 1, &v104, 1, &v95);
    if (!v16)
    {
      v18 = v104;
      v17 = v105;
      v19 = &v91;
      v20 = a5;
      v21 = 1;
      goto LABEL_9;
    }

LABEL_7:
    v22 = v16;
    goto LABEL_42;
  }

  v16 = cnnavigation::SatElAz(a5, a6, 1, &v104, 0, &v95);
  if (v16)
  {
    goto LABEL_7;
  }

  v18 = v104;
  v17 = v105;
  v19 = &v95;
  v20 = a5;
  v21 = 0;
LABEL_9:
  v22 = cnnavigation::ECEFToLLA(v20, 1, v103, v21, v19);
  if (!v22)
  {
    v23 = v18 / 3.14159265;
    v24 = v103[0] / 3.14159265;
    v25 = v103[1] / 3.14159265;
    v90 = v23 + 0.11;
    v26 = 0.0137 / (v23 + 0.11) + -0.022;
    v27 = __sincos_stret(v17);
    v28 = v24 + v26 * v27.__cosval;
    v88 = v28;
    if (v28 > 0.416)
    {
      v28 = 0.416;
    }

    v86 = v28;
    if (v28 < -0.416)
    {
      v29 = -0.416;
    }

    else
    {
      v29 = v28;
    }

    v89 = 0.0137 / (v23 + 0.11) + -0.022;
    v87 = cos(v29 * 3.14159265);
    v30 = v25 + v27.__sinval * v26 / v87;
    v31 = v29 + cos((v30 + -1.617) * 3.14159265) * 0.064;
    v32 = fmod(a2 + v30 * 43200.0, 86400.0);
    if (v32 < 0.0)
    {
      v32 = v32 + 86400.0;
    }

    if (v32 >= 86400.0)
    {
      v33 = v32 + -86400.0;
    }

    else
    {
      v33 = v32;
    }

    v34 = *(a1 + 48) + v31 * (*(a1 + 56) + *(a1 + 64) * v31 + *(a1 + 72) * v31 * v31);
    if (v34 < 72000.0)
    {
      v34 = 72000.0;
    }

    v35 = (v33 + -50400.0) * 6.28318531 / v34;
    v36 = *(a1 + 24) + *(a1 + 32) * v31 + *(a1 + 40) * v31 * v31;
    v37 = 0.0;
    if (*(a1 + 16) + v31 * v36 >= 0.0)
    {
      v38 = *(a1 + 16) + v31 * v36;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = 0.53 - v23;
    v40 = (0.53 - v23) * ((0.53 - v23) * 16.0) * (0.53 - v23) + 1.0;
    if (fabs(v35) >= 1.57)
    {
      v43 = 1575420000.0 / a3 * (1575420000.0 / a3) * (v40 * 0.000000005);
      *a7 = v43;
      v45 = 0.0;
      if ((v10 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v41 = v35 * v35 * (v35 * v35 / 24.0 + -0.5) + 1.0;
      v42 = 1575420000.0 / a3 * (1575420000.0 / a3);
      v43 = v42 * (v40 * (v38 * v41 + 0.000000005));
      *a7 = v43;
      if ((v10 & 1) == 0)
      {
        goto LABEL_42;
      }

      v44 = v42 * v40;
      v45 = v44 * v38 * v35 * (v35 * v35 / 6.0 + -1.0);
      v37 = v44 * v41;
    }

    v84 = v45;
    v85 = v37;
    v46 = 0.0;
    v47 = v38 < 0.0;
    v48 = 0.0;
    if (!v47)
    {
      v48 = *(a1 + 24) + v31 * (v31 * (*(a1 + 40) * 3.0) + *(a1 + 32) * 2.0);
    }

    v82 = v39 * (v39 * -48.0);
    v83 = v43 / v40;
    v80 = v48;
    v81 = 6.28318531 / v34;
    v79 = (v33 + -50400.0) * -6.28318531 / (v34 * v34);
    if (v34 >= 72000.0)
    {
      v46 = *(a1 + 56) + v31 * (v31 * (*(a1 + 72) * 3.0) + *(a1 + 64) * 2.0);
    }

    v49 = v86 >= -0.416;
    v50 = sin((v30 + -1.617) * 3.14159265) * -0.20106193;
    v51 = v27.__sinval * (v89 * 3.14159265) * tan(v29 * 3.14159265) / v87;
    v52 = fabs(v88) > 0.416 && v88 <= 0.416;
    v53 = -(v89 * v27.__sinval);
    v54 = 0.0;
    if (v52 && v49)
    {
      v53 = 0.0;
      cosval = 0.0;
    }

    else
    {
      cosval = v27.__cosval;
    }

    if (!v52 || !v49)
    {
      v54 = 0.318309886;
    }

    v56 = -0.0137 / (v90 * v90) * 0.318309886;
    v57 = v56 * cosval;
    v58 = v54 * v51;
    v59 = v57 * v51 + v27.__sinval / v87 * v56;
    v60 = v27.__cosval * v89 / v87 + v53 * v51;
    v61 = v58 * 43200.0;
    v62 = v59 * 43200.0;
    v63 = v60 * 43200.0;
    v64 = v54 + v58 * v50;
    v65 = v57 + v59 * v50;
    v66 = v53 + v60 * v50;
    v67 = v66 * v46;
    v68 = v64 * v80;
    v69 = v50 * 0.318309886 * v80;
    v70 = v65 * v80;
    v71 = v66 * v80;
    v72 = v79 * (v64 * v46) + v81 * v61;
    v73 = v79 * (v50 * 0.318309886 * v46) + v81 * 13750.9871;
    v74 = v79 * (v65 * v46) + v81 * v62;
    v75 = v79 * v67 + v81 * v63;
    *a9 = v81 * v84;
    v76 = v82 * 0.318309886 * v83;
    *(a9 + 16) = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v93, v73), v91, v72), v95, v74), v99, v75), v84), v95, v76), vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v93, v69), v91, v68), v95, v70), v99, v71), v85);
    *(a9 + 32) = v84 * (v73 * v94 + v72 * v92 + v74 * v96 + v75 * v100) + v76 * v96 + v85 * (v69 * v94 + v68 * v92 + v70 * v96 + v71 * v100);
    *(a9 + 40) = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v101, v75), v97, v74), v84), v97, v76), vmlaq_n_f64(vmulq_n_f64(v101, v71), v97, v70), v85);
    *(a9 + 56) = v84 * (v75 * v102 + v74 * v98) + v76 * v98 + v85 * (v71 * v102 + v70 * v98);
    *(a9 + 8) = -2.0 / a3 * *a7;
  }

LABEL_42:
  v77 = *MEMORY[0x1E69E9840];
  return v22;
}

double cnnavigation::GLONASSAlmanac::GLONASSAlmanac(cnnavigation::GLONASSAlmanac *this)
{
  *this = &unk_1F4CD5AD0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 5) = -1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0xBFF0000000000000;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F4CD5AD0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 5) = -1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0xBFF0000000000000;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

double cnnavigation::GLONASSAlmanac::GLONASSAlmanac(cnnavigation::GLONASSAlmanac *this, const cnnavigation::GLONASSAlmanac *a2)
{
  *this = &unk_1F4CD5AD0;
  *(this + 1) = *(a2 + 1);
  *(this + 16) = *(a2 + 16);
  *(this + 5) = *(a2 + 5);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 88) = *(a2 + 88);
  *(this + 104) = *(a2 + 104);
  *(this + 15) = *(a2 + 15);
  result = *(a2 + 16);
  *(this + 16) = result;
  return result;
}

void cnnavigation::GLONASSAlmanac::~GLONASSAlmanac(cnnavigation::GLONASSAlmanac *this)
{
  *this = &unk_1F4CD5AD0;
}

{
  *this = &unk_1F4CD5AD0;
}

{
  *this = &unk_1F4CD5AD0;
  JUMPOUT(0x1D387ECA0);
}

double cnnavigation::GLONASSAlmanac::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    result = *(a2 + 128);
    *(a1 + 128) = result;
  }

  return result;
}

uint64_t cnnavigation::GLONASSAlmanac::Deserialize(uint64_t a1, uint64_t a2)
{
  v24 = (*(*a2 + 40))(a2, a1 + 8, 4);
  v26 = 0;
  v23 = (*(*a2 + 40))(a2, &v26, 1);
  *(a1 + 16) = v26 == 1;
  v22 = (*(*a2 + 40))(a2, a1 + 12, 4);
  v21 = (*(*a2 + 40))(a2, a1 + 20, 4);
  v20 = (*(*a2 + 40))(a2, a1 + 24, 8);
  v19 = (*(*a2 + 40))(a2, a1 + 32, 8);
  v18 = (*(*a2 + 40))(a2, a1 + 40, 8);
  v17 = (*(*a2 + 40))(a2, a1 + 48, 8);
  v16 = (*(*a2 + 40))(a2, a1 + 56, 8);
  v15 = (*(*a2 + 40))(a2, a1 + 64, 8);
  v4 = (*(*a2 + 40))(a2, a1 + 72, 8);
  v5 = (*(*a2 + 40))(a2, a1 + 80, 8);
  v6 = (*(*a2 + 40))(a2, a1 + 88, 8);
  v7 = (*(*a2 + 40))(a2, a1 + 96, 8);
  v8 = (*(*a2 + 40))(a2, a1 + 104, 8);
  v9 = (*(*a2 + 40))(a2, a1 + 112, 8);
  v10 = (*(*a2 + 40))(a2, a1 + 120, 8);
  v25 = 0;
  v11 = (*(*a2 + 40))(a2, &v25, 4);
  v12 = 0;
  if (v25 <= 1)
  {
    v12 = v24 & v23 & v22 & v21 & v20 & v19 & v18 & v17 & v16 & v15 & v4 & v5 & v6 & v7 & v8 & v9 & v10 & v11;
    *(a1 + 128) = v25;
  }

  v13 = (*(*a2 + 40))(a2, &v25, 4);
  if (v25 > 1)
  {
    return 0;
  }

  result = v12 & v13;
  *(a1 + 132) = v25;
  return result;
}

uint64_t cnnavigation::GLONASSAlmanac::Serialize(uint64_t a1, uint64_t a2)
{
  LODWORD(v25) = *(a1 + 8);
  v4 = (*(*a2 + 32))(a2, &v25, 4);
  LOBYTE(v25) = *(a1 + 16);
  v5 = v4 & (*(*a2 + 32))(a2, &v25, 1);
  LODWORD(v25) = *(a1 + 12);
  v6 = (*(*a2 + 32))(a2, &v25, 4);
  LODWORD(v25) = *(a1 + 20);
  v7 = v5 & v6 & (*(*a2 + 32))(a2, &v25, 4);
  v25 = *(a1 + 24);
  v8 = (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 32);
  v9 = v8 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 40);
  v10 = v7 & v9 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 48);
  v11 = (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 56);
  v12 = v11 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 64);
  v13 = v12 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 72);
  v14 = v10 & v13 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 80);
  v15 = (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 88);
  v16 = v15 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 96);
  v17 = v16 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 104);
  v18 = v17 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 112);
  v19 = v14 & v18 & (*(*a2 + 32))(a2, &v25, 8);
  v25 = *(a1 + 120);
  v20 = v19 & (*(*a2 + 32))(a2, &v25, 8);
  v21 = *(a1 + 128);
  if (v21 == 1)
  {
    LODWORD(v25) = 1;
    goto LABEL_5;
  }

  if (!v21)
  {
    LODWORD(v25) = 0;
LABEL_5:
    v22 = v20 & (*(*a2 + 32))(a2, &v25, 4);
    goto LABEL_7;
  }

  v22 = 0;
LABEL_7:
  v23 = *(a1 + 132);
  if (!v23)
  {
    LODWORD(v25) = 0;
    return v22 & (*(*a2 + 32))(a2, &v25, 4);
  }

  if (v23 == 1)
  {
    LODWORD(v25) = 1;
    return v22 & (*(*a2 + 32))(a2, &v25, 4);
  }

  return 0;
}

__n128 cnnavigation::GalileoEphemerisDatabase::GetEphemerides(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24) == 3)
  {
    v5 = *(a1 + 8);
    v3 = a1 + 8;
    v4 = v5;
    if (v5)
    {
      v7 = *(a2 + 28) + 3000;
      v8 = v3;
      do
      {
        if (*(v4 + 32) >= v7)
        {
          v8 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v7));
      }

      while (v4);
      if (v8 != v3 && v7 >= *(v8 + 32))
      {
        std::string::operator=((a3 + 8), (v8 + 48));
        *(a3 + 32) = *(v8 + 72);
        v9 = *(v8 + 240);
        v10 = *(v8 + 256);
        v11 = *(v8 + 272);
        *(a3 + 248) = *(v8 + 288);
        *(a3 + 232) = v11;
        *(a3 + 216) = v10;
        *(a3 + 200) = v9;
        v12 = *(v8 + 176);
        v13 = *(v8 + 192);
        v14 = *(v8 + 208);
        *(a3 + 184) = *(v8 + 224);
        *(a3 + 168) = v14;
        *(a3 + 152) = v13;
        *(a3 + 136) = v12;
        v15 = *(v8 + 112);
        v16 = *(v8 + 128);
        v17 = *(v8 + 144);
        *(a3 + 120) = *(v8 + 160);
        *(a3 + 104) = v17;
        *(a3 + 88) = v16;
        *(a3 + 72) = v15;
        result = *(v8 + 80);
        *(a3 + 56) = *(v8 + 96);
        *(a3 + 40) = result;
      }
    }
  }

  return result;
}

__n128 cnnavigation::GalileoEphemerisDatabase::SetEphemerides(cnnavigation::GalileoEphemerisDatabase *this, const cnnavigation::GalileoEphemerides *a2)
{
  v2 = a2 + 40;
  if (*(a2 + 32) == 3 && *(a2 + 40) != 0)
  {
    v5 = *(a2 + 9) + 3000;
    v6 = *(this + 1);
    if (!v6)
    {
LABEL_19:
      operator new();
    }

    v7 = this + 8;
    v8 = *(this + 1);
    do
    {
      if (*(v8 + 8) >= v5)
      {
        v7 = v8;
      }

      v8 = *&v8[8 * (*(v8 + 8) < v5)];
    }

    while (v8);
    if (v7 == this + 8 || v5 < *(v7 + 8))
    {
      while (1)
      {
        while (1)
        {
          v9 = v6;
          v10 = *(v6 + 32);
          if (v10 <= v5)
          {
            break;
          }

          v6 = *v9;
          if (!*v9)
          {
            goto LABEL_19;
          }
        }

        if (v10 >= v5)
        {
          break;
        }

        v6 = v9[1];
        if (!v6)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      result.n128_f64[0] = *(a2 + 7) - *(v7 + 12) + (*(a2 + 12) - *(v7 + 22)) * 604800.0;
      if (result.n128_f64[0] > 0.0)
      {
        std::string::operator=(v7 + 2, (a2 + 8));
        *(v7 + 9) = *(a2 + 4);
        v12 = *(v2 + 10);
        v13 = *(v2 + 11);
        v14 = *(v2 + 12);
        *(v7 + 36) = *(v2 + 26);
        *(v7 + 16) = v13;
        *(v7 + 17) = v14;
        *(v7 + 15) = v12;
        v15 = *(v2 + 6);
        v16 = *(v2 + 7);
        v17 = *(v2 + 9);
        *(v7 + 13) = *(v2 + 8);
        *(v7 + 14) = v17;
        *(v7 + 11) = v15;
        *(v7 + 12) = v16;
        v18 = *(v2 + 2);
        v19 = *(v2 + 3);
        v20 = *(v2 + 5);
        *(v7 + 9) = *(v2 + 4);
        *(v7 + 10) = v20;
        *(v7 + 7) = v18;
        *(v7 + 8) = v19;
        result = *v2;
        v21 = *(v2 + 1);
        *(v7 + 5) = *v2;
        *(v7 + 6) = v21;
      }
    }
  }

  return result;
}

void sub_1D0C5E948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = &unk_1F4CD5F70;
  sub_1D0C5E9B0(va);
  _Unwind_Resume(a1);
}

void cnnavigation::GalileoEphemerisDatabase::Reset(char **this)
{
  v2 = (this + 1);
  sub_1D0C5EA24(this[1]);
  *this = v2;
  this[2] = 0;
  *v2 = 0;
}

uint64_t *sub_1D0C5E9B0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 40) = &unk_1F4CD58E0;
      if (*(v2 + 71) < 0)
      {
        operator delete(*(v2 + 48));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1D0C5EA24(char *a1)
{
  if (a1)
  {
    sub_1D0C5EA24(*a1);
    sub_1D0C5EA24(*(a1 + 1));
    *(a1 + 5) = &unk_1F4CD58E0;
    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

double cnnavigation::LinearizedGravityModel::LinearizedGravityModel(cnnavigation::LinearizedGravityModel *this)
{
  *this = &unk_1F4CD5B00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 129) = 0u;
  return result;
}

{
  *this = &unk_1F4CD5B00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 129) = 0u;
  return result;
}

uint64_t cnnavigation::LinearizedGravityModel::LinearizedGravityModel(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F4CD5B00;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a2[1];
  *(a1 + 24) = a2[2];
  v16 = 0;
  if ((*(*a3 + 32))(a3))
  {
    v4 = 0;
    *(a1 + 80) = 0;
    v5 = 0uLL;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
    *(a1 + 56) = v18;
    *(a1 + 64) = v11;
    *(a1 + 80) = v12;
    v5 = v13;
    v7 = v14;
    v4 = 1;
    v8 = v15;
    v6 = 0x40C3880000000000;
  }

  *(a1 + 88) = v5;
  *(a1 + 104) = v7;
  *(a1 + 120) = v8;
  *(a1 + 136) = v6;
  *(a1 + 144) = v4;
  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

double cnnavigation::LinearizedGravityModel::LinearizedGravityModel(cnnavigation::LinearizedGravityModel *this, const cnnavigation::LinearizedGravityModel *a2)
{
  *this = &unk_1F4CD5B00;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 88) = *(a2 + 88);
  *(this + 104) = *(a2 + 104);
  *(this + 120) = *(a2 + 120);
  result = *(a2 + 17);
  *(this + 17) = result;
  *(this + 144) = *(a2 + 144);
  return result;
}

double cnnavigation::LinearizedGravityModel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    result = *(a2 + 136);
    *(a1 + 136) = result;
    *(a1 + 144) = *(a2 + 144);
  }

  return result;
}

uint64_t cnnavigation::LinearizedGravityModel::GetGravitationalPotential(cnnavigation::LinearizedGravityModel *this, double *a2, double *a3)
{
  v6[3] = *MEMORY[0x1E69E9840];
  result = cnnavigation::LinearizedGravityModel::ComputeLinearizedGravityModel(this, a2, 0, 0, a3, v6, v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::LinearizedGravityModel::UpdateLinearization(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  result = (*(*a3 + 32))(a3, a2, &v13, &v14, v11);
  if (result)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    *(a1 + 8) = *a2;
    *(a1 + 16) = a2[1];
    v6 = a2[2];
    *(a1 + 136) = 0x40C3880000000000;
    *(a1 + 144) = 1;
    v7 = v13;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v14;
    *(a1 + 56) = v15;
    v8 = v11[1];
    *(a1 + 64) = v11[0];
    *(a1 + 80) = v8;
    v9 = v11[3];
    *(a1 + 96) = v11[2];
    *(a1 + 112) = v9;
    *(a1 + 128) = v12;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::LinearizedGravityModel::UpdateLinearization(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  *(a1 + 8) = *a2;
  *(a1 + 16) = a2[1];
  *(a1 + 24) = a2[2];
  *(a1 + 32) = a6;
  *(a1 + 40) = *a3;
  *(a1 + 48) = a3[1];
  *(a1 + 56) = a3[2];
  *(a1 + 64) = *a4;
  *(a1 + 80) = *(a4 + 16);
  *(a1 + 96) = *(a4 + 32);
  *(a1 + 112) = *(a4 + 48);
  *(a1 + 128) = *(a4 + 64);
  *(a1 + 136) = a5;
  *(a1 + 144) = 1;
  return 0;
}

uint64_t cnnavigation::ECEFToPZ9002(float64x2_t *this, double *a2, double *a3)
{
  v3 = this[1].f64[0];
  *a2 = vaddq_f64(*this, xmmword_1D0E767D0);
  a2[2] = v3 + -0.18;
  return 0;
}

uint64_t cnnavigation::ECEFToPZ9002(float64x2_t *a1, float64x2_t *a2, int a3, void *a4)
{
  v4 = a1[1].f64[0];
  *a2 = vaddq_f64(*a1, xmmword_1D0E767D0);
  a2[1].f64[0] = v4 + -0.18;
  if (a3)
  {
    *a4 = 0x3FF0000000000000;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 0;
    a4[4] = 0x3FF0000000000000;
    a4[5] = 0;
    a4[6] = 0;
    a4[7] = 0;
    a4[8] = 0x3FF0000000000000;
  }

  return 0;
}

uint64_t cnnavigation::ECEFToPZ9002(float64x2_t *a1, float64x2_t *a2, void *a3)
{
  v3 = a1[1].f64[0];
  *a2 = vaddq_f64(*a1, xmmword_1D0E767D0);
  a2[1].f64[0] = v3 + -0.18;
  *a3 = 0x3FF0000000000000;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0x3FF0000000000000;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0x3FF0000000000000;
  return 0;
}

uint64_t cnnavigation::PZ9002ToECEF(float64x2_t *this, double *a2, double *a3)
{
  v3 = this[1].f64[0];
  *a2 = vaddq_f64(*this, xmmword_1D0E76600);
  a2[2] = v3 + 0.18;
  return 0;
}

uint64_t cnnavigation::PZ9002ToECEF(float64x2_t *a1, float64x2_t *a2, int a3, void *a4)
{
  v4 = a1[1].f64[0];
  *a2 = vaddq_f64(*a1, xmmword_1D0E76600);
  a2[1].f64[0] = v4 + 0.18;
  if (a3)
  {
    *a4 = 0x3FF0000000000000;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 0;
    a4[4] = 0x3FF0000000000000;
    a4[5] = 0;
    a4[6] = 0;
    a4[7] = 0;
    a4[8] = 0x3FF0000000000000;
  }

  return 0;
}

uint64_t cnnavigation::PZ9002ToECEF(float64x2_t *a1, float64x2_t *a2, void *a3)
{
  v3 = a1[1].f64[0];
  *a2 = vaddq_f64(*a1, xmmword_1D0E76600);
  a2[1].f64[0] = v3 + 0.18;
  *a3 = 0x3FF0000000000000;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0x3FF0000000000000;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0x3FF0000000000000;
  return 0;
}

uint64_t cnnavigation::GalileoTimeToJulianTime(double *a1, int a2, uint64_t a3)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1[1];
  result = 0xFFFFFFFFLL;
  if (v4 >= 0.0 && v4 < 604800.0)
  {
    result = 0;
    v6 = vcvtmd_s64_f64(v4 / 86400.0);
    v7 = (v4 - a2) / 86400.0 + 0.5 - v6;
    *a3 = v6 - v3 + 8 * v3 + 2451412 + vcvtmd_s64_f64(v7);
    *(a3 + 8) = v7 - floor(v7);
  }

  return result;
}

double cnnavigation::JulianTimeToGalileoTime(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8) + -0.5;
  result = v3 - floor(v3);
  v5 = *a1 - 2451412 + vcvtmd_s64_f64(v3);
  if ((v5 & 0x80000000) == 0)
  {
    *a3 = v5 / 7;
    result = result * 86400.0 + (v5 % 7) * 86400.0 + a2;
    *(a3 + 8) = result;
    if (result >= 604800.0)
    {
      *a3 = v5 / 7 + 1;
      result = result + -604800.0;
      *(a3 + 8) = result;
    }
  }

  return result;
}

uint64_t cnnavigation::GLONASSFindSat(int a1, uint64_t a2, double *a3, double *a4, double *a5, double a6, double a7)
{
  v79 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v8 = *(a2 + 20);
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 72);
    v46 = *(a2 + 80);
    v48 = *(a2 + 56);
    v15 = (v8 - 1) / 36525.0 + -0.04 + (v9 + -3.0) / 86400.0 / 36525.0;
    v41 = (v15 * 36000.7701 + 100.460618 + v15 * v15 * 0.00038793 + v15 * (v15 * v15) * -0.000000026) * 0.0174532925 + (v10 + -10800.0) * 0.00007292115;
    v16 = __sincos_stret(v41);
    v17 = 0;
    v76 = v11 * v16.__cosval - v12 * v16.__sinval;
    v77 = v12 * v16.__cosval + v11 * v16.__sinval;
    v78 = v48;
    v73 = v13 * v16.__cosval - v14 * v16.__sinval + v77 * -0.00007292115;
    v74 = v14 * v16.__cosval + v13 * v16.__sinval + v76 * 0.00007292115;
    v75 = v46;
    v18 = a6 - v10 + (a1 - v8) * 86400.0 + a7 - v9;
    v19 = vcvtpd_s64_f64(fabs(v18) / 60.0);
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v45 = v19;
    v40 = a6 - v10 + (a1 - v8) * 86400.0 + a7 - v9;
    v20 = v18 / v19;
    v47 = v20 * 0.5;
    do
    {
      v49 = v17;
      v22 = v76;
      v21 = v77;
      v62[0] = v76;
      v62[1] = v77;
      v23 = v78;
      v62[2] = v78;
      v24 = v74;
      v53 = v73;
      *v61 = v73;
      *&v61[1] = v74;
      v51 = v75;
      *&v61[2] = v75;
      if (cnnavigation::details::dyn_GLONASS(v62, v61, a2, &v70, v69))
      {
        goto LABEL_14;
      }

      v60[0] = v22 + v47 * v70;
      v60[1] = v21 + v47 * v71;
      v60[2] = v23 + v47 * v72;
      v59[0] = v53 + v47 * v69[0];
      v59[1] = v24 + v47 * v69[1];
      v59[2] = v51 + v47 * v69[2];
      if (cnnavigation::details::dyn_GLONASS(v60, v59, a2, v68, v67))
      {
        goto LABEL_14;
      }

      v58[0] = v22 + v47 * v68[0];
      v58[1] = v21 + v47 * v68[1];
      v58[2] = v23 + v47 * v68[2];
      v57[0] = v53 + v47 * v67[0];
      v57[1] = v24 + v47 * v67[1];
      v57[2] = v51 + v47 * v67[2];
      if (cnnavigation::details::dyn_GLONASS(v58, v57, a2, v66, v65))
      {
        goto LABEL_14;
      }

      v56[0] = v22 + v20 * v66[0];
      v56[1] = v21 + v20 * v66[1];
      v56[2] = v23 + v20 * v66[2];
      v55[0] = v53 + v20 * v65[0];
      v55[1] = v24 + v20 * v65[1];
      v55[2] = v51 + v20 * v65[2];
      if (cnnavigation::details::dyn_GLONASS(v56, v55, a2, v64, v63))
      {
        goto LABEL_14;
      }

      for (i = 0; i != 3; ++i)
      {
        *(&v76 + i * 8) = *(&v76 + i * 8) + v20 * (*(&v70 + i * 8) + v68[i] * 2.0 + v66[i] * 2.0 + *&v64[i]) / 6.0;
        *(&v73 + i * 8) = *(&v73 + i * 8) + v20 * (v69[i] + v67[i] * 2.0 + v65[i] * 2.0 + v63[i]) / 6.0;
      }

      v17 = v49 + 1;
    }

    while (v49 + 1 != v45);
    if (a5 && cnnavigation::details::dyn_GLONASS(&v76, &v73, a2, v69, &v70))
    {
LABEL_14:
      result = 2;
      goto LABEL_16;
    }

    v28 = v76;
    v29 = __sincos_stret(v41 + v40 * 0.00007292115);
    v30 = v78;
    v31 = v29.__cosval * v77 - v28 * v29.__sinval;
    *a3 = v29.__sinval * v77 + v28 * v29.__cosval;
    a3[1] = v31;
    a3[2] = v30;
    if (a4)
    {
      v32 = v73;
      v33 = v74;
      *a4 = v29.__sinval * v74 + v73 * v29.__cosval + v31 * 0.00007292115;
      v34 = v29.__cosval * v33 - v32 * v29.__sinval;
      v35 = v75;
      v36 = v34 + *a3 * -0.00007292115;
      a4[1] = v36;
      a4[2] = v35;
      if (a5)
      {
        v37 = v70;
        v38 = v71;
        *a5 = v29.__sinval * v71 + v70 * v29.__cosval + *a3 * 0.00000000531749412 + v36 * 0.0001458423;
        v39 = v72;
        a5[1] = v29.__cosval * v38 - v37 * v29.__sinval + a3[1] * 0.00000000531749412 + *a4 * -0.0001458423;
        a5[2] = v39;
      }

      goto LABEL_22;
    }

    if (!a5)
    {
LABEL_22:
      result = 0;
      goto LABEL_16;
    }

    result = 3;
  }

  else
  {
    result = 1;
  }

LABEL_16:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::details::dyn_GLONASS(double *a1, void *a2, uint64_t a3, void *a4, double *a5)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v8 = a1[2];
  v71 = a1[1];
  v72 = *a1;
  v9 = sqrt(v71 * v71 + v72 * v72 + v8 * v8);
  v66 = 3.98600442e14 / v9;
  v68 = v8;
  v64 = v9;
  v61 = v8 / v9;
  v69 = v61 * (v61 * 5.0);
  v70 = 6378136.0 / v9 * (6378136.0 / v9);
  v10 = ((*(a3 + 20) - 1) + 7670.0 + 27392.375 + (*(a3 + 24) + 16.0 + *(a3 + 32)) / 86400.0) / 36525.0;
  v11 = v10 * 8328.6911 + -1.11518496;
  v59 = v10;
  v12 = v10 * 628.301946 + 6.25658377;
  v13 = __sincos_stret(v10 * -33.7571462 + 4.52360151);
  v14 = 10;
  v15 = v11;
  v16 = v12;
  do
  {
    v15 = v11 + sin(v15) * 0.054900489;
    v16 = v12 + sin(v16) * 0.016719;
    --v14;
  }

  while (v14);
  v17 = v66 / v64;
  v67 = v71 / v64 * (v66 / v64);
  v63 = v72 / v64 * v17;
  v65 = v61 * v17;
  v57 = v59 * 71.0180413 + 5.83515153;
  v62 = v59 * 0.0300052642 + 4.90822947;
  v18 = v13.__cosval * -v13.__cosval * 0.0040296679 + 1.0;
  v19 = v13.__sinval * v13.__cosval * 0.0040296679;
  v58 = v13.__cosval * 0.0896833182 * 0.917459783 + v18 * 0.39782854;
  v60 = v13.__cosval * 0.0896833182 * -0.39782854 + v18 * 0.917459783;
  v20 = __sincos_stret(v15);
  v21 = v20.__cosval * -0.054900489 + 1.0;
  v22 = v20.__sinval * 0.998491831 / v21;
  v23 = (v20.__cosval + -0.054900489) / v21;
  v24 = __sincos_stret(v16);
  v25 = v24.__cosval * -0.016719 + 1.0;
  v26 = v24.__sinval * 0.999860228 / v25;
  v27 = v21 * 384385243.0;
  v28 = (v24.__cosval + -0.016719) / v25;
  v29 = __sincos_stret(v57);
  v30 = v29.__sinval * v23 + v22 * v29.__cosval;
  v31 = v23 * v29.__cosval - v22 * v29.__sinval;
  v32 = (v13.__sinval * -v13.__sinval * 0.0040296679 + 1.0) * v31 + v30 * v19;
  v33 = (v13.__sinval * 0.0896833182 * 0.39782854 + v19 * 0.917459783) * v31 + v30 * v60;
  v34 = (v13.__sinval * 0.0896833182 * -0.917459783 + v19 * 0.39782854) * v31 + v30 * v58;
  v35 = v25 * 1.49598e11;
  v36 = __sincos_stret(v62);
  result = 0;
  v38 = v28 * v36.__cosval - v26 * v36.__sinval;
  v39 = v36.__sinval * v28 + v26 * v36.__cosval;
  v40 = v39 * 0.917459783;
  v41 = v39 * 0.39782854;
  v42 = 4.902835e12 / v27 / v27;
  v43 = v32 - v72 / v27;
  v44 = v33 - v71 / v27;
  v45 = v34 - v68 / v27;
  v46 = sqrt(v44 * v44 + v43 * v43 + v45 * v45);
  v47 = v38 - v72 / v35;
  v48 = v40 - v71 / v35;
  v49 = v41 - v68 / v35;
  v50 = sqrt(v48 * v48 + v47 * v47 + v49 * v49);
  v51 = 1.0 / v46 * (1.0 / v46 * (1.0 / v46));
  v52 = 1.0 / v50 * (1.0 / v50 * (1.0 / v50));
  v53 = v42 * -(v32 - v43 * v51);
  v54 = v42 * -(v33 - v44 * v51);
  v55 = v42 * -(v34 - v45 * v51);
  v56 = 1.325263e20 / v35 / v35;
  *a4 = *a2;
  a4[1] = a2[1];
  a4[2] = a2[2];
  *a5 = v53 + v56 * -(v38 - v47 * v52) - (v63 - v70 * (v63 * -0.001623939) * (1.0 - v69));
  a5[1] = v54 + v56 * -(v40 - v48 * v52) - (v67 - v70 * (v67 * -0.001623939) * (1.0 - v69));
  a5[2] = v55 + v56 * -(v41 - v49 * v52) - (v65 - v70 * (v65 * -0.001623939) * (3.0 - v69));
  return result;
}

uint64_t cnnavigation::details::dyn_GLONASS(float64x2_t *a1, void *a2, float64x2_t *a3, uint64_t a4, void *a5, float64x2_t *a6)
{
  if (!*(a4 + 16))
  {
    return 1;
  }

  result = 0;
  v8 = a1[1].f64[0];
  v9 = a3[1].f64[0];
  *&v10 = sqrt(COERCE_DOUBLE(*&vmulq_f64(*a1, *a1).f64[1]) + a1->f64[0] * a1->f64[0] + v8 * v8);
  v11 = 3.98600442e14 / *&v10 / *&v10;
  v12 = 6378136.0 / *&v10 * (6378136.0 / *&v10);
  v13 = vdivq_f64(*a1, vdupq_lane_s64(v10, 0));
  v14 = v8 / *&v10;
  v15 = v14 * (v14 * 5.0);
  v16 = vmulq_n_f64(v13, v11);
  v17 = v14 * v11;
  v18 = *a3;
  *a5 = *a2;
  a5[1] = a2[1];
  a5[2] = a2[2];
  *a6 = vaddq_f64(v18, vmlaq_n_f64(vnegq_f64(v16), vmulq_n_f64(vmulq_f64(v16, vdupq_n_s64(0xBF5A9B4B395321AALL)), v12), 1.0 - v15));
  a6[1].f64[0] = v9 - (v17 - v12 * (v17 * -0.001623939) * (3.0 - v15));
  return result;
}

uint64_t cnnavigation::GLONASSFindSat(cnnavigation *this, uint64_t a2, double a3, double a4, const cnnavigation::GLONASSAlmanac *a5, double *a6, double *a7, double *a8)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v11 = *(a2 + 80) + 43200.0;
  v105 = a3 - *(a2 + 24) + (this - *(a2 + 20)) * 86400.0 + a4 - *(a2 + 32);
  v89 = *(a2 + 64);
  v12 = *(a2 + 72) + 1.09955743;
  v98 = floor(v105 / v11);
  v100 = v11;
  v106 = *(a2 + 88);
  v13 = v11 + (v98 * 2.0 + 1.0) * v106;
  v14 = *(a2 + 96);
  v92 = *(a2 + 104);
  v93 = -v14;
  v15 = 1.0 - v14 * v14;
  v95 = v14;
  v16 = v14 * cos(v92) + 1.0;
  v103 = v12;
  v90 = sin(v12);
  v17 = 0;
  v18 = v15;
  v19 = (v90 * -2.5 * v90 + 2.0) * pow(v15, 1.5) / (v16 * v16) + v16 * (v16 * v16) / v15;
  v20 = 0.0;
  v21 = v13;
  v22 = v13;
  do
  {
    v23 = pow(v22 * v22 / 6.28318531 / 6.28318531 * 3.98600442e14, 0.333333333);
    v24 = v18 * v23;
    if (v17 > 8)
    {
      break;
    }

    v22 = v21 / (6378136.0 / v24 * (6378136.0 / v24 * -0.00162393863) * v19 + 1.0);
    v25 = vabdd_f64(v23, v20);
    ++v17;
    v20 = v23;
  }

  while (v25 >= 0.1);
  v102 = cos(v103);
  v88 = -(6.28318531 / v21 * 0.00162393863 * 6378136.0 * 6378136.0 / v24 / v24 * v102 + 0.00007292115);
  v26 = v92 + (v102 * -5.0 * v102 + 1.0) * (6.28318531 / v21 * 0.000811969313 * 6378136.0 * -6378136.0 / v24 / v24) * v105;
  v27 = tan(v26 * 0.5);
  v28 = atan2(sqrt(1.0 - v95) * v27, sqrt(v95 + 1.0)) * -2.0;
  v86 = v26 + v28 + v93 * sin(v28);
  v91 = 4.06806188e13 / v23 / v23 * 0.00162393863;
  v29 = __sincos_stret(v26);
  v30 = v95 * v29.__cosval;
  v31 = v95 * v29.__sinval;
  v32 = v90;
  v109 = v32 * -1.5 * v32 + 1.0;
  v112 = v109 * (v91 + v91);
  v33 = v86 + 6.28318531 / v21 * (v105 - v100 * v98 + -(v106 * v98) * v98);
  v34 = __sincos_stret(v33);
  v99 = v95 * v29.__sinval * v34.__sinval;
  cosval = v34.__cosval;
  v96 = v32 * (v32 * v91);
  v35 = __sincos_stret(v33 + v33);
  sinval = v35.__sinval;
  v36 = v35.__cosval;
  v37 = __sincos_stret(v33 * 3.0);
  v87 = v96 * (v35.__cosval + v30 * -0.5 * v34.__cosval + v31 * 0.5 * v34.__sinval + v30 * 3.5 * v37.__cosval + v31 * 3.5 * v37.__sinval);
  v38 = __sincos_stret(v33 * 4.0);
  v79 = v32 * (v32 * (v91 * -0.25));
  v39 = v102;
  v83 = v39 * -(v91 * 0.5 * v39) * v30;
  v85 = v79 * (v34.__sinval + v37.__sinval * -2.33333333 + v30 * 5.0 * v35.__sinval + v30 * -8.5 * v38.__sinval + v31 * 8.5 * v38.__cosval + v31 * v36) + v109 * v91 * (v34.__sinval + v30 * 1.5 * sinval - v31 * 1.5 * v36) + v83 * sinval;
  v82 = v39 * (v39 * (v91 * 0.5)) * v31;
  v84 = v79 * (v37.__cosval * -2.33333333 - cosval + v31 * -5.0 * sinval + v30 * -8.5 * v38.__cosval - v31 * 8.5 * v38.__sinval + v30 * v36) + v109 * v91 * (cosval + v30 * 1.5 * v36 + v31 * 1.5 * sinval) + v82 * sinval;
  v40 = v31 * -2.5 * v34.__cosval + v30 * 3.5 * v34.__sinval + v35.__sinval * -0.5;
  v74 = v30;
  v77 = v32 * (v32 * (v91 * 3.0));
  v80 = v40 - v30 * 1.16666667 * v37.__sinval + v31 * 1.16666667 * v37.__cosval;
  v76 = v39 * (v39 * v91);
  v78 = v77 * (v30 * -0.291666667 * v34.__sinval + v31 * -0.291666667 * cosval + v31 * -0.680555556 * v37.__cosval + v30 * 0.680555556 * v37.__sinval + v35.__sinval * 0.25) + v112 * (v31 * -1.75 * cosval + v30 * 1.75 * v34.__sinval) + v76 * (v40 + v30 * 1.16666667 * v37.__sinval + v31 * 1.16666667 * v37.__cosval);
  v81 = v102 * (v90 * (v91 * 0.5));
  v41 = __sincos_stret(v86);
  v73 = v41.__cosval;
  v42 = __sincos_stret(v86 + v86);
  v43 = v42.__sinval;
  v44 = v42.__cosval;
  v45 = __sincos_stret(v86 * 3.0);
  v97 = v96 * (v42.__cosval + v30 * -0.5 * v41.__cosval + v31 * 0.5 * v41.__sinval + v30 * 3.5 * v45.__cosval + v31 * 3.5 * v45.__sinval);
  v46 = __sincos_stret(v86 * 4.0);
  v104 = v103 + v81 * (v35.__cosval + v99 - v30 * v34.__cosval + v30 * 2.33333333 * v37.__cosval + v31 * 2.33333333 * v37.__sinval);
  v47 = v79 * (v41.__sinval + v45.__sinval * -2.33333333 + v30 * 5.0 * v42.__sinval + v30 * -8.5 * v46.__sinval + v31 * 8.5 * v46.__cosval + v31 * v44) + v109 * v91 * (v41.__sinval + v30 * 1.5 * v43 - v31 * 1.5 * v44) + v83 * v43;
  v48 = v79 * (v45.__cosval * -2.33333333 - v73 + v31 * -5.0 * v43 + v30 * -8.5 * v46.__cosval - v31 * 8.5 * v46.__sinval + v30 * v44) + v109 * v91 * (v73 + v30 * 1.5 * v44 + v31 * 1.5 * v43) + v82 * v43;
  v49 = v31 * -2.5 * v41.__cosval + v30 * 3.5 * v41.__sinval + v42.__sinval * -0.5;
  v107 = v49 - v30 * 1.16666667 * v45.__sinval;
  v94 = v42.__cosval + v31 * v41.__sinval - v30 * v41.__cosval + v30 * 2.33333333 * v45.__cosval;
  v50 = v77 * (v30 * -0.291666667 * v41.__sinval + v31 * -0.291666667 * v73 + v31 * -0.680555556 * v45.__cosval + v30 * 0.680555556 * v45.__sinval + v42.__sinval * 0.25) + v112 * (v31 * -1.75 * v73 + v30 * 1.75 * v41.__sinval) + v76 * (v49 + v30 * 1.16666667 * v45.__sinval + v31 * 1.16666667 * v45.__cosval);
  v51 = v31 + v85 - v47;
  v52 = v30 + v84 - v48;
  v53 = sqrt(v52 * v52 + v51 * v51);
  v54 = atan2(v51, v52);
  v55 = 0;
  v56 = v33 + v78 - v50 - v54;
  v57 = v56;
  do
  {
    v58 = v56 + v53 * sin(v57);
    if (v55 > 3)
    {
      break;
    }

    v59 = vabdd_f64(v58, v57);
    ++v55;
    v57 = v58;
  }

  while (v59 >= 0.000000001);
  v60 = v23 + v23 * (v87 + v112 * (v99 + v74 * v34.__cosval) - (v97 + v112 * (v31 * v41.__sinval + v74 * v41.__cosval)));
  v61 = tan(v58 * 0.5);
  v62 = atan2(sqrt(v53 + 1.0) * v61, sqrt(1.0 - v53));
  v63 = v62 + v62;
  v64 = v54 + v63;
  v113 = v63;
  v110 = v60 * (1.0 - v53 * v53);
  v111 = v53 * cos(v63) + 1.0;
  v65 = __sincos_stret(v64);
  v66 = __sincos_stret(v89 + v88 * v105 + v102 * -v91 * v80 - v102 * -v91 * (v107 + v31 * 1.16666667 * v45.__cosval));
  v67 = __sincos_stret(v104 - v81 * (v94 + v31 * 2.33333333 * v45.__sinval));
  v68 = v67.__cosval * -(v65.__sinval * v66.__sinval) + v65.__cosval * v66.__cosval;
  v69 = v110 / v111 * (v67.__cosval * (v66.__cosval * v65.__sinval) + v65.__cosval * v66.__sinval);
  *a5 = v110 / v111 * v68;
  *(a5 + 1) = v69;
  *(a5 + 2) = v110 / v111 * (v67.__sinval * v65.__sinval);
  if (a6)
  {
    v108 = v110 / v111 * v68;
    v70 = sqrt(3.98600442e14 / v110);
    v71 = v53 * v70 * sin(v113);
    *a6 = v71 * (v67.__cosval * -(v65.__sinval * v66.__sinval) + v65.__cosval * v66.__cosval) - v70 * v111 * (v67.__cosval * (v66.__sinval * v65.__cosval) + v65.__sinval * v66.__cosval) + v69 * 0.00007292115;
    a6[1] = v71 * (v67.__cosval * (v66.__cosval * v65.__sinval) + v65.__cosval * v66.__sinval) - v70 * v111 * (v67.__cosval * -(v65.__cosval * v66.__cosval) + v65.__sinval * v66.__sinval) + v108 * -0.00007292115;
    a6[2] = v67.__sinval * (v65.__cosval * (v70 * v111)) + v71 * v65.__sinval * v67.__sinval;
    if (a7)
    {
      *a7 = 0.0;
      a7[1] = 0.0;
      a7[2] = 0.0;
    }
  }

  else if (a7)
  {
    return 2;
  }

  return 0;
}

void cnnavigation::GNSSData::~GNSSData(cnnavigation::GNSSData *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    *v1 = &unk_1F4CD6260;
    if (*(v1 + 151) < 0)
    {
      operator delete(*(v1 + 128));
    }

    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    *v1 = &unk_1F4CD5F70;
    MEMORY[0x1D387ECA0](v1, 0x1092C40658D4D87);
  }
}

uint64_t *cnnavigation::GNSSData::Description@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 111) < 0)
  {
    return sub_1D0BC39B4(a2, *(v2 + 88), *(v2 + 96));
  }

  v3 = *(v2 + 88);
  *(a2 + 16) = *(v2 + 104);
  *a2 = v3;
  return this;
}

uint64_t cnnavigation::GNSSData::Map(cnnavigation::GNSSData *this, const cnnavigation::TAITime *a2, double *a3, double *a4, double *a5)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  return cnnavigation::GNSSData::Map(this, a2, &v6, a3, a4, a5);
}

uint64_t cnnavigation::GNSSData::Map(cnnavigation::GNSSData *this, const cnnavigation::TAITime *a2, const cnnavigation::GNSSUTCParameters *a3, double *a4, double *a5, double *a6)
{
  result = cnnavigation::LLAToECEF(a4, 1, &v12, 0, v13);
  if (!result)
  {
    return cnnavigation::details::GNSSElAz(a2, a3, &v12, *this, 1, a5, a6, 0, v13);
  }

  return result;
}

double cnnavigation::BeiDouEphemerides::BeiDouAgeOfData(cnnavigation::BeiDouEphemerides *this)
{
  if (this <= 0x18)
  {
    v1 = this;
    v2 = 3600.0;
    return v1 * v2;
  }

  if (this <= 0x1E)
  {
    v1 = (this - 23);
    v2 = 86400.0;
    return v1 * v2;
  }

  result = NAN;
  if (this == 31)
  {
    return INFINITY;
  }

  return result;
}

double cnnavigation::BeiDouEphemerides::BeiDouUserRangeAccuracy(cnnavigation::BeiDouEphemerides *this)
{
  if (this <= 5)
  {
    return exp2(this * 0.5 + 1.0);
  }

  if (this <= 0xE)
  {
    return exp2((this - 2));
  }

  result = NAN;
  if (this == 15)
  {
    return INFINITY;
  }

  return result;
}

uint64_t cnnavigation::BeiDouEphemerides::GNSSFindSat(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, double *a5, double *a6)
{
  if (*(a1 + 32) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 41))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = cnnavigation::TAITime::ToBeiDouTime(this, a3);
  v12 = *(a1 + 120);
  if (fabs(v12) < 2.22044605e-16)
  {
    return 0xFFFFFFFFLL;
  }

  if (v12 < 0.0 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v10;
  v16 = *(a1 + 104);
  v15 = *(a1 + 112);
  result = 0xFFFFFFFFLL;
  if (v15 >= 0.0 && v15 < 1.0 && (*(a1 + 112) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*(a1 + 128) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = *(a1 + 136);
    v18 = *(a1 + 144);
    v20 = *(a1 + 152);
    v22 = *(a1 + 168);
    v21 = *(a1 + 176);
    v151 = *(a1 + 160);
    v152 = *(a1 + 184);
    v23 = *(a1 + 192);
    v153 = *(a1 + 200);
    v24 = *(a1 + 208);
    v154 = *(a1 + 216);
    v25 = *(a1 + 41);
    if (v25 > 1)
    {
      v148 = *(a1 + 192);
      v149 = *(a1 + 176);
      v145 = *(a1 + 168);
      v147 = *(a1 + 208);
      v144 = *(a1 + 136);
      if (v25 == 2)
      {
        if (v12 <= 5353.22333)
        {
          return result;
        }
      }

      else
      {
        if (v25 != 3)
        {
          goto LABEL_27;
        }

        if (v12 >= 5353.22333)
        {
          return result;
        }
      }

      if (v18 <= 0.479965544)
      {
        return result;
      }
    }

    else
    {
      if (!*(a1 + 41))
      {
        return result;
      }

      v144 = *(a1 + 136);
      v145 = *(a1 + 168);
      v147 = *(a1 + 208);
      v148 = *(a1 + 192);
      v149 = *(a1 + 176);
      if (v25 == 1 && (v12 <= 5353.22333 || v18 >= 0.479965544))
      {
        return result;
      }
    }

LABEL_27:
    v150 = *(a1 + 128);
    v142 = *(a1 + 56);
    v26 = v11 - v142 + (v14 - *(a1 + 48)) * 604800.0;
    v27 = v12 * v12;
    v138 = *(a1 + 96) + v16 * 0.5 * v26 + 19964980.4 / (v12 * (v12 * v12));
    v140 = v16 * 0.5;
    v28 = *(a1 + 88) + v138 * v26;
    v29 = 10;
    v30 = v28;
    do
    {
      v31 = sin(v30);
      v30 = v28 + v15 * v31;
      --v29;
    }

    while (v29);
    v32 = sqrt(1.0 - v15 * v15);
    v143 = cos(v30);
    v33 = v20 + atan2(v32 * v31, v143 - v15);
    v34 = __sincos_stret(v33 + v33);
    v35 = v27 + v150 * v26;
    if (v25 - 1 < 2)
    {
      result = 0xFFFFFFFFLL;
      if (v35 < 0.0)
      {
        return result;
      }

      v36 = v142;
      if (v35 < 21081100.0)
      {
        return result;
      }
    }

    else
    {
      if (!v25)
      {
        return 0xFFFFFFFFLL;
      }

      v36 = v142;
      if (v25 == 3)
      {
        result = 0xFFFFFFFFLL;
        if (v35 < 0.0 || v35 < 13953050.0)
        {
          return result;
        }
      }
    }

    v133 = v16;
    v37 = v33 + v149 * v34.__cosval + v152 * v34.__sinval;
    v135 = -v15 * v143 + 1.0;
    v131 = v27 + v150 * v26;
    v38 = v35 * v135 + v148 * v34.__cosval;
    v39 = v151 + -0.00007292115;
    if (v25 == 1)
    {
      v39 = v151;
    }

    v134 = v39;
    v40 = v144 + v39 * v26 + v36 * -0.00007292115;
    v41 = __sincos_stret(v37);
    v42 = __sincos_stret(v18 + v145 * v26 + v147 * v34.__cosval + v154 * v34.__sinval);
    v43 = __sincos_stret(v40);
    if ((atomic_load_explicit(&qword_1EE0537B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE0537B8))
    {
      qword_1EE0537B0 = 0x3FEFE0D3B41815A2;
      __cxa_guard_release(&qword_1EE0537B8);
    }

    v44 = v38 + v153 * v34.__sinval;
    sinval = v34.__sinval;
    if ((atomic_load_explicit(&qword_1EE0537C8, memory_order_acquire) & 1) == 0)
    {
      v115 = __cxa_guard_acquire(&qword_1EE0537C8);
      sinval = v34.__sinval;
      if (v115)
      {
        qword_1EE0537C0 = 0xBFB64FD6B8C28102;
        __cxa_guard_release(&qword_1EE0537C8);
        sinval = v34.__sinval;
      }
    }

    v46 = v44 * v41.__cosval;
    v47 = v41.__sinval;
    v48 = v44 * v41.__sinval;
    cosval = 0.0;
    v50 = 0.0;
    if (v25 == 1)
    {
      v51 = sinval;
      v52 = __sincos_stret(v26 * 0.00007292115);
      cosval = v52.__cosval;
      v50 = v52.__sinval;
      v48 = v44 * v41.__sinval;
      v46 = v44 * v41.__cosval;
      sinval = v51;
      v47 = v41.__sinval;
    }

    v53 = -(v48 * v42.__cosval);
    v54 = v42.__cosval * v48;
    v55 = v43.__cosval * (v42.__cosval * v48);
    v56 = v55 + v46 * v43.__sinval;
    if (v25 == 1)
    {
      v57 = v43.__sinval * v53 + v46 * v43.__cosval;
    }

    else
    {
      v57 = 0.0;
    }

    if (v25 == 1)
    {
      v58 = v55 + v46 * v43.__sinval;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = v42.__sinval * v48;
    if (v25 == 1)
    {
      v60 = v42.__sinval * v48;
    }

    else
    {
      v60 = 0.0;
    }

    v136 = *&qword_1EE0537C0;
    v137 = *&qword_1EE0537B0;
    v61 = v60 * *&qword_1EE0537C0 + *&qword_1EE0537B0 * v58;
    if (v25 == 1)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0.0;
    }

    v63 = *(a1 + 41);
    v64 = v63 - 2;
    if ((v63 - 2) < 2)
    {
      *a4 = v46 * v43.__cosval - v54 * v43.__sinval;
      v65 = v42.__sinval * v48;
      goto LABEL_64;
    }

    if (*(a1 + 41))
    {
      if (v63 != 1)
      {
        goto LABEL_65;
      }

      v65 = 0.0;
      if (v25 == 1)
      {
        v65 = v59 * *&qword_1EE0537B0 - *&qword_1EE0537C0 * v56;
      }

      *a4 = v50 * v62 + cosval * v57;
      v56 = cosval * v62 - v50 * v57;
LABEL_64:
      a4[1] = v56;
      a4[2] = v65;
LABEL_65:
      v122 = v62;
      v123 = v50;
      v124 = cosval;
      v129 = v48;
      v130 = v43.__cosval * (v42.__cosval * v48);
      v66 = -v48;
      v67 = v138 + v140 * v26;
      v68 = v67 / v135;
      v69 = v32 * (v67 / v135) / v135;
      v125 = v152 * v34.__cosval - v149 * sinval + v152 * v34.__cosval - v149 * sinval;
      v70 = v69 + v125 * v69;
      v71 = v15 * v131;
      v72 = v153 * v34.__cosval - v148 * sinval + v153 * v34.__cosval - v148 * sinval;
      v73 = v150 * v135 + v15 * v131 * v31 * (v67 / v135) + v72 * v69;
      v141 = sinval;
      v74 = v154 * v34.__cosval - v147 * sinval + v154 * v34.__cosval - v147 * sinval;
      v75 = v145 + v74 * v69;
      v76 = v70 * v66;
      v77 = v70 * v66 + v73 * v41.__cosval;
      v126 = v46 * v70;
      v78 = v46 * v70 + v73 * v47;
      v79 = 0.00007292115;
      if (v25 != 1)
      {
        v79 = 0.0;
      }

      v121 = v79;
      v80 = -(v46 * v43.__sinval);
      v117 = v151 * v80;
      v81 = v75 * v59;
      v82 = v151 * v80 + v77 * v43.__cosval + -(v78 * v42.__cosval) * v43.__sinval + v75 * v59 * v43.__sinval + v43.__cosval * v53 * v151;
      v139 = v46;
      v83 = v43.__cosval * v46;
      v116 = v151 * (v43.__cosval * v46);
      v84 = v42.__cosval * v78;
      v127 = v59;
      v118 = -(v59 * v75);
      if (v25 != 1)
      {
        v82 = 0.0;
      }

      v120 = v82;
      if (v25 == 1)
      {
        v85 = v116 + v77 * v43.__sinval + v42.__cosval * v78 * v43.__cosval + v118 * v43.__cosval + v43.__sinval * v53 * v151;
      }

      else
      {
        v85 = 0.0;
      }

      v132 = v75 * v54;
      v86 = v75 * v54 + v78 * v42.__sinval;
      if (v25 == 1)
      {
        v87 = v75 * v54 + v78 * v42.__sinval;
      }

      else
      {
        v87 = 0.0;
      }

      v88 = v87 * v136 + v137 * v85;
      if (v25 != 1)
      {
        v88 = 0.0;
      }

      v119 = v88;
      v146 = v80;
      v128 = v83;
      if (v64 >= 2)
      {
        v90 = v54;
        v91 = v81;
        if (v63 != 1)
        {
          goto LABEL_84;
        }

        v86 = v86 * v137 - v136 * v85;
        if (v25 != 1)
        {
          v86 = 0.0;
        }

        v92 = -(v123 * v121);
        *a5 = v57 * v92 + cosval * v120 + v123 * v88 + v121 * cosval * v122;
        v89 = -(v121 * cosval * v57) - v123 * v120 + cosval * v88 + v92 * v122;
        v47 = v41.__sinval;
      }

      else
      {
        *a5 = v134 * v80 + v77 * v43.__cosval - v84 * v43.__sinval + v81 * v43.__sinval + -(v54 * v43.__cosval) * v134;
        v89 = v134 * v83 + v77 * v43.__sinval + v84 * v43.__cosval - v81 * v43.__cosval + -(v54 * v43.__sinval) * v134;
        v90 = v54;
        v91 = v81;
      }

      a5[1] = v89;
      a5[2] = v86;
LABEL_84:
      v93 = -v15 * v143 + 1.0;
      v94 = (v135 * v133 - v67 * (v15 * v31 * v68)) / (v93 * v93);
      v95 = v94 / v135 + v31 * (v15 * (-v68 / (v93 * v93))) * v68;
      v96 = v15 * (v150 + v150) * v31 * v68 + v71 * (v68 * (v143 * v68) + v31 * v94);
      v97 = v32 * v95;
      v98 = v97 + v125 * v97 + v69 * ((-v149 * v34.__cosval - v152 * v141) * 4.0) * v69;
      v99 = v96 + v72 * v97 + v69 * ((-v148 * v34.__cosval - v153 * v141) * 4.0) * v69;
      v100 = v69 * (v69 * ((-v147 * v34.__cosval - v154 * v141) * 4.0)) + v74 * v97;
      v101 = v99 * v41.__cosval - v47 * v73 * v70 - (v70 * v126 + v47 * v73 * v70 + v129 * v98);
      v102 = v70 * (v41.__cosval * v73) + v99 * v47 + v70 * v76 + v41.__cosval * v73 * v70 + v139 * v98;
      v103 = 0.0;
      v104 = v43.__sinval * v77;
      v105 = 0.0;
      v106 = 0.0;
      if (v25 == 1)
      {
        v107 = v151;
        v108 = v75 * (v42.__sinval * v78);
        v105 = v43.__sinval * (v75 * v132) + v108 * v43.__sinval + v127 * v100 * v43.__sinval + v43.__cosval * v91 * v107 + v101 * v43.__cosval - v104 * v107 - (v107 * v116 + v104 * v107) - (v42.__cosval * v102 * v43.__sinval - v108 * v43.__sinval + v43.__cosval * v84 * v107) - (v43.__cosval * v84 * v107 - v43.__cosval * v91 * v107 + v107 * -(v90 * v43.__sinval) * v107);
        v109 = v107 * v117 + v43.__cosval * v77 * v107 + v107 * (v43.__cosval * v77) + v101 * v43.__sinval + v42.__cosval * v102 * v43.__cosval - v108 * v43.__cosval - v43.__sinval * v84 * v107 - (v43.__cosval * (v75 * v132) + v108 * v43.__cosval + v127 * v100 * v43.__cosval + v43.__sinval * v118 * v107) - (v107 * (v43.__sinval * v118) + v43.__sinval * v84 * v107 + v107 * v130 * v107);
        v110 = v75 * v118 + v84 * v75 + v90 * v100 + v75 * v84 + v102 * v42.__sinval;
        v103 = v110 * v136 + v137 * v109;
        v106 = v110 * v137 - v136 * v109;
      }

      if (v64 >= 2)
      {
        if (v63 != 1)
        {
          return 0;
        }

        v112 = -(v123 * v121);
        v113 = -(v121 * v124 * v121);
        v114 = v121 * (v121 * v123);
        *a6 = v121 * v124 * v119 - v114 * v122 + v121 * v124 * v119 + v123 * v103 + v57 * v113 + v112 * v120 + v124 * v105 - v121 * v123 * v120;
        a6[1] = v113 * v122 + v112 * v119 + v124 * v103 - v121 * v123 * v119 + v57 * v114 + -(v124 * v121) * v120 + -(v121 * v124 * v120) - v123 * v105;
      }

      else
      {
        v111 = v75 * (v42.__sinval * v78);
        *a6 = v43.__sinval * (v75 * v132) + v111 * v43.__sinval + v127 * v100 * v43.__sinval + v43.__cosval * v91 * v134 + v101 * v43.__cosval - v104 * v134 - (v134 * (v134 * v128) + v104 * v134) - (v42.__cosval * v102 * v43.__sinval - v111 * v43.__sinval + v43.__cosval * v84 * v134) - (v43.__cosval * v84 * v134 - v43.__cosval * v91 * v134 + v134 * -(v90 * v43.__sinval) * v134);
        a6[1] = v134 * (v134 * v146) + v43.__cosval * v77 * v134 + v134 * (v43.__cosval * v77) + v101 * v43.__sinval + v42.__cosval * v102 * v43.__cosval - v111 * v43.__cosval - v43.__sinval * v84 * v134 - (v43.__cosval * (v75 * v132) + v111 * v43.__cosval + v127 * v100 * v43.__cosval + -(v91 * v43.__sinval) * v134) - (v134 * -(v91 * v43.__sinval) + v43.__sinval * v84 * v134 + v134 * v130 * v134);
        v106 = v84 * v75 - v91 * v75 + v90 * v100 + v75 * v84 + v102 * v42.__sinval;
      }

      result = 0;
      a6[2] = v106;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t cnnavigation::BeiDouEphemerides::GNSSSatelliteClockOffset(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, int a5, double *a6, long double a7)
{
  if (*(a1 + 32) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v67[2] = v16;
  v67[3] = v15;
  v67[4] = v14;
  v67[5] = v13;
  v67[6] = v12;
  v67[7] = v11;
  v67[8] = v10;
  v67[9] = v9;
  v67[18] = v7;
  v67[19] = v8;
  if (!*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v23 = cnnavigation::TAITime::ToBeiDouTime(this, a3);
  v25 = *(a1 + 120);
  if (fabs(v25) < 2.22044605e-16 || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v28 = v23;
  v29 = *(a1 + 104);
  v30 = *(a1 + 112);
  v31 = *(a1 + 128);
  result = 0xFFFFFFFFLL;
  if (v30 < 0.0 || v30 >= 1.0 || (*(a1 + 112) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return result;
  }

  v32 = v24;
  v33 = v24 - *(a1 + 72) + (v28 - *(a1 + 64)) * 604800.0;
  v34 = v24 - *(a1 + 56) + (v28 - *(a1 + 48)) * 604800.0;
  v65 = *(a1 + 232);
  v64 = *(a1 + 240);
  v66 = *(a1 + 224) + v65 * v33 + v64 * (v33 * v33);
  v35 = v25 * v25;
  v63 = v29 * 0.5;
  v62 = *(a1 + 96) + v29 * 0.5 * v34 + 19964980.4 / (v25 * (v25 * v25));
  v36 = *(a1 + 88) + v62 * v34;
  v37 = 10;
  v38 = v36;
  do
  {
    v38 = v36 + v30 * sin(v38);
    --v37;
  }

  while (v37);
  v39 = v35 + v31 * v34;
  v40 = *(a1 + 41);
  if ((v40 - 1) < 2)
  {
    result = 0xFFFFFFFFLL;
    if (v39 < 0.0)
    {
      return result;
    }

    v41 = 21081100.0;
LABEL_25:
    if (v39 < v41)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (!*(a1 + 41))
  {
    return 0xFFFFFFFFLL;
  }

  if (v40 == 3)
  {
    result = 0xFFFFFFFFLL;
    if (v39 < 0.0)
    {
      return result;
    }

    v41 = 13953050.0;
    goto LABEL_25;
  }

LABEL_26:
  if ((a7 < 0.0 || ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&a7 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v44 = sqrt(v39);
  v45 = v38 - v36;
  v46 = v44 * -4.44280731e-10 * (v38 - v36);
  if (fabs(a7 + -1561098000.0) <= 0.000000015)
  {
    v49 = 248;
LABEL_41:
    v48 = v66;
    goto LABEL_42;
  }

  if (fabs(a7 + -1575420000.0) <= 0.000000015)
  {
    v49 = 264;
    goto LABEL_41;
  }

  if (fabs(a7 + -1207140000.0) <= 0.000000015)
  {
    v49 = 256;
    goto LABEL_41;
  }

  v47 = 0.0;
  v48 = v66;
  if (fabs(a7 + -1176450000.0) <= 0.000000015)
  {
    v49 = 280;
LABEL_42:
    v47 = *(a1 + v49);
  }

  v50 = v48 + v46;
  if (a5)
  {
    a7 = v65 + (v64 + v64) * v33 + v31 * (v45 * -2.22140365e-10 / v44) - v44 * -4.44280731e-10 * (v62 + v63 * v34) + v44 * -4.44280731e-10 * ((v62 + v63 * v34) / (1.0 - v30 * cos(v38)));
  }

  v51 = v50 - v47;
  if (cnnavigation::GNSSUTCParameters::IsValid(a3) && *(a3 + 1) == 4)
  {
    v67[0] = 0;
    v67[1] = 0;
    *v52.i64 = v32;
    *v54.i64 = CNTimeSpan::SetTimeSpan(v67, 604800 * v28, v52, v53);
    v55 = *(a3 + 1);
    v56 = *(a3 + 2);
    v58 = CNTimeSpan::operator-(v67, a3 + 3, v54, v57);
    *a4 = v51 - (v55 + v56 * (v59 + v58));
    if (a5)
    {
      v60 = *(a3 + 2);
      v61 = 1.0 / (1.0 - v60);
      *a6 = (a7 - v60) * v61;
      a6[1] = 0.0 / v61;
    }
  }

  else
  {
    *a4 = v51;
    if (a5)
    {
      result = 0;
      *a6 = a7;
      a6[1] = 0.0;
      return result;
    }
  }

  return 0;
}

uint64_t cnnavigation::BeiDouEphemerides::GNSSSatelliteClockOffsetRate(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, int a5, uint64_t a6)
{
  if (*(a1 + 32) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = cnnavigation::TAITime::ToBeiDouTime(this, a3);
  v13 = *(a1 + 120);
  if (fabs(v13) < 2.22044605e-16 || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v11;
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 128);
  result = 0xFFFFFFFFLL;
  if (v18 < 0.0 || v18 >= 1.0 || (*(a1 + 112) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return result;
  }

  v41 = v12 - *(a1 + 72) + (v16 - *(a1 + 64)) * 604800.0;
  v20 = v12 - *(a1 + 56) + (v16 - *(a1 + 48)) * 604800.0;
  v21 = v13 * v13;
  v22 = *(a1 + 96) + v17 * 0.5 * v20 + 19964980.4 / (v13 * (v13 * v13));
  v23 = *(a1 + 88) + v22 * v20;
  v24 = 10;
  v25 = v23;
  do
  {
    v26 = sin(v25);
    v25 = v23 + v18 * v26;
    --v24;
  }

  while (v24);
  v39 = *(a1 + 240);
  v40 = *(a1 + 232);
  v27 = cos(v23 + v18 * v26);
  v28 = v21 + v19 * v20;
  v29 = *(a1 + 41);
  if ((v29 - 1) < 2)
  {
    result = 0xFFFFFFFFLL;
    if (v28 < 0.0)
    {
      return result;
    }

    v30 = 21081100.0;
LABEL_25:
    if (v28 < v30)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (!*(a1 + 41))
  {
    return 0xFFFFFFFFLL;
  }

  if (v29 == 3)
  {
    result = 0xFFFFFFFFLL;
    if (v28 < 0.0)
    {
      return result;
    }

    v30 = 13953050.0;
    goto LABEL_25;
  }

LABEL_26:
  v31 = v22 + v17 * 0.5 * v20;
  v32 = 1.0 - v18 * v27;
  v33 = sqrt(v28);
  v34 = v31 / v32 - v31;
  v35 = (v25 - v23) * -2.22140365e-10;
  if (a5)
  {
    v18 = v35 / v33 * 0.0 - v33 * -4.44280731e-10 * v17 + v33 * -4.44280731e-10 * ((v17 + (v23 - v25) * (v31 / v32) * (v31 / v32)) / v32) + 1.0 / v33 * (v34 * -2.22140365e-10) * v19 + v19 * (1.0 / v33 * -2.22140365e-10) * (v31 / v32) - v19 * (1.0 / v33 * -2.22140365e-10) * v31 + v39 + v39;
  }

  v36 = v19 * (1.0 / v33 * v35) + v33 * -4.44280731e-10 * v34 + v40 + (v39 + v39) * v41;
  if (cnnavigation::GNSSUTCParameters::IsValid(a3) && *(a3 + 1) == 4)
  {
    v37 = *(a3 + 2);
    v38 = 1.0 / (1.0 - v37);
    *a4 = (v36 - v37) * v38;
    if (a5)
    {
      v18 = v18 * (v38 * v38);
LABEL_33:
      result = 0;
      *a6 = v18;
      *(a6 + 8) = 0;
      return result;
    }
  }

  else
  {
    *a4 = v36;
    if (a5)
    {
      goto LABEL_33;
    }
  }

  return 0;
}

uint64_t sub_1D0C61EAC(uint64_t a1)
{
  *a1 = &unk_1F4CD5C60;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = &unk_1F4CD5F70;
  return a1;
}

void sub_1D0C61F18(uint64_t a1)
{
  *a1 = &unk_1F4CD5C60;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = &unk_1F4CD5F70;

  JUMPOUT(0x1D387ECA0);
}

uint64_t cnnavigation::NavicTime::NavicTime(uint64_t this, int a2, double a3)
{
  *this = a2;
  *(this + 8) = a3;
  return this;
}

{
  *this = a2;
  *(this + 8) = a3;
  return this;
}

double cnnavigation::NavicTime::NavicTime(cnnavigation::NavicTime *this, double a2)
{
  v2 = vcvtmd_s64_f64(a2 / 604800.0);
  *this = v2;
  result = a2 + v2 * -604800.0;
  *(this + 1) = result;
  return result;
}

{
  v2 = vcvtmd_s64_f64(a2 / 604800.0);
  *this = v2;
  result = a2 + v2 * -604800.0;
  *(this + 1) = result;
  return result;
}

double cnnavigation::NavicTime::NavicTime(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = *a2 / 604800;
  *a1 = v3;
  result = a2[1] + (*&v2 - 604800 * v3);
  *(a1 + 8) = result;
  if (result < 0.0)
  {
    *a1 = v3 - 1;
    result = result + 604800.0;
    *(a1 + 8) = result;
  }

  return result;
}

{
  v2 = *a2;
  v3 = *a2 / 604800;
  *a1 = v3;
  result = a2[1] + (*&v2 - 604800 * v3);
  *(a1 + 8) = result;
  if (result < 0.0)
  {
    *a1 = v3 - 1;
    result = result + 604800.0;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t cnnavigation::NavicTime::operator CNTime(int *a1, int8x16_t a2, int8x16_t a3)
{
  a2.i64[0] = *(a1 + 1);
  v3 = vcvtmd_s64_f64(*a2.i64) + 604800 * *a1;
  *a3.i64 = floor(*a2.i64);
  *a2.i64 = *a2.i64 - *a3.i64;
  v5[0] = 0;
  v5[1] = 0;
  CNTimeSpan::SetTimeSpan(v5, v3, a2, a3);
  return v5[0];
}

uint64_t cnnavigation::NavicTimeToJulianTime(int *a1, int a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v7 = cnnavigation::NavicTime::operator CNTime(a1, a4, a5);
  LODWORD(v11) = v7 / 604800;
  v9 = v8 + (v7 - 604800 * SLODWORD(v11));
  v12 = v9;
  if (v9 < 0.0)
  {
    LODWORD(v11) = v7 / 604800 - 1;
    v12 = v9 + 604800.0;
  }

  return cnnavigation::GalileoTimeToJulianTime(&v11, a2, a3);
}

uint64_t cnnavigation::JulianTimeToNavicTime(uint64_t a1, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0.0;
  cnnavigation::JulianTimeToGalileoTime(a1, a2, &v11);
  v5 = v4;
  *v6.i64 = floor(v12);
  *v7.i64 = v12 - *v6.i64;
  v13 = 0;
  v14 = 0.0;
  CNTimeSpan::SetTimeSpan(&v13, vcvtmd_s64_f64(v12) + 604800 * v11, v7, v6);
  v8 = v14 + (v13 - 604800 * (v13 / 604800));
  v9 = v8 < 0.0;
  if (v8 < 0.0)
  {
    v8 = v8 + 604800.0;
  }

  *a3 = v13 / 604800 - v9;
  *(a3 + 8) = v8;
  return v5;
}

uint64_t cnnavigation::ENUToECEF(__int128 *a1, int a2, int a3, uint64_t a4, int a5, float64x2_t *a6)
{
  v8 = 0;
  v11 = 0x300000003;
  v9 = &unk_1F4CD5DD0;
  v10 = xmmword_1D0E76C10;
  v12 = &v13;
  v7 = &unk_1F4CD5D90;
  return cnnavigation::ENUToECEF(a1, a2, a3, a4, a5, a6, &v7);
}

void cnnavigation::ENUToECEFJacobian::~ENUToECEFJacobian(cnnavigation::ENUToECEFJacobian *this)
{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t cnnavigation::GeodeticLatLonIncrementsToNorthEastMetersPerRadian(cnnavigation *this, double a2, double a3, double *a4, double *a5)
{
  v10 = fabs(a2);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v10 > 1.57079633)
  {
    if (fabs(v10 + -1.57079633) < 2.22044605e-16)
    {
      result = 0;
      *this = a3 + 6399593.63;
      *a4 = 0.0;
      return result;
    }

    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v29 = 5;
      v28 = 1;
      v24 = a2 * 57.2957795;
      cnprint::CNPrinter::Print(&v29, &v28, "Invalid latitude,deg,%.9lf", v14, v15, v16, v17, v18, SLOBYTE(v24));
    }
  }

  else
  {
    if (a3 >= -721.0 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v11 = __sincos_stret(a2);
      result = 0;
      v13 = 1.0 / sqrt(v11.__sinval * v11.__sinval * -0.00669437999 + 1.0);
      *a4 = v11.__cosval * (v13 * 6378137.0 + a3);
      *this = v13 * v13 * (v13 * 6378137.0 * 0.99330562) + a3;
      return result;
    }

    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v27 = 5;
      v26 = 1;
      v25 = a2 * 57.2957795;
      cnprint::CNPrinter::Print(&v27, &v26, "Invalid height above ellipsoid,deg,%.9lf", v19, v20, v21, v22, v23, SLOBYTE(v25));
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::SatEl(cnnavigation *this, const double *a2, const double *a3, double *a4, double *a5)
{
  v5 = *a3 - *this;
  v6 = a3[1] - *(this + 1);
  v7 = a3[2] - *(this + 2);
  v8 = sqrt(v6 * v6 + v5 * v5 + v7 * v7);
  if (v8 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (v6 * a2[1] + *a2 * v5 + a2[2] * v7) / v8;
  if (1.0 - fabs(v10) <= 0.00000001)
  {
    v13 = v10 < 0.0;
    if (v10 <= 0.0)
    {
      v11 = -1.57079633;
      if (!v13)
      {
        v11 = 0.0;
      }
    }

    else
    {
      v11 = 1.57079633;
    }
  }

  else
  {
    v11 = 1.57079633 - acos(v10);
  }

  result = 0;
  *a4 = v11;
  return result;
}

uint64_t cnnavigation::UpUnitVector(float64x2_t *a1, int a2, double *a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = cnnavigation::ECEFToLLA(a1, a2, v11, 0, v10);
  if (!v4)
  {
    v5 = v11[1];
    v6 = __sincos_stret(v11[0]);
    v7 = __sincos_stret(v5);
    *a3 = v6.__cosval * v7.__cosval;
    a3[1] = v6.__cosval * v7.__sinval;
    a3[2] = v6.__sinval;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL cnnavigation::UTMCoordinate::IsValid(cnnavigation::UTMCoordinate *this)
{
  if ((*this & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v1 = 0;
  if (fabs(*this) <= 90.0 && (*(this + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v3 = *(this + 16);
    if ((*(this + 5) - 1) > 0x3B)
    {
      if (*(this + 16) - 65 > 0x19 || ((1 << (v3 - 65)) & 0x3000003) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if ((v3 - 89) < 0xEAu)
    {
      return 0;
    }

    v1 = 0;
    v4 = *(this + 16);
    if (v4 != 73 && v4 != 79)
    {
LABEL_15:
      if ((*(this + 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 4) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(this + 5) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        return (*(this + 6) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      return 0;
    }
  }

  return v1;
}

void cnnavigation::UTMCoordinate::GridZoneDesignation(cnnavigation::UTMCoordinate *this@<X0>, std::string *a2@<X8>)
{
  if (cnnavigation::UTMCoordinate::IsValid(this))
  {
    v4 = *(this + 5);
    v5 = *(this + 16);
    if ((v4 - 61) < 0xFFFFFFC4 || (v5 - 89) < 0xEAu || *(this + 16) == 73 || *(this + 16) == 79)
    {
      *(&a2->__r_.__value_.__s + 23) = 1;
      a2->__r_.__value_.__s.__data_[0] = v5;
      a2->__r_.__value_.__s.__data_[1] = 0;
    }

    else
    {
      std::to_string(&v6, v4);
      std::string::push_back(&v6, *(this + 16));
      *a2 = v6;
    }
  }

  else
  {

    sub_1D0B751F4(a2, &unk_1D0ED80C5);
  }
}

void sub_1D0C62A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnnavigation::LatLonToUTM(cnnavigation *this, double a2, double a3, cnnavigation::UTMCoordinate *a4)
{
  v5 = vdupq_n_s64(0x7FF8000000000000uLL);
  *this = v5;
  *(this + 16) = 45;
  *(this + 17) = 0;
  *(this + 5) = 0;
  *(this + 24) = v5;
  *(this + 40) = v5;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (fabs(a2) <= 90.0 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v8 = a3 + floor((a3 + 180.0) * 0.00277777778) * -360.0;
    *this = a2;
    *(this + 1) = v8;
    if (a2 > 84.0 || a2 < -80.0)
    {
      if (v8 >= 0.0)
      {
        v15 = 90;
      }

      else
      {
        v15 = 89;
      }

      if (v8 >= 0.0)
      {
        v16 = 66;
      }

      else
      {
        v16 = 65;
      }

      if (a2 < 0.0)
      {
        v15 = v16;
      }

      *(this + 16) = v15;
      v17 = a2 * 0.0174532925;
      v18 = sin(fabs(v17));
      v19 = sqrt((1.0 - v18) / (v18 + 1.0) * pow((v18 * 0.0818191908 + 1.0) / (v18 * -0.0818191908 + 1.0), 0.0818191908)) * 12679.7364 / 1.00335656;
      v20 = __sincos_stret(v8 * 0.0174532925);
      *(this + 3) = v20.__sinval * v19 * 1000.0;
      *(this + 4) = 0x413E848000000000;
      v21 = 0.0;
      if (v17 < 0.0)
      {
        v21 = -1.0;
      }

      if (v17 > 0.0)
      {
        v21 = 1.0;
      }

      *(this + 5) = v20.__cosval * -(v19 * v21) * 1000.0;
      v22 = 2000000.0;
    }

    else
    {
      v9 = vcvtmd_s64_f64((v8 + 186.0) * 0.166666667);
      if (v9 >= 60)
      {
        v9 = 60;
      }

      if (v9 <= 1)
      {
        v9 = 1;
      }

      v10 = (6 * v9 - 183);
      if ((v9 - 31) <= 6)
      {
        v12 = a2 >= 56.0 && (v9 - 31) < 2;
        v13 = 3.0;
        if (v8 >= 3.0)
        {
          v14 = 32;
        }

        else
        {
          v14 = 31;
        }

        if (v8 >= 3.0)
        {
          v13 = 9.0;
        }

        if (a2 < 64.0 && v12)
        {
          v10 = v13;
          v9 = v14;
        }

        if (a2 >= 72.0)
        {
          if (v8 >= 9.0)
          {
            if (v8 >= 21.0)
            {
              if (v8 >= 33.0)
              {
                v10 = 39.0;
              }

              else
              {
                v10 = 27.0;
              }

              if (v8 >= 33.0)
              {
                v9 = 37;
              }

              else
              {
                v9 = 35;
              }
            }

            else
            {
              v9 = 33;
              v10 = 15.0;
            }
          }

          else
          {
            v9 = 31;
            v10 = 3.0;
          }
        }
      }

      *(this + 5) = v9;
      v23 = vcvtmd_s64_f64((a2 + 88.0) * 0.125);
      if (v23 >= 20)
      {
        v23 = 20;
      }

      if (v23 <= 1)
      {
        v23 = 1;
      }

      *(this + 16) = aCdefghjklmnpqr[v23 - 1];
      v24 = __sincos_stret(a2 * 0.0174532925);
      v32 = 6378.137 / sqrt(v24.__sinval * -0.00669437999 * v24.__sinval + 1.0);
      v25 = v24.__sinval / v24.__cosval * (v24.__sinval / v24.__cosval);
      v26 = v24.__cosval * (v24.__cosval * 0.00673949674);
      v27 = v24.__cosval * (v8 * 0.0174532925 - v10 * 0.0174532925);
      v28 = v27 * (v27 * v27);
      v31 = sin(a2 * 0.0174532925 + a2 * 0.0174532925);
      v29 = sin(a2 * 0.0174532925 * 4.0);
      v30 = sin(a2 * 0.0174532925 * 6.0);
      *(this + 3) = v32 * 0.9996 * (v27 + (v26 + 1.0 - v25) * 0.166666667 * v28 + (v25 * -18.0 + 5.0 + v25 * v25 + v26 * 72.0 + -0.390890811) * 0.00833333333 * (v27 * v27 * v28)) * 1000.0;
      *(this + 4) = 0x411E848000000000;
      *(this + 5) = ((v31 * -0.00251460706 + a2 * 0.0174532925 * 0.998324298 + v29 * 0.00000263904659 + v30 * -0.00000000341804609) * 6378.137 + v24.__sinval / v24.__cosval * v32 * ((5.0 - v25 + v26 * 9.0 + v26 * v26 * 4.0) * 0.0416666667 * (v27 * v27 * (v27 * v27)) + v27 * v27 * 0.5 + (v25 * -58.0 + 61.0 + v25 * v25 + v26 * 600.0 + -2.22403392) * 0.00138888889 * (v28 * v28))) * 0.9996 * 1000.0;
      v22 = 10000000.0;
      if (a2 >= 0.0)
      {
        v22 = 0.0;
      }
    }

    result = 0;
    *(this + 6) = v22;
  }

  return result;
}

BOOL cnnavigation::MGRSCoordinate::IsValid(cnnavigation::MGRSCoordinate *this)
{
  if ((*this & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v1 = 0;
  if (fabs(*this) <= 90.0 && (*(this + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v3 = *(this + 16);
    if ((*(this + 5) - 1) <= 0x3B)
    {
      if ((v3 - 89) < 0xEAu)
      {
        return 0;
      }

      v1 = 0;
      v4 = *(this + 16);
      if (v4 == 73)
      {
        return v1;
      }

      if (v4 == 79)
      {
        return v1;
      }

      v1 = 0;
      v5 = *(this + 24);
      if (v5 == 73 || v5 == 79)
      {
        return v1;
      }

      v6 = *(this + 25) - 73;
      if (v6 < 0x12 && ((0x3C041u >> v6) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    if (*(this + 16) - 65 > 0x19 || ((1 << (v3 - 65)) & 0x3000003) == 0)
    {
      return 0;
    }

    v8 = *(this + 24) - 68;
    if (v8 < 0x14 && ((0xC0E23u >> v8) & 1) != 0)
    {
      return 0;
    }

    v1 = 0;
    v9 = *(this + 25);
    if (v9 != 73 && v9 != 79)
    {
LABEL_23:
      v10 = *(this + 4);
      if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v11 = *(this + 5);
        if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v1 = 0;
          if (v10 >= 0.0 && v10 <= 100000.0)
          {
            return v11 <= 100000.0 && v11 >= 0.0;
          }

          return v1;
        }
      }

      return 0;
    }
  }

  return v1;
}

void cnnavigation::MGRSCoordinate::GridZoneDesignation(cnnavigation::MGRSCoordinate *this@<X0>, std::string *a2@<X8>)
{
  if (cnnavigation::MGRSCoordinate::IsValid(this))
  {
    v4 = *(this + 5);
    v5 = *(this + 16);
    if ((v4 - 61) < 0xFFFFFFC4 || (v5 - 89) < 0xEAu || *(this + 16) == 73 || *(this + 16) == 79)
    {
      *(&a2->__r_.__value_.__s + 23) = 1;
      a2->__r_.__value_.__s.__data_[0] = v5;
      a2->__r_.__value_.__s.__data_[1] = 0;
    }

    else
    {
      std::to_string(&v6, v4);
      std::string::push_back(&v6, *(this + 16));
      *a2 = v6;
    }
  }

  else
  {

    sub_1D0B751F4(a2, &unk_1D0ED80C5);
  }
}

void sub_1D0C631F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cnnavigation::MGRSCoordinate::OneHundredThousandMeterSquareDesignation(cnnavigation::MGRSCoordinate *this@<X0>, std::string *a2@<X8>)
{
  if (cnnavigation::MGRSCoordinate::IsValid(this))
  {
    v4 = *(this + 24);
    *(&v5.__r_.__value_.__s + 23) = 1;
    LOWORD(v5.__r_.__value_.__l.__data_) = v4;
    std::string::push_back(&v5, *(this + 25));
    *a2 = v5;
  }

  else
  {

    sub_1D0B751F4(a2, &unk_1D0ED80C5);
  }
}

void sub_1D0C632A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnnavigation::LatLonToMGRS(cnnavigation *this, double a2, double a3, cnnavigation::MGRSCoordinate *a4)
{
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  *this = v6;
  *(this + 16) = 45;
  *(this + 17) = 0;
  *(this + 5) = 0;
  *(this + 12) = 11565;
  *(this + 26) = 0;
  *(this + 15) = 0;
  *(this + 2) = v6;
  v30 = v6;
  v31 = 45;
  v32 = 0;
  v33 = NAN;
  v34 = NAN;
  if (cnnavigation::LatLonToUTM(&v30, a2, a3, a4))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *v30.i64;
  *this = v30;
  *(this + 16) = v31;
  v9 = v32;
  *(this + 5) = v32;
  v10 = v33;
  v11 = floor(v33 * 0.00001);
  v12 = vcvtmd_s64_f64(v33 * 0.00001);
  if (a2 > 84.0 || a2 < -80.0)
  {
    v22 = v12 % 18;
    v23 = v12 % 18 + 18;
    if (v22 < 0)
    {
      v22 = v23;
    }

    v24 = v22 & ~(v22 >> 31);
    if (v24 >= 17)
    {
      v24 = 17;
    }

    *(this + 24) = aAbcfghjklpqrst[v24];
    v25 = v34;
    v26 = v34 * 0.00001;
    v27 = vcvtmd_s64_f64(v34 * 0.00001);
    if (v8 <= 0.0)
    {
      v28 = 12;
    }

    else
    {
      v28 = 7;
    }

    v29 = (v28 + v27) & ~((v28 + v27) >> 31);
    if (v29 >= 23)
    {
      v29 = 23;
    }

    *(this + 25) = aAbcdefghjklmnp_0[v29];
    v20 = v10 + v11 * -100000.0;
    v21 = v25 + floor(v26) * -100000.0;
  }

  else
  {
    if ((v9 % 3) > 2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v12 <= -4)
    {
      v12 = -4;
    }

    v13 = v12 + 4;
    if (v13 >= 7)
    {
      v13 = 7;
    }

    v14 = v34;
    v15 = v34 * 0.00001;
    v16 = vcvtmd_s64_f64(v34 * 0.00001);
    *(this + 24) = off_1E83D7D80[v9 % 3][v13];
    if ((v9 & 0x80000001) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 5;
    }

    v18 = (v17 + v16) % 20 + ((v17 + v16) % 20 < 0 ? 0x14 : 0);
    v19 = v18 & ~(v18 >> 31);
    if (v19 >= 19)
    {
      v19 = 19;
    }

    *(this + 25) = aAbcdefghjklmnp[v19];
    v20 = v10 + v11 * -100000.0;
    v21 = v14 + floor(v15) * -100000.0;
  }

  result = 0;
  if (v20 < 0.0)
  {
    v20 = 0.0;
  }

  if (v20 > 100000.0)
  {
    v20 = 100000.0;
  }

  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  if (v21 > 100000.0)
  {
    v21 = 100000.0;
  }

  *(this + 4) = v20;
  *(this + 5) = v21;
  return result;
}

uint64_t cnnavigation::GPSFindSat(int a1, uint64_t a2, double *a3, double *a4, double *a5, double a6)
{
  if (!*(a2 + 12))
  {
    return 1;
  }

  v6 = *(a2 + 88);
  if (fabs(v6) < 2.22044605e-16 || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  result = 0xFFFFFFFFLL;
  if (v11 >= 0.0 && v11 < 1.0 && (*(a2 + 80) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*(a2 + 96) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v91 = *(a2 + 96);
    v15 = *(a2 + 24);
    v80 = *(a2 + 112);
    v16 = *(a2 + 120);
    v81 = *(a2 + 128);
    v82 = *(a2 + 104);
    v17 = *(a2 + 144);
    v84 = *(a2 + 136);
    v87 = *(a2 + 152);
    v88 = *(a2 + 168);
    v89 = *(a2 + 160);
    v86 = *(a2 + 176);
    v90 = *(a2 + 184);
    v18 = a6 - v15 + (a1 - *(a2 + 16)) * 604800.0;
    v19 = v6 * v6;
    v77 = v10 * 0.5;
    v74 = *(a2 + 72);
    v75 = *(a2 + 64) + v10 * 0.5 * v18 + 19964981.8 / (v6 * (v6 * v6));
    v20 = *(a2 + 56) + v75 * v18;
    v21 = 10;
    v22 = v20;
    do
    {
      v23 = sin(v22);
      v22 = v20 + v11 * v23;
      --v21;
    }

    while (v21);
    v79 = sqrt(1.0 - v11 * v11);
    v83 = cos(v22);
    v24 = v16 + atan2(v79 * v23, v83 - v11);
    v25 = __sincos_stret(v24 + v24);
    v26 = v19 + v91 * v18;
    result = 0xFFFFFFFFLL;
    if (v26 >= 0.0 && v26 >= 13279855.0)
    {
      v73 = v17;
      v72 = -v11 * v83 + 1.0;
      v27 = v26 * v72 + v89 * v25.__cosval + v88 * v25.__sinval;
      v71 = v81 + -0.0000729211515;
      v28 = __sincos_stret(v24 + v17 * v25.__cosval + v87 * v25.__sinval);
      v29 = v27 * v28.__cosval;
      v30 = v27 * v28.__sinval;
      v31 = __sincos_stret(v82 + (v81 + -0.0000729211515) * v18 + v15 * -0.0000729211515);
      v32 = __sincos_stret(v80 + v84 * v18 + v86 * v25.__cosval + v90 * v25.__sinval);
      v33 = -(v27 * v28.__sinval * v32.__cosval);
      v34 = v31.__sinval * v33;
      v35 = v32.__cosval * (v27 * v28.__sinval);
      *a3 = v31.__sinval * v33 + v27 * v28.__cosval * v31.__cosval;
      a3[1] = v31.__cosval * v35 + v27 * v28.__cosval * v31.__sinval;
      v36 = v32.__sinval * (v27 * v28.__sinval);
      a3[2] = v36;
      if (!a4)
      {
        return 0;
      }

      v37 = -((v26 * v72 + v89 * v25.__cosval + v88 * v25.__sinval) * v28.__sinval);
      v38 = v75 + v77 * v18;
      v39 = v38 / v72;
      v40 = v79 * (v38 / v72) / v72;
      v41 = v87 * v25.__cosval - v73 * v25.__sinval + v87 * v25.__cosval - v73 * v25.__sinval;
      v42 = v40 + v41 * v40;
      v43 = v88 * v25.__cosval - v89 * v25.__sinval + v88 * v25.__cosval - v89 * v25.__sinval;
      v44 = v91 * v72 + v11 * v26 * v23 * (v38 / v72) + v43 * v40;
      v45 = v90 * v25.__cosval - v86 * v25.__sinval + v90 * v25.__cosval - v86 * v25.__sinval;
      v46 = v84 + v45 * v40;
      v76 = v37 * v42;
      v47 = v37 * v42 + v44 * v28.__cosval;
      v48 = v29 * v42;
      v49 = v29 * v42 + v44 * v28.__sinval;
      v85 = v71 * -(v29 * v31.__sinval);
      v78 = -(v49 * v32.__cosval);
      v50 = v85 + v47 * v31.__cosval + v78 * v31.__sinval + v46 * v36 * v31.__sinval + v31.__cosval * v33 * v71;
      v51 = v71 * (v31.__cosval * v29);
      v52 = v32.__cosval * v49;
      v53 = v46 * (v32.__sinval * v37);
      *a4 = v50;
      a4[1] = v51 + v47 * v31.__sinval + v32.__cosval * v49 * v31.__cosval + v53 * v31.__cosval + v34 * v71;
      a4[2] = v46 * v35 + v49 * v32.__sinval;
      if (a5)
      {
        result = 0;
        v70 = v46 * v36;
        v54 = -v11 * v83 + 1.0;
        v55 = (v72 * v74 - v38 * (v11 * v23 * v39)) / (v54 * v54);
        v56 = v11 * (v91 + v91) * v23 * v39 + v11 * v26 * (v39 * (v83 * v39) + v23 * v55);
        v57 = v79 * (v55 / v72 + v23 * (v11 * (-v39 / (v54 * v54))) * v39);
        v58 = v57 + v41 * v57 + v40 * ((-v73 * v25.__cosval - v87 * v25.__sinval) * 4.0) * v40;
        v59 = v56 + v43 * v57 + v40 * ((-v89 * v25.__cosval - v88 * v25.__sinval) * 4.0) * v40;
        v60 = v40 * (v40 * ((-v86 * v25.__cosval - v90 * v25.__sinval) * 4.0)) + v45 * v57;
        v61 = v42 * -(v44 * v28.__sinval) + v59 * v28.__cosval;
        v62 = v28.__cosval * v44;
        v63 = v42 * (v28.__cosval * v44) + v59 * v28.__sinval;
        v64 = -(v48 + v44 * v28.__sinval);
        v65 = v61 - (v42 * v48 + v28.__sinval * v44 * v42 + v30 * v58);
        v66 = v63 + v42 * v76 + v62 * v42 + v29 * v58;
        v67 = v46 * (v32.__sinval * v64);
        v68 = v46 * (v32.__sinval * v49);
        v69 = v36 * v60;
        *a5 = v31.__sinval * (v46 * (v46 * v35)) + v68 * v31.__sinval + v69 * v31.__sinval + v31.__cosval * v70 * v71 + v71 * -(v47 * v31.__sinval) + v65 * v31.__cosval - (v71 * v51 + v31.__sinval * v47 * v71) - (v31.__sinval * v67 + v32.__cosval * v66 * v31.__sinval + v31.__cosval * v52 * v71) - (v71 * (v31.__cosval * v53) + v31.__cosval * v52 * v71 + v71 * v34 * v71);
        a5[1] = v71 * v85 + v31.__cosval * v47 * v71 + v71 * (v31.__cosval * v47) + v65 * v31.__sinval + v31.__cosval * v67 + v32.__cosval * v66 * v31.__cosval + v31.__sinval * v78 * v71 - (v31.__cosval * (v46 * (v46 * v35)) + v68 * v31.__cosval + v69 * v31.__cosval + v31.__sinval * v53 * v71) - (v71 * (v31.__sinval * v53) + v31.__sinval * v52 * v71 + v71 * (v31.__cosval * (v32.__cosval * v30)) * v71);
        a5[2] = v46 * v53 + v52 * v46 + v35 * v60 + v46 * v52 + v66 * v32.__sinval;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

{
  if (!*(a2 + 32))
  {
    return 1;
  }

  v6 = *(a2 + 64);
  if (fabs(v6) < 2.22044605e-16 || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 56);
  if (v9 < 0.0 || v9 >= 1.0 || (*(a2 + 56) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 40);
  v16 = *(a2 + 88);
  v70 = *(a2 + 96);
  v71 = *(a2 + 72);
  v67 = *(a2 + 80);
  v17 = a6 - v15 + (a1 - *(a2 + 36)) * 604800.0;
  v73 = v6 * v6;
  v66 = 19964981.8 / (v6 * (v6 * v6)) + 0.0;
  v18 = *(a2 + 48) + v66 * v17;
  v19 = 10;
  v20 = v18;
  do
  {
    v21 = sin(v20);
    v20 = v18 + v9 * v21;
    --v19;
  }

  while (v19);
  v22 = cos(v20);
  v72 = sqrt(1.0 - v9 * v9);
  v23 = v16 + atan2(v72 * v21, v22 - v9);
  v24 = __sincos_stret(v23 + v23);
  v25 = v23 + v24.__cosval * 0.0 + v24.__sinval * 0.0;
  v69 = 1.0 - v9 * v22;
  v26 = v73 * v69 + v24.__cosval * 0.0 + v24.__sinval * 0.0;
  v27 = v70 + -0.0000729211515;
  v28 = __sincos_stret(v25);
  v29 = v26 * v28.__cosval;
  v30 = __sincos_stret(v71 + (v70 + -0.0000729211515) * v17 + v15 * -0.0000729211515);
  v31 = __sincos_stret(v67 + 0.942477796);
  v32 = -(v26 * v28.__sinval * v31.__cosval);
  v33 = v30.__sinval * v32;
  v34 = v31.__cosval * (v26 * v28.__sinval);
  *a3 = v30.__sinval * v32 + v26 * v28.__cosval * v30.__cosval;
  a3[1] = v30.__cosval * v34 + v26 * v28.__cosval * v30.__sinval;
  v35 = v31.__sinval * (v26 * v28.__sinval);
  a3[2] = v35;
  if (!a4)
  {
    return 0;
  }

  v36 = -(v26 * v28.__sinval);
  v37 = v66 / v69;
  v38 = v72 * (v66 / v69) / v69;
  v39 = v24.__cosval * 0.0 + v24.__sinval * -0.0 + v24.__cosval * 0.0 + v24.__sinval * -0.0;
  v40 = v38 + v39 * v38;
  v41 = v9 * v73 * v21 * (v66 / v69) + v39 * v38;
  v42 = v39 * v38 + 0.0;
  v43 = v36 * v40;
  v44 = v36 * v40 + v41 * v28.__cosval;
  v45 = v29 * v40;
  v46 = v29 * v40 + v41 * v28.__sinval;
  v47 = v42 * v35;
  v48 = v27 * -(v29 * v30.__sinval) + v44 * v30.__cosval + -(v46 * v31.__cosval) * v30.__sinval + v42 * v35 * v30.__sinval + v30.__cosval * v32 * v27;
  v49 = v27 * (v30.__cosval * v29);
  v50 = v31.__cosval * v46;
  v51 = v42 * (v31.__sinval * v36);
  *a4 = v48;
  a4[1] = v49 + v44 * v30.__sinval + v31.__cosval * v46 * v30.__cosval + v51 * v30.__cosval + v33 * v27;
  a4[2] = v42 * v34 + v46 * v31.__sinval;
  if (!a5)
  {
    return 0;
  }

  result = 0;
  v65 = -(v46 * v31.__cosval);
  v68 = v27 * -(v29 * v30.__sinval);
  v52 = v37 * (v21 * (v9 * (-v66 / (v69 * v69))));
  v53 = v72 * (v52 / v69 + v21 * (v9 * (-v37 / (v69 * v69))) * v37);
  v54 = v9 * v73 * (v37 * (v22 * v37) + v21 * v52);
  v55 = v38 * ((v24.__sinval * -0.0 + v24.__cosval * -0.0) * 4.0);
  v56 = v53 + v39 * v53 + v55 * v38;
  v57 = v54 + v39 * v53 + v55 * v38;
  v58 = v38 * v55 + v39 * v53;
  v59 = v40 * -(v41 * v28.__sinval) + v57 * v28.__cosval - (v40 * v45 + v28.__sinval * v41 * v40 + v26 * v28.__sinval * v56);
  v60 = v40 * (v28.__cosval * v41) + v57 * v28.__sinval + v40 * v43 + v28.__cosval * v41 * v40 + v26 * v28.__cosval * v56;
  v61 = v42 * (v31.__sinval * -(v45 + v41 * v28.__sinval));
  v62 = v42 * (v31.__sinval * v46);
  v63 = v42 * (v42 * v34);
  v64 = v35 * v58;
  *a5 = v30.__sinval * v63 + v62 * v30.__sinval + v64 * v30.__sinval + v30.__cosval * v47 * v27 + v27 * -(v44 * v30.__sinval) + v59 * v30.__cosval - (v27 * v49 + v30.__sinval * v44 * v27) - (v30.__sinval * v61 + v31.__cosval * v60 * v30.__sinval + v30.__cosval * v50 * v27) - (v27 * (v30.__cosval * v51) + v30.__cosval * v50 * v27 + v27 * v33 * v27);
  a5[1] = v27 * v68 + v30.__cosval * v44 * v27 + v27 * (v30.__cosval * v44) + v59 * v30.__sinval + v30.__cosval * v61 + v31.__cosval * v60 * v30.__cosval + v30.__sinval * v65 * v27 - (v30.__cosval * v63 + v62 * v30.__cosval + v64 * v30.__cosval + v30.__sinval * v51 * v27) - (v27 * (v30.__sinval * v51) + v30.__sinval * v50 * v27 + v27 * (v30.__cosval * v34) * v27);
  a5[2] = v42 * v51 + v50 * v42 + v34 * v58 + v42 * v50 + v60 * v31.__sinval;
  return result;
}

uint64_t cnnavigation::GLONASSTimeOfFlight(int a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int a7, double *a8, double a9, double a10, double a11)
{
  v88 = *MEMORY[0x1E69E9840];
  v13 = a2[1].f64[0];
  v64 = *a2;
  v86 = vaddq_f64(*a2, xmmword_1D0E76600);
  v87 = v13 + 0.18;
  if (a1 < 1)
  {
    goto LABEL_5;
  }

  result = 0xFFFFFFFFLL;
  if (a9 >= 0.0 && a9 < 86401.0)
  {
    v22 = 0.0;
    v23 = (a9 + 0.0) / 86400.0 + 0.375;
    v69 = a1 + 2450082 + vcvtmd_s64_f64(v23);
    v70 = v23 - floor(v23);
    v67 = 0;
    v68 = 0.0;
    if (cnnavigation::JulianTimeToGPSTime(&v69, a10 + 10, &v67))
    {
LABEL_5:
      result = 0xFFFFFFFFLL;
      goto LABEL_6;
    }

    v25 = v67;
    v62 = v68;
    *a6 = 0.0;
    v26 = 10;
    while (1)
    {
      result = cnnavigation::GLONASSFindSat(a1, a3, &v75, 0, 0, a9 - v22, a10);
      if (result)
      {
        break;
      }

      v27 = v13;
      v28 = *a6;
      v29 = __sincos_stret(*a6 * 0.00007292115);
      v30 = v29.__sinval * *(&v75 + 1) + v29.__cosval * *&v75;
      v31 = v29.__cosval * *(&v75 + 1) - v29.__sinval * *&v75;
      v32 = *&v76;
      *&v71 = v30 + -0.36;
      *(&v71 + 1) = v31 + 0.08;
      *&v72 = *&v76 + 0.18;
      v83 = 0.0;
      result = (*(*a4 + 16))(a4, v25, &v86, &v71, &v83, v62 - v28, a11);
      if (result)
      {
        break;
      }

      v80 = 0.0;
      result = (*(*a5 + 16))(a5, v25, &v86, &v71, &v80, v62 - *a6);
      if (result)
      {
        break;
      }

      v13 = v27;
      v22 = sqrt((v31 - v64.f64[1]) * (v31 - v64.f64[1]) + (v30 - v64.f64[0]) * (v30 - v64.f64[0]) + (v32 - v27) * (v32 - v27)) / 299792458.0 + v83 + v80;
      *a6 = v22;
      if (!--v26)
      {
        if (a7)
        {
          result = cnnavigation::GLONASSFindSat(a1, a3, &v83, &v80, 0, a9 - v22, a10);
          if (!result)
          {
            v33 = *a6;
            v34 = __sincos_stret(*a6 * 0.00007292115);
            v35 = v34.__sinval * v84 + v34.__cosval * v83;
            v36 = v34.__cosval * v84 - v34.__sinval * v83;
            v37 = v85;
            v79[0] = v35 + -0.36;
            v79[1] = v36 + 0.08;
            v79[2] = v85 + 0.18;
            v66 = 0.0;
            v77 = 0u;
            *v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            result = (*(*a4 + 24))(a4, v25, &v86, v79, &v66, &v75, v62 - v33, a11);
            if (!result)
            {
              v61 = *(&v75 + 1);
              v59 = *&v76;
              v60 = *&v75;
              v38 = v77;
              v39 = v78[1];
              v57 = v78[0];
              v58 = *(&v76 + 1);
              v65 = 0.0;
              v74 = 0.0;
              v72 = 0u;
              v73 = 0u;
              v71 = 0u;
              result = (*(*a5 + 24))(a5, v25, &v86, v79, &v65, &v71, v62 - *a6);
              if (!result)
              {
                v40 = sqrt((v36 - v64.f64[1]) * (v36 - v64.f64[1]) + (v35 - v64.f64[0]) * (v35 - v64.f64[0]) + (v37 - v13) * (v37 - v13));
                *a6 = v40 / 299792458.0 + v66 + v65;
                v41 = v39 + v57 * 0.0 + *(&v38 + 1) * 0.0;
                v42 = v57 + *(&v38 + 1) * 0.0 + v39 * 0.0;
                v43 = *(&v38 + 1) + v57 * 0.0 + v39 * 0.0;
                v44 = *(&v71 + 1) + *&v72 * 0.0 + *(&v72 + 1) * 0.0;
                v45 = *&v72 + *(&v71 + 1) * 0.0 + *(&v72 + 1) * 0.0;
                v46 = *(&v72 + 1) + *&v72 * 0.0 + *(&v71 + 1) * 0.0;
                v47 = *&v73 + *(&v73 + 1) * 0.0 + v74 * 0.0;
                v48 = *(&v73 + 1) + *&v73 * 0.0 + v74 * 0.0;
                v49 = v74 + *(&v73 + 1) * 0.0 + *&v73 * 0.0;
                v50 = (v35 - v64.f64[0]) / v40;
                v51 = (v36 - v64.f64[1]) / v40;
                v52 = (v37 - v13) / v40;
                v53 = (v34.__cosval * v84 + -v34.__sinval * v83) * 0.00007292115 - v34.__cosval * v80 - v34.__sinval * v81;
                v54 = (v84 * -v34.__sinval - v34.__cosval * v83) * 0.00007292115 + v34.__sinval * v80 - v34.__cosval * v81;
                v55 = v34.__sinval * v81 + v34.__cosval * v80;
                v56 = 1.0 - (v47 * v53 - *&v71 + v48 * v54 - v49 * v82 + v43 * v53 - v60 + v42 * v54 - v41 * v82 + (v51 * v54 + v50 * v53 - v52 * v82) * 0.00000000333564095);
                *a8 = (*&v71 + v47 * v55 + v48 * (v34.__cosval * v81 + -v34.__sinval * v80) + v49 * v82 + v60 + v43 * v55 + v42 * (v34.__cosval * v81 + -v34.__sinval * v80) + v41 * v82 + (v51 * (v34.__cosval * v81 + -v34.__sinval * v80) + v50 * v55 + v52 * v82) * 0.00000000333564095) / v56;
                a8[1] = v61 / v56;
                a8[2] = (v59 + v58 * 0.0 + *&v38 * 0.0 - v50 * 0.00000000333564095 + v44) / v56;
                a8[3] = (v58 + v59 * 0.0 + *&v38 * 0.0 - v51 * 0.00000000333564095 + v45) / v56;
                a8[4] = (*&v38 + v58 * 0.0 + v59 * 0.0 - v52 * 0.00000000333564095 + v46) / v56;
              }
            }
          }
        }

        else
        {
          result = 0;
        }

        break;
      }
    }
  }

LABEL_6:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::GLONASSTimeOfFlightRate(int a1, float64x2_t *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, int a8, double a9, double a10, double a11, double *a12)
{
  v165 = *MEMORY[0x1E69E9840];
  v156 = 0.0;
  result = cnnavigation::GLONASSTimeOfFlight(a1, a2, a4, a5, a6, &v156, 1, v152, a9, a10, a11);
  if (!result)
  {
    v24 = v152[0];
    v25 = v153;
    v26 = v154;
    v27 = v155;
    *a7 = v152[0] + v153 * *a3 + v154 * a3[1] + v155 * a3[2];
    if (a8)
    {
      v28 = a2[1].f64[0];
      v29 = *a2;
      v163 = vaddq_f64(*a2, xmmword_1D0E76600);
      v164 = v28 + 0.18;
      result = 0xFFFFFFFFLL;
      if (a1 >= 1 && a9 >= 0.0 && a9 < 86401.0)
      {
        v135 = v29;
        v136 = v28;
        v30 = (a9 + 0.0) / 86400.0 + 0.375;
        v150 = a1 + 2450082 + vcvtmd_s64_f64(v30);
        v151 = v30 - floor(v30);
        v148 = 0;
        v149 = 0.0;
        if (cnnavigation::JulianTimeToGPSTime(&v150, a10 + 10, &v148))
        {
          result = 0xFFFFFFFFLL;
        }

        else
        {
          v32 = v148;
          v131 = v152[1];
          v132 = v156;
          v133 = v149;
          result = cnnavigation::GLONASSFindSat(a1, a4, &v160, v159, v158, a9 - v156, a10);
          if (!result)
          {
            v33 = __sincos_stret(v132 * 0.00007292115);
            v34 = v161;
            v116 = v160;
            v118 = v159[1];
            v124 = *a3;
            v125 = a3[1];
            v126 = a3[2];
            v127 = v158[0];
            v129 = *a7;
            v114 = v158[1];
            v115 = v159[0];
            v122 = v159[2];
            v123 = v158[2];
            v121 = v33.__sinval * v161 + v33.__cosval * v160;
            v119 = v162;
            v120 = v33.__cosval * v161 - v33.__sinval * v160;
            v157[0] = v121 + -0.36;
            v157[1] = v120 + 0.08;
            v157[2] = v162 + 0.18;
            v147 = 0;
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v35 = v133 - v132;
            result = (*(*a5 + 24))(a5, v32, &v163, v157, &v147, &v143, v133 - v132, a11);
            if (!result)
            {
              v36 = v144;
              v134 = *&v145;
              v141 = 0;
              v142 = 0;
              v139 = 0u;
              v140 = 0u;
              v138 = 0u;
              result = (*(*a6 + 24))(a6, v32, &v163, v157, &v142, &v138, v35);
              if (!result)
              {
                v37 = 1.0 - v129;
                v38 = v33.__sinval * -0.00007292115 * v129;
                v39 = v33.__cosval * 0.00007292115 * -0.00007292115 * v129;
                v40 = v33.__sinval * 0.00007292115 * v129;
                v41 = v33.__cosval * 0.00007292115 * v129;
                v42 = v115 * v38 + v33.__cosval * v127 * v37 + v33.__sinval * v114 * v37 + v41 * v118;
                v43 = v37 * (v33.__sinval * v127) + v33.__cosval * -0.00007292115 * v115 * v37 + v33.__sinval * 0.00007292115 * 0.00007292115 * v129 * v116 + v41 * v115;
                v44 = (-(v33.__sinval * v34) - v33.__cosval * v116) * 0.00007292115 + v33.__sinval * v115;
                v45 = v33.__cosval * v118 - v33.__sinval * v115;
                v46 = v33.__sinval * -0.00007292115 * v116 - v33.__cosval * v115 - v33.__sinval * v118;
                v47 = v33.__cosval * -0.00007292115 * v116 + v33.__sinval * v115;
                v48 = v33.__sinval * v118 + v33.__cosval * v115;
                v49 = v33.__cosval * -0.00007292115 * v129;
                v50 = v37 * -(v33.__cosval * v127) + v33.__sinval * -0.00007292115 * v115 * v37 + v39 * v116 + v40 * v115 + v33.__cosval * 0.00007292115 * v118 * v37 + -(v33.__sinval * v114) * v37 + v33.__sinval * 0.00007292115 * -0.00007292115 * v129 * v34 + v49 * v118;
                v128 = v115 * v49 + -(v33.__sinval * v127) * v37 + v33.__cosval * v114 * v37 + v38 * v118;
                v117 = v43 + v33.__sinval * -0.00007292115 * v118 * (1.0 - v129) + -(v33.__cosval * v114) * (1.0 - v129) + v39 * v34 + v40 * v118;
                v51 = v44 - v33.__cosval * v118;
                v52 = v47 - v33.__cosval * v118;
                v53 = v121 - v135.f64[0];
                v54 = v120 - v135.f64[1];
                v55 = v119 - v136;
                v56 = v54 * v54 + v53 * v53;
                v137 = v46 + v33.__cosval * 0.00007292115 * v34;
                v57 = sqrt(v56 + v55 * v55);
                v135.f64[0] = v52 + v33.__sinval * -0.00007292115 * v34;
                v58 = v57 * (v57 * v57);
                v59 = (v55 * v55 + v54 * v54) / v58;
                v60 = -(v53 * (v120 - v135.f64[1])) / v58;
                v61 = -(v53 * v55) / v58;
                v62 = v122 - v24 * v122;
                v63 = v120 * 0.00007292115 - v33.__cosval * v115 - v33.__sinval * v118;
                v64 = v48 + v63 * v24;
                v65 = v48 + v63 * v129;
                v66 = v45 + v51 * v24;
                v130 = v53 / v57;
                v67 = v53 / v57 * (v42 + v50 * v24) + (v66 * v60 + v59 * v64 + v61 * v62) * v65;
                v68 = v51 * v60 + v59 * v63 - v61 * v122;
                v69 = v53 / v57 * v50;
                v70 = v131 * v69 + v131 * v68 * v65;
                v71 = v25 * v69 + -(v59 - v68 * v25) * v65;
                v72 = v26 * v69 + -(v60 - v68 * v26) * v65;
                v73 = v27 * v69 + -(v61 - v68 * v27) * v65;
                v74 = (v55 * v55 + v53 * v53) / v58;
                v75 = v45 + v51 * v129;
                v76 = -((v120 - v135.f64[1]) * v55) / v58;
                v77 = v67 + (v66 * v74 + v60 * v64 + v76 * v62) * v75;
                v78 = v63;
                v79 = v51 * v74 + v60 * v63 - v76 * v122;
                v80 = v70 + v131 * v79 * v75;
                v81 = v71 + -(v60 - v79 * v25) * v75;
                v82 = v72 + -(v74 - v79 * v26) * v75;
                v83 = v73 + -(v76 - v79 * v27) * v75;
                v84 = v56 / v58;
                v85 = (v120 - v135.f64[1]) / v57;
                v86 = v122 - v122 * v129;
                v87 = v62;
                v88 = v77 + v85 * (v128 + v117 * v24) + (v66 * v76 + v61 * v64 + v84 * v62) * v86;
                v89 = v51 * v76 + v61 * v63 - v84 * v122;
                v90 = v83 + v85 * v117 * v27 + -(v84 - v89 * v27) * v86;
                v91 = v55 / v57;
                v92 = -(v123 * (1.0 - v129));
                v93 = v88 + v91 * ((1.0 - v129) * v123 + v92 * v24) + (-(v60 * v66) - v59 * v64 - v61 * v87) * v124 + (-(v74 * v66) - v60 * v64 - v76 * v87) * v125;
                v94 = v91 * v92;
                v95 = -(v60 * v51) - v59 * v78 + v61 * v122;
                v96 = v80 + v85 * v117 * v131 + v131 * v89 * v86 + v94 * v131 + v131 * v95 * v124;
                v97 = v81 + v85 * v117 * v25 + -(v61 - v89 * v25) * v86 + v94 * v25 + (v59 + v95 * v25) * v124;
                v98 = v82 + v85 * v117 * v26 + -(v76 - v89 * v26) * v86 + v94 * v26 + (v60 + v95 * v26) * v124;
                v99 = v90 + v94 * v27 + (v61 + v95 * v27) * v124;
                v100 = -(v74 * v51) - v60 * v78 + v76 * v122;
                v101 = v93 + (-(v76 * v66) - v61 * v64 - v84 * v87) * v126;
                v102 = -(v76 * v51) - v61 * v78 + v84 * v122;
                v103 = v61 + v102 * v25;
                v104 = v76 + v102 * v26;
                v105 = v84 + v102 * v27;
                v106 = v96 + v131 * v100 * v125 + v131 * v102 * v126;
                v107 = v97 + (v60 + v100 * v25) * v125 + v103 * v126;
                v108 = v98 + (v74 + v100 * v26) * v125 + v104 * v126;
                v109 = v99 + (v76 + v100 * v27) * v125 + v105 * v126;
                v110 = *(&v138 + 1) + *&v139 * 0.0 + *(&v139 + 1) * 0.0;
                v111 = *&v139 + *(&v138 + 1) * 0.0 + *(&v139 + 1) * 0.0;
                v112 = *(&v139 + 1) + *&v139 * 0.0 + *(&v138 + 1) * 0.0;
                v113 = 1.0 - (v135.f64[0] * v85 + v130 * v137 - v91 * v122) / 299792458.0;
                *a12 = v101 / 299792458.0 / v113;
                a12[1] = v106 / 299792458.0 / v113;
                a12[2] = v107 / 299792458.0 / v113;
                a12[3] = v108 / 299792458.0 / v113;
                a12[4] = v109 / 299792458.0 / v113;
                a12[5] = (*&v36 + *(&v36 + 1) * 0.0 + v134 * 0.0 - v130 / 299792458.0 + v110) / v113;
                a12[6] = (*(&v36 + 1) + *&v36 * 0.0 + v134 * 0.0 - v85 / 299792458.0 + v111) / v113;
                a12[7] = (v134 + *(&v36 + 1) * 0.0 + *&v36 * 0.0 - v91 / 299792458.0 + v112) / v113;
              }
            }
          }
        }
      }
    }

    else
    {
      result = 0;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::GPSSatelliteClockOffset(int a1, uint64_t a2, double *a3, int a4, uint64_t a5, double a6, double a7)
{
  result = 0xFFFFFFFFLL;
  if ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && a7 > 0.0 && *(a2 + 12) != 0)
  {
    v12 = *(a2 + 88);
    if (fabs(v12) >= 2.22044605e-16 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v14 = *(a2 + 72);
      v15 = *(a2 + 80);
      v16 = *(a2 + 96);
      if (v15 >= 0.0 && v15 < 1.0 && (*(a2 + 80) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v20 = a6 - *(a2 + 40) + (a1 - *(a2 + 32)) * 604800.0;
        v21 = a6 - *(a2 + 24) + (a1 - *(a2 + 16)) * 604800.0;
        v37 = *(a2 + 192) + *(a2 + 200) * v20 + *(a2 + 208) * (v20 * v20);
        v22 = v12 * v12;
        v36 = v14 * 0.5;
        v23 = *(a2 + 64) + v14 * 0.5 * v21 + 19964981.8 / (v12 * (v12 * v12));
        v24 = *(a2 + 56) + v23 * v21;
        v25 = 10;
        v26 = v24;
        do
        {
          v26 = v24 + v15 * sin(v26);
          --v25;
        }

        while (v25);
        v27 = v22 + v16 * v21;
        result = 0xFFFFFFFFLL;
        if (v27 >= 0.0 && v27 >= 13279855.0)
        {
          v28 = sqrt(v27);
          v29 = v28 * -4.44280763e-10;
          if (fabs(a7 + -1575420000.0) <= 0.000000015)
          {
            v31 = *(a2 + 216);
            v32 = *(a2 + 224);
          }

          else
          {
            v30 = 0.0;
            if (fabs(a7 + -1176450000.0) > 0.000000015)
            {
              goto LABEL_26;
            }

            v31 = *(a2 + 216);
            v32 = *(a2 + 240);
          }

          v30 = v31 - v32;
LABEL_26:
          *a3 = v37 + v28 * -4.44280763e-10 * (v26 - v24) - v30;
          if (a4)
          {
            v33 = *(a2 + 200) + (*(a2 + 208) + *(a2 + 208)) * v20;
            v34 = (v26 - v24) * -2.22140382e-10 / v28;
            v35 = cos(v26);
            result = 0;
            *a5 = v16 * v34 - v29 * (v23 + v36 * v21) + v29 * ((v23 + v36 * v21) / (1.0 - v15 * v35)) + v33;
            *(a5 + 8) = 0;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t cnnavigation::GPSSatelliteClockOffsetRate(int a1, uint64_t a2, double *a3, int a4, uint64_t a5, double a6)
{
  if (!*(a2 + 12))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a2 + 88);
  if (fabs(v7) < 2.22044605e-16 || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = v10 >= 0.0 && v10 < 1.0;
  v13 = !v12 || (*(a2 + 80) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  v14 = v13 || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  if (v14 || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v36 = a6 - *(a2 + 40) + (a1 - *(a2 + 32)) * 604800.0;
  v20 = a6 - *(a2 + 24) + (a1 - *(a2 + 16)) * 604800.0;
  v21 = v7 * v7;
  v35 = *(a2 + 72);
  v22 = v9 * 0.5;
  v23 = *(a2 + 64) + v9 * 0.5 * v20 + 19964981.8 / (v7 * (v7 * v7));
  v24 = *(a2 + 56) + v23 * v20;
  v25 = 10;
  v26 = v24;
  do
  {
    v27 = sin(v26);
    v26 = v24 + v10 * v27;
    --v25;
  }

  while (v25);
  v28 = cos(v24 + v10 * v27);
  v29 = v21 + v11 * v20;
  result = 0xFFFFFFFFLL;
  if (v29 >= 0.0 && v29 >= 13279855.0)
  {
    v30 = v23 + v22 * v20;
    v31 = 1.0 - v10 * v28;
    v32 = sqrt(v29);
    v33 = v30 / v31 - v30;
    v34 = (v26 - v24) * -2.22140382e-10;
    *a3 = v11 * (1.0 / v32 * v34) + v32 * -4.44280763e-10 * v33 + *(a2 + 200) + (*(a2 + 208) + *(a2 + 208)) * v36;
    result = 0;
    if (a4)
    {
      *a5 = v34 / v32 * 0.0 - v32 * -4.44280763e-10 * v35 + v32 * -4.44280763e-10 * ((v35 + (v24 - v26) * (v30 / v31) * (v30 / v31)) / v31) + 1.0 / v32 * (v33 * -2.22140382e-10) * v11 + v11 * (1.0 / v32 * -2.22140382e-10) * (v30 / v31) - v11 * (1.0 / v32 * -2.22140382e-10) * v30 + *(a2 + 208) + *(a2 + 208);
      *(a5 + 8) = 0;
    }
  }

  return result;
}

uint64_t cnnavigation::GPSSatelliteTime(int a1, uint64_t a2, _DWORD *a3, double *a4, int a5, double *a6, double a7, double a8)
{
  v19 = 0.0;
  if (cnnavigation::GPSSatelliteClockOffset(a1, a2, &v19, a5, v18, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v19 + a7;
  v16 = vcvtmd_s64_f64((v19 + a7) / 604800.0);
  *a3 = v16 + a1;
  *a4 = v15 - v16 * 604800.0;
  result = 0;
  if (a5)
  {
    v17 = v18[1];
    *a6 = v18[0] + 1.0;
    a6[1] = v17;
  }

  return result;
}

double cnnavigation::LinearizedMagneticModel::LinearizedMagneticModel(cnnavigation::LinearizedMagneticModel *this)
{
  *this = &unk_1F4CD5E58;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 217) = 0u;
  return result;
}

{
  *this = &unk_1F4CD5E58;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 217) = 0u;
  return result;
}

uint64_t cnnavigation::LinearizedMagneticModel::LinearizedMagneticModel(uint64_t a1, int a2, void *a3, uint64_t a4, double a5)
{
  v27 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F4CD5E58;
  *(a1 + 24) = *a3;
  *(a1 + 32) = a3[1];
  *(a1 + 40) = a3[2];
  *(a1 + 8) = a2;
  *(a1 + 16) = a5;
  v24 = 0;
  if ((*(*a4 + 32))(a4))
  {
    v6 = 0;
    v7 = 0uLL;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    v8 = 0uLL;
    *(a1 + 184) = 0;
  }

  else
  {
    *(a1 + 48) = v24;
    *(a1 + 56) = v25;
    *(a1 + 72) = v26;
    v9 = v16;
    *(a1 + 80) = v15;
    *(a1 + 96) = v9;
    v10 = v18;
    *(a1 + 112) = v17;
    *(a1 + 128) = v10;
    v11 = v20;
    *(a1 + 144) = v19;
    *(a1 + 160) = v11;
    v7 = v22;
    *(a1 + 176) = v21;
    v12 = &unk_1D0E76D10;
    v8 = vld1q_dup_f64(v12);
    v6 = 1;
    v8.f64[0] = v23;
  }

  *(a1 + 192) = v7;
  *(a1 + 208) = v8;
  *(a1 + 232) = v6;
  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

double cnnavigation::LinearizedMagneticModel::LinearizedMagneticModel(cnnavigation::LinearizedMagneticModel *this, const cnnavigation::LinearizedMagneticModel *a2)
{
  *this = &unk_1F4CD5E58;
  *(this + 2) = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = *(a2 + 13);
  result = *(a2 + 28);
  *(this + 28) = result;
  *(this + 232) = *(a2 + 232);
  return result;
}

double cnnavigation::LinearizedMagneticModel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    result = *(a2 + 224);
    *(a1 + 224) = result;
    *(a1 + 232) = *(a2 + 232);
  }

  return result;
}

uint64_t cnnavigation::LinearizedMagneticModel::ComputeLinearizedMagneticModel(uint64_t a1, int a2, double *a3, int a4, int a5, double *a6, double *a7, uint64_t a8, double a9)
{
  if (!*(a1 + 232))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  if (sqrt(v10 * v10 + v9 * v9 + v11 * v11) <= 0.00000001)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = a9 - *(a1 + 16) + (a2 - *(a1 + 8)) * 604800.0;
  if (fabs(v12) > *(a1 + 224))
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v9 - *(a1 + 24);
  v14 = v10 - *(a1 + 32);
  v15 = v11 - *(a1 + 40);
  if (sqrt(v14 * v14 + v13 * v13 + v15 * v15) > *(a1 + 216))
  {
    return 0xFFFFFFFFLL;
  }

  *a6 = *(a1 + 48) - (v14 * *(a1 + 64) + *(a1 + 56) * v13 + *(a1 + 72) * v15 + *(a1 + 80) * v12) + (v14 * (v13 * *(a1 + 96)) + v13 * *(a1 + 88) * v13 + v13 * *(a1 + 104) * v15 + v13 * *(a1 + 112) * v12 + v14 * *(a1 + 120) * v13 + v14 * *(a1 + 128) * v14 + v14 * *(a1 + 136) * v15 + v14 * *(a1 + 144) * v12 + v15 * *(a1 + 152) * v13 + v15 * *(a1 + 160) * v14 + v15 * *(a1 + 168) * v15 + v15 * *(a1 + 176) * v12 + v12 * *(a1 + 184) * v13 + v12 * *(a1 + 192) * v14 + v12 * *(a1 + 200) * v15 + v12 * *(a1 + 208) * v12) * -0.5;
  if (a4)
  {
    v18 = *(a1 + 72);
    v19 = v14 * *(a1 + 160) + *(a1 + 152) * v13 + *(a1 + 168) * v15 + *(a1 + 176) * v12;
    v20 = *(a1 + 64) + v14 * *(a1 + 128) + *(a1 + 120) * v13 + *(a1 + 136) * v15 + *(a1 + 144) * v12;
    *a7 = *(a1 + 56) + v14 * *(a1 + 96) + *(a1 + 88) * v13 + *(a1 + 104) * v15 + *(a1 + 112) * v12;
    a7[1] = v20;
    a7[2] = v18 + v19;
  }

  v16 = 0;
  if (a5)
  {
    v21 = *(a1 + 184);
    v22 = *(a1 + 192);
    v23 = v14 * v22 + v21 * v13;
    v24 = *(a1 + 200);
    v25 = *(a1 + 208);
    *a8 = *(a1 + 80) + v23 + v24 * v15 + v25 * v12;
    *(a8 + 8) = *(a1 + 88);
    *(a8 + 24) = *(a1 + 104);
    *(a8 + 40) = *(a1 + 120);
    *(a8 + 56) = *(a1 + 136);
    *(a8 + 72) = *(a1 + 152);
    *(a8 + 88) = *(a1 + 168);
    *(a8 + 104) = v21;
    *(a8 + 112) = v22;
    *(a8 + 120) = v24;
    *(a8 + 128) = v25;
  }

  return v16;
}

uint64_t cnnavigation::LinearizedMagneticModel::GetMagneticFieldPotential(cnnavigation::LinearizedMagneticModel *this, int a2, double a3, double *a4, double *a5)
{
  v8[3] = *MEMORY[0x1E69E9840];
  result = cnnavigation::LinearizedMagneticModel::ComputeLinearizedMagneticModel(this, a2, a4, 0, 0, a5, v8, v7, a3);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::LinearizedMagneticModel::UpdateLinearization(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v7 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  result = (*(*a4 + 32))(a4, a2, a3, &v18, &v19, v16);
  if (result)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 16) = a5;
    *(a1 + 24) = *a3;
    *(a1 + 32) = a3[1];
    v10 = v18;
    *(a1 + 40) = a3[2];
    *(a1 + 48) = v10;
    *(a1 + 56) = v19;
    *(a1 + 72) = v20;
    v11 = v16[1];
    *(a1 + 80) = v16[0];
    *(a1 + 96) = v11;
    v12 = v16[3];
    *(a1 + 112) = v16[2];
    *(a1 + 128) = v12;
    v13 = v16[5];
    *(a1 + 144) = v16[4];
    *(a1 + 160) = v13;
    v14 = v16[7];
    *(a1 + 176) = v16[6];
    *(a1 + 192) = v14;
    *(a1 + 208) = v17;
    *(a1 + 216) = xmmword_1D0E76D20;
    *(a1 + 232) = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::LinearizedMagneticModel::UpdateLinearization(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a6;
  *(a1 + 24) = *a3;
  *(a1 + 32) = a3[1];
  *(a1 + 40) = a3[2];
  *(a1 + 48) = a9;
  *(a1 + 56) = *a4;
  *(a1 + 64) = a4[1];
  *(a1 + 72) = a4[2];
  *(a1 + 80) = *a5;
  *(a1 + 96) = *(a5 + 16);
  *(a1 + 112) = *(a5 + 32);
  *(a1 + 128) = *(a5 + 48);
  *(a1 + 144) = *(a5 + 64);
  *(a1 + 160) = *(a5 + 80);
  *(a1 + 176) = *(a5 + 96);
  *(a1 + 192) = *(a5 + 112);
  *(a1 + 208) = *(a5 + 128);
  *(a1 + 216) = a7;
  *(a1 + 224) = a8;
  *(a1 + 232) = 1;
  return 0;
}

uint64_t cnnavigation::GNSSEphemerides::GNSSFindSat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  return (*(*a1 + 56))(a1, a2, &v6, a3, v5, v4);
}

uint64_t cnnavigation::GNSSEphemerides::GNSSFindSat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  return (*(*a1 + 56))(a1, a2, &v6, a3, a4, &v5);
}

{
  return (*(*a1 + 56))(a1, a2, a3, a4, v6, &v5);
}

uint64_t cnnavigation::GNSSEphemerides::GNSSFindSat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  return (*(*a1 + 56))(a1, a2, &v6, a3, a4, a5);
}

{
  return (*(*a1 + 56))(a1, a2, a3, a4, a5, v6);
}

uint64_t cnnavigation::GNSSEphemerides::GNSSSatelliteClockOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  return (*(*a1 + 96))(a1, a2, &v5, a3, 1, a4);
}

uint64_t cnnavigation::GNSSEphemerides::GNSSSatelliteClockOffsetRate(cnnavigation::GNSSEphemerides *this, const cnnavigation::TAITime *a2, double a3, double *a4)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  return (*(*this + 136))(this, a2, &v6, a4, 0, v5, a3);
}

uint64_t cnnavigation::GNSSEphemerides::GNSSSatelliteClockOffsetRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  return (*(*a1 + 136))(a1, a2, &v5, a3, 1, a4);
}

cnnavigation::SphericalHarmonicsIonosphereParameters *cnnavigation::SphericalHarmonicsIonosphereParameters::SphericalHarmonicsIonosphereParameters(cnnavigation::SphericalHarmonicsIonosphereParameters *this, unsigned int a2, unsigned int a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0x7FF8000000000000;
  bzero(this + 48, 0x2000uLL);
  *(this + 1030) = 0x7FF8000000000000;
  *(this + 8248) = 0;
  if (a2 >= 0x10)
  {
    __assert_rtn("SphericalHarmonicsIonosphereParameters", "sphericalharmonicsionospheremodel.cpp", 33, "this->max_degree_N_ <= SH_MAX_DEGREE_ORDER");
  }

  if (a2 < a3)
  {
    __assert_rtn("SphericalHarmonicsIonosphereParameters", "sphericalharmonicsionospheremodel.cpp", 34, "this->max_order_M_ <= this->max_degree_N_");
  }

  v6 = (((a2 + 1) * (a2 + 2)) >> 1) - ((a2 - a3 + (a2 - a3) * (a2 - a3)) >> 1);
  *(this + 2) = v6;
  *(this + 3) = v6 - (a2 + 1);
  return this;
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereParameters::LoadModelParameters(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t **a5, uint64_t *a6, uint64_t *a7, uint64_t a8, double a9, double a10)
{
  v12 = *a2;
  v13 = *(a2 + 8) + v12;
  v14 = fabs(v13);
  v15 = (*&v14 - 1) < 0xFFFFFFFFFFFFFLL;
  v16 = v13 < 0.0;
  v17 = v13 < 0.0 && (*&v14 - 0x10000000000000) >> 53 < 0x3FF;
  if (!v16)
  {
    v15 = 0;
  }

  v18 = *&v14 <= 0x7FF0000000000000;
  v19 = v14 == INFINITY || v15;
  if (!v18)
  {
    v19 = 1;
  }

  if ((v19 | v17))
  {
    return 0xFFFFFFFFLL;
  }

  v70 = v10;
  v71 = v11;
  v21 = (*(a4 + 8) - *a4) >> 3;
  v22 = *(a1 + 8);
  if (v21 != v22 || (a6[1] - *a6) >> 3 != v21)
  {
    v69 = 5;
    v68 = 4;
    cnprint::CNPrinter::Print(&v69, &v68, "#shiono,LoadModelParameters,C terms mismatch,cos_terms,%lu,sigma_cos_terms,%lu,max_cos_terms,%d,", a4, a5, a6, a7, a8, v21);
    return 0xFFFFFFFFLL;
  }

  v23 = a5[1] - *a5;
  v24 = *(a1 + 12);
  if (v23 != v24 || (a7[1] - *a7) >> 3 != v23)
  {
    v67 = 5;
    v66 = 4;
    v59 = v23;
    v43 = "#shiono,LoadModelParameters,S terms mismatch,sin_terms,%lu,sigma_sin_terms,%lu,max_sin_terms,%d,";
    v44 = &v67;
    v45 = &v66;
LABEL_44:
    cnprint::CNPrinter::Print(v44, v45, v43, a4, a5, a6, a7, a8, v59);
    return 0xFFFFFFFFLL;
  }

  v25 = 0;
  v26 = 0;
  v28 = *a1;
  v27 = *(a1 + 4);
  v29 = 0.0;
  a8 = 0xFFF0000000000000;
  do
  {
    if (v25 <= v28)
    {
      v30 = *a4;
      v31 = *a6;
      v32 = v25;
      while (v26 <= v22)
      {
        v33 = *(v30 + 8 * v26);
        if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        v34 = *(v31 + 8 * v26);
        v35 = v34 & 0x7FFFFFFFFFFFFFFFLL;
        v36 = (v34 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v37 = v34 < 0;
        v38 = v34 < 0 && ((v34 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (!v37)
        {
          v36 = 0;
        }

        v39 = v35 <= 0x7FF0000000000000;
        v40 = v35 == 0x7FF0000000000000 || v36;
        if (!v39)
        {
          v40 = 1;
        }

        if ((v40 | v38))
        {
          break;
        }

        if (v32 | v25)
        {
          if (fabs(v33) > v29)
          {
            v63 = 5;
            v62 = 4;
            cnprint::CNPrinter::Print(&v63, &v62, "#shiono,LoadModelParameters,fabs(Cnm) coefficient > C0,verification failed,n,%d,m,%d,C_nm_tecu,%.3f,C0_tecu,%.3f", a4, a5, a6, a7, 0xFFF0000000000000, v32);
            return 0xFFFFFFFFLL;
          }
        }

        else if (v33 < 1.0 || (v29 = *(v30 + 8 * v26), v33 > 1000.0))
        {
          v65 = 5;
          v64 = 4;
          cnprint::CNPrinter::Print(&v65, &v64, "#shiono,LoadModelParameters,C0 coefficient out of range,verification failed,C0_tecu,%.3f", a4, a5, a6, a7, 0xFFF0000000000000, SLOBYTE(v33));
          return 0xFFFFFFFFLL;
        }

        v41 = v32 << 7;
        *(a1 + 48 + 8 * v25 + v41) = v33;
        v42 = *(v31 + 8 * v26++);
        *(a1 + 4144 + 8 * v25 + v41) = v42;
        if (++v32 > v28)
        {
          goto LABEL_19;
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_19:
    ++v25;
  }

  while (v25 <= v27);
  if (v27)
  {
    v47 = 0;
    v48 = 1;
    a4 = 0x7FF0000000000000;
    while (v48 > v28)
    {
LABEL_51:
      if (++v48 > v27)
      {
        goto LABEL_69;
      }
    }

    a6 = *a5;
    a8 = *a7;
    v49 = v48;
    while (v47 <= v24 && (a6[v47] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v50 = *(a8 + 8 * v47);
      v51 = v50 & 0x7FFFFFFFFFFFFFFFLL;
      v52 = (v50 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v53 = v50 < 0;
      v54 = v50 < 0 && ((v50 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (!v53)
      {
        v52 = 0;
      }

      v55 = v51 <= 0x7FF0000000000000;
      v56 = v51 == 0x7FF0000000000000 || v52;
      if (!v55)
      {
        v56 = 1;
      }

      if ((v56 | v54))
      {
        break;
      }

      v57 = v49 << 7;
      *(a1 + 2096 + 8 * v48 + v57) = a6[v47];
      v58 = *(a8 + 8 * v47++);
      *(a1 + 6192 + 8 * v48 + v57) = v58;
      if (++v49 > v28)
      {
        goto LABEL_51;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_69:
  if (!a3 || a9 < 0.0 || (*&a9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&a10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || COERCE_UNSIGNED_INT64(fabs(*(a2 + 8) + v12)) >= 0x7FF0000000000000)
  {
    v61 = 5;
    v60 = 4;
    v43 = "#shiono,LoadModelParameters,input parameters verification failed";
    v44 = &v61;
    v45 = &v60;
    goto LABEL_44;
  }

  v20 = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a9;
  *(a1 + 8240) = a10;
  *(a1 + 16) = *a2;
  *(a1 + 8248) = 1;
  return v20;
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, _OWORD *a6, long double a7, double a8)
{
  v11 = *a3;
  v12 = *(a3 + 16);
  v9 = *a4;
  v10 = *(a4 + 16);
  return cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(a1, a7, a8, a2, &v11, &v9, a5, 1, a6);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::UpdateParameters(int8x8_t *this, const cnnavigation::SphericalHarmonicsIonosphereParameters *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8248))
  {
    v8 = this[2];
    if (v8)
    {
      v9 = *(a2 + 8);
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = *(a2 + 8);
        if (*&v8 <= v9)
        {
          v11 = v9 % v8.i32[0];
        }
      }

      else
      {
        v11 = (v8.i32[0] - 1) & v9;
      }

      v12 = *(*&this[1] + 8 * v11);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v9)
          {
            if (*(i + 4) == v9)
            {
              operator new();
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v14 >= *&v8)
              {
                v14 %= *&v8;
              }
            }

            else
            {
              v14 &= *&v8 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }
        }
      }
    }

    bzero(&v18, 0x809uLL);
    operator new();
  }

  LOWORD(v17) = 5;
  v19 = 4;
  cnprint::CNPrinter::Print(&v17, &v19, "#shiono,UpdateParameters,parameters object is not valid", a4, a5, a6, a7, a8, v16);
  return 0xFFFFFFFFLL;
}

void sub_1D0C66EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  sub_1D0C6738C(1, v11);
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::ParametersAndLegendreNormalizations::ComputeLegendreNormalizations(cnnavigation::SphericalHarmonicsIonosphereModel::ParametersAndLegendreNormalizations *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  if (!*this)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v8 + 8248) == 1)
  {
    if (*(this + 2072) != 1)
    {
      goto LABEL_11;
    }

    v10 = *(this + 4);
    if (v10)
    {
      v11 = *(this + 5);
      if (v11)
      {
        if (*v8 == v10 && *(v8 + 4) == v11)
        {
          return 0;
        }

        v34 = 5;
        v33 = 2;
        cnprint::CNPrinter::Print(&v34, &v33, "#shiono,ComputeLegendreNormalizations,layer_num,%u,re-computing normalizations,old_N,%u,old_M,%u,new_N,%u,new_M,%u", a4, a5, a6, a7, a8, *(v8 + 32));
        v8 = *this;
LABEL_11:
        v30 = *v8;
        *(this + 2) = *v8;
        for (i = 24; i != 2072; i += 128)
        {
          memset_pattern16(this + i, &unk_1D0E76EA0, 0x80uLL);
        }

        v15 = 0;
        v16 = 1;
        do
        {
          v17 = (this + 128 * v15 + 24);
          *v17 = sqrt(v15 * 2.0 + 1.0);
          if (v15)
          {
            if (v16 <= 2)
            {
              v18 = 2;
            }

            else
            {
              v18 = v16;
            }

            for (j = 1; j != v18; ++j)
            {
              v20 = v15 - j + 1;
              v21 = 1.0;
              while (v20 <= j + v15)
              {
                v21 = v21 * v20++;
              }

              v17[j] = sqrt((v15 * 4.0 + 2.0) / v21);
            }
          }

          ++v15;
          ++v16;
        }

        while (v30 + 1 != v15);
        *(this + 2072) = 1;
        if (cnprint::CNPrinter::GetLogLevel(v14) < 2)
        {
          v32 = 5;
          v31 = 1;
          v28 = *(this + 4);
          v29 = *(this + 5);
          cnprint::CNPrinter::Print(&v32, &v31, "#shiono,ComputeLegendreNormalizations,layer_num,%u,computed normalizations,N,%u,M,%u", v22, v23, v24, v25, v26, *(*this + 32));
        }

        return 0;
      }
    }

    v36 = 5;
    v35 = 4;
    cnprint::CNPrinter::Print(&v36, &v35, "#shiono,ComputeLegendreNormalizations,layer_num,%u,unknown state: normalizations initialized with degree and order set to zero", a4, a5, a6, a7, a8, *(v8 + 32));
    *(this + 2072) = 0;
  }

  return 0xFFFFFFFFLL;
}

__n128 cnnavigation::SphericalHarmonicsIonosphereModel::SetDataAgeThreshold(cnnavigation::SphericalHarmonicsIonosphereModel *this, const CNTimeSpan *a2)
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  if (!sub_1D0B7C8AC(a2, v5))
  {
    result.n128_f64[0] = *(a2 + 1) + *a2;
    if (COERCE__INT64(fabs(result.n128_f64[0])) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      result = *a2;
      *(this + 3) = *a2;
    }
  }

  return result;
}

void *sub_1D0C671AC(void *a1)
{
  *a1 = &unk_1F4CD6020;
  sub_1D0C6728C((a1 + 1));
  *a1 = &unk_1F4CD58A8;
  return a1;
}

void sub_1D0C6720C(void *a1)
{
  *a1 = &unk_1F4CD6020;
  sub_1D0C6728C((a1 + 1));
  *a1 = &unk_1F4CD58A8;

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0C6728C(uint64_t a1)
{
  sub_1D0C672C8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1D0C672C8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_1D0B7CAB8(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1D0C67330(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CD6070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0C6738C(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_1D0B7CAB8(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t cnnavigation::WGS84GravityModel::ComputeWGS84GravityModel(int64x2_t _Q0, uint64_t a2, float64x2_t *a3, int a4, int a5, double *a6, float64x2_t *a7, uint64_t a8)
{
  v8 = *a3;
  v9 = a3[1].f64[0];
  v10 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v8, v8).f64[1]) + v8.f64[0] * v8.f64[0] + v9 * v9);
  if (v10 <= 0.00000001)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 6378137.0 / v10;
  *_Q0.i64 = v9 / v10;
  *a6 = -3.98600442e14 / v10 + 6378137.0 / v10 * (6378137.0 / v10 * (3.98600442e14 / v10 * 0.000541314911)) * (*_Q0.i64 * 3.0 * *_Q0.i64 + -1.0);
  v12 = -(3.98600442e14 / v10);
  if (a4)
  {
    v13 = v11 * (v11 * 0.00162394473);
    *a7 = vmulq_n_f64(vdivq_f64(v8, vdupq_lane_s64(*&v10, 0)), v12 / v10 * (v13 * (*_Q0.i64 * -5.0 * *_Q0.i64 + 1.0) + 1.0));
    a7[1].f64[0] = *_Q0.i64 * (v12 / v10 * (v13 * (*_Q0.i64 * -5.0 * *_Q0.i64 + 3.0) + 1.0));
  }

  result = 0;
  if (a5)
  {
    v15 = vdivq_f64(v8, vdupq_lane_s64(*&v10, 0));
    v16 = 3.98600442e14 / (v10 * (v10 * v10));
    v17 = -v16;
    v18 = v11 * (v11 * -0.00811972366);
    v19 = v11 * (v11 * 0.0568380656);
    v20 = v11 * (v11 * 0.00162394473);
    v21 = v12 / v10 * (v20 * (*_Q0.i64 * -5.0 * *_Q0.i64 + 1.0) + 1.0) / v10;
    *&v22 = v16 * (*_Q0.i64 * (v11 * (v11 * 0.0162394473) * v15.f64[0]));
    _D20 = v15.f64[1];
    v24 = -(v16 * (*_Q0.i64 * (v11 * (v11 * -0.024359171)) + *_Q0.i64 * -3.0 + *_Q0.i64 * (*_Q0.i64 * v19) * *_Q0.i64));
    v25 = -(v16 * (v20 * (*_Q0.i64 * -15.0 * *_Q0.i64 + 3.0) + 1.0));
    __asm { FMOV            V17.2D, #-3.0 }

    _Q6 = vmulq_n_f64(vmlaq_n_f64(vmlaq_f64(vmulq_n_f64(v15, v18), _Q17, v15), vmulq_n_f64(vmulq_n_f64(v15, v19), *_Q0.i64), *_Q0.i64), v17);
    *a8 = v21 + _Q6.f64[0] * v15.f64[0];
    *(a8 + 8) = _Q6.f64[0] * v15.f64[1] + 0.0;
    *(a8 + 16) = vmlaq_f64(v22, vzip1q_s64(_Q0, v15), _Q6);
    __asm
    {
      FMLA            D1, D20, V6.D[1]
      FMLA            D5, D0, V6.D[1]
    }

    *(a8 + 32) = _D1;
    *(a8 + 40) = _D5;
    *(a8 + 48) = vmlaq_n_f64(0, v15, v24);
    *(a8 + 64) = v25 + v24 * *_Q0.i64;
  }

  return result;
}

uint64_t cnnavigation::WGS84GravityModel::GetGravitationalPotential(cnnavigation::WGS84GravityModel *this, const double *a2, double *a3)
{
  v3 = a2[2];
  v4 = sqrt(a2[1] * a2[1] + *a2 * *a2 + v3 * v3);
  if (v4 <= 0.00000001)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = -3.98600442e14 / v4 + 6378137.0 / v4 * (6378137.0 / v4 * (3.98600442e14 / v4 * 0.000541314911)) * (v3 / v4 * 3.0 * (v3 / v4) + -1.0);
  return result;
}

double cnnavigation::GPSEphemerides::GpsUserRangeAccuracyFromURANED_EDValue(cnnavigation::GPSEphemerides *this)
{
  if ((this + 15) <= 0x14)
  {
    return exp2(this * 0.5 + 1.0);
  }

  if ((this - 6) > 8)
  {
    return NAN;
  }

  return ldexp(1.0, (this - 2));
}

uint64_t cnnavigation::GPSEphemerides::GNSSFindSat(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = cnnavigation::TAITime::ToGPSTime(this, a3);
  result = cnnavigation::GPSFindSat(v11, a1, &v28, &v26, &v24, v12);
  if (!result)
  {
    v14 = 0;
    v15 = v29;
    *a4 = v28;
    *(a4 + 16) = v15;
    v16 = v27;
    *a5 = v26;
    *(a5 + 16) = v16;
    v17 = v25;
    *a6 = v24;
    v18 = 0.0;
    *(a6 + 16) = v17;
    do
    {
      v18 = v18 + *(a4 + v14) * *(a4 + v14);
      v14 += 8;
    }

    while (v14 != 24);
    if (sqrt(v18) >= 6341752.3)
    {
      IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
      result = 0;
      if (IsValid && *(a3 + 1) == 1)
      {
        v20 = 0;
        v21 = 1.0 / (1.0 - *(a3 + 2));
        do
        {
          *(a5 + v20) = v21 * *(a5 + v20);
          v20 += 8;
        }

        while (v20 != 24);
        for (i = 0; i != 24; i += 8)
        {
          *(a6 + i) = v21 * *(a6 + i);
        }

        result = 0;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::GPSEphemerides::GNSSSatelliteClockOffset(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, int a5, double *a6, double a7)
{
  v13 = cnnavigation::TAITime::ToGPSTime(this, a3);
  v15 = v14;
  v32 = 0.0;
  v16 = cnnavigation::GPSSatelliteClockOffset(v13, a1, &v32, a5, v31, v14, a7);
  if (!v16)
  {
    if (cnnavigation::GNSSUTCParameters::IsValid(a3) && *(a3 + 1) == 1)
    {
      v30[0] = 0;
      v30[1] = 0;
      *v18.i64 = v15;
      *v20.i64 = CNTimeSpan::SetTimeSpan(v30, 604800 * v13, v18, v19);
      v21 = *(a3 + 1);
      v22 = *(a3 + 2);
      v24 = CNTimeSpan::operator-(v30, a3 + 3, v20, v23);
      *a4 = v32 - (v21 + v22 * (v25 + v24));
      if (a5)
      {
        v26 = *(a3 + 2);
        v27 = 1.0 / (1.0 - v26);
        v28 = (v31[0] - v26) * v27;
        v29 = v31[1] / v27;
        *a6 = v28;
        a6[1] = v29;
      }
    }

    else
    {
      *a4 = v32;
      if (a5)
      {
        *a6 = *v31;
      }
    }
  }

  return v16;
}

uint64_t cnnavigation::GPSEphemerides::GNSSSatelliteClockOffsetRate(uint64_t a1, cnnavigation::TAITime *this, cnnavigation::GNSSUTCParameters *a3, double *a4, int a5, double *a6)
{
  v11 = cnnavigation::TAITime::ToGPSTime(this, a3);
  v20 = 0.0;
  v13 = cnnavigation::GPSSatelliteClockOffsetRate(v11, a1, &v20, a5, v19, v12);
  if (!v13)
  {
    if (cnnavigation::GNSSUTCParameters::IsValid(a3) && *(a3 + 1) == 1)
    {
      v14 = *(a3 + 2);
      v15 = 1.0 / (1.0 - v14);
      *a4 = (v20 - v14) * v15;
      if (a5)
      {
        v16 = v15 * v15 * v19[0];
LABEL_8:
        v17 = v19[1];
        *a6 = v16;
        a6[1] = v17;
      }
    }

    else
    {
      *a4 = v20;
      if (a5)
      {
        v16 = v19[0];
        goto LABEL_8;
      }
    }
  }

  return v13;
}

uint64_t cnnavigation::GNSSTimeOfFlight(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, int8x16_t a7)
{
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  return cnnavigation::GNSSTimeOfFlight(a1, &v9, a2, a3, 1, a4, 1, a5, a7, 0, a6, 0, v8);
}

uint64_t cnnavigation::GNSSTimeOfFlight(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, uint64_t a7, int8x16_t a8)
{
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  return cnnavigation::GNSSTimeOfFlight(a1, &v9, a2, a3, 1, a4, 1, a5, a8, 0, a6, 1u, a7);
}

uint64_t cnnavigation::GNSSTimeOfFlight(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6, double *a7, int8x16_t a8)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSTimeOfFlight(a1, &v10, a2, a3, a4, a5, 1, a6, a8, 0, a7, 0, v9);
}

uint64_t cnnavigation::GNSSTimeOfFlight(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6, double *a7, uint64_t a8, int8x16_t a9)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSTimeOfFlight(a1, &v10, a2, a3, a4, a5, 1, a6, a9, 0, a7, 1u, a8);
}

uint64_t cnnavigation::GNSSTimeOfFlightRate(void *a1, uint64_t a2, double *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, double *a7, double a8)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSTimeOfFlightRate(a1, &v10, a2, a3, a4, 1, a5, 1, a8, 0, a6, a7, 0, v9);
}

uint64_t cnnavigation::GNSSTimeOfFlightRate(void *a1, uint64_t a2, double *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, double *a7, float64x2_t *a8, double a9)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSTimeOfFlightRate(a1, &v10, a2, a3, a4, 1, a5, 1, a9, 0, a6, a7, 1, a8);
}

uint64_t cnnavigation::GNSSTimeOfFlightRate(void *a1, uint64_t a2, double *a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, double *a8, double a9)
{
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  return cnnavigation::GNSSTimeOfFlightRate(a1, &v11, a2, a3, a4, a5, a6, 1, a9, 0, a7, a8, 0, v10);
}

uint64_t cnnavigation::GNSSTimeOfFlightRate(void *a1, uint64_t a2, double *a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, double *a8, double a9, float64x2_t *a10)
{
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  return cnnavigation::GNSSTimeOfFlightRate(a1, &v11, a2, a3, a4, a5, a6, 1, a9, 0, a7, a8, 1, a10);
}

uint64_t cnnavigation::ParameterizedTroposphereModelParameters::ParameterizedTroposphereModelParameters(uint64_t this)
{
  *this = &unk_1F4CD61E0;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 32) = &unk_1F4CD60C0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4CD61E0;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 32) = &unk_1F4CD60C0;
  *(this + 16) = 0;
  return this;
}

uint64_t cnnavigation::ParameterizedTroposphereModelParameters::ParameterizedTroposphereModelParameters(uint64_t result, int a2, int a3, int a4, int a5)
{
  *result = &unk_1F4CD61E0;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  *(result + 32) = &unk_1F4CD60C0;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_1F4CD61E0;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  *(result + 32) = &unk_1F4CD60C0;
  *(result + 40) = 0;
  return result;
}

uint64_t cnnavigation::ParameterizedTroposphereModelParameters::ParameterizedTroposphereModelParameters(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  *result = &unk_1F4CD61E0;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a6;
  *(result + 32) = &unk_1F4CD60C0;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_1F4CD61E0;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a6;
  *(result + 32) = &unk_1F4CD60C0;
  *(result + 40) = 0;
  return result;
}

__n128 cnnavigation::ParameterizedTroposphereModelParameters::ParameterizedTroposphereModelParameters(cnnavigation::ParameterizedTroposphereModelParameters *this, const cnnavigation::ParameterizedTroposphereModelParameters *a2)
{
  *this = &unk_1F4CD61E0;
  result = *(a2 + 8);
  *(this + 8) = result;
  *(this + 3) = *(a2 + 3);
  *(this + 4) = &unk_1F4CD60C0;
  *(this + 40) = *(a2 + 40);
  return result;
}

{
  *this = &unk_1F4CD61E0;
  result = *(a2 + 8);
  *(this + 8) = result;
  *(this + 3) = *(a2 + 3);
  *(this + 4) = &unk_1F4CD60C0;
  *(this + 40) = *(a2 + 40);
  return result;
}

__n128 cnnavigation::ParameterizedTroposphereModelParameters::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
  }

  return result;
}

uint64_t cnnavigation::ParameterizedTroposphereModel::ParameterizedTroposphereModel(uint64_t this)
{
  *this = &unk_1F4CD6200;
  *(this + 8) = &unk_1F4CD61E0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = &unk_1F4CD60C0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_1F4CD6200;
  *(this + 8) = &unk_1F4CD61E0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = &unk_1F4CD60C0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

__n128 cnnavigation::ParameterizedTroposphereModel::ParameterizedTroposphereModel(__n128 *this, const cnnavigation::ParameterizedTroposphereModelParameters *a2)
{
  this->n128_u64[0] = &unk_1F4CD6200;
  this->n128_u64[1] = &unk_1F4CD61E0;
  result = *(a2 + 8);
  this[1] = result;
  this[2].n128_u64[0] = *(a2 + 3);
  this[2].n128_u64[1] = &unk_1F4CD60C0;
  this[3].n128_u8[0] = *(a2 + 40);
  return result;
}

{
  this->n128_u64[0] = &unk_1F4CD6200;
  this->n128_u64[1] = &unk_1F4CD61E0;
  result = *(a2 + 8);
  this[1] = result;
  this[2].n128_u64[0] = *(a2 + 3);
  this[2].n128_u64[1] = &unk_1F4CD60C0;
  this[3].n128_u8[0] = *(a2 + 40);
  return result;
}

uint64_t cnnavigation::ParameterizedTroposphereModel::GetCurrentWeather(uint64_t a1, uint64_t a2)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    goto LABEL_5;
  }

  v3 = *(a2 + 64);
  if (v3 == 1)
  {
    *(a2 + 456) = 0u;
    *(a2 + 472) = 0u;
    *(a2 + 424) = 0u;
    *(a2 + 440) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
  }

  if (*(a1 + 24))
  {
LABEL_5:
    result = 1;
    goto LABEL_23;
  }

  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v87[0] = xmmword_1D0E76F50;
  v87[1] = xmmword_1D0E76F60;
  v88 = 0x3FF4F1A6C638D03FLL;
  v85[0] = xmmword_1D0E76F70;
  v85[1] = xmmword_1D0E76F80;
  v86 = 0x408FA80000000000;
  v83[0] = xmmword_1D0E76F90;
  v83[1] = xmmword_1D0E76FA0;
  v84 = 0x40707A6666666666;
  v81[0] = xmmword_1D0E76FB0;
  v81[1] = xmmword_1D0E76FC0;
  v82 = 0x4054A00000000000;
  v79[0] = xmmword_1D0E76FD0;
  v79[1] = xmmword_1D0E76FE0;
  v80 = 0x3F728E0C9D9D3459;
  v77[0] = xmmword_1D0E76FF0;
  v77[1] = xmmword_1D0E77000;
  v78 = 0x3FF8CCCCCCCCCCCDLL;
  v74 = 0;
  v75 = xmmword_1D0E77010;
  v76 = xmmword_1D0E77020;
  v72 = xmmword_1D0E77030;
  v73 = xmmword_1D0E77040;
  v68[0] = 0;
  v68[1] = 0;
  v69 = xmmword_1D0E77050;
  v70 = 0x4004000000000000;
  v71 = 0;
  v65 = 0;
  v66 = xmmword_1D0E77060;
  v67 = xmmword_1D0E77070;
  v62 = 0;
  v63 = xmmword_1D0E77080;
  v64 = xmmword_1D0E77090;
  v7 = (v5 + -28.0 + v5 + -28.0) * 3.14159265 / 365.25;
  if (v6 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 3.14159265;
  }

  v9 = fabs(v6);
  if (v9 <= 0.261799388)
  {
    v57 = 0.0;
    v60 = 1013.25;
    v59 = 299.65;
    v58 = 75.0;
    v61 = 2.77;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v53 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v12 = 0.0063;
LABEL_18:
    v54 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    goto LABEL_19;
  }

  if (v9 >= 1.30899694)
  {
    v57 = 0.0;
    v15 = 2.5;
    v14 = 14.5;
    v13 = -0.5;
    v60 = 1013.0;
    v59 = 263.65;
    v58 = 82.5;
    v17 = 0.3;
    v16 = 0.00062;
    v61 = 1.55;
    v18 = 0.0;
    v53 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v12 = 0.00453;
    goto LABEL_18;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(v87 + v10);
    if (v9 > v11 && v9 <= *(v87 + v10 + 8))
    {
      break;
    }

    v10 += 8;
    if (v10 == 32)
    {
      v12 = 0.0;
      v60 = 0.0;
      v61 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      v56 = 0.0;
      v57 = 0.0;
      v53 = 0.0;
      v54 = 0.0;
      v55 = 0.0;
      v48 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      v51 = 0.0;
      v52 = 0.0;
      v58 = 0.0;
      v59 = 0.0;
      goto LABEL_20;
    }
  }

  v31 = (v9 - v11) / 0.261799388;
  v32 = *(v85 + v10 + 8) - *(v85 + v10);
  v33 = *(v85 + v10) + v32 * v31;
  v34 = *(v83 + v10 + 8) - *(v83 + v10);
  v35 = *(v83 + v10) + v34 * v31;
  v36 = *(v81 + v10 + 8) - *(v81 + v10);
  v37 = *(v81 + v10) + v36 * v31;
  v38 = *(v79 + v10 + 8) - *(v79 + v10);
  v12 = *(v79 + v10) + v38 * v31;
  v39 = *(v77 + v10 + 8) - *(v77 + v10);
  v40 = *(v77 + v10) + v39 * v31;
  v41 = *(&v74 + v10 + 8) - *(&v74 + v10);
  v13 = *(&v74 + v10) + v41 * v31;
  v42 = *(&v71 + v10 + 8) - *(&v71 + v10);
  v14 = *(&v71 + v10) + v42 * v31;
  v43 = *&v68[v10 / 8 + 1] - *&v68[v10 / 8];
  v15 = *&v68[v10 / 8] + v43 * v31;
  v44 = *(&v65 + v10 + 8) - *(&v65 + v10);
  v16 = *(&v65 + v10) + v44 * v31;
  v45 = (&v62 + v10);
  v46 = v45[1] - *v45;
  v17 = *v45 + v46 * v31;
  v60 = v33;
  v61 = v40;
  v58 = v37;
  v59 = v35;
  if (!v3)
  {
    v18 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v53 = 0.0;
    v55 = 0.0;
    goto LABEL_18;
  }

  v47 = dbl_1D0E770A0[v6 < 0.0];
  v57 = v47 * v32;
  v53 = v47 * v34;
  v55 = v47 * v36;
  v56 = v47 * v38;
  v54 = v47 * v39;
  v48 = v47 * v41;
  v49 = v47 * v42;
  v50 = v47 * v43;
  v51 = v47 * v44;
  v18 = v47 * v46;
LABEL_19:
  v52 = v18;
LABEL_20:
  v19 = cos(v8);
  *(a2 + 280) = (v60 - v13 * v19) * 100.0;
  *(a2 + 288) = v59 - v14 * v19;
  *(a2 + 296) = v58 - v15 * v19;
  *(a2 + 304) = v12 - v16 * v19;
  *(a2 + 312) = v61 - v17 * v19;
  if (v3)
  {
    v20 = sin(v8);
    v21 = *(a2 + 128);
    *(a2 + 328) = v20 * (v13 * 100.0) * 0.0172024238 * v21;
    v22.f64[0] = v57 - v48 * v19;
    v23 = *(a2 + 160);
    v24.f64[0] = *(a2 + 176);
    v22.f64[1] = v20 * v14;
    v25 = v53 - v49 * v19;
    v26 = v55 - v50 * v19;
    v27 = v56 - v51 * v19;
    v28 = v54 - v52 * v19;
    v24.f64[1] = v21;
    v29 = vmulq_f64(v22, xmmword_1D0E770B0);
    *(a2 + 336) = vmulq_n_f64(v23, v29.f64[0]);
    *(a2 + 352) = vmulq_f64(v29, v24);
    *(a2 + 368) = vmulq_n_f64(v23, v25);
    *(a2 + 384) = v25 * v24.f64[0];
    *(a2 + 392) = v20 * v15 * 0.0172024238 * v21;
    *(a2 + 400) = vmulq_n_f64(v23, v26);
    *(a2 + 416) = v26 * v24.f64[0];
    *(a2 + 424) = v20 * v16 * 0.0172024238 * v21;
    *(a2 + 432) = vmulq_n_f64(v23, v27);
    *(a2 + 448) = v27 * v24.f64[0];
    *(a2 + 456) = v20 * v17 * 0.0172024238 * v21;
    *(a2 + 464) = vmulq_n_f64(v23, v28);
    *(a2 + 480) = v28 * v24.f64[0];
  }

  result = 0;
LABEL_23:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::ParameterizedTroposphereModel::GetOrthometricHeight(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 64);
  if (v4 == 1)
  {
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
  }

  v5 = *(a1 + 28);
  if (v5 == 1)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      if ((*(*v8 + 56))(v8))
      {
        v37 = *(a2 + 88);
        v38 = 0;
        v9 = cnnavigation::LLAToECEF(&v37, 1, v36.f64, 0, &v26);
        if (!v9)
        {
          v11 = v36;
          if (!cnnavigation::WGS84GravityModel::ComputeWGS84GravityModel(v10, v9, &v36, 1, 0, v32.f64, &v34, &v26))
          {
            v25 = 0.0;
            if (!(*(**(a1 + 32) + 32))(*(a1 + 32), &v36, &v25, &v32, &v26))
            {
              v13 = v32;
              v14 = v32.f64[1];
              v15 = v33;
              v16 = sqrt(vmuld_lane_f64(v32.f64[1], v32, 1) + v13.f64[0] * v13.f64[0] + v15 * v15);
              v17 = v25 - ((v11.f64[1] * 0.0000729211515 * (v11.f64[1] * 0.0000729211515) + v11.f64[0] * 0.0000729211515 * (v11.f64[0] * 0.0000729211515)) * 0.5 + -62636851.7);
              *(a2 + 80) = *(a2 + 104) - (-0.528 - v17 / v16);
              if (*(a2 + 64) != 1)
              {
                result = 0;
                goto LABEL_14;
              }

              result = 0;
              v18 = -1.0 / v16;
              v19 = 1.0 / v16;
              v20 = v17 / (v16 * v16);
              v21 = v13.f64[0] / v16;
              v22 = v14 / v16;
              v23 = v15 / v16;
              v24 = -(v35 * v19) - v18 * v15 + v20 * (v22 * v29 + v21 * v27 + v23 * v31);
              *(a2 + 136) = vsubq_f64(*(a2 + 208), vmlaq_n_f64(vmlsq_lane_f64(vmulq_n_f64(vnegq_f64(v34), v19), v13, v18, 0), vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v28, v22), v26, v21), v30, v23), v20));
              v7 = *(a2 + 224) - v24;
              goto LABEL_7;
            }
          }
        }
      }
    }

LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (v5)
  {
    goto LABEL_13;
  }

  *(a2 + 80) = *(a2 + 104);
  result = 0;
  if (v4)
  {
    *(a2 + 136) = *(a2 + 208);
    v7 = *(a2 + 224);
LABEL_7:
    *(a2 + 152) = v7;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::ParameterizedTroposphereModel::GetMappingFunctions(uint64_t a1, uint64_t a2)
{
  v229 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 20);
  if (v3 == 1)
  {
    v71 = *(a2 + 112);
    v73 = *(a2 + 80);
    v72 = *(a2 + 88);
    v74 = *(a2 + 72);
    v227[0] = xmmword_1D0E76F50;
    v227[1] = xmmword_1D0E76F60;
    v228 = 0x3FF4F1A6C638D03FLL;
    v225[0] = xmmword_1D0E770C0;
    v225[1] = xmmword_1D0E770D0;
    v226 = 0x3F53BC74F8C0EA98;
    v223[0] = xmmword_1D0E770E0;
    v223[1] = xmmword_1D0E770F0;
    v224 = 0x3F67C6F718FD5C4ALL;
    v221[0] = xmmword_1D0E77100;
    v221[1] = xmmword_1D0E77110;
    v222 = 0x3FB0733DFAB76BBDLL;
    v218 = 0;
    v219 = xmmword_1D0E77120;
    v220 = xmmword_1D0E77130;
    v215 = 0;
    v216 = xmmword_1D0E77140;
    v217 = xmmword_1D0E77150;
    v213 = xmmword_1D0E77160;
    v214 = xmmword_1D0E77170;
    v210[0] = xmmword_1D0E77180;
    v210[1] = xmmword_1D0E77190;
    v211 = 0x3F4432E1470BE6ECLL;
    v212 = 0;
    v208[0] = xmmword_1D0E771A0;
    v208[1] = xmmword_1D0E771B0;
    v209 = 0x3F5CD5970A6DF91FLL;
    v206[0] = xmmword_1D0E771C0;
    v206[1] = xmmword_1D0E771D0;
    v207 = 0x3FAC065CAA3EC72ALL;
    v75 = (v74 + -28.0 + v74 + -28.0) * 3.14159265 / 365.25;
    if (v72 >= 0.0)
    {
      v76 = v75;
    }

    else
    {
      v76 = v75 + 3.14159265;
    }

    v77 = fabs(v72);
    v202 = v73;
    if (v77 <= 0.261799388)
    {
      v195 = 0.0;
      v85 = 0.0012769934;
      v84 = 0.0029153695;
      v83 = 0.062610505;
      v205 = 0.00058021897;
      v204 = 0.0014275268;
      __xa = 0.0;
      v190 = 0.0;
      v180 = 0.0;
      v182 = 0.0;
      v178 = 0.0;
      v200 = 0.043472961;
      v175 = 0.0;
      v177 = 0.0;
      v173 = 0.0;
      v80 = 0.0;
      v81 = 0.0;
      v82 = 0.0;
    }

    else if (v77 >= 1.30899694)
    {
      v195 = 0.0;
      v85 = 0.0012045996;
      v84 = 0.0029024912;
      v83 = 0.064258455;
      v82 = 0.000041202191;
      v81 = 0.00011723375;
      v80 = 0.0017037206;
      v205 = 0.00061641693;
      v204 = 0.0017599082;
      __xa = 0.0;
      v190 = 0.0;
      v180 = 0.0;
      v182 = 0.0;
      v177 = 0.0;
      v178 = 0.0;
      v173 = 0.0;
      v175 = 0.0;
      v200 = 0.054736038;
    }

    else
    {
      v78 = 0;
      while (1)
      {
        v79 = *(v227 + v78);
        if (v77 > v79 && v77 <= *(v227 + v78 + 8))
        {
          break;
        }

        v78 += 8;
        if (v78 == 32)
        {
          v195 = 0.0;
          __xa = 0.0;
          v190 = 0.0;
          v180 = 0.0;
          v182 = 0.0;
          v177 = 0.0;
          v178 = 0.0;
          v173 = 0.0;
          v175 = 0.0;
          v200 = 0.0;
          v204 = 0.0;
          v205 = 0.0;
          v80 = 0.0;
          v81 = 0.0;
          v82 = 0.0;
          v83 = 0.0;
          v84 = 0.0;
          v85 = 0.0;
          goto LABEL_19;
        }
      }

      v147 = (v77 - v79) / 0.261799388;
      v148 = *(v225 + v78 + 8) - *(v225 + v78);
      v85 = *(v225 + v78) + v148 * v147;
      v149 = *(v223 + v78 + 8) - *(v223 + v78);
      v84 = *(v223 + v78) + v149 * v147;
      v150 = *(v221 + v78 + 8) - *(v221 + v78);
      v83 = *(v221 + v78) + v150 * v147;
      v151 = *(&v218 + v78 + 8) - *(&v218 + v78);
      v82 = *(&v218 + v78) + v151 * v147;
      v152 = *(&v215 + v78 + 8) - *(&v215 + v78);
      v81 = *(&v215 + v78) + v152 * v147;
      v153 = *(&v212 + v78 + 8) - *(&v212 + v78);
      v80 = *(&v212 + v78) + v153 * v147;
      v154 = *(v210 + v78 + 8) - *(v210 + v78);
      v155 = *(v208 + v78 + 8) - *(v208 + v78);
      v204 = *(v208 + v78) + v155 * v147;
      v205 = *(v210 + v78) + v154 * v147;
      v156 = (v206 + v78);
      v157 = v156[1] - *v156;
      v200 = *v156 + v157 * v147;
      if (*(a2 + 64) == 1)
      {
        v158 = dbl_1D0E770A0[v72 < 0.0];
        v173 = v158 * v148;
        v175 = v158 * v149;
        v177 = v158 * v150;
        v178 = v158 * v151;
        v180 = v158 * v152;
        v182 = v158 * v153;
        __xa = v158 * v154;
        v190 = v158 * v155;
        v195 = v158 * v157;
      }

      else
      {
        v195 = 0.0;
        __xa = 0.0;
        v190 = 0.0;
        v180 = 0.0;
        v182 = 0.0;
        v177 = 0.0;
        v178 = 0.0;
        v173 = 0.0;
        v175 = 0.0;
      }
    }

LABEL_19:
    v191 = v76;
    v86 = cos(v76);
    v185 = v82;
    v186 = v81;
    v87 = v85 - v82 * v86;
    v88 = v84 - v81 * v86;
    v184 = v80;
    v197 = v83 - v80 * v86;
    v89 = sin(v71);
    v90 = v89 + 0.00549 / (v89 + 0.00114);
    v91 = v89 + 0.0000253 / v90;
    v92 = 1.0 / v89 + -1.00002516 / v91;
    v93 = v202 * v92 / 1000.0;
    v94 = *(a2 + 64);
    v193 = v71;
    if (v94 == 1)
    {
      v171 = v202 / 1000.0;
      v203 = v92 / 1000.0;
      v166 = v93;
      v95 = cos(v71);
      v93 = v166;
      v96 = v171 * (-v95 / (v89 * v89) + 1.00002516 / (v91 * v91) * (v95 + v95 * (-0.0000253 / (v90 * v90)) * (-0.00549 / ((v89 + 0.00114) * (v89 + 0.00114)) + 1.0)));
      v169 = vmlaq_n_f64(vmulq_n_f64(*(a2 + 232), v96), *(a2 + 136), v203);
      v97 = v96 * *(a2 + 248) + v203 * *(a2 + 152);
      v202 = v96 * *(a2 + 256);
      v170 = v97;
      v172 = v96 * *(a2 + 264);
      v168 = v96 * *(a2 + 272);
    }

    v98 = v197 + 1.0;
    v99 = v87 / (v88 / (v197 + 1.0) + 1.0) + 1.0;
    v100 = v89 + v197;
    v101 = v89 + v88 / (v89 + v197);
    v102 = v89 + v87 / v101;
    *(a2 + 520) = v93 + v99 / v102;
    v103 = v200 + 1.0;
    v104 = v204 / (v200 + 1.0) + 1.0;
    v105 = v205 / v104 + 1.0;
    v106 = v89 + v204 / (v89 + v200);
    *(a2 + 528) = v105 / (v89 + v205 / v106);
    if (v94)
    {
      v164 = -v99 / (v102 * v102);
      v165 = 1.0 / v102;
      v107 = v197 + v88 + 1.0;
      v108 = v98 / v107;
      v109 = v107 * v107;
      v159 = -(v87 * v98) / v109;
      v160 = v108;
      v162 = v89 + v205 / v106;
      v163 = v88 * v87 / v109;
      v110 = v193;
      v198 = v89 + v204 / (v89 + v200);
      v201 = v89 + v200;
      v194 = v103;
      v167 = v104;
      v111 = cos(v110);
      v112 = v101 * v101;
      v113 = -v87 / (v101 * v101);
      v161 = v111 + v111 * v113 * (1.0 - v88 / (v100 * v100));
      v114 = 1.0 / v101;
      v115 = v113 / v100;
      v116 = v88 * (v87 / v112) / (v100 * v100);
      v117 = sin(v191);
      v118 = v173 - v178 * v86;
      v119 = v175 - v180 * v86;
      v120 = *(a2 + 128);
      v121 = v117 * v185 * 0.0172024238 * v120;
      v122 = v117 * v186 * 0.0172024238 * v120;
      v123 = v117 * v184 * 0.0172024238 * v120;
      v124 = v119 * v159 + v160 * v118;
      v125 = v119 * v115 + v114 * v118;
      v126 = -v105 / (v162 * v162);
      v127 = v164 * (v125 + v116 * (v177 - v182 * v86)) + v165 * (v124 + v163 * (v177 - v182 * v86));
      _D0 = v164 * v161;
      *(a2 + 536) = v164 * (v115 * v122 + v114 * v121 + v116 * v123) + v165 * (v159 * v122 + v160 * v121 + v163 * v123) + 0.0;
      v129 = *(a2 + 232);
      v130 = *(a2 + 240);
      v131 = *(a2 + 160);
      v132 = *(a2 + 168);
      *(a2 + 544) = v169.f64[0] + v164 * v161 * v129 + v127 * v131;
      *(a2 + 552) = v169.f64[1] + v164 * v161 * v130 + v127 * v132;
      v133 = *(a2 + 176);
      v134 = *(a2 + 248);
      *(a2 + 560) = v170 + v164 * v161 * v134 + v127 * v133;
      v135 = *(a2 + 272);
      *(a2 + 584) = v168 + v164 * v161 * v135;
      v136 = v201;
      v137 = -v205 / (v198 * v198);
      v138 = v126 * (v190 * (v137 / v201) + 1.0 / v198 * __xa + v204 * (v205 / (v198 * v198)) / (v136 * v136) * v195) + 1.0 / v162 * (v190 * (-v205 / (v167 * v167) / v194) + 1.0 / v167 * __xa + v204 * (v205 / (v167 * v167)) / (v194 * v194) * v195);
      v139 = v126 * (v111 + v111 * v137 * (1.0 - v204 / (v136 * v136)));
      *(a2 + 592) = 0;
      *(a2 + 600) = v139 * v129 + v138 * v131;
      *(a2 + 608) = v139 * v130 + v138 * v132;
      *(a2 + 616) = v139 * v134 + v138 * v133;
      _Q3 = *(a2 + 256);
      *(a2 + 568) = v202 + v164 * v161 * _Q3.f64[0];
      __asm { FMLA            D4, D0, V3.D[1] }

      *(a2 + 576) = _D4;
      *(a2 + 624) = vmulq_n_f64(_Q3, v139);
      *(a2 + 640) = v139 * v135;
    }

    goto LABEL_23;
  }

  if (v3)
  {
LABEL_6:
    result = 1;
    goto LABEL_24;
  }

  v4 = *(a2 + 280) / 100.0 + -1000.0;
  v5 = *(a2 + 288) + -273.15 + -15.0;
  v6 = sqrt(*(a2 + 320) / 100.0);
  v7 = v4 * 0.0000001316 + 0.001237 + v5 * 0.000001378 + v6 * 0.000008057;
  v8 = v4 * 0.0000001946 + 0.003333 + v5 * 0.000000104 + v6 * 0.00001747;
  v9 = v4 * 0.0000002471 + 0.0005236 + v5 * -0.0000001724 + v6 * 0.00001328;
  v196 = v6;
  v10 = v4 * 0.0000007384 + 0.001705 + v5 * 0.0000003767 + v6 * 0.00002147;
  v11 = v8 / 1.078 + 1.0;
  v12 = v7 / v11 + 1.0;
  __x = *(a2 + 112);
  v13 = sin(__x);
  v14 = v13 + 0.078;
  v15 = v8;
  v16 = v13 + v8 / (v13 + 0.078);
  v17 = v13 + v7 / v16;
  v18 = v12 / v17;
  *(a2 + 520) = v12 / v17;
  v19 = v10 / 1.05917 + 1.0;
  v20 = v9 / v19 + 1.0;
  v21 = v13 + 0.05917;
  v192 = v10;
  v22 = v13 + v10 / (v13 + 0.05917);
  v199 = v9;
  v23 = v13 + v9 / v22;
  v24 = v20 / v23;
  *(a2 + 528) = v20 / v23;
  if (*(a2 + 64) != 1)
  {
LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  v25 = v18 / v12;
  v183 = v23;
  v26 = -v18 / v17;
  v27 = 1.0 / v11;
  v174 = -v7;
  v28 = v15;
  v29 = v7 * -1.078 / ((v15 + 1.0 + 0.078) * (v15 + 1.0 + 0.078));
  v30 = __x;
  __xb = v20;
  v179 = v19;
  v181 = v24;
  v176 = v21;
  v31 = v22;
  v32 = cos(v30);
  result = 0;
  v34 = v174 / (v16 * v16);
  v35 = v32 + v32 * v34 * (1.0 - v28 / (v14 * v14));
  v36 = v34 / v14;
  v37 = (v26 * (v36 * 0.0000001946 + 1.0 / v16 * 0.0000001316) + v25 * (v29 * 0.0000001946 + v27 * 0.0000001316)) * 0.01;
  v38 = v26 * (v36 * 0.000000104 + 1.0 / v16 * 0.000001378) + v25 * (v29 * 0.000000104 + v27 * 0.000001378);
  v39 = (v26 * (0.000008735 / v196 * v36 + 1.0 / v16 * (0.0000040285 / v196)) + v25 * (0.000008735 / v196 * v29 + v27 * (0.0000040285 / v196))) * 0.01;
  v40 = v26 * v35;
  v41 = *(a2 + 360);
  v42 = *(a2 + 368);
  v44 = *(a2 + 328);
  v43 = *(a2 + 336);
  v45 = *(a2 + 488);
  v46 = *(a2 + 496);
  *(a2 + 536) = v38 * v41 + v37 * v44 + v39 * v45;
  v47 = -v199 / (v31 * v31);
  v48 = v32 + v32 * v47 * (1.0 - v192 / (v176 * v176));
  v50 = *(a2 + 232);
  v49 = *(a2 + 240);
  *(a2 + 544) = v38 * v42 + v37 * v43 + v39 * v46 + v40 * v50;
  v51 = v199 * -1.05917 / ((v192 + 1.0 + 0.05917) * (v192 + 1.0 + 0.05917));
  v52 = v47 / v176;
  v53 = -v181 / v183;
  v54 = v53 * (v52 * 0.0000007384 + 1.0 / v31 * 0.0000002471) + v181 / __xb * (v51 * 0.0000007384 + 1.0 / v179 * 0.0000002471);
  v55 = *(a2 + 376);
  v56 = *(a2 + 384);
  v57 = v53 * (v52 * 0.0000003767 + 1.0 / v31 * -0.0000001724) + v181 / __xb * (v51 * 0.0000003767 + 1.0 / v179 * -0.0000001724);
  v58 = v53 * (0.000010735 / v196 * v52 + 1.0 / v31 * (0.00000664 / v196)) + v181 / __xb * (0.000010735 / v196 * v51 + 1.0 / v179 * (0.00000664 / v196));
  v59 = *(a2 + 344);
  v60 = *(a2 + 352);
  v61 = v38 * v55 + v37 * v59;
  v62 = v57 * v41 + v54 * 0.01 * v44;
  v63 = v57 * v42 + v54 * 0.01 * v43;
  v64 = v57 * v55 + v54 * 0.01 * v59;
  v65 = *(a2 + 504);
  v66 = *(a2 + 512);
  *(a2 + 552) = v61 + v39 * v65 + v40 * v49;
  v67 = v38 * v56 + v37 * v60 + v39 * v66;
  v68 = *(a2 + 248);
  *(a2 + 560) = v67 + v40 * v68;
  v69 = *(a2 + 272);
  *(a2 + 584) = v40 * v69;
  *(a2 + 592) = v62 + v58 * 0.01 * v45;
  *(a2 + 600) = v63 + v58 * 0.01 * v46 + v53 * v48 * v50;
  *(a2 + 608) = v64 + v58 * 0.01 * v65 + v53 * v48 * v49;
  *(a2 + 616) = v57 * v56 + v54 * 0.01 * v60 + v58 * 0.01 * v66 + v53 * v48 * v68;
  v70 = *(a2 + 256);
  *(a2 + 568) = v40 * v70.f64[0];
  *(a2 + 576) = vmuld_lane_f64(v40, v70, 1);
  *(a2 + 624) = vmulq_n_f64(v70, v53 * v48);
  *(a2 + 640) = v53 * v48 * v69;
LABEL_24:
  v146 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::ParameterizedTroposphereModel::GetZenithDelays(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 48) || *(a1 + 16))
  {
    return 1;
  }

  v4 = (a2 + 360);
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = *(a2 + 288);
  v8 = *(a2 + 280) / 100.0;
  v9 = *(a2 + 320) / 100.0;
  v10 = *(a2 + 304);
  v11 = v6 / 1000.0;
  if (fabs(v10) <= nextafter(1.0, INFINITY) + -1.0)
  {
    v85 = v5 + v5;
    v86 = cos(v5 + v5) * -0.0026 + 1.0 + v11 * -0.00028;
    v87 = v8 * 0.002277 / v86;
    v88 = (1255.0 / v7 + 0.05) * 0.002277;
    v89 = v9 * v88;
    if (*(a2 + 64) == 1)
    {
      v90 = v9;
      v91 = v87 / v8;
      v92 = v87 / v86;
      v93 = v87 / v86 * -0.0052;
      v94 = v85;
      v95 = v90;
      v96 = sin(v94) * v93;
      v97 = v91 * 0.01 * *(a2 + 328);
      v98 = v92 * 0.00028 * 0.001;
      v99 = v98 * *(a2 + 152) + v91 * 0.01 * *(a2 + 352) + v96 * *(a2 + 176);
      v100 = -2.857635 / (v7 * v7) * v95;
      *(a2 + 696) = 0;
      *(a2 + 712) = 0;
      *(a2 + 704) = 0;
      *(a2 + 752) = 0;
      *(a2 + 768) = 0;
      *(a2 + 760) = 0;
      *(a2 + 664) = v97 / 299792458.0;
      v101 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(a2 + 136), v98), *(a2 + 336), v91 * 0.01), *(a2 + 160), v96);
      v102 = vdupq_n_s64(0x41B1DE784A000000uLL);
      *(a2 + 672) = vdivq_f64(v101, v102);
      *(a2 + 688) = v99 / 299792458.0;
      v103 = vdivq_f64(vmlaq_n_f64(vmulq_n_f64(v4[8], v88 * 0.01), *v4, v100), v102);
      v104 = vdivq_f64(vmlaq_n_f64(vmulq_n_f64(v4[9], v88 * 0.01), v4[1], v100), v102);
      *(a2 + 720) = v103;
      *(a2 + 736) = v104;
    }

    result = 0;
    *(a2 + 648) = v87 / 299792458.0;
    v84 = v89 / 299792458.0;
    goto LABEL_12;
  }

  v12 = v7 - v10 * v6;
  if (v12 >= 0.0)
  {
    v13 = v8;
    v120 = v6;
    v14 = 0.0341631126 / v10;
    v15 = v7;
    v16 = *(a2 + 312) + 1.0;
    v122 = v15;
    v17 = v10;
    v18 = v12 / v15;
    v124 = v12;
    v112 = v13;
    v19 = v13 * pow(v12 / v15, v14);
    v123 = v14;
    __x = v18;
    v20 = v18;
    v21 = v17;
    v117 = v14 * v16;
    v116 = v9;
    v22 = v9 * pow(v20, v14 * v16);
    v23 = tan(v5);
    v119 = v23 * 0.99330562;
    v24 = atan(v23 * 0.99330562);
    v25 = v24 + v24;
    v26 = cos(v24 + v24) * -0.00266 + 1.0 + v11 * -0.00028;
    v27 = v26 * 9.784;
    v121 = v16;
    v28 = v26 * 9.784 * v16;
    v29 = 0.0022768 / v26;
    v30 = 0.0022768 / v26 * v19;
    v118 = v22;
    v31 = v22 * ((377600.0 / (v124 * (1.0 - v17 * 287.053763 / v28)) + 16.5220718) * 0.000001 * 287.053763) / v28;
    if (*(a2 + 64) == 1)
    {
      v110 = -v17;
      v111 = v19 * (-0.0022768 / (v26 * v26));
      v105 = v19 / v112;
      v32 = v123 * v19 / v124;
      v109 = v23;
      v33 = v123 * v19 / v122;
      v34 = __x;
      v113 = v27;
      __xa = v30;
      v107 = v28;
      v106 = v124 * (1.0 - v17 * 287.053763 / v28);
      v35 = log(v34);
      v108 = v35 * v19;
      v36 = v35;
      v37 = -v123 / v17;
      v38 = sin(v25);
      v39 = v29 * (v32 - v33);
      v40 = v29 * v105 * 0.01;
      v41 = *(a2 + 360);
      v42 = v39 * v41 + v40 * *(a2 + 328);
      v43 = *(a2 + 384);
      v44 = v39 * v43 + v40 * *(a2 + 352);
      v45 = *(a2 + 368);
      v46 = v118 / v116 * (v31 / v118) * 0.01;
      v47 = v118 * (-0.3776 / (v106 * v106) * 287.053763) / v107;
      v48 = v106 / v124 * v47;
      v49 = v117 * v118 / v124 * (v31 / v118);
      v50 = v49 + v48 - v117 * v118 / v122 * (v31 / v118);
      v51 = v46 * *(a2 + 488) + v50 * v41;
      v52 = v46 * *(a2 + 512) + v50 * v43;
      v53 = vmlaq_n_f64(vmulq_n_f64(*(a2 + 496), v46), v45, v50);
      v54 = v47 * (v124 * -287.053763 / v107) - v120 * v48 - v49 * v120 + v121 * (v36 * v118) * (v31 / v118) * v37;
      v55 = v29 * (v37 * v108 - v32 * v120);
      v56 = *(a2 + 424);
      v57 = v42 + v55 * v56;
      v58 = v51 + v54 * v56;
      v59 = *(a2 + 448);
      v60 = v44 + v55 * v59;
      v61 = v52 + v54 * v59;
      v62 = *(a2 + 432);
      v63 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v45, v39), *(a2 + 336), v40), v62, v55);
      v64 = vmlaq_n_f64(v53, v62, v54);
      v65 = v38 * 0.00532;
      v66 = (v109 * v109 + 1.0) * 0.99330562 / (v119 * v109 + 1.0);
      v67 = -v31 / v107;
      v68 = v21 * v124 * 287.053763 / (v107 * v107);
      v69 = v49 * v110 + v47 * (v121 * v68 * 9.784 * -0.00028 * 0.001 - v21 * (v106 / v124)) + v121 * v67 * 9.784 * -0.00028 * 0.001;
      v70 = v111 * -0.00028 * 0.001 - v21 * (v29 * v32);
      v71 = v113 * v67 + v113 * (v68 * v47) + v123 * (v36 * v118) * (v31 / v118);
      v45.f64[0] = v58 + v71 * *(a2 + 456);
      v72 = v66 * (v65 * v111);
      v73 = v61 + v71 * *(a2 + 480);
      v74 = vmlaq_n_f64(v64, *(a2 + 464), v71);
      v75 = *(a2 + 176);
      v76 = *(a2 + 152);
      v77 = v60 + v72 * v75 + v70 * v76;
      v78 = v73 + v69 * v76;
      v79 = *(a2 + 160);
      v80 = vmlaq_n_f64(v63, v79, v72);
      v81 = *(a2 + 136);
      v82 = v66 * (v65 * (v121 * (v67 + v47 * v68) * 9.784));
      *(a2 + 664) = v57 / 299792458.0;
      v83 = vdupq_n_s64(0x41B1DE784A000000uLL);
      *(a2 + 672) = vdivq_f64(vmlaq_n_f64(v80, v81, v70), v83);
      v30 = __xa;
      *(a2 + 688) = v77 / 299792458.0;
      *(a2 + 720) = v45.f64[0] / 299792458.0;
      v4[23] = vdivq_f64(vmlaq_n_f64(vmlaq_n_f64(v74, v81, v69), v79, v82), v83);
      *(a2 + 744) = (v78 + v82 * v75) / 299792458.0;
      *(a2 + 696) = 0;
      *(a2 + 712) = 0;
      *(a2 + 704) = 0;
      *(a2 + 752) = 0;
      *(a2 + 768) = 0;
      *(a2 + 760) = 0;
    }

    result = 0;
    *(a2 + 648) = v30 / 299792458.0;
    v84 = v31 / 299792458.0;
LABEL_12:
    *(a2 + 656) = v84;
    return result;
  }

  *(a2 + 648) = 0u;
  result = 0;
  if (*(a2 + 64) == 1)
  {
    *(a2 + 744) = 0uLL;
    *(a2 + 760) = 0uLL;
    *(a2 + 712) = 0uLL;
    *(a2 + 728) = 0uLL;
    *(a2 + 680) = 0uLL;
    *(a2 + 696) = 0uLL;
    *(a2 + 664) = 0uLL;
  }

  return result;
}

uint64_t cnnavigation::ParameterizedTroposphereModel::GetTroposphericDelay(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double *a5, char a6, float64x2_t *a7, double a8)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    goto LABEL_18;
  }

  v26 = a2;
  v27 = a8;
  v28 = *a3;
  v29 = *(a3 + 16);
  v30 = *a4;
  v31 = *(a4 + 16);
  v32 = a6;
  v33 = fmod((a8 + -432000.0) / 86400.0 + (a2 + -1564.0) * 7.0, 365.25);
  if (a6)
  {
    v35[2] = 0x3EE845C8A0CE5129;
    result = cnnavigation::ECEFToLLA(a3, 1, v34, 1, &v76);
    v36 = v76;
    v37 = v77;
    v38 = v78;
    v39 = v79;
    v40 = v80;
    if (result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = cnnavigation::ECEFToLLA(a3, 1, v34, 0, &v76);
    if (result)
    {
      goto LABEL_19;
    }
  }

  if (v32)
  {
    result = cnnavigation::SatElAz(a3, a4, 1, v35, 1, &v76);
    v41 = v76;
    v42 = v77;
    v43 = v78;
    if (result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = cnnavigation::SatElAz(a3, a4, 1, v35, 0, &v76);
    if (result)
    {
      goto LABEL_19;
    }
  }

  if (cnnavigation::ParameterizedTroposphereModel::GetOrthometricHeight(a1, &v26))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  if (cnnavigation::ParameterizedTroposphereModel::GetCurrentWeather(a1, &v26) || ((v32 & 1) == 0 ? (v15 = v45, v16 = v46, v17 = v44 / 100.0, v47 = (v17 * 0.00000314 + 1.00062 + (v15 + -273.15) * 0.00000056 * (v15 + -273.15)) * (v16 / 100.0 * (exp(v45 * -0.019121316 + v45 * 0.000012378847 * v45 + 33.9371105 + -6343.1645 / v45) * 0.01)) * 100.0) : COERCE_DOUBLE((sub_1D0C6A844(&v47, &v76, v44, v45, v46), v54 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v50, v76.f64[1]), v48, v76.f64[0]), v52, *&v77), v55 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v51, v76.f64[1]), v49, v76.f64[0]), v53, *&v77))), cnnavigation::ParameterizedTroposphereModel::GetZenithDelays(a1, &v26) || cnnavigation::ParameterizedTroposphereModel::GetMappingFunctions(a1, &v26)))
  {
LABEL_18:
    result = 1;
    goto LABEL_19;
  }

  v19 = v56;
  v20 = v66;
  v21 = v57;
  v22 = v67;
  *a5 = v57 * v67 + v56 * v66;
  result = 0;
  if (v32 == 1)
  {
    v23 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v59, v20), v69, v19), vmlaq_n_f64(vmulq_n_f64(v63, v22), v73, v21));
    v24 = v70;
    v25 = v60;
    *a7 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v58, v20), v68, v19), vmlaq_n_f64(vmulq_n_f64(v62, v22), v72, v21));
    a7[1] = v23;
    a7[2] = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v25, v20), v24, v19), vmlaq_n_f64(vmulq_n_f64(v64, v22), v74, v21));
    a7[3].f64[0] = v20 * v61 + v19 * v71 + v22 * v65 + v21 * v75;
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0C6A844(double *a1, float64x2_t *a2, double a3, double a4, double a5)
{
  v9 = a3 / 100.0;
  v10 = exp(a4 * -0.019121316 + a4 * 0.000012378847 * a4 + 33.9371105 + -6343.1645 / a4) * 0.01;
  v11 = v9 * 0.00000314 + 1.00062 + (a4 + -273.15) * 0.00000056 * (a4 + -273.15);
  v12 = v11 * (a5 / 100.0 * v10);
  *a1 = v12 * 100.0;
  if (a2)
  {
    v13 = v11 * v10 / 100.0;
    v14 = v12 / v11;
    v15.f64[0] = v14 * 100.0 * 0.00000314;
    v15.f64[1] = (a4 + -273.15) * 0.00000112 * v14 + v12 / v10 * ((a4 * 0.000024757694 + -0.019121316 + 6343.1645 / (a4 * a4)) * v10);
    *a2 = vmulq_f64(v15, xmmword_1D0E771E0);
    a2[1].f64[0] = v13 * 100.0;
  }
}

void *sub_1D0C6A998(void *result)
{
  result[1] = &unk_1F4CD61E0;
  result[5] = &unk_1F4CD5B78;
  *result = &unk_1F4CD5C28;
  return result;
}

void sub_1D0C6A9F8(void *a1)
{
  a1[1] = &unk_1F4CD61E0;
  a1[5] = &unk_1F4CD5B78;
  *a1 = &unk_1F4CD5C28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0C6AA70(void *result)
{
  *result = &unk_1F4CD61E0;
  result[4] = &unk_1F4CD5B78;
  return result;
}

void sub_1D0C6AAB0(void *a1)
{
  *a1 = &unk_1F4CD61E0;
  a1[4] = &unk_1F4CD5B78;
  JUMPOUT(0x1D387ECA0);
}

uint64_t cnnavigation::GNSSDopplerShift(void *a1, uint64_t a2, double *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7, double *a8, int8x16_t a9, int8x16_t a10, double a11)
{
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  return cnnavigation::GNSSDopplerShift(a1, &v13, a2, a3, a4, a5, a6, a7, a9, a10, a11, a8, 0, v12);
}

uint64_t cnnavigation::GNSSDopplerShift(void *a1, uint64_t a2, double *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7, double *a8, int8x16_t a9, int8x16_t a10, double a11, uint64_t a12)
{
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  return cnnavigation::GNSSDopplerShift(a1, &v13, a2, a3, a4, a5, a6, a7, a9, a10, a11, a8, 1u, a12);
}

uint64_t cnnavigation::GPSDopplerShift(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, int a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v22 = a9 - a11;
  v51 = 0.0;
  if (a8)
  {
    result = cnnavigation::GPSTimeOfFlight(a1, a2, a4, a5, a6, &v51, 1, v52, a9 - a11, a10);
    if (result)
    {
      return result;
    }

    v50 = 0.0;
    result = cnnavigation::GPSTimeOfFlightRate(a1, a2, a3, a4, a5, a6, &v50, 1, v22, a10, &v44);
  }

  else
  {
    result = cnnavigation::GPSTimeOfFlight(a1, a2, a4, a5, a6, &v51, 0, v52, a9 - a11, a10);
    if (result)
    {
      return result;
    }

    v50 = 0.0;
    result = cnnavigation::GPSTimeOfFlightRate(a1, a2, a3, a4, a5, a6, &v50, 0, v22, a10, v52);
  }

  if (!result)
  {
    v24 = v50;
    v43 = 0.0;
    if (cnnavigation::GPSSatelliteClockOffsetRate(a1, a4, &v43, a8, v42, v22 - v51))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v25 = v43;
      v26 = 1.0 - a12 - v24;
      v27 = a12 + v24 * (1.0 - a12);
      v28 = 1.0 - v26 * v43;
      v29 = v26 * v43 - v27 / v28;
      *a7 = v29 * a10;
      result = 0;
      if (a8)
      {
        v30 = 1.0 - v27 / (v28 * v28);
        v31 = (v24 + -1.0) / v28;
        v32 = (a12 + -1.0) / v28;
        v33 = v26 * (v42[0] * (1.0 - v52[0])) - v25 * v44;
        v34 = -v42[0];
        v35 = v47;
        v36 = v26 * -(v42[0] * v54) - v25 * v47;
        v37 = v49;
        v38 = -(v25 * v49);
        v39 = v32 * v44;
        v40 = v29 + a10 * (v32 * v45 + v30 * (v26 * (v42[1] - v42[0] * v52[1]) - v25 * v45));
        *a13 = (v32 * v44 + v30 * v33) * a10;
        *(a13 + 8) = v40;
        *(a13 + 16) = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v46, v32), vmlsq_lane_f64(vmulq_n_f64(vmulq_n_f64(v53, v34), v26), v46, v25, 0), v30), a10);
        *(a13 + 32) = (v32 * v35 + v30 * v36) * a10;
        *(a13 + 40) = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v48, v32), vmulq_n_f64(v48, -v25), v30), a10);
        *(a13 + 56) = (v32 * v37 + v30 * v38) * a10;
        *(a13 + 64) = (v30 * -v33 - v39) * a10;
        *(a13 + 72) = (v31 - v30 * v25) * a10;
      }
    }
  }

  return result;
}

uint64_t cnnavigation::NORADTLEEphemerides::NORADTLEEphemerides(uint64_t a1, const std::string *a2, std::string *a3, std::string *a4)
{
  *a1 = &unk_1F4CD6260;
  *(a1 + 8) = 0;
  sub_1D0B751F4((a1 + 16), &unk_1D0ED80C5);
  sub_1D0B751F4((a1 + 40), &unk_1D0ED80C5);
  sub_1D0B751F4((a1 + 64), &unk_1D0ED80C5);
  sub_1D0B751F4((a1 + 88), &unk_1D0ED80C5);
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  sub_1D0B751F4((a1 + 128), &unk_1D0ED80C5);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 457) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  cnnavigation::NORADTLEEphemerides::LoadNORADTLEFromStrings(a1, a2, a3, a4, v8, v9, v10, v11);
  return a1;
}