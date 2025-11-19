void sub_25D4C8610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, SsrwOOStorage *);
  ChAutoPtr<SsrwOOStorage>::~ChAutoPtr(va);
  ChAutoPtr<SsrwOOStorage>::~ChAutoPtr(va1);
  _Unwind_Resume(a1);
}

void OcBinaryWriter::copyStreamUsingTempBuffer(OcBinaryWriter *this, SsrwOOStream *a2, SsrwOOStream *a3, unsigned int a4, char **a5)
{
  v5 = 4000;
  v6 = a3;
  operator new[](4000);
}

void sub_25D4C891C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!v1)
  {
    JUMPOUT(0x25D4C88D8);
  }

  JUMPOUT(0x25D4C88A8);
}

void OcBinaryWriter::copyStream(OcBinaryWriter *this, SsrwOOStream *a2, SsrwOOStream *a3)
{
  (*(a2->var0 + 5))(a2);
  (*(*this + 40))(this);
  (*(a2->var0 + 2))(a2, 0, 0);
  (*(*this + 16))(this, 0, 0);
  v8 = 0;
  v5 = (*(a2->var0 + 21))(a2);
  Size = SsrwOOStgInfo::getSize(v5);
  OcBinaryWriter::copyStreamUsingTempBuffer(this, a2, Size, &v8, v7);
}

void sub_25D4C8AD4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4C8AC0);
}

void sub_25D4C8BE0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!v1)
  {
    JUMPOUT(0x25D4C8B9CLL);
  }

  JUMPOUT(0x25D4C8B6CLL);
}

uint64_t OcBinaryWriter::copyMissingChildStorageWithUnicodeName(SsrwOOStorage *this, SsrwOOStorage *a2, SsrwOOStorage *a3, const unsigned __int16 *a4)
{
  if (SsrwOOStorage::hasChild(a2, a3) && !SsrwOOStorage::hasChild(this, a3))
  {
    v7 = 0;
    v8 = 0;
    SsrwOOStorage::createStorage(this, a3);
  }

  return 1;
}

uint64_t *OcContact::clear(uint64_t *this)
{
  v1 = *this;
  if (((this[1] - *this) & 0x7FFFFFFF8) != 0)
  {
    v2 = this;
    v3 = 0;
    do
    {
      this = *(v1 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v1 = *v2;
      }

      *(v1 + 8 * v3++) = 0;
      v1 = *v2;
    }

    while (v3 < ((v2[1] - *v2) >> 3));
  }

  return this;
}

void OcContact::~OcContact(OcContact *this)
{
  OcContact::clear(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void *OcContactCollection::addContact(OcContactCollection *this, OcContact *a2)
{
  v5 = a2;
  v3 = *(this + 1);
  if (v3 >= *(this + 2))
  {
    result = std::vector<OcContact *,ChAllocator<OcContact *>>::__emplace_back_slow_path<OcContact * const&>(this, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 1) = result;
  return result;
}

uint64_t std::vector<OcContact *,ChAllocator<OcContact *>>::__emplace_back_slow_path<OcContact * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D4C8F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OcCustomProperty::~OcCustomProperty(OcCustomProperty *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4077774924);
  }

  *this = 0;
  SsrwOOPropVariant::~SsrwOOPropVariant((this + 8));
}

void XmlBufferOutputStream::XmlBufferOutputStream(XmlBufferOutputStream *this, char *a2, int a3)
{
  *this = &unk_286EC8808;
  *(this + 1) = a2;
  *(this + 4) = a3;
  *(this + 5) = 0;
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5100;
  }
}

void XmlBufferOutputStream::~XmlBufferOutputStream(XmlBufferOutputStream *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286EC8808;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286EC8808;
  JUMPOUT(0x25F897000);
}

void *XmlBufferOutputStream::write(XmlBufferOutputStream *this, const char *a2, int a3)
{
  v5 = *(this + 5);
  v6 = *(this + 4) - v5;
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = *(this + 4) - v5;
  }

  result = memmove((*(this + 1) + v5), a2, v7);
  *(this + 5) += v7;
  if (v6 < a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5100;
  }

  return result;
}

uint64_t OcMailRecord::makeMailRecord(OcMailRecord *this, int a2)
{
  v2 = this;
  result = 0;
  if (v2 <= 9)
  {
    switch(v2)
    {
      case 2:
        if (a2 == 12299)
        {
          operator new();
        }

        operator new();
      case 3:
        goto LABEL_13;
      case 4:
        operator new();
    }
  }

  else
  {
    if (v2 <= 30)
    {
      if (v2 != 10)
      {
        if (v2 == 11)
        {
          operator new();
        }

        return result;
      }

LABEL_13:
      operator new();
    }

    if (v2 == 31)
    {
      operator new();
    }

    if (v2 == 64)
    {
      operator new();
    }
  }

  return result;
}

uint64_t MR_3::accept(uint64_t a1, uint64_t a2)
{
  return (*(*a2 + 32))(a2, a1);
}

{
  return (*(*a2 + 32))(a2, a1);
}

uint64_t MR_2::accept(uint64_t a1, uint64_t a2)
{
  return (*(*a2 + 72))(a2, a1);
}

{
  return (*(*a2 + 72))(a2, a1);
}

uint64_t MR_4::accept(uint64_t a1, uint64_t a2)
{
  return (*(*a2 + 16))(a2, a1);
}

{
  return (*(*a2 + 16))(a2, a1);
}

uint64_t MR_1::accept(uint64_t a1, uint64_t a2)
{
  return (*(*a2 + 64))(a2, a1);
}

{
  return (*(*a2 + 64))(a2, a1);
}

void MR_Unicode::~MR_Unicode(MR_Unicode *this)
{
  *this = &unk_286EC89E0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40BDFB0063);
    *(this + 2) = 0;
  }
}

{
  *this = &unk_286EC89E0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40BDFB0063);
    *(this + 2) = 0;
  }

  JUMPOUT(0x25F897000);
}

uint64_t MR_Unicode::accept(uint64_t a1, uint64_t a2)
{
  return (*(*a2 + 48))(a2, a1);
}

{
  return (*(*a2 + 48))(a2, a1);
}

void MR_Ascii::~MR_Ascii(MR_Ascii *this)
{
  *this = &unk_286EC8A28;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4077774924);
    *(this + 2) = 0;
  }
}

{
  *this = &unk_286EC8A28;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4077774924);
    *(this + 2) = 0;
  }

  JUMPOUT(0x25F897000);
}

uint64_t MR_Ascii::accept(uint64_t a1, uint64_t a2)
{
  return (*(*a2 + 40))(a2, a1);
}

{
  return (*(*a2 + 40))(a2, a1);
}

void MR_Blob::~MR_Blob(MR_Blob *this)
{
  *this = &unk_286EC8A70;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4077774924);
    *(this + 2) = 0;
  }
}

{
  *this = &unk_286EC8A70;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4077774924);
    *(this + 2) = 0;
  }

  JUMPOUT(0x25F897000);
}

uint64_t MR_Blob::accept(uint64_t a1, uint64_t a2)
{
  return (*(*a2 + 56))(a2, a1);
}

{
  return (*(*a2 + 56))(a2, a1);
}

uint64_t OcMailRecordParserVisitor::visit(uint64_t a1, uint64_t a2)
{
  v6 = 12;
  (*(**(a1 + 8) + 56))(*(a1 + 8), a2 + 13, &v6);
  v5 = 16;
  return (*(**(a1 + 8) + 56))(*(a1 + 8), a2 + 25, &v5);
}

{
  v5 = 16;
  (*(**(a1 + 8) + 56))(*(a1 + 8), a2 + 13, &v5);
  (*(**(a1 + 8) + 56))(*(a1 + 8), a2 + 29, &v5);
  (*(**(a1 + 8) + 56))(*(a1 + 8), a2 + 45, &v5);
  result = (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(a2 + 61) = result;
  return result;
}

{
  result = (*(**(a1 + 8) + 72))(*(a1 + 8));
  *(a2 + 14) = result;
  return result;
}

{
  result = (*(**(a1 + 8) + 96))(*(a1 + 8));
  *(a2 + 16) = result;
  return result;
}

{
  *(a2 + 16) = (*(**(a1 + 8) + 96))(*(a1 + 8));
  result = (*(**(a1 + 8) + 96))(*(a1 + 8));
  *(a2 + 20) = result;
  return result;
}

void OcMailRecordParserVisitor::visit(OcMailRecordParserVisitor *this, MR_Unicode *a2)
{
  v2 = (*(**(this + 1) + 72))(*(this + 1));
  v3 = v2 >> 1;
  operator new[]((v2 & 0xFFFFFFFE) + 2);
}

void OcMailRecordParserVisitor::visit(OcMailRecordParserVisitor *this, MR_Blob *a2)
{
  v3 = (*(**(this + 1) + 72))(*(this + 1));
  *(a2 + 12) = v3;
  operator new[](v3);
}

void OCChRectI4WithCGRect(CGRect a1@<0:D0, 8:D1, 16:D2, 24:D3>, _DWORD *a2@<X8>)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v7 = llround(CGRectGetMinX(a1));
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = llround(CGRectGetMinY(v11));
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = llround(CGRectGetMaxX(v12));
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MaxY = CGRectGetMaxY(v13);
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = llround(MaxY);
}

void OcParser::~OcParser(OcParser *this)
{
  *this = &unk_286EC8B40;
}

{
  *this = &unk_286EC8B40;
  JUMPOUT(0x25F897000);
}

CsString *OcParser::makeStringFromStream(OcParser *this, CsString *a2, SsrwOOStream *a3, int a4, int a5)
{
  v6 = a4;
  if (a4 || (result = (*(a3->var0 + 10))(a3), (v6 = result) != 0))
  {
    CsString::reserve(a2, v6);
    v10[0] = v6;
    if (a5)
    {
      operator new[]((v6 + 1));
    }

    (*(a3->var0 + 17))(a3, v10, a2->var1);
    return CsString::setCount(a2, v10[0]);
  }

  return result;
}

CsString *OcParser::parseFromRecord(OcParser *this, int a2, FromRecord *a3, SsrwOOStream *a4)
{
  (*(a4->var0 + 12))(a4);
  v13 = 16;
  (*(a4->var0 + 7))(a4, a3 + 4, &v13);
  *a3 = (*(a4->var0 + 9))(a4);
  v7 = (*(a4->var0 + 9))(a4);
  v8 = v7;
  *(a3 + 1) = v7;
  if (*a3)
  {
    v7 = (*(a4->var0 + 12))(a4);
    v9 = -28;
  }

  else
  {
    v9 = -24;
  }

  v10 = v9 + a2;
  if ((v8 & 0x1000) != 0)
  {
    if (v10 >= 0x20000)
    {
      goto LABEL_12;
    }

    v10 >>= 1;
  }

  else if (v10 >= 0x10000)
  {
LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8001;
  }

  OcParser::makeStringFromStream(v7, a3 + 1, a4, v10, (v8 & 0x1000) == 0);
  result = (*(a4->var0 + 9))(a4);
  if (result)
  {
    return OcParser::makeStringFromStream(result, a3 + 2, a4, result, 0);
  }

  return result;
}

OcParser *OcParser::parse(OcParser *this, OcMsoEnvelope *a2, SsrwOOStream *a3, uint64_t a4, int a5)
{
  if (a5)
  {
    v7 = a4;
    v9 = this;
    *a2 = 1;
    (*(a3->var0 + 2))(a3, a4, 0);
    if ((*(a3->var0 + 9))(a3) != -4070)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 8010;
    }

    (*(a3->var0 + 2))(a3, (v7 + 20), 0);
    *(a2 + 1) = (*(a3->var0 + 12))(a3);
    (*(a3->var0 + 12))(a3);
    v10 = (*(a3->var0 + 12))(a3);
    *(a2 + 4) = v10;
    OcParser::makeStringFromStream(v10, a2 + 1, a3, 0, 0);
    v11 = (*(a3->var0 + 12))(a3);
    if (v11)
    {
      OcParser::parseFromRecord(v11, v11, (a2 + 48), a3);
    }

    else
    {
      (*(a3->var0 + 9))(a3);
    }

    if (!(*(a3->var0 + 9))(a3))
    {
      (*(a3->var0 + 9))(a3);
    }

    *(a2 + 3) = (*(a3->var0 + 12))(a3);
    *(a2 + 2) = (*(a3->var0 + 12))(a3);
    (*(a3->var0 + 12))(a3);
    (*(a3->var0 + 12))(a3);
    *(a2 + 60) = (*(a3->var0 + 12))(a3);
    v12 = (*(a3->var0 + 12))(a3);
    *(a2 + 61) = v12;
    OcParser::makeStringFromStream(v12, (a2 + 128), a3, 0, 0);
    (*(a3->var0 + 12))(a3);
    v13 = (*(a3->var0 + 12))(a3);
    *(a2 + 38) = v13;
    StringFromStream = OcParser::makeStringFromStream(v13, (a2 + 160), a3, 0, 0);
    OcParser::makeStringFromStream(StringFromStream, (a2 + 184), a3, 0, 1);
    (*(a3->var0 + 12))(a3);
    (*(a3->var0 + 12))(a3);
    OcParser::parseContactCollection(v9, (a2 + 208), a3);
    (*(a3->var0 + 12))(a3);
    (*(a3->var0 + 12))(a3);
    OcParser::parseContactCollection(v9, (a2 + 256), a3);
    (*(a3->var0 + 12))(a3);
    (*(a3->var0 + 12))(a3);
    OcParser::parseContactCollection(v9, (a2 + 232), a3);
    v15 = (*(a3->var0 + 12))(a3);
    if (v15 > (*(a3->var0 + 6))(a3))
    {
      v18 = __cxa_allocate_exception(4uLL);
      *v18 = 8001;
    }

    if (v15)
    {
      (*(a3->var0 + 12))(a3);
      OcMsoEnvelope::addAttachment(a2);
    }

    v19 = (*(a3->var0 + 12))(a3);
    CsString::reserve((a2 + 280), v19);
    (*(a3->var0 + 7))(a3, *(a2 + 36), &v19);
    CsString::setCount((a2 + 280), v19);
    this = (*(a3->var0 + 5))(a3);
    v16 = this - (a5 + v7);
    if (v16 >= 1)
    {
      OcMsoEnvelope::reserveExtraData(a2, v16);
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void sub_25D4CAB30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x25D4CAAA4);
  }

  _Unwind_Resume(a1);
}

uint64_t OcParser::parseContactCollection(OcParser *this, OcContactCollection *a2, SsrwOOStream *a3)
{
  v4 = (*(a3->var0 + 12))(a3);
  result = (*(a3->var0 + 6))(a3);
  if (v4 > result)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8001;
  }

  if (v4)
  {
    operator new();
  }

  return result;
}

uint64_t OcParser::parseMailRecord(OcParser *this, OcContact *a2, SsrwOOStream *a3)
{
  v5 = (*(a3->var0 + 8))(a3);
  (*(a3->var0 + 8))(a3);
  v6 = (*(a3->var0 + 9))(a3);
  MailRecord = OcMailRecord::makeMailRecord(v5, v6);
  v11[0] = MailRecord;
  v8 = *(a2 + 1);
  if (v8 >= *(a2 + 2))
  {
    v9 = std::vector<OcMailRecord *,ChAllocator<OcMailRecord *>>::__emplace_back_slow_path<OcMailRecord * const&>(a2, v11);
  }

  else
  {
    *v8 = MailRecord;
    v9 = (v8 + 1);
  }

  *(a2 + 1) = v9;
  if (!v5)
  {
    return (*(a3->var0 + 9))(a3);
  }

  MailRecord[5] = v6;
  v11[0] = &unk_286EC8AB8;
  v11[1] = a3;
  return (*(*MailRecord + 16))(MailRecord, v11);
}

uint64_t OcParser::parsePointI4FromStream@<X0>(OcParser *this@<X0>, SsrwOOStream *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = (*(*this + 96))(this, a2);
  result = (*(*this + 96))(this);
  *a3 = v5;
  a3[1] = result;
  return result;
}

unint64_t OcParser::parseSystemTimeFromStream(OcParser *this, SsrwOOStream *a2)
{
  v3 = (*(*this + 80))(this, a2);
  v4 = (*(*this + 80))(this);
  (*(*this + 80))(this);
  v5 = (*(*this + 80))(this);
  v6 = (*(*this + 80))(this);
  v7 = (*(*this + 80))(this);
  v8 = (*(*this + 80))(this);
  (*(*this + 80))(this);
  return (v7 << 40) | (v8 << 48) | (v6 << 32) | (v5 << 24) | (v4 << 16) | v3;
}

uint64_t std::vector<OcMsoEnvelope::Attachment *,ChAllocator<OcMsoEnvelope::Attachment *>>::__emplace_back_slow_path<OcMsoEnvelope::Attachment * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D4CB268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<OcMailRecord *,ChAllocator<OcMailRecord *>>::__emplace_back_slow_path<OcMailRecord * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D4CB388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OcText::remove(OcText *this, int a2, int a3)
{
  if (!a3 || (var3 = this->var3, a3 + a2 > var3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (a2 || var3 != a3)
  {
    isSingleByteEncoding = OcText::isSingleByteEncoding(this->var1);
    memmove(&this->var5[(a2 << (isSingleByteEncoding ^ 1)) + this->var2], &this->var5[(a2 << (isSingleByteEncoding ^ 1)) + this->var2 + (a3 << (isSingleByteEncoding ^ 1))], (var3 << (isSingleByteEncoding ^ 1)) - ((a3 << (isSingleByteEncoding ^ 1)) + (a2 << (isSingleByteEncoding ^ 1))));
    this->var3 -= a3;
  }

  else
  {
    var5 = this->var5;
    if (var5)
    {
      var4 = this->var4;

      bzero(var5, var4);
    }
  }
}

uint64_t OcText::convert(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v4 = result;
    v5 = *(result + 16);
    if (!v5)
    {
      goto LABEL_14;
    }

    if (v2)
    {
      result = OcText::convert((result + 32), *(result + 24), a2, v2, v5);
      if (result != -1)
      {
        v6 = result;
        if (*(v4 + 40) == 1)
        {
          result = *(v4 + 24);
          if (v6 <= *(v4 + 20))
          {
            memcpy(result, *(v4 + 32), v6);
            result = *(v4 + 32);
            if (result)
            {
              result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
            }

            *(v4 + 32) = 0;
            goto LABEL_14;
          }

          if (result)
          {
            result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
          }
        }

        else
        {
          *(v4 + 40) = 1;
        }

        *(v4 + 24) = *(v4 + 32);
        *(v4 + 32) = 0;
        *(v4 + 20) = v6;
LABEL_14:
        *(v4 + 8) = a2;
        return result;
      }

      exception = __cxa_allocate_exception(4uLL);
      v8 = 1009;
    }

    else
    {
      exception = __cxa_allocate_exception(4uLL);
      v8 = 1003;
    }

    *exception = v8;
  }

  return result;
}

uint64_t XmlBase64EncoderStream::XmlBase64EncoderStream(uint64_t result, uint64_t a2)
{
  *result = &unk_286EC8CA0;
  *(result + 8) = a2;
  *(result + 20) = 0;
  return result;
}

void XmlBase64EncoderStream::~XmlBase64EncoderStream(XmlBase64EncoderStream *this)
{
  *this = &unk_286EC8CA0;
  XmlBase64EncoderStream::Terminate(this);
}

{
  XmlBase64EncoderStream::~XmlBase64EncoderStream(this);

  JUMPOUT(0x25F897000);
}

XmlBase64EncoderStream *XmlBase64EncoderStream::write(XmlBase64EncoderStream *this, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v4 = this;
    v5 = this + 16;
    v6 = a3;
    LOBYTE(v7) = *(this + 20);
    do
    {
      v8 = *a2++;
      v5[v7] = v8;
      v7 = (*(v4 + 20))++ + 1;
      if (v7 == 3)
      {
        this = XmlBase64EncoderStream::flush(v4, 4);
        LOBYTE(v7) = 0;
        *(v4 + 20) = 0;
      }

      --v6;
    }

    while (v6);
  }

  return this;
}

uint64_t XmlBase64EncoderStream::flush(XmlBase64EncoderStream *this, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 16);
  v6[0] = XmlBase64EncoderStream::flush(char)::base64Table[v2 >> 2];
  v3 = *(this + 17);
  v6[1] = XmlBase64EncoderStream::flush(char)::base64Table[(v3 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v2 & 3))];
  v4 = *(this + 18);
  v6[2] = XmlBase64EncoderStream::flush(char)::base64Table[(v4 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v3 & 0xF))];
  v6[3] = XmlBase64EncoderStream::flush(char)::base64Table[v4 & 0x3F];
  return (*(**(this + 1) + 24))(*(this + 1), v6, a2);
}

_BYTE *XmlBase64EncoderStream::Terminate(_BYTE *this)
{
  v1 = this;
  v2 = this[20];
  if (this[20])
  {
    if (v2 == 2)
    {
      this[18] = 0;
      XmlBase64EncoderStream::flush(this, 3);
      v3 = v1 + 8;
    }

    else
    {
      if (v2 != 1)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 5100;
      }

      this[17] = 0;
      XmlBase64EncoderStream::flush(this, 2);
      v3 = v1 + 8;
      (*(**(v1 + 1) + 32))(*(v1 + 1), 61);
    }

    this = (*(**v3 + 32))(*v3, 61);
  }

  v1[20] = 0;
  return this;
}

void XmlHexEncoderStream::XmlHexEncoderStream(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286EC8CF8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  operator new[](64);
}

void XmlHexEncoderStream::~XmlHexEncoderStream(XmlHexEncoderStream *this)
{
  *this = &unk_286EC8CF8;
  *(this + 4) = 0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
}

{
  *this = &unk_286EC8CF8;
  *(this + 4) = 0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t XmlHexEncoderStream::write(uint64_t this, const char *a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = this;
    v6 = 0;
    v7 = *(this + 16);
    do
    {
      if (v7 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 + 15;
      }

      if ((v7 & 0xF) == 0)
      {
        if (a3 > 0x10 || v7)
        {
          (*(**(v5 + 8) + 32))(*(v5 + 8), 13);
          (*(**(v5 + 8) + 32))(*(v5 + 8), 10);
          (*(**(v5 + 8) + 32))(*(v5 + 8), 9);
          v7 = *(v5 + 16);
        }

        snprintf(*(v5 + 24), 0x40uLL, "0x%08X  - ", v7);
        (*(**(v5 + 8) + 16))(*(v5 + 8), *(v5 + 24), 14);
        v7 = *(v5 + 16);
      }

      v9 = (v8 & 0xFFFFFFF0) - v7 + 16;
      if (a3 - v6 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = a3 - v6;
      }

      this = XmlHexEncoderStream::flushChunk(v5, a2, v6, v10);
      v6 += v10;
      v7 = *(v5 + 16) + v10;
      *(v5 + 16) = v7;
    }

    while (v6 < a3);
  }

  return this;
}

uint64_t XmlHexEncoderStream::flushChunk(XmlHexEncoderStream *this, const char *a2, int a3, int a4)
{
  v5 = *(this + 3);
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = &a2[a3];
    v8 = a4;
    do
    {
      v9 = v7[v6];
      v10 = *(this + 3);
      if (v6 == 8)
      {
        v5 += snprintf(v5, v10 - v5 + 64, " ");
        v10 = *(this + 3);
      }

      v5 += snprintf(v5, v10 - v5 + 64, " %02X", v9);
      ++v6;
    }

    while (v8 != v6);
  }

  v11 = *(**(this + 1) + 16);

  return v11();
}

uint64_t XmlOutputStream::createStreamOfType(int a1)
{
  switch(a1)
  {
    case 3:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  return 0;
}

void *XmlUTF8EncoderStream::XmlUTF8EncoderStream(void *result, uint64_t a2)
{
  *result = &unk_286EC8D50;
  result[1] = a2;
  return result;
}

uint64_t XmlUTF8EncoderStream::write(uint64_t this, const char *a2, int a3)
{
  v10 = 0;
  v8 = 6;
  __dst = 0;
  if (a3 >= 1)
  {
    v4 = this;
    v5 = a3;
    do
    {
      v6 = *a2++;
      CsUTF8CharFromWideChar(v6, &__dst, &v8);
      if (v8 <= 0)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 5100;
      }

      this = (*(**(v4 + 8) + 16))(*(v4 + 8), &__dst);
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t XmlUTF8EncoderStream::write(uint64_t this, const unsigned __int16 *a2, int a3)
{
  v10 = 0;
  __dst = 0;
  if (a3 >= 1)
  {
    v4 = this;
    v5 = a3;
    do
    {
      v8 = 6;
      v6 = *a2++;
      CsUTF8CharFromWideChar(v6, &__dst, &v8);
      if (v8 <= 0)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 5100;
      }

      this = (*(**(v4 + 8) + 16))(*(v4 + 8), &__dst);
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t XmlUTF8EncoderStream::write(XmlUTF8EncoderStream *this, uint64_t a2)
{
  v7 = 0;
  v5 = 6;
  __dst = 0;
  CsUTF8CharFromWideChar(a2, &__dst, &v5);
  if (v5 <= 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5100;
  }

  return (*(**(this + 1) + 16))(*(this + 1), &__dst);
}

void XmlWriter::XmlWriter(XmlWriter *this, XmlOutputStream *a2, int a3)
{
  *this = &unk_286EC8DA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 10;
  *(this + 11) = 0;
  CsString::CsString(this + 4);
  *(this + 30) = 0;
  *(this + 124) = 0;
  if (a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  *(this + 1) = XmlOutputStream::createStreamOfType(v5);
  XmlWriter::setIDPrefix(this, "_id");
}

void XmlWriter::setIDPrefix(XmlWriter *this, const char *__s)
{
  v3 = strlen(__s);
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  v5 = (v3 << 32) + 0x100000000;
  if (v5 >> 32 < 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5 >> 32;
  }

  operator new[](v6);
}

void XmlWriter::~XmlWriter(XmlWriter *this)
{
  *this = &unk_286EC8DA8;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 1) = 0;
  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8077774924);
  }

  *(this + 11) = 0;
  CsString::~CsString(this + 4);
  ChStack<CsString>::~ChStack(this + 6);
}

{
  XmlWriter::~XmlWriter(this);

  JUMPOUT(0x25F897000);
}

uint64_t XmlWriter::openNode(CsString *this, const char *a2, uint64_t a3)
{
  if (LODWORD(this[5].var0) == 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5101;
  }

  XmlWriter::closeCurrentElement(this, 1);
  XmlWriter::writeIndent(this, this[2].var2);
  (*(*this[1].var0 + 4))(this[1].var0, 60);
  result = (*(*this[1].var0 + 2))(this[1].var0, a2, a3);
  if (a3 >= 1 && *a2 == 63)
  {
    v7 = 2;
  }

  else
  {
    result = strcmp(a2, "!DOCTYPE");
    if (result)
    {
      this[4].var2 = 0;
      bzero(this[4].var1, 2 * this[4].var3);
      CsString::append(this + 4, a2, a3);
      result = ChStack<CsString>::push(&this[2], this + 4);
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }
  }

  LODWORD(this[5].var0) = v7;
  return result;
}

uint64_t XmlWriter::addAttribute(char **a1, const char *a2, int a3, int a4)
{
  switch(a4)
  {
    case 2:
      dwordToBinary(a1[11], a3);
      break;
    case 1:
      snprintf(a1[11], 0x100uLL, "0x%08X");
      break;
    case 0:
      snprintf(a1[11], 0x100uLL, "%u");
      break;
  }

  v6 = a1[11];
  if (v6)
  {
    v7 = strlen(a1[11]);
  }

  else
  {
    v7 = 0;
  }

  return XmlWriter::addAttribute(a1, a2, v6, v7, 0);
}

uint64_t dwordToBinary(char *a1, int a2)
{
  byteToBinary(a1, SHIBYTE(a2));
  byteToBinary((a1 + 8), SBYTE2(a2));
  byteToBinary((a1 + 16), SBYTE1(a2));

  return byteToBinary((a1 + 24), a2);
}

uint64_t byteToBinary(uint64_t result, char a2)
{
  if (result)
  {
    if (a2 >= 0)
    {
      v2 = 48;
    }

    else
    {
      v2 = 49;
    }

    *result = v2;
    v3 = vbsl_s8(vmovn_s32(vceqzq_s32(vandq_s8(vdupq_n_s32(a2), xmmword_25D6FDE40))), 0x30003000300030, 0x31003100310031);
    *(result + 1) = vuzp1_s8(v3, v3).u32[0];
    if ((a2 & 4) != 0)
    {
      v4 = 49;
    }

    else
    {
      v4 = 48;
    }

    *(result + 5) = v4;
    if ((a2 & 2) != 0)
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    *(result + 6) = v5;
    if (a2)
    {
      v6 = 49;
    }

    else
    {
      v6 = 48;
    }

    *(result + 7) = v6;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t XmlWriter::addAttribute(XmlWriter *this, const char *a2, const char *a3, uint64_t a4, int a5)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "NULL";
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = "NULL";
  }

  v7 = *(this + 30);
  if (!v7)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5103;
  }

  v11 = strlen(v5);
  if (v7 == 5)
  {
    XmlWriter::closeAttribute(this);
  }

  (*(**(this + 3) + 32))(*(this + 3), 32);
  if (v11)
  {
    (*(**(this + 3) + 16))(*(this + 3), v5, v11);
    (*(**(this + 3) + 16))(*(this + 3), "=", 2);
  }

  if (a5)
  {
    result = XmlWriter::escapeText(this, v6, a4, 1, 1);
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    result = (*(**(this + 3) + 16))(*(this + 3), v6, a4);
    if (!v11)
    {
      return result;
    }
  }

  v13 = *(**(this + 3) + 32);

  return v13();
}

uint64_t XmlWriter::closeAttribute(XmlWriter *this)
{
  if (*(this + 30) != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5106;
  }

  (*(**(this + 1) + 40))(*(this + 1));
  result = (*(**(this + 3) + 32))(*(this + 3), 34);
  *(this + 30) = 3;
  return result;
}

uint64_t XmlWriter::escapeText(XmlWriter *this, const char *a2, int a3, char a4, char a5)
{
  result = *(this + 2);
  if (result)
  {
    v8 = *(*result + 16);

    return v8();
  }

  else if (a3 >= 1)
  {
    v11 = a3;
    do
    {
      v12 = *a2++;
      result = XmlWriter::escapeCharacter(this, v12, a4, a5);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t XmlWriter::writeIndent(uint64_t this, int a2)
{
  if ((*(this + 124) & 1) == 0)
  {
    v2 = this;
    v3 = *(this + 40) + a2;
    if (v3 >= 1)
    {
      do
      {
        this = (*(**(v2 + 24) + 32))(*(v2 + 24), 9);
        --v3;
      }

      while (v3);
    }
  }

  return this;
}

uint64_t XmlWriter::escapeText(XmlWriter *this, const unsigned __int16 *a2, int a3, char a4, char a5)
{
  result = *(this + 2);
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  else if (a3 >= 1)
  {
    v11 = a3;
    do
    {
      v12 = *a2++;
      result = XmlWriter::escapeCharacter(this, v12, a4, a5);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t XmlWriter::escapeCharacter(XmlWriter *this, int a2, char a3, char a4)
{
  if (a2 <= 37)
  {
    if (a2 == 10 || a2 == 13)
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    if (a2 == 34)
    {
      if (a4)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

LABEL_14:
    if ((a2 - 127) > 0xFFA0u)
    {
      goto LABEL_15;
    }

LABEL_19:
    snprintf(XmlWriter::escapeCharacter(unsigned short,BOOL,BOOL)::code, 0xFuLL, "&#%d;", a2);
LABEL_20:
    v7 = *(**(this + 3) + 16);

    return v7();
  }

  if (a2 > 59)
  {
    if (a2 == 60 || a2 == 62)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (a2 == 38)
  {
    goto LABEL_19;
  }

  if (a2 != 39)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    goto LABEL_20;
  }

LABEL_15:
  v5 = *(**(this + 3) + 32);

  return v5();
}

_DWORD *XmlWriter::closeCurrentElement(_DWORD *this, int a2)
{
  v2 = this;
  v3 = this[30];
  if (v3)
  {
    v4 = v3 == 4;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (v3 == 5)
    {
      XmlWriter::closeAttribute(this);
      v3 = v2[30];
    }

    if (v3 == 2)
    {
      (*(**(v2 + 3) + 32))(*(v2 + 3), 63);
    }

    this = (*(**(v2 + 3) + 32))(*(v2 + 3), 62);
    if (a2 && (v2[31] & 1) == 0)
    {
      this = (*(**(v2 + 3) + 32))(*(v2 + 3), 10);
    }
  }

  v2[30] = 0;
  return this;
}

uint64_t XmlWriter::closeNode(CsString *this, unsigned __int16 *a2, int a3)
{
  (*(*this->var1 + 40))(this->var1);
  var0 = this[5].var0;
  if (var0 == 5)
  {
    XmlWriter::closeAttribute(this);
    var0 = this[5].var0;
  }

  v7 = 1;
  if (var0 <= 1)
  {
    if (var0)
    {
      if (var0 != 1)
      {
        goto LABEL_21;
      }

      (*(*this[1].var0 + 4))(this[1].var0, 62);
      goto LABEL_11;
    }

    var2 = this[2].var2;
    if (!var2)
    {
LABEL_34:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 5102;
    }

    XmlWriter::writeIndent(this, var2 - 1);
LABEL_17:
    (*(*this[1].var0 + 2))(this[1].var0, "</", 2);
    v9 = ChStack<CsString>::top(&this[2]);
    this[4].var2 = 0;
    bzero(this[4].var1, 2 * this[4].var3);
    CsString::append(this + 4, v9);
    if (this[4].var1)
    {
      var1 = this[4].var1;
    }

    else
    {
      var1 = &unk_25D6FDE70;
    }

    (*(*this[1].var0 + 3))(this[1].var0, var1, this[4].var2);
    (*(*this[1].var0 + 4))(this[1].var0, 62);
    v7 = 1;
    goto LABEL_21;
  }

  if (var0 == 4)
  {
    if (!this[2].var2)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  if (var0 != 3)
  {
    if (var0 != 2)
    {
      goto LABEL_21;
    }

    (*(*this[1].var0 + 2))(this[1].var0, "?>", 2);
LABEL_11:
    v7 = 0;
    goto LABEL_21;
  }

  (*(*this[1].var0 + 2))(this[1].var0, "/>", 2);
LABEL_21:
  if ((BYTE4(this[5].var0) & 1) == 0)
  {
    (*(*this[1].var0 + 4))(this[1].var0, 10);
  }

  result = 0;
  LODWORD(this[5].var0) = 0;
  if (v7)
  {
    XmlWriter::popLevel(this, this + 4);
    result = 0;
    if (a2)
    {
      if (a3 >= 1)
      {
        v12 = this[4].var2;
        if (a3 <= v12 || (a3 = v12, v12 >= 1))
        {
          if (this[4].var1)
          {
            v13 = this[4].var1;
          }

          else
          {
            v13 = &unk_25D6FDE70;
          }

          _ChWcsncpy(a2, v13, a3);
          a2[a3 - 1] = 0;
        }

        return 1;
      }
    }
  }

  return result;
}

CsString *XmlWriter::popLevel(XmlWriter *this, CsString *a2)
{
  v4 = ChStack<CsString>::top(this + 48);
  a2->var2 = 0;
  bzero(a2->var1, 2 * a2->var3);
  result = CsString::append(a2, v4);
  --*(this + 16);
  return result;
}

uint64_t XmlWriter::openAttribute(XmlWriter *this, const char *a2, uint64_t a3)
{
  if (*(this + 30) != 3 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5104;
  }

  (*(**(this + 3) + 32))(*(this + 3), 32);
  (*(**(this + 3) + 16))(*(this + 3), a2, a3);
  result = (*(**(this + 3) + 16))(*(this + 3), "=", 2);
  *(this + 30) = 5;
  return result;
}

uint64_t XmlWriter::appendAttribute(XmlWriter *this, const unsigned __int16 *a2, int a3, int a4)
{
  if (*(this + 30) != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5105;
  }

  if (a4)
  {

    return XmlWriter::escapeText(this, a2, a3, 1, 1);
  }

  else
  {
    v6 = *(**(this + 3) + 24);

    return v6();
  }
}

XmlWriter *XmlWriter::appendAttribute(XmlWriter *this, const char *a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v7 = this;
    for (i = 0; i < a3; i += v9)
    {
      if (a3 - i >= 35)
      {
        v9 = 35;
      }

      else
      {
        v9 = a3 - i;
      }

      if (a3 - i >= 1)
      {
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        v11 = &a2[i];
        v12 = XmlWriter::appendAttribute(char const*,int,BOOL)::wideString;
        do
        {
          v13 = *v11++;
          *v12++ = v13;
          --v10;
        }

        while (v10);
      }

      this = XmlWriter::appendAttribute(v7, XmlWriter::appendAttribute(char const*,int,BOOL)::wideString, v9, a4);
    }
  }

  return this;
}

uint64_t XmlWriter::appendAttributeBase64(XmlWriter *this, const unsigned __int16 *a2)
{
  if (*(this + 30) != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5105;
  }

  v3 = *(**(this + 1) + 16);

  return v3();
}

uint64_t XmlWriter::appendAttributeBase64(XmlWriter *this, const unsigned __int8 *a2)
{
  if (*(this + 30) != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5105;
  }

  v3 = *(**(this + 1) + 16);

  return v3();
}

XmlWriter *XmlWriter::appendAttributeHex(XmlWriter *this, const unsigned __int8 *a2, int a3)
{
  v26 = this;
  if (*(this + 30) != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5105;
  }

  if (a3 < 17)
  {
    if (a3 < 1)
    {
      return this;
    }
  }

  else
  {
    XmlWriter::appendAttribute(this, "\n", 1, 0);
  }

  v4 = 0;
  v5 = 0;
  v6 = a3;
  do
  {
    v27 = v6 - 16;
    if (v6 >= 16)
    {
      v7 = 16;
    }

    else
    {
      v7 = v6;
    }

    if (a3 - 16 * v5 >= 16)
    {
      v8 = 16;
    }

    else
    {
      v8 = a3 - 16 * v5;
    }

    v9 = a3 - v4;
    if (a3 - v4 >= 16)
    {
      v10 = 16;
    }

    else
    {
      v10 = a3 - v4;
    }

    v11 = &XmlWriter::appendAttributeHex(unsigned char const*,unsigned int)::buffer;
    if (a3 >= 17)
    {
      v25 = v10;
      v12 = v5;
      v13 = v8;
      snprintf(&XmlWriter::appendAttributeHex(unsigned char const*,unsigned int)::buffer, 0x50uLL, "%04lX", v4);
      v14 = strlen(&XmlWriter::appendAttributeHex(unsigned char const*,unsigned int)::buffer);
      v8 = v13;
      v5 = v12;
      v10 = v25;
      v15 = &XmlWriter::appendAttributeHex(unsigned char const*,unsigned int)::buffer + v14;
      *v15 = 8224;
      v15[2] = 32;
      v11 = (&XmlWriter::appendAttributeHex(unsigned char const*,unsigned int)::buffer + v14 + 3);
    }

    if (v9 < 1)
    {
      v18 = v11;
    }

    else
    {
      v16 = 0;
      do
      {
        v17 = a2[v16];
        *v11 = sHexConversions[v17 >> 4];
        *(v11 + 1) = sHexConversions[v17 & 0xF];
        v18 = (v11 + 3);
        *(v11 + 2) = 32;
        ++v16;
        v11 = (v11 + 3);
      }

      while (v16 < v10);
    }

    if (a3 >= 17 && v9 <= 15)
    {
      v19 = 3 * (15 - v7);
      v20 = v10;
      memset(v18, 32, 3 * (15 - v8) + 3);
      v10 = v20;
      v18 = (v18 + v19 + 3);
    }

    *v18 = 8224;
    v21 = v18 + 1;
    if (v9 >= 1)
    {
      v22 = 0;
      do
      {
        v23 = a2[v22];
        if ((v23 - 32) >= 0x5F)
        {
          LOBYTE(v23) = 46;
        }

        *(v21 + v22++) = v23;
      }

      while (v22 < v10);
      LODWORD(v21) = v21 + v22;
    }

    this = XmlWriter::appendAttribute(v26, &XmlWriter::appendAttributeHex(unsigned char const*,unsigned int)::buffer, v21 - &XmlWriter::appendAttributeHex(unsigned char const*,unsigned int)::buffer, 1);
    if (a3 > 16)
    {
      this = XmlWriter::appendAttribute(v26, "\n", 1, 0);
    }

    v4 += 16;
    ++v5;
    a2 += 16;
    v6 = v27;
  }

  while (v4 < a3);
  return this;
}

CsString *ChStack<CsString>::push(uint64_t a1, const CsString *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (v4 + 1 > v5)
  {
    v6 = *(a1 + 24) + v5;
    *(a1 + 20) = v6;
    operator new[](24 * v6 + 16);
  }

  v7 = (*a1 + 24 * v4);
  v7->var2 = 0;
  bzero(v7->var1, 2 * v7->var3);
  result = CsString::append(v7, a2);
  ++*(a1 + 16);
  return result;
}

void sub_25D4CD77C(_Unwind_Exception *exception_object)
{
  for (; v2; v2 += 24)
  {
    CsString::~CsString(v1--);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ChStack<CsString>::top(uint64_t a1)
{
  if (!*a1 || (v1 = *(a1 + 16)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

  return *a1 + 24 * (v1 - 1);
}

uint64_t *ChStack<CsString>::~ChStack(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 24 * v4 - 24);
      v6 = -24 * v4;
      do
      {
        CsString::~CsString(v5);
        v5 = (v7 - 24);
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x25F896FE0](v3, 0x1091C803BDA009ALL);
  }

  *a1 = 0;
  v8 = a1[1];
  if (v8)
  {
    v9 = v8 - 16;
    v10 = *(v8 - 8);
    if (v10)
    {
      v11 = (v8 + 24 * v10 - 24);
      v12 = -24 * v10;
      do
      {
        CsString::~CsString(v11);
        v11 = (v13 - 24);
        v12 += 24;
      }

      while (v12);
    }

    MEMORY[0x25F896FE0](v9, 0x1091C803BDA009ALL);
  }

  *a1 = 0;
  a1[1] = 0;
  *(a1 + 6) = 0;
  a1[2] = 0;
  return a1;
}

uint64_t OCCCommonHmac::getOutputSize(OCCCommonHmac *this)
{
  if (*(this + 2) == 1)
  {
    return 16;
  }

  else
  {
    return 20;
  }
}

uint64_t OCCHmac::createFromName(OCCHmac *this, const char *a2)
{
  if (!strcmp(this, "SHA1") || !strcmp(this, "SHA-1"))
  {
    operator new();
  }

  if (!strcmp(this, "SHA256") || !strcmp(this, "SHA-256"))
  {
    operator new();
  }

  if (!strcmp(this, "SHA384") || !strcmp(this, "SHA-384"))
  {
    operator new();
  }

  if (!strcmp(this, "SHA512") || !strcmp(this, "SHA-512"))
  {
    operator new();
  }

  if (!strcmp(this, "MD5"))
  {
    operator new();
  }

  return 0;
}

uint64_t SsrwStrToStr2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a3)
  {
    while (*(a2 + v3))
    {
      *(result + 2 * v3) = *(a2 + v3);
      if (a3 == ++v3)
      {
        v3 = a3;
        break;
      }
    }
  }

  *(result + 2 * v3) = 0;
  return result;
}

FILE *SsrwFalseWFopen(uint64_t a1, uint64_t a2)
{
  v4 = 0;
    ;
  }

  v6 = 0;
    ;
  }

  v8 = malloc_type_malloc(v4, 0x100004077774924uLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = malloc_type_malloc(v4, 0x100004077774924uLL);
  if (!v10)
  {
    free(v9);
    return 0;
  }

  v11 = v10;
  v12 = 0;
  if (v4)
  {
    while (1)
    {
      v13 = *(a1 + 2 * v12);
      if (!v13)
      {
        break;
      }

      *(v9 + v12++) = v13;
      if (v4 == v12)
      {
        v12 = v4;
        break;
      }
    }
  }

  *(v9 + v12) = 0;
  v14 = 0;
  if (v6)
  {
    while (1)
    {
      v15 = *(a2 + 2 * v14);
      if (!v15)
      {
        break;
      }

      v10[v14++] = v15;
      if (v6 == v14)
      {
        v14 = v6;
        break;
      }
    }
  }

  v10[v14] = 0;
  v16 = fopen(v9, v10);
  free(v9);
  free(v11);
  return v16;
}

uint64_t SsrwOOMemStream::readUInt64(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) - v1 <= 7)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  result = CsLeReadUInt64(**(this + 1) + v1);
  *(this + 5) += 8;
  return result;
}

uint64_t SsrwOOMemStream::readUInt32(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) - v1 <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  result = CsLeReadSInt32((**(this + 1) + v1));
  *(this + 5) += 4;
  return result;
}

void SsrwOOMemStream::readFloat32(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) - v1 <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  CsLeReadFloat32(**(this + 1) + v1);
  *(this + 5) += 4;
}

uint64_t SsrwOOMemStream::readString8(uint64_t this, unsigned int *a2, char *a3)
{
  v4 = *a2;
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v6 = this;
    v7 = 0;
    while (1)
    {
      this = (*(*v6 + 64))(v6);
      a3[v7] = this;
      if (!this)
      {
        break;
      }

      if (v4 == ++v7)
      {
        a3[v4] = 0;
        goto LABEL_8;
      }
    }

    LODWORD(v4) = v7 + 1;
  }

LABEL_8:
  *a2 = v4;
  return this;
}

__n128 SsrwOOMemStream::setClass(SsrwOOMemStream *this, __n128 *a2)
{
  result = *a2;
  *(this + 24) = *a2;
  return result;
}

uint64_t SsrwOOPropertyStorage::getNumberOfProperties(uint64_t **this)
{
  v5 = 0;
  NumberOfProperties = propertyStorageGetNumberOfProperties(this[1], &v5);
  if (NumberOfProperties)
  {
    v3 = NumberOfProperties;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

BOOL SsrwOOPropertyStorage::getPropertyNameAndIDByIndex(uint64_t **this, unsigned int a2, char **a3, unsigned int *a4)
{
  PropertyNameAndIDByIndex = propertyStorageGetPropertyNameAndIDByIndex(this[1], a2, a3, a4);
  if (PropertyNameAndIDByIndex)
  {
    v5 = PropertyNameAndIDByIndex == 13;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = PropertyNameAndIDByIndex;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v7;
  }

  return PropertyNameAndIDByIndex != 13;
}

uint64_t SsrwOOPropertyStorage::freePropertyName(SsrwOOPropertyStorage *this, unsigned __int8 *a2)
{
  v5 = this;
  result = freeDocumentPropertyName(&v5);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOORootStorage::open(void *a1, const char *a2, int a3)
{
  if (a3)
  {
    LODWORD(result) = createStructuredStorage(a2, 1, a1 + 10);
    if (result)
    {
LABEL_6:
      v5 = result;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v5;
    }
  }

  else
  {
    LODWORD(result) = openStructuredStorage(a2, 0, a1 + 10);
    if (result)
    {
      goto LABEL_6;
    }
  }

  result = getStorageFromRoot(a1[10], a1);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t SsrwOORootStorage::openInStream(void *a1, uint64_t a2, int a3)
{
  LODWORD(result) = openStructuredStorageInStream(a2, a3, a1 + 10);
  if (result || (result = getStorageFromRoot(a1[10], a1), result))
  {
    v5 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v5;
  }

  return result;
}

uint64_t SsrwOORootStorage::createInStream(SsrwOORootStorage *this, __sFILE *a2, int8x8_t a3)
{
  LODWORD(result) = createStructuredStorageInStream(a2, 1, this + 10, a3);
  if (result || (result = getStorageFromRoot(*(this + 10), this), result))
  {
    v5 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v5;
  }

  return result;
}

uint64_t SsrwOORootStorage::createRWStorageInStream(SsrwOORootStorage *this, __sFILE *a2, int8x8_t a3)
{
  LODWORD(result) = createStructuredStorageInStream(a2, 2, this + 10, a3);
  if (result || (result = getStorageFromRoot(*(this + 10), this), result))
  {
    v5 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v5;
  }

  return result;
}

void SsrwOOStgInfo::SsrwOOStgInfo(SsrwOOStgInfo *this, const _StgInfo *a2)
{
  if (a2)
  {
    if (a2->var0)
    {
      *(this + 2) = 0u;
      *(this + 3) = 0u;
      *this = 0u;
      *(this + 1) = 0u;
      *(this + 8) = this;
      *(this + 72) = 0;
      v2 = *&a2->var7.var1;
      v4 = *&a2->var0;
      v3 = *&a2->var3;
      *(this + 2) = *&a2->var5;
      *(this + 3) = v2;
      *this = v4;
      *(this + 1) = v3;
      *this = this + 108;
      SsrwOOStgInfo::setNamePrivate<unsigned short>(this, a2->var0);
    }
  }
}

uint64_t SsrwOOStgInfo::setNamePrivate<unsigned short>(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *(result + 72) = 0;
    ;
  }

  if ((v2 - 1) > 0x23)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 18;
  }

  v4 = 0;
  v5 = **(result + 64);
  do
  {
    *(v5 + 2 * v4) = *(a2 + 2 * v4);
    ++v4;
  }

  while (v2 != v4);
  return result;
}

__n128 SsrwOOStgInfo::getCLSID(SsrwOOStgInfo *this, _SsrwOO_GUID *a2)
{
  result = *(*(this + 8) + 44);
  *a2 = result;
  return result;
}

uint64_t SsrwOOStgStream::readUInt64(SsrwOOStgStream *this)
{
  v5 = 0;
  v1 = readUInt64(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t SsrwOOStgStream::writeByte(SsrwOOStgStream *this, char a2)
{
  v6 = a2;
  v5 = 1;
  result = streamWrite(*(this + 24), &v6, &v5);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeSInt16(SsrwOOStgStream *this, uint64_t a2)
{
  result = writeSInt16(*(this + 24), a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeUInt16(SsrwOOStgStream *this, uint64_t a2)
{
  result = writeSInt16(*(this + 24), a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeSInt32(SsrwOOStgStream *this, uint64_t a2)
{
  result = writeSInt32(*(this + 24), a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeUInt32(SsrwOOStgStream *this, uint64_t a2)
{
  result = writeSInt32(*(this + 24), a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeFloat32(SsrwOOStgStream *this, float a2)
{
  result = writeFloat32(*(this + 24), a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeFloat64(SsrwOOStgStream *this, double a2)
{
  result = writeFloat64(*(this + 24), a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeChar16(SsrwOOStgStream *this, uint64_t a2)
{
  result = writeSInt16(*(this + 24), a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t SsrwOOStgStream::writeString16(SsrwOOStgStream *this, unsigned __int16 *a2, unsigned int *a3)
{
  v7 = *a3;
  result = writeString16(*(this + 24), a2, &v7);
  if (result)
  {
    v5 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v5;
  }

  *a3 = v7;
  return result;
}

void SsrwOOStorage::createStorage(SsrwOOStorage *this, const char *__s)
{
  v4 = 0;
  do
  {
    this->var1[v4] = __s[v4];
    ++v4;
  }

  while (v4 <= strlen(__s));

  SsrwOOStorage::createStorage(this, this->var1);
}

void SsrwOOStorage::createStream(SsrwOOStorage *this, const char *__s)
{
  v4 = 0;
  do
  {
    this->var1[v4] = __s[v4];
    ++v4;
  }

  while (v4 <= strlen(__s));

  SsrwOOStorage::createStream(this, this->var1);
}

CsString *SsrwOOStream::readCsString(SsrwOOStream *this, CsString *a2)
{
  v4 = (*(this->var0 + 10))(this);
  result = CsString::setCount(a2, v4);
  if (v4)
  {
    v7 = v4;
    result = (*(this->var0 + 17))(this, &v7, a2->var1);
    if (v7 != v4)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 17;
    }
  }

  return result;
}

uint64_t SsrwOOStream::getSize(SsrwOOStream *this)
{
  v2 = (*(this->var0 + 5))(this);
  (*(this->var0 + 2))(this, 0, 2);
  v3 = (*(this->var0 + 5))(this);
  (*(this->var0 + 2))(this, v2, 0);
  return v3;
}

uint64_t directoryInvalidate(uint64_t a1)
{
  *(a1 + 8) = -1;
  *(a1 + 92) = -1;
  *(a1 + 100) = -1;
  *(a1 + 84) = 0;
  return 0;
}

uint64_t propertyStorageGetNumberOfProperties(uint64_t *a1, _DWORD *a2)
{
  if (a1 && a2 && (v2 = *a1) != 0)
  {
    return propertySetGetNumberOfProperties(v2, a2);
  }

  else
  {
    return 6;
  }
}

uint64_t setDocumentProperty(uint64_t a1, int a2, uint64_t a3, int a4, char *__s)
{
  v30 = 0;
  v31 = 0;
  if (!a1)
  {
    return 6;
  }

  v6 = 6;
  if ((a2 - 4) < 0xFFFFFFFD || !__s)
  {
    return v6;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        LOWORD(v27) = 3;
        LODWORD(v28) = *__s;
      }

      else
      {
        if (a4 != 2)
        {
          return v6;
        }

        LOWORD(v27) = 30;
        v17 = strlen(__s);
        v6 = 5;
        if (HIDWORD(v17))
        {
          return v6;
        }

        v18 = (v17 + 1);
        if (!v18)
        {
          return v6;
        }

        v19 = malloc_type_malloc(v18, 0x100004077774924uLL);
        v28 = v19;
        if (!v19)
        {
          return v6;
        }

        strcpy(v19, __s);
      }

      goto LABEL_29;
    }

    v21 = 2;
LABEL_27:
    LOWORD(v27) = v21;
    LOWORD(v28) = *__s;
    goto LABEL_29;
  }

  if (a4 > 4)
  {
    if (a4 != 5)
    {
      if (a4 != 6)
      {
        return v6;
      }

      LOWORD(v27) = 65;
      SInt32 = CsLeReadSInt32(__s);
      v14 = malloc_type_malloc(SInt32, 0x100004077774924uLL);
      v29 = v14;
      if (v14)
      {
        LODWORD(v28) = SInt32;
        v16 = __s + 4;
        v15 = SInt32;
        goto LABEL_22;
      }

      return 5;
    }

    v21 = 11;
    goto LABEL_27;
  }

  if (a4 != 3)
  {
    LOWORD(v27) = 71;
    v10 = CsLeReadSInt32(__s);
    v11 = CsLeReadSInt32(__s + 1);
    if (v10 >= 5)
    {
      v12 = v11;
      v13 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
      v28 = v13;
      if (v13)
      {
        v13[1] = malloc_type_malloc(v10, 0x100004077774924uLL);
        if (*(v28 + 1))
        {
          *v28 = v10;
          *(v28 + 1) = v12;
          v14 = *(v28 + 1);
          v15 = v10 - 4;
          v16 = __s + 8;
LABEL_22:
          memcpy(v14, v16, v15);
          goto LABEL_29;
        }

        free(v28);
      }
    }

    return 5;
  }

  LOWORD(v27) = 64;
  v6 = WinFileTimeFromTime_t(*__s, &v28);
  if (v6)
  {
    return v6;
  }

LABEL_29:
  v22 = *(&off_2799CCD18 + a2 - 1);
  StorageFromRoot = getStorageFromRoot(a1, &v30);
  if (StorageFromRoot || (StorageFromRoot = propertyStorageOpen(v30, v22, &v31), StorageFromRoot))
  {
    v6 = StorageFromRoot;
    propVariantCleanup(&v27);
    return v6;
  }

  v24 = v31;
  v25 = propertyStorageSetPropertyValueWithID(v31, a3, &v27);
  if (!v25)
  {
    if (v24)
    {
      free(v24);
      return propVariantCleanup(&v27);
    }

    propVariantCleanup(&v27);
    return 6;
  }

  v6 = v25;
  propVariantCleanup(&v27);
  if (v24)
  {
    free(v24);
  }

  return v6;
}

uint64_t propertyStorageSetPropertyValueWithID(uint64_t *a1, uint64_t a2, unsigned __int16 *a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      result = rootStorageSetDirty(a1[1]);
      if (!result)
      {
        v7 = *a1;

        return propertySetPut(v7, a2, a3);
      }
    }
  }

  return result;
}

uint64_t propertyStorageGetPropertyID(uint64_t *a1, char *a2, _DWORD *a3)
{
  if (a1 && a3 && (v3 = *a1) != 0)
  {
    return propertySetGetPropertyID(v3, a2, a3);
  }

  else
  {
    return 6;
  }
}

uint64_t freeDocumentPropertyName(void **a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t setDefaultDocumentProperties(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  strcpy(v13, "No title");
  strcpy(v12, " Auto-generated");
  v11 = 0x6E776F6E6B6E75;
  strcpy(v10, "SchemaSoft Structured Storage Library v 3.0");
  v2 = SsrwTime(0);
  if (!a1)
  {
    return 6;
  }

  v3 = v2;
  result = rootStorageSetDirty(a1);
  if (result)
  {
    return result;
  }

  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  DocProperties = rootStorageGetDocProperties(a1);
  if (*DocProperties)
  {
    return 6;
  }

  v6 = DocProperties;
  if (DocProperties[1])
  {
    return 6;
  }

  result = getStorageFromRoot(a1, &v9);
  if (!result)
  {
    result = createStream(v9, SUMMARY_INFO_NAME, v6 + 3);
    if (!result)
    {
      result = propertySetConstruct(SSRW_FMTID_SummaryInformation, 1, v6);
      if (!result)
      {
        LOWORD(v7) = 30;
        v8[0] = v13;
        propertySetPut(*v6, 2, &v7);
        v8[0] = v12;
        propertySetPut(*v6, 4, &v7);
        v8[0] = &v11;
        propertySetPut(*v6, 3, &v7);
        v8[0] = v10;
        propertySetPut(*v6, 18, &v7);
        LOWORD(v7) = 3;
        LODWORD(v8[0]) = 0;
        propertySetPut(*v6, 19, &v7);
        LOWORD(v7) = 64;
        WinFileTimeFromTime_t(v3, v8);
        return propertySetPut(*v6, 12, &v7);
      }
    }
  }

  return result;
}

uint64_t propertyStorageGetPropertyNameAndIDByIndex(uint64_t *a1, unsigned int a2, char **a3, int *a4)
{
  if (a1 && a3 && (v4 = *a1) != 0)
  {
    return propertySetGetPropertyNameAndID(v4, a2, a3, a4);
  }

  else
  {
    return 6;
  }
}

uint64_t fatCompareSectors(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t fatAddFreeSectors(uint64_t a1, void **a2, unsigned int *a3)
{
  if (!a1)
  {
    return 6;
  }

  v5 = *a2;
  v6 = *a3;
  if (*a3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v5)
    {
      free(*a2);
    }

    result = 0;
    *a2 = 0;
    return result;
  }

  qsort(*a2, *a3, 4uLL, fatCompareSectors);
  v9 = v6 - 1;
  v10 = *(*a2 + v9) + 1;
  result = fatEnsureMinSize(a1, v10);
  if (result)
  {
    return result;
  }

  if (*(a1 + 16) < v10)
  {
    *(a1 + 16) = v10;
  }

  v12 = (a1 + 40);
  v13 = *(a1 + 40);
  v14 = *v5;
  if (v13 == -2)
  {
    *(a1 + 40) = v14;
    v15 = *(a1 + 8);
    if (v6 != 1)
    {
      v16 = v5 + 1;
      v17 = v6 - 1;
      do
      {
        v18 = *v16++;
        *(v15 + 4 * v14) = v18;
        v14 = v18;
        --v17;
      }

      while (v17);
    }

    *(v15 + 4 * v5[v9]) = -2;
    goto LABEL_32;
  }

  v19 = 0;
  while (1)
  {
    if (v13 >= v14)
    {
      ++v19;
      v23 = v14;
      if (v19 < v6)
      {
        v23 = v5[v19];
      }

      *v12 = v14;
      v12 = (*(a1 + 8) + 4 * v14);
      v14 = v23;
      goto LABEL_26;
    }

    v20 = *(a1 + 8);
    v21 = (v20 + 4 * v13);
    v22 = *v21;
    *v12 = v13;
    if (v22 == -2)
    {
      break;
    }

    v12 = (v20 + 4 * v13);
    v13 = v22;
LABEL_26:
    if (v19 >= v6)
    {
      *v12 = v13;
      goto LABEL_32;
    }
  }

  v24 = v5[v19];
  *v21 = v24;
  if (v19 < v9)
  {
    v25 = v19;
    v26 = v9 - v19;
    v27 = &v5[v25 + 1];
    do
    {
      v28 = *v27++;
      *(v20 + 4 * v24) = v28;
      v24 = v28;
      --v26;
    }

    while (v26);
  }

  *(v20 + 4 * v5[v9]) = -2;
LABEL_32:
  free(*a2);
  result = 0;
  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t propertySetSaveNameList(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = *(a1 + 2440);
  CsLeWriteUInt32(v6, a2);
  if (v6)
  {
    v7 = a1 + 1640;
    v8 = 4;
    do
    {
      CsLeWriteUInt32(*(v7 + 8), (a2 + v8));
      v9 = strlen(*v7) + 1;
      CsLeWriteUInt32(v9, (a2 + v8 + 4));
      v10 = v8 + 8;
      v11 = *v7;
      v7 += 16;
      memcpy(a2 + v10, v11, v9);
      v8 = v9 + v10;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 4;
  }

  *a3 = v8 + (-v8 & 3);
  return 0;
}

uint64_t propertySetGetPropertyNameAndID(uint64_t a1, unsigned int a2, char **a3, int *a4)
{
  if (*(a1 + 1600) <= a2)
  {
    return 13;
  }

  *a4 = -1;
  *a3 = 0;
  v4 = *(a1 + 1600);
  if (!v4 || v4 - 1 < a2)
  {
    return 13;
  }

  v6 = *(a1 + 32 * a2);
  if ((v6 + 1) < 2)
  {
    return 13;
  }

  *a4 = v6;
  return propertySetGetPropertyName(a1, v6, a3);
}

uint64_t propertySetGetPropertyName(uint64_t a1, int a2, char **a3)
{
  *a3 = 0;
  v3 = *(a1 + 2440);
  if (!v3)
  {
    return 0;
  }

  for (i = (a1 + 1648); *i != a2; i += 4)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  v7 = *(i - 1);
  v8 = strlen(v7);
  v9 = malloc_type_malloc((v8 + 1), 0xD85A1BA7uLL);
  *a3 = v9;
  if (v9)
  {
    strcpy(v9, v7);
    return 0;
  }

  return 5;
}

uint64_t propertySetGetPropertyID(uint64_t a1, char *__s2, _DWORD *a3)
{
  *a3 = -1;
  v3 = *(a1 + 2440);
  if (v3)
  {
    for (i = (a1 + 1648); strcmp(*(i - 1), __s2); i += 2)
    {
      if (!--v3)
      {
        return 0;
      }
    }

    *a3 = *i;
  }

  return 0;
}

uint64_t propertySetWrite(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v86[1] = 0;
  v87[0] = 0;
  v83 = 0;
  v86[0] = 0;
  if (!a1)
  {
    return 6;
  }

  v3 = a3;
  *(*a3 + 1624) = a1;
  result = streamSeek(*(*a3 + 1624), 0, 0);
  if (result)
  {
    return result;
  }

  v79 = a1;
  v7 = 0;
  v78 = a2;
  v8 = *a2 ^ 0x101B2E9CD5CDD502 | a2[1] ^ 0xAEF92C2B00089793;
  v77 = v8 != 0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v82 = v3;
  v80 = v9;
  do
  {
    *(v86 + v7) = 0;
    v10 = *(v3 + 8 * v7);
    if (!v10)
    {
      goto LABEL_70;
    }

    v11 = 0x101B2E9CD5CDD505;
    v13 = *(v10 + 1608) == 0x101B2E9CD5CDD505 && *(v10 + 1616) == 0xAEF92C2B00089793 && *(v10 + 2440) != 0;
    LODWORD(v14) = *(v10 + 1600);
    if (v13 < v14)
    {
      do
      {
        v15 = v13;
        v16 = v10 + 32 * v13;
        v19 = *(v16 + 8);
        v18 = v16 + 8;
        v17 = v19;
        if (v19 == 10 || v17 == 0)
        {
          v21 = *(v10 + 2440);
          if (v21)
          {
            v22 = 0;
            v23 = (v10 + 1656);
            v24 = (v10 + 1648);
            while (*v24 != *(v10 + 32 * v13))
            {
              ++v22;
              v24 += 4;
              ++v23;
              if (v21 == v22)
              {
                goto LABEL_30;
              }
            }

            v25 = *(v24 - 1);
            if (v25)
            {
              free(v25);
              LODWORD(v21) = *(v10 + 2440);
            }

            LODWORD(v21) = v21 - 1;
            if (v21 > v22)
            {
              do
              {
                ++v22;
                *(v23 - 1) = *v23;
                v21 = (*(v10 + 2440) - 1);
                ++v23;
              }

              while (v22 < v21);
            }

            *(v10 + 2440) = v21;
          }

LABEL_30:
          propVariantCleanup(v18);
          LODWORD(v14) = *(v10 + 1600) - 1;
          if (v13 < v14)
          {
            v26 = (v10 + 32 + 32 * v13);
            do
            {
              ++v15;
              v27 = v26[1];
              *(v26 - 2) = *v26;
              *(v26 - 1) = v27;
              v14 = (*(v10 + 1600) - 1);
              v26 += 2;
            }

            while (v15 < v14);
          }

          *(v10 + 1600) = v14;
          --v13;
        }

        ++v13;
      }

      while (v13 < v14);
      v11 = 0x101B2E9CD5CDD505;
      v3 = v82;
      v10 = *(v82 + 8 * v7);
      LODWORD(v14) = *(v10 + 1600);
    }

    if (!v14)
    {
      goto LABEL_69;
    }

    v28 = 0;
    v29 = 8 * v14 + 8;
    v30 = v14;
    do
    {
      if (v28 || (*(v10 + 1608) == v11 ? (v31 = *(v10 + 1616) == 0xAEF92C2B00089793) : (v31 = 0), !v31))
      {
        v32 = v10 + 32 * v28;
        v35 = *(v32 + 8);
        v34 = v32 + 8;
        v33 = v35;
        if (v35 > 29)
        {
          if (v33 > 64)
          {
            if (v33 == 65)
            {
              v37 = *(v34 + 8);
            }

            else
            {
              if (v33 != 71)
              {
                v33 = 0;
                goto LABEL_65;
              }

              v37 = **(v34 + 8);
            }

            v33 = v37 + 4;
LABEL_65:
            v29 += v33 + (-v33 & 3) + 4;
            goto LABEL_66;
          }

          if (v33 == 30)
          {
            v33 = strlen(*(v34 + 8)) + 5;
            goto LABEL_65;
          }

          v36 = v33 == 64;
          v33 = 8;
        }

        else
        {
          if (v33 <= 4)
          {
            if (v33 != 2)
            {
              v36 = v33 == 3;
              v33 = 4;
              goto LABEL_52;
            }

            goto LABEL_65;
          }

          if (v33 == 5)
          {
            v33 = 8;
            goto LABEL_65;
          }

          v36 = v33 == 11;
          v33 = 2;
        }

LABEL_52:
        if (!v36)
        {
          v33 = 0;
        }

        goto LABEL_65;
      }

      v38 = v11;
      v39 = *(v10 + 2440);
      v40 = (8 * v39) | 4;
      if (v39)
      {
        v41 = (v10 + 1640);
        do
        {
          v42 = *v41;
          v41 += 2;
          v40 += strlen(v42) + 1;
          --v39;
        }

        while (v39);
      }

      v29 += v40 + (-v40 & 3);
      v3 = v82;
      v11 = v38;
LABEL_66:
      ++v28;
    }

    while (v28 != v30);
    LODWORD(v14) = (-v29 & 3) + v29;
LABEL_69:
    *(v86 + v7) = v14;
    v9 = v80;
LABEL_70:
    ++v7;
  }

  while (v7 != v9);
  LODWORD(v43) = 28;
  v44 = v86;
  v45 = v9;
  do
  {
    if (*v44++)
    {
      v43 = (v43 + 20);
    }

    else
    {
      v43 = v43;
    }

    --v45;
  }

  while (v45);
  v47 = v79;
  writeSInt16(v79, 4294967294);
  writeSInt16(v79, 0);
  writeSInt32(v79, 131077);
  writeSInt32(v79, 0);
  writeSInt16(v79, 0);
  writeSInt16(v79, 0);
  v84 = 8;
  streamWrite(v79, v87, &v84);
  v48 = *v78 == 0x101B2E9CD5CDD502 && v78[1] == 0xAEF92C2B00089793;
  if (!v48 || (v76 = *(v3 + 8)) != 0 && *(v76 + 1600))
  {
    writeSInt32(v79, v9);
  }

  else
  {
    v9 = (v9 - 1);
    writeSInt32(v79, v9);
    if (v77)
    {
      return 0;
    }
  }

  v49 = v9;
  v50 = 0;
  v81 = v49;
  do
  {
    if (*(v86 + v50))
    {
      if (v78[1] == 0xAEF92C2B00089793 && *v78 == 0x101B2E9CD5CDD502 && v50 == 1)
      {
        v53 = &SSRW_FMTID_UserDefinedProperties;
      }

      else
      {
        v53 = v78;
      }

      v84 = 16;
      if (!writeSInt32(v79, *v53) && !writeSInt16(v79, *(v53 + 2)) && !writeSInt16(v79, *(v53 + 3)))
      {
        v85 = 8;
        streamWrite(v79, (v53 + 1), &v85);
      }

      writeSInt32(v79, v43);
      v43 = (*(v86 + v50) + v43);
    }

    ++v50;
  }

  while (v81 != v50);
  v54 = 0;
  while (2)
  {
    v55 = *(v3 + 8 * v54);
    if (!v55 || !*(v55 + 1600))
    {
      goto LABEL_141;
    }

    v56 = *(v86 + v54);
    result = writeSInt32(v47, v56);
    if (result)
    {
      return result;
    }

    result = writeSInt32(v47, *(*(v3 + 8 * v54) + 1600));
    if (result)
    {
      return result;
    }

    v57 = v56 - 8;
    v58 = malloc_type_malloc(v57, 0x100004077774924uLL);
    if (v58)
    {
      v59 = v58;
      bzero(v58, v57);
      v60 = *(*(v3 + 8 * v54) + 1600);
      i = 8 * v60;
      if (v60 >= 1)
      {
        v62 = 0;
        v63 = v59;
        while (1)
        {
          v64 = *(v3 + 8 * v54);
          if (v62)
          {
            break;
          }

          if (*(v64 + 1608) != 0x101B2E9CD5CDD505 || *(v64 + 1616) != 0xAEF92C2B00089793)
          {
            break;
          }

          CsLeWriteUInt32(0, v63);
          CsLeWriteUInt32(i + 8, v63 + 1);
          propertySetSaveNameList(*(v3 + 8 * v54), (v59 + i), &v84);
          i += v84;
LABEL_129:
          v63 += 2;
          if (++v62 == v60)
          {
            goto LABEL_139;
          }
        }

        v66 = (v64 + 32 * v62);
        CsLeWriteUInt32(*v66, v63);
        CsLeWriteUInt32(i + 8, v63 + 1);
        CsLeWriteUInt32(*(v66 + 4), (v59 + i));
        v67 = i + 4;
        v68 = v59 + v67;
        v69 = *(v66 + 4);
        if (v69 > 0x15)
        {
          if (*(v66 + 4) > 0x3Fu)
          {
            if (v69 != 64)
            {
              if (v69 == 65)
              {
                v74 = v66[4];
                LODWORD(v71) = v74 + 4;
                CsLeWriteUInt32(v74, (v59 + v67));
                memcpy(v68 + 4, *(v66 + 3), v66[4]);
              }

              else
              {
                if (v69 != 71)
                {
                  return 12;
                }

                v70 = **(v66 + 2);
                v71 = (v70 + 4);
                CsLeWriteUInt32(v70, (v59 + v67));
                CsLeWriteUInt32(*(*(v66 + 2) + 4), v68 + 1);
                memcpy(v68 + 8, *(*(v66 + 2) + 8), v71 - 8);
              }

              goto LABEL_135;
            }

            CsLeWriteUInt32(v66[4], (v59 + v67));
            CsLeWriteUInt32(v66[5], v68 + 1);
LABEL_134:
            LODWORD(v71) = 8;
LABEL_135:
            v84 = v71;
            for (i = v71 + v67; (i & 3) != 0; ++i)
            {
              *(v59 + i) = 0;
            }

            goto LABEL_129;
          }

          if (v69 != 22)
          {
            if (v69 != 30)
            {
              return 12;
            }

            v72 = strlen(*(v66 + 2));
            v71 = (v72 + 5);
            bzero(v59 + v67, v71);
            v73 = (v72 + 1);
            v3 = v82;
            CsLeWriteUInt32(v73, (v59 + v67));
            strcpy(v68 + 4, *(v66 + 2));
            goto LABEL_135;
          }

LABEL_127:
          CsLeWriteUInt32(v66[4], (v59 + v67));
          LODWORD(v71) = 4;
          goto LABEL_135;
        }

        if (*(v66 + 4) > 4u)
        {
          if (v69 == 5)
          {
            CsLeWriteFloat64((v59 + v67), *(v66 + 2));
            goto LABEL_134;
          }

          if (v69 != 11)
          {
            return 12;
          }
        }

        else if (v69 != 2)
        {
          if (v69 != 3)
          {
            return 12;
          }

          goto LABEL_127;
        }

        CsLeWriteUInt16(*(v66 + 8), (v59 + v67));
        LODWORD(v71) = 2;
        goto LABEL_135;
      }

LABEL_139:
      while ((i & 3) != 0)
      {
        *(v59 + i++) = 0;
      }

      v75 = *(v86 + v54) - 8;
      *(v86 + v54) = v75;
      v83 = v75;
      v47 = v79;
      streamWrite(v79, v59, &v83);
      free(v59);
LABEL_141:
      if (++v54 == v81)
      {
        return 0;
      }

      continue;
    }

    return 5;
  }
}

uint64_t propertySetPut(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = (a1 + 1608);
  Info = propertyGetInfo((a1 + 1608), a2);
  if (Info && (v8 = Info[7], v8 != 10))
  {
    if (v8 != *a3)
    {
      return 14;
    }
  }

  else if (*a3 == 10)
  {
    return 12;
  }

  RealID = propertyGetRealID(a1, a2);
  v11 = *(a1 + 1600);
  if (v11)
  {
    v12 = a1;
    v13 = *(a1 + 1600);
    while (1)
    {
      v14 = *v12;
      v12 += 8;
      if (v14 == RealID)
      {
        break;
      }

      if (!--v13)
      {
        if (v11 > 0x31)
        {
          return 12;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v15 = bswap64(*v6);
    v16 = bswap64(0x101B2E9CD5CDD505uLL);
    if (v15 == v16 && (v15 = bswap64(v6[1]), v16 = bswap64(0xAEF92C2B00089793), v15 == v16))
    {
      v17 = 0;
    }

    else if (v15 < v16)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    if (!(v17 | v11))
    {
      v11 = 1;
      *(a1 + 1600) = 1;
    }

    v18 = v11;
    v19 = a2;
    if ((a2 & 0xFFFFFFFE) == 0x1000)
    {
      v20 = propertyGetInfo(v6, a2);
      if (!v20)
      {
        return 13;
      }

      if (v11)
      {
        v21 = v11;
        v22 = 2;
        v23 = a1;
        do
        {
          v25 = *v23;
          v23 += 8;
          v24 = v25;
          if (v25 > v22)
          {
            v22 = v24;
          }

          --v21;
        }

        while (v21);
        v19 = v22 + 1;
      }

      else
      {
        v19 = 3;
      }

      result = propertySetAddNamePair(a1, v19, *(v20 + 1));
      if (result)
      {
        return result;
      }

      v18 = *(a1 + 1600);
    }

    v26 = a1 + 32 * v11;
    *v26 = v19;
    *(v26 + 8) = 0;
    v11 = v18 + 1;
    *(a1 + 1600) = v18 + 1;
  }

  v27 = propertyGetRealID(a1, a2);
  if (!v11)
  {
    return 13;
  }

  v28 = v11;
  for (i = a1 + 8; *(i - 8) != v27; i += 32)
  {
    if (!--v28)
    {
      return 13;
    }
  }

  result = propVariantCleanup(i);
  if (!result)
  {

    return propVariantCopyContents(a3, i);
  }

  return result;
}

uint64_t propertySetAddNamePair(uint64_t a1, int a2, char *__s)
{
  v6 = strlen(__s);
  v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  if (!v7)
  {
    return 5;
  }

  v8 = strcpy(v7, __s);
  v9 = *(a1 + 2440);
  if (v9)
  {
    v10 = 0;
    v11 = (a1 + 1648);
    while (*v11)
    {
      ++v10;
      v11 += 4;
      if (v9 == v10)
      {
        if (v9 < 0x32)
        {
          goto LABEL_7;
        }

        goto LABEL_10;
      }
    }

    if (v10 > 0x31)
    {
LABEL_10:
      free(v8);
      return 12;
    }

    v12 = 0;
    *v11 = a2;
    *(v11 - 1) = v8;
  }

  else
  {
LABEL_7:
    v12 = 0;
    v13 = a1 + 1640 + 16 * v9;
    *(v13 + 8) = a2;
    *v13 = v8;
    *(a1 + 2440) = v9 + 1;
  }

  return v12;
}

uint64_t readGUID(uint64_t a1, uint64_t a2)
{
  result = readSInt32(a1, a2);
  if (!result)
  {
    result = readUInt16(a1, (a2 + 4));
    if (!result)
    {
      result = readUInt16(a1, (a2 + 6));
      if (!result)
      {
        v5 = 8;
        return streamRead(a1, a2 + 8, &v5);
      }
    }
  }

  return result;
}

uint64_t propertySetReadSizePrefixedBlob(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  result = readSInt32(*(a1 + 1624), a2);
  if (!result)
  {
    v7 = *a2;
    v9 = 0;
    if (v7 < 1)
    {
      return 14;
    }

    result = streamGetBytesAvailableToRead64(*(a1 + 1624), &v9);
    if (result)
    {
      return result;
    }

    if (v9 >= v7)
    {
      v8 = malloc_type_malloc(v7, 0x244E583BuLL);
      *a3 = v8;
      if (v8)
      {
        bzero(v8, v7);
        v10 = v7;
        result = streamRead(*(a1 + 1624), *a3, &v10);
        if (!result)
        {
          if (v10 >= v7)
          {
            return 0;
          }

          else
          {
            return 14;
          }
        }
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 14;
    }
  }

  return result;
}

uint64_t openStructuredStorage(const char *a1, int a2, uint64_t *a3)
{
  v6 = strlen(a1);
  v7 = smalloc_typed(v6 + 1, 2uLL, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    return 5;
  }

  v8 = v7;
  SsrwStrToStr2(v7, a1, v6 + 1);
  v9 = openStructuredStorageEx(v8, a2, a3);
  free(v8);
  return v9;
}

uint64_t openStructuredStorageEx(_WORD *a1, int a2, uint64_t *a3)
{
  if (!a1)
  {
    return 6;
  }

  v4 = 6;
  if (a3 && *a1)
  {
    if (a2)
    {
      if (a2 != 2)
      {
        return 2;
      }

      v6 = "r";
    }

    else
    {
      v6 = L"rb";
    }

    v7 = SsrwOpenFile(a1, v6);
    if (v7)
    {
      v8 = v7;
      v4 = openStructuredStorageInternal(v7, a3, 1, a2);
      if (v4)
      {
        SsrwFclose(v8);
      }
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

uint64_t openStructuredStorageInStream(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = 6;
  if (a1 && a3)
  {
    if ((a2 & 0xFFFFFFFD) != 0)
    {
      return 2;
    }

    else
    {
      SsrwConnectToExternalFile(a1);
      if (v7)
      {
        v8 = v7;
        v3 = openStructuredStorageInternal(v7, a3, 0, a2);
        if (v3)
        {
          SsrwDisconnect(v8);
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return v3;
}

uint64_t rootStorageGetDocProperties(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 48)) != 0)
  {
    return rootStorageGetTOC(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t createStructuredStorage(const char *a1, int a2, uint64_t *a3)
{
  v6 = strlen(a1);
  v7 = smalloc_typed(v6 + 1, 2uLL, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    return 5;
  }

  v8 = v7;
  SsrwStrToStr2(v7, a1, v6 + 1);
  StructuredStorage = createStructuredStorageEx(v8, a2, a3, 0, v9);
  free(v8);
  return StructuredStorage;
}

uint64_t createStructuredStorageEx(_WORD *a1, int a2, uint64_t *a3, unsigned int a4, int8x8_t a5)
{
  if (!a1)
  {
    return 6;
  }

  StructuredStorageInternal = 6;
  if (a3)
  {
    a5.i32[0] = a4;
    v8 = vcnt_s8(a5);
    v8.i16[0] = vaddlv_u8(v8);
    if (*a1 && v8.i32[0] <= 1u)
    {
      if ((a2 - 1) > 1)
      {
        return 2;
      }

      else
      {
        v11 = SsrwOpenFile(a1, "w");
        if (v11)
        {
          v12 = v11;
          StructuredStorageInternal = createStructuredStorageInternal(v11, a2, a3, 1, a4);
          if (StructuredStorageInternal)
          {
            SsrwFclose(v12);
          }
        }

        else
        {
          return 4;
        }
      }
    }
  }

  return StructuredStorageInternal;
}

uint64_t createStructuredStorageInStreamEx(uint64_t a1, int a2, uint64_t *a3, unsigned int a4, int8x8_t a5)
{
  StructuredStorageInternal = 6;
  if (a1)
  {
    if (a3)
    {
      a5.i32[0] = a4;
      v8 = vcnt_s8(a5);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.i32[0] <= 1u)
      {
        if ((a2 - 1) > 1)
        {
          return 2;
        }

        else
        {
          SsrwConnectToExternalFile(a1);
          if (v10)
          {
            v11 = v10;
            StructuredStorageInternal = createStructuredStorageInternal(v10, a2, a3, 0, a4);
            if (StructuredStorageInternal)
            {
              SsrwDisconnect(v11);
            }
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }

  return StructuredStorageInternal;
}

uint64_t readFatSectorsFromXFat(uint64_t a1, uint64_t a2, int *a3)
{
  XFatSize = headerGetXFatSize(*(a1 + 16));
  SectorShift = headerGetSectorShift(*(a1 + 16));
  if (SectorShift < 2)
  {
    return 8;
  }

  v9 = SectorShift;
  XFatStartSector = headerGetXFatStartSector(*(a1 + 16));
  result = readSector(a1, XFatStartSector);
  if (!result)
  {
    if (!a3)
    {
      return 8;
    }

    *a3 = XFatStartSector;
    v11 = *(a1 + 80);
    if (headerGetFatSize(*(a1 + 16)) >= 0x6E)
    {
      v12 = 1 << v9 >> 2;
      v13 = 109;
      v14 = 1;
      v15 = 1;
      do
      {
        SInt32 = CsLeReadSInt32(v11);
        v17 = SInt32;
        if (v14 % v12)
        {
          *(a2 + 4 * v13++) = SInt32;
          ++v11;
        }

        else
        {
          result = readSector(a1, SInt32);
          if (result)
          {
            return result;
          }

          if (v15 >= XFatSize)
          {
            return 8;
          }

          v11 = *(a1 + 80);
          a3[v15++] = v17;
        }

        ++v14;
      }

      while (v13 < headerGetFatSize(*(a1 + 16)));
    }

    return 0;
  }

  return result;
}

uint64_t initializeSmallFat(void ***a1)
{
  v2 = a1[2];
  v10 = 0;
  SmallSectorShift = headerGetSmallSectorShift(v2);
  Fat = fatConstruct(a1, a1 + 4, 1 << SmallSectorShift);
  if (!Fat)
  {
    SmallFatSize = headerGetSmallFatSize(v2);
    v5 = a1[3];
    SmallFatStartSector = headerGetSmallFatStartSector(v2);
    Chain = fatGetChain(v5, SmallFatStartSector, &SmallFatSize, &v10);
    if (Chain)
    {
      Fat = Chain;
LABEL_5:
      fatDestroy(a1 + 4);
      a1[4] = 0;
      return Fat;
    }

    headerSetSmallFatSize(v2, SmallFatSize);
    fatSetFatSectors(a1[4], v10, SmallFatSize);
    Fat = fatReadFat(a1[4]);
    if (Fat)
    {
      goto LABEL_5;
    }
  }

  return Fat;
}

uint64_t rootStorageInitWrite(uint64_t *a1)
{
  v5 = -1;
  v2 = headerWrite(*a1, a1[2]);
  if (!v2)
  {
    if (SsrwFseek(*a1))
    {
      return 4;
    }

    else
    {
      v3 = 109;
      while (1)
      {
        v2 = 4;
        if (SsrwFwrite(&v5, 4, 1, *a1) != 1)
        {
          break;
        }

        if (!--v3)
        {
          return 0;
        }
      }
    }
  }

  return v2;
}

size_t SsrwFileFread(void *a1, size_t a2, size_t a3, FILE **a4)
{
  if (a4 && a1 && (v4 = *a4) != 0)
  {
    return fread(a1, a2, a3, v4);
  }

  else
  {
    return 0;
  }
}

size_t SsrwFileFwrite(const void *a1, size_t a2, size_t a3, FILE **a4)
{
  if (a4 && a1 && (v4 = *a4) != 0)
  {
    return fwrite(a1, a2, a3, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t SsrwFileFclose(uint64_t a1)
{
  if (a1 && (v2 = *a1) != 0 && (*(a1 + 8) & 1) != 0)
  {
    return fclose(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t SsrwFileFseek(FILE **a1, uint64_t a2, int a3)
{
  if (a1 && (v3 = *a1) != 0)
  {
    return fseek(v3, a2, a3);
  }

  else
  {
    return 0;
  }
}

off_t SsrwFileFtell(FILE **a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return ftello(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t SsrwFileFtruncate(void *a1)
{
  if (a1 && *a1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

FILE **SsrwOpenFile(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x60uLL, 0x10A2040658F7E63uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    v4[6] = SsrwFileFread;
    v4[7] = SsrwFileFwrite;
    v4[8] = SsrwFileFclose;
    v4[9] = SsrwFileFseek;
    v4[10] = SsrwFileFtell;
    v4[11] = SsrwFileFtruncate;
    *(v4 + 8) = 1;
    v6 = SsrwFalseWFopen(a1, a2);
    *v5 = v6;
    if (!v6)
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

double SsrwConnectToExternalFile(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10A2040658F7E63uLL);
  if (v2)
  {
    *(v2 + 5) = 0;
    result = 0.0;
    *(v2 + 25) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 6) = SsrwFileFread;
    *(v2 + 7) = SsrwFileFwrite;
    *(v2 + 8) = SsrwFileFclose;
    *(v2 + 9) = SsrwFileFseek;
    *(v2 + 10) = SsrwFileFtell;
    *(v2 + 11) = SsrwFileFtruncate;
    v2[8] = 0;
    *v2 = a1;
  }

  return result;
}

uint64_t streamUpgradeMiniToRegular(uint64_t *a1)
{
  if (!streamShouldBeMini(a1))
  {
    return 0;
  }

  v2 = a1[7];
  if (v2[9] > 1)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = malloc_type_malloc(*v2, 0x100004077774924uLL);
  if (!v6)
  {
    return 5;
  }

  v7 = v6;
  v8 = *a1[7];
  v18 = v8;
  v9 = streamRead(a1, v6, &v18);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v18 == v8;
  }

  if (v10)
  {
    v11 = a1[7];
    *(v11 + 32) = 1;
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = **(v11 + 8);
    }

    else
    {
      v13 = -1;
    }

    *(v11 + 16) = 0;
    *v11 = 0;
    a1[3] = 0;
    v3 = streamWrite(a1, v7, &v18);
    free(v7);
    if (v3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v18 == v8;
    }

    if (v14)
    {
      v15 = streamFlushToDisk(a1);
      if (!v15)
      {
        if (v13 != -1)
        {
          SmallFat = rootStorageGetSmallFat(*a1);
          fatFreeChain(SmallFat, v13);
        }

        streamDestroy((a1[7] + 24));
        v3 = 0;
        goto LABEL_26;
      }

      v3 = v15;
    }

    v16 = a1[7];
    *(v16 + 32) = 0;
    *(v16 + 16) = v12;
    *v16 = v8;
LABEL_26:
    a1[3] = v5;
    return v3;
  }

  if (v9)
  {
    v3 = v9;
  }

  else
  {
    v3 = 15;
  }

  free(v7);
  return v3;
}

uint64_t convertToSmallStream(uint64_t a1)
{
  v18 = 0;
  if (!**(a1 + 56))
  {
    return 0;
  }

  TOC = rootStorageGetTOC(*a1);
  Fat = rootStorageGetFat(*a1);
  SmallFat = rootStorageGetSmallFat(*a1);
  Header = rootStorageGetHeader(*a1);
  EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
  SectorShift = headerGetSectorShift(Header);
  SmallSectorShift = headerGetSmallSectorShift(Header);
  StartSector = directoryGetStartSector(EntryAtIndex);
  v7 = **(a1 + 56);
  if (!v7)
  {
    return fatFreeChain(Fat, StartSector);
  }

  Sector = 0;
  v9 = 0;
  v16 = (1 << SectorShift) >> SmallSectorShift;
  v10 = v16 - 1;
  v11 = -1;
  while (1)
  {
    v12 = v7 >= (1 << SmallSectorShift) ? 1 << SmallSectorShift : v7;
    if ((v9 & v10) == 0)
    {
      Sector = rootStorageReadSector(*a1, *(*(*(a1 + 56) + 8) + 4 * (v9 / v16)));
    }

    result = rootStorageWriteMiniSector(*a1, Sector + ((v9 & v10) << SmallSectorShift), &v18);
    if (result)
    {
      break;
    }

    if (v11 == -1)
    {
      result = directorySetStartSector(EntryAtIndex, v18);
      if (result)
      {
        return result;
      }

      result = fatTerminateChain(SmallFat, v18);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = fatUpdate(SmallFat, v11, v18);
      if (result)
      {
        return result;
      }
    }

    v11 = v18;
    v7 -= v12;
    ++v9;
    if (!v7)
    {
      return fatFreeChain(Fat, StartSector);
    }
  }

  return result;
}

uint64_t readUInt64(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 8;
  v2 = 6;
  if (a1 && a2)
  {
    v2 = streamRead(a1, &v6, &v5);
    *a2 = CsLeReadSInt32(&v6);
  }

  return v2;
}

uint64_t writeSInt16(uint64_t a1, uint64_t a2)
{
  v5 = 2;
  if (!a1)
  {
    return 6;
  }

  CsLeWriteUInt16(a2, &v4);
  return streamWrite(a1, &v4, &v5);
}

uint64_t writeSInt32(uint64_t a1, uint64_t a2)
{
  v5 = 4;
  if (!a1)
  {
    return 6;
  }

  CsLeWriteUInt32(a2, &v4);
  return streamWrite(a1, &v4, &v5);
}

uint64_t writeFloat32(uint64_t a1, float a2)
{
  v5 = 4;
  if (!a1)
  {
    return 6;
  }

  leWriteFloat32(&v4, a2);
  return streamWrite(a1, &v4, &v5);
}

uint64_t writeFloat64(uint64_t a1, double a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = 8;
  if (!a1)
  {
    return 6;
  }

  CsLeWriteFloat64(v5, a2);
  return streamWrite(a1, v5, &v4);
}

uint64_t writeString16(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v7 = *a3;
    if (*a3 || (v8 = _ChWcslen(a2), v7 = v8 + 1, v8 != -1))
    {
      v9 = 0;
      v10 = v7;
      while (1)
      {
        result = writeSInt16(a1, a2[v9]);
        if (result)
        {
          break;
        }

        if (v10 == ++v9)
        {
          result = 0;
          LODWORD(v9) = v10;
          break;
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
      result = 0;
    }

    *a3 = v9;
  }

  return result;
}

uint64_t tocInvalidateEntry(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 6;
  }

  v3 = *a1;
  if (!v3 || *(a1 + 8) <= a2)
  {
    return 6;
  }

  v5 = directoryGetAtIndex(v3, a2);
  if (!v5)
  {
    return 11;
  }

  if (*(a1 + 8) - 1 == a2)
  {
    *(a1 + 8) = a2;
  }

  return directoryInvalidate(v5);
}

void OCCBinaryStreamer::replaceGarbledBytes(OCCBinaryStreamer *this, SsrwOOStream *a2, SsrwOOStream *a3, uint64_t a4)
{
  SsrwOOStream::seekFromStart(a2, a4);
  v7 = SsrwOOStream::seekFromStart(a3, a4);

  OCCBinaryStreamer::replaceGarbledBytes(v7, a2, a3);
}

uint64_t sub_25D4D1684(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t OCCBinaryStreamer::cryptoAPI_decryptStreamOrStorage(OCCBinaryStreamer *this, unsigned int *a2, SsrwOOStream *a3, SsrwOOStorage *a4, unsigned int *a5)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 4);
  v12 = *(a2 + 11);
  *a5 = 2 * *(a2 + 10) + 18;
  if (!OCCBinaryStreamer::cryptoAPI_isThisStreamOrStorageNeeded(this, a2 + 8))
  {
    return 1;
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  if (v9)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v9);
    v13 = __p;
  }

  else
  {
    v13 = 0;
  }

  v15 = OCCCryptoKey::decryptBlock(this->var1, a3, v10, v9, v11, v13);
  v14 = v15;
  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v18 = 0;
    OCCStreamer::openOutputStream(this, a4, &v18, a2 + 8);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_25D4D192C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OCCBinaryStreamer::cryptoAPI_decryptEncryptedSummaryStream(OCCBinaryStreamer *this, SsrwOORootStorage *a2)
{
  v6 = 0;
  v3 = (*(this->var0 + 3))(this);
  v4 = (*(this->var0 + 10))(this);
  OCCStreamer::openInputStream(v3, &v6, v4, v5);
}

void sub_25D4D1B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OCCBinaryStreamer::cryptoAPI_encryptSummaryStream(OCCBinaryStreamer *this, SsrwOOStorage *a2)
{
  *v5.var1 = 0;
  v4 = (*(this->var0 + 10))(this);
  OCCStreamer::openOutputStream(this, a2, v5.var1, v4);
}

void sub_25D4D22CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D4D23FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SsrwOORootStorage::~SsrwOORootStorage(va);
  _Unwind_Resume(a1);
}

void sub_25D4D253C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SsrwOORootStorage::~SsrwOORootStorage(va);
  _Unwind_Resume(a1);
}

void OCCCryptoAPICryptoKey::~OCCCryptoAPICryptoKey(OCCCryptoKey *this)
{
  this->var0 = &unk_286EC91F0;
  var0 = this[1].var0;
  if (var0)
  {
    MEMORY[0x25F896FE0](var0, 0x1000C8077774924);
  }

  OCCCryptoKey::~OCCCryptoKey(this);
}

{
  OCCCryptoAPICryptoKey::~OCCCryptoAPICryptoKey(this);

  JUMPOUT(0x25F897000);
}

uint64_t OCCCryptoAPICryptoKey::create(OCCCryptoAPICryptoKey *this, const void *a2)
{
  v2 = a2;
  OCCEncryptionHeader::OCCEncryptionHeader(v8, this, a2);
  if ((v8[20] & 7) == 0)
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    if (OCCEncryptionHeader::getNewEncryptionVerifier(v8, this, v2, 0x14u, &v7, &v6, &v5))
    {
      operator new();
    }
  }

  OCCEncryptionHeader::~OCCEncryptionHeader(v8);
  return 0;
}

void sub_25D4D26FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OCCEncryptionHeader::~OCCEncryptionHeader(va);
  _Unwind_Resume(a1);
}

void OCCCryptoAPICryptoKey::OCCCryptoAPICryptoKey(OCCCryptoAPICryptoKey *this, unsigned __int8 *a2, char *a3, char *a4, int a5, char a6)
{
  OCCCryptoKey::OCCCryptoKey(this, a3, a4, 0x10u, 0x14u, 0x10u);
  *v10 = &unk_286EC91F0;
  *(v10 + 48) = a2;
  *(v10 + 56) = a5;
  *(v10 + 64) = &unk_286EC9500;
  if (a5 == 5)
  {
    v11 = 16;
  }

  else
  {
    v11 = a5;
  }

  OCCRC4Cryptor::OCCRC4Cryptor((v10 + 72), v11);
  *(this + 96) = a6;
}

uint64_t OCCCryptoAPICryptoKey::encryptionInfo(OCCCryptoAPICryptoKey *this, unsigned __int8 **a2, unsigned int *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (*(this + 6) && *(this + 2) && *(this + 3))
  {
    OCCEncryptionHeader::OCCEncryptionHeader(v4);
    OCCEncryptionHeader::initializeForDefaultCryptioAPI(v4);
  }

  return 0;
}

const void *OCCCryptoAPICryptoKey::isCryptoAPI(const void *this, const OCCCryptoKey *a2)
{
  if (this)
  {
  }

  return this;
}

uint64_t OCCCryptoAPICryptoKey::computeKeySeed(OCCCryptoAPICryptoKey *this, const void *a2, unsigned int a3, void *a4)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, a3 + 16);
  *__p = **(this + 6);
  memcpy(__p + 16, a2, a3);
  v8 = (**this)(this);
  bzero(a4, v8);
  OCCSHA1Hash::computeHash((this + 64), __p, v11 - __p, a4);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_25D4D2AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double OCCCryptoAPICryptoKey::decryptVerificationInfo(OCCCryptoAPICryptoKey *this, const void *a2, const void *a3, _OWORD *a4, _DWORD *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v7 = *(this + 3);
  v14[0] = **(this + 2);
  v8 = *(v7 + 16);
  v14[1] = *v7;
  v15 = v8;
  if (OCCCryptor::decrypt((this + 72), a2, 0, v14, 0x24u, &v11, 0x24u))
  {
    result = *&v11;
    v10 = v12;
    *a4 = v11;
    a5[4] = v13;
    *a5 = v10;
  }

  return result;
}

uint64_t OCCCryptoAPICryptoKey::computeVerifierBlockKey(OCCCryptoAPICryptoKey *this, void *a2)
{
  v3 = (*(*this + 32))(this);
  bzero(a2, v3);
  return 1;
}

uint64_t OCCCryptoAPICryptoKey::computeVerifierHashBlockKey(OCCCryptoAPICryptoKey *this, void *a2)
{
  v3 = (*(*this + 32))(this);
  bzero(a2, v3);
  return 1;
}

BOOL OCCCryptoAPICryptoKey::deriveKey(OCCCryptoAPICryptoKey *this, const void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (v3)
  {
    v7 = (v3 + OCCSHA1Hash::getOutputSize((this + 64)));
    v8 = (*(*this + 32))(this);
    memcpy(v7, a2, v8);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 0;
    v9 = *(this + 1);
    v10 = (**this)(this);
    OCCSHA1Hash::computeHash((this + 64), v9, v10, v15);
    v11 = *(this + 14);
    if (v11 == 5)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x14)
    {
      v13 = 20;
    }

    else
    {
      v13 = v12;
    }

    bzero(a3, v12);
    memcpy(a3, v15, v13);
  }

  return v3 != 0;
}

uint64_t OCCCryptoAPICryptoKey::deriveDecryptionKey(OCCCryptoAPICryptoKey *this, int a2, void *a3, unsigned __int8 **a4)
{
  v5 = a2;
  *a4 = 0;
  return (*(*this + 56))(this, &v5, a3);
}

uint64_t OCCCryptoAPICryptoKey::decryptBlockUsingDecryptionKey(OCCCryptoAPICryptoKey *this, const void *a2, int a3, const void *a4, const void *a5, unsigned int a6, void *a7)
{
  if (OCCRC4Cryptor::getKeySizeInBytes((this + 72)) != a3)
  {
    return 0;
  }

  return OCCCryptor::decrypt((this + 72), a2, 0, a5, a6, a7, a6);
}

void OCCCryptoKey::~OCCCryptoKey(OCCCryptoKey *this)
{
  this->var0 = &unk_286EC9298;
  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x25F896FE0](var1, 0x1000C8077774924);
  }

  var2 = this->var2;
  if (var2)
  {
    MEMORY[0x25F896FE0](var2, 0x1000C8077774924);
  }

  var3 = this->var3;
  if (var3)
  {
    MEMORY[0x25F896FE0](var3, 0x1000C8077774924);
  }
}

void OCCCryptoKey::OCCCryptoKey(OCCCryptoKey *this, char *a2, char *a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  this->var0 = &unk_286EC9298;
  this->var1 = 0;
  this->var2 = a2;
  this->var3 = a3;
  this->var4 = a4;
  this->var5 = a5;
  this->var6 = a6;
}

xmlDoc *OCCCryptoKey::createUsingEncryptionInfoStream(OCCCryptoKey *this, SsrwOOStream *a2, SsrwOOStream *a3, const void *a4)
{
  v8 = (*(a2->var0 + 5))(a2);
  __p = 0;
  v13 = 0;
  v14 = 0;
  if (a4)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, a4);
  }

  SsrwOOStream::seekFromStart(a2, a3);
  v11 = a4;
  (*(a2->var0 + 7))(a2, __p, &v11);
  if (v11 == a4)
  {
    UsingEncryptionInfoBuffer = OCCCryptoKey::createUsingEncryptionInfoBuffer(this, __p, a4);
  }

  else
  {
    UsingEncryptionInfoBuffer = 0;
  }

  SsrwOOStream::seekFromStart(a2, v8);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return UsingEncryptionInfoBuffer;
}

void sub_25D4D308C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xmlDoc *OCCCryptoKey::createUsingEncryptionInfoBuffer(OCCCryptoKey *this, unsigned __int16 *a2, const void *a3)
{
  if (a3 >= 4)
  {
    v5 = *a2;
    v6 = a2[1];
    if (!this)
    {
LABEL_3:
      if (OCCRC4CryptoKey::isVersionValid(v5, v6))
      {
LABEL_4:

        return OCCRC4CryptoKey::create(a2, a3);
      }

      if (OCCCryptoAPICryptoKey::isVersionValid(v5, v6))
      {

        return OCCCryptoAPICryptoKey::create(a2, a3);
      }

      return 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!this)
    {
      goto LABEL_3;
    }
  }

  if (OCCAgileCryptoKey::isVersionValid(v5, v6))
  {

    return OCCAgileCryptoKey::create(a2, a3);
  }

  else
  {
    if (!OCCStandardCryptoKey::isVersionValid(v5, v6))
    {
      if (OCCRC4CryptoKey::isVersionValid(v5, v6))
      {
        goto LABEL_4;
      }

      return 0;
    }

    return OCCStandardCryptoKey::create(a2, a3);
  }
}

BOOL OCCCryptoKey::verifyPassphrase(OCCCryptoKey *this, const void *a2, uint64_t a3)
{
  v6 = (*(this->var0 + 11))(this);
  v7 = (*(*v6 + 24))(v6);
  var1 = this->var1;
  if (!var1)
  {
    (*this->var0)(this);
    operator new[]();
  }

  if (!(*(this->var0 + 1))(this, a2, a3, var1))
  {
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v9 = (*(this->var0 + 3))(this);
  v10 = 0;
  if (v9)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&v31, v9);
    v10 = v31;
  }

  if (OCCCryptoKey::deriveVerifierKey(this, v10))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v12 = (*(this->var0 + 3))(this);
    v13 = 0;
    if (v12)
    {
      std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&v28, v12);
      v13 = v28;
    }

    else if (v29 != v28)
    {
      v29 = v28;
    }

    if (OCCCryptoKey::deriveVerifierHashKey(this, v13))
    {
      __p = 0;
      v26 = 0;
      v27 = 0;
      var6 = this->var6;
      if (var6)
      {
        std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, var6);
      }

      __s1 = 0;
      v23 = 0;
      v24 = 0;
      if (v7)
      {
        std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__s1, v7);
        v15 = __s1;
      }

      else
      {
        v15 = 0;
      }

      if ((*(this->var0 + 2))(this, v31, v28, __p, v15))
      {
        __s2 = 0;
        v20 = 0;
        v21 = 0;
        if (v7)
        {
          std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__s2, v7);
        }

        v16 = (*(this->var0 + 11))(this);
        (*(*v16 + 16))(v16, __p, this->var6, __s2);
        v17 = __s2;
        v11 = memcmp(__s1, __s2, v7) == 0;
        if (v17)
        {
          v20 = v17;
          operator delete(v17);
        }
      }

      else
      {
        v11 = 0;
      }

      if (__s1)
      {
        v23 = __s1;
        operator delete(__s1);
      }

      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v11 = 0;
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }
  }

  else
  {
    v11 = 0;
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return v11;
}

void sub_25D4D3544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    *(v20 - 48) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptoKey::deriveVerifierKey(OCCCryptoKey *this, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v4 = (*(this->var0 + 4))(this);
  if (v4)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v4);
    v5 = __p;
  }

  else
  {
    v5 = 0;
  }

  if ((*(this->var0 + 5))(this, v5))
  {
    v6 = (*(this->var0 + 7))(this, __p, a2);
  }

  else
  {
    v6 = 0;
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_25D4D36B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptoKey::deriveVerifierHashKey(OCCCryptoKey *this, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v4 = (*(this->var0 + 4))(this);
  if (v4)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v4);
    v5 = __p;
  }

  else
  {
    v5 = 0;
  }

  if ((*(this->var0 + 6))(this, v5))
  {
    v6 = (*(this->var0 + 7))(this, __p, a2);
  }

  else
  {
    v6 = 0;
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_25D4D37BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptoKey::decryptBlock(OCCCryptoKey *this, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  v10 = (*(this->var0 + 3))(this);
  if (v10)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v10);
    v11 = __p;
  }

  else
  {
    v11 = 0;
  }

  v16 = 0;
  if ((*(this->var0 + 8))(this, a4, v11, &v16))
  {
    v12 = __p;
    v13 = (*(this->var0 + 3))(this);
    v14 = (*(this->var0 + 9))(this, v12, v13, v16, a2, a3, a5);
  }

  else
  {
    v14 = 0;
  }

  if (v16)
  {
    MEMORY[0x25F896FE0](v16, 0x1000C8077774924);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_25D4D3948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptoKey::decryptBlock(OCCCryptoKey *this, SsrwOOStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (a4)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, a4);
  }

  v14 = a4;
  SsrwOOStream::seekFromStart(a2, a3);
  (*(a2->var0 + 7))(a2, __p, &v14);
  if (v14 == a4)
  {
    v12 = OCCCryptoKey::decryptBlock(this, __p, a4, a5, a6);
  }

  else
  {
    v12 = 0;
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_25D4D3A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptoKey::encryptBlock(OCCCryptoKey *this, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v10 = (*(this->var0 + 3))(this);
  if (v10)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v10);
    v11 = __p;
  }

  else
  {
    v11 = 0;
  }

  v14 = 0;
  if ((*(this->var0 + 8))(this, a4, v11, &v14))
  {
    v12 = (*(this->var0 + 10))(this, __p, v14, a2, a3, a5);
  }

  else
  {
    v12 = 0;
  }

  if (v14)
  {
    MEMORY[0x25F896FE0](v14, 0x1000C8077774924);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_25D4D3BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptoKey::encryptBlock(OCCCryptoKey *this, SsrwOOStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (a4)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, a4);
  }

  v14 = a4;
  SsrwOOStream::seekFromStart(a2, a3);
  (*(a2->var0 + 7))(a2, __p, &v14);
  if (v14 == a4)
  {
    v12 = OCCCryptoKey::encryptBlock(this, __p, a4, a5, a6);
  }

  else
  {
    v12 = 0;
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_25D4D3CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptor::create(OCCCryptor *this, const char *__s1, const char *a3)
{
  v3 = a3;
  if (!strcmp(__s1, "ChainingModeECB"))
  {
    v6 = 0;
  }

  else if (!strcmp(__s1, "ChainingModeCBC"))
  {
    v6 = 0;
  }

  else
  {
    if (!strcmp(__s1, "ChainingModeCFB"))
    {
      return 0;
    }

    v6 = 1;
  }

  if (!strcmp(this, "AES"))
  {
    if (v3 <= 0x20 && ((1 << v3) & 0x101010000) != 0)
    {
      operator new();
    }
  }

  else if (!strcmp(this, "DES"))
  {
    if (v3 == 8)
    {
      operator new();
    }
  }

  else if (!strcmp(this, "3DES"))
  {
    if (v3 == 24)
    {
      operator new();
    }
  }

  else if (!strcmp(this, "RC4"))
  {
    v8 = v6 ^ 1;
    if (v3 - 1 > 0x1FF)
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      operator new();
    }
  }

  else
  {
    v7 = strcmp(this, "RC2");
    if (v3 - 1 <= 0x7F && !v7)
    {
      operator new();
    }
  }

  return 0;
}

void OCCRC4Cryptor::OCCRC4Cryptor(OCCRC4Cryptor *this, int a2)
{
  *(this + 1) = 0x300000004;
  *this = &unk_286EC9378;
  *(this + 4) = a2;
}

uint64_t OCCCryptor::decrypt(OCCCryptor *this, const void *a2, const void *a3, const void *a4, unsigned int a5, void *a6, unsigned int a7)
{
  result = (*(*this + 8))(this);
  if (!a3 || result)
  {
    v15 = *(this + 3);
    if (v15 != 2)
    {
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = 2;
      }

      v28 = 0;
      if ((*(*this + 8))(this))
      {
        v26 = 0;
        v27 = 0;
        __p = 0;
        v17 = (*(*this + 8))(this);
        v18 = v17 + a7;
        if (v17 + a7)
        {
          std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v18);
        }

        v19 = *(this + 2);
        v20 = (*(*this + 16))(this, v18);
        v21 = CCCrypt(1u, v19, v16, a2, v20, a3, a4, a5, __p, (v26 - __p), &v28);
        v22 = __p;
        if (v21)
        {
          if (__p)
          {
            v26 = __p;
            operator delete(__p);
          }

          return 0;
        }

        memcpy(a6, __p, a7);
        if (v22)
        {
          v26 = v22;
          operator delete(v22);
        }

        return 1;
      }

      v23 = *(this + 2);
      v24 = (*(*this + 16))(this);
      if (!CCCrypt(1u, v23, v16, a2, v24, a3, a4, a5, a6, a7, &v28))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_25D4D41DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCCryptor::encrypt(OCCCryptor *this, const void *a2, const void *a3, const void *a4, unsigned int a5, void *a6, unsigned int a7)
{
  result = (*(*this + 8))(this);
  if (!a3 || result)
  {
    v15 = *(this + 3);
    if (v15 == 2)
    {
      return 0;
    }

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    v29 = 0;
    if ((*(*this + 8))(this))
    {
      v27 = 0;
      v28 = 0;
      __p = 0;
      v17 = (*(*this + 8))(this);
      v18 = v17 + a7;
      if (v17 + a7)
      {
        std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v18);
      }

      v19 = *(this + 2);
      v20 = (*(*this + 16))(this, v18);
      v21 = CCCrypt(0, v19, v16, a2, v20, a3, a4, a5, __p, (v27 - __p), &v29);
      v22 = __p;
      if (v21)
      {
        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

        return 0;
      }

      memcpy(a6, __p, a7);
      if (v22)
      {
        v27 = v22;
        operator delete(v22);
      }
    }

    else
    {
      v23 = *(this + 2);
      v24 = (*(*this + 16))(this);
      v25 = CCCrypt(0, v23, v16, a2, v24, a3, a4, a5, a6, a7, &v29);
      result = 0;
      if (v25)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

void sub_25D4D4428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCAESCryptor::OCCAESCryptor(uint64_t result, unsigned int a2, int a3)
{
  *(result + 8) = 0;
  *(result + 12) = a3;
  *result = &unk_286EC9338;
  *(result + 16) = a2;
  if (a2 > 0x20 || ((1 << a2) & 0x101010000) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return result;
}

void OCCEncryptionHeader::~OCCEncryptionHeader(OCCEncryptionHeader *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x25F896FE0](v1, 0x1000C8077774924);
  }
}

void OCCEncryptionHeader::OCCEncryptionHeader(OCCEncryptionHeader *this, _DWORD *a2, unsigned int a3)
{
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (a3 <= 0x23)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = a2[2];
  *this = v3;
  *(this + 1) = a2[3];
  *(this + 2) = a2[4];
  *(this + 3) = a2[5];
  *(this + 4) = a2[6];
  *(this + 5) = a2[7];
  *(this + 6) = a2[8];
  if ((v3 - 45) <= 0xFFFFFFC6 && a3 >= 0x2C && v3 - 32 < a3 - 44)
  {
    operator new[]();
  }
}

void OCCEncryptionHeader::OCCEncryptionHeader(OCCEncryptionHeader *this)
{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
}

uint64_t OCCEncryptionHeader::getEncryptionVerifier(OCCEncryptionHeader *this, char *a2, unsigned int a3, unsigned int *a4, const void **a5, const void **a6, unsigned int *a7, const void **a8)
{
  v8 = *this;
  if ((*this + 12) > 0xFFFFFFFB)
  {
    return 0;
  }

  v9 = v8 + 16;
  if (v8 > 0xFFFFFFF3 || v9 >= a3)
  {
    return 0;
  }

  v11 = *&a2[*this + 12];
  *a4 = v11;
  v12 = v11 + v9;
  if ((v12 + 16) > 0xFFFFFFFB)
  {
    return 0;
  }

  v13 = (v12 + 20);
  v14 = HIDWORD(v12) || v12 > 0xFFFFFFEFuLL;
  if (v14 || v13 >= a3)
  {
    return 0;
  }

  v16 = *&a2[(v12 + 16)];
  *a7 = v16;
  v17 = v16 + v13;
  if (HIDWORD(v17) || v17 > a3)
  {
    return 0;
  }

  *a5 = &a2[v9];
  *a6 = &a2[v12];
  *a8 = &a2[v13];
  return 1;
}

uint64_t OCCEncryptionHeader::getNewEncryptionVerifier(OCCEncryptionHeader *this, char *a2, unsigned int a3, unsigned int a4, unsigned __int8 **a5, unsigned __int8 **a6, unsigned __int8 **a7)
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  result = OCCEncryptionHeader::getEncryptionVerifier(this, a2, a3, &v15, &v14, &v13, &v11, &v12);
  if (result)
  {
    if (v12 + a4 - a2 <= a3)
    {
      result = 0;
      if (v15 >= 0x10 && v11 >= 0x10)
      {
        operator new[]();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void OCCEncryptionHeader::initializeForDefaultCryptioAPI(OCCEncryptionHeader *this)
{
  *this = xmmword_25D6FE120;
  *(this + 2) = 0x2800008004;
  *(this + 6) = 1;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 10) = 86;
  operator new[]();
}

const void **OCCEncryptionHeader::writeHeader(const void **this, _DWORD *a2)
{
  *a2 = *(this + 1);
  a2[1] = *(this + 2);
  a2[2] = *(this + 3);
  a2[3] = *(this + 4);
  a2[4] = *(this + 5);
  v2 = *(this + 6);
  *(a2 + 3) = 0;
  a2[5] = v2;
  v3 = *(this + 10);
  if (v3)
  {
    return memcpy(a2 + 8, this[4], v3);
  }

  return this;
}

uint64_t OCCHash::createFromName(OCCHash *this, const char *a2)
{
  if (!strcmp(this, "SHA1") || !strcmp(this, "SHA-1"))
  {
    operator new();
  }

  if (!strcmp(this, "SHA256") || !strcmp(this, "SHA-256"))
  {
    operator new();
  }

  if (!strcmp(this, "SHA384") || !strcmp(this, "SHA-384"))
  {
    operator new();
  }

  if (!strcmp(this, "SHA512") || !strcmp(this, "SHA-512"))
  {
    operator new();
  }

  if (!strcmp(this, "MD5"))
  {
    operator new();
  }

  if (!strcmp(this, "MD4"))
  {
    operator new();
  }

  if (!strcmp(this, "MD2"))
  {
    operator new();
  }

  return 0;
}

void OCCRC4CryptoKey::~OCCRC4CryptoKey(OCCCryptoKey *this)
{
  this->var0 = &unk_286EC9740;
  var0 = this[1].var0;
  if (var0)
  {
    MEMORY[0x25F896FE0](var0, 0x1000C8077774924);
  }

  OCCCryptoKey::~OCCCryptoKey(this);
}

{
  OCCRC4CryptoKey::~OCCRC4CryptoKey(this);

  JUMPOUT(0x25F897000);
}

uint64_t OCCRC4CryptoKey::create(OCCRC4CryptoKey *this, const void *a2)
{
  if (a2 >= 0x34)
  {
    operator new[]();
  }

  return 0;
}

void OCCRC4CryptoKey::OCCRC4CryptoKey(OCCRC4CryptoKey *this, unsigned __int8 *a2, char *a3, char *a4)
{
  OCCCryptoKey::OCCCryptoKey(this, a3, a4, 0x10u, 0x10u, 0x10u);
  *v5 = &unk_286EC9740;
  v5[6] = a2;
  v5[7] = &unk_286EC9650;
  OCCRC4Cryptor::OCCRC4Cryptor((v5 + 8), 16);
}

uint64_t OCCRC4CryptoKey::encryptionInfo(OCCRC4CryptoKey *this, unsigned __int8 **a2, unsigned int *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (!*(this + 6))
  {
    return 0;
  }

  if (*(this + 2))
  {
    if (*(this + 3))
    {
      *a3 = 52;
      operator new[]();
    }
  }

  return 0;
}

uint64_t OCCRC4CryptoKey::computeKeySeed(OCCRC4CryptoKey *this, const void *a2, CC_LONG a3, char *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *md = 0;
  v15 = 0;
  OCCMD5Hash::computeHash((this + 56), a2, a3, md);
  v6 = 0;
  *v13 = *md;
  v13[4] = md[4];
  *&v13[5] = **(this + 6);
  memset(data, 0, sizeof(data));
  do
  {
    v7 = data + v6;
    *v7 = *v13;
    *(v7 + 13) = *&v13[13];
    v6 += 21;
  }

  while (v6 != 336);
  v11[0] = 0;
  v11[1] = 0;
  OCCMD5Hash::computeHash((this + 56), data, 0x150u, v11);
  v8 = (**this)(this);
  if (v8 >= 6)
  {
    v9 = v8 - 5;
  }

  else
  {
    v9 = 0;
  }

  bzero(a4 + 5, v9);
  *a4 = v11[0];
  a4[4] = BYTE4(v11[0]);
  return 1;
}

double OCCRC4CryptoKey::decryptVerificationInfo(OCCRC4CryptoKey *this, const void *a2, const void *a3, _OWORD *a4, _OWORD *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v7 = *(this + 3);
  v12[0] = **(this + 2);
  v12[1] = *v7;
  if (OCCCryptor::decrypt((this + 64), a2, 0, v12, 0x20u, &v10, 0x20u))
  {
    result = *&v10;
    v9 = v11;
    *a4 = v10;
    *a5 = v9;
  }

  return result;
}

uint64_t OCCRC4CryptoKey::computeVerifierBlockKey(OCCRC4CryptoKey *this, void *a2)
{
  v3 = (*(*this + 32))(this);
  bzero(a2, v3);
  return 1;
}

uint64_t OCCRC4CryptoKey::computeVerifierHashBlockKey(OCCRC4CryptoKey *this, void *a2)
{
  v3 = (*(*this + 32))(this);
  bzero(a2, v3);
  return 1;
}

BOOL OCCRC4CryptoKey::deriveKey(OCCRC4CryptoKey *this, const void *a2, _OWORD *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (v3)
  {
    v7 = (*(*this + 32))(this);
    memcpy((v3 + 5), a2, v7);
    memset(md, 0, sizeof(md));
    OCCMD5Hash::computeHash((this + 56), *(this + 1), 9u, md);
    *a3 = *md;
  }

  return v3 != 0;
}

uint64_t OCCRC4CryptoKey::deriveDecryptionKey(OCCRC4CryptoKey *this, int a2, void *a3, unsigned __int8 **a4)
{
  v5 = a2;
  *a4 = 0;
  return (*(*this + 56))(this, &v5, a3);
}

uint64_t OCCRC4CryptoKey::decryptBlockUsingDecryptionKey(OCCRC4CryptoKey *this, const void *a2, int a3, const void *a4, const void *a5, unsigned int a6, void *a7)
{
  if (!a7 || OCCRC4Cryptor::getKeySizeInBytes((this + 64)) != a3)
  {
    return 0;
  }

  return OCCCryptor::decrypt((this + 64), a2, 0, a5, a6, a7, a6);
}

uint64_t OCCRC4CryptoKey::encryptBlockUsingEncryptionKey(OCCRC4CryptoKey *this, const void *a2, const void *a3, const void *a4, unsigned int a5, void *a6)
{
  if (a6)
  {
    return OCCCryptor::encrypt((this + 64), a2, 0, a4, a5, a6, a5);
  }

  else
  {
    return 0;
  }
}

BOOL OCCSegmenter::writeIntoStream(OCCSegmenter *this, const void *a2, uint64_t a3, void *a4)
{
  v4 = a2;
  v6 = a2;
  (*(*a3 + 184))(a3, this, &v6, a4);
  return v6 == v4;
}

uint64_t OCCSegmenter::processSegmentsIntoGenericTarget(OCCSegmenter *this, SsrwOOStream *a2, uint64_t a3, OCCCryptoKey *a4, int a5, unsigned int a6, void *a7, unsigned int (*a8)(void *, uint64_t, void *))
{
  v11 = a3;
  SsrwOOStream::seekFromStart(a2, a3);
  v14 = (*(a2->var0 + 6))(a2) - v11;
  if (v14 < a6)
  {
    return 0;
  }

  v15 = *(this + 2);
  if (v15 + a6 <= v14)
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v15)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&v30, v15);
    v16 = *(this + 2);
    __p = 0;
    v28 = 0;
    v29 = 0;
    if (v16)
    {
      std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v16);
    }

    if (!a6)
    {
      goto LABEL_25;
    }

LABEL_11:
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = *(this + 2);
    LODWORD(v22) = v21;
    while (1)
    {
      v23 = *(this + 2) + v20;
      v22 = v23 >= v14 ? v14 - v20 : v22;
      v21 = v23 >= a6 ? a6 - v20 : v21;
      v26 = v22;
      (*(a2->var0 + 7))(a2, v30, &v26);
      if (v26 != v22)
      {
        break;
      }

      if (a5)
      {
        if ((OCCCryptoKey::decryptBlock(a4, v30, v22, v19, __p) & 1) == 0)
        {
          break;
        }
      }

      else if (!OCCCryptoKey::encryptBlock(a4, v30, v22, v19, __p))
      {
        break;
      }

      if (!a8(__p, v21, a7))
      {
        break;
      }

      v19 = (**this)(this, v19);
      v20 += v22;
      if (v20 >= a6)
      {
        goto LABEL_25;
      }
    }

    v17 = 0;
    goto LABEL_27;
  }

  __p = 0;
  v28 = 0;
  v29 = 0;
  if (a6)
  {
    goto LABEL_11;
  }

LABEL_25:
  v17 = 1;
LABEL_27:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v17;
}

void sub_25D4D5994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCSegmenter::encryptSegmentsFromFileHandleIntoStream(OCCSegmenter *this, __sFILE *a2, unsigned int a3, OCCCryptoKey *a4, SsrwOOStream *a5)
{
  if (!a3)
  {
    return 0;
  }

  __ptr = 0;
  v25 = 0;
  v26 = 0;
  v10 = *(this + 2);
  if (v10)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__ptr, v10);
    v11 = *(this + 2);
    __p = 0;
    v22 = 0;
    v23 = 0;
    if (v11)
    {
      std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v11);
      LODWORD(v12) = *(this + 2);
    }

    else
    {
      LODWORD(v12) = 0;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    __p = 0;
    v22 = 0;
    v23 = 0;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v12 = *(this + 2) + v14 >= a3 ? a3 - v14 : v12;
    if (!fread(__ptr, v12, 1uLL, a2))
    {
      break;
    }

    v17 = v12;
    if (v12 < *(this + 2))
    {
      v17 = v12;
      if (OCCAgileCryptoKey::isAgile(a4, v16))
      {
        DataBlockSize = OCCAgileCryptoKey::getDataBlockSize(a4);
        v17 = v12;
        if (DataBlockSize)
        {
          v19 = v12 / DataBlockSize;
          if (v19 <= v19)
          {
            v17 = v12;
          }

          else
          {
            v17 = DataBlockSize + DataBlockSize * v19;
          }
        }
      }
    }

    if (!OCCCryptoKey::encryptBlock(a4, __ptr, v17, v15, __p))
    {
      break;
    }

    v27 = v17;
    (*(a5->var0 + 23))(a5, __p, &v27);
    if (v27 != v17)
    {
      break;
    }

    v15 = (**this)(this, v15);
    v14 += v12;
    if (v14 >= a3)
    {
      v13 = 1;
      goto LABEL_24;
    }
  }

  v13 = 0;
LABEL_24:
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (__ptr)
  {
    v25 = __ptr;
    operator delete(__ptr);
  }

  return v13;
}

void sub_25D4D5BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCSegmenter::decryptSegmentsIntoStream(OCCSegmenter *this, SsrwOOStream *a2, uint64_t a3, OCCCryptoKey *a4, unsigned int a5, SsrwOOStream *a6)
{
  SsrwOOStream::seekFromStart(a6, 0);

  return OCCSegmenter::processSegmentsIntoGenericTarget(this, a2, a3, a4, 1, a5, a6, OCCSegmenter::writeIntoStream);
}

uint64_t OCCSegmenter::encryptSegmentsIntoStream(OCCSegmenter *this, SsrwOOStream *a2, uint64_t a3, OCCCryptoKey *a4, unsigned int a5, SsrwOOStream *a6)
{
  SsrwOOStream::seekFromStart(a6, 0);

  return OCCSegmenter::processSegmentsIntoGenericTarget(this, a2, a3, a4, 0, a5, a6, OCCSegmenter::writeIntoStream);
}

void OCCStandardCryptoKey::~OCCStandardCryptoKey(OCCCryptoKey *this)
{
  this->var0 = &unk_286EC9810;
  var0 = this[1].var0;
  if (var0)
  {
    MEMORY[0x25F896FE0](var0, 0x1000C8077774924);
  }

  v3 = *&this[1].var6;
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  OCCCryptoKey::~OCCCryptoKey(this);
}

{
  OCCStandardCryptoKey::~OCCStandardCryptoKey(this);

  JUMPOUT(0x25F897000);
}

void OCCStandardCryptoKey::OCCStandardCryptoKey(OCCStandardCryptoKey *this, unsigned __int8 *a2, char *a3, char *a4, unsigned int a5, uint64_t a6)
{
  OCCCryptoKey::OCCCryptoKey(this, a3, a4, 0x10u, a5, 0x10u);
  *v9 = &unk_286EC9810;
  v9[6] = a2;
  OCCAESCryptor::OCCAESCryptor(v9 + 7, a6, 0);
  *(this + 10) = &unk_286EC9500;
  *(this + 11) = 0;
  if (a6 > 0x20 || ((1 << a6) & 0x101010000) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }
}

uint64_t OCCStandardCryptoKey::create(OCCStandardCryptoKey *this, const void *a2)
{
  v2 = a2;
  OCCEncryptionHeader::OCCEncryptionHeader(v8, this, a2);
  if ((v8[20] & 7) == 0)
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    if (OCCEncryptionHeader::getNewEncryptionVerifier(v8, this, v2, 0x20u, &v7, &v6, &v5))
    {
      operator new();
    }
  }

  OCCEncryptionHeader::~OCCEncryptionHeader(v8);
  return 0;
}

void sub_25D4D5FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x25F897000](v5, 0x1091C40A2FA867FLL);
  OCCEncryptionHeader::~OCCEncryptionHeader(va);
  _Unwind_Resume(a1);
}

BOOL OCCStandardCryptoKey::computeKeySeed(OCCStandardCryptoKey *this, OCCAgileCryptoKey *a2, const void *a3, unsigned __int8 *a4)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v8 = (*(*this + 32))(this);
  v9 = (v8 + 20);
  if (v8 != -20)
  {
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&__p, v9);
  }

  v10 = *(this + 6);
  v11 = (*(*this + 88))(this, v9);
  v12 = (OCCAgileCryptoKey::computeInputForHashFinalWithZeroBlockKey(a2, a3, v10, 0x10, v11, 0xC350, __p, (v16 - __p), v14) & 1) != 0 && OCCSHA1Hash::computeHash((this + 80), __p, v16 - __p, a4);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_25D4D6110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCStandardCryptoKey::decryptVerificationInfo(OCCStandardCryptoKey *this, const void *a2, const void *a3, void *a4, void *a5)
{
  result = OCCCryptor::decrypt((this + 56), a2, 0, *(this + 2), *(this + 8), a4, *(this + 10));
  if (result)
  {
    v9 = *(this + 3);
    v10 = *(this + 9);
    OutputSize = OCCSHA1Hash::getOutputSize((this + 80));

    return OCCCryptor::decrypt((this + 56), a3, 0, v9, v10, a5, OutputSize);
  }

  return result;
}

uint64_t OCCStandardCryptoKey::computeVerifierBlockKey(OCCStandardCryptoKey *this, void *a2)
{
  v3 = (*(*this + 32))(this);
  bzero(a2, v3);
  return 1;
}

uint64_t OCCStandardCryptoKey::computeVerifierHashBlockKey(OCCStandardCryptoKey *this, void *a2)
{
  v3 = (*(*this + 32))(this);
  bzero(a2, v3);
  return 1;
}

uint64_t OCCStandardCryptoKey::deriveKey(OCCStandardCryptoKey *this, const void *a2, void *a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v6 = (**this)(this, a2);
    v7 = *(this + 11);
    if (v7)
    {
      KeySizeInBytes = OCCAESCryptor::getKeySizeInBytes((this + 56));
      memcpy(a3, v7, KeySizeInBytes);
    }

    data = 0;
    v14 = 0;
    v15 = 0;
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(&data, 0x40u);
    memset(v12, 0, sizeof(v12));
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(v12, 0x40u);
    for (i = 0; i != 20; ++i)
    {
      *(data + i) = *(v3 + i) ^ 0x36;
      *(v12[0] + i) = *(v3 + i) ^ 0x5C;
    }

    memset(data + v6, 54, 64 - v6);
    memset(v12[0] + v6, 92, 64 - v6);
    memset(__p, 0, sizeof(__p));
    std::vector<unsigned char,ChAllocator<unsigned char>>::__append(__p, 0x28u);
    OCCSHA1Hash::computeHash((this + 80), data, v14 - data, __p[0]);
    OCCSHA1Hash::computeHash((this + 80), data, v14 - data, __p[0] + 20);
    OCCAESCryptor::getKeySizeInBytes((this + 56));
    operator new[]();
  }

  return 0;
}

void sub_25D4D6484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCStandardCryptoKey::decryptBlockUsingDecryptionKey(OCCStandardCryptoKey *this, const void *a2, int a3, const void *a4, const void *a5, unsigned int a6, void *a7)
{
  if (OCCAESCryptor::getKeySizeInBytes((this + 56)) != a3)
  {
    return 0;
  }

  return OCCCryptor::decrypt((this + 56), a2, 0, a5, a6, a7, a6);
}

void OCCStreamer::OCCStreamer(OCCStreamer *this, OCCCryptoKey *a2, const char *__s)
{
  this->var0 = &unk_286EC98F8;
  this->var1 = a2;
  this->var2 = 0;
  OCCStreamer::setBaseStringForOutputFilename(this, __s);
}

char *OCCStreamer::setBaseStringForOutputFilename(OCCStreamer *this, const char *__s)
{
  result = this->var2;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  this->var2 = 0;
  if (__s)
  {
    strlen(__s);
    operator new[]();
  }

  return result;
}

void OCCStreamer::~OCCStreamer(OCCStreamer *this)
{
  this->var0 = &unk_286EC98F8;
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 13))(var1);
  }

  var2 = this->var2;
  if (var2)
  {
    MEMORY[0x25F896FE0](var2, 0x1000C8077774924);
  }
}

void sub_25D4D6830(void *a1)
{
  MEMORY[0x25F897000](v2, 0x1020C400B9F2F10);
  __cxa_begin_catch(a1);
  if (*v1)
  {
    SsrwOORootStorage::~SsrwOORootStorage(*v1);
    MEMORY[0x25F897000]();
  }

  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x25D4D6820);
}

void sub_25D4D68BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4D68B0);
}

void sub_25D4D68FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4D68F0);
}

void OCCStreamer::openOutputRootStorage(OCCStreamer *this, __sFILE *a2, SsrwOORootStorage *a3, int8x8_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  SsrwOORootStorage::createInStream(a3, a2, a4);
  v5 = (*(this->var0 + 3))(this);
  SsrwOOStorage::getInfo(v5);
}

void sub_25D4D69B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x25D4D6984);
  }

  _Unwind_Resume(a1);
}

uint64_t OCCStreamer::openOutputRootStorageWithCLSID(OCCStreamer *this, __sFILE *a2, _SsrwOO_GUID a3, SsrwOORootStorage *a4, int8x8_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  SsrwOORootStorage::createRWStorageInStream(a4, a2, a5);
  SsrwOOStorage::setClass(a4, &v7);
  return 1;
}

void sub_25D4D6A40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x25D4D6A14);
  }

  _Unwind_Resume(a1);
}

void OCCStreamer::openOutputStream(OCCStreamer *this, SsrwOOStorage *a2, SsrwOOStream **a3, const char *__s)
{
  SsrwOOStorage::createStream(a2, __s);
}

{
  SsrwOOStorage::createStream(a2, __s);
}

void sub_25D4D6A8C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4D6A80);
}

void sub_25D4D6AD0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4D6AC4);
}

void sub_25D4D6B14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4D6B08);
}

void sub_25D4D6B58(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4D6B4CLL);
}

void sub_25D4D6B9C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D4D6B90);
}

char *OCCUtilities::resizeData(char *this, char *a2, unint64_t a3, unint64_t __c, _BYTE *a5, void *a6)
{
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    v7 = a5;
    do
    {
      v8 = *this++;
      *v7++ = v8;
      --v6;
    }

    while (v6);
  }

  v9 = a3 > a2;
  v10 = a3 - a2;
  if (v9)
  {
    return memset(&a2[a5], __c, v10);
  }

  return this;
}

_BYTE *OCCUtilities::randomizeData(_BYTE *this, unsigned __int8 *a2)
{
  if (this)
  {
    v2 = a2;
    if (a2)
    {
      v3 = this;
      this = random();
      v4 = 0;
      v5 = this;
      do
      {
        *v3 = *(&v5 + v4++);
        if (v4 == 4)
        {
          this = random();
          v4 = 0;
          v5 = this;
        }

        ++v3;
        --v2;
      }

      while (v2);
    }
  }

  return this;
}

void OCCXmlStreamer::~OCCXmlStreamer(OCCStreamer *this)
{
  this->var0 = &unk_286EC9948;
  var0 = this[1].var0;
  if (var0)
  {
    (*(*var0 + 2))(var0);
  }

  var1 = this[1].var1;
  if (var1)
  {
    SsrwOORootStorage::~SsrwOORootStorage(var1);
    MEMORY[0x25F897000]();
  }

  v4 = this[2].var0;
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8077774924);
  }

  var2 = this[1].var2;
  if (var2)
  {
    fclose(var2);
  }

  OCCStreamer::~OCCStreamer(this);
}

{
  OCCXmlStreamer::~OCCXmlStreamer(this);

  JUMPOUT(0x25F897000);
}

void OCCXmlStreamer::createUsingRootStorage(OCCStreamer *a1, _DWORD *a2, uint64_t a3, const char *a4)
{
  *a2 = 8011;
  v4 = 0;
  OCCStreamer::openInputStream(a1, &v4, "EncryptionInfo", a4);
}

void OCCXmlStreamer::createUsingInputBuffer(OCCStreamer *a1, const void **a2, _DWORD *a3, SsrwOORootStorage **a4)
{
  v4 = 0;
  *a3 = 8001;
  OCCStreamer::openInputBuf(a1, a2, &v4, a4);
}

uint64_t OCCXmlStreamer::setDefaultPassphrase(OCCXmlStreamer *this, const char *__s)
{
  result = *(this + 6);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 6) = 0;
  if (__s)
  {
    strlen(__s);
    operator new[]();
  }

  return result;
}

uint64_t OCCXmlStreamer::encryptIntoFile(OCCStreamer *this, __sFILE *a2)
{
  SsrwOORootStorage::SsrwOORootStorage(&v7);
  *&v8.var0 = 0;
  *v8.var3 = 0;
  if (OCCStreamer::openOutputRootStorageWithCLSID(this, a2, v8, &v7, v4))
  {
    v5 = OCCXmlStreamer::encryptIntoRootStorage(this, &v7);
    SsrwOORootStorage::close(&v7, 1);
  }

  else
  {
    v5 = 0;
  }

  SsrwOORootStorage::~SsrwOORootStorage(&v7);
  return v5;
}

void sub_25D4D7184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SsrwOORootStorage::~SsrwOORootStorage(va);
  _Unwind_Resume(a1);
}

uint64_t OCCXmlStreamer::encryptIntoRootStorage(OCCStreamer *this, SsrwOOStorage *a2)
{
  if (OCCAgileCryptoKey::isAgile(this->var1, a2))
  {
    v5 = 0;
    OCCStreamer::openOutputStream(this, a2, &v5, "EncryptedPackage");
  }

  return 0;
}

FILE *OCCXmlStreamer::encryptPackageStream(OCCXmlStreamer *this, SsrwOOStream *a2)
{
  result = *(this + 5);
  if (result)
  {
    fseek(result, 0, 2);
    v5 = ftello(*(this + 5));
    fseek(*(this + 5), 0, 0);
    result = 0;
    if (!HIDWORD(v5))
    {
      (*(a2->var0 + 28))(a2, v5);
      (*(a2->var0 + 28))(a2, 0);
      if (OCCSegmenter::encryptSegmentsFromFileHandleIntoStream(*(this + 3), *(this + 5), v5, *(this + 1), a2))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t OCCXmlStreamer::writeEncryptionInfoStream(OCCXmlStreamer *this, SsrwOOStream *a2)
{
  v6 = 0;
  v5 = 0;
  v3 = (*(**(this + 1) + 120))(*(this + 1), &v6, &v5);
  if (v3)
  {
    (*(a2->var0 + 23))(a2, v6, &v5);
  }

  return v3;
}

void sub_25D4D9970(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D4D9D54(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C4063F6A4DALL);

  _Unwind_Resume(a1);
}

void sub_25D4DA0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v44 = v41;

  XlChartTextFrame::~XlChartTextFrame(&a10);
  XlChartParent::~XlChartParent(&a37);

  _Unwind_Resume(a1);
}

void XlChartTitle::~XlChartTitle(XlChartTextFrame *this)
{
  XlChartTextFrame::~XlChartTextFrame(this);

  JUMPOUT(0x25F897000);
}

void sub_25D4DAC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, EDValue a13)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void XlChartDefaultTextFrame::~XlChartDefaultTextFrame(XlChartTextFrame *this)
{
  XlChartTextFrame::~XlChartTextFrame(this);

  JUMPOUT(0x25F897000);
}

void sub_25D4DD0F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25D4DD8BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D4DDA38(_Unwind_Exception *a1, XlChartFrameType *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  XlChartFrameType::~XlChartFrameType(&a10);

  _Unwind_Resume(a1);
}

void XlChartPlotFrame::~XlChartPlotFrame(XlChartFrameType *this)
{
  XlChartFrameType::~XlChartFrameType(this);

  JUMPOUT(0x25F897000);
}

void XlChartLegendFrame::~XlChartLegendFrame(XlChartTextFrame *this)
{
  XlChartTextFrame::~XlChartTextFrame(this);

  JUMPOUT(0x25F897000);
}

void sub_25D4DE408(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D4DF208(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C4063F6A4DALL);

  _Unwind_Resume(a1);
}

void sub_25D4E0B3C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C409FBAB9B8);

  _Unwind_Resume(a1);
}

void sub_25D4E0D68(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C40EC8FBF4ALL);

  _Unwind_Resume(a1);
}

void sub_25D4E0FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_25D4E3E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, EDValue a9)
{
  EDValue::~EDValue(&a9);

  _Unwind_Resume(a1);
}

void sub_25D4E50C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D4EAA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, EDValue a11)
{
  EDValue::~EDValue((v11 + 8));

  _Unwind_Resume(a1);
}

void sub_25D4EE580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, EDValue a9)
{
  v11 = v10;

  EDValue::~EDValue(&a9);
  _Unwind_Resume(a1);
}

void sub_25D4F02A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4F039C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4F0498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D4F0A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D4F0BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D4F20DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D4F23FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D4F69F4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D4F6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, EDValue a9)
{
  EDValue::~EDValue(&a9);

  _Unwind_Resume(a1);
}

void sub_25D4F6CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, EDValue a9)
{
  EDValue::~EDValue(&a9);

  _Unwind_Resume(a1);
}

void sub_25D4F6E68(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_25D4F8E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_25D4FB190(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_25D4FC598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object, void *a15, uint64_t a16, void *a17, void *a18)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x25D4FC4D4);
  }

  _Unwind_Resume(a1);
}

void sub_25D4FD024(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D4FD208(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_25D4FF764(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25D5020E8(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1000C40C36A4E17);

  _Unwind_Resume(a1);
}

void sub_25D502F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  *(v14 - 120) = a9;
  CsSimpleHeapVector<XlXf>::~CsSimpleHeapVector((v14 - 112));

  _Unwind_Resume(a1);
}

void XlCellFormatTable::~XlCellFormatTable(void **this)
{
  *this = &unk_286EC9B40;
  CsSimpleHeapVector<XlXf>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9B40;
  CsSimpleHeapVector<XlXf>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void XlCollection::~XlCollection(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void sub_25D50342C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D5036C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v11;

  XlColorTable::~XlColorTable(&a9);
  _Unwind_Resume(a1);
}

void sub_25D503934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(va);
  _Unwind_Resume(a1);
}

void XlColumnTable::~XlColumnTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void sub_25D503F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  XlConditionalFormatTable::~XlConditionalFormatTable(&a9);

  _Unwind_Resume(a1);
}

uint64_t EBConvertCsException(unsigned int *a1)
{
  if (*a1 != 8003)
  {
    OCConvertCsException(a1);
  }

  v2 = ECUnsupportedVersion;

  return [TCMessageException raise:v2];
}

void sub_25D504878(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x25D504824);
  }

  objc_exception_rethrow();
}

void sub_25D504898()
{
  objc_end_catch();

  JUMPOUT(0x25D50486CLL);
}

void sub_25D504AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_25D50558C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XlFontTable::~XlFontTable(va);

  _Unwind_Resume(a1);
}

void sub_25D505CB8(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x10B1C40B04403CELL);

  _Unwind_Resume(a1);
}

void sub_25D506208(_Unwind_Exception *a1, XlPtg *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  XlPtg::~XlPtg(&a10);

  _Unwind_Resume(a1);
}

uint64_t XlFormulaProcessor::XLFormulaStream::WriteString(XlFormulaProcessor::XLFormulaStream *this, unsigned __int8 *a2, int a3)
{
  v5 = *a2;
  v6 = a2[3];
  if (a3)
  {
    (*(*this + 32))(this, *a2);
  }

  else
  {
    (*(*this + 24))(this, *a2);
  }

  result = (*(*this + 24))(this, v6);
  v8 = a2 + 4;
  if (v6)
  {
    if (v5)
    {
      do
      {
        --v5;
        v10 = *v8;
        v8 += 2;
        result = (*(*this + 32))(this, v10);
      }

      while (v5);
    }
  }

  else if (v5)
  {
    do
    {
      --v5;
      v9 = *v8++;
      result = (*(*this + 24))(this, v9);
    }

    while (v5);
  }

  return result;
}

uint64_t XlFormulaProcessor::XLFormulaWriteStream::WriteByte(uint64_t this, char a2)
{
  v2 = *(this + 8);
  *(this + 8) = v2 + 1;
  *v2 = a2;
  return this;
}

uint64_t XlFormulaProcessor::XLFormulaWriteStream::WriteWord(XlFormulaProcessor::XLFormulaWriteStream *this, uint64_t a2)
{
  result = CsLeWriteUInt16(a2, *(this + 1));
  *(this + 1) += 2;
  return result;
}

uint64_t XlFormulaProcessor::XLFormulaWriteStream::WriteDWord(XlFormulaProcessor::XLFormulaWriteStream *this, uint64_t a2)
{
  result = CsLeWriteUInt32(a2, *(this + 1));
  *(this + 1) += 4;
  return result;
}

void *XlFormulaProcessor::XLFormulaWriteStream::Write(void **this, unsigned __int8 *a2, size_t __n)
{
  v3 = __n;
  result = memcpy(this[1], a2, __n);
  this[1] = this[1] + v3;
  return result;
}

void sub_25D506810(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = objc_begin_catch(exc_buf);
  if (a2 != 2)
  {
    [TCMessageContext reportWarning:OABadFormat];
    objc_end_catch();
    JUMPOUT(0x25D5067E0);
  }

  v12 = v11;
  objc_exception_rethrow();
}

void sub_25D5068C4()
{
  objc_end_catch();

  JUMPOUT(0x25D506824);
}

void sub_25D506FCC(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);

  XlGraphicsInfo::~XlGraphicsInfo(va);
  _Unwind_Resume(a1);
}

void sub_25D5071C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D507188);
}

void sub_25D507314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_25D507554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OcBinaryData::~OcBinaryData(&a10);

  _Unwind_Resume(a1);
}

void sub_25D5077D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(va);

  _Unwind_Resume(a1);
}

void XlNoteTable::~XlNoteTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void sub_25D507E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(va);
  _Unwind_Resume(a1);
}

void XlHyperlinkTable::~XlHyperlinkTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void sub_25D508750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;

  XlMergeTable::~XlMergeTable(&a9);
  _Unwind_Resume(a1);
}

void sub_25D508BDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::vector<XlRecord *,ChAllocator<XlRecord *>>::__emplace_back_slow_path<XlRecord *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D508EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D5090B4(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    v10 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  objc_begin_catch(exc_buf);
  objc_exception_rethrow();
}

void sub_25D509438(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25D50A0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = v14;

  XlPageProperties::~XlPageProperties(&a9);
  _Unwind_Resume(a1);
}

void sub_25D50A24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D50A664(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1000C40BDFB0063);

  _Unwind_Resume(a1);
}

void sub_25D50A79C(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x25F897000](v4, 0x10B1C40C6ED1AFELL);

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_25D50ACA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D50AED8(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);

  _Unwind_Resume(a1);
}

void std::vector<OcText,ChAllocator<OcText>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*v9)(v7);
        v6 -= 48;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_25D50C3E8(_Unwind_Exception *a1, uint64_t a2, OcText *a3, OcText *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OcText::~OcText(&a11);

  OcText::~OcText(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::vector<short *,ChAllocator<short *>>::__emplace_back_slow_path<short * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<short *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D50C650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<short *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25D50C7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  XlStringTable::~XlStringTable(&a9);

  _Unwind_Resume(a1);
}

void sub_25D50CF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, ...)
{
  va_start(va, a5);

  XlPivotInfoTable::~XlPivotInfoTable(va);
  _Unwind_Resume(a1);
}

void sub_25D50D2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  XlDocumentProperties::~XlDocumentProperties(va);
  _Unwind_Resume(a1);
}

void sub_25D50D428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  XlDocumentPresentationTable::~XlDocumentPresentationTable(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::vector<OcText,ChAllocator<OcText>>::__emplace_back_slow_path<OcText const&>(uint64_t a1, const OcText *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x55555555)
  {
    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  if (1431655766 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 1431655766 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (-1431655765 * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAA)
  {
    v6 = 1431655765;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<OcText>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  v15 = v14;
  OcText::OcText(v14, a2);
  *&v15 = v14 + 48;
  v7 = *(a1 + 8);
  v8 = (v14 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<ChAllocator<OcText>,OcText*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OcText,ChAllocator<OcText> &>::~__split_buffer(&v13);
  return v12;
}

void sub_25D50D670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OcText,ChAllocator<OcText> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<OcText>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

OcText *std::__uninitialized_allocator_relocate[abi:ne200100]<ChAllocator<OcText>,OcText*>(int a1, OcText *a2, OcText *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = OcText::OcText((a4 + v7), v8++);
      v7 += 48;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        var0 = v11->var0;
        ++v11;
        result = (*var0)(v6);
        ++v10;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_25D50D788(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<ChAllocator<OcText>,OcText*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<OcText,ChAllocator<OcText> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_25D50D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  XlWorksheetProperties::~XlWorksheetProperties(&a9);

  _Unwind_Resume(a1);
}

void sub_25D50DC1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v4;

  XlSheetPresentationTable::~XlSheetPresentationTable(va);
  _Unwind_Resume(a1);
}

void sub_25D50FDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  for (i = 1096; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25D5109B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ECMappingContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D510AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v11;
  OcText::~OcText(&a9);

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_25D511934(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id formulaForEDCell(const EDCellHeader *a1, EDRowBlocks *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && (a1->var0 & 0x10000000) != 0 && (var0 = a1[1].var0, var0 != -1))
  {
    v6 = [(EDRowBlocks *)v3 formulas];
    v7 = [v6 objectAtIndex:var0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t BOOLValueForEDCell(const EDCellHeader *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a1->var0 >> 29 != 1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL BOOLValueForEDCell(const EDCellHeader *)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:181 isFatal:0 description:"Invalid Cell Type!"];

    +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_6:
    var1 = 0;
    return var1 & 1;
  }

  if ((a1->var0 & 0x10000000) != 0)
  {
    var1 = a1[1].var1;
  }

  else
  {
    var1 = a1[1].var0;
  }

  return var1 & 1;
}

void setInlineNSStringValueForEDCell(EDCellHeader *a1, NSString *a2, EDResources *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [[EDString alloc] initWithString:v8];
  v7 = [(EDResources *)v5 strings];
  setStringIndexValueForEDCell(a1, [v7 addObject:v6]);
}

uint64_t edCellHasRef(uint64_t result)
{
  if (result)
  {
    return (*(result + 3) >> 3) & 1;
  }

  return result;
}

void sub_25D5132FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25D51849C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<XlPtg *,ChAllocator<XlPtg *>>::__emplace_back_slow_path<XlPtg * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D518AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D519454(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D51C210(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id EDValue::resolvedEDStringValue(EDValue *this, EDResources *a2)
{
  v3 = a2;
  v4 = v3;
  if (this->type == 6)
  {
    v6 = [(EDResources *)v3 strings];
    v5 = [v6 objectAtIndex:this->var0.stringIndex];
  }

  else if (this->type == 3)
  {
    v5 = EDValue::edStringValue(this);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id EDValue::edStringValue(EDValue *this)
{
  v1 = EDValue::nsStringValue(this);
  if (v1)
  {
    v2 = [EDString edStringWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id EDValue::nsStringValue(EDValue *this)
{
  if (this->type == 3)
  {
    if (this->var0.stringIndex)
    {
      v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:this->var0.stringIndex];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void EDValue::makeFromCell(EDValue *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v5 = typeForEDCell(this);
  *a2 = v5;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *(a2 + 8) = BOOLValueForEDCell(this);
      }
    }

    else
    {
      *(a2 + 8) = 0;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        *(a2 + 8) = numberValueForEDCell(this);
        break;
      case 3:
        *a2 = 6;
        *(a2 + 8) = stringIndexValueForEDCell(this);
        break;
      case 5:
        *(a2 + 8) = errorValueForEDCell(this);
        break;
    }
  }
}

void EDValue::makeWithNSString(EDValue *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this;
  *(a2 + 8) = 0;
  *a2 = 3;
  if (v4)
  {
    v6 = v4;
    v5 = [(EDValue *)v6 UTF8String];
    if (v5)
    {
      *(a2 + 8) = strdup(v5);
    }

    else
    {
      *a2 = 5;
      *(a2 + 8) = 2;
    }

    v4 = v6;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F896F70](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25D528DE4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_25D529BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D52C9A0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_25D52D2EC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t **std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<unsigned int>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          std::__tree<unsigned int>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<unsigned int>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<unsigned int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<unsigned int>::__emplace_multi<unsigned int const&>();
  }

  return result;
}

void sub_25D531F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<unsigned int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<unsigned int>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<unsigned int>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<unsigned int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void __cxx_global_array_dtor_26_0()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void sub_25D5332D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

void sub_25D534808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_68_0()
{
  for (i = 0xC8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_116_0()
{
  for (i = 0x128u; i != -8; i -= 16)
  {
  }
}

void sub_25D537E84(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_62_0()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_23_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void sub_25D539220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D53A06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_25D53B114(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_11_0()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_20_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void sub_25D53EBC4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25D53FBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

void *std::vector<EDReference * {__strong}>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<EDReference * {__strong}>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<EDReference * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OADTableCell * {__strong}>>(a1, a2);
  }

  std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
}

void sub_25D540B30(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D540CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_25D5427EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25D5450C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D546610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_25D547838(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25D549D18(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_25D549E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EDCellIterator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D54A244(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [EDBuildableFormula stringFromStringTokenAtIndex:v1];
  }

  _Unwind_Resume(exception_object);
}

void sub_25D54B614(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x10B1C40D583828BLL);

  _Unwind_Resume(a1);
}

uint64_t childCountForToken(int a1)
{
  v2 = categoryForType(a1);
  result = 0;
  if (v2 && v2 != 3)
  {
    if (a1 <= 17)
    {
      if ((a1 - 3) < 0xF)
      {
        return 2;
      }

      return 0;
    }

    if (a1 <= 33)
    {
      if ((a1 - 18) < 4)
      {
        return 1;
      }

      if (a1 != 25 && a1 != 33)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }

    if (a1 <= 65)
    {
      if (a1 != 34 && a1 != 65)
      {
        return 0;
      }
    }

    else if (a1 != 66 && a1 != 97 && a1 != 98)
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

_WORD *copyStringToExtendedData(const unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  *a2 = a3;
  *(a2 + 1) = 265;
  result = _ChWcsncpy(a2 + 2, a1, a3);
  *&a2[2 * a3 + 4] = 0;
  return result;
}

uint64_t convertValueReference(uint64_t result, unsigned int a2)
{
  v2 = 32 * a2 + 32;
  if (a2 >= 3)
  {
    v2 = 0;
  }

  if ((result & 0x60) != 0)
  {
    v3 = result & 0xFFFFFF9F;
    if ((result & 0x60) != v2 && v3 <= 0x1B)
    {
      if (((1 << v3) & 0xC000036) != 0)
      {
        return v3 | v2;
      }

      if (!v3)
      {
        if (!a2)
        {
          v2 = 96;
        }

        return v3 | v2;
      }
    }
  }

  return result;
}

uint64_t addOperator(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 addToken:a2 extendedDataLength:0 numArgs:childCountForToken(a2)];

  return 1;
}

BOOL addFunction(void *a1, __int16 a2, uint64_t a3)
{
  v4 = [a1 addToken:65 extendedDataLength:2 numArgs:a3];
  if (v4)
  {
    *v4 = a2;
  }

  return v4 != 0;
}

BOOL addVariableFunction(void *a1, __int16 a2, uint64_t a3)
{
  v3 = a3;
  v5 = [a1 addToken:66 extendedDataLength:8 numArgs:a3];
  if (v5)
  {
    *v5 = v3;
    v5[1] = 0;
    v5[2] = a2;
    v5[3] = 0;
  }

  return v5 != 0;
}

BOOL addStringOperand(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 length];
  v6 = v5;
  v7 = [v3 addToken:23 extendedDataLength:(2 * v5 + 8)];
  if (v7)
  {
    v8 = [v4 cStringUsingEncoding:10];
    *v7 = v6;
    v7[1] = 265;
    _ChWcsncpy(v7 + 2, v8, v6);
    v7[v6 + 2] = 0;
  }

  return v7 != 0;
}

BOOL addNumberOperand(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 <= 65535.0 && ((v5 = trunc(a2), a2 >= 0.0) ? (v6 = v5 == a2) : (v6 = 0), v6))
  {
    v7 = [v3 addToken:30 extendedDataLength:{2, v5}];
    if (v7)
    {
      *v7 = a2;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = addFloatOperand(v3, a2);
  }

  return v8;
}

BOOL addFloatOperand(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 addToken:31 extendedDataLength:8];
  v5 = v4;
  if (v4)
  {
    CsCopyFloat64ToPackedLocation(v4, a2);
  }

  return v5 != 0;
}

BOOL addIntOperand(void *a1, __int16 a2)
{
  v3 = [a1 addToken:30 extendedDataLength:2];
  if (v3)
  {
    *v3 = a2;
  }

  return v3 != 0;
}

BOOL addBoolOperand(void *a1, char a2)
{
  v3 = [a1 addToken:29 extendedDataLength:1];
  if (v3)
  {
    *v3 = a2;
  }

  return v3 != 0;
}

BOOL addRef3DOperandWithSheet(void *a1, int a2, __int16 a3, __int16 a4, __int16 a5, int a6)
{
  v11 = a1;
  v12 = v11;
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 90;
    }

    else if (a2 == 2)
    {
      v13 = 122;
    }

    else
    {
      v13 = 26;
    }
  }

  else
  {
    v13 = 58;
  }

  v14 = [v11 addToken:v13 extendedDataLength:6];
  v15 = v14;
  if (v14)
  {
    *v14 = a3;
    v14[1] = a4;
    v14[2] = a5;
    if (a6)
    {
      [v12 markLastTokenAsDuration];
    }
  }

  return v15 != 0;
}

BOOL addArea3DOperandWithSheet(void *a1, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  v13 = a1;
  v14 = v13;
  if (a2)
  {
    if (a2 == 1)
    {
      v15 = 91;
    }

    else if (a2 == 2)
    {
      v15 = 123;
    }

    else
    {
      v15 = 27;
    }
  }

  else
  {
    v15 = 59;
  }

  v16 = [v13 addToken:v15 extendedDataLength:10];
  if (v16)
  {
    *v16 = a3;
    v16[1] = a4;
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = a7;
  }

  v17 = v16 != 0;

  return v17;
}

uint64_t addNumberToArray(void *a1, int a2, double a3)
{
  v5 = a1;
  v6 = [v5 setExtendedDataForLastTokenAtIndex:(a2 + 2) length:10];
  *v6 = 1;
  CsCopyFloat64ToPackedLocation((v6 + 2), a3);

  return 1;
}

BOOL addUnicodeStringToArray(void *a1, const unsigned __int16 *a2, unint64_t a3, int a4)
{
  v7 = a1;
  v8 = v7;
  if (a3 <= 0x7FFE)
  {
    v9 = [v7 setExtendedDataForLastTokenAtIndex:(a4 + 2) length:(2 * a3 + 8)];
    *v9 = 2;
    *(v9 + 2) = a3;
    v10 = v9 + 2;
    *(v9 + 4) = 265;
    _ChWcsncpy((v9 + 6), a2, a3);
    *(v10 + 2 * a3 + 4) = 0;
  }

  return a3 < 0x7FFF;
}

uint64_t addBoolToArray(void *a1, char a2, int a3)
{
  v4 = [a1 setExtendedDataForLastTokenAtIndex:(a3 + 2) length:2];
  *v4 = 4;
  v4[1] = a2;
  return 1;
}

BOOL addErrorToken(void *a1, __int16 a2)
{
  v3 = [a1 addToken:28 extendedDataLength:2];
  if (v3)
  {
    *v3 = a2;
  }

  return v3 != 0;
}

BOOL addAreaOperandFromRefExtendedData(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = a1;
  *v17 = 0;
  *v18 = 0;
  *v16 = 0;
  *v15 = 0;
  extractDataFromPtgRefBuffer(a3, v18, &v15[1], v17, v15);
  extractDataFromPtgRefBuffer(a2, &v18[1], &v16[1], &v17[1], v16);
  v7 = v18[0];
  v6 = v18[1];
  if (v18[1] <= v18[0])
  {
    v8 = v18[0];
    LOWORD(v7) = v18[1];
  }

  else
  {
    v18[0] = v18[1];
    v18[1] = v7;
    v8 = v6;
  }

  v10 = v17[0];
  v9 = v17[1];
  if (v17[1] <= v17[0])
  {
    v11 = v17[0];
    v10 = v17[1];
  }

  else
  {
    v17[0] = v17[1];
    v17[1] = v10;
    v11 = v9;
  }

  if (v16[1])
  {
    v10 |= 0x8000u;
    v17[1] = v10;
  }

  if (v16[0])
  {
    v10 |= 0x4000u;
    v17[1] = v10;
  }

  if (v15[1])
  {
    v11 |= 0x8000u;
    v17[0] = v11;
  }

  if (v15[0])
  {
    v11 |= 0x4000u;
    v17[0] = v11;
  }

  v12 = [v5 addToken:69 extendedDataLength:8];
  if (v12)
  {
    *v12 = v7;
    v12[1] = v8;
    v12[2] = v10;
    v12[3] = v11;
  }

  v13 = v12 != 0;

  return v13;
}