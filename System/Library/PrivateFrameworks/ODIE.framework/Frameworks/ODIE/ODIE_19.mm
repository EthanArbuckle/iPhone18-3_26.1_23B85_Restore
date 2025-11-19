void anonymous namespace::InMemoryBuffer::~InMemoryBuffer(_anonymous_namespace_::InMemoryBuffer *this)
{
  *this = &unk_286E79608;
  v3 = *(this + 4);
  v2 = this + 32;
  if (v3)
  {
    llvm::sys::Memory::releaseMappedMemory(v2);
  }

  *this = &unk_286E79650;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_286E79608;
  v3 = *(this + 4);
  v2 = this + 32;
  if (v3)
  {
    llvm::sys::Memory::releaseMappedMemory(v2);
  }

  *this = &unk_286E79650;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x25F891040);
}

uint64_t *anonymous namespace::OnDiskBuffer::commit@<X0>(_anonymous_namespace_::OnDiskBuffer *this@<X0>, void *a2@<X8>)
{
  v5 = llvm::timeTraceProfilerBegin("Commit buffer to disk", 0x15uLL, 0, 0);
  v6 = *(this + 5);
  if (v6)
  {
    munmap(v6, *(this + 4));
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  v9 = 260;
  v8 = this + 8;
  result = llvm::sys::fs::TempFile::keep((this + 56), &v8, v4, a2);
  if (v5)
  {
    result = *TimeTraceProfilerInstance();
    if (result)
    {
      return llvm::TimeTraceProfiler::end(result, v5);
    }
  }

  return result;
}

void anonymous namespace::OnDiskBuffer::~OnDiskBuffer(_anonymous_namespace_::OnDiskBuffer *this)
{
  *this = &unk_286E79698;
  v2 = *(this + 5);
  if (v2)
  {
    munmap(v2, *(this + 4));
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  llvm::sys::fs::TempFile::discard((this + 56), &v4);
  v5 = v4;
  v4 = 0;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v3 = *(this + 5);
  if (v3)
  {
    munmap(v3, *(this + 4));
  }

  *this = &unk_286E79650;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::OnDiskBuffer::discard(_anonymous_namespace_::OnDiskBuffer *this)
{
  llvm::sys::fs::TempFile::discard((this + 56), &v2);
  v3 = v2;
  v2 = 0;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

uint64_t *llvm::Expected<llvm::sys::fs::TempFile>::~Expected(uint64_t *a1)
{
  if (a1[5])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

  return a1;
}

void llvm::raw_ostream::SetBufferSize(llvm::raw_ostream *this)
{
  v1 = *(this + 2);
  if (*(this + 4) != v1)
  {
    *(this + 4) = v1;
    (*(*this + 72))(this);
  }

  operator new[]();
}

void llvm::formatv_object_base::parseFormatString(char *a1@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = a3 + 2;
  a3[1] = 0x200000000;
  if (a2)
  {
    v4 = a2;
    v57 = 0;
    while (1)
    {
      v6 = a1;
      v7 = v4;
      if (*a1 != 123)
      {
        break;
      }

      v8 = 1;
      while (v4 != v8)
      {
        v9 = a1[v8++];
        if (v9 != 123)
        {
          v10 = v8 - 1;
          goto LABEL_15;
        }
      }

      v10 = -1;
LABEL_15:
      if (v4 < v10)
      {
        v10 = v4;
      }

      if (v10 >= 2)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v19 = v10 >> 1;
        if (v4 < v10 >> 1)
        {
          v19 = v4;
        }

        v20 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v4 < v20)
        {
          v20 = v4;
        }

        a1 += v20;
        v4 -= v20;
LABEL_23:
        v21 = 1;
        v22 = 2;
        v23 = v6;
        v24 = 1;
        goto LABEL_24;
      }

      v28 = memchr(a1, 125, v4);
      v14 = 0;
      v12 = 0;
      v21 = 1;
      v22 = 2;
      if (!v28)
      {
        v13 = 0;
        v15 = 0;
        v16 = 0;
        v19 = 64;
        v23 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
        v17 = 0;
        v24 = 1;
        v4 = 0;
        a1 = 0;
LABEL_70:
        v3 = a3;
        goto LABEL_24;
      }

      v29 = v28;
      v30 = v28 - a1;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v19 = 64;
      v23 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
      v17 = 0;
      v24 = 1;
      v4 = 0;
      a1 = 0;
      v3 = a3;
      if (v28 - v6 != -1)
      {
        if (v7 == 1)
        {
          goto LABEL_44;
        }

        v31 = memchr((v6 + 1), 123, v7 - 1);
        v32 = v31 - v6;
        if (!v31)
        {
          v32 = -1;
        }

        if (v32 >= v30)
        {
LABEL_44:
          if (v6 == v29)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30;
          }

          if (v33 >= v7)
          {
            v33 = v7;
          }

          v34 = v33 - 1;
          if (v7 >= v30 + 1)
          {
            v35 = v30 + 1;
          }

          else
          {
            v35 = v7;
          }

          *&v59 = v6 + 1;
          *(&v59 + 1) = v34;
          v12 = llvm::StringRef::trim(&v59, "{}", 2);
          v37 = v36;
          v64 = v12;
          v65 = v36;
          first_not_of = llvm::StringRef::find_first_not_of(&v64, " \t\n\v\f\r", 6, 0);
          if (first_not_of >= v37)
          {
            v40 = v37;
          }

          else
          {
            v40 = first_not_of;
          }

          v64 = (v40 + v12);
          v65 = v37 - v40;
          v66 = 0;
          v41 = llvm::consumeUnsignedInteger(&v64, 0, &v66, v39);
          if (HIDWORD(v66))
          {
            v43 = -1;
          }

          else
          {
            v43 = v66;
          }

          if (v41)
          {
            v44 = -1;
          }

          else
          {
            v44 = v43;
          }

          v13 = v64;
          v45 = v65;
          if (!v65)
          {
            v47 = 2;
            v15 = 0;
            v14 = 32;
            goto LABEL_81;
          }

          if (*v64 != 44)
          {
            v15 = 0;
            v14 = 32;
            v47 = 2;
            goto LABEL_81;
          }

          v46 = v64 + 1;
          v14 = 32;
          v47 = 2;
          ++v64;
          --v65;
          if (v45 == 1)
          {
            v47 = 2;
            v45 = 0;
            v15 = 0;
            ++v13;
            goto LABEL_81;
          }

          if (v45 == 2)
          {
            goto LABEL_78;
          }

          v48 = v13 + 2;
          v49 = v13[2];
          switch(v49)
          {
            case '+':
              v47 = 2;
              break;
            case '-':
              v47 = 0;
              break;
            case '=':
              v47 = 1;
              break;
            default:
              v56 = *v46;
              switch(v56)
              {
                case '+':
                  v47 = 2;
                  break;
                case '-':
                  v47 = 0;
                  break;
                case '=':
                  v47 = 1;
                  break;
                default:
                  v47 = 2;
LABEL_78:
                  v66 = 0;
                  if (llvm::consumeUnsignedInteger(&v64, 0, &v66, v42))
                  {
                    goto LABEL_89;
                  }

                  v15 = v66;
                  if (HIDWORD(v66))
                  {
                    goto LABEL_89;
                  }

                  v13 = v64;
                  v45 = v65;
LABEL_81:
                  v51 = llvm::StringRef::find_first_not_of(&v64, " \t\n\v\f\r", 6, 0);
                  v52 = v51 >= v45 ? v45 : v51;
                  v53 = v45 - v52;
                  v54 = &v13[v52];
                  v64 = v54;
                  v65 = v53;
                  if (v51 < v45 && *v54 == 58)
                  {
                    v13 = v54 + 1;
                    v12 = v53 - 1;
                    v64 = 0;
                    v65 = 0;
                  }

                  else
                  {
                    v12 = 0;
                    v13 = 0;
                  }

                  llvm::StringRef::trim(&v64, " \t\n\v\f\r", 6);
                  if (v55)
                  {
LABEL_89:
                    v21 = 0;
                    v3 = a3;
                    v16 = v44;
                  }

                  else
                  {
                    v21 = 1;
                    v19 = *(&v59 + 1);
                    v23 = v59;
                    v3 = a3;
                    v16 = v44;
                    v22 = v47;
                  }

                  v24 = 0;
                  a1 = &v6[v35];
                  v4 = v7 - v35;
                  v17 = 1;
                  goto LABEL_24;
              }

              v50 = -2;
LABEL_77:
              v64 = v48;
              v65 = v50 + v45;
              goto LABEL_78;
          }

          v14 = v13[1];
          v48 = v13 + 3;
          v50 = -3;
          goto LABEL_77;
        }

        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        if (v7 >= v32)
        {
          v19 = v32;
        }

        else
        {
          v19 = v7;
        }

        a1 = &v6[v19];
        v4 = v7 - v19;
        v21 = 1;
        v22 = 2;
        v23 = v6;
        v24 = 1;
        goto LABEL_70;
      }

LABEL_24:
      LODWORD(v59) = v24;
      *(&v59 + 1) = v23;
      *&v60 = v19;
      *(&v60 + 1) = __PAIR64__(v15, v16);
      LODWORD(v61) = v22;
      BYTE4(v61) = v14;
      *(&v61 + 1) = v13;
      v62 = v12;
      v63 = v21;
      if (v21)
      {
        if (v16 == -1)
        {
          v25 = v17;
        }

        else
        {
          v25 = 0;
        }

        if (v25 == 1)
        {
          DWORD2(v60) = v57++;
        }

        v26 = *(v3 + 2);
        if (v26 < *(v3 + 3))
        {
          v27 = *v3 + 56 * v26;
          *v27 = v59;
          *(v27 + 16) = v60;
          *(v27 + 32) = v61;
          *(v27 + 48) = v62;
          ++*(v3 + 2);
          goto LABEL_32;
        }

        llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(a3, &v59);
        v3 = a3;
        if (!v4)
        {
          return;
        }
      }

      else
      {
LABEL_32:
        if (!v4)
        {
          return;
        }
      }
    }

    v11 = memchr(a1, 123, v4);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v11 - a1;
    v3 = a3;
    if (!v11)
    {
      v18 = -1;
    }

    if (v4 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v4;
    }

    a1 += v19;
    v4 -= v19;
    goto LABEL_23;
  }
}

unint64_t llvm::StringRef::trim(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = a1[1];
  first_not_of = llvm::StringRef::find_first_not_of(a1, a2, a3, 0);
  if (first_not_of >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = first_not_of;
  }

  v9 = *a1 + v8;
  v11[0] = v9;
  v11[1] = v6 - v8;
  llvm::StringRef::find_last_not_of(v11, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
  return v9;
}

__n128 llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v3;
  v12[2] = *(a2 + 32);
  v13 = *(a2 + 48);
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = v12;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= v12 && v5 + 56 * v4 > v12)
    {
      v11 = v12 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 56);
      v5 = *a1;
      v6 = &v11[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 56);
      v5 = *a1;
      v6 = v12;
    }
  }

  v7 = v5 + 56 * *(a1 + 8);
  result = *v6;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  *(v7 + 48) = *(v6 + 6);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::object_deleter<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t llvm::IntervalMapImpl::Path::replaceRoot(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *a1;
  *v4 = a2;
  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v5 = *a1;
  v6 = *(**a1 + 8 * *(*a1 + 12));
  v8[0] = v6 & 0xFFFFFFFFFFFFFFC0;
  v8[1] = (a4 & 0xFFFFFFFF00000000 | v6 & 0x3F) + 1;
  return llvm::SmallVectorImpl<llvm::IntervalMapImpl::Path::Entry>::insert_one_impl<llvm::IntervalMapImpl::Path::Entry>(a1, (v5 + 2), v8);
}

uint64_t llvm::IntervalMapImpl::Path::getLeftSibling(llvm::IntervalMapImpl::Path *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  while (1)
  {
    v3 = *this + 16 * (a2 + v2);
    if (!(a2 + v2))
    {
      break;
    }

    --v2;
    if (*(v3 + 12))
    {
      v4 = a2 + v2 + 2;
      goto LABEL_7;
    }
  }

  v4 = 1;
LABEL_7:
  v5 = *(v3 + 12);
  if (!v5)
  {
    return 0;
  }

  result = *(*v3 + 8 * (v5 - 1));
  if (v4 != a2)
  {
    v7 = a2 - v4;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFC0) + 8 * (result & 0x3F));
      --v7;
    }

    while (v7);
  }

  return result;
}

void llvm::IntervalMapImpl::Path::moveLeft(llvm::IntervalMapImpl::Path *this, unsigned int a2)
{
  v4 = *(this + 2);
  if (v4 && *(*this + 12) < *(*this + 8))
  {
    v5 = a2;
    do
    {
      --v5;
    }

    while (!*(*this + 16 * v5 + 12));
  }

  else
  {
    if (v4 - 1 < a2)
    {
      v6 = a2 + 1;
      if (v4 != v6)
      {
        if (v4 > v6)
        {
          v5 = 0;
          *(this + 2) = v6;
          goto LABEL_12;
        }

        llvm::SmallVectorImpl<llvm::IntervalMapImpl::Path::Entry>::append(this, v6 - v4, 0, 0);
      }
    }

    v5 = 0;
  }

LABEL_12:
  v7 = *this;
  v8 = *this + 16 * v5;
  v9 = *(v8 + 12) - 1;
  *(v8 + 12) = v9;
  v10 = *(*v8 + 8 * v9);
  v11 = v5 + 1;
  if (v11 != a2)
  {
    do
    {
      v12 = *this + 16 * v11;
      *v12 = v10 & 0xFFFFFFFFFFFFFFC0;
      *(v12 + 8) = (v10 & 0x3F) + 1;
      *(v12 + 12) = v10 & 0x3F;
      v10 = *((v10 & 0xFFFFFFFFFFFFFFC0) + 8 * (v10 & 0x3F));
      ++v11;
    }

    while (a2 != v11);
    v7 = *this;
  }

  v13 = v7 + 16 * a2;
  *v13 = v10 & 0xFFFFFFFFFFFFFFC0;
  *(v13 + 8) = (v10 & 0x3F) + 1;
  *(v13 + 12) = v10 & 0x3F;
}

uint64_t llvm::IntervalMapImpl::Path::getRightSibling(llvm::IntervalMapImpl::Path *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *this;
  v3 = -1;
  while (1)
  {
    v4 = (a2 + v3);
    if (!(a2 + v3))
    {
      break;
    }

    v5 = *(v2 + 16 * v4 + 12);
    v6 = *(v2 + 16 * v4 + 8) - 1;
    --v3;
    if (v5 != v6)
    {
      v7 = a2 + v3 + 2;
      goto LABEL_7;
    }
  }

  v5 = *(v2 + 12);
  v6 = *(v2 + 8) - 1;
  v7 = 1;
LABEL_7:
  if (v5 == v6)
  {
    return 0;
  }

  result = *(*(v2 + 16 * v4) + 8 * (v5 + 1));
  if (v7 != a2)
  {
    v9 = a2 - v7;
    do
    {
      result = *(result & 0xFFFFFFFFFFFFFFC0);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t *llvm::IntervalMapImpl::Path::moveRight(uint64_t *this, unsigned int a2)
{
  v2 = *this;
  v3 = a2 - 1;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v8 = *(v2 + 16 * v3 + 8);
    v7 = *(v2 + 16 * v3 + 12);
    ++v4;
    --v3;
    if (v7 != v8 - 1)
    {
      v9 = v6;
      goto LABEL_6;
    }
  }

  v9 = 0;
  v8 = *(v2 + 8);
  v7 = *(v2 + 12);
LABEL_6:
  v10 = v2 + 16 * v9;
  v11 = v7 + 1;
  *(v10 + 12) = v11;
  if (v11 != v8)
  {
    v12 = *(*v10 + 8 * v11);
    if (v5 != 1)
    {
      v13 = v5 - 1;
      v14 = v6 + 1;
      do
      {
        v15 = *this + 16 * v14;
        *v15 = v12 & 0xFFFFFFFFFFFFFFC0;
        *(v15 + 8) = (v12 & 0x3F) + 1;
        *(v15 + 12) = 0;
        ++v14;
        v12 = *(v12 & 0xFFFFFFFFFFFFFFC0);
        --v13;
      }

      while (v13);
      v2 = *this;
    }

    v16 = (v2 + 16 * a2);
    *v16 = v12 & 0xFFFFFFFFFFFFFFC0;
    v16[1] = (v12 & 0x3F) + 1;
  }

  return this;
}

unint64_t llvm::IntervalMapImpl::distribute(llvm::IntervalMapImpl *this, int a2, unsigned int a3, unsigned int a4, const unsigned int *a5, unsigned int *a6, int a7)
{
  if (this)
  {
    v7 = 0;
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = this;
    v11 = (a7 + a2) / this;
    v12 = (a7 + a2) % this;
    do
    {
      if (v7 >= v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 + 1;
      }

      a5[v7] = v13;
      v14 = a6 - v8;
      v8 += v13;
      if (this == v10 && v8 > a6)
      {
        LODWORD(this) = v7;
        v9 = v14;
      }

      else
      {
        v9 = v9;
      }

      ++v7;
    }

    while (v10 != v7);
    if (a7)
    {
      --a5[this];
    }
  }

  else
  {
    v9 = 0;
  }

  return this | (v9 << 32);
}

uint64_t llvm::SmallVectorImpl<llvm::IntervalMapImpl::Path::Entry>::insert_one_impl<llvm::IntervalMapImpl::Path::Entry>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 + 16 * v6 == a2)
  {
    llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(a1, *a3, a3[1]);
    return *a1 + 16 * *(a1 + 8) - 16;
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
      v5 = *a1;
      v6 = *(a1 + 8);
    }

    v8 = (v5 + v7);
    *(v5 + 16 * v6) = *(v5 + 16 * v6 - 16);
    v9 = *(a1 + 8);
    v10 = *a1 + 16 * v9 - 16;
    if (v10 != v8)
    {
      memmove(v8 + 1, v8, v10 - v8);
      LODWORD(v9) = *(a1 + 8);
    }

    *(a1 + 8) = v9 + 1;
    *v8 = *a3;
    return v8;
  }
}

void llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

void llvm::SmallVectorImpl<llvm::IntervalMapImpl::Path::Entry>::append(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  if (v8 + a2 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + a2, 16);
    v8 = *(a1 + 8);
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else if (!a2)
  {
    goto LABEL_6;
  }

  v9 = (*a1 + 16 * v8);
  v10 = a2;
  do
  {
    *v9 = a3;
    v9[1] = a4;
    v9 += 2;
    --v10;
  }

  while (v10);
  LODWORD(v8) = *(a1 + 8);
LABEL_6:
  *(a1 + 8) = v8 + a2;
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

llvm::raw_ostream *llvm::format_provider<unsigned int,void>::format(unsigned int *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v16, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v17)
    {
      v8 = 0;
      v9 = *v16;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v8 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v9 == 100)
      {
        goto LABEL_17;
      }

      if (v9 == 110)
      {
LABEL_16:
        ++v16;
        v8 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v7))
    {
      v15 = 0;
    }

    else
    {
      v15 = v18;
    }

    return write_unsigned_impl<unsigned int>(a2, *a1, v15, v8, 0);
  }

  v10 = v6;
  v18 = 0;
  v11 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v7);
  v12 = v18;
  if (v11)
  {
    v12 = 0;
  }

  if ((v10 & 0xFFFFFFFE) == 2)
  {
    v13 = v12 + 2;
  }

  else
  {
    v13 = v12;
  }

  return llvm::write_hex(a2, *a1, v10, v13, 1);
}

uint64_t llvm::support::detail::HelperFunctions::consumeHexStyle(llvm::support::detail::HelperFunctions *this, llvm::StringRef *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = **this;
  if ((v4 - 65) < 0x1A)
  {
    v4 += 32;
  }

  if (v4 != 120)
  {
    v2 = 0;
LABEL_8:
    v5 = 0;
    return v5 | v2;
  }

  if (llvm::StringRef::consume_front(this, "x-", 2uLL))
  {
    v2 = 0x100000000;
    v5 = 1;
  }

  else
  {
    if (llvm::StringRef::consume_front(this, "X-", 2uLL))
    {
      v5 = 0;
    }

    else
    {
      if (llvm::StringRef::consume_front(this, "x+", 2uLL) & 1) != 0 || (llvm::StringRef::consume_front(this, "x", 1uLL))
      {
        v2 = 0x100000000;
        v5 = 3;
        return v5 | v2;
      }

      v5 = 2;
      if ((llvm::StringRef::consume_front(this, "X+", 2uLL) & 1) == 0)
      {
        llvm::StringRef::consume_front(this, "X", 1uLL);
        v2 = 0x100000000;
        v5 = 2;
        return v5 | v2;
      }
    }

    v2 = 0x100000000;
  }

  return v5 | v2;
}

uint64_t llvm::StringRef::consume_front(const void **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v7 = *a1;
  if (a3)
  {
    if (memcmp(*a1, a2, a3))
    {
      return 0;
    }
  }

  *a1 = &v7[a3];
  a1[1] = v4;
  return 1;
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *llvm::APInt::clearLowBits(llvm::APInt *this, int a2)
{
  result = llvm::APInt::getHighBitsSet(*(this + 2), *(this + 2) - a2, &v9);
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    v5 = *this;
    v6 = v9;
    v7 = (v4 + 63) >> 6;
    do
    {
      v8 = *v6++;
      *v5++ &= v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    *this &= v9;
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APInt::getSignedMaxValue@<X0>(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = this;
  result = llvm::APInt::getAllOnes(this, a2);
  if (*(a2 + 2) >= 0x41u)
  {
    v5 = (*a2 + 8 * ((v2 - 1) >> 6));
  }

  else
  {
    v5 = a2;
  }

  *v5 &= ~(1 << (v2 - 1));
  return result;
}

void *llvm::APInt::getHighBitsSet@<X0>(llvm::APInt *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = this;
  if (this >= 0x41)
  {
    operator new[]();
  }

  *a3 = 0;
  v3 = this - a2;

  return llvm::APInt::setBits(a3, v3, this);
}

void llvm::ManagedStaticBase::RegisterManagedStatic(llvm::ManagedStaticBase *this, void *(*a2)(void), void (*a3)(void *))
{
  if ((atomic_load_explicit(&qword_27FC1D970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D970))
  {
    MEMORY[0x25F890CE0](&stru_27FC1D978);
    __cxa_atexit(MEMORY[0x277D82658], &stru_27FC1D978, &dword_25C85D000);
    __cxa_guard_release(&qword_27FC1D970);
  }

  std::recursive_mutex::lock(&stru_27FC1D978);
  if (!*this)
  {
    atomic_store(a2(), this);
    v6 = _MergedGlobals_10;
    *(this + 1) = a3;
    *(this + 2) = v6;
    _MergedGlobals_10 = this;
  }

  std::recursive_mutex::unlock(&stru_27FC1D978);
}

void *llvm::allocate_buffer(llvm *this, std::align_val_t a2)
{
  result = operator new(this, a2, MEMORY[0x277D826F0]);
  if (!result)
  {
    llvm::report_bad_alloc_error("Buffer allocation failed", 1);
  }

  return result;
}

char *operator new(uint64_t a1, uint64_t *a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_25D0A0670;
  v3 = llvm::Twine::toStringRef(*a2, &v12);
  v5 = v4;
  v6 = malloc_type_malloc(a1 + v4 + 9, 0x100004000313F17uLL);
  if (!v6)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v7 = v6;
  v8 = &v6[a1];
  *v8 = v5;
  v9 = v8 + 1;
  if (v5)
  {
    memcpy(v9, v3, v5);
  }

  *(v9 + v5) = 0;
  if (v12 != v14)
  {
    free(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void getMemBufferCopyImpl(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a2, a3, 0, &v9);
  v7 = v9;
  if (v9)
  {
    if (a2)
    {
      memmove(*(v9 + 8), a1, a2);
    }

    *(a4 + 16) &= ~1u;
    *a4 = v7;
  }

  else
  {
    v8 = std::generic_category();
    *(a4 + 16) |= 1u;
    *a4 = 12;
    *(a4 + 8) = v8;
  }
}

void llvm::MemoryBuffer::getFileOrSTDIN(const llvm::Twine *a1@<X0>, int a2@<W1>, int a3@<W2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v21[32] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = xmmword_25D0A0670;
  v10 = llvm::Twine::toStringRef(a1, &v19);
  if (v17 == 1 && *v10 == 45)
  {
    llvm::MemoryBuffer::getSTDIN(v11, v12, v13, v14, v15, v16, a5);
  }

  else
  {
    getFileAux<llvm::MemoryBuffer>(a1, 0xFFFFFFFFFFFFFFFFLL, 0, a2, a3, 0, a4, a5);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void llvm::MemoryBuffer::getSTDIN(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = "<stdin>";
  v14 = 259;
  getMemoryBufferForStream(0, &v13, a1, a2, a3, a4, a5, a6);
  v9 = *(a7 + 16);
  if (v17)
  {
    v10 = v9 | 1;
    v11 = v15;
    *(a7 + 8) = v16;
  }

  else
  {
    v10 = v9 & 0xFE;
    v11 = v15;
  }

  *(a7 + 16) = v10;
  *a7 = v11;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t *getFileAux<llvm::MemoryBuffer>@<X0>(const llvm::Twine *a1@<X0>, size_t a2@<X1>, off_t a3@<X2>, int a4@<W3>, int a5@<W4>, char a6@<W5>, __int16 a7@<W6>, uint64_t a8@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  llvm::sys::fs::openNativeFileForRead(a1, v15, 0, v23);
  if (v24)
  {
    v22 = *v23;
    v16 = llvm::errorToErrorCode(&v22);
    *(a8 + 16) |= 1u;
    *a8 = v16;
    *(a8 + 8) = v17;
    result = v22;
    if (v22)
    {
      result = (*(*v22 + 8))(v22);
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v20 = v23[0];
    getOpenFileImpl<llvm::MemoryBuffer>(v23[0], a1, 0xFFFFFFFFFFFFFFFFLL, a2, a3, a5, a6, a7, a8);
    v21 = *MEMORY[0x277D85DE8];

    return llvm::sys::Process::SafelyCloseFileDescriptor(v20);
  }

  return result;
}

void llvm::WritableMemoryBuffer::getNewUninitMemBuffer(size_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v20[32] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_25D0A0670;
  v8 = llvm::Twine::toStringRef(a2, &v18);
  v9 = v7 + 33;
  if ((a3 & 0x100) != 0)
  {
    v10 = 1 << a3;
  }

  else
  {
    v10 = 16;
  }

  v11 = a1 + v10 + v9 + 1;
  if (v11 <= a1)
  {
    v14 = 0;
  }

  else
  {
    v12 = v7;
    v13 = malloc_type_malloc(v11, 0x100004077774924uLL);
    v14 = v13;
    if (v13)
    {
      v13[3] = v12;
      v15 = (v13 + 4);
      if (v12)
      {
        memcpy(v13 + 4, v8, v12);
      }

      v15[v12] = 0;
      v16 = (v14 + v9 + v10 - 1) & -v10;
      *(v16 + a1) = 0;
      *v14 = &unk_286E79718;
      v14[1] = v16;
      v14[2] = v16 + a1;
    }
  }

  *a4 = v14;
  if (v18 != v20)
  {
    free(v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void getOpenFileImpl<llvm::MemoryBuffer>(uint64_t a1@<X0>, const llvm::Twine *a2@<X1>, size_t a3@<X2>, size_t a4@<X3>, off_t a5@<X4>, int a6@<W5>, char a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FC1D9C0, memory_order_acquire) & 1) == 0)
  {
    v49 = a3;
    v50 = __cxa_guard_acquire(&qword_27FC1D9C0);
    a3 = v49;
    if (v50)
    {
      _MergedGlobals_11 = llvm::sys::Process::getPageSizeEstimate(v50);
      __cxa_guard_release(&qword_27FC1D9C0);
      a3 = v49;
    }
  }

  if (a4 == -1)
  {
    a4 = a3;
    if (a3 == -1)
    {
      v52 = 0u;
      memset(v53, 0, 28);
      v33 = fstat(a1, &v54);
      v34 = llvm::sys::fs::fillStatus(v33, &v54.st_dev, &v52);
      if (v34)
      {
        *(a9 + 16) |= 1u;
        *a9 = v34;
        *(a9 + 8) = v35;
        goto LABEL_55;
      }

      if (LODWORD(v53[3]) != 2 && LODWORD(v53[3]) != 5)
      {
        getMemoryBufferForStream(a1, a2, v36, v37, v38, v39, v40, v41);
        v45 = *(a9 + 16);
        if (v54.st_uid)
        {
          v46 = v45 | 1;
          v47 = *&v54.st_dev;
          *(a9 + 8) = v54.st_ino;
        }

        else
        {
          v46 = v45 & 0xFE;
          v47 = *&v54.st_dev;
        }

        *(a9 + 16) = v46;
        *a9 = v47;
        goto LABEL_55;
      }

      a4 = v53[2];
      a3 = v53[2];
    }
  }

  v17 = _MergedGlobals_11;
  if (a6 && (a7 & 1) != 0)
  {
    goto LABEL_6;
  }

  v25 = (a4 & 0xFFFFFFFFFFFFC000) != 0 && a4 >= _MergedGlobals_11;
  if (!v25 || a6 == 0)
  {
    if (v25)
    {
LABEL_39:
      *&v54.st_dev = a2;
      v28 = operator new(48, &v54.st_dev);
      *v28 = &unk_286E79750;
      PageSizeEstimate = llvm::sys::Process::getPageSizeEstimate(v28);
      v30 = ((PageSizeEstimate - 1) & a5) + a4;
      v31 = llvm::sys::Process::getPageSizeEstimate(PageSizeEstimate);
      *(v28 + 3) = v30;
      *(v28 + 4) = 0;
      *(v28 + 10) = 0;
      v32 = llvm::sys::fs::mapped_file_region::init(v28 + 3, a1, -v31 & a5, 0);
      if (!v32)
      {
        v43 = *(v28 + 4);
        v44 = v43 + ((llvm::sys::Process::getPageSizeEstimate(v32) - 1) & a5);
        *(v28 + 1) = v44;
        *(v28 + 2) = v44 + a4;
        *(a9 + 16) &= ~1u;
        *a9 = v28;
        goto LABEL_55;
      }

      *(v28 + 3) = 0;
      *(v28 + 4) = 0;
      *(v28 + 10) = 0;
      (*(*v28 + 8))(v28);
    }
  }

  else
  {
    if (a3 == -1)
    {
      v52 = 0u;
      memset(v53, 0, 28);
      v42 = fstat(a1, &v54);
      if (llvm::sys::fs::fillStatus(v42, &v54.st_dev, &v52))
      {
        goto LABEL_6;
      }

      a3 = v53[2];
    }

    if (a4 + a5 == a3 && (a3 & (v17 - 1)) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_6:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a4, a2, a8, &v52);
  if (!v52)
  {
    v27 = std::generic_category();
    *(a9 + 16) |= 1u;
    *a9 = 12;
    *(a9 + 8) = v27;
    goto LABEL_55;
  }

  v18 = *(v52 + 8);
  v19 = *(v52 + 16) - v18;
  do
  {
    if (!v19)
    {
      goto LABEL_21;
    }

    llvm::sys::fs::readNativeFileSlice(a1, v18, v19, a5, &v54);
    if (v54.st_ino)
    {
      v20 = *&v54.st_dev;
      *&v54.st_dev = 0;
      v51 = v20;
      v21 = llvm::errorToErrorCode(&v51);
      *(a9 + 16) |= 1u;
      *a9 = v21;
      *(a9 + 8) = v22;
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }

      v23 = 1;
    }

    else
    {
      if (*&v54.st_dev)
      {
        v23 = 0;
        v19 -= *&v54.st_dev;
        v18 += *&v54.st_dev;
        a5 += *&v54.st_dev;
        continue;
      }

      bzero(v18, v19);
      if ((v54.st_ino & 1) == 0)
      {
        goto LABEL_21;
      }

      v23 = 3;
    }

    if (*&v54.st_dev)
    {
      (*(**&v54.st_dev + 8))(*&v54.st_dev);
    }
  }

  while (!v23);
  if (v23 == 3)
  {
LABEL_21:
    *(a9 + 16) &= ~1u;
    *a9 = v52;
    goto LABEL_55;
  }

  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

LABEL_55:
  v48 = *MEMORY[0x277D85DE8];
}

void getMemoryBufferForStream(uint64_t a1, const llvm::Twine *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  off_286E74110(a1, a2, a3, a4, a5, a6, a7, a8, v20[2049]);
  v9 = v8;
  v11 = v10;
  v20[2048] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_25D0A06B0;
  llvm::sys::fs::readNativeFileToEOF(v12, &v18, 0x4000uLL, &v17);
  if (v17)
  {
    v16 = v17;
    v13 = llvm::errorToErrorCode(&v16);
    *(v11 + 16) |= 1u;
    *v11 = v13;
    *(v11 + 8) = v14;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  else
  {
    getMemBufferCopyImpl(v18, v19, v9, v11);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::sys::Process::getPageSizeEstimate(llvm::sys::Process *this)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::sys::Process::getPageSize(&v4);
  if (v5)
  {
    v3 = v4;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = 4096;
  }

  else
  {
    result = v4;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_286E79750;
  v2 = a1[4];
  if (v2)
  {
    munmap(v2, a1[3]);
  }

  return a1;
}

void anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_286E79750;
  v2 = a1[4];
  if (v2)
  {
    munmap(v2, a1[3]);
  }

  free(a1);
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::dontNeedIfMmap(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return posix_madvise(result, *(a1 + 24), 4);
  }

  return result;
}

llvm::raw_ostream *llvm::write_integer(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, v4);
}

llvm::raw_ostream *write_unsigned<unsigned long long>(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4, int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (HIDWORD(a2))
  {
    v9 = 0;
    v10 = 127;
    do
    {
      v18[v10] = (a2 % 0xA) | 0x30;
      v9 += 0x100000000;
      --v10;
      v11 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v11);
    v12 = v9 >> 32;
    if (a5)
    {
      v13 = *(a1 + 4);
      if (v13 >= *(a1 + 3))
      {
        a1 = llvm::raw_ostream::write(a1, 45);
      }

      else
      {
        *(a1 + 4) = v13 + 1;
        *v13 = 45;
      }
    }

    if (a4 != 1 && v12 < a3)
    {
      v14 = v12;
      do
      {
        v15 = *(a1 + 4);
        if (v15 >= *(a1 + 3))
        {
          a1 = llvm::raw_ostream::write(a1, 48);
        }

        else
        {
          *(a1 + 4) = v15 + 1;
          *v15 = 48;
        }

        ++v14;
      }

      while (v14 < a3);
    }

    v16 = &v19 - v12;
    if (a4 == 1)
    {
      result = writeWithCommas(a1, v16, v12);
    }

    else
    {
      result = llvm::raw_ostream::write(a1, v16, v12);
    }

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, a5);
  }

  return result;
}

llvm::raw_ostream *llvm::write_integer(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned<unsigned long long>(a1, a2, a3, a4, v4);
}

llvm::raw_ostream *llvm::write_hex(llvm::raw_ostream *a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v12[6] = v6;
  v12[7] = v6;
  v12[4] = v6;
  v12[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v12[2] = v6;
  v12[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v12[0] = v6;
  v12[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v12[0]) = 120;
  }

  if (a2)
  {
    v8 = &v12[-1] + v7 + 15;
    do
    {
      *v8-- = llvm::hexdigit(unsigned int,BOOL)::LUT[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  result = llvm::raw_ostream::write(a1, v12, v7);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::write_double(llvm::raw_ostream *this, unsigned int a2, unint64_t a3, char a4, double a5)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = 2;
  if (a2 < 2)
  {
    v6 = 6;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v6;
  }

  if (fabs(a5) == INFINITY)
  {
    if (a5 >= 0.0)
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    if (a5 >= 0.0)
    {
      v10 = "INF";
    }

    else
    {
      v10 = "-INF";
    }

    v11 = *MEMORY[0x277D85DE8];

    llvm::raw_ostream::operator<<(this, v10, v9);
  }

  else
  {
    v30 = v32;
    v31 = xmmword_25D0A0590;
    if (a2 == 1)
    {
      v13 = 69;
    }

    else
    {
      v13 = 102;
    }

    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 101;
    }

    v22 = 2;
    v26 = 0;
    v27 = 1;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v21 = &unk_286E79DA0;
    v28 = &v30;
    llvm::raw_ostream::SetUnbuffered(&v21);
    if ((v24 - v25) > 1)
    {
      *v25++ = 11813;
      v15 = &v21;
    }

    else
    {
      v15 = llvm::raw_ostream::write(&v21, "%.", 2uLL);
    }

    write_unsigned<unsigned long long>(v15, a3, 0, 0, 0);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, v14);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = v14;
    }

    if (a2 == 3)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v30, 0);
      *&v31 = v31 - 1;
      snprintf(__str, 0x20uLL, v30, a5 * 100.0, &unk_286E79788, v30, a5 * 100.0);
      v17 = strlen(__str);
      llvm::raw_ostream::operator<<(this, __str, v17);
      v18 = *(this + 4);
      if (v18 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 37);
      }

      else
      {
        *(this + 4) = v18 + 1;
        *v18 = 37;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v30, 0);
      *&v31 = v31 - 1;
      snprintf(__str, 0x20uLL, v30, *&a5, &unk_286E79788, v30, *&a5);
      v19 = strlen(__str);
      llvm::raw_ostream::operator<<(this, __str, v19);
    }

    llvm::raw_ostream::~raw_ostream(&v21);
    if (v30 != v32)
    {
      free(v30);
    }

    v20 = *MEMORY[0x277D85DE8];
  }
}

llvm::raw_ostream *write_unsigned_impl<unsigned int>(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4, int a5)
{
  v7 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v8 = 127;
  do
  {
    v17[v8] = (a2 % 0xA) | 0x30;
    v7 += 0x100000000;
    --v8;
    v9 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v9);
  v10 = v7 >> 32;
  if (a5)
  {
    v11 = *(a1 + 4);
    if (v11 >= *(a1 + 3))
    {
      a1 = llvm::raw_ostream::write(a1, 45);
    }

    else
    {
      *(a1 + 4) = v11 + 1;
      *v11 = 45;
    }
  }

  if (a4 != 1 && v10 < a3)
  {
    v12 = v10;
    do
    {
      v13 = *(a1 + 4);
      if (v13 >= *(a1 + 3))
      {
        a1 = llvm::raw_ostream::write(a1, 48);
      }

      else
      {
        *(a1 + 4) = v13 + 1;
        *v13 = 48;
      }

      ++v12;
    }

    while (v12 < a3);
  }

  v14 = &v18 - v10;
  if (a4 == 1)
  {
    result = writeWithCommas(a1, v14, v10);
  }

  else
  {
    result = llvm::raw_ostream::write(a1, v14, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *writeWithCommas(llvm::raw_ostream *a1, const char *a2, size_t a3)
{
  v5 = (a3 - 1) / 3;
  v6 = (a3 - 1) % 3;
  v7 = v6 + 1;
  v8 = a3 - (v6 + 1);
  if (a3 >= v6 + 1)
  {
    a3 = v6 + 1;
  }

  result = llvm::raw_ostream::write(a1, a2, a3);
  if (v8)
  {
    v10 = &a2[v7];
    v11 = -3 * v5;
    do
    {
      v12 = *(a1 + 4);
      if (v12 >= *(a1 + 3))
      {
        llvm::raw_ostream::write(a1, 44);
      }

      else
      {
        *(a1 + 4) = v12 + 1;
        *v12 = 44;
      }

      result = llvm::raw_ostream::write(a1, v10, 3uLL);
      v10 += 3;
      v11 += 3;
    }

    while (v11);
  }

  return result;
}

llvm::raw_ostream *llvm::operator<<(llvm::raw_ostream *result)
{
  v1 = *(result + 4);
  if (*(result + 3) - v1 <= 3uLL)
  {
    return llvm::raw_ostream::write(result, "None", 4uLL);
  }

  *v1 = 1701736270;
  *(result + 4) += 4;
  return result;
}

void llvm::parallel::detail::Latch::sync(llvm::parallel::detail::Latch *this)
{
  m = (this + 8);
  v3.__m_ = (this + 8);
  v3.__owns_ = 1;
  std::mutex::lock((this + 8));
  if (!*this)
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v3);
  }

  while (*this);
  if (v3.__owns_)
  {
    m = v3.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }
}

uint64_t llvm::parallel::TaskGroup::spawn(uint64_t a1, uint64_t a2)
{
  v9[9] = *MEMORY[0x277D85DE8];
  if (*(a1 + 120) == 1)
  {
    std::mutex::lock((a1 + 8));
    ++*a1;
    std::mutex::unlock((a1 + 8));
    if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&_MergedGlobals_12))
      {
      }
    }

    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v9, a2);
    v9[4] = a1;
    operator new();
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(*v4 + 48);
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::parallelFor(v8);
  }
}

void llvm::parallelFor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if ((a2 - a1) < 0x400)
  {
    v6 = 1;
  }

  else
  {
    v6 = (a2 - a1) >> 10;
  }

  v12 = 0;
  v13.__m_.__sig = 850045863;
  memset(v13.__m_.__opaque, 0, sizeof(v13.__m_.__opaque));
  v14.__cv_.__sig = 1018212795;
  memset(v14.__cv_.__opaque, 0, sizeof(v14.__cv_.__opaque));
  v15 = *llvm::parallel::threadIndex() == -1;
  if (v6 + a1 < v7)
  {
    v11 = 0;
    operator new();
  }

  if (a1 != a2)
  {
    operator new();
  }

  llvm::parallel::detail::Latch::sync(&v12);
  std::condition_variable::~condition_variable(&v14);
  std::mutex::~mutex(&v13);
  v8 = *MEMORY[0x277D85DE8];
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(uint64_t a1)
{
  v3 = a1;
  qword_27FC1D9D0 = &unk_286E797A8;
  byte_27FC1D9D8 = 0;
  qword_27FC1D9E0 = 0;
  unk_27FC1D9E8 = 0;
  qword_27FC1D9F0 = 0;
  unk_27FC1D9F8 = 850045863;
  xmmword_27FC1DA00 = 0u;
  unk_27FC1DA10 = 0u;
  xmmword_27FC1DA20 = 0u;
  qword_27FC1DA30 = 0;
  unk_27FC1DA38 = 1018212795;
  xmmword_27FC1DA40 = 0u;
  unk_27FC1DA50 = 0u;
  qword_27FC1DA60 = 0;
  std::promise<void>::promise(algn_27FC1DA68);
  qword_27FC1DA70 = 0;
  qword_27FC1DA78 = 0;
  qword_27FC1DA80 = 0;
  dword_27FC1DA88 = llvm::ThreadPoolStrategy::compute_thread_count(&v3);
  if (dword_27FC1DA88 > ((qword_27FC1DA80 - qword_27FC1DA70) >> 3))
  {
    v4 = &qword_27FC1DA70;
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::thread>>(dword_27FC1DA88);
  }

  v1 = qword_27FC1DA78;
  if (qword_27FC1DA78 == qword_27FC1DA70)
  {
    if (qword_27FC1DA80 == qword_27FC1DA70)
    {
      v4 = &qword_27FC1DA70;
      operator new();
    }

    *qword_27FC1DA78 = 0;
    qword_27FC1DA78 = v1 + 8;
  }

  else if ((qword_27FC1DA78 - qword_27FC1DA70) >= 9)
  {
    v2 = qword_27FC1DA70 + 8;
    while (v1 != v2)
    {
      std::thread::~thread((v1 - 8));
    }

    qword_27FC1DA78 = v2;
  }

  std::mutex::lock(&unk_27FC1D9F8);
  operator new();
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::~ThreadPoolExecutor(llvm::parallel::detail::_anonymous_namespace_::ThreadPoolExecutor *this)
{
  *this = &unk_286E797A8;
  v2 = this + 8;
  std::mutex::lock((this + 40));
  v3 = atomic_load(v2);
  if (v3)
  {
    std::mutex::unlock((this + 40));
  }

  else
  {
    atomic_store(1u, this + 8);
    std::mutex::unlock((this + 40));
    std::condition_variable::notify_all((this + 104));
    std::promise<void>::get_future(this + 19);
    std::__assoc_sub_state::wait(v13.__state_);
    std::future<void>::~future(&v13);
  }

  v4 = pthread_self();
  v5 = *(this + 20);
  v6 = *(this + 21);
  if (v5 != v6)
  {
    v7 = v4;
    do
    {
      if (v7 == v5->__t_)
      {
        std::thread::detach(v5);
      }

      else
      {
        std::thread::join(v5);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 20);
  }

  if (v5)
  {
    v8 = *(this + 21);
    v9 = v5;
    if (v8 != v5)
    {
      do
      {
        std::thread::~thread(v8 - 1);
      }

      while (v8 != v5);
      v9 = *(this + 20);
    }

    *(this + 21) = v5;
    operator delete(v9);
  }

  MEMORY[0x25F890F50](this + 152);
  std::condition_variable::~condition_variable((this + 104));
  std::mutex::~mutex((this + 40));
  v10 = *(this + 2);
  if (v10)
  {
    v11 = *(this + 3);
    v12 = *(this + 2);
    if (v11 != v10)
    {
      do
      {
        v11 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v11 - 32);
      }

      while (v11 != v10);
      v12 = *(this + 2);
    }

    *(this + 3) = v10;
    operator delete(v12);
  }
}

{

  JUMPOUT(0x25F891040);
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::add(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    v7 = *(a1 + 16);
    v8 = (v4 - v7) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::function<void ()(void)>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - v7;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 32 * v8;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v12, a2);
    v6 = v12 + 32;
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = (v12 + v13 - v14);
    if (v14 != v13)
    {
      v16 = *(a1 + 16);
      v17 = v15;
      do
      {
        v18 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v17, v16);
        v16 += 32;
        v17 = v18 + 32;
      }

      while (v16 != v14);
      do
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
        v13 += 32;
      }

      while (v13 != v14);
      v13 = *(a1 + 16);
    }

    *(a1 + 16) = v15;
    *(a1 + 24) = v6;
    *(a1 + 32) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v6 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v4, a2) + 32;
  }

  *(a1 + 24) = v6;
  std::mutex::unlock((a1 + 40));

  std::condition_variable::notify_one((a1 + 104));
}

std::thread *std::vector<std::thread>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::thread>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::thread>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::{lambda(void)#1}>>(uint64_t a1)
{
  v14[0] = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  if (*(v4 + 184) >= 2u)
  {
    v5 = (v4 + 160);
    v14[1] = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = 1;
    v7 = *(v4 + 168);
    v6 = *(v4 + 176);
    if (v7 < v6)
    {
      v8 = *(v4 + 168);
    }

    v9 = (v7 - *v5) >> 3;
    if (!((v9 + 1) >> 61))
    {
      v10 = v6 - *v5;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      v21 = v4 + 160;
      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::thread>>(v12);
      }

      v18 = 0;
      v19 = 8 * v9;
      v20 = 0;
    }

    std::vector<std::thread>::__throw_length_error[abi:nn200100]();
  }

  std::promise<void>::set_value((v4 + 152));
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::{lambda(void)#1}>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x25F891040](v3, 0x1020C40684C9801);
  }

  return a1;
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::work(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = llvm::parallel::threadIndex();
  *v2 = v3;
  do
  {
    __lk.__m_ = (a1 + 40);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 40));
    v4 = atomic_load((a1 + 8));
    if ((v4 & 1) == 0)
    {
      do
      {
        if (*(a1 + 16) != *(a1 + 24))
        {
          break;
        }

        std::condition_variable::wait((a1 + 104), &__lk);
        v5 = atomic_load((a1 + 8));
      }

      while ((v5 & 1) == 0);
    }

    v6 = atomic_load((a1 + 8));
    if ((v6 & 1) == 0)
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v9, *(a1 + 24) - 32);
      *(a1 + 24) = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](*(a1 + 24) - 32);
      if (!__lk.__owns_)
      {
        goto LABEL_14;
      }

      std::mutex::unlock(__lk.__m_);
      __lk.__owns_ = 0;
      if (!v10)
      {
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_14:
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
      }

      (*(*v10 + 48))(v10);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  while ((v6 & 1) == 0);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>(uint64_t a1)
{
  v6 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 24);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x25F891040](v3, 0x1020C40A82BEB12);
  }

  return a1;
}

void *std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286E797D8;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286E797D8;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

uint64_t std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E797D8;
  result = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    (*(*v2 + 48))(v2);
    std::mutex::lock((v3 + 8));
    if ((*v3)-- == 1)
    {
      std::condition_variable::notify_all((v3 + 72));
    }

    std::mutex::unlock((v3 + 8));
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v5, v6);
  }
}

__n128 std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E79820;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 16);
    do
    {
      result = (**(v2 + 8))(*(*(v2 + 8) + 8), v3++);
      --v1;
    }

    while (v1);
  }

  return result;
}

__n128 std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E79868;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != *(result + 24))
  {
    v2 = result;
    do
    {
      result = (**(v2 + 8))(*(*(v2 + 8) + 8), v1++);
    }

    while (v1 != *(v2 + 24));
  }

  return result;
}

llvm::PrettyStackTraceFormat *llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this, const char *__format, ...)
{
  va_start(va, __format);
  *(this + 2) = this + 40;
  v4 = (this + 16);
  *this = &unk_286E798B0;
  *(this + 24) = xmmword_25D0A05C0;
  v5 = vsnprintf(0, 0, __format, va);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = (v5 + 1);
    llvm::SmallVectorImpl<char>::resizeImpl<false>(v4, v6);
    vsnprintf(*v4, v6, __format, va);
  }

  return this;
}

llvm::raw_ostream *llvm::PrettyStackTraceFormat::print(llvm::PrettyStackTraceFormat *this, llvm::raw_ostream *a2)
{
  result = llvm::raw_ostream::write(a2, *(this + 2), *(this + 3));
  v3 = *(result + 4);
  if (*(result + 3) == v3)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v3 = 10;
    ++*(result + 4);
  }

  return result;
}

void llvm::PrettyStackTraceFormat::~PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this)
{
  *this = &unk_286E798B0;
  v2 = *(this + 2);
  if (v2 != this + 40)
  {
    free(v2);
  }
}

{
  *this = &unk_286E798B0;
  v2 = *(this + 2);
  if (v2 != this + 40)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005>::result_type std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>::operator()(std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x138;
  v3 = 0xB5026F5AA96619E9;
  if ((this->__x_[v2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ this->__x_[(i + 156) % 0x138] ^ ((this->__x_[v2] & 0x7FFFFFFE | this->__x_[i] & 0xFFFFFFFF80000000) >> 1);
  this->__x_[i] = v4;
  this->__i_ = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6)
{
  v11 = 0;
  v8 = llvm::cl::parser<unsigned long long>::parse(a1 + 152, a1, a3, a4, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  *(a1 + 120) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 184);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt(void **a1)
{
  *a1 = &unk_286E798D8;
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:nn200100]((a1 + 20));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E798D8;
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:nn200100]((a1 + 20));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 144) != 1 || *(a1 + 136) != *(a1 + 120))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 120);
    v6 = *(a1 + 136);
    v8 = *(a1 + 144);
    v7[0] = &unk_286E79940;
    v7[1] = v6;
    llvm::cl::parser<unsigned long long>::printOptionDiff((a1 + 152), a1, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::setDefault(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void llvm::Regex::~Regex(llvm::Regex *this)
{
  v2 = *this;
  if (v2)
  {
    llvm_regfree(v2);
    if (*this)
    {
      MEMORY[0x25F891040](*this, 0x1070C404B019E81);
    }
  }
}

size_t anonymous namespace::RegexErrorToString(int a1, uint64_t a2, uint64_t a3)
{
  v6 = llvm_regerror(a1, a2, 0, 0);
  std::string::resize(a3, v6 - 1, 0);
  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  return llvm_regerror(a1, a2, v7, v6);
}

uint64_t llvm::Regex::match(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[16] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v10 = *(a5 + 23);
    if (v10 < 0)
    {
      v10 = *(a5 + 8);
    }

    if (v10)
    {
      MEMORY[0x25F890B20](a5, &byte_25D0A27DF);
    }

    v11 = *(a1 + 8);
    if (v11)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_39;
    }
  }

  else if (*(a1 + 8))
  {
    goto LABEL_9;
  }

  if (a4)
  {
    v13 = *(*a1 + 8) + 1;
  }

  else
  {
    v13 = 0;
  }

  if (a2)
  {
    v14 = a3;
  }

  else
  {
    a2 = &byte_25D0A27DF;
    v14 = 0;
  }

  v26 = v28;
  v27 = 0x800000000;
  if (v13 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13;
  }

  if (v13 < 9)
  {
    v16 = 0;
    v17 = v28;
    goto LABEL_23;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v15, 16);
  v16 = v27;
  if (v27 != v15)
  {
    v17 = v26;
LABEL_23:
    bzero(&v17[2 * v16], 16 * (v15 - v16));
  }

  LODWORD(v27) = v15;
  v18 = v26;
  *v26 = 0;
  v18[1] = v14;
  v19 = llvm_regexec(*a1, a2, v13, v18, 4);
  if (v19)
  {
    if (v19 != 1 && a5)
    {
    }

    v12 = 0;
  }

  else
  {
    if (a4)
    {
      *(a4 + 8) = 0;
      if (v13)
      {
        v20 = 0;
        do
        {
          v21 = *(v26 + v20);
          if (v21 == -1)
          {
            v22 = 0;
            v23 = 0;
          }

          else
          {
            v22 = &a2[v21];
            v23 = *(v26 + v20 + 8) - v21;
          }

          llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(a4, v22, v23);
          v20 += 16;
        }

        while (16 * v13 != v20);
      }
    }

    v12 = 1;
  }

  if (v26 != v28)
  {
    free(v26);
  }

LABEL_39:
  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

_DWORD *llvm::SHA1::hashBlock(_DWORD *this)
{
  HIDWORD(v2) = this[16];
  LODWORD(v2) = HIDWORD(v2);
  v1 = v2 >> 27;
  HIDWORD(v2) = this[17];
  LODWORD(v2) = HIDWORD(v2);
  v3 = v2 >> 2;
  v4 = this[18];
  v466 = HIDWORD(v2);
  v467 = this[20];
  v464 = this[16];
  v465 = this[19];
  v5 = v464 & __ROR4__(HIDWORD(v2), 2);
  v6 = this[1];
  v7 = v1 + v467 + *this + (v4 & HIDWORD(v2) | v465 & ~HIDWORD(v2)) + 1518500249;
  HIDWORD(v2) = v7;
  LODWORD(v2) = v7;
  v8 = v2 >> 27;
  HIDWORD(v2) = v464;
  LODWORD(v2) = v464;
  v9 = v2 >> 2;
  v463 = v4;
  v10 = v465 + v6 + (v5 | v4 & ~v464) + 1518500249 + v8;
  HIDWORD(v2) = v10;
  LODWORD(v2) = v10;
  v11 = v2 >> 27;
  HIDWORD(v2) = v7;
  LODWORD(v2) = v7;
  v12 = v2 >> 2;
  v13 = this[2];
  v14 = this[3];
  v15 = v463 + v13 + (v7 & __ROR4__(v464, 2) | v3 & ~v7) + 1518500249 + v11;
  HIDWORD(v2) = v15;
  LODWORD(v2) = v15;
  v16 = v2 >> 27;
  HIDWORD(v2) = v10;
  LODWORD(v2) = v10;
  v17 = v2 >> 2;
  v18 = v3 + v14 + (v10 & __ROR4__(v7, 2) | v9 & ~v10) + 1518500249 + v16;
  HIDWORD(v2) = v18;
  LODWORD(v2) = v18;
  v19 = v2 >> 27;
  HIDWORD(v2) = v15;
  LODWORD(v2) = v15;
  v20 = v2 >> 2;
  v21 = this[4];
  v22 = this[5];
  v23 = v9 + v21 + (v15 & __ROR4__(v10, 2) | v12 & ~v15) + 1518500249 + v19;
  HIDWORD(v2) = v23;
  LODWORD(v2) = v23;
  v24 = v2 >> 27;
  HIDWORD(v2) = v18;
  LODWORD(v2) = v18;
  v25 = v2 >> 2;
  v26 = v12 + v22 + (v18 & __ROR4__(v15, 2) | v17 & ~v18) + 1518500249 + v24;
  HIDWORD(v2) = v26;
  LODWORD(v2) = v26;
  v27 = v2 >> 27;
  HIDWORD(v2) = v23;
  LODWORD(v2) = v23;
  v28 = v2 >> 2;
  v29 = this[6];
  v30 = this[7];
  v31 = v17 + v29 + (v23 & __ROR4__(v18, 2) | v20 & ~v23) + 1518500249 + v27;
  HIDWORD(v2) = v31;
  LODWORD(v2) = v31;
  v32 = v2 >> 27;
  HIDWORD(v2) = v26;
  LODWORD(v2) = v26;
  v33 = v2 >> 2;
  v34 = v30 + v20 + (v26 & __ROR4__(v23, 2) | v25 & ~v26) + 1518500249 + v32;
  HIDWORD(v2) = v34;
  LODWORD(v2) = v34;
  v35 = v2 >> 27;
  HIDWORD(v2) = v31;
  LODWORD(v2) = v31;
  v36 = v2 >> 2;
  v37 = this[8];
  v38 = this[9];
  v39 = v37 + v25 + (v31 & __ROR4__(v26, 2) | v28 & ~v31) + 1518500249 + v35;
  HIDWORD(v2) = v39;
  LODWORD(v2) = v39;
  v40 = v2 >> 27;
  HIDWORD(v2) = v34;
  LODWORD(v2) = v34;
  v41 = v2 >> 2;
  v42 = v38 + v28 + (v34 & __ROR4__(v31, 2) | v33 & ~v34) + 1518500249 + v40;
  HIDWORD(v2) = v42;
  LODWORD(v2) = v42;
  v43 = v2 >> 27;
  HIDWORD(v2) = v39;
  LODWORD(v2) = v39;
  v44 = v2 >> 2;
  v45 = this[10];
  v46 = v45 + v33 + (v39 & __ROR4__(v34, 2) | v36 & ~v39) + 1518500249 + v43;
  HIDWORD(v2) = v46;
  LODWORD(v2) = v46;
  v47 = v2 >> 27;
  HIDWORD(v2) = v42;
  LODWORD(v2) = v42;
  v48 = v2 >> 2;
  v49 = this[11] + v36 + (v42 & __ROR4__(v39, 2) | v41 & ~v42) + 1518500249 + v47;
  HIDWORD(v2) = v49;
  LODWORD(v2) = v49;
  v50 = v2 >> 27;
  HIDWORD(v2) = v46;
  LODWORD(v2) = v46;
  v51 = v2 >> 2;
  v52 = this[12];
  v53 = this[13];
  v54 = v52 + v41 + (v46 & __ROR4__(v42, 2) | v44 & ~v46) + 1518500249 + v50;
  HIDWORD(v2) = v54;
  LODWORD(v2) = v54;
  v55 = v2 >> 27;
  HIDWORD(v2) = v49;
  LODWORD(v2) = v49;
  v56 = v2 >> 2;
  v57 = v53 + v44 + (v49 & __ROR4__(v46, 2) | v48 & ~v49) + 1518500249 + v55;
  HIDWORD(v2) = v57;
  LODWORD(v2) = v57;
  v58 = v2 >> 27;
  HIDWORD(v2) = v54;
  LODWORD(v2) = v54;
  v59 = v2 >> 2;
  v61 = this[14];
  v60 = this[15];
  v62 = v61 + v48 + (v54 & __ROR4__(v49, 2) | v51 & ~v54) + 1518500249 + v58;
  HIDWORD(v2) = v62;
  LODWORD(v2) = v62;
  v63 = v2 >> 27;
  HIDWORD(v2) = v57;
  LODWORD(v2) = v57;
  v64 = v2 >> 2;
  v65 = v13 ^ *this ^ v37 ^ v53;
  HIDWORD(v2) = v65;
  LODWORD(v2) = v65;
  v66 = v2 >> 31;
  v67 = v60 + v51 + (v57 & __ROR4__(v54, 2) | v56 & ~v57) + 1518500249 + v63;
  HIDWORD(v2) = v67;
  LODWORD(v2) = v67;
  v68 = v2 >> 27;
  v69 = v66 + v56;
  HIDWORD(v2) = v62;
  LODWORD(v2) = v62;
  v70 = v2 >> 2;
  v71 = v69 + (v62 & __ROR4__(v57, 2) | v59 & ~v62);
  v72 = v14 ^ v6 ^ v38 ^ v61;
  HIDWORD(v2) = v72;
  LODWORD(v2) = v72;
  v73 = v2 >> 31;
  v74 = v71 + 1518500249 + v68;
  HIDWORD(v2) = v74;
  LODWORD(v2) = v74;
  v75 = v2 >> 27;
  v76 = v73 + v59;
  HIDWORD(v2) = v67;
  LODWORD(v2) = v67;
  v77 = v2 >> 2;
  v78 = v21 ^ v13 ^ v45 ^ v60;
  HIDWORD(v2) = v78;
  LODWORD(v2) = v78;
  v442 = v2 >> 31;
  v79 = v76 + (v67 & __ROR4__(v62, 2) | v64 & ~v67) + 1518500249 + v75;
  HIDWORD(v2) = v79;
  LODWORD(v2) = v79;
  v80 = v442 + v64 + (v74 & __ROR4__(v67, 2) | v70 & ~v74);
  v81 = this[11];
  v82 = v22 ^ v14 ^ v81 ^ __ROR4__(v65, 31);
  v83 = v80 + 1518500249 + (v2 >> 27);
  HIDWORD(v2) = v82;
  LODWORD(v2) = v82;
  v430 = v2 >> 31;
  HIDWORD(v2) = v83;
  LODWORD(v2) = v83;
  v84 = v2 >> 27;
  HIDWORD(v2) = v79;
  LODWORD(v2) = v79;
  v85 = v2 >> 2;
  v86 = v430 + v70 + (v79 & __ROR4__(v74, 2) | v77 & ~v79) + 1518500249 + v84;
  v87 = v85 ^ __ROR4__(v74, 2);
  LODWORD(v2) = v29 ^ v21 ^ v52 ^ __ROR4__(v72, 31);
  v88 = v2;
  HIDWORD(v2) = v2;
  v433 = v2 >> 31;
  HIDWORD(v2) = v74;
  LODWORD(v2) = v74;
  v89 = v2 >> 2;
  HIDWORD(v2) = v86;
  LODWORD(v2) = v86;
  v90 = v2 >> 27;
  HIDWORD(v2) = v83;
  LODWORD(v2) = v83;
  v91 = v2 >> 2;
  v92 = v433 + v77 + (v87 ^ v83) + 1859775393 + v90;
  LODWORD(v2) = v30 ^ this[5] ^ v53 ^ __ROR4__(v78, 31);
  v93 = v2;
  HIDWORD(v2) = v2;
  v425 = v2 >> 31;
  HIDWORD(v2) = v92;
  LODWORD(v2) = v92;
  v94 = v425 + v89 + (v91 ^ __ROR4__(v79, 2) ^ v86) + 1859775393 + (v2 >> 27);
  HIDWORD(v2) = v86;
  LODWORD(v2) = v86;
  v95 = v2 >> 2;
  v96 = v95 ^ __ROR4__(v83, 2);
  LODWORD(v2) = v37 ^ v29 ^ v61 ^ __ROR4__(v82, 31);
  v97 = v2;
  HIDWORD(v2) = v2;
  v427 = v2 >> 31;
  HIDWORD(v2) = v94;
  LODWORD(v2) = v94;
  v98 = v2 >> 27;
  HIDWORD(v2) = v92;
  LODWORD(v2) = v92;
  v99 = v2 >> 2;
  v100 = v427 + v85 + (v96 ^ v92) + 1859775393 + v98;
  v101 = v99 ^ __ROR4__(v86, 2) ^ v94;
  LODWORD(v2) = v38 ^ v30 ^ v60 ^ __ROR4__(v88, 31);
  v102 = v2;
  HIDWORD(v2) = v2;
  v103 = v2 >> 31;
  HIDWORD(v2) = v100;
  LODWORD(v2) = v100;
  v104 = v103 + v91 + v101 + 1859775393 + (v2 >> 27);
  HIDWORD(v2) = v94;
  LODWORD(v2) = v94;
  v105 = v2 >> 2;
  LODWORD(v2) = v45 ^ v37 ^ __ROR4__(v65, 31) ^ __ROR4__(v93, 31);
  v106 = v2;
  HIDWORD(v2) = v2;
  v107 = v2 >> 31;
  v108 = v107 + v95 + (v105 ^ __ROR4__(v92, 2) ^ v100) + 1859775393;
  HIDWORD(v2) = v104;
  LODWORD(v2) = v104;
  v109 = v2 >> 27;
  HIDWORD(v2) = v100;
  LODWORD(v2) = v100;
  v110 = v2 >> 2;
  v111 = v108 + v109;
  LODWORD(v2) = v81 ^ v38 ^ __ROR4__(v72, 31) ^ __ROR4__(v97, 31);
  HIDWORD(v2) = v2;
  v436 = v107;
  v439 = v2 >> 31;
  v112 = v2;
  HIDWORD(v2) = v111;
  LODWORD(v2) = v111;
  v113 = v439 + v99 + (v110 ^ __ROR4__(v94, 2) ^ v104) + 1859775393 + (v2 >> 27);
  HIDWORD(v2) = v104;
  LODWORD(v2) = v104;
  v114 = v2 >> 2;
  v115 = v114 ^ __ROR4__(v100, 2) ^ v111;
  v116 = v52 ^ v45 ^ __ROR4__(v78, 31) ^ __ROR4__(v102, 31);
  HIDWORD(v2) = v116;
  LODWORD(v2) = v116;
  v446 = v2 >> 31;
  HIDWORD(v2) = v113;
  LODWORD(v2) = v113;
  v117 = v2 >> 27;
  HIDWORD(v2) = v111;
  LODWORD(v2) = v111;
  v118 = v2 >> 2;
  v119 = v446 + v105 + v115 + 1859775393 + v117;
  v120 = v53 ^ v81 ^ __ROR4__(v82, 31) ^ __ROR4__(v106, 31);
  HIDWORD(v2) = v120;
  LODWORD(v2) = v120;
  v460 = v2 >> 31;
  HIDWORD(v2) = v119;
  LODWORD(v2) = v119;
  v121 = v460 + v110 + (v118 ^ __ROR4__(v104, 2) ^ v113) + 1859775393 + (v2 >> 27);
  HIDWORD(v2) = v113;
  LODWORD(v2) = v113;
  v122 = v2 >> 2;
  v423 = v112;
  LODWORD(v2) = v61 ^ v52 ^ __ROR4__(v88, 31) ^ __ROR4__(v112, 31);
  v123 = v2;
  HIDWORD(v2) = v2;
  v457 = v2 >> 31;
  HIDWORD(v2) = v121;
  LODWORD(v2) = v121;
  v124 = v2 >> 27;
  HIDWORD(v2) = v119;
  LODWORD(v2) = v119;
  v125 = v2 >> 2;
  v126 = v457 + v114 + (v122 ^ __ROR4__(v111, 2) ^ v119) + 1859775393 + v124;
  v127 = v60 ^ v53 ^ __ROR4__(v93, 31) ^ __ROR4__(v116, 31);
  HIDWORD(v2) = v127;
  LODWORD(v2) = v127;
  v454 = v2 >> 31;
  HIDWORD(v2) = v126;
  LODWORD(v2) = v126;
  v128 = v454 + v118 + (v125 ^ __ROR4__(v113, 2) ^ v121) + 1859775393 + (v2 >> 27);
  HIDWORD(v2) = v121;
  LODWORD(v2) = v121;
  v129 = v2 >> 2;
  v130 = v61 ^ __ROR4__(v65, 31) ^ __ROR4__(v97, 31) ^ __ROR4__(v120, 31);
  HIDWORD(v2) = v130;
  LODWORD(v2) = v130;
  v451 = v2 >> 31;
  v131 = v451 + v122 + (v129 ^ __ROR4__(v119, 2) ^ v126) + 1859775393;
  HIDWORD(v2) = v128;
  LODWORD(v2) = v128;
  v132 = v2 >> 27;
  HIDWORD(v2) = v126;
  LODWORD(v2) = v126;
  v133 = v2 >> 2;
  v134 = v131 + v132;
  v135 = v60 ^ __ROR4__(v72, 31) ^ __ROR4__(v102, 31) ^ __ROR4__(v123, 31);
  HIDWORD(v2) = v135;
  LODWORD(v2) = v135;
  v449 = v2 >> 31;
  HIDWORD(v2) = v134;
  LODWORD(v2) = v134;
  v136 = v449 + v125 + (v133 ^ __ROR4__(v121, 2) ^ v128) + 1859775393 + (v2 >> 27);
  v138 = __PAIR64__(v128, __ROR4__(v65, 31));
  v137 = v442 ^ v138;
  LODWORD(v138) = v128;
  v139 = v138 >> 2;
  LODWORD(v138) = v137 ^ __ROR4__(v106, 31) ^ __ROR4__(v127, 31);
  v140 = v138;
  HIDWORD(v138) = v138;
  v443 = v138 >> 31;
  HIDWORD(v138) = v136;
  LODWORD(v138) = v136;
  v141 = v443 + v129 + (v139 ^ __ROR4__(v126, 2) ^ v134) + 1859775393 + (v138 >> 27);
  v143 = __PAIR64__(v134, __ROR4__(v72, 31));
  v142 = v430 ^ v143;
  LODWORD(v143) = v134;
  v144 = v143 >> 2;
  LODWORD(v143) = v142 ^ __ROR4__(v112, 31) ^ __ROR4__(v130, 31);
  v145 = v143;
  HIDWORD(v143) = v143;
  v146 = v143 >> 31;
  HIDWORD(v143) = v141;
  LODWORD(v143) = v141;
  v147 = v146 + v133 + (v144 ^ __ROR4__(v128, 2) ^ v136) + 1859775393 + (v143 >> 27);
  v149 = __PAIR64__(v136, __ROR4__(v78, 31));
  v148 = v433 ^ v149;
  LODWORD(v149) = v136;
  v150 = v149 >> 2;
  LODWORD(v149) = v148 ^ __ROR4__(v116, 31) ^ __ROR4__(v135, 31);
  v151 = v149;
  HIDWORD(v149) = v149;
  v431 = v149 >> 31;
  HIDWORD(v149) = v147;
  LODWORD(v149) = v147;
  v152 = v431 + v139 + (v150 ^ __ROR4__(v134, 2) ^ v141) + 1859775393 + (v149 >> 27);
  v154 = __PAIR64__(v141, __ROR4__(v82, 31));
  v153 = v425 ^ v154;
  LODWORD(v154) = v141;
  v155 = v154 >> 2;
  v156 = v153 ^ __ROR4__(v120, 31) ^ __ROR4__(v140, 31);
  HIDWORD(v154) = v156;
  LODWORD(v154) = v156;
  v434 = v154 >> 31;
  HIDWORD(v154) = v152;
  LODWORD(v154) = v152;
  v157 = v434 + v144 + (v155 ^ __ROR4__(v136, 2) ^ v147) + 1859775393 + (v154 >> 27);
  v159 = __PAIR64__(v147, __ROR4__(v88, 31));
  v158 = v427 ^ v159;
  LODWORD(v159) = v147;
  v160 = v159 >> 2;
  LODWORD(v159) = v158 ^ __ROR4__(v123, 31) ^ __ROR4__(v145, 31);
  v161 = v159;
  HIDWORD(v159) = v159;
  v162 = v159 >> 31;
  HIDWORD(v159) = v157;
  LODWORD(v159) = v157;
  v163 = v162 + v150 + (v160 ^ __ROR4__(v141, 2) ^ v152) + 1859775393 + (v159 >> 27);
  v165 = __PAIR64__(v152, __ROR4__(v93, 31));
  v164 = v103 ^ v165;
  LODWORD(v165) = v152;
  v166 = v165 >> 2;
  v167 = v166 ^ __ROR4__(v147, 2) ^ v157;
  LODWORD(v165) = v164 ^ __ROR4__(v127, 31) ^ __ROR4__(v151, 31);
  v168 = v165;
  HIDWORD(v165) = v165;
  v428 = v165 >> 31;
  HIDWORD(v165) = v163;
  LODWORD(v165) = v163;
  v169 = v428 + v155 + v167 + 1859775393 + (v165 >> 27);
  v171 = __PAIR64__(v157, __ROR4__(v97, 31));
  v170 = v436 ^ v171;
  LODWORD(v171) = v157;
  v172 = v171 >> 2;
  v173 = v170 ^ __ROR4__(v130, 31) ^ __ROR4__(v156, 31);
  HIDWORD(v171) = v173;
  LODWORD(v171) = v173;
  v437 = v171 >> 31;
  HIDWORD(v171) = v169;
  LODWORD(v171) = v169;
  v174 = v437 + v160 + (v172 ^ __ROR4__(v152, 2) ^ v163) + 1859775393 + (v171 >> 27);
  v176 = __PAIR64__(v163, __ROR4__(v102, 31));
  v175 = v439 ^ v176;
  LODWORD(v176) = v163;
  v177 = v176 >> 2;
  LODWORD(v176) = v175 ^ __ROR4__(v135, 31) ^ __ROR4__(v161, 31);
  v178 = v176;
  HIDWORD(v176) = v176;
  v440 = v176 >> 31;
  HIDWORD(v176) = v174;
  LODWORD(v176) = v174;
  v179 = v440 + v166 + (v177 ^ __ROR4__(v157, 2) ^ v169) + 1859775393 + (v176 >> 27);
  LODWORD(v176) = v446 ^ __ROR4__(v106, 31) ^ __ROR4__(v140, 31) ^ __ROR4__(v168, 31);
  v180 = v176;
  HIDWORD(v176) = v176;
  v447 = v176 >> 31;
  HIDWORD(v176) = v179;
  LODWORD(v176) = v179;
  v181 = v447 + v172 + ((v174 | __ROR4__(v169, 2)) & __ROR4__(v163, 2) | v174 & __ROR4__(v169, 2)) + (v176 >> 27) - 1894007588;
  LODWORD(v176) = v460 ^ __ROR4__(v423, 31) ^ __ROR4__(v145, 31) ^ __ROR4__(v173, 31);
  HIDWORD(v176) = v176;
  v461 = v176 >> 31;
  v182 = v176;
  HIDWORD(v176) = v181;
  LODWORD(v176) = v181;
  v183 = v461 + v177 + ((v179 | __ROR4__(v174, 2)) & __ROR4__(v169, 2) | v179 & __ROR4__(v174, 2)) + (v176 >> 27);
  v185 = __PAIR64__(v169, __ROR4__(v116, 31));
  v184 = v457 ^ v185;
  LODWORD(v185) = v169;
  v186 = v185 >> 2;
  v187 = v184 ^ __ROR4__(v151, 31);
  LODWORD(v185) = __ROR4__(v178, 31);
  v188 = v187 ^ v185;
  v190 = __PAIR64__(v187 ^ v185, __ROR4__(v179, 2));
  v189 = v181 & v190;
  LODWORD(v190) = v188;
  v458 = v190 >> 31;
  v183 -= 1894007588;
  HIDWORD(v190) = v183;
  LODWORD(v190) = v183;
  v191 = v458 + v186 + ((v181 | __ROR4__(v179, 2)) & __ROR4__(v174, 2) | v189) + (v190 >> 27);
  v193 = __PAIR64__(v174, __ROR4__(v120, 31));
  v192 = v454 ^ v193;
  LODWORD(v193) = v174;
  v194 = v193 >> 2;
  LODWORD(v193) = v192 ^ __ROR4__(v156, 31) ^ __ROR4__(v180, 31);
  v195 = v193;
  HIDWORD(v193) = v193;
  v455 = v193 >> 31;
  v196 = v191 - 1894007588;
  HIDWORD(v193) = v191 - 1894007588;
  LODWORD(v193) = v191 - 1894007588;
  v197 = v455 + v194 + ((v183 | __ROR4__(v181, 2)) & __ROR4__(v179, 2) | v183 & __ROR4__(v181, 2)) + (v193 >> 27);
  v198 = __PAIR64__(v179, __ROR4__(v183, 2));
  v199 = (v196 | __ROR4__(v183, 2)) & __ROR4__(v181, 2) | v196 & v198;
  LODWORD(v198) = v179;
  v200 = v198 >> 2;
  LODWORD(v198) = v451 ^ __ROR4__(v123, 31) ^ __ROR4__(v161, 31) ^ __ROR4__(v182, 31);
  v201 = v198;
  HIDWORD(v198) = v198;
  v452 = v198 >> 31;
  v202 = v197 - 1894007588;
  HIDWORD(v198) = v197 - 1894007588;
  LODWORD(v198) = v197 - 1894007588;
  v203 = v452 + v200 + v199 + (v198 >> 27);
  v205 = __PAIR64__(v181, __ROR4__(v127, 31));
  v204 = v449 ^ v205;
  LODWORD(v205) = v181;
  v206 = v205 >> 2;
  LODWORD(v205) = v204 ^ __ROR4__(v168, 31) ^ __ROR4__(v188, 31);
  v207 = v205;
  HIDWORD(v205) = v205;
  v450 = v205 >> 31;
  v203 -= 1894007588;
  HIDWORD(v205) = v203;
  LODWORD(v205) = v203;
  v208 = v450 + v206 + ((v202 | __ROR4__(v196, 2)) & __ROR4__(v183, 2) | v202 & __ROR4__(v196, 2)) + (v205 >> 27);
  v210 = __PAIR64__(v183, __ROR4__(v130, 31));
  v209 = v443 ^ v210;
  LODWORD(v210) = v183;
  v211 = v210 >> 2;
  LODWORD(v210) = v209 ^ __ROR4__(v173, 31) ^ __ROR4__(v195, 31);
  v212 = v210;
  HIDWORD(v210) = v210;
  v444 = v210 >> 31;
  v208 -= 1894007588;
  HIDWORD(v210) = v208;
  LODWORD(v210) = v208;
  v213 = v444 + v211 + ((v203 | __ROR4__(v202, 2)) & __ROR4__(v196, 2) | v203 & __ROR4__(v202, 2)) + (v210 >> 27);
  v215 = __PAIR64__(v196, __ROR4__(v135, 31));
  v214 = v146 ^ v215;
  LODWORD(v215) = v196;
  v216 = v215 >> 2;
  v213 -= 1894007588;
  LODWORD(v215) = v214 ^ __ROR4__(v178, 31) ^ __ROR4__(v201, 31);
  v217 = v215;
  HIDWORD(v215) = v215;
  v421 = v215 >> 31;
  HIDWORD(v215) = v213;
  LODWORD(v215) = v213;
  v218 = v421 + v216 + ((v208 | __ROR4__(v203, 2)) & __ROR4__(v202, 2) | v208 & __ROR4__(v203, 2)) + (v215 >> 27);
  v220 = __PAIR64__(v202, __ROR4__(v140, 31));
  v219 = v431 ^ v220;
  LODWORD(v220) = v202;
  v221 = v220 >> 2;
  v222 = v219 ^ __ROR4__(v180, 31);
  LODWORD(v220) = __ROR4__(v207, 31);
  v223 = v222 ^ v220;
  v225 = __PAIR64__(v222 ^ v220, __ROR4__(v208, 2));
  v224 = v213 & v225;
  LODWORD(v225) = v223;
  v226 = v225 >> 31;
  v227 = v226 + v221 + ((v213 | __ROR4__(v208, 2)) & __ROR4__(v203, 2) | v224);
  v228 = v218 - 1894007588;
  HIDWORD(v225) = v218 - 1894007588;
  LODWORD(v225) = v218 - 1894007588;
  v229 = v227 + (v225 >> 27);
  v231 = __PAIR64__(v203, __ROR4__(v145, 31));
  v230 = v434 ^ v231;
  LODWORD(v231) = v203;
  v232 = v231 >> 2;
  v233 = v182;
  v234 = v230 ^ __ROR4__(v182, 31) ^ __ROR4__(v212, 31);
  HIDWORD(v231) = v234;
  LODWORD(v231) = v234;
  v435 = v231 >> 31;
  v235 = v435 + v232 + ((v228 | __ROR4__(v213, 2)) & __ROR4__(v208, 2) | v228 & __ROR4__(v213, 2));
  v236 = v229 - 1894007588;
  HIDWORD(v231) = v229 - 1894007588;
  LODWORD(v231) = v229 - 1894007588;
  v237 = v235 + (v231 >> 27);
  v238 = __PAIR64__(v208, __ROR4__(v228, 2));
  v239 = (v236 | __ROR4__(v228, 2)) & __ROR4__(v213, 2) | v236 & v238;
  LODWORD(v238) = v208;
  v240 = v238 >> 2;
  v241 = v162 ^ __ROR4__(v151, 31) ^ __ROR4__(v188, 31) ^ __ROR4__(v217, 31);
  HIDWORD(v238) = v241;
  LODWORD(v238) = v241;
  v242 = v238 >> 31;
  v243 = v237 - 1894007588;
  HIDWORD(v238) = v237 - 1894007588;
  LODWORD(v238) = v237 - 1894007588;
  v244 = v242 + v240 + v239 + (v238 >> 27);
  v246 = __PAIR64__(v213, __ROR4__(v156, 31));
  v245 = v428 ^ v246;
  LODWORD(v246) = v213;
  v247 = v246 >> 2;
  LODWORD(v246) = v245 ^ __ROR4__(v195, 31) ^ __ROR4__(v223, 31);
  v248 = v246;
  HIDWORD(v246) = v246;
  v429 = v246 >> 31;
  v432 = v242;
  v244 -= 1894007588;
  HIDWORD(v246) = v244;
  LODWORD(v246) = v244;
  v249 = v429 + v247 + (((v237 - 1894007588) | __ROR4__(v236, 2)) & __ROR4__(v228, 2) | (v237 - 1894007588) & __ROR4__(v236, 2)) + (v246 >> 27);
  v251 = __PAIR64__(v228, __ROR4__(v161, 31));
  v250 = v437 ^ v251;
  LODWORD(v251) = v228;
  v252 = v251 >> 2;
  LODWORD(v251) = v250 ^ __ROR4__(v201, 31) ^ __ROR4__(v234, 31);
  v253 = v251;
  HIDWORD(v251) = v251;
  v438 = v251 >> 31;
  v254 = v438 + v252 + ((v244 | __ROR4__(v237 - 1894007588, 2)) & __ROR4__(v236, 2) | v244 & __ROR4__(v237 - 1894007588, 2));
  v255 = v249 - 1894007588;
  HIDWORD(v251) = v249 - 1894007588;
  LODWORD(v251) = v249 - 1894007588;
  v256 = v254 + (v251 >> 27);
  v258 = __PAIR64__(v236, __ROR4__(v168, 31));
  v257 = v440 ^ v258;
  LODWORD(v258) = v236;
  v259 = v258 >> 2;
  v256 -= 1894007588;
  LODWORD(v258) = v257 ^ __ROR4__(v207, 31) ^ __ROR4__(v241, 31);
  v260 = v258;
  HIDWORD(v258) = v258;
  v441 = v258 >> 31;
  HIDWORD(v258) = v256;
  LODWORD(v258) = v256;
  v261 = v441 + v259 + ((v255 | __ROR4__(v244, 2)) & __ROR4__(v243, 2) | v255 & __ROR4__(v244, 2)) + (v258 >> 27);
  v263 = __PAIR64__(v243, __ROR4__(v173, 31));
  v262 = v447 ^ v263;
  LODWORD(v263) = v243;
  v264 = v263 >> 2;
  v265 = v262 ^ __ROR4__(v212, 31);
  LODWORD(v263) = __ROR4__(v248, 31);
  v266 = v265 ^ v263;
  v268 = __PAIR64__(v265 ^ v263, __ROR4__(v255, 2));
  v267 = v256 & v268;
  LODWORD(v268) = v266;
  v448 = v268 >> 31;
  v261 -= 1894007588;
  HIDWORD(v268) = v261;
  LODWORD(v268) = v261;
  v269 = v448 + v264 + ((v256 | __ROR4__(v255, 2)) & __ROR4__(v244, 2) | v267) + (v268 >> 27);
  v271 = __PAIR64__(v244, __ROR4__(v178, 31));
  v270 = v461 ^ v271;
  LODWORD(v271) = v244;
  v272 = v271 >> 2;
  LODWORD(v271) = v270 ^ __ROR4__(v217, 31) ^ __ROR4__(v253, 31);
  v273 = v271;
  HIDWORD(v271) = v271;
  v422 = v271 >> 31;
  v274 = v422 + v272 + ((v261 | __ROR4__(v256, 2)) & __ROR4__(v255, 2) | v261 & __ROR4__(v256, 2));
  v275 = v269 - 1894007588;
  HIDWORD(v271) = v269 - 1894007588;
  LODWORD(v271) = v269 - 1894007588;
  v276 = v274 + (v271 >> 27);
  v277 = __PAIR64__(v255, __ROR4__(v261, 2));
  v278 = (v275 | __ROR4__(v261, 2)) & __ROR4__(v256, 2) | v275 & v277;
  LODWORD(v277) = v255;
  v279 = v277 >> 2;
  LODWORD(v277) = v458 ^ __ROR4__(v180, 31) ^ __ROR4__(v223, 31) ^ __ROR4__(v260, 31);
  v280 = v277;
  HIDWORD(v277) = v277;
  v426 = v277 >> 31;
  v276 -= 1894007588;
  HIDWORD(v277) = v276;
  LODWORD(v277) = v276;
  v281 = v426 + v279 + v278 + (v277 >> 27);
  v283 = __PAIR64__(v256, __ROR4__(v233, 31));
  v282 = v455 ^ v283;
  LODWORD(v283) = v256;
  v284 = v283 >> 2;
  LODWORD(v283) = v282 ^ __ROR4__(v234, 31) ^ __ROR4__(v266, 31);
  v285 = v283;
  HIDWORD(v283) = v283;
  v424 = v283 >> 31;
  v286 = v424 + v284 + ((v276 | __ROR4__(v275, 2)) & __ROR4__(v261, 2) | v276 & __ROR4__(v275, 2));
  v287 = v281 - 1894007588;
  HIDWORD(v283) = v281 - 1894007588;
  LODWORD(v283) = v281 - 1894007588;
  v288 = v286 + (v283 >> 27);
  v290 = __PAIR64__(v261, __ROR4__(v188, 31));
  v289 = v452 ^ v290;
  LODWORD(v290) = v261;
  v291 = v290 >> 2;
  LODWORD(v290) = v289 ^ __ROR4__(v241, 31) ^ __ROR4__(v273, 31);
  v292 = v290;
  HIDWORD(v290) = v290;
  v456 = v290 >> 31;
  v288 -= 1894007588;
  HIDWORD(v290) = v288;
  LODWORD(v290) = v288;
  v293 = v456 + v291 + ((v287 | __ROR4__(v276, 2)) & __ROR4__(v275, 2) | v287 & __ROR4__(v276, 2)) + (v290 >> 27);
  v295 = __PAIR64__(v275, __ROR4__(v195, 31));
  v294 = v450 ^ v295;
  LODWORD(v295) = v275;
  v296 = v295 >> 2;
  v293 -= 1894007588;
  LODWORD(v295) = v294 ^ __ROR4__(v248, 31) ^ __ROR4__(v280, 31);
  v297 = v295;
  HIDWORD(v295) = v295;
  v298 = v295 >> 31;
  HIDWORD(v295) = v293;
  LODWORD(v295) = v293;
  v299 = v298 + v296 + ((v288 | __ROR4__(v287, 2)) & __ROR4__(v276, 2) | v288 & __ROR4__(v287, 2)) + (v295 >> 27) - 1894007588;
  v301 = __PAIR64__(v276, __ROR4__(v201, 31));
  v300 = v444 ^ v301;
  LODWORD(v301) = v276;
  v302 = v301 >> 2;
  HIDWORD(v301) = v288;
  LODWORD(v301) = v288;
  v303 = v301 >> 2;
  LODWORD(v301) = v300 ^ __ROR4__(v253, 31) ^ __ROR4__(v285, 31);
  v304 = v301;
  HIDWORD(v301) = v301;
  v453 = v301 >> 31;
  HIDWORD(v301) = v299;
  LODWORD(v301) = v299;
  v305 = v453 + v302 + (v303 ^ __ROR4__(v287, 2) ^ v293) - 899497514 + (v301 >> 27);
  v307 = __PAIR64__(v287, __ROR4__(v207, 31));
  v306 = v421 ^ v307;
  LODWORD(v307) = v287;
  v308 = v307 >> 2;
  HIDWORD(v307) = v293;
  LODWORD(v307) = v293;
  v309 = v307 >> 2;
  LODWORD(v307) = v306 ^ __ROR4__(v260, 31) ^ __ROR4__(v292, 31);
  v310 = v307;
  HIDWORD(v307) = v307;
  v445 = v307 >> 31;
  HIDWORD(v307) = v305;
  LODWORD(v307) = v305;
  v311 = v445 + v308 + (v309 ^ __ROR4__(v288, 2) ^ v299) - 899497514 + (v307 >> 27);
  v313 = __PAIR64__(v299, __ROR4__(v212, 31));
  v312 = v226 ^ v313;
  LODWORD(v313) = v299;
  v314 = v313 >> 2;
  LODWORD(v313) = v312 ^ __ROR4__(v266, 31) ^ __ROR4__(v297, 31);
  v315 = v313;
  HIDWORD(v313) = v313;
  v462 = v313 >> 31;
  HIDWORD(v313) = v311;
  LODWORD(v313) = v311;
  v316 = v462 + v303 + (v314 ^ __ROR4__(v293, 2) ^ v305) - 899497514 + (v313 >> 27);
  v318 = __PAIR64__(v305, __ROR4__(v217, 31));
  v317 = v435 ^ v318;
  LODWORD(v318) = v305;
  v319 = v318 >> 2;
  LODWORD(v318) = v317 ^ __ROR4__(v273, 31) ^ __ROR4__(v304, 31);
  v320 = v318;
  HIDWORD(v318) = v318;
  v459 = v318 >> 31;
  HIDWORD(v318) = v316;
  LODWORD(v318) = v316;
  v321 = v459 + v309 + (v319 ^ __ROR4__(v299, 2) ^ v311) - 899497514 + (v318 >> 27);
  v323 = __PAIR64__(v311, __ROR4__(v223, 31));
  v322 = v432 ^ v323;
  LODWORD(v323) = v311;
  v324 = v323 >> 2;
  LODWORD(v323) = v322 ^ __ROR4__(v280, 31) ^ __ROR4__(v310, 31);
  v325 = v323;
  HIDWORD(v323) = v323;
  v326 = v323 >> 31;
  HIDWORD(v323) = v321;
  LODWORD(v323) = v321;
  v327 = v326 + v314 + (v324 ^ __ROR4__(v305, 2) ^ v316) - 899497514 + (v323 >> 27);
  v329 = __PAIR64__(v316, __ROR4__(v234, 31));
  v328 = v429 ^ v329;
  LODWORD(v329) = v316;
  v330 = v329 >> 2;
  LODWORD(v329) = v328 ^ __ROR4__(v285, 31) ^ __ROR4__(v315, 31);
  v331 = v329;
  HIDWORD(v329) = v329;
  v332 = v329 >> 31;
  HIDWORD(v329) = v327;
  LODWORD(v329) = v327;
  v333 = v332 + v319 + (v330 ^ __ROR4__(v311, 2) ^ v321) - 899497514 + (v329 >> 27);
  v335 = __PAIR64__(v321, __ROR4__(v241, 31));
  v334 = v438 ^ v335;
  LODWORD(v335) = v321;
  v336 = v335 >> 2;
  v337 = v336 ^ __ROR4__(v316, 2) ^ v327;
  LODWORD(v335) = v334 ^ __ROR4__(v292, 31) ^ __ROR4__(v320, 31);
  v338 = v335;
  HIDWORD(v335) = v335;
  v339 = v335 >> 31;
  HIDWORD(v335) = v333;
  LODWORD(v335) = v333;
  v340 = v339 + v324 + v337 - 899497514 + (v335 >> 27);
  v341 = v441 ^ __ROR4__(v248, 31) ^ __ROR4__(v297, 31) ^ __ROR4__(v325, 31);
  HIDWORD(v335) = v341;
  LODWORD(v335) = v341;
  v342 = v335 >> 31;
  this[2] = v339;
  this[3] = v342;
  v343 = v342 + v330;
  HIDWORD(v335) = v327;
  LODWORD(v335) = v327;
  v344 = v335 >> 2;
  v345 = __PAIR64__(v340, __ROR4__(v321, 2));
  v346 = v343 + (v344 ^ v345 ^ v333) - 899497514;
  LODWORD(v345) = v340;
  v347 = v346 + (v345 >> 27);
  HIDWORD(v345) = v333;
  LODWORD(v345) = v333;
  v348 = v345 >> 2;
  v349 = v448 ^ __ROR4__(v253, 31) ^ __ROR4__(v304, 31) ^ __ROR4__(v331, 31);
  HIDWORD(v345) = v349;
  LODWORD(v345) = v349;
  v350 = v345 >> 31;
  HIDWORD(v345) = v347;
  LODWORD(v345) = v347;
  v351 = v350 + v336 + (v348 ^ __ROR4__(v327, 2) ^ v340) - 899497514 + (v345 >> 27);
  LODWORD(v345) = v422 ^ __ROR4__(v260, 31) ^ __ROR4__(v310, 31) ^ __ROR4__(v338, 31);
  v352 = v345;
  HIDWORD(v345) = v345;
  v353 = v345 >> 31;
  this[4] = v350;
  this[5] = v353;
  v354 = v353 + v344;
  HIDWORD(v345) = v340;
  LODWORD(v345) = v340;
  v355 = v345 >> 2;
  v356 = __PAIR64__(v351, __ROR4__(v333, 2));
  v357 = v354 + (v355 ^ v356 ^ v347) - 899497514;
  LODWORD(v356) = v351;
  v358 = v357 + (v356 >> 27);
  v360 = __PAIR64__(v347, __ROR4__(v266, 31));
  v359 = v426 ^ v360;
  LODWORD(v360) = v347;
  v361 = v360 >> 2;
  LODWORD(v360) = v359 ^ __ROR4__(v315, 31) ^ __ROR4__(v341, 31);
  v362 = v360;
  HIDWORD(v360) = v360;
  v363 = v360 >> 31;
  HIDWORD(v360) = v358;
  LODWORD(v360) = v358;
  v364 = v363 + v348 + (v361 ^ __ROR4__(v340, 2) ^ v351) - 899497514 + (v360 >> 27);
  LODWORD(v360) = v424 ^ __ROR4__(v273, 31) ^ __ROR4__(v320, 31) ^ __ROR4__(v349, 31);
  v365 = v360;
  HIDWORD(v360) = v360;
  v366 = v360 >> 31;
  this[6] = v363;
  this[7] = v366;
  HIDWORD(v360) = v351;
  LODWORD(v360) = v351;
  v367 = v360 >> 2;
  v368 = __PAIR64__(v364, __ROR4__(v347, 2));
  v369 = v366 + v355 + (v367 ^ v368 ^ v358);
  LODWORD(v368) = v364;
  v370 = v369 - 899497514 + (v368 >> 27);
  v372 = __PAIR64__(v358, __ROR4__(v325, 31));
  v371 = v456 ^ __ROR4__(v280, 31) ^ v372;
  LODWORD(v372) = v358;
  v373 = v372 >> 2;
  v374 = v371 ^ __ROR4__(v352, 31);
  HIDWORD(v372) = v374;
  LODWORD(v372) = v374;
  v375 = v372 >> 31;
  HIDWORD(v372) = v370;
  LODWORD(v372) = v370;
  v376 = v375 + v361 + (v373 ^ __ROR4__(v351, 2) ^ v364) - 899497514 + (v372 >> 27);
  LODWORD(v372) = v298 ^ __ROR4__(v285, 31) ^ __ROR4__(v331, 31) ^ __ROR4__(v362, 31);
  v377 = v372;
  HIDWORD(v372) = v372;
  v378 = v372 >> 31;
  this[8] = v375;
  this[9] = v378;
  v379 = v378 + v367;
  HIDWORD(v372) = v364;
  LODWORD(v372) = v364;
  v380 = v372 >> 2;
  v381 = __PAIR64__(v376, __ROR4__(v358, 2));
  v382 = v379 + (v380 ^ v381 ^ v370) - 899497514;
  LODWORD(v381) = v376;
  v383 = v382 + (v381 >> 27);
  v385 = __PAIR64__(v370, __ROR4__(v338, 31));
  v384 = v453 ^ __ROR4__(v292, 31) ^ v385;
  LODWORD(v385) = v370;
  v386 = v385 >> 2;
  v387 = v384 ^ __ROR4__(v365, 31);
  HIDWORD(v385) = v387;
  LODWORD(v385) = v387;
  v388 = v385 >> 31;
  HIDWORD(v385) = v383;
  LODWORD(v385) = v383;
  v389 = v388 + v373 + (v386 ^ __ROR4__(v364, 2) ^ v376) - 899497514 + (v385 >> 27);
  v390 = v445 ^ __ROR4__(v297, 31) ^ __ROR4__(v341, 31) ^ __ROR4__(v374, 31);
  HIDWORD(v385) = v390;
  LODWORD(v385) = v390;
  v391 = v385 >> 31;
  this[10] = v388;
  this[11] = v391;
  v392 = v391 + v380;
  HIDWORD(v385) = v376;
  LODWORD(v385) = v376;
  v393 = v385 >> 2;
  v394 = __PAIR64__(v389, __ROR4__(v370, 2));
  v395 = v392 + (v393 ^ v394 ^ v383);
  LODWORD(v394) = v389;
  v396 = v395 - 899497514 + (v394 >> 27);
  v398 = __PAIR64__(v383, __ROR4__(v304, 31));
  v397 = v462 ^ v398;
  LODWORD(v398) = v383;
  v399 = v398 >> 2;
  LODWORD(v398) = v397 ^ __ROR4__(v349, 31) ^ __ROR4__(v377, 31);
  v400 = v398;
  HIDWORD(v398) = v398;
  v401 = v398 >> 31;
  HIDWORD(v398) = v396;
  LODWORD(v398) = v396;
  v402 = v401 + v386 + (v399 ^ __ROR4__(v376, 2) ^ v389) - 899497514 + (v398 >> 27);
  LODWORD(v398) = v459 ^ __ROR4__(v310, 31) ^ __ROR4__(v352, 31) ^ __ROR4__(v387, 31);
  HIDWORD(v398) = v398;
  v403 = v398 >> 31;
  this[12] = v401;
  this[13] = v403;
  HIDWORD(v398) = v389;
  LODWORD(v398) = v389;
  v404 = v398 >> 2;
  v405 = __PAIR64__(v402, __ROR4__(v383, 2));
  v406 = v403 + v393 + (v404 ^ v405 ^ v396);
  LODWORD(v405) = v402;
  v407 = v406 - 899497514 + (v405 >> 27);
  v409 = __PAIR64__(v396, __ROR4__(v362, 31));
  v408 = v326 ^ __ROR4__(v315, 31) ^ v409;
  LODWORD(v409) = v396;
  v410 = v409 >> 2;
  v411 = v408 ^ __ROR4__(v390, 31);
  v412 = __PAIR64__(v411, __ROR4__(v389, 2));
  v413 = v410 ^ v412 ^ v402;
  LODWORD(v412) = v411;
  v414 = v412 >> 31;
  HIDWORD(v412) = v407;
  LODWORD(v412) = v407;
  v415 = v414 + v399 + v413 - 899497514 + (v412 >> 27);
  *this = v326;
  this[1] = v332;
  LODWORD(v412) = v332 ^ __ROR4__(v320, 31) ^ __ROR4__(v365, 31) ^ __ROR4__(v400, 31);
  HIDWORD(v412) = v412;
  v416 = v412 >> 31;
  this[14] = v414;
  this[15] = v416;
  v417 = v464 + v416 + v404;
  HIDWORD(v412) = v402;
  LODWORD(v412) = v402;
  v418 = v412 >> 2;
  v419 = __PAIR64__(v415, __ROR4__(v396, 2));
  v420 = v417 + (v418 ^ v419 ^ v407) - 899497514;
  LODWORD(v419) = v415;
  this[16] = v420 + (v419 >> 27);
  this[17] = v415 + v466;
  HIDWORD(v419) = v407;
  LODWORD(v419) = v407;
  this[18] = (v419 >> 2) + v463;
  this[19] = v418 + v465;
  this[20] = v410 + v467;
  return this;
}

_DWORD *llvm::SHA1::update(_DWORD *this, _BYTE *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  this[21] += a3;
  v6 = *(this + 88);
  if (*(this + 88))
  {
    if (64 - v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 64 - v6;
    }

    if (v7)
    {
      v8 = a2;
      v9 = v7;
      do
      {
        v10 = *v8++;
        *(v5 + (v6 ^ 3)) = v10;
        LODWORD(v6) = (*(v5 + 88))++ + 1;
        if (v6 == 64)
        {
          this = llvm::SHA1::hashBlock(v5);
          LOBYTE(v6) = 0;
          *(v5 + 88) = 0;
        }

        --v9;
      }

      while (v9);
    }

    v3 -= v7;
    v4 += v7;
  }

  if (v3 >= 0x40)
  {
    do
    {
      for (i = 0; i != 64; i += 4)
      {
        *(v5 + i) = bswap32(*&v4[i]);
      }

      this = llvm::SHA1::hashBlock(v5);
      v3 -= 64;
      v4 += 64;
    }

    while (v3 > 0x3F);
  }

  if (v3)
  {
    LOBYTE(v12) = *(v5 + 88);
    do
    {
      *(v5 + (v12 ^ 3)) = *v4;
      v12 = (*(v5 + 88))++ + 1;
      if (v12 == 64)
      {
        this = llvm::SHA1::hashBlock(v5);
        LOBYTE(v12) = 0;
        *(v5 + 88) = 0;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return this;
}

_DWORD *llvm::SHA1::pad(llvm::SHA1 *this)
{
  *(this + (*(this + 88) ^ 3)) = 0x80;
  v2 = *(this + 88);
  LOBYTE(v3) = v2 + 1;
  *(this + 88) = v2 + 1;
  if (v2 != 55)
  {
    if (v2 == 63)
    {
      llvm::SHA1::hashBlock(this);
      LOBYTE(v3) = 0;
      *(this + 88) = 0;
    }

    do
    {
      *(this + (v3 ^ 3)) = 0;
      v3 = (*(this + 88))++ + 1;
      if (v3 == 64)
      {
        llvm::SHA1::hashBlock(this);
        LOBYTE(v3) = 0;
        *(this + 88) = 0;
      }
    }

    while (v3 != 56);
  }

  *(this + 59) = 0;
  *(this + 57) = 0;
  v4 = *(this + 21);
  *(this + 56) = v4 >> 29;
  *(this + 63) = v4 >> 21;
  *(this + 62) = v4 >> 13;
  *(this + 30) = __PAIR16__((8 * v4) >> 24, 8 * v4);
  *(this + 88) = 64;
  result = llvm::SHA1::hashBlock(this);
  *(this + 88) = 0;
  return result;
}

__n128 llvm::SHA1::result@<Q0>(llvm::SHA1 *this@<X0>, uint64_t a2@<X8>)
{
  v8 = *(this + 2);
  v9 = *(this + 3);
  *v10 = *(this + 4);
  *&v10[12] = *(this + 76);
  v6 = *this;
  v7 = *(this + 1);
  llvm::SHA1::pad(this);
  for (i = 0; i != 20; i += 4)
  {
    *(&v11 + i) = bswap32(*(this + i + 64));
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(this + 2) = v8;
  *(this + 3) = v9;
  *(this + 4) = *v10;
  *(this + 76) = *&v10[12];
  result = v6;
  *this = v6;
  *(this + 1) = v7;
  return result;
}

void *llvm::SmallPtrSetImplBase::shrink_and_clear(void **this)
{
  free(*this);
  v2 = *(this + 3) - *(this + 4);
  v3 = 1 << (33 - __clz(v2 - 1));
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v2 <= 0x10)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  *(this + 2) = v4;
  v5 = malloc_type_malloc(8 * v4, 0x3C0F72FBuLL);
  if (!v5)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *this = v5;
  v6 = 8 * *(this + 2);

  return memset(v5, 255, v6);
}

const void **llvm::SmallPtrSetImplBase::insert_imp_big(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 2);
  if (3 * v5 <= 4 * (v4 - *(this + 4)))
  {
    if (v5 >= 0x40)
    {
      v5 *= 2;
    }

    else
    {
      v5 = 128;
    }
  }

  else if (v5 - v4 >= v5 >> 3)
  {
    goto LABEL_3;
  }

  llvm::SmallPtrSetImplBase::Grow(this, v5);
LABEL_3:
  result = llvm::SmallPtrSetImplBase::FindBucketFor(this, a2);
  if (*result != a2)
  {
    if (*result == -2)
    {
      --*(this + 4);
    }

    else
    {
      ++*(this + 3);
    }

    *result = a2;
  }

  return result;
}

void llvm::SmallPtrSetImplBase::Grow(llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(this + 20);
  v6 = 8;
  if (v5)
  {
    v6 = 12;
  }

  v7 = *(this + v6);
  v8 = 8 * a2;
  v9 = malloc_type_malloc(v8, 0x3C0F72FBuLL);
  if (!v9 && (a2 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *this = v9;
  *(this + 2) = a2;
  memset(v9, 255, v8);
  if (v7)
  {
    v10 = 8 * v7;
    v11 = v4;
    do
    {
      if (*v11 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = *v11;
        *llvm::SmallPtrSetImplBase::FindBucketFor(this, *v11) = v12;
      }

      ++v11;
      v10 -= 8;
    }

    while (v10);
  }

  if ((v5 & 1) == 0)
  {
    free(v4);
  }

  *(this + 12) = (*(this + 3) - *(this + 4));
  *(this + 20) = 0;
}

const void **llvm::SmallPtrSetImplBase::FindBucketFor(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 2) - 1;
  v3 = *this;
  v4 = v2 & ((a2 >> 4) ^ (a2 >> 9));
  result = (*this + 8 * v4);
  v6 = *result;
  if (*result == -1)
  {
    v7 = 0;
LABEL_3:
    if (v7)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (v6 != a2)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 + 2 == 0;
      }

      if (v9)
      {
        v7 = result;
      }

      v10 = v4 + v8++;
      v4 = v10 & v2;
      result = (v3 + 8 * v4);
      v6 = *result;
      if (*result == -1)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t llvm::SmallPtrSetImplBase::doFind(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *(this + 2) - 1;
  v3 = *this;
  v4 = v2 & ((a2 >> 4) ^ (a2 >> 9));
  v5 = *(*this + 8 * v4);
  if (v5 == a2)
  {
    return v3 + 8 * v4;
  }

  v7 = 1;
  while (v5 != -1)
  {
    v8 = v4 + v7++;
    v4 = v8 & v2;
    v5 = *(v3 + 8 * v4);
    if (v5 == a2)
    {
      return v3 + 8 * v4;
    }
  }

  return 0;
}

llvm::SmallPtrSetImplBase *llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(llvm::SmallPtrSetImplBase *this, const void **__dst, const llvm::SmallPtrSetImplBase *a3)
{
  v6 = *(a3 + 20);
  *(this + 20) = v6;
  if ((v6 & 1) == 0)
  {
    v7 = *(a3 + 2);
    v8 = malloc_type_malloc(8 * v7, 0x3C0F72FBuLL);
    if (!v8 && (v7 || (v8 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    __dst = v8;
  }

  *this = __dst;
  v9 = *(a3 + 2);
  *(this + 2) = v9;
  v10 = *(a3 + 3);
  if (*(a3 + 20))
  {
    v9 = *(a3 + 3);
  }

  if (v9)
  {
    memmove(__dst, *a3, 8 * v9);
    v10 = *(a3 + 3);
  }

  v11 = *(a3 + 4);
  *(this + 3) = v10;
  *(this + 4) = v11;
  return this;
}

double llvm::SmallPtrSetImplBase::moveHelper(uint64_t a1, void *__dst, int a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 20);
  if (v8 == 1)
  {
    *a1 = __dst;
    v9 = *(a5 + 12);
    if (v9)
    {
      memmove(__dst, *a5, 8 * v9);
      LOBYTE(v8) = *(a5 + 20);
    }
  }

  else
  {
    *a1 = *a5;
    *a5 = a4;
  }

  result = *(a5 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a5 + 16);
  *(a1 + 20) = v8;
  *(a5 + 12) = 0;
  *(a5 + 16) = 0;
  *(a5 + 8) = a3;
  *(a5 + 20) = 1;
  return result;
}

double llvm::SmallPtrSetImplBase::moveFrom(uint64_t a1, void *__dst, int a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    free(*a1);
  }

  return llvm::SmallPtrSetImplBase::moveHelper(a1, __dst, a3, a4, a5);
}

void *llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  New = getNewCapacity<unsigned int>(a3, *(a1 + 12));
  *a5 = New;
  v9 = New * a4;
  v10 = malloc_type_malloc(New * a4, 0x3C0F72FBuLL);
  if (!v10)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = v10;
  if (v10 == a2)
  {
    v12 = *a5 * a4;
    v13 = malloc_type_malloc(v12, 0x3C0F72FBuLL);
    if (v13 || !v12 && (v13 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v14 = v13;
      free(v11);
      return v14;
    }

LABEL_10:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  return v11;
}

unint64_t getNewCapacity<unsigned int>(unint64_t result, unint64_t a2)
{
  if (HIDWORD(result))
  {
    report_size_overflow(result);
  }

  if (a2 == 0xFFFFFFFF)
  {
    report_at_maximum_capacity(0xFFFFFFFFuLL);
  }

  if ((a2 >> 31))
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 2 * a2 + 1;
  }

  if (((2 * a2) | 1) >= result)
  {
    return v2;
  }

  return result;
}

void llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  New = getNewCapacity<unsigned int>(a3, *(a1 + 12));
  v8 = New * a4;
  if (*a1 == a2)
  {
    v12 = malloc_type_malloc(New * a4, 0x3C0F72FBuLL);
    if (v12 || !v8 && (v12 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v11 = v12;
      if (v12 == a2)
      {
        v13 = malloc_type_malloc(New * a4, 0x3C0F72FBuLL);
        if (!v13)
        {
          if (v8)
          {
            goto LABEL_23;
          }

          v13 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v13)
          {
            goto LABEL_23;
          }
        }

        v14 = v13;
        free(v11);
        v11 = v14;
      }

      memcpy(v11, *a1, *(a1 + 8) * a4);
      goto LABEL_22;
    }

LABEL_23:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v9 = malloc_type_realloc(*a1, New * a4, 0xF4063A16uLL);
  if (!v9)
  {
    if (v8)
    {
      goto LABEL_23;
    }

    v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v10 = v9;
  if (v9 != a2)
  {
    v11 = v9;
    goto LABEL_22;
  }

  v15 = *(a1 + 8);
  v16 = malloc_type_malloc(New * a4, 0x3C0F72FBuLL);
  if (!v16)
  {
    if (v8)
    {
      goto LABEL_23;
    }

    v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  v11 = v16;
  if (v15)
  {
    memcpy(v16, v10, v15 * a4);
  }

  free(v10);
LABEL_22:
  *a1 = v11;
  *(a1 + 12) = New;
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v8 = 2 * v4 + 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *a1;
  v10 = v8 * a4;
  if (v9 == a2)
  {
    v14 = malloc_type_malloc(v8 * a4, 0x3C0F72FBuLL);
    if (v14 || !v10 && (v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v13 = v14;
      if (v14 == a2)
      {
        v15 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
        if (!v15)
        {
          if (v10)
          {
            goto LABEL_27;
          }

          v15 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v15)
          {
            goto LABEL_27;
          }
        }

        v16 = v15;
        free(v13);
        v13 = v16;
      }

      memcpy(v13, *a1, *(a1 + 8) * a4);
      goto LABEL_26;
    }

LABEL_27:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v11 = malloc_type_realloc(v9, v8 * a4, 0xF4063A16uLL);
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v11 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  v12 = v11;
  if (v11 != a2)
  {
    v13 = v11;
    goto LABEL_26;
  }

  v17 = *(a1 + 8);
  v18 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
  if (!v18)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v18 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  v13 = v18;
  if (v17)
  {
    memcpy(v18, v12, v17 * a4);
  }

  free(v12);
LABEL_26:
  *a1 = v13;
  *(a1 + 16) = v8;
}

void report_size_overflow(unint64_t a1)
{
  std::to_string(&v4, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>("SmallVector unable to grow. Requested capacity (", &v4, &v5);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v5, ") is larger than maximum value for size type (", &v6);
  std::to_string(&v3, 0xFFFFFFFFuLL);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v6, &v3, &v1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v1, ")", &v7);
  std::string::~string(&v1);
  std::string::~string(&v3);
  std::string::~string(&v6);
  std::string::~string(&v5);
  std::string::~string(&v4);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v7;
  llvm::report_fatal_error(&v1, 1);
}

void report_at_maximum_capacity(unint64_t a1)
{
  std::to_string(&v1, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>("SmallVector capacity unable to grow. Already at maximum size ", &v1, &v3);
  std::string::~string(&v1);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v3;
  llvm::report_fatal_error(&v1, 1);
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::append(a1, a2);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

{
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string::value_type *__s@<X0>, std::string *this@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

void llvm::SourceMgr::~SourceMgr(llvm::SourceMgr *this)
{
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = this;
  std::vector<llvm::SourceMgr::SrcBuffer>::__destroy_vector::operator()[abi:nn200100](&v3);
}

uint64_t llvm::SourceMgr::FindBufferContainingLoc(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = -1431655765 * ((a1[1] - *a1) >> 3);
  if (!v3)
  {
    return 0;
  }

  result = 1;
  while (*(*v2 + 8) > a2 || *(*v2 + 16) < a2)
  {
    result = (result + 1);
    v2 += 24;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumber(uint64_t *this, uint64_t a2)
{
  v2 = *(*this + 16) - *(*this + 8);
  if (v2 <= 0xFF)
  {
    return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned char>(this, a2);
  }

  if (!(v2 >> 16))
  {
    return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned short>(this, a2);
  }

  if (HIDWORD(v2))
  {
    return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned long long>(this, a2);
  }

  return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned int>(this, a2);
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned char>(uint64_t *a1, char a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned char>((a1 + 1));
  v6 = Offset[1];
  v7 = v6 - *Offset;
  if (v6 == *Offset)
  {
    v8 = *Offset;
  }

  else
  {
    v8 = *Offset;
    do
    {
      v9 = &v8[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = v7 >> 1;
      v7 += ~(v7 >> 1);
      if (v11 < (a2 - *(*a1 + 8)))
      {
        v8 = v10;
      }

      else
      {
        v7 = v12;
      }
    }

    while (v7);
  }

  return v8 - *Offset + 1;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned short>(uint64_t *a1, __int16 a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned short>((a1 + 1));
  v6 = Offset[1];
  if (v6 != *Offset)
  {
    v7 = v6 - *Offset;
    v6 = *Offset;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < (a2 - *(*a1 + 8)))
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return ((v6 - *Offset) >> 1) + 1;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned int>(uint64_t *a1, int a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned int>((a1 + 1));
  v6 = Offset[1];
  if (v6 != *Offset)
  {
    v7 = (v6 - *Offset) >> 2;
    v6 = *Offset;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < a2 - *(*a1 + 8))
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return ((v6 - *Offset) >> 2) + 1;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned long long>((a1 + 1));
  v6 = Offset[1];
  if (v6 != *Offset)
  {
    v7 = (v6 - *Offset) >> 3;
    v6 = *Offset;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < a2 - *(*a1 + 8))
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return ((v6 - *Offset) >> 3) + 1;
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(uint64_t *this, unsigned int a2)
{
  v2 = *(*this + 16) - *(*this + 8);
  if (v2 <= 0xFF)
  {
    return llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned char>(this, a2);
  }

  if (!(v2 >> 16))
  {
    return llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned short>(this, a2);
  }

  if (HIDWORD(v2))
  {
    return llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned long long>(this, a2);
  }

  return llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned int>(this, a2);
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned char>(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned char>((a1 + 1));
  v6 = a2 - 1;
  if (!a2)
  {
    v6 = 0;
  }

  result = *(*a1 + 8);
  if (a2 >= 2)
  {
    v9 = Offset;
    v8 = *Offset;
    if (v9[1] - v8 >= v6)
    {
      result += *(v8 + v6 - 1) + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned short>(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned short>((a1 + 1));
  LODWORD(v6) = a2 - 1;
  if (a2)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  result = *(*a1 + 8);
  if (a2 >= 2)
  {
    v9 = Offset;
    v8 = *Offset;
    if (v6 <= (v9[1] - v8) >> 1)
    {
      result += *(v8 + 2 * (v6 - 1)) + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned int>(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned int>((a1 + 1));
  LODWORD(v6) = a2 - 1;
  if (a2)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  result = *(*a1 + 8);
  if (a2 >= 2)
  {
    v9 = Offset;
    v8 = *Offset;
    if (v6 <= (v9[1] - v8) >> 2)
    {
      result += *(v8 + 4 * (v6 - 1)) + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumberSpecialized<unsigned long long>(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned long long>((a1 + 1));
  LODWORD(v6) = a2 - 1;
  if (a2)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  result = *(*a1 + 8);
  if (a2 >= 2)
  {
    v9 = Offset;
    v8 = *Offset;
    if (v6 <= (v9[1] - v8) >> 3)
    {
      result += *(v8 + 8 * (v6 - 1)) + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void llvm::SourceMgr::SrcBuffer::~SrcBuffer(llvm::SourceMgr::SrcBuffer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x25F891040](v2, 0x10C402FEFCB83);
    *(this + 1) = 0;
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

unint64_t llvm::SourceMgr::getLineAndColumn(uint64_t *a1, char *a2, int BufferContainingLoc)
{
  if (!BufferContainingLoc)
  {
    BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(a1, a2);
  }

  v5 = (*a1 + 24 * (BufferContainingLoc - 1));
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = &a2[-*(*v5 + 8)];
  v9[0] = *(*v5 + 8);
  v9[1] = v7;
  return LineNumber | ((v7 - llvm::StringRef::find_last_of(v9, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL)) << 32);
}

llvm::raw_ostream *llvm::SourceMgr::PrintIncludeStack(llvm::raw_ostream *result, char *a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v5 = result;
    BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(result, a2);
    llvm::SourceMgr::PrintIncludeStack(v5, *(*v5 + 24 * (BufferContainingLoc - 1) + 16), a3);
    v7 = *(a3 + 4);
    if (*(a3 + 3) - v7 > 0xDuLL)
    {
      qmemcpy(v7, "Included from ", 14);
      *(a3 + 4) += 14;
    }

    else
    {
      a3 = llvm::raw_ostream::write(a3, "Included from ", 0xEuLL);
    }

    v8 = *(*v5 + 24 * (BufferContainingLoc - 1));
    v9 = (*(*v8 + 16))(v8);
    v11 = llvm::raw_ostream::operator<<(a3, v9, v10);
    v12 = v11;
    v13 = *(v11 + 4);
    if (*(v11 + 3) == v13)
    {
      v12 = llvm::raw_ostream::write(v11, ":", 1uLL);
    }

    else
    {
      *v13 = 58;
      ++*(v11 + 4);
    }

    LineAndColumn = llvm::SourceMgr::getLineAndColumn(v5, a2, BufferContainingLoc);
    result = write_unsigned<unsigned long long>(v12, LineAndColumn, 0, 0, 0);
    v15 = *(v12 + 4);
    if (*(v12 + 3) - v15 > 1uLL)
    {
      *v15 = 2618;
      *(v12 + 4) += 2;
    }

    else
    {

      return llvm::raw_ostream::write(v12, ":\n", 2uLL);
    }
  }

  return result;
}

void llvm::SourceMgr::GetMessage(uint64_t *a1@<X0>, char *a2@<X1>, int a3@<W2>, llvm::formatv_object_base **a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a1;
  v81[4] = *MEMORY[0x277D85DE8];
  v79 = v81;
  v80 = 0x400000000;
  if (a2)
  {
    v69 = a4;
    BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(a1, a2);
    v14 = *(*v10 + 24 * (BufferContainingLoc - 1));
    __src = (*(*v14 + 16))(v14);
    v16 = v15;
    v17 = v14[1];
    v18 = a2;
    while (v18 != v17)
    {
      v20 = *--v18;
      v19 = v20;
      v21 = v20 == 13 || v19 == 10;
      if (v21)
      {
        v17 = v18 + 1;
        break;
      }
    }

    v72 = v10;
    v22 = v14[2];
    v23 = a2;
    if (v22 != a2)
    {
      while (1)
      {
        v24 = *v23;
        if (v24 == 10 || v24 == 13)
        {
          break;
        }

        if (++v23 == v22)
        {
          v23 = v14[2];
          break;
        }
      }
    }

    v26 = v23 - v17;
    if (a6)
    {
      v27 = &a5[2 * a6];
      do
      {
        v29 = *a5;
        v28 = a5[1];
        if (*a5)
        {
          v30 = v29 > v23;
        }

        else
        {
          v30 = 1;
        }

        if (!v30 && v28 >= v17)
        {
          if (v29 >= v17)
          {
            v32 = *a5;
          }

          else
          {
            v32 = v17;
          }

          if (v28 <= v23)
          {
            v33 = a5[1];
          }

          else
          {
            v33 = v23;
          }

          v34 = v80;
          if (v80 >= HIDWORD(v80))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 8);
            v34 = v80;
          }

          *(v79 + v34) = (v32 - v17) | ((v33 - v17) << 32);
          LODWORD(v80) = v80 + 1;
        }

        a5 += 2;
      }

      while (a5 != v27);
    }

    v10 = v72;
    LineAndColumn = llvm::SourceMgr::getLineAndColumn(v72, a2, BufferContainingLoc);
    v36 = LineAndColumn;
    v37 = HIDWORD(LineAndColumn) - 1;
    a4 = v69;
  }

  else
  {
    v26 = 0;
    v17 = 0;
    v36 = 0;
    v37 = -1;
    v16 = 9;
    __src = "<unknown>";
  }

  llvm::Twine::str(a4, __p);
  if (v77 >= 0)
  {
    v38 = __p;
  }

  else
  {
    v38 = __p[0];
  }

  if (v77 >= 0)
  {
    v39 = v77;
  }

  else
  {
    v39 = __p[1];
  }

  v40 = v80;
  *a9 = v10;
  *(a9 + 8) = a2;
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_94;
  }

  v73 = v40;
  v70 = v38;
  if (v16 >= 0x17)
  {
    operator new();
  }

  v41 = (a9 + 16);
  *(a9 + 39) = v16;
  if (v16)
  {
    memmove(v41, __src, v16);
  }

  *(v41 + v16) = 0;
  *(a9 + 40) = v36;
  *(a9 + 44) = v37;
  *(a9 + 48) = a3;
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_94;
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v42 = (a9 + 56);
  *(a9 + 79) = v39;
  if (v39)
  {
    memmove(v42, v70, v39);
  }

  *(v42 + v39) = 0;
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_94:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v26 >= 0x17)
  {
    operator new();
  }

  v43 = (a9 + 80);
  *(a9 + 103) = v26;
  if (v26)
  {
    memmove(v43, v17, v26);
  }

  *(v43 + v26) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 120) = 0;
  if (v73)
  {
    operator new();
  }

  *(a9 + 128) = a9 + 144;
  *(a9 + 136) = 0x400000000;
  v44 = (40 * a8) >> 3;
  v45 = -858993459 * v44;
  if (0xCCCCCCCCCCCCCCCDLL * v44 < 5)
  {
    v56 = 0;
    v57 = 0;
    v46 = (a9 + 144);
    if (!a8)
    {
      goto LABEL_86;
    }

    goto LABEL_80;
  }

  v78 = 0;
  v46 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a9 + 128, (a9 + 144), 0xCCCCCCCCCCCCCCCDLL * v44, 40, &v78);
  v47 = *(a9 + 128);
  v48 = *(a9 + 136);
  if (v48)
  {
    v49 = &v47[40 * v48];
    v50 = v46;
    do
    {
      *v50 = *v47;
      v51 = *(v47 + 1);
      *(v50 + 4) = *(v47 + 4);
      *(v50 + 1) = v51;
      *(v47 + 3) = 0;
      *(v47 + 4) = 0;
      *(v47 + 2) = 0;
      v50 += 40;
      v47 += 40;
    }

    while (v47 != v49);
    v47 = *(a9 + 128);
    v52 = *(a9 + 136);
    if (v52)
    {
      v53 = &v47[40 * v52 - 24];
      v54 = -40 * v52;
      do
      {
        if (*(v53 + 23) < 0)
        {
          operator delete(*v53);
        }

        v53 -= 40;
        v54 += 40;
      }

      while (v54);
      v47 = *(a9 + 128);
    }
  }

  v55 = v78;
  if (v47 != (a9 + 144))
  {
    free(v47);
  }

  *(a9 + 128) = v46;
  *(a9 + 140) = v55;
  v56 = *(a9 + 136);
  v57 = v56;
  if (a8)
  {
LABEL_80:
    v58 = &v46[40 * v57 + 16];
    v59 = (a7 + 16);
    do
    {
      *&v58[-1].__r_.__value_.__r.__words[1] = *(v59 - 1);
      if (*(v59 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v58, *v59, *(v59 + 1));
      }

      else
      {
        v60 = *v59;
        v58->__r_.__value_.__r.__words[2] = *(v59 + 2);
        *&v58->__r_.__value_.__l.__data_ = v60;
      }

      v61 = v59 - 1;
      v58 = (v58 + 40);
      v59 = (v59 + 40);
    }

    while ((v61 + 40) != (a7 + 40 * a8));
    v56 = *(a9 + 136);
    v46 = *(a9 + 128);
  }

LABEL_86:
  v62 = (v56 + v45);
  v21 = v62 == 0;
  *(a9 + 136) = v62;
  v63 = &v46[40 * v62];
  v64 = 126 - 2 * __clz(v62);
  if (v21)
  {
    v65 = 0;
  }

  else
  {
    v65 = v64;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(v46, v63, v65, 1);
  if (v77 < 0)
  {
    operator delete(__p[0]);
  }

  if (v79 != v81)
  {
    free(v79);
  }

  v66 = *MEMORY[0x277D85DE8];
}

void llvm::SourceMgr::PrintMessage(llvm::SourceMgr *this, llvm::raw_ostream *a2, const llvm::SMDiagnostic *a3, int a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);

    v6(a3, v7);
  }

  else
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(this, v10);
      llvm::SourceMgr::PrintIncludeStack(this, *(*this + 24 * (BufferContainingLoc - 1) + 16), a2);
    }

    llvm::SMDiagnostic::print(a3, 0, a2, a4, 1, 1);
  }
}

void llvm::SMDiagnostic::print(llvm::SMDiagnostic *this, const char *__s, llvm::raw_ostream *a3, int a4, int a5, int a6)
{
  v8 = a4;
  if (a4 && llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 24))(a3, 16, 1, 0);
  }

  if (!__s || !*__s)
  {
LABEL_8:
    if (!a6)
    {
      goto LABEL_40;
    }

    goto LABEL_9;
  }

  v12 = strlen(__s);
  llvm::raw_ostream::operator<<(a3, __s, v12);
  v13 = *(a3 + 4);
  if (*(a3 + 3) - v13 <= 1uLL)
  {
    llvm::raw_ostream::write(a3, ": ", 2uLL);
    goto LABEL_8;
  }

  *v13 = 8250;
  *(a3 + 4) += 2;
  if (!a6)
  {
    goto LABEL_40;
  }

LABEL_9:
  v14 = *(this + 39);
  if (v14 < 0)
  {
    v16 = *(this + 3);
    if (!v16)
    {
      goto LABEL_40;
    }

    if (v16 != 1)
    {
      goto LABEL_21;
    }

    v15 = *(this + 2);
  }

  else
  {
    if (!*(this + 39))
    {
      goto LABEL_40;
    }

    v15 = this + 16;
    if (*(this + 39) != 1)
    {
      goto LABEL_21;
    }
  }

  if (*v15 != 45)
  {
LABEL_21:
    if (v14 >= 0)
    {
      v18 = this + 16;
    }

    else
    {
      v18 = *(this + 2);
    }

    if (v14 >= 0)
    {
      v20 = *(this + 39);
    }

    else
    {
      v20 = *(this + 3);
    }

    v19 = a3;
    goto LABEL_28;
  }

  v17 = *(a3 + 4);
  if (*(a3 + 3) - v17 <= 6uLL)
  {
    v18 = "<stdin>";
    v19 = a3;
    v20 = 7;
LABEL_28:
    llvm::raw_ostream::write(v19, v18, v20);
    goto LABEL_29;
  }

  *(v17 + 3) = 1047423332;
  *v17 = 1685353276;
  *(a3 + 4) += 7;
LABEL_29:
  if (*(this + 10) != -1)
  {
    v21 = *(a3 + 4);
    if (v21 >= *(a3 + 3))
    {
      llvm::raw_ostream::write(a3, 58);
    }

    else
    {
      *(a3 + 4) = v21 + 1;
      *v21 = 58;
    }

    llvm::write_integer(a3, *(this + 10), 0, 0);
    if (*(this + 11) != -1)
    {
      v22 = *(a3 + 4);
      if (v22 >= *(a3 + 3))
      {
        llvm::raw_ostream::write(a3, 58);
      }

      else
      {
        *(a3 + 4) = v22 + 1;
        *v22 = 58;
      }

      llvm::write_integer(a3, *(this + 11) + 1, 0, 0);
    }
  }

  v23 = *(a3 + 4);
  if (*(a3 + 3) - v23 > 1uLL)
  {
    *v23 = 8250;
    *(a3 + 4) += 2;
    if (!v8)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  llvm::raw_ostream::write(a3, ": ", 2uLL);
LABEL_40:
  if (!v8)
  {
    goto LABEL_44;
  }

LABEL_41:
  if (llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_44:
  if (a5)
  {
    v24 = *(this + 12);
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        llvm::WithColor::remark(a3, &byte_25D0A27DF, 0, v8 ^ 1);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      if (v24 == 3)
      {
        llvm::WithColor::note(a3, &byte_25D0A27DF, 0, v8 ^ 1);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        llvm::WithColor::warning(a3, &byte_25D0A27DF, 0, v8 ^ 1);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }
    }

    else
    {
      llvm::WithColor::error(a3, &byte_25D0A27DF, 0, v8 ^ 1);
    }
  }

  if (!v8)
  {
    goto LABEL_58;
  }

LABEL_56:
  if (llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 24))(a3, 16, 1, 0);
  }

LABEL_58:
  v25 = *(this + 79);
  if (v25 >= 0)
  {
    v26 = this + 56;
  }

  else
  {
    v26 = *(this + 7);
  }

  if (v25 >= 0)
  {
    v27 = *(this + 79);
  }

  else
  {
    v27 = *(this + 8);
  }

  llvm::raw_ostream::write(a3, v26, v27);
  v28 = *(a3 + 4);
  if (v28 >= *(a3 + 3))
  {
    llvm::raw_ostream::write(a3, 10);
    if (!v8)
    {
      goto LABEL_70;
    }
  }

  else
  {
    *(a3 + 4) = v28 + 1;
    *v28 = 10;
    if (!v8)
    {
      goto LABEL_70;
    }
  }

  if (llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_70:
  if (*(this + 10) == -1 || *(this + 11) == -1)
  {
    return;
  }

  v29 = (this + 80);
  v30 = *(this + 103);
  if (v30 >= 0)
  {
    v31 = this + 80;
  }

  else
  {
    v31 = *(this + 10);
  }

  v32 = *(this + 11);
  if (v30 >= 0)
  {
    v33 = *(this + 103);
  }

  else
  {
    v33 = *(this + 11);
  }

  if (!v33)
  {
    v107 = 0;
    v35 = 1;
    *(&__b.__r_.__value_.__s + 23) = 1;
LABEL_93:
    memset(&__b, 32, v35);
LABEL_94:
    __b.__r_.__value_.__s.__data_[v35] = 0;
    v36 = *(this + 13);
    for (i = *(this + 14); v36 != i; v36 += 2)
    {
      size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      v39 = *v36;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __b.__r_.__value_.__l.__size_;
      }

      if (size >= v36[1])
      {
        size = v36[1];
      }

      if ((size - v39) >= 1)
      {
        if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_b = &__b;
        }

        else
        {
          p_b = __b.__r_.__value_.__r.__words[0];
        }

        memset(p_b + v39, 126, size - v39);
      }
    }

    memset(&v111, 0, sizeof(v111));
    v41 = *(this + 34);
    v42 = *(this + 103);
    if (v42 < 0)
    {
      v42 = *(this + 11);
    }

    v43 = *(this + 11);
    if (v41)
    {
      v106 = v8;
      v44 = *(this + 1) - v43;
      v109 = 0;
      v110 = v44 + v42;
      v45 = 40 * v41;
      v46 = *(this + 16) + 24;
      v108 = v44;
      do
      {
        v47 = *(v46 - 8);
        v48 = *(v46 + 15);
        if (v48 >= 0)
        {
          v47 = v46 - 8;
        }

        v49 = *v46;
        if (v48 >= 0)
        {
          v50 = *(v46 + 15);
        }

        else
        {
          v50 = *v46;
        }

        v113[0] = v47;
        v113[1] = v50;
        if (llvm::StringRef::find_first_of(v113, "\n\r\t", 3, 0) == -1)
        {
          v51 = *(v46 - 24);
          v52 = *(v46 - 16);
          if (v110 >= v51 && v52 >= v44)
          {
            if (v51 >= v44)
            {
              v54 = (v51 - v44);
            }

            else
            {
              v54 = 0;
            }

            if (v109 > v54)
            {
              v55 = (v109 + 1);
            }

            else
            {
              v55 = v54;
            }

            v56 = (v55 + v50);
            v57 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
            if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v57 = v111.__r_.__value_.__l.__size_;
            }

            v109 = (v55 + v50);
            if (v57 < v56)
            {
              std::string::resize(&v111, v56, 32);
              v48 = *(v46 + 15);
              v49 = *v46;
            }

            if ((v48 & 0x80u) == 0)
            {
              v58 = v48;
            }

            else
            {
              v58 = v49;
            }

            if (v58)
            {
              v59 = &v111;
              if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v59 = v111.__r_.__value_.__r.__words[0];
              }

              if ((v48 & 0x80u) == 0)
              {
                v60 = (v46 - 8);
              }

              else
              {
                v60 = *(v46 - 8);
              }

              memmove(v59 + v55, v60, v58);
            }

            if (v110 <= v52)
            {
              v61 = v110;
            }

            else
            {
              v61 = v52;
            }

            v44 = v108;
            v62 = (v61 - v108) - v54;
            if (v62 >= 1)
            {
              v63 = &__b;
              if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v63 = __b.__r_.__value_.__r.__words[0];
              }

              memset(v63 + v54, 126, v62);
            }
          }
        }

        v46 += 40;
        v45 -= 40;
      }

      while (v45);
      LODWORD(v43) = *(this + 11);
      v8 = v106;
      v29 = (this + 80);
    }

    if (v107 >= v43)
    {
      v66 = &__b;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v66 = __b.__r_.__value_.__r.__words[0];
      }

      v65 = v66 + v43;
    }

    else
    {
      v64 = &__b;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v64 = __b.__r_.__value_.__r.__words[0];
      }

      v65 = v64 + v107;
    }

    *v65 = 94;
    v67 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v68 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v67 = __b.__r_.__value_.__l.__size_;
      v68 = __b.__r_.__value_.__r.__words[0];
    }

    v69 = &v68[-1].__r_.__value_.__r.__words[2] + 7;
    while (v67)
    {
      v70 = v69[v67--];
      if (v70 != 32)
      {
        v71 = v67 + 1;
        goto LABEL_163;
      }
    }

    v71 = 0;
LABEL_163:
    std::string::erase(&__b, v71, 0xFFFFFFFFFFFFFFFFLL);
    v72 = *(this + 103);
    if (v72 >= 0)
    {
      v73 = v29;
    }

    else
    {
      v73 = *(this + 10);
    }

    if (v72 >= 0)
    {
      v74 = *(this + 103);
    }

    else
    {
      v74 = *(this + 11);
    }

    printSourceLine(a3, v73, v74);
    if (v8 && llvm::WithColor::AutoDetectFunction(a3))
    {
      (*(*a3 + 24))(a3, 2, 1, 0);
    }

    v75 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v75 = __b.__r_.__value_.__r.__words[1];
    }

    v76 = v75;
    if (v75)
    {
      v77 = 0;
      v78 = 0;
      do
      {
        v79 = *(this + 103);
        if (v79 < 0)
        {
          v80 = *(this + 11);
        }

        else
        {
          v80 = *(this + 103);
        }

        if (v80 <= v77)
        {
          goto LABEL_191;
        }

        v81 = v29;
        if ((v79 & 0x80000000) != 0)
        {
          v81 = *v29;
        }

        if (*(v81 + v77) == 9)
        {
          do
          {
            if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = &__b;
            }

            else
            {
              v82 = __b.__r_.__value_.__r.__words[0];
            }

            v83 = v82->__r_.__value_.__s.__data_[v77];
            v84 = *(a3 + 4);
            if (v84 >= *(a3 + 3))
            {
              llvm::raw_ostream::write(a3, v83);
            }

            else
            {
              *(a3 + 4) = v84 + 1;
              *v84 = v83;
            }

            ++v78;
          }

          while ((v78 & 7) != 0);
        }

        else
        {
LABEL_191:
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = &__b;
          }

          else
          {
            v85 = __b.__r_.__value_.__r.__words[0];
          }

          v86 = v85->__r_.__value_.__s.__data_[v77];
          v87 = *(a3 + 4);
          if (v87 >= *(a3 + 3))
          {
            llvm::raw_ostream::write(a3, v86);
          }

          else
          {
            *(a3 + 4) = v87 + 1;
            *v87 = v86;
          }

          ++v78;
        }

        ++v77;
      }

      while (v77 != v76);
    }

    v88 = *(a3 + 4);
    if (v88 >= *(a3 + 3))
    {
      llvm::raw_ostream::write(a3, 10);
      if (!v8)
      {
LABEL_205:
        v89 = SHIBYTE(v111.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v89 = v111.__r_.__value_.__l.__size_;
          if (!v111.__r_.__value_.__l.__size_)
          {
LABEL_243:
            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }

            goto LABEL_245;
          }
        }

        else if (!*(&v111.__r_.__value_.__s + 23))
        {
LABEL_245:
          if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__b.__r_.__value_.__l.__data_);
          }

          return;
        }

        v90 = 0;
        v91 = 0;
        while (1)
        {
          v92 = *(this + 103);
          if (v92 < 0)
          {
            v93 = *(this + 11);
          }

          else
          {
            v93 = *(this + 103);
          }

          if (v91 >= v93)
          {
            v96 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
            v97 = v111.__r_.__value_.__r.__words[0];
          }

          else
          {
            v94 = v29;
            if ((v92 & 0x80000000) != 0)
            {
              v94 = *v29;
            }

            v95 = *(v94 + v91);
            v96 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
            v97 = v111.__r_.__value_.__r.__words[0];
            if (v95 == 9)
            {
              do
              {
                if (v96 >= 0)
                {
                  v98 = &v111;
                }

                else
                {
                  v98 = v97;
                }

                v99 = v98->__r_.__value_.__s.__data_[v91];
                v100 = *(a3 + 4);
                if (v100 >= *(a3 + 3))
                {
                  llvm::raw_ostream::write(a3, v99);
                }

                else
                {
                  *(a3 + 4) = v100 + 1;
                  *v100 = v99;
                }

                v96 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
                v97 = v111.__r_.__value_.__r.__words[0];
                if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v101 = &v111;
                }

                else
                {
                  v101 = v111.__r_.__value_.__r.__words[0];
                }

                if (v101->__r_.__value_.__s.__data_[v91] != 32)
                {
                  ++v91;
                }

                ++v90;
              }

              while ((v90 & 7) != 0 && v91 != v89);
              goto LABEL_239;
            }
          }

          if (v96 >= 0)
          {
            v102 = &v111;
          }

          else
          {
            v102 = v97;
          }

          v103 = v102->__r_.__value_.__s.__data_[v91];
          v104 = *(a3 + 4);
          if (v104 >= *(a3 + 3))
          {
            llvm::raw_ostream::write(a3, v103);
          }

          else
          {
            *(a3 + 4) = v104 + 1;
            *v104 = v103;
          }

          ++v90;
LABEL_239:
          if (++v91 >= v89)
          {
            v105 = *(a3 + 4);
            if (v105 >= *(a3 + 3))
            {
              llvm::raw_ostream::write(a3, 10);
            }

            else
            {
              *(a3 + 4) = v105 + 1;
              *v105 = 10;
            }

            goto LABEL_243;
          }
        }
      }
    }

    else
    {
      *(a3 + 4) = v88 + 1;
      *v88 = 10;
      if (!v8)
      {
        goto LABEL_205;
      }
    }

    if (llvm::WithColor::AutoDetectFunction(a3))
    {
      (*(*a3 + 32))(a3);
    }

    goto LABEL_205;
  }

  v34 = 0;
  while ((v31[v34] & 0x80000000) == 0)
  {
    if (v33 == ++v34)
    {
      v35 = v33 + 1;
      if (v33 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v107 = v33;
      if (v35 >= 0x17)
      {
        operator new();
      }

      *(&__b.__r_.__value_.__s + 23) = v33 + 1;
      if (v33 == -1)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }
  }

  printSourceLine(a3, v31, v33);
}

void llvm::SourceMgr::PrintMessage(uint64_t *a1, llvm::raw_ostream *a2, char *a3, int a4, llvm::formatv_object_base **a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v23[22] = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::GetMessage(a1, a3, a4, a5, a6, a7, a9, a10, v14);
  llvm::SourceMgr::PrintMessage(a1, a2, v14, a11);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v23);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  v13 = *MEMORY[0x277D85DE8];
}

llvm::raw_ostream *printSourceLine(llvm::raw_ostream *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v6;
      if (a3 <= v6)
      {
        break;
      }

      v9 = memchr((a2 + v6), 9, a3 - v6);
      v10 = &v9[-a2];
      if (!v9 || v10 + 1 == 0)
      {
        break;
      }

      if (v10 <= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = &v9[-a2];
      }

      if (v12 >= a3)
      {
        v12 = a3;
      }

      result = llvm::raw_ostream::operator<<(v4, (a2 + v8), &v12[-v8]);
      v7 = v7 - v8 + v10;
      do
      {
        v13 = *(v4 + 4);
        if (v13 >= *(v4 + 3))
        {
          result = llvm::raw_ostream::write(v4, 32);
        }

        else
        {
          *(v4 + 4) = v13 + 1;
          *v13 = 32;
        }

        ++v7;
      }

      while ((v7 & 7) != 0);
      v6 = v10 + 1;
      if (v10 + 1 == a3)
      {
        goto LABEL_24;
      }
    }

    if (a3 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = a3;
    }

    result = llvm::raw_ostream::operator<<(v4, (a2 + v14), a3 - v14);
  }

LABEL_24:
  v15 = *(v4 + 4);
  if (v15 >= *(v4 + 3))
  {

    return llvm::raw_ostream::write(v4, 10);
  }

  else
  {
    *(v4 + 4) = v15 + 1;
    *v15 = 10;
  }

  return result;
}

uint64_t std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<llvm::SourceMgr::SrcBuffer>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>>(a1, v6);
  }

  v7 = 24 * v2;
  v8 = *a2;
  *a2 = 0;
  *v7 = v8;
  *(v7 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  v9 = 24 * v2 + 24;
  v10 = *(a1 + 8);
  v11 = 24 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>,llvm::SourceMgr::SrcBuffer*>(a1, *a1, v10, v7 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  std::__split_buffer<llvm::SourceMgr::SrcBuffer>::~__split_buffer(v15);
  return v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>,llvm::SourceMgr::SrcBuffer*>(int a1, llvm::SourceMgr::SrcBuffer *this, llvm::SourceMgr::SrcBuffer *a3, uint64_t a4)
{
  if (this != a3)
  {
    v5 = this;
    v6 = this;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 16) = *(v6 + 2);
      *(v6 + 1) = 0;
      v6 = (v6 + 24);
      a4 += 24;
    }

    while (v6 != a3);
    do
    {
      llvm::SourceMgr::SrcBuffer::~SrcBuffer(v5);
      v5 = (v8 + 24);
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<llvm::SourceMgr::SrcBuffer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    llvm::SourceMgr::SrcBuffer::~SrcBuffer((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<llvm::SourceMgr::SrcBuffer>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        llvm::SourceMgr::SrcBuffer::~SrcBuffer((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t GetOrCreateOffsetCache<unsigned char>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

uint64_t GetOrCreateOffsetCache<unsigned short>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

uint64_t GetOrCreateOffsetCache<unsigned int>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

uint64_t GetOrCreateOffsetCache<unsigned long long>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v124 = *MEMORY[0x277D85DE8];
LABEL_2:
  v7 = (a2 - 40);
  v115 = (a2 - 80);
  v117 = a2;
  v114 = (a2 - 120);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = v117;
    v10 = v117 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v117 - v8) >> 3);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        goto LABEL_133;
      }

      if (v11 == 2)
      {
        if (llvm::SMFixIt::operator<(v7, a1))
        {
          v119 = *a1;
          v53 = *(a1 + 16);
          *&v123 = *(a1 + 24);
          *(&v123 + 7) = *(a1 + 31);
          v54 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          *a1 = *v7;
          v55 = *(v117 - 24);
          *(a1 + 32) = *(v117 - 8);
          *(a1 + 16) = v55;
          *v7 = v119;
          *(v117 - 24) = v53;
          v56 = v123;
          *(v117 - 9) = *(&v123 + 7);
          *(v117 - 16) = v56;
          *(v117 - 1) = v54;
        }

LABEL_133:
        v113 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v58 = *MEMORY[0x277D85DE8];

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, v7);
      return;
    }

    if (v11 == 5)
    {
      v51 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a1 + 120, v7);
      return;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a4)
      {
        if (a1 != v117)
        {
          v59 = (a1 + 40);
          if (a1 + 40 != v117)
          {
            v60 = 0;
            v61 = a1;
            do
            {
              v62 = v59;
              if (llvm::SMFixIt::operator<(v59, v61))
              {
                v119 = *v62;
                v121 = *(v61 + 72);
                v120 = *(v61 + 56);
                *(v61 + 64) = 0;
                *(v61 + 72) = 0;
                *(v61 + 56) = 0;
                v63 = *(v62 + 39) < 0;
                v64 = v60;
                while (1)
                {
                  v65 = v64;
                  v66 = a1 + v64;
                  *(v66 + 40) = *v66;
                  if (v63)
                  {
                    operator delete(*(v66 + 56));
                  }

                  *(v66 + 56) = *(v66 + 16);
                  *(v66 + 72) = *(v66 + 32);
                  *(v66 + 39) = 0;
                  *(v66 + 16) = 0;
                  if (!v65)
                  {
                    break;
                  }

                  v64 = v65 - 40;
                  v67 = llvm::SMFixIt::operator<(&v119, (v65 - 40 + a1));
                  v63 = 0;
                  if (!v67)
                  {
                    v68 = (a1 + v65);
                    goto LABEL_88;
                  }
                }

                v68 = a1;
LABEL_88:
                *v68 = v119;
                v69 = a1 + v65;
                v70 = v120;
                *(v69 + 32) = v121;
                *(v69 + 16) = v70;
              }

              v59 = v62 + 5;
              v60 += 40;
              v61 = v62;
            }

            while (v62 + 5 != v117);
          }
        }
      }

      else if (a1 != v117)
      {
        v106 = (a1 + 40);
        if (a1 + 40 != v117)
        {
          v107 = a1 - 40;
          do
          {
            v108 = v106;
            if (llvm::SMFixIt::operator<(v106, a1))
            {
              v119 = *v108;
              v121 = *(a1 + 72);
              v120 = *(a1 + 56);
              *(a1 + 64) = 0;
              *(a1 + 72) = 0;
              *(a1 + 56) = 0;
              v109 = *(v108 + 39) < 0;
              v110 = v107;
              do
              {
                *(v110 + 80) = *(v110 + 40);
                if (v109)
                {
                  operator delete(*(v110 + 96));
                }

                *(v110 + 96) = *(v110 + 56);
                *(v110 + 112) = *(v110 + 72);
                *(v110 + 79) = 0;
                *(v110 + 56) = 0;
                v111 = llvm::SMFixIt::operator<(&v119, v110);
                v109 = 0;
                v110 -= 40;
              }

              while (v111);
              *(v110 + 80) = v119;
              v112 = v120;
              *(v110 + 112) = v121;
              *(v110 + 96) = v112;
            }

            v106 = v108 + 5;
            v107 += 40;
            a1 = v108;
          }

          while (v108 + 5 != v117);
        }
      }

      goto LABEL_133;
    }

    if (!a3)
    {
      if (a1 != v117)
      {
        v71 = v12 >> 1;
        v72 = v12 >> 1;
        do
        {
          v73 = v72;
          if (v71 >= v72)
          {
            v74 = (2 * v72) | 1;
            v75 = a1 + 40 * v74;
            if (2 * v72 + 2 < v11 && llvm::SMFixIt::operator<((a1 + 40 * v74), (v75 + 40)))
            {
              v75 += 40;
              v74 = 2 * v73 + 2;
            }

            v76 = a1 + 40 * v73;
            if (!llvm::SMFixIt::operator<(v75, v76))
            {
              v119 = *v76;
              v77 = *(v76 + 16);
              v121 = *(v76 + 32);
              v120 = v77;
              *(v76 + 24) = 0;
              *(v76 + 32) = 0;
              *(v76 + 16) = 0;
              do
              {
                v78 = v75;
                *v76 = *v75;
                v79 = *(v75 + 16);
                *(v76 + 32) = *(v75 + 32);
                *(v76 + 16) = v79;
                *(v75 + 39) = 0;
                *(v75 + 16) = 0;
                if (v71 < v74)
                {
                  break;
                }

                v80 = (2 * v74) | 1;
                v75 = a1 + 40 * v80;
                v81 = 2 * v74 + 2;
                if (v81 < v11 && llvm::SMFixIt::operator<((a1 + 40 * v80), (v75 + 40)))
                {
                  v75 += 40;
                  v80 = v81;
                }

                v76 = v78;
                v74 = v80;
              }

              while (!llvm::SMFixIt::operator<(v75, &v119));
              *v78 = v119;
              v82 = v120;
              *(v78 + 32) = v121;
              *(v78 + 16) = v82;
            }
          }

          v72 = v73 - 1;
        }

        while (v73);
        v83 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
        v84 = v117;
        do
        {
          v85 = 0;
          v86 = v84;
          v123 = *a1;
          v116 = *(a1 + 16);
          v122[0] = *(a1 + 24);
          *(v122 + 7) = *(a1 + 31);
          v118 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          v87 = a1;
          *(a1 + 16) = 0;
          do
          {
            v88 = v87 + 40 * v85;
            v89 = v88 + 40;
            v90 = (2 * v85) | 1;
            v91 = 2 * v85 + 2;
            if (v91 < v83)
            {
              v92 = v88 + 80;
              if (llvm::SMFixIt::operator<((v88 + 40), (v88 + 80)))
              {
                v89 = v92;
                v90 = v91;
              }
            }

            *v87 = *v89;
            v93 = *(v89 + 16);
            *(v87 + 32) = *(v89 + 32);
            *(v87 + 16) = v93;
            *(v89 + 39) = 0;
            *(v89 + 16) = 0;
            v87 = v89;
            v85 = v90;
          }

          while (v90 <= (v83 - 2) / 2);
          v84 = (v84 - 40);
          if (v89 == (v86 - 40))
          {
            *v89 = v123;
            v104 = v122[0];
            *(v89 + 16) = v116;
            *(v89 + 24) = v104;
            *(v89 + 31) = *(v122 + 7);
            *(v89 + 39) = v118;
          }

          else
          {
            *v89 = *v84;
            v94 = *(v86 - 24);
            *(v89 + 32) = *(v86 - 1);
            *(v89 + 16) = v94;
            *v84 = v123;
            *(v86 - 3) = v116;
            v95 = v122[0];
            *(v86 - 9) = *(v122 + 7);
            *(v86 - 2) = v95;
            *(v86 - 1) = v118;
            v96 = v89 - a1 + 40;
            if (v96 >= 41)
            {
              v97 = (-2 - 0x3333333333333333 * (v96 >> 3)) >> 1;
              v98 = a1 + 40 * v97;
              if (llvm::SMFixIt::operator<(v98, v89))
              {
                v99 = *(v89 + 16);
                v119 = *v89;
                v100 = *(v89 + 32);
                v120 = v99;
                v121 = v100;
                *(v89 + 24) = 0;
                *(v89 + 32) = 0;
                *(v89 + 16) = 0;
                do
                {
                  v101 = v98;
                  *v89 = *v98;
                  v102 = *(v98 + 16);
                  *(v89 + 32) = *(v98 + 32);
                  *(v89 + 16) = v102;
                  *(v98 + 39) = 0;
                  *(v98 + 16) = 0;
                  if (!v97)
                  {
                    break;
                  }

                  v97 = (v97 - 1) >> 1;
                  v98 = a1 + 40 * v97;
                  v89 = v101;
                }

                while (llvm::SMFixIt::operator<(v98, &v119));
                *v101 = v119;
                v103 = v120;
                *(v101 + 32) = v121;
                *(v101 + 16) = v103;
              }
            }
          }
        }

        while (v83-- > 2);
      }

      goto LABEL_133;
    }

    v13 = v11 >> 1;
    v14 = a1 + 40 * (v11 >> 1);
    if (v10 < 0x1401)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v14, a1, v7);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, v14, v7);
      v15 = 5 * v13;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 40), (a1 + 8 * v15 - 40), v115);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 80), (a1 + 40 + 8 * v15), v114);
      v9 = v117;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 8 * v15 - 40), v14, (a1 + 40 + 8 * v15));
      v119 = *a1;
      *(&v123 + 7) = *(a1 + 31);
      v16 = *(a1 + 16);
      *&v123 = *(a1 + 24);
      v17 = *(a1 + 39);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v18 = *(v14 + 32);
      v19 = *(v14 + 16);
      *a1 = *v14;
      *(a1 + 16) = v19;
      *(a1 + 32) = v18;
      *v14 = v119;
      *(v14 + 16) = v16;
      v20 = v123;
      *(v14 + 31) = *(&v123 + 7);
      *(v14 + 24) = v20;
      *(v14 + 39) = v17;
    }

    --a3;
    if ((a4 & 1) != 0 || llvm::SMFixIt::operator<((a1 - 40), a1))
    {
      v21 = 0;
      v22 = *(a1 + 16);
      v119 = *a1;
      v23 = *(a1 + 32);
      v120 = v22;
      v121 = v23;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      do
      {
        v21 += 40;
      }

      while (llvm::SMFixIt::operator<((v21 + a1), &v119));
      v24 = a1 + v21;
      v25 = v9;
      if (v21 == 40)
      {
        v25 = v9;
        do
        {
          if (v24 >= v25)
          {
            break;
          }

          v25 -= 5;
        }

        while (!llvm::SMFixIt::operator<(v25, &v119));
      }

      else
      {
        do
        {
          v25 -= 5;
        }

        while (!llvm::SMFixIt::operator<(v25, &v119));
      }

      v8 = a1 + v21;
      if (v24 < v25)
      {
        v26 = v25;
        do
        {
          v123 = *v8;
          v27 = *(v8 + 16);
          v122[0] = *(v8 + 24);
          *(v122 + 7) = *(v8 + 31);
          v28 = *(v8 + 39);
          *(v8 + 24) = 0;
          *(v8 + 32) = 0;
          *(v8 + 16) = 0;
          *v8 = *v26;
          v29 = *(v26 + 1);
          *(v8 + 32) = v26[4];
          *(v8 + 16) = v29;
          *v26 = v123;
          v30 = v122[0];
          v26[2] = v27;
          v26[3] = v30;
          *(v26 + 31) = *(v122 + 7);
          *(v26 + 39) = v28;
          do
          {
            v8 += 40;
          }

          while (llvm::SMFixIt::operator<(v8, &v119));
          do
          {
            v26 -= 5;
          }

          while (!llvm::SMFixIt::operator<(v26, &v119));
        }

        while (v8 < v26);
      }

      v31 = (v8 - 40);
      if (v8 - 40 == a1)
      {
        v34 = *(v8 - 1);
        *a1 = v119;
        v32 = v8 - 24;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      else
      {
        *a1 = *v31;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v32 = v8 - 24;
        v33 = *(v8 - 24);
        *(a1 + 32) = *(v8 - 8);
        *(a1 + 16) = v33;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
        *v31 = v119;
      }

      v35 = v120;
      *(v32 + 16) = v121;
      *v32 = v35;
      if (v24 < v25)
      {
        goto LABEL_40;
      }

      v36 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, v8 - 40);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v8, v117))
      {
        a2 = v8 - 40;
        if (!v36)
        {
          goto LABEL_2;
        }

        goto LABEL_133;
      }

      if (!v36)
      {
LABEL_40:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(a1, v8 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v37 = *(a1 + 16);
      v119 = *a1;
      v38 = *(a1 + 32);
      v120 = v37;
      v121 = v38;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      if (llvm::SMFixIt::operator<(&v119, v7))
      {
        v8 = a1;
        do
        {
          v8 += 40;
        }

        while (!llvm::SMFixIt::operator<(&v119, v8));
      }

      else
      {
        v39 = (a1 + 40);
        do
        {
          v8 = v39;
          if (v39 >= v9)
          {
            break;
          }

          v40 = llvm::SMFixIt::operator<(&v119, v39);
          v39 = (v8 + 40);
        }

        while (!v40);
      }

      v41 = v9;
      if (v8 < v9)
      {
        v41 = v9;
        do
        {
          v41 -= 40;
        }

        while (llvm::SMFixIt::operator<(&v119, v41));
      }

      while (v8 < v41)
      {
        v123 = *v8;
        v42 = *(v8 + 16);
        v122[0] = *(v8 + 24);
        *(v122 + 7) = *(v8 + 31);
        v43 = *(v8 + 39);
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0;
        *v8 = *v41;
        v44 = *(v41 + 16);
        *(v8 + 32) = *(v41 + 32);
        *(v8 + 16) = v44;
        *v41 = v123;
        v45 = v122[0];
        *(v41 + 16) = v42;
        *(v41 + 24) = v45;
        *(v41 + 31) = *(v122 + 7);
        *(v41 + 39) = v43;
        do
        {
          v8 += 40;
        }

        while (!llvm::SMFixIt::operator<(&v119, v8));
        do
        {
          v41 -= 40;
        }

        while (llvm::SMFixIt::operator<(&v119, v41));
      }

      v46 = (v8 - 40);
      if (v8 - 40 == a1)
      {
        v49 = *(v8 - 1);
        *a1 = v119;
        v47 = v8 - 24;
        if (v49 < 0)
        {
          operator delete(*v47);
        }
      }

      else
      {
        *a1 = *v46;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v47 = v8 - 24;
        v48 = *(v8 - 24);
        *(a1 + 32) = *(v8 - 8);
        *(a1 + 16) = v48;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
        *v46 = v119;
      }

      a4 = 0;
      v50 = v120;
      *(v47 + 16) = v121;
      *v47 = v50;
    }
  }

  v57 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), v7);
}

BOOL std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = llvm::SMFixIt::operator<(a2, a1);
  result = llvm::SMFixIt::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      v22 = *a1;
      v8 = *(a1 + 2);
      *&v27 = *(a1 + 3);
      *(&v27 + 7) = *(a1 + 31);
      v9 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a3;
      v10 = *(a3 + 4);
      a1[1] = a3[1];
      *(a1 + 4) = v10;
      *a3 = v22;
      *(a3 + 2) = v8;
      *(a3 + 3) = v27;
      *(a3 + 31) = *(&v27 + 7);
      *(a3 + 39) = v9;
    }

    else
    {
      v25 = *a1;
      v17 = *(a1 + 2);
      *&v30 = *(a1 + 3);
      *(&v30 + 7) = *(a1 + 31);
      v18 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a2;
      v19 = *(a2 + 4);
      a1[1] = a2[1];
      *(a1 + 4) = v19;
      *a2 = v25;
      *(a2 + 2) = v17;
      *(a2 + 3) = v30;
      *(a2 + 31) = *(&v30 + 7);
      *(a2 + 39) = v18;
      result = llvm::SMFixIt::operator<(a3, a2);
      if (result)
      {
        v26 = *a2;
        *&v31 = *(a2 + 3);
        *(&v31 + 7) = *(a2 + 31);
        *(a2 + 3) = 0;
        *(a2 + 4) = 0;
        *(a2 + 2) = 0;
        *a2 = *a3;
        v20 = *(a3 + 4);
        a2[1] = a3[1];
        *(a2 + 4) = v20;
        *a3 = v26;
        *(a3 + 2) = v17;
        *(a3 + 3) = v31;
        *(a3 + 31) = *(&v31 + 7);
        *(a3 + 39) = v18;
      }
    }
  }

  else if (result)
  {
    v23 = *a2;
    v11 = *(a2 + 2);
    *&v28 = *(a2 + 3);
    *(&v28 + 7) = *(a2 + 31);
    v12 = *(a2 + 39);
    *(a2 + 2) = 0;
    *(a2 + 4) = 0;
    *(a2 + 3) = 0;
    *a2 = *a3;
    v13 = *(a3 + 4);
    a2[1] = a3[1];
    *(a2 + 4) = v13;
    *a3 = v23;
    *(a3 + 2) = v11;
    *(a3 + 3) = v28;
    *(a3 + 31) = *(&v28 + 7);
    *(a3 + 39) = v12;
    result = llvm::SMFixIt::operator<(a2, a1);
    if (result)
    {
      v24 = *a1;
      v14 = *(a1 + 2);
      *&v29 = *(a1 + 3);
      *(&v29 + 7) = *(a1 + 31);
      v15 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a2;
      v16 = *(a2 + 4);
      a1[1] = a2[1];
      *(a1 + 4) = v16;
      *a2 = v24;
      *(a2 + 2) = v14;
      *(a2 + 3) = v29;
      *(a2 + 31) = *(&v29 + 7);
      *(a2 + 39) = v15;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3);
  result = llvm::SMFixIt::operator<(a4, a3);
  if (result)
  {
    v19 = *a3;
    v9 = *(a3 + 16);
    *&v22 = *(a3 + 24);
    *(&v22 + 7) = *(a3 + 31);
    v10 = *(a3 + 39);
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 24) = 0;
    *a3 = *a4;
    v11 = *(a4 + 32);
    *(a3 + 16) = *(a4 + 16);
    *(a3 + 32) = v11;
    *a4 = v19;
    *(a4 + 16) = v9;
    *(a4 + 24) = v22;
    *(a4 + 31) = *(&v22 + 7);
    *(a4 + 39) = v10;
    result = llvm::SMFixIt::operator<(a3, a2);
    if (result)
    {
      v20 = *a2;
      v12 = *(a2 + 16);
      *&v23 = *(a2 + 24);
      *(&v23 + 7) = *(a2 + 31);
      v13 = *(a2 + 39);
      *(a2 + 16) = 0;
      *(a2 + 32) = 0;
      *(a2 + 24) = 0;
      *a2 = *a3;
      v14 = *(a3 + 32);
      *(a2 + 16) = *(a3 + 16);
      *(a2 + 32) = v14;
      *a3 = v20;
      *(a3 + 16) = v12;
      *(a3 + 24) = v23;
      *(a3 + 31) = *(&v23 + 7);
      *(a3 + 39) = v13;
      result = llvm::SMFixIt::operator<(a2, a1);
      if (result)
      {
        v21 = *a1;
        v15 = *(a1 + 16);
        *&v24 = *(a1 + 24);
        *(&v24 + 7) = *(a1 + 31);
        v16 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *a1 = *a2;
        v17 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v17;
        *a2 = v21;
        *(a2 + 16) = v15;
        *(a2 + 24) = v24;
        *(a2 + 31) = *(&v24 + 7);
        *(a2 + 39) = v16;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3, a4);
  result = llvm::SMFixIt::operator<(a5, a4);
  if (result)
  {
    v24 = *a4;
    v11 = *(a4 + 16);
    *&v28 = *(a4 + 24);
    *(&v28 + 7) = *(a4 + 31);
    v12 = *(a4 + 39);
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 24) = 0;
    *a4 = *a5;
    v13 = *(a5 + 32);
    *(a4 + 16) = *(a5 + 16);
    *(a4 + 32) = v13;
    *a5 = v24;
    *(a5 + 16) = v11;
    *(a5 + 24) = v28;
    *(a5 + 31) = *(&v28 + 7);
    *(a5 + 39) = v12;
    result = llvm::SMFixIt::operator<(a4, a3);
    if (result)
    {
      v25 = *a3;
      v14 = *(a3 + 16);
      *&v29 = *(a3 + 24);
      *(&v29 + 7) = *(a3 + 31);
      v15 = *(a3 + 39);
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 24) = 0;
      *a3 = *a4;
      v16 = *(a4 + 32);
      *(a3 + 16) = *(a4 + 16);
      *(a3 + 32) = v16;
      *a4 = v25;
      *(a4 + 16) = v14;
      *(a4 + 24) = v29;
      *(a4 + 31) = *(&v29 + 7);
      *(a4 + 39) = v15;
      result = llvm::SMFixIt::operator<(a3, a2);
      if (result)
      {
        v26 = *a2;
        v17 = *(a2 + 16);
        *&v30 = *(a2 + 24);
        *(&v30 + 7) = *(a2 + 31);
        v18 = *(a2 + 39);
        *(a2 + 16) = 0;
        *(a2 + 32) = 0;
        *(a2 + 24) = 0;
        *a2 = *a3;
        v19 = *(a3 + 32);
        *(a2 + 16) = *(a3 + 16);
        *(a2 + 32) = v19;
        *a3 = v26;
        *(a3 + 16) = v17;
        *(a3 + 24) = v30;
        *(a3 + 31) = *(&v30 + 7);
        *(a3 + 39) = v18;
        result = llvm::SMFixIt::operator<(a2, a1);
        if (result)
        {
          v27 = *a1;
          v20 = *(a1 + 16);
          *&v31 = *(a1 + 24);
          *(&v31 + 7) = *(a1 + 31);
          v21 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          *a1 = *a2;
          v22 = *(a2 + 32);
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 32) = v22;
          *a2 = v27;
          *(a2 + 16) = v20;
          *(a2 + 24) = v31;
          *(a2 + 31) = *(&v31 + 7);
          *(a2 + 39) = v21;
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a2 - 40));
        goto LABEL_23;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a2 - 40);
        goto LABEL_23;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        goto LABEL_23;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_23;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 40);
      if (llvm::SMFixIt::operator<((a2 - 40), a1))
      {
        v21 = *a1;
        v6 = *(a1 + 16);
        v24[0] = *(a1 + 24);
        *(v24 + 7) = *(a1 + 31);
        v7 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *a1 = *v5;
        v8 = *(a2 - 8);
        *(a1 + 16) = *(a2 - 24);
        *(a1 + 32) = v8;
        *v5 = v21;
        v9 = v24[0];
        *(a2 - 24) = v6;
        *(a2 - 16) = v9;
        *(a2 - 9) = *(v24 + 7);
        result = 1;
        *(a2 - 1) = v7;
        goto LABEL_24;
      }

LABEL_23:
      result = 1;
      goto LABEL_24;
    }
  }

  v11 = (a1 + 80);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a1 + 80));
  v12 = a1 + 120;
  if (a1 + 120 == a2)
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (llvm::SMFixIt::operator<(v12, v11))
    {
      v15 = *(v12 + 16);
      v21 = *v12;
      v22 = v15;
      v23 = *(v12 + 32);
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      v16 = v13;
      while (1)
      {
        v17 = a1 + v16;
        v18 = *(a1 + v16 + 96);
        *(v17 + 120) = *(a1 + v16 + 80);
        *(v17 + 136) = v18;
        *(v17 + 152) = *(a1 + v16 + 112);
        *(v17 + 119) = 0;
        *(v17 + 96) = 0;
        if (v16 == -80)
        {
          break;
        }

        v16 -= 40;
        if (!llvm::SMFixIt::operator<(&v21, (v17 + 40)))
        {
          v19 = (a1 + v16 + 120);
          goto LABEL_19;
        }
      }

      v19 = a1;
LABEL_19:
      *v19 = v21;
      *(v17 + 96) = v22;
      *(v17 + 112) = v23;
      if (++v14 == 8)
      {
        break;
      }
    }

    v11 = v12;
    v13 += 40;
    v12 += 40;
    if (v12 == a2)
    {
      goto LABEL_23;
    }
  }

  result = v12 + 40 == a2;
LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::SMFixIt::operator<(void *a1, void *a2)
{
  v2 = *a1 >= *a2;
  if (*a1 != *a2)
  {
    return !v2;
  }

  v3 = a1[1];
  v4 = a2[1];
  v2 = v3 >= v4;
  if (v3 != v4)
  {
    return !v2;
  }

  v8 = a2[2];
  v6 = a2 + 2;
  v7 = v8;
  v9 = *(v6 + 23);
  v12 = a1[2];
  v10 = a1 + 2;
  v11 = v12;
  v13 = *(v10 + 23);
  if (v13 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = v10[1];
  }

  if (v13 < 0)
  {
    v10 = v11;
  }

  if (v9 >= 0)
  {
    v15 = *(v6 + 23);
  }

  else
  {
    v15 = v6[1];
  }

  if (v9 < 0)
  {
    v6 = v7;
  }

  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v10, v6, v16);
  if (v17)
  {
    return v17 < 0;
  }

  else
  {
    return v14 < v15;
  }
}

std::recursive_mutex *llvm::object_deleter<llvm::sys::SmartMutex<true>>::call(std::recursive_mutex *result)
{
  if (result)
  {
    std::recursive_mutex::~recursive_mutex(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

unint64_t llvm::getToken@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  first_not_of = llvm::StringRef::find_first_not_of(v17, a3, a4, 0);
  result = llvm::StringRef::find_first_of(v17, a3, a4, first_not_of);
  if (a2 >= first_not_of)
  {
    v12 = first_not_of;
  }

  else
  {
    v12 = a2;
  }

  if (v12 <= result)
  {
    v13 = result;
  }

  else
  {
    v13 = first_not_of;
  }

  if (v13 >= a2)
  {
    v13 = a2;
  }

  v14 = a1 + v12;
  v15 = v13 - v12;
  if (a2 >= result)
  {
    v16 = result;
  }

  else
  {
    v16 = a2;
  }

  *a5 = v14;
  a5[1] = v15;
  a5[2] = a1 + v16;
  a5[3] = a2 - v16;
  return result;
}

double llvm::SplitString(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  llvm::getToken(a1, a2, a4, a5, &v12);
  v9 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    do
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(a3, v12, v9);
      llvm::getToken(v13, *(&v13 + 1), a4, a5, &v10);
      v12 = v10;
      result = *&v11;
      v13 = v11;
      v9 = *(&v10 + 1);
    }

    while (*(&v10 + 1));
  }

  return result;
}

llvm::raw_ostream *llvm::printEscapedString(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      if (v6 == 92)
      {
        v7 = *(a3 + 4);
        if (v7 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
        }

        else
        {
          *(a3 + 4) = v7 + 1;
          *v7 = 92;
        }

        v10 = *(a3 + 4);
        if (v10 >= *(a3 + 3))
        {
          v11 = a3;
          v12 = 92;
LABEL_24:
          result = llvm::raw_ostream::write(v11, v12);
          goto LABEL_25;
        }

        *(a3 + 4) = v10 + 1;
        *v10 = 92;
      }

      else
      {
        v9 = *(a3 + 3);
        v8 = *(a3 + 4);
        if (v6 == 34 || (v6 - 32) > 0x5Eu)
        {
          if (v8 >= v9)
          {
            result = llvm::raw_ostream::write(a3, 92);
          }

          else
          {
            *(a3 + 4) = v8 + 1;
            *v8 = 92;
          }

          v13 = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 >> 4];
          v14 = *(a3 + 4);
          if (v14 >= *(a3 + 3))
          {
            result = llvm::raw_ostream::write(a3, v13);
          }

          else
          {
            *(a3 + 4) = v14 + 1;
            *v14 = v13;
          }

          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 & 0xF];
          v15 = *(a3 + 4);
          if (v15 >= *(a3 + 3))
          {
            v11 = a3;
            goto LABEL_24;
          }

          *(a3 + 4) = v15 + 1;
          *v15 = v12;
        }

        else
        {
          if (v8 >= v9)
          {
            v11 = a3;
            v12 = *v5;
            goto LABEL_24;
          }

          *(a3 + 4) = v8 + 1;
          *v8 = v6;
        }
      }

LABEL_25:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *llvm::StringMapImpl::init(llvm::StringMapImpl *this, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 16;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  result = malloc_type_calloc(v3 + 1, 0xCuLL, 0x17B874E6uLL);
  if (!result && (v3 != -1 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[v3] = 2;
  *this = result;
  *(this + 2) = v3;
  return result;
}

uint64_t llvm::StringMapImpl::LookupBucketFor(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v8 = *(a1 + 2);
  if (!v8)
  {
    llvm::StringMapImpl::init(a1, 0x10u);
    v8 = *(a1 + 2);
  }

  v9 = *a1;
  v10 = v8 - 1;
  v11 = *a1 + 8 * v8 + 8;
  v12 = 1;
  v13 = 0xFFFFFFFFLL;
  v14 = a4;
  while (1)
  {
    result = v14 & v10;
    v16 = *(v9 + 8 * result);
    if (!v16)
    {
      break;
    }

    if (v16 == -8)
    {
      if (v13 == -1)
      {
        v13 = result;
      }

      else
      {
        v13 = v13;
      }
    }

    else if (*(v11 + 4 * result) == a4 && a3 == *v16)
    {
      v23 = v12;
      v22 = v13;
      v21 = v10;
      v19 = v11;
      v20 = v9;
      v24 = result;
      if (!a3)
      {
        return result;
      }

      v17 = memcmp(a2, v16 + *(a1 + 5), a3);
      result = v24;
      v11 = v19;
      v9 = v20;
      v10 = v21;
      v13 = v22;
      v12 = v23;
      if (!v17)
      {
        return result;
      }
    }

    v14 = v12 + result;
    ++v12;
  }

  v18 = v13;
  if (v13 == -1)
  {
    v18 = result;
    result = result;
  }

  else
  {
    result = v13;
  }

  *(v11 + 4 * v18) = a4;
  return result;
}

uint64_t llvm::StringMapImpl::FindKey(uint64_t *a1, const void *a2, size_t a3, int a4)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v6 = v4 - 1;
    LODWORD(v7) = (v4 - 1) & a4;
    v8 = *a1;
    v9 = *a1 + 8 * v4 + 8;
    for (i = 1; ; ++i)
    {
      v11 = *(v8 + 8 * v7);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }

      if (v11 != -8 && *(v9 + 4 * v7) == a4 && a3 == *v11)
      {
        v21 = i;
        v20 = v9;
        v19 = v8;
        v17 = a4;
        v18 = v6;
        v22 = v7;
        if (!a3)
        {
          return v7;
        }

        v16 = a1;
        v23 = a3;
        v15 = a2;
        v12 = memcmp(a2, v11 + *(a1 + 5), a3);
        a3 = v23;
        v13 = v12;
        a2 = v15;
        a1 = v16;
        i = v21;
        v7 = v22;
        a4 = v17;
        v6 = v18;
        v8 = v19;
        v9 = v20;
        if (!v13)
        {
          return v7;
        }
      }

      LODWORD(v7) = (v7 + i) & v6;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t llvm::StringMapImpl::RemoveKey(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    return 0;
  }

  v8 = Key;
  result = *(*a1 + 8 * Key);
  *(*a1 + 8 * v8) = -8;
  *(a1 + 12) = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
  return result;
}

uint64_t llvm::StringMapImpl::RehashTable(llvm::StringMapImpl *this, uint64_t a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (3 * v5 < 4 * v4)
  {
    v5 *= 2;
  }

  else if (v5 - (v4 + *(this + 4)) > v5 >> 3)
  {
    return a2;
  }

  v7 = llvm::safe_calloc((v5 + 1), 0xCuLL);
  v8 = &v7[v5];
  *v8 = 2;
  v9 = v8 + 1;
  v10 = *this;
  v11 = *(this + 2);
  if (v11)
  {
    v12 = 0;
    v13 = v5 - 1;
    v14 = a2;
    do
    {
      v15 = *(*this + 8 * v12);
      if (v15 != -8 && v15 != 0)
      {
        v17 = v10[2 * v11 + 2 + v12];
        v18 = v17 & v13;
        if (v7[v18])
        {
          v19 = 1;
          do
          {
            v20 = v18 + v19++;
            v18 = v20 & v13;
          }

          while (v7[v18]);
        }

        v7[v18] = v15;
        *(v9 + v18) = v17;
        if (v12 == v14)
        {
          a2 = v18;
        }

        else
        {
          a2 = a2;
        }
      }

      ++v12;
    }

    while (v12 != v11);
    v10 = *this;
  }

  free(v10);
  *this = v7;
  *(this + 2) = v5;
  *(this + 4) = 0;
  return a2;
}

void *llvm::safe_calloc(llvm *this, size_t a2)
{
  result = malloc_type_calloc(this, a2, 0x17B874E6uLL);
  if (!result && (this && a2 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
    v10 = v7 + 16 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 16 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9, v8);
  v5 = *(a1 + 8);
  a3 = v9;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(a1, v4, &v4[v3], v10);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 16 * v11;
    do
    {
      *result++ = xmmword_25D0A05E0;
      v12 -= 16;
    }

    while (v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(uint64_t result, _OWORD *a2, _OWORD *a3, unint64_t *a4)
{
  v6 = result;
  *(result + 8) = 0;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = *result;
    v9 = 16 * v7;
    do
    {
      *v8++ = xmmword_25D0A05E0;
      v9 -= 16;
    }

    while (v9);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v6, a2, &v10, a4);
      *v10 = *a2;
      ++*(v6 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t ascii_strncasecmp(const char *a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *a1++;
    v3 = v4;
    v5 = v4 + 32;
    v6 = v4 - 65 >= 0x1A;
    v8 = *a2++;
    v7 = v8;
    if (!v6)
    {
      v3 = v5;
    }

    if (v7 - 65 < 0x1A)
    {
      v7 += 32;
    }

    if (v3 != v7)
    {
      break;
    }

    if (!--a3)
    {
      return 0;
    }
  }

  if (v3 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::StringRef::find(uint64_t *a1, char *a2, size_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = v5 - a4;
  if (v5 < a4)
  {
    goto LABEL_4;
  }

  v7 = a4;
  if (!a3)
  {
LABEL_26:
    result = v7;
    goto LABEL_27;
  }

  if (v6 < a3)
  {
LABEL_4:
    result = -1;
    goto LABEL_27;
  }

  v10 = *a1;
  v11 = (*a1 + a4);
  v12 = a3 - 1;
  if (a3 == 1)
  {
    v13 = memchr((*a1 + a4), *a2, v6);
    if (v13)
    {
      result = v13 - v10;
    }

    else
    {
      result = -1;
    }

    goto LABEL_27;
  }

  v14 = &v11[v6 - a3];
  if (a3 == 2)
  {
    result = -1;
    while (*(v10 + v7) != *a2)
    {
      ++v7;
      if (v10 + v7 - 1 >= v14)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (memcmp((v10 + v7), a2, a3))
    {
      ++v7;
      result = -1;
      if (v10 + v7 - 1 >= v14)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  v15 = 0;
  v21 = vdupq_n_s8(a3);
  v22 = v21;
  v20[12] = v21;
  v20[13] = v21;
  v20[10] = v21;
  v20[11] = v21;
  v20[8] = v21;
  v20[9] = v21;
  v20[6] = v21;
  v20[7] = v21;
  v20[4] = v21;
  v20[5] = v21;
  v20[2] = v21;
  v20[3] = v21;
  v16 = a3 - 1;
  v20[0] = v21;
  v20[1] = v21;
  do
  {
    *(v20 + a2[v15++]) = v16--;
  }

  while (v12 != v15);
  v17 = a2[v12];
  while (1)
  {
    v18 = v11[v12];
    if (v18 == v17 && !memcmp(v11, a2, v12))
    {
      break;
    }

    v11 += *(v20 + v18);
    if (v11 >= v14 + 1)
    {
      goto LABEL_4;
    }
  }

  result = &v11[-v10];
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void llvm::StringRef::split(__int128 *a1, uint64_t a2, char *a3, size_t a4, int a5, int a6)
{
  v18 = *a1;
  v8 = *(&v18 + 1);
  if (a5)
  {
    v9 = a5;
    do
    {
      v12 = llvm::StringRef::find(&v18, a3, a4, 0);
      if (v12 == -1)
      {
        break;
      }

      v13 = v12;
      v14 = v18;
      if (v12 || a6)
      {
        if (v12 >= v8)
        {
          v15 = v8;
        }

        else
        {
          v15 = v12;
        }

        llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(a2, v18, v15);
      }

      v16 = v13 + a4;
      if (v8 < v13 + a4)
      {
        v16 = v8;
      }

      v8 -= v16;
      *&v18 = v14 + v16;
      *(&v18 + 1) = v8;
      --v9;
    }

    while (v9);
  }

  if ((a6 & 1) != 0 || v8)
  {
    v17 = v18;

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(a2, v17, v8);
  }
}

void llvm::StringRef::split(char **a1, uint64_t a2, int __c, int a4, int a5)
{
  v7 = *a1;
  v8 = a1[1];
  if (!a4)
  {
LABEL_16:
    if ((a5 & 1) == 0 && !v8)
    {
      return;
    }

    goto LABEL_21;
  }

  v9 = a4;
  while (v8)
  {
    v11 = memchr(v7, __c, v8);
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = v11 - v7;
    if (v11 - v7 == -1)
    {
      goto LABEL_21;
    }

    if (v11 != v7 || a5)
    {
      if (v12 >= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v11 - v7;
      }

      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(a2, v7, v13);
    }

    if (v8 >= v12 + 1)
    {
      v14 = v12 + 1;
    }

    else
    {
      v14 = v8;
    }

    v7 += v14;
    v8 -= v14;
    if (!--v9)
    {
      goto LABEL_16;
    }
  }

  if (a5)
  {
    v8 = 0;
LABEL_21:

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(a2, v7, v8);
  }
}

uint64_t llvm::consumeUnsignedInteger(llvm *this, llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  if (!a2)
  {
    LODWORD(a2) = GetAutoSenseRadix(this);
  }

  v6 = *(this + 1);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *this;
  *a3 = 0;
  v9 = v6;
  do
  {
    if (*v8 < 48)
    {
      break;
    }

    v10 = *v8;
    if (v10 >= 0x3A)
    {
      if (v10 < 0x61)
      {
        if (v10 - 65 > 0x19)
        {
          break;
        }

        v11 = -55;
      }

      else
      {
        if (v10 >= 0x7B)
        {
          break;
        }

        v11 = -87;
      }
    }

    else
    {
      v11 = -48;
    }

    v12 = v11 + v10;
    if (v12 >= a2)
    {
      break;
    }

    v13 = v7 * a2 + v12;
    *a3 = v13;
    if (v13 / a2 < v7)
    {
      return 1;
    }

    ++v8;
    v7 = v13;
    --v9;
  }

  while (v9);
  if (v6 == v9)
  {
    return 1;
  }

  result = 0;
  *this = v8;
  *(this + 1) = v9;
  return result;
}

uint64_t GetAutoSenseRadix(llvm::StringRef *a1)
{
  if (!*(a1 + 1))
  {
    return 10;
  }

  if ((llvm::StringRef::consume_front_insensitive(a1, "0x", 2uLL) & 1) == 0)
  {
    v2 = 2;
    if (llvm::StringRef::consume_front_insensitive(a1, "0b", 2uLL))
    {
      return v2;
    }

    if (llvm::StringRef::consume_front(a1, "0o", 2uLL))
    {
      return 8;
    }

    v3 = *a1;
    if (**a1 == 48)
    {
      v4 = *(a1 + 1);
      if (v4 >= 2)
      {
        v6 = *(v3 + 1);
        v5 = v3 + 1;
        if ((v6 - 48) <= 9)
        {
          *a1 = v5;
          *(a1 + 1) = v4 - 1;
          return 8;
        }
      }
    }

    return 10;
  }

  return 16;
}

uint64_t llvm::consumeSignedInteger(llvm *this, llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v12 = 0;
  v6 = *(this + 1);
  if (v6 && **this == 45)
  {
    *&v11 = *this + 1;
    *(&v11 + 1) = v6 - 1;
    LODWORD(result) = llvm::consumeUnsignedInteger(&v11, a2, &v12, a4);
    v8 = v12;
    if (v12 > 0x8000000000000000)
    {
      result = 1;
    }

    else
    {
      result = result;
    }

    if ((result & 1) == 0)
    {
      *this = v11;
      v9 = -v8;
LABEL_11:
      *a3 = v9;
    }
  }

  else
  {
    v10 = llvm::consumeUnsignedInteger(this, a2, &v12, a4);
    result = 1;
    if ((v10 & 1) == 0)
    {
      v9 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        result = 0;
        goto LABEL_11;
      }
    }
  }

  return result;
}

BOOL llvm::StringRef::consumeInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  AutoSenseRadix = a2;
  v32 = *this;
  if (!a2)
  {
    AutoSenseRadix = GetAutoSenseRadix(&v32);
  }

  v6 = *(&v32 + 1);
  if (!*(&v32 + 1))
  {
    return 1;
  }

  v7 = 0;
  while (*(v32 + v7) == 48)
  {
    if (*(&v32 + 1) == ++v7)
    {
      v32 = (v32 + *(&v32 + 1));
      goto LABEL_26;
    }
  }

  if (v7 >= *(&v32 + 1))
  {
    v9 = *(&v32 + 1);
  }

  else
  {
    v9 = v7;
  }

  *&v32 = v32 + v9;
  *(&v32 + 1) -= v9;
  if (v6 <= v7)
  {
LABEL_26:
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x25F891010](*a3, 0x1000C8000313F17);
    }

    v8 = 0;
    *a3 = 0;
    *(a3 + 2) = 64;
    *this = v32;
    return v8;
  }

  if (v6 < v7)
  {
    LODWORD(v7) = v6;
  }

  v10 = v7 - v6;
  v11 = v6 - v7;
  v12 = -1;
  do
  {
    v13 = 1 << ++v12;
    v10 += v11;
  }

  while (1 << v12 < AutoSenseRadix);
  v14 = *(a3 + 2);
  if (v10 >= v14)
  {
    if (v10 > v14)
    {
      llvm::APInt::zext(a3, v10, &v30);
      if (*(a3 + 2) >= 0x41u && *a3)
      {
        MEMORY[0x25F891010](*a3, 0x1000C8000313F17);
      }

      *a3 = v30;
      *(a3 + 2) = v31;
    }

    v14 = v10;
  }

  v15 = 1;
  v31 = 1;
  v30 = 0;
  v29 = 1;
  v28 = 0;
  if (v13 == AutoSenseRadix)
  {
    v16 = 0;
  }

  else
  {
    v16 = AutoSenseRadix;
    v15 = v14 < 0x41;
    if (v14 >= 0x41)
    {
      operator new[]();
    }

    v30 = AutoSenseRadix;
    v31 = v14;
    v28 = 0;
    v29 = v14;
  }

  llvm::APInt::operator=(a3, 0);
  v18 = *(&v32 + 1);
  if (*(&v32 + 1) && *v32 >= 48)
  {
    v19 = *v32;
    do
    {
      if (v19 >= 0x3A)
      {
        if (v19 < 0x61)
        {
          if (v19 - 65 > 0x19)
          {
            break;
          }

          v20 = -55;
        }

        else
        {
          if (v19 >= 0x7B)
          {
            break;
          }

          v20 = -87;
        }
      }

      else
      {
        v20 = -48;
      }

      v21 = v20 + v19;
      if (v21 >= AutoSenseRadix)
      {
        break;
      }

      if (v13 == AutoSenseRadix)
      {
        llvm::APInt::operator<<=(a3, v12);
        if (*(a3 + 2) > 0x40u)
        {
          **a3 |= v21;
        }

        else
        {
          *a3 |= v21;
          llvm::APInt::clearUnusedBits(a3);
        }
      }

      else
      {
        llvm::APInt::operator*=(a3, &v30);
        llvm::APInt::operator=(&v28, v21);
        llvm::APInt::operator+=(a3, &v28);
      }

      v22 = *(&v32 + 1);
      v23 = *(&v32 + 1) != 0;
      v24 = *(&v32 + 1) ? (v32 + 1) : v32;
      v18 = *(&v32 + 1) - v23;
      *&v32 = v24;
      *(&v32 + 1) -= v23;
      if (v22 <= 1)
      {
        break;
      }

      v25 = *v24;
      v19 = *v24;
    }

    while (v25 >= 48);
  }

  v26 = *(this + 1);
  v8 = v26 == v18;
  if (v26 != v18)
  {
    *this = v32;
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x25F891010](v28, 0x1000C8000313F17);
  }

  if (v16)
  {
    v27 = v15;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    MEMORY[0x25F891010](v16, 0x1000C8000313F17);
  }

  return v8;
}

uint64_t llvm::StringRef::getAsDouble(llvm::StringRef *this, double *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::APFloat::APFloat(v12, 0.0);
  llvm::APFloat::convertFromString(v12, *this, *(this + 1), 1, &v10);
  if ((v11 & 1) == 0)
  {
    if (v10)
    {
      v6 = 1;
      if ((v10 & 0x10) == 0 || !a3)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v6 = 0;
    *a2 = llvm::APFloat::convertToDouble(v12);
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v9 = v10;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v6 = 1;
LABEL_10:
  llvm::APFloat::Storage::~Storage(v12);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t llvm::StringRef::consume_front_insensitive(uint64_t a1, const char *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - a3;
  if (v3 < a3)
  {
    return 0;
  }

  v7 = *a1;
  if (ascii_strncasecmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v7[a3];
  *(a1 + 8) = v4;
  return 1;
}

void llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 4);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 4 * v2), 4 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::StdThreadPool::StdThreadPool(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &unk_286E799A8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = llvm::ThreadPoolStrategy::compute_thread_count(&v5);
  return a1;
}

uint64_t llvm::StdThreadPool::processTasks(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 96);
  while (1)
  {
    v32 = 0;
    __lk.__m_ = v4;
    LOBYTE(v5) = 1;
    __lk.__owns_ = 1;
    std::mutex::lock(v4);
    if (*(a1 + 288) == 1)
    {
      v6 = 1;
      while (!*(a1 + 88))
      {
        if (a2 && llvm::StdThreadPool::workCompletedUnlocked(a1, a2))
        {
          v5 = 0;
          if ((v6 & 1) == 0)
          {
            goto LABEL_11;
          }

          v7 = 0;
          goto LABEL_34;
        }

        std::condition_variable::wait((a1 + 160), &__lk);
        v6 = *(a1 + 288);
        if ((v6 & 1) == 0)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

LABEL_15:
      ++*(a1 + 256);
      v9 = *(a1 + 80);
      v10 = *(*(a1 + 56) + 8 * (v9 / 0x66));
      v11 = v32;
      v32 = 0;
      if (v11 == v31)
      {
        (*(*v11 + 32))(v11);
      }

      else if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      v12 = v10 + 40 * (v9 % 0x66);
      v13 = *(v12 + 24);
      if (v13)
      {
        if (v13 == v12)
        {
          v32 = v31;
          (*(**(v12 + 24) + 24))(*(v12 + 24), v31);
        }

        else
        {
          v32 = *(v12 + 24);
          *(v12 + 24) = 0;
        }
      }

      else
      {
        v32 = 0;
      }

      v7 = *(*(*(a1 + 56) + 8 * (*(a1 + 80) / 0x66uLL)) + 40 * (*(a1 + 80) % 0x66uLL) + 32);
      if (!v7)
      {
LABEL_33:
        std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::pop_front(a1 + 48);
        v5 = 1;
        goto LABEL_34;
      }

      v29 = 0;
      v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>,llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::LookupBucketFor<llvm::ThreadPoolTaskGroup *>(*(a1 + 264), *(a1 + 280), v7, &v29);
      v15 = v29;
      if (v14)
      {
        v16 = *(v29 + 8) + 1;
LABEL_32:
        *(v15 + 8) = v16;
        goto LABEL_33;
      }

      v30 = v29;
      v17 = *(a1 + 272);
      v18 = *(a1 + 280);
      if (4 * v17 + 4 >= 3 * v18)
      {
        v18 *= 2;
      }

      else if (v18 + ~v17 - *(a1 + 276) > v18 >> 3)
      {
LABEL_29:
        *(a1 + 272) = v17 + 1;
        if (*v15 != -4096)
        {
          --*(a1 + 276);
        }

        *v15 = v7;
        *(v15 + 8) = 0;
        v16 = 1;
        goto LABEL_32;
      }

      llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::grow(a1 + 264, v18);
      llvm::DenseMapBase<llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>,llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::LookupBucketFor<llvm::ThreadPoolTaskGroup *>(*(a1 + 264), *(a1 + 280), v7, &v30);
      v17 = *(a1 + 272);
      v15 = v30;
      goto LABEL_29;
    }

LABEL_11:
    v7 = 0;
    v8 = v5 ^ 1;
    if (!a2)
    {
      v8 = 0;
    }

    v5 = 0;
    if ((v8 & 1) == 0 && *(a1 + 88))
    {
      goto LABEL_15;
    }

LABEL_34:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v5)
    {
      break;
    }

    if (!v32)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v32 + 48))(v32);
    std::mutex::lock(v4);
    --*(a1 + 256);
    if (v7)
    {
      v19 = *(a1 + 264);
      v20 = *(a1 + 280);
      v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>,llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::doFind<llvm::ThreadPoolTaskGroup const*>(v19, *(a1 + 280), v7);
      v22 = v19 + 16 * v20;
      if (v21)
      {
        v22 = v21;
      }

      v23 = *(v22 + 8) - 1;
      *(v22 + 8) = v23;
      if (!v23)
      {
        *v22 = -8192;
        *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
      }
    }

    v24 = llvm::StdThreadPool::workCompletedUnlocked(a1, v7);
    v25 = v7 != 0;
    std::mutex::unlock(v4);
    if (v24)
    {
      std::condition_variable::notify_all((a1 + 208));
    }

    if (v25 && v24)
    {
      std::condition_variable::notify_all((a1 + 160));
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v31);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v31);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}