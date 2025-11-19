void anonymous namespace::PrefixMappingFileSystem::~PrefixMappingFileSystem(_anonymous_namespace_::PrefixMappingFileSystem *this)
{
  *(this + 3) = &unk_2868A1320;
  v2 = *(this + 5);
  v3 = *(this + 12);
  if (v3)
  {
    v4 = -48 * v3;
    v5 = &v2[48 * v3 - 24];
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
        if (*(v5 - 1) < 0)
        {
LABEL_8:
          operator delete(*(v5 - 24));
        }
      }

      else if (*(v5 - 1) < 0)
      {
        goto LABEL_8;
      }

      v5 -= 48;
      v4 += 48;
      if (!v4)
      {
        v2 = *(this + 5);
        break;
      }
    }
  }

  if (v2 != this + 56)
  {
    free(v2);
  }

  *this = &unk_2868A2120;
  v6 = *(this + 2);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  llvm::vfs::FileSystem::~FileSystem(this);
}

{
  *(this + 3) = &unk_2868A1320;
  v2 = *(this + 5);
  v3 = *(this + 12);
  if (!v3)
  {
LABEL_10:
    if (v2 != this + 56)
    {
      free(v2);
    }

    *this = &unk_2868A2120;
    v6 = *(this + 2);
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    llvm::vfs::FileSystem::~FileSystem(this);

    JUMPOUT(0x259C63180);
  }

  v4 = -48 * v3;
  v5 = &v2[48 * v3 - 24];
  while (1)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      if (*(v5 - 1) < 0)
      {
LABEL_8:
        operator delete(*(v5 - 24));
      }
    }

    else if (*(v5 - 1) < 0)
    {
      goto LABEL_8;
    }

    v5 -= 48;
    v4 += 48;
    if (!v4)
    {
      v2 = *(this + 5);
      goto LABEL_10;
    }
  }
}

void anonymous namespace::PrefixMappingFileSystem::status(_anonymous_namespace_::PrefixMappingFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v10[32] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v8);
  v5 = llvm::PrefixMapper::mapInPlace(this + 24, &v8);
  v7 = 261;
  v6[0] = v8;
  v6[1] = v9;
  (*(**(this + 2) + 40))(*(this + 2), v6);
  if (v5 && (*(a3 + 80) & 1) == 0)
  {
    *(a3 + 72) = 1;
  }

  if (v8 != v10)
  {
    free(v8);
  }
}

void anonymous namespace::PrefixMappingFileSystem::openFileForRead(_anonymous_namespace_::PrefixMappingFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v10[32] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v8);
  v5 = llvm::PrefixMapper::mapInPlace(this + 24, &v8);
  v7 = 261;
  v6[0] = v8;
  v6[1] = v9;
  (*(**(this + 2) + 48))(*(this + 2), v6);
  if (v5 && (*(a3 + 16) & 1) == 0)
  {
    operator new();
  }

  if (v8 != v10)
  {
    free(v8);
  }
}

void anonymous namespace::PrefixMappingFileSystem::dir_begin(_anonymous_namespace_::PrefixMappingFileSystem *this, const llvm::Twine *a2, std::error_code *a3)
{
  v9[32] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v7);
  llvm::PrefixMapper::mapInPlace(this + 24, &v7);
  v6 = 261;
  v5[0] = v7;
  v5[1] = v8;
  (*(**(this + 2) + 56))(*(this + 2), v5, a3);
  if (v7 != v9)
  {
    free(v7);
  }
}

uint64_t anonymous namespace::PrefixMappingFileSystem::setCurrentWorkingDirectory(_anonymous_namespace_::PrefixMappingFileSystem *this, const llvm::Twine *a2)
{
  v9[32] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v7);
  llvm::PrefixMapper::mapInPlace(this + 24, &v7);
  v6 = 261;
  v5[0] = v7;
  v5[1] = v8;
  result = (*(**(this + 2) + 64))(*(this + 2), v5);
  if (v7 != v9)
  {
    v4 = result;
    free(v7);
    return v4;
  }

  return result;
}

uint64_t anonymous namespace::PrefixMappingFileSystem::getRealPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[32] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v9);
  llvm::PrefixMapper::mapInPlace(a1 + 24, &v9);
  v8 = 261;
  v7[0] = v9;
  v7[1] = v10;
  result = (*(**(a1 + 16) + 80))(*(a1 + 16), v7, a3);
  if (v9 != v11)
  {
    v6 = result;
    free(v9);
    return v6;
  }

  return result;
}

uint64_t anonymous namespace::PrefixMappingFileSystem::isLocal(_anonymous_namespace_::PrefixMappingFileSystem *this, const llvm::Twine *a2, BOOL *a3)
{
  v11[32] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v9);
  llvm::PrefixMapper::mapInPlace(this + 24, &v9);
  v8 = 261;
  v7[0] = v9;
  v7[1] = v10;
  result = (*(**(this + 2) + 104))(*(this + 2), v7, a3);
  if (v9 != v11)
  {
    v6 = result;
    free(v9);
    return v6;
  }

  return result;
}

uint64_t llvm::vfs::ProxyFileSystem::visitChildFileSystems(uint64_t result, void (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 16))
  {
    v3 = result;
    a2(a3);
    v4 = *(**(v3 + 16) + 128);

    return v4();
  }

  return result;
}

void anonymous namespace::PrefixMappingFile::~PrefixMappingFile(_anonymous_namespace_::PrefixMappingFile *this)
{
  v2 = *(this + 1);
  *this = &unk_2868A1430;
  *(this + 1) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  llvm::vfs::File::~File(this);
}

{
  v2 = *(this + 1);
  *this = &unk_2868A1430;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::vfs::File::~File(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::PrefixMappingFile::status@<X0>(_anonymous_namespace_::PrefixMappingFile *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(this + 1) + 16))(*(this + 1));
  if ((*(a2 + 80) & 1) == 0)
  {
    *(a2 + 72) = 1;
  }

  return result;
}

uint64_t llvm::ReverseStackTrace(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = 0;
  do
  {
    v2 = a1;
    a1 = *(a1 + 16);
    *(v2 + 16) = v1;
    v1 = v2;
  }

  while (a1);
  return v2;
}

uint64_t llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(uint64_t a1, int a2)
{
  *a1 = &unk_2868A1498;
  *(a1 + 8) = a2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }

  v8 = PrettyStackTraceHead();
  *(a1 + 16) = *v8;
  *v8 = a1;
  return a1;
}

void llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(llvm::PrettyStackTraceEntry *this)
{
  *this = &unk_2868A1498;
  v1 = PrettyStackTraceHead();
  *v1 = v2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }
}

const char **llvm::PrettyStackTraceString::print(const char **this, const char **a2)
{
  v3 = this[3];
  if (v3)
  {
    v4 = strlen(this[3]);
    this = a2[4];
    if (v4 <= a2[3] - this)
    {
      if (v4)
      {
        this = memcpy(this, v3, v4);
        a2[4] += v4;
      }
    }

    else
    {
      this = llvm::raw_ostream::write(a2, v3, v4);
      a2 = this;
    }
  }

  v5 = a2[4];
  if (a2[3] == v5)
  {

    return llvm::raw_ostream::write(a2, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++a2[4];
  }

  return this;
}

llvm::PrettyStackTraceFormat *llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this, const char *a2, ...)
{
  va_start(va, a2);
  *this = &unk_2868A1498;
  *(this + 2) = 0;
  v4 = GlobalSigInfoGenerationCounter;
  v5 = ThreadLocalSigInfoGenerationCounter();
  if (*v5)
  {
    v6 = *v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = llvm::errs(v5);
    PrintCurStackTrace(v8);
    *v7 = v4;
  }

  v9 = PrettyStackTraceHead();
  *(this + 2) = *v9;
  *v9 = this;
  *(this + 3) = this + 48;
  v10 = (this + 24);
  *this = &unk_2868A14C0;
  *(this + 2) = xmmword_25736B040;
  v11 = vsnprintf(0, 0, a2, va);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = (v11 + 1);
    v13 = *(this + 4);
    if (v13 != v12)
    {
      if (v13 <= v12)
      {
        if (*(this + 5) < v12)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v12 != v13)
        {
          bzero(&(*v10)[v13], v12 - v13);
        }
      }

      *(this + 4) = v12;
    }

    vsnprintf(*v10, v12, a2, va);
  }

  return this;
}

{
  va_start(va, a2);
  *this = &unk_2868A1498;
  *(this + 2) = 0;
  v4 = GlobalSigInfoGenerationCounter;
  v5 = ThreadLocalSigInfoGenerationCounter();
  if (*v5)
  {
    v6 = *v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = llvm::errs(v5);
    PrintCurStackTrace(v8);
    *v7 = v4;
  }

  v9 = PrettyStackTraceHead();
  *(this + 2) = *v9;
  *v9 = this;
  *(this + 3) = this + 48;
  v10 = (this + 24);
  *this = &unk_2868A14C0;
  *(this + 2) = xmmword_25736B040;
  v11 = vsnprintf(0, 0, a2, va);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = (v11 + 1);
    v13 = *(this + 4);
    if (v13 != v12)
    {
      if (v13 <= v12)
      {
        if (*(this + 5) < v12)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v12 != v13)
        {
          bzero(&(*v10)[v13], v12 - v13);
        }
      }

      *(this + 4) = v12;
    }

    vsnprintf(*v10, v12, a2, va);
  }

  return this;
}

void *llvm::PrettyStackTraceFormat::print(llvm::PrettyStackTraceFormat *this, llvm::raw_ostream *a2)
{
  result = llvm::raw_ostream::write(a2, *(this + 3), *(this + 4));
  v3 = result[4];
  if (result[3] == v3)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v3 = 10;
    ++result[4];
  }

  return result;
}

llvm::raw_ostream *llvm::PrettyStackTraceProgram::print(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x12)
  {
    *(v4 + 15) = 540701556;
    *v4 = *"Program arguments: ";
    *(a2 + 4) += 19;
    if (*(this + 6) < 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "Program arguments: ", 0x13uLL);
    if (*(v3 + 6) < 1)
    {
      goto LABEL_34;
    }
  }

  v5 = strchr(**(v3 + 4), 32);
  if (!v5)
  {
LABEL_8:
    v7 = **(v3 + 4);
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = *(a2 + 4);
  if (v6 < *(a2 + 3))
  {
    *(a2 + 4) = v6 + 1;
    *v6 = 34;
    goto LABEL_8;
  }

  llvm::raw_ostream::write(a2, 34);
  v7 = **(v3 + 4);
  if (v7)
  {
LABEL_9:
    v8 = strlen(v7);
    this = llvm::raw_ostream::write_escaped(a2, v7, v8, 0);
    if (!v5)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = llvm::raw_ostream::write_escaped(a2, v7, 0, 0);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_13:
  v9 = *(a2 + 4);
  if (v9 >= *(a2 + 3))
  {
    this = llvm::raw_ostream::write(a2, 34);
    if (*(v3 + 6) < 2)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  *(a2 + 4) = v9 + 1;
  *v9 = 34;
LABEL_15:
  if (*(v3 + 6) >= 2)
  {
LABEL_18:
    for (i = 1; i < *(v3 + 6); ++i)
    {
      v11 = strchr(*(*(v3 + 4) + 8 * i), 32);
      v12 = v11;
      v13 = *(a2 + 4);
      if (v13 >= *(a2 + 3))
      {
        llvm::raw_ostream::write(a2, 32);
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *(a2 + 4) = v13 + 1;
        *v13 = 32;
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      v14 = *(a2 + 4);
      if (v14 < *(a2 + 3))
      {
        *(a2 + 4) = v14 + 1;
        *v14 = 34;
LABEL_27:
        v15 = *(*(v3 + 4) + 8 * i);
        if (v15)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }

      llvm::raw_ostream::write(a2, 34);
      v15 = *(*(v3 + 4) + 8 * i);
      if (v15)
      {
LABEL_28:
        v16 = strlen(v15);
        this = llvm::raw_ostream::write_escaped(a2, v15, v16, 0);
        if (v12)
        {
          goto LABEL_32;
        }

        continue;
      }

LABEL_31:
      this = llvm::raw_ostream::write_escaped(a2, v15, 0, 0);
      if (v12)
      {
LABEL_32:
        v17 = *(a2 + 4);
        if (v17 < *(a2 + 3))
        {
          *(a2 + 4) = v17 + 1;
          *v17 = 34;
        }

        else
        {
          this = llvm::raw_ostream::write(a2, 34);
        }
      }
    }
  }

LABEL_34:
  v18 = *(a2 + 4);
  if (v18 >= *(a2 + 3))
  {

    return llvm::raw_ostream::write(a2, 10);
  }

  else
  {
    *(a2 + 4) = v18 + 1;
    *v18 = 10;
  }

  return this;
}

void llvm::EnablePrettyStackTrace(llvm *this)
{
  {
    llvm::EnablePrettyStackTrace();
  }
}

_DWORD *llvm::EnablePrettyStackTraceOnSigInfoForThisThread(llvm *this)
{
  {
    llvm::EnablePrettyStackTraceOnSigInfoForThisThread();
  }

  result = ThreadLocalSigInfoGenerationCounter();
  *result = v2;
  return result;
}

void *llvm::RestorePrettyStackState(llvm *this, const void *a2)
{
  result = PrettyStackTraceHead();
  *result = v3;
  return result;
}

void LLVMEnablePrettyStackTrace()
{
  {
    llvm::EnablePrettyStackTrace();
  }
}

void llvm::PrettyStackTraceString::~PrettyStackTraceString(llvm::PrettyStackTraceString *this)
{
  *this = &unk_2868A1498;
  v1 = PrettyStackTraceHead();
  *v1 = v2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }
}

{
  *this = &unk_2868A1498;
  v1 = PrettyStackTraceHead();
  *v1 = v2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }

  JUMPOUT(0x259C63180);
}

void llvm::PrettyStackTraceProgram::~PrettyStackTraceProgram(llvm::PrettyStackTraceProgram *this)
{
  *this = &unk_2868A1498;
  v1 = PrettyStackTraceHead();
  *v1 = v2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }
}

{
  *this = &unk_2868A1498;
  v1 = PrettyStackTraceHead();
  *v1 = v2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }

  JUMPOUT(0x259C63180);
}

void llvm::PrettyStackTraceFormat::~PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this)
{
  *this = &unk_2868A14C0;
  v2 = *(this + 3);
  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_2868A1498;
  v3 = PrettyStackTraceHead();
  *v3 = v4;
  v5 = GlobalSigInfoGenerationCounter;
  v6 = ThreadLocalSigInfoGenerationCounter();
  if (*v6)
  {
    v7 = *v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    v9 = llvm::errs(v6);
    PrintCurStackTrace(v9);
    *v8 = v5;
  }
}

{
  *this = &unk_2868A14C0;
  v2 = *(this + 3);
  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_2868A1498;
  v3 = PrettyStackTraceHead();
  *v3 = v4;
  v5 = GlobalSigInfoGenerationCounter;
  v6 = ThreadLocalSigInfoGenerationCounter();
  if (*v6)
  {
    v7 = *v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    v9 = llvm::errs(v6);
    PrintCurStackTrace(v9);
    *v8 = v5;
  }

  JUMPOUT(0x259C63180);
}

void PrintCurStackTrace(llvm::raw_ostream *a1)
{
  v2 = PrettyStackTraceHead();
  v3 = *v2;
  if (*v2)
  {
    v4 = v2;
    v5 = *(a1 + 4);
    if ((*(a1 + 3) - v5) >= 0xC)
    {
      *(v5 + 8) = 171602029;
      *v5 = *"Stack dump:\n";
      *(a1 + 4) += 12;
      *v2 = 0;
    }

    else
    {
      llvm::raw_ostream::write(a1, "Stack dump:\n", 0xCuLL);
      v3 = *v4;
      *v4 = 0;
      if (!v3)
      {
LABEL_15:
        *v4 = v3;
        if (*(a1 + 4) != *(a1 + 2))
        {
          llvm::raw_ostream::flush_nonempty(a1);
        }

        return;
      }
    }

    v6 = 0;
    v7 = v3;
    do
    {
      v8 = v6;
      v6 = v7;
      v7 = v7[2];
      v6[2] = v8;
    }

    while (v7);
    v9 = 0;
    v10 = v6;
    do
    {
      v11 = llvm::raw_ostream::operator<<(a1, v9);
      v12 = *(v11 + 4);
      if (*(v11 + 3) - v12 > 1uLL)
      {
        *v12 = 2350;
        *(v11 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v11, ".\t", 2uLL);
      }

      llvm::sys::Watchdog::Watchdog(&v15, 5u);
      (*(*v10 + 16))(v10, a1);
      llvm::sys::Watchdog::~Watchdog(&v15);
      v10 = v10[2];
      ++v9;
    }

    while (v10);
    v13 = 0;
    do
    {
      v14 = v6;
      v6 = v6[2];
      v14[2] = v13;
      v13 = v14;
    }

    while (v6);
    goto LABEL_15;
  }
}

void CrashHandler(llvm *a1)
{
  v1 = llvm::errs(a1);
  if (BugReportMsg)
  {
    v2 = v1;
    v3 = strlen(BugReportMsg);
    v4 = v2[4];
    if (v3 <= v2[3] - v4)
    {
      if (v3)
      {
        memcpy(v4, BugReportMsg, v3);
        v2[4] += v3;
      }
    }

    else
    {
      llvm::raw_ostream::write(v2, BugReportMsg, v3);
    }
  }

  byte_27F874AD0 = 0;
  crashHandlerStringStorage = &byte_27F874AD0;
  *&qword_27F874AC0 = xmmword_2573A00B0;
  qword_27F873F28 = &byte_27F874AD0;
  v10 = 2;
  v14 = 0;
  v15 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = &unk_2868A3F88;
  v16 = &crashHandlerStringStorage;
  llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
  PrintCurStackTrace(&v9);
  llvm::raw_ostream::~raw_ostream(&v9);
  if (qword_27F874AC0)
  {
    if (qword_27F874AC0 + 1 > qword_27F874AC8)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(crashHandlerStringStorage + qword_27F874AC0) = 0;
    qword_27F873F28 = crashHandlerStringStorage;
    v6 = llvm::errs(v5);
    if (qword_27F874AC0 <= (v6[3] - v6[4]))
    {
      if (qword_27F874AC0)
      {
        v7 = v6;
        v8 = qword_27F874AC0;
        memcpy(v6[4], crashHandlerStringStorage, qword_27F874AC0);
        v7[4] = v7[4] + v8;
      }
    }

    else
    {
      llvm::raw_ostream::write(v6, crashHandlerStringStorage, qword_27F874AC0);
    }
  }

  else
  {
    qword_27F873F28 = "No crash information.";
  }
}

void llvm::initRandomSeedOptions(llvm *this)
{
  if (!atomic_load_explicit(Seed, memory_order_acquire))
  {
  }
}

void *llvm::RandomNumberGenerator::RandomNumberGenerator(void *a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = 5489;
  *a1 = 5489;
  for (i = 1; i != 312; ++i)
  {
    v7 = i + 0x5851F42D4C957F2DLL * (v7 ^ (v7 >> 62));
    a1[i] = v7;
  }

  a1[312] = 0;
  memset(&v47, 0, sizeof(v47));
  if (a3 != -2)
  {
    std::vector<unsigned int>::__append(&v47, a3 + 2);
  }

  if (atomic_load_explicit(Seed, memory_order_acquire))
  {
    *v47.__begin_ = *(Seed[0] + 128);
    if (atomic_load_explicit(Seed, memory_order_acquire))
    {
      goto LABEL_7;
    }

LABEL_10:
    begin = v47.__begin_;
    v47.__begin_[1] = *(Seed[0] + 132);
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  *v47.__begin_ = *(Seed[0] + 128);
  if (!atomic_load_explicit(Seed, memory_order_acquire))
  {
    goto LABEL_10;
  }

LABEL_7:
  begin = v47.__begin_;
  v47.__begin_[1] = *(Seed[0] + 132);
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_11:
  v10 = (a2 + a3);
  v11 = begin + 2;
  if (a3 < 4 || v10 > v11 && &v11[a3] > a2)
  {
    v12 = begin + 2;
    v13 = a2;
    goto LABEL_15;
  }

  if (a3 >= 0x20)
  {
    v29 = a3 & 0xFFFFFFFFFFFFFFE0;
    v30 = (a2 + 16);
    v31 = begin + 18;
    v32 = a3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v33 = *v30[-2].i8;
      v34 = *v30->i8;
      v35 = vmovl_s8(*v33.i8);
      v36 = vmovl_high_s8(v33);
      v37 = vmovl_s8(*v30);
      *(v31 - 2) = vmovl_s16(*v36.i8);
      *(v31 - 1) = vmovl_high_s16(v36);
      v38 = vmovl_high_s8(v34);
      v39 = vmovl_s16(*v38.i8);
      *(v31 - 4) = vmovl_s16(*v35.i8);
      *(v31 - 3) = vmovl_high_s16(v35);
      a4 = vmovl_high_s16(v38);
      *(v31 + 2) = v39;
      *(v31 + 3) = a4;
      *v31 = vmovl_s16(*v37.i8);
      *(v31 + 1) = vmovl_high_s16(v37);
      v31 += 32;
      v30 += 4;
      v32 -= 32;
    }

    while (v32);
    if (a3 == v29)
    {
      goto LABEL_16;
    }

    if ((a3 & 0x1C) == 0)
    {
      v13 = (a2 + v29);
      v12 = &v11[v29];
      do
      {
LABEL_15:
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != v10);
      goto LABEL_16;
    }
  }

  else
  {
    v29 = 0;
  }

  v12 = &v11[a3 & 0xFFFFFFFFFFFFFFFCLL];
  v13 = (a2 + (a3 & 0xFFFFFFFFFFFFFFFCLL));
  v40 = (a2 + v29);
  v41 = &v11[v29];
  v42 = v29 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v43 = *v40++;
    a4.n128_u32[0] = v43;
    a4 = vmovl_s16(*&vmovl_s8(a4.n128_u64[0]));
    *v41++ = a4;
    v42 += 4;
  }

  while (v42);
  if (a3 != (a3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_15;
  }

LABEL_16:
  v45 = 0;
  v46 = 0;
  __p = 0;
  if (begin != v47.__end_)
  {
    operator new();
  }

  std::seed_seq::generate[abi:nn200100]<unsigned int *>(&__p, __b, &v49);
  for (j = 0; j != 312; j += 8)
  {
    v16 = &__b[j * 8];
    v50 = vld2q_f32(v16);
    v16 += 8;
    v51 = vld2q_f32(v16);
    v17.i64[0] = v50.val[0].u32[2];
    v17.i64[1] = v50.val[0].u32[3];
    v18 = v17;
    v17.i64[0] = v50.val[0].u32[0];
    v17.i64[1] = v50.val[0].u32[1];
    v19 = v17;
    v17.i64[0] = v51.val[0].u32[2];
    v17.i64[1] = v51.val[0].u32[3];
    v20 = v17;
    v17.i64[0] = v51.val[0].u32[0];
    v17.i64[1] = v51.val[0].u32[1];
    __asm { SHLL2           V16.2D, V1.4S, #0x20 ; ' ' }

    v50.val[0] = vshll_n_s32(*v50.val[1].f32, 0x20uLL);
    __asm { SHLL2           V1.2D, V3.4S, #0x20 ; ' ' }

    v26 = &a1[j];
    *v26 = vorrq_s8(v50.val[0], v19);
    v26[1] = vorrq_s8(_Q16, v18);
    v26[2] = vorrq_s8(vshll_n_s32(*v51.val[1].f32, 0x20uLL), v17);
    v26[3] = vorrq_s8(v50.val[1], v20);
  }

  a1[312] = 0;
  if (!(*a1 >> 31))
  {
    v27 = 1;
    while (!a1[v27])
    {
      if (++v27 == 312)
      {
        *a1 = 0x8000000000000000;
        break;
      }
    }
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v47.__begin_)
  {
    v47.__end_ = v47.__begin_;
    operator delete(v47.__begin_);
  }

  return a1;
}

unint64_t llvm::RandomNumberGenerator::operator()(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x138uLL;
  v3 = 0xB5026F5AA96619E9;
  if ((*(a1 + 8 * v2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ *(a1 + 8 * ((v1 + 156) % 0x138uLL)) ^ ((*(a1 + 8 * v2) & 0x7FFFFFFELL | *(a1 + 8 * v1) & 0xFFFFFFFF80000000) >> 1);
  *(a1 + 8 * v1) = v4;
  *(a1 + 2496) = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

uint64_t llvm::getRandomBytes(llvm *this, void *a2)
{
  v4 = open("/dev/urandom", 0);
  if (v4 != -1)
  {
    v5 = v4;
    v6 = read(v4, this, a2);
    if (v6 == -1)
    {
      v8 = *__error();
      std::generic_category();
      if (close(v5) != -1)
      {
        return v8;
      }
    }

    else
    {
      v7 = v6;
      std::system_category();
      if (v7 == a2)
      {
        v8 = 0;
      }

      else
      {
        v8 = 5;
      }

      if (close(v5) != -1)
      {
        return v8;
      }
    }
  }

  v10 = *__error();
  std::generic_category();
  return v10;
}

uint64_t llvm::object_deleter<llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::opt<char [9],llvm::cl::value_desc,llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, const char *a2, _OWORD *a3, _WORD *a4, _OWORD *a5, int **a6)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_28685BD08;
  *a1 = &unk_28685BCA0;
  *(a1 + 160) = &unk_28689F498;
  *(a1 + 168) = &unk_28685BD28;
  *(a1 + 192) = a1 + 168;
  v14 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v14);
  *(a1 + 48) = *a3;
  *(a1 + 10) = (32 * (*a4 & 3)) | *(a1 + 10) & 0xFF9F;
  *(a1 + 32) = *a5;
  v15 = **a6;
  *(a1 + 128) = v15;
  *(a1 + 152) = 1;
  *(a1 + 144) = v15;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

int **std::seed_seq::generate[abi:nn200100]<unsigned int *>(int **result, char *__b, char *a3)
{
  if (__b == a3)
  {
    return result;
  }

  v4 = result;
  v5 = a3 - __b;
  v6 = (a3 - __b) >> 2;
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    memset(__b, 139, v5);
  }

  v9 = *v4;
  v8 = v4[1];
  v10 = v8 - *v4;
  v11 = v10 >> 2;
  v12 = 11;
  v13 = 7;
  v14 = 5;
  v15 = 3;
  if (v6 <= 6)
  {
    v15 = v7 >> 1;
  }

  if (v6 <= 0x26)
  {
    v14 = v15;
  }

  if (v6 <= 0x43)
  {
    v13 = v14;
  }

  if (v6 <= 0x26E)
  {
    v12 = v13;
  }

  v16 = v10 >> 2;
  v17 = (v6 - v12) >> 1;
  v18 = v17 + v12;
  v19 = v11 + 1;
  if (v11 + 1 > v6)
  {
    v20 = v11 + 1;
  }

  else
  {
    v20 = v6;
  }

  v21 = *&__b[4 * v17];
  v22 = 1664525 * (*__b ^ *&__b[v5 - 4] ^ v21 ^ ((*__b ^ *&__b[v5 - 4] ^ v21) >> 27));
  result = (v22 + v21);
  *&__b[4 * v17] = result;
  v23 = v22 + v16;
  *&__b[4 * v18] += v23;
  *__b = v23;
  v24 = v17 % v6;
  v25 = v18 % v6;
  if (v8 == v9)
  {
    v26 = 0;
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v26 = 0;
    v27 = 2;
    if (v19 > 2)
    {
      v27 = v11 + 1;
    }

    v28 = v27 - 1;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v29 = *&__b[4 * v24];
      v30 = 1664525 * (*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29 ^ ((*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29) >> 27));
      *&__b[4 * v24] = v30 + v29;
      v31 = *v9++;
      v32 = v31 + v26 + v30;
      result = (v32 + *&__b[4 * v25]);
      *&__b[4 * v25] = result;
      *&__b[4 * v26] = v32;
      --v28;
    }

    while (v28);
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  v33 = ~v11 + v20;
  do
  {
    if (v26 + 1 == v6)
    {
      v26 = 0;
    }

    else
    {
      ++v26;
    }

    if (v7 + 1 == v6)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }

    if (v24 + 1 == v6)
    {
      v24 = 0;
    }

    else
    {
      ++v24;
    }

    if (v25 + 1 == v6)
    {
      v25 = 0;
    }

    else
    {
      ++v25;
    }

    v34 = *&__b[4 * v24];
    v35 = *&__b[4 * v26] ^ *&__b[4 * v7] ^ v34;
    v36 = 1664525 * (v35 ^ (v35 >> 27));
    *&__b[4 * v24] = v36 + v34;
    v37 = v36 + v26;
    *&__b[4 * v25] += v37;
    *&__b[4 * v26] = v37;
    --v33;
  }

  while (v33);
LABEL_49:
  if (v20 < v20 + v6)
  {
    v38 = v6;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v39 = *&__b[4 * v24];
      v40 = v39 + *&__b[4 * v26] + *&__b[4 * v7];
      v41 = 1566083941 * (v40 ^ (v40 >> 27));
      *&__b[4 * v24] = v41 ^ v39;
      v42 = v41 - v26;
      *&__b[4 * v25] ^= v42;
      *&__b[4 * v26] = v42;
      --v38;
    }

    while (v38);
  }

  return result;
}

uint64_t llvm::Regex::Regex(uint64_t this)
{
  *this = 0;
  *(this + 8) = 2;
  return this;
}

{
  *this = 0;
  *(this + 8) = 2;
  return this;
}

void llvm::Regex::Regex()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

uint64_t llvm::Regex::Regex(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 2;
  return result;
}

{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 2;
  return result;
}

void llvm::Regex::~Regex(llvm::Regex *this)
{
  v2 = *this;
  if (v2)
  {
    llvm_regfree(v2);
    if (*this)
    {
      MEMORY[0x259C63180](*this, 0x1070C404B019E81);
    }
  }
}

{
  v2 = *this;
  if (v2)
  {
    llvm_regfree(v2);
    if (*this)
    {
      MEMORY[0x259C63180](*this, 0x1070C404B019E81);
    }
  }
}

BOOL llvm::Regex::isValid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = *a1;
    v5 = llvm_regerror(*(a1 + 8), *a1, 0, 0);
    std::string::resize(a2, v5 - 1, 0);
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    llvm_regerror(v2, v4, v6, v5);
  }

  return v2 == 0;
}

uint64_t llvm::Regex::match(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[16] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v10 = *(a5 + 23);
    if (v10 < 0)
    {
      v10 = *(a5 + 8);
    }

    if (v10)
    {
      MEMORY[0x259C62C80](a5, "");
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = *a1;
      v13 = llvm_regerror(*(a1 + 8), *a1, 0, 0);
      std::string::resize(a5, v13 - 1, 0);
      if (*(a5 + 23) >= 0)
      {
        v14 = a5;
      }

      else
      {
        v14 = *a5;
      }

      llvm_regerror(v11, v12, v14, v13);
      return 0;
    }
  }

  else if (*(a1 + 8))
  {
    return 0;
  }

  if (a4)
  {
    v16 = *(*a1 + 8) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = a3;
  }

  else
  {
    a2 = "";
    v17 = 0;
  }

  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v16 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(v31, 16 * v18);
  v31[0] = 0;
  v31[1] = v17;
  v19 = llvm_regexec(*a1, a2, v16, v31, 4);
  if (v19)
  {
    if (v19 == 1 || !a5)
    {
      return 0;
    }

    else
    {
      v20 = *(a1 + 8);
      v21 = *a1;
      v22 = llvm_regerror(v20, *a1, 0, 0);
      std::string::resize(a5, v22 - 1, 0);
      if (*(a5 + 23) >= 0)
      {
        v23 = a5;
      }

      else
      {
        v23 = *a5;
      }

      llvm_regerror(v20, v21, v23, v22);
      return 0;
    }
  }

  else
  {
    if (a4)
    {
      *(a4 + 8) = 0;
      if (v16)
      {
        v24 = 0;
        v25 = 0;
        v26 = 16 * v16;
        do
        {
          while (1)
          {
            v27 = v31[v24 / 8];
            if (v27 == -1)
            {
              break;
            }

            v28 = v31[v24 / 8 + 1];
            if (v25 >= *(a4 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v29 = (*a4 + 16 * v25);
            *v29 = &a2[v27];
            v29[1] = v28 - v27;
            v25 = *(a4 + 8) + 1;
            *(a4 + 8) = v25;
            v24 += 16;
            if (v26 == v24)
            {
              return 1;
            }
          }

          if (v25 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v30 = (*a4 + 16 * v25);
          *v30 = 0;
          v30[1] = 0;
          v25 = *(a4 + 8) + 1;
          *(a4 + 8) = v25;
          v24 += 16;
        }

        while (v26 != v24);
      }
    }

    return 1;
  }
}

void llvm::Regex::sub(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X3>, size_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58[16] = *MEMORY[0x277D85DE8];
  v54 = a2;
  v55 = a3;
  v56 = v58;
  v57 = 0x800000000;
  if (llvm::Regex::match(a1, a4, a5, &v56, a6))
  {
    v11 = *v56;
    v12 = *v56 - a4;
    if (v12 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v12 > 0x16)
      {
        operator new();
      }

      *(a7 + 23) = v12;
      if (v11 != a4)
      {
        memmove(a7, a4, v12);
      }

      *(a7 + v12) = 0;
      if (!v55)
      {
        goto LABEL_87;
      }

      while (1)
      {
        LOBYTE(v50[0]) = 92;
        v15 = llvm::StringRef::find(&v54, v50, 1uLL, 0);
        if (v15 == -1)
        {
          v18 = v55;
          std::string::append(a7, v54, v55);
LABEL_81:
          if (a6 && v55 != v18)
          {
            v40 = *(a6 + 23);
            if (v40 < 0)
            {
              v40 = *(a6 + 8);
            }

            if (!v40)
            {
              MEMORY[0x259C62C80](a6, "replacement string contained trailing backslash");
            }
          }

LABEL_87:
          std::string::append(a7, (*v56 + *(v56 + 1)), a4 + a5 - (*v56 + *(v56 + 1)));
          v13 = v56;
          if (v56 != v58)
          {
LABEL_88:
            free(v13);
          }

          return;
        }

        v17 = v54;
        v16 = v55;
        if (v15 >= v55)
        {
          v18 = v55;
        }

        else
        {
          v18 = v15;
        }

        v19 = v15 + 1;
        if (v55 >= v15 + 1)
        {
          v20 = v15 + 1;
        }

        else
        {
          v20 = v55;
        }

        std::string::append(a7, v54, v18);
        if (v16 <= v19)
        {
          goto LABEL_81;
        }

        v21 = v16 - v20;
        v22 = &v17[v20];
        v54 = &v17[v20];
        v55 = v21;
        v23 = v17[v20];
        if ((v23 - 48) >= 0xA)
        {
          if (v23 == 116)
          {
            v36 = a7;
            v37 = 9;
            goto LABEL_66;
          }

          if (v23 == 110)
          {
            v36 = a7;
            v37 = 10;
            goto LABEL_66;
          }

          if (v23 != 103)
          {
            goto LABEL_65;
          }

          if (v21 < 4 || v22[1] != 60)
          {
            goto LABEL_64;
          }

          v29 = memchr(&v17[v20], 62, v21);
          if (v29)
          {
            v30 = v29 - v22;
          }

          else
          {
            v30 = -1;
          }

          v31 = 2;
          if (v30 > 2)
          {
            v31 = v30;
          }

          if (v31 >= v21)
          {
            v31 = v21;
          }

          if (v30 == -1)
          {
LABEL_64:
            LOBYTE(v23) = 103;
            goto LABEL_65;
          }

          v32 = (v22 + 2);
          v33 = v31 - 2;
          v50[0] = 0;
          if ((llvm::getAsUnsignedInteger(v32, v31 - 2, 0xA, v50) & 1) != 0 || v50[0] >> 32)
          {
            LOBYTE(v23) = *v54;
LABEL_65:
            v37 = v23;
            v36 = a7;
LABEL_66:
            std::string::push_back(v36, v37);
            v38 = v54;
            if (v55)
            {
              v38 = v54 + 1;
            }

            v14 = v55 - (v55 != 0);
            v54 = v38;
            v55 = v14;
            goto LABEL_17;
          }

          if (v55 >= v30 + 1)
          {
            v34 = v30 + 1;
          }

          else
          {
            v34 = v55;
          }

          v35 = &v54[v34];
          v14 = v55 - v34;
          v54 = v35;
          v55 = v14;
          if (v50[0] < v57)
          {
            v27 = v56 + 16 * v50[0];
            goto LABEL_34;
          }

          if (!a6)
          {
            goto LABEL_17;
          }

          v39 = *(a6 + 23);
          if (v39 < 0)
          {
            v39 = *(a6 + 8);
          }

          if (!v39)
          {
            *&v45 = "invalid backreference string 'g<";
            v47 = 259;
            v44 = 261;
            v43[0] = v32;
            v43[1] = v33;
            llvm::operator+(&v45, v43, v48);
            v41 = ">'";
            v42 = 259;
            llvm::operator+(v48, &v41, v50);
            llvm::Twine::str(v50, &v52);
            if (*(a6 + 23) < 0)
            {
              operator delete(*a6);
            }

            *a6 = v52;
            v28 = v53;
            goto LABEL_41;
          }
        }

        else
        {
          first_not_of = llvm::StringRef::find_first_not_of(&v54, "0123456789", 10, 0);
          v25 = v54;
          if (first_not_of >= v55)
          {
            v26 = v55;
          }

          else
          {
            v26 = first_not_of;
          }

          v54 += v26;
          v55 -= v26;
          v50[0] = 0;
          if ((llvm::getAsUnsignedInteger(v25, v26, 0xA, v50) & 1) == 0 && !(v50[0] >> 32) && v50[0] < v57)
          {
            v27 = v56 + 16 * v50[0];
LABEL_34:
            std::string::append(a7, *v27, *(v27 + 1));
            goto LABEL_16;
          }

          if (a6)
          {
            if ((*(a6 + 23) & 0x8000000000000000) != 0)
            {
              if (!*(a6 + 8))
              {
                goto LABEL_38;
              }
            }

            else if (!*(a6 + 23))
            {
LABEL_38:
              v48[0] = "invalid backreference string '";
              v48[2] = v25;
              v48[3] = v26;
              v49 = 1283;
              v50[0] = v48;
              v50[2] = "'";
              v51 = 770;
              llvm::Twine::str(v50, &v45);
              if (*(a6 + 23) < 0)
              {
                operator delete(*a6);
              }

              *a6 = v45;
              v28 = v46;
LABEL_41:
              *(a6 + 16) = v28;
            }
          }
        }

LABEL_16:
        v14 = v55;
LABEL_17:
        if (!v14)
        {
          goto LABEL_87;
        }
      }
    }

LABEL_90:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_90;
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  *(a7 + 23) = a5;
  if (a5)
  {
    memmove(a7, a4, a5);
    *(a7 + a5) = 0;
    v13 = v56;
    if (v56 != v58)
    {
      goto LABEL_88;
    }
  }

  else
  {
    *a7 = 0;
    v13 = v56;
    if (v56 != v58)
    {
      goto LABEL_88;
    }
  }
}

BOOL llvm::Regex::isLiteralERE(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return llvm::StringRef::find_first_of(v3, "()^$|*+?.[]\\{}", 14, 0) == -1;
}

void llvm::Regex::escape(std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v6 = *a1;
      if (memchr("()^$|*+?.[]\\{}", *a1, 0xFuLL))
      {
        std::string::push_back(a3, 92);
      }

      std::string::push_back(a3, v6);
      ++a1;
      --v3;
    }

    while (v3);
  }
}

uint64_t llvm::RemoteBisectClient::setupConnection(llvm::RemoteBisectClient *this)
{
  v14 = 0;
  memset(&v15, 0, sizeof(v15));
  v15.ai_socktype = 1;
  v15.ai_flags = 1;
  std::to_string(&__p, *(this + 6));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = getaddrinfo(0, p_p, &v15, &v14);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    v6 = llvm::errs(v2);
    v7 = "RemoteBisectClient: getaddrinfo() failed: ";
    goto LABEL_14;
  }

  v4 = socket(v14->ai_family, v14->ai_socktype, v14->ai_protocol);
  if (connect(v4, v14->ai_addr, v14->ai_addrlen) == -1)
  {
    v8 = __error();
    if (*v8 == 48 && (sleep(1u), v8 = connect(v4, v14->ai_addr, v14->ai_addrlen), v8 == -1))
    {
      v6 = llvm::errs(v8);
      v7 = "RemoteBisectClient: could not bind() to the socket after waiting: ";
    }

    else
    {
      v6 = llvm::errs(v8);
      v7 = "RemoteBisectClient: could not bind() to the socket: ";
    }

LABEL_14:
    v9 = llvm::raw_ostream::operator<<(v6, v7);
    v10 = __error();
    v11 = strerror(*v10);
    v12 = llvm::raw_ostream::operator<<(v9, v11);
    llvm::raw_ostream::operator<<(v12, "\n");
    llvm::report_fatal_error("Fatal error.", 1);
  }

  return v4;
}

BOOL llvm::RemoteBisectClient::shouldPerformBisectAction(llvm::RemoteBisectClient *a1, uint64_t *a2)
{
  *&v13[34] = *MEMORY[0x277D85DE8];
  v3 = llvm::RemoteBisectClient::setupConnection(a1);
  v9 = &v11;
  v11 = 0;
  v12 = 0;
  v10 = xmmword_2573A0150;
  v4 = *(a2 + 23);
  if ((v4 & 0x80) == 0)
  {
    if (*(a2 + 23))
    {
      v11 = v4 + 2;
      v12 = 8273;
      goto LABEL_6;
    }

LABEL_11:
    llvm::report_fatal_error("Empty key given to bisection query!", 1);
  }

  v4 = a2[1];
  if (!v4)
  {
    goto LABEL_11;
  }

  v11 = v4 + 2;
  v12 = 8273;
  a2 = *a2;
LABEL_6:
  llvm::SmallVectorImpl<char>::insert<std::__wrap_iter<char *>,void>(&v9, v13, a2, a2 + v4);
  v5 = send(v3, v9, v10, 0);
  if (v10 != v5)
  {
    llvm::report_fatal_error("RemoteBisectClient: couldn't send query", 1);
  }

  if (recv(v3, &v8, 1uLL, 0) != 1)
  {
    llvm::report_fatal_error("RemoteBisectClient: didn't receive response from bisect service", 1);
  }

  close(v3);
  v6 = v8;
  if (v9 != &v11)
  {
    free(v9);
  }

  return v6 != 0;
}

_BYTE *llvm::SmallVectorImpl<char>::insert<std::__wrap_iter<char *>,void>(uint64_t *a1, uint64_t a2, char *__src, char *a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  v9 = a2 - *a1;
  v10 = a4 - __src;
  v11 = v7 + a4 - __src;
  v12 = a1[2];
  if (*a1 + v7 == a2)
  {
    if (v12 < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (a4 == __src)
    {
      goto LABEL_75;
    }

    v24 = (v8 + v7);
    if (v10 < 8)
    {
      v25 = __src;
      goto LABEL_73;
    }

    if ((v7 + v8 - __src) < 0x20)
    {
      v25 = __src;
      goto LABEL_73;
    }

    if (v10 >= 0x20)
    {
      v40 = v10 & 0xFFFFFFFFFFFFFFE0;
      v42 = (__src + 16);
      v43 = (v7 + v8 + 16);
      v44 = v10 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v45 = *v42;
        *(v43 - 1) = *(v42 - 1);
        *v43 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 32;
      }

      while (v44);
      if (v10 == v40)
      {
        goto LABEL_74;
      }

      if ((v10 & 0x18) == 0)
      {
        v25 = &__src[v40];
        v24 += v40;
        do
        {
LABEL_73:
          v66 = *v25++;
          *v24++ = v66;
        }

        while (v25 != a4);
LABEL_74:
        v8 = *a1;
        v7 = a1[1];
LABEL_75:
        a1[1] = v7 + v10;
        return (v8 + v9);
      }
    }

    else
    {
      v40 = 0;
    }

    v24 += v10 & 0xFFFFFFFFFFFFFFF8;
    v25 = &__src[v10 & 0xFFFFFFFFFFFFFFF8];
    v46 = &__src[v40];
    v47 = (v8 + v7 + v40);
    v48 = v40 - (v10 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v49 = *v46;
      v46 += 8;
      *v47++ = v49;
      v48 += 8;
    }

    while (v48);
    if (v10 == (v10 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (v12 < v11)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v14 = (v8 + v9);
  v15 = (v8 + v7);
  v16 = v7 - v9;
  if (v7 - v9 < v10)
  {
    a1[1] = v7 + v10;
    if (v7 != v9)
    {
      v17 = (v8 + v10 + v9);
      v18 = (v8 + v9);
      v19 = v8;
      memcpy(v17, (v8 + v9), v7 - v9);
      v8 = v19;
      v14 = v18;
    }

    if (v16)
    {
      if (v16 > 0x1F && (v8 + a2 - &__src[v6]) >= 0x20)
      {
        v20 = &v14[v16 & 0xFFFFFFFFFFFFFFE0];
        v21 = v16 & 0x1F;
        v22 = &__src[v16 & 0xFFFFFFFFFFFFFFE0];
        v36 = (__src + 16);
        v37 = (v9 + v8 + 16);
        v38 = v16 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v39 = *v36;
          *(v37 - 1) = *(v36 - 1);
          *v37 = v39;
          v36 += 2;
          v37 += 2;
          v38 -= 32;
        }

        while (v38);
        if (v16 == (v16 & 0xFFFFFFFFFFFFFFE0))
        {
LABEL_12:
          if (v22 == a4)
          {
            return v14;
          }

LABEL_31:
          v33 = a4 - v22;
          if ((a4 - v22) < 8)
          {
            v34 = v22;
            goto LABEL_81;
          }

          if ((v7 + v8 - v22) < 0x20)
          {
            v34 = v22;
            goto LABEL_81;
          }

          if (v33 >= 0x20)
          {
            v41 = v33 & 0xFFFFFFFFFFFFFFE0;
            v58 = (v22 + 16);
            v59 = (v7 + v8 + 16);
            v60 = v33 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v61 = *v58;
              *(v59 - 1) = *(v58 - 1);
              *v59 = v61;
              v58 += 2;
              v59 += 2;
              v60 -= 32;
            }

            while (v60);
            if (v33 == v41)
            {
              return v14;
            }

            if ((v33 & 0x18) == 0)
            {
              v34 = &v22[v41];
              v15 += v41;
              do
              {
LABEL_81:
                v68 = *v34++;
                *v15++ = v68;
              }

              while (v34 != a4);
              return v14;
            }
          }

          else
          {
            v41 = 0;
          }

          v15 += v33 & 0xFFFFFFFFFFFFFFF8;
          v34 = &v22[v33 & 0xFFFFFFFFFFFFFFF8];
          v62 = &v22[v41];
          v63 = (v8 + v7 + v41);
          v64 = v41 - (v33 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v65 = *v62;
            v62 += 8;
            *v63++ = v65;
            v64 += 8;
          }

          while (v64);
          if (v33 == (v33 & 0xFFFFFFFFFFFFFFF8))
          {
            return v14;
          }

          goto LABEL_81;
        }
      }

      else
      {
        v20 = v14;
        v21 = v7 - v9;
        v22 = __src;
      }

      do
      {
        v23 = *v22++;
        *v20++ = v23;
        --v21;
      }

      while (v21);
      goto LABEL_12;
    }

    v22 = __src;
    if (__src != a4)
    {
      goto LABEL_31;
    }

    return v14;
  }

  if (a1[2] < v10 + v7)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v26 = &v15[-v10];
  if (a4 == __src)
  {
    a1[1] = v7 + v10;
    v27 = v26 - v14;
    if (v26 == v14)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v30 = *a1;
  v31 = (*a1 + v7);
  if (v10 < 8)
  {
    v32 = &v15[-v10];
    goto LABEL_77;
  }

  v32 = &v15[-v10];
  if ((&a4[v30] - &__src[v8]) < 0x20)
  {
    do
    {
LABEL_77:
      v67 = *v32++;
      *v31++ = v67;
    }

    while (v32 != v15);
    goto LABEL_78;
  }

  if (v10 < 0x20)
  {
    v35 = 0;
    goto LABEL_60;
  }

  v35 = v10 & 0xFFFFFFFFFFFFFFE0;
  v50 = (&__src[v7] - a4 + v8 + 16);
  v51 = (v7 + v30 + 16);
  v52 = v10 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v53 = *v50;
    *(v51 - 1) = *(v50 - 1);
    *v51 = v53;
    v50 += 2;
    v51 += 2;
    v52 -= 32;
  }

  while (v52);
  if (v10 == v35)
  {
    goto LABEL_78;
  }

  if ((v10 & 0x18) == 0)
  {
    v32 = &v26[v35];
    v31 += v35;
    goto LABEL_77;
  }

LABEL_60:
  v31 += v10 & 0xFFFFFFFFFFFFFFF8;
  v32 = &v26[v10 & 0xFFFFFFFFFFFFFFF8];
  v54 = (v8 + &__src[v7 + v35] - a4);
  v55 = (v30 + v7 + v35);
  v56 = v35 - (v10 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v57 = *v54++;
    *v55++ = v57;
    v56 += 8;
  }

  while (v56);
  if (v10 != (v10 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_77;
  }

LABEL_78:
  a1[1] += v10;
  v27 = v26 - v14;
  if (v26 != v14)
  {
LABEL_22:
    v28 = (v8 + v9);
    memmove(&v15[-v27], v14, v27);
    v14 = v28;
  }

LABEL_23:
  if (a4 == __src)
  {
    return v14;
  }

  return memmove(v14, __src, v10);
}

llvm::raw_ostream *llvm::RewriteBuffer::write(llvm::RewriteBuffer *this, llvm::raw_ostream *a2)
{
  llvm::RopePieceBTreeIterator::RopePieceBTreeIterator(&v12, *(this + 1));
  v3 = v13;
  if (v13)
  {
    v4 = 0;
  }

  else
  {
    v4 = v14 == 0;
  }

  if (!v4)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(v3 + 8);
        v6 = *(v3 + 12);
        v7 = *v3 + v5;
        v8 = (v6 - v5);
        v9 = *(a2 + 4);
        if (*(a2 + 3) - v9 < v8)
        {
          break;
        }

        if (v6 == v5)
        {
          llvm::RopePieceBTreeIterator::MoveToNextPiece(&v12);
          v3 = v13;
          if (!v13)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v10 = (v6 - v5);
          memcpy(v9, (v7 + 4), v8);
          *(a2 + 4) += v10;
          llvm::RopePieceBTreeIterator::MoveToNextPiece(&v12);
          v3 = v13;
          if (!v13)
          {
            goto LABEL_10;
          }
        }
      }

      llvm::raw_ostream::write(a2, (v7 + 4), v8);
      llvm::RopePieceBTreeIterator::MoveToNextPiece(&v12);
      v3 = v13;
      if (!v13)
      {
LABEL_10:
        if (!v14)
        {
          return a2;
        }
      }
    }
  }

  return a2;
}

uint64_t llvm::RewriteBuffer::RemoveText(uint64_t this, int a2, unsigned int a3, int a4)
{
  if (a3)
  {
    v6 = this;
    v7 = (2 * a2) | 1u;
    v8 = llvm::DeltaTree::getDeltaAt(this, (2 * a2) | 1u) + a2;
    llvm::RopePieceBTree::erase(v6 + 1, v8, a3);
    this = llvm::DeltaTree::AddDelta(v6, v7, -a3);
    if (a4)
    {
      llvm::RopePieceBTreeIterator::RopePieceBTreeIterator(&v22, v6[1]);
      this = llvm::RopePieceBTreeIterator::RopePieceBTreeIterator(&v20, v6[1]);
      v9 = 0;
      if (v8)
      {
        v10 = 1;
        do
        {
          while (1)
          {
            v11 = *(&v20 + 1);
            v12 = v21;
            v13 = *(*(&v20 + 1) + 8);
            if (*(**(&v20 + 1) + v13 + v21 + 4) == 10)
            {
              v22 = v20;
              v23 = v21;
              if (v21 + 1 >= *(*(&v20 + 1) + 12) - *(*(&v20 + 1) + 8))
              {
                this = llvm::RopePieceBTreeIterator::MoveToNextPiece(&v22);
                v12 = v21;
                v11 = *(&v20 + 1);
              }

              else
              {
                v23 = v21 + 1;
              }

              v13 = *(v11 + 8);
              v9 = v10;
            }

            v14 = v12 + 1;
            if (v14 < *(v11 + 12) - v13)
            {
              break;
            }

            this = llvm::RopePieceBTreeIterator::MoveToNextPiece(&v20);
            ++v10;
            if (!--v8)
            {
              goto LABEL_13;
            }
          }

          v21 = v14;
          ++v10;
          --v8;
        }

        while (v8);
      }

LABEL_13:
      v20 = v22;
      v15 = v23;
      v21 = v23;
      v16 = *(&v22 + 1);
      if (*(&v22 + 1) || v23)
      {
        v17 = 0xFFFFFFFFLL;
        while (1)
        {
          while (1)
          {
            v18 = *(v16 + 8);
            v19 = *(*v16 + v18 + v15 + 4);
            if (v19 > 0x20)
            {
              return this;
            }

            if (((1 << v19) & 0x100003A00) == 0)
            {
              if (v19 == 10)
              {
                if (v17)
                {
                  llvm::RopePieceBTree::erase(v6 + 1, v9, -v17);
                }

                return llvm::DeltaTree::AddDelta(v6, (2 * v9) | 1, v17);
              }

              return this;
            }

            if (++v15 < *(v16 + 12) - v18)
            {
              break;
            }

            this = llvm::RopePieceBTreeIterator::MoveToNextPiece(&v20);
            v16 = *(&v20 + 1);
            v15 = v21;
            v17 = (v17 - 1);
            if (!*(&v20 + 1))
            {
              goto LABEL_22;
            }
          }

          v21 = v15;
          v17 = (v17 - 1);
          if (!v16)
          {
LABEL_22:
            if (!v15)
            {
              return this;
            }
          }
        }
      }
    }
  }

  return this;
}

llvm::DeltaTree *llvm::RewriteBuffer::InsertText(llvm::DeltaTree *result, int a2, const char *a3, uint64_t a4, char a5)
{
  if (a4)
  {
    v7 = result;
    v8 = (2 * a2);
    DeltaAt = llvm::DeltaTree::getDeltaAt(result, a5 & 1 | (2 * a2));
    llvm::RewriteRope::MakeRopeString((v7 + 8), a3, &a3[a4], v12);
    llvm::RopePieceBTree::insert(v7 + 1, DeltaAt + a2, v12);
    if (v12[0])
    {
      if ((*v12[0])-- == 1)
      {
        MEMORY[0x259C63150]();
      }
    }

    return llvm::DeltaTree::AddDelta(v7, v8, a4);
  }

  return result;
}

void llvm::RewriteBuffer::ReplaceText(_anonymous_namespace_::RopePieceBTreeNode **a1, int a2, unsigned int a3, const char *a4, uint64_t a5)
{
  v10 = (2 * a2) | 1u;
  DeltaAt = llvm::DeltaTree::getDeltaAt(a1, (2 * a2) | 1u);
  if (a3)
  {
    llvm::RopePieceBTree::erase(a1 + 1, DeltaAt + a2, a3);
  }

  if (a5 && (llvm::RewriteRope::MakeRopeString((a1 + 1), a4, &a4[a5], v13), llvm::RopePieceBTree::insert(a1 + 1, DeltaAt + a2, v13), v13[0]) && (v12 = *v13[0] == 1, --*v13[0], v12))
  {
    MEMORY[0x259C63150]();
    if (a5 == a3)
    {
      return;
    }
  }

  else if (a5 == a3)
  {
    return;
  }

  llvm::DeltaTree::AddDelta(a1, v10, a5 - a3);
}

uint64_t llvm::RopePieceBTreeIterator::RopePieceBTreeIterator(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 8) = 0;
  for (*(this + 16) = 0; a2; a2 = a2[1])
  {
    if (*(a2 + 4))
    {
      break;
    }
  }

  do
  {
    if (*(a2 + 5))
    {
      *this = a2;
      *(this + 8) = a2 + 1;
      *(this + 16) = 0;
      return this;
    }

    a2 = a2[34];
  }

  while (a2);
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  for (*(this + 16) = 0; a2; a2 = a2[1])
  {
    if (*(a2 + 4))
    {
      break;
    }
  }

  do
  {
    if (*(a2 + 5))
    {
      *this = a2;
      *(this + 8) = a2 + 1;
      *(this + 16) = 0;
      return this;
    }

    a2 = a2[34];
  }

  while (a2);
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t *llvm::RopePieceBTreeIterator::MoveToNextPiece(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (v2 == *this + 16 * (*(*this + 5) - 1) + 8)
  {
    do
    {
      v1 = *(v1 + 272);
      if (!v1)
      {
        *this = 0;
        this[1] = 0;
        *(this + 4) = 0;
        return this;
      }
    }

    while (!*(v1 + 5));
    *this = v1;
    this[1] = v1 + 8;
    *(this + 4) = 0;
  }

  else
  {
    *(this + 4) = 0;
    this[1] = v2 + 16;
  }

  return this;
}

void llvm::RopePieceBTree::RopePieceBTree(llvm::RopePieceBTree *this)
{
  operator new();
}

{
  operator new();
}

void llvm::RopePieceBTree::RopePieceBTree(llvm::RopePieceBTree *this, const llvm::RopePieceBTree *a2)
{
  operator new();
}

{
  operator new();
}

void llvm::RopePieceBTree::~RopePieceBTree(_anonymous_namespace_::RopePieceBTreeNode **this)
{
}

{
}

void anonymous namespace::RopePieceBTreeNode::Destroy(_anonymous_namespace_::RopePieceBTreeNode *this)
{
  if (!this || (*(this + 4) & 1) == 0)
  {
    v8 = *(this + 5);
    if (*(this + 5))
    {
      v9 = (this + 8);
      do
      {
        v10 = *v9++;
        --v8;
      }

      while (v8);
    }

LABEL_81:

    JUMPOUT(0x259C63180);
  }

  v2 = *(this + 33);
  v3 = *(this + 34);
  if (v2)
  {
    *v2 = v3;
    if (!v3)
    {
LABEL_6:
      for (i = *(this + 5); i; *(v5 + 1) = 0)
      {
        *(this + 5) = --i;
        v5 = this + 16 * i + 8;
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          v7 = (*v6)-- == 1;
          if (v7)
          {
            MEMORY[0x259C63150]();
            i = *(this + 5);
          }
        }
      }

      *this = 0;
      v11 = *(this + 31);
      if (v11)
      {
        v7 = (*v11)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v12 = *(this + 29);
      if (v12)
      {
        v7 = (*v12)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v13 = *(this + 27);
      if (v13)
      {
        v7 = (*v13)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v14 = *(this + 25);
      if (v14)
      {
        v7 = (*v14)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v15 = *(this + 23);
      if (v15)
      {
        v7 = (*v15)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v16 = *(this + 21);
      if (v16)
      {
        v7 = (*v16)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v17 = *(this + 19);
      if (v17)
      {
        v7 = (*v17)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v18 = *(this + 17);
      if (v18)
      {
        v7 = (*v18)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v19 = *(this + 15);
      if (v19)
      {
        v7 = (*v19)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v20 = *(this + 13);
      if (v20)
      {
        v7 = (*v20)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v21 = *(this + 11);
      if (v21)
      {
        v7 = (*v21)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v22 = *(this + 9);
      if (v22)
      {
        v7 = (*v22)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v23 = *(this + 7);
      if (v23)
      {
        v7 = (*v23)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v24 = *(this + 5);
      if (v24)
      {
        v7 = (*v24)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v25 = *(this + 3);
      if (v25)
      {
        v7 = (*v25)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      v26 = *(this + 1);
      if (v26)
      {
        v7 = (*v26)-- == 1;
        if (v7)
        {
          MEMORY[0x259C63150]();
        }
      }

      goto LABEL_81;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  *(v3 + 264) = v2;
  goto LABEL_6;
}

_anonymous_namespace_::RopePieceBTreeNode **llvm::RopePieceBTree::clear(_anonymous_namespace_::RopePieceBTreeNode **this)
{
  v1 = *this;
  if (!*this || (*(v1 + 4) & 1) == 0)
  {
    operator new();
  }

  for (i = *(v1 + 5); i; *(v3 + 8) = 0)
  {
    *(v1 + 5) = --i;
    v3 = v1 + 16 * i + 8;
    this = *v3;
    *v3 = 0;
    if (this)
    {
      if ((*this)-- == 1)
      {
        this = MEMORY[0x259C63150]();
        i = *(v1 + 5);
      }
    }
  }

  *v1 = 0;
  return this;
}

uint64_t llvm::RopePieceBTree::insert(_anonymous_namespace_::RopePieceBTreeNode **a1, unsigned int a2, uint64_t a3)
{
  {
    operator new();
  }

  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t anonymous namespace::RopePieceBTreeNode::split(_anonymous_namespace_::RopePieceBTreeNode *this, unsigned int a2)
{
  if (this && (*(this + 4) & 1) != 0)
  {
    if (a2)
    {
      v2 = *this;
      if (*this == a2)
      {
        return 0;
      }

      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v8;
        v11 = this + 16 * v9 + 8;
        v13 = *(v11 + 2);
        v12 = *(v11 + 3);
        v8 += v12 - v13;
        ++v9;
      }

      while (v8 <= a2);
      v14 = a2 - v10;
      if (a2 == v10)
      {
        return 0;
      }

      v16 = *v11;
      if (*v11)
      {
        ++*v16;
      }

      v19 = v16;
      v20 = v13 + v14;
      v21 = v12;
      *(v11 + 3) = v13 + v14;
      *this = v14 + v2 - v12 + v13;
      if (v16)
      {
        if ((*v16)-- == 1)
        {
          v18 = result;
          MEMORY[0x259C63150](v16, 0x1000C8077774924);
          return v18;
        }
      }

      return result;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (*this == a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = -1;
  do
  {
    v6 = v4;
    v4 += **(this + ++v5 + 1);
  }

  while (v4 <= a2);
  v7 = a2 - v6;
  if (!v7)
  {
    return 0;
  }

  if (result)
  {
  }

  return result;
}

uint64_t anonymous namespace::RopePieceBTreeNode::insert(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 && (*(a1 + 4) & 1) != 0)
  {
  }

  else
  {
    if (*a1 == a2)
    {
      v4 = *(a1 + 5) - 1;
      v5 = a2 - **(a1 + 8 * v4 + 8);
    }

    else
    {
      v6 = 0;
      LODWORD(v4) = -1;
      do
      {
        v5 = v6;
        v4 = (v4 + 1);
        v6 += **(a1 + 8 + 8 * v4);
      }

      while (v6 < a2);
    }

    *a1 = *(a3 + 12) + *a1 - *(a3 + 8);
    if (result)
    {
    }
  }

  return result;
}

void llvm::RopePieceBTree::erase(_anonymous_namespace_::RopePieceBTreeNode **this, unsigned int a2, unsigned int a3)
{
  {
    operator new();
  }

  v6 = *this;
}

void anonymous namespace::RopePieceBTreeNode::erase(_anonymous_namespace_::RopePieceBTreeNode *this, unsigned int a2, unsigned int a3)
{
  if (this)
  {
    v5 = this;
    if ((*(this + 4) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_3:
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v6 = *(this + 4 * v7 + 5) + v6 - *(this + 4 * v7 + 4);
        ++v7;
      }

      while (v6 < a2);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v18 = 0;
    v19 = a3 + a2;
    v20 = this + 8;
    v21 = v7;
    do
    {
      v22 = v6;
      v23 = v21;
      v24 = v18;
      v6 += *&v20[16 * v21 + 12] - *&v20[16 * v21 + 8];
      ++v21;
      --v18;
    }

    while (v19 > v6);
    v25 = v19 == v6;
    if (v19 == v6)
    {
      v26 = v23 + 1;
    }

    else
    {
      v26 = v23;
    }

    if (v19 != v6)
    {
      v6 = v22;
    }

    if (v26 != v7)
    {
      v40 = v26 - v7;
      v41 = v6;
      v27 = *(this + 5);
      v28 = this;
      v39 = v25;
      if (v26 != v27)
      {
        v34 = v7;
        do
        {
          v35 = &v20[16 * v26];
          v36 = *v35;
          if (*v35)
          {
            ++*v36;
          }

          v37 = &v20[16 * v34];
          v38 = *v37;
          *v37 = v36;
          if (v38)
          {
            v33 = (*v38)-- == 1;
            if (v33)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
              this = v28;
              LOBYTE(v27) = *(v28 + 5);
            }
          }

          *(v37 + 1) = *(v35 + 1);
          ++v26;
          ++v34;
        }

        while (v26 != v27);
      }

      v29 = v26 - v40;
      if (v27 - v29 >= 1)
      {
        v30 = &v20[16 * v29];
        v31 = v27 - (v26 - v39 + v24) + 1;
        do
        {
          v32 = *v30;
          *v30 = 0;
          if (v32)
          {
            v33 = (*v32)-- == 1;
            if (v33)
            {
              MEMORY[0x259C63150](v32, 0x1000C8077774924);
              this = v28;
            }
          }

          *(v30 + 1) = 0;
          v30 += 16;
          --v31;
        }

        while (v31 > 1);
        LOBYTE(v27) = *(this + 5);
      }

      *(this + 5) = v27 - v40;
      a3 -= v41 - a2;
      *this -= v41 - a2;
    }

    if (a3)
    {
      *&v20[16 * v7 + 8] += a3;
      *this -= a3;
    }
  }

  else
  {
    v5 = 0;
    while (1)
    {
LABEL_10:
      *v5 -= a3;
      v8 = v5 + 8;
      this = *(v5 + 1);
      v9 = *this;
      if (a2 >= *this)
      {
        v10 = 0;
        do
        {
          a2 -= v9;
          this = *&v8[8 * ++v10];
          v9 = *this;
        }

        while (a2 >= *this);
      }

      else
      {
        v10 = 0;
      }

      if (!a3)
      {
        break;
      }

      if (a2 + a3 >= v9)
      {
        if (a2)
        {
          v9 -= a2;
          ++v10;
        }

        else
        {
          v11 = *(v5 + 5) - 1;
          *(v5 + 5) = v11;
          v12 = v11 - v10;
          if (v12)
          {
            memmove(&v8[8 * v10], &v8[8 * (v10 + 1)], 8 * v12);
          }
        }

        a3 -= v9;
        if (!a3)
        {
          return;
        }

        v13 = &v8[8 * v10];
        v14 = &v8[8 * (v10 + 1)];
        while (1)
        {
          this = *v13;
          v15 = **v13;
          if (a3 < v15)
          {
            break;
          }

          v16 = *(v5 + 5) - 1;
          *(v5 + 5) = v16;
          v17 = v16 - v10;
          if (v17)
          {
            memmove(v13, v14, 8 * v17);
          }

          a3 -= v15;
          if (!a3)
          {
            return;
          }
        }

        a2 = 0;
      }

      v5 = this;
      if (*(this + 4) == 1)
      {
        goto LABEL_3;
      }
    }
  }
}

void *llvm::RewriteRope::MakeRopeString@<X0>(llvm::RewriteRope *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3 - a2;
  v7 = *(this + 4);
  if ((v7 + a3 - a2) > 0xFF0)
  {
    if (v6 >= 0xFF1)
    {
      operator new[]();
    }

    operator new[]();
  }

  result = memcpy((*(this + 1) + v7 + 4), a2, v6);
  v9 = *(this + 4);
  v10 = v9 + v6;
  *(this + 4) = v10;
  v11 = *(this + 1);
  if (v11)
  {
    ++*v11;
  }

  *a4 = v11;
  *(a4 + 8) = v9;
  *(a4 + 12) = v10;
  return result;
}

uint64_t anonymous namespace::RopePieceBTreeLeaf::insert(uint64_t a1, unsigned int a2, _DWORD **a3)
{
  v5 = (a1 + 5);
  v4 = *(a1 + 5);
  if (v4 == 16)
  {
    operator new();
  }

  if (*a1 == a2)
  {
    v6 = a3;
    v7 = a1 + 16 * *(a1 + 5);
    v8 = *a3;
    if (!*a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = a3;
  if (a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v9 = *(a1 + 8 + 16 * v10 + 12) + v9 - *(a1 + 8 + 16 * v10 + 8);
      ++v10;
    }

    while (v9 < a2);
    if (v10 == v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    if (!*(a1 + 5))
    {
      goto LABEL_12;
    }
  }

  v14 = a1 + 8;
  do
  {
    v15 = v4 - 1;
    v16 = v14 + 16 * (v4 - 1);
    v17 = *v16;
    if (*v16)
    {
      ++*v17;
    }

    v18 = v14 + 16 * v4;
    v19 = *v18;
    *v18 = v17;
    if (v19)
    {
      v12 = (*v19)-- == 1;
      if (v12)
      {
        MEMORY[0x259C63150]();
      }
    }

    *(v18 + 8) = *(v16 + 8);
    v4 = v15;
  }

  while (v10 != v15);
LABEL_12:
  v7 = a1 + 16 * v10;
  v8 = *a3;
  if (*a3)
  {
LABEL_13:
    ++*v8;
  }

LABEL_14:
  v11 = *(v7 + 8);
  *(v7 + 8) = v8;
  if (v11)
  {
    v12 = (*v11)-- == 1;
    if (v12)
    {
      MEMORY[0x259C63150]();
    }
  }

  *(v7 + 16) = v6[1];
  ++*v5;
  *a1 += *(v6 + 3) - *(v6 + 2);
  return 0;
}

uint64_t anonymous namespace::RopePieceBTreeInterior::HandleChildPiece(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 5);
  if (v5 == 16)
  {
    operator new();
  }

  v6 = (a2 + 1);
  if (v6 != v5)
  {
    memmove((a1 + 8 + 8 * (a2 + 2)), (a1 + 8 + 8 * v6), 8 * (v5 + ~a2));
    LOBYTE(v5) = *(a1 + 5);
  }

  result = 0;
  *(a1 + 8 * v6 + 8) = a3;
  *(a1 + 5) = v5 + 1;
  return result;
}

void llvm::RISCVAttributeParser::stackAlign(llvm::RISCVAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  ULEB128 = llvm::DataExtractor::getULEB128((this + 128), this + 19, (this + 160));
  v7 = ULEB128;
  if (ULEB128)
  {
    v8 = 20;
    v9 = ULEB128;
    do
    {
      *(__p + v8--) = (v9 % 0xA) | 0x30;
      v10 = v9 > 9;
      v9 /= 0xAuLL;
    }

    while (v10);
    v11 = v8 + 1;
    v12 = 20 - v8;
    if ((20 - v8) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  else
  {
    BYTE4(v24) = 48;
    v11 = 20;
    v12 = 1;
  }

  if (v12 > 0x16)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v11 != 21)
  {
    memcpy(&__dst, __p + v11, v12);
  }

  __dst.__r_.__value_.__s.__data_[v12] = 0;
  v13 = std::string::insert(&__dst, 0, "Stack alignment is ");
  v14 = v13->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v20 = 6;
  strcpy(v19, "-bytes");
  v15 = std::string::append(&v22, v19, 6uLL);
  v16 = v15->__r_.__value_.__r.__words[2];
  *__p = *&v15->__r_.__value_.__l.__data_;
  v24 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((v20 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  operator delete(v19[0]);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_26:
  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_13:
  if (v24 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v24 >= 0)
  {
    v18 = SHIBYTE(v24);
  }

  else
  {
    v18 = __p[1];
  }

  llvm::ELFAttributeParser::printAttribute(this, a2, v7, v17, v18);
  *a3 = 0;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void llvm::RISCVAttributeParser::atomicAbi(llvm::RISCVAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  ULEB128 = llvm::DataExtractor::getULEB128((this + 128), this + 19, (this + 160));
  v7 = ULEB128;
  if (ULEB128)
  {
    v8 = 20;
    v9 = ULEB128;
    do
    {
      *(__p + v8--) = (v9 % 0xA) | 0x30;
      v10 = v9 > 9;
      v9 /= 0xAuLL;
    }

    while (v10);
    v11 = v8 + 1;
    v12 = 20 - v8;
    if ((20 - v8) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  else
  {
    BYTE4(v19) = 48;
    v11 = 20;
    v12 = 1;
  }

  if (v12 > 0x16)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v11 != 21)
  {
    memcpy(&__dst, __p + v11, v12);
  }

  __dst.__r_.__value_.__s.__data_[v12] = 0;
  v13 = std::string::insert(&__dst, 0, "Atomic ABI is ");
  v14 = v13->__r_.__value_.__r.__words[2];
  *__p = *&v13->__r_.__value_.__l.__data_;
  v19 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v19 >= 0)
  {
    v16 = SHIBYTE(v19);
  }

  else
  {
    v16 = __p[1];
  }

  llvm::ELFAttributeParser::printAttribute(this, a2, v7, v15, v16);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  *a3 = 0;
}

uint64_t llvm::RISCVAttributeParser::handler@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a2 = 0;
  v4 = a3 - 4;
  if ((a3 - 4) > 0xA || ((0x557u >> v4) & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(&off_27983C968 + v4);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = (this + (v7 >> 1));
  if ((v7 & 1) == 0)
  {
    v10 = a4;
    this = v6(v8);
    if (*v10)
    {
      return this;
    }

    goto LABEL_7;
  }

  v10 = a4;
  this = (*(*v8 + v6))();
  if (!*v10)
  {
LABEL_7:
    a4 = v10;
    *a2 = 1;
LABEL_8:
    *a4 = 0;
  }

  return this;
}

void llvm::RISCVAttributeParser::~RISCVAttributeParser(llvm::RISCVAttributeParser *this)
{
  llvm::ELFAttributeParser::~ELFAttributeParser(this);

  JUMPOUT(0x259C63180);
}

BOOL llvm::RISCVISAUtils::compareExtension(uint64_t a1, uint64_t a2)
{
  ExtensionRank = getExtensionRank(a1);
  v5 = getExtensionRank(a2);
  if (ExtensionRank != v5)
  {
    return ExtensionRank < v5;
  }

  v6 = *(a2 + 23);
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (v6 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    return v13 < 0;
  }

  else
  {
    return v8 < v10;
  }
}

uint64_t getExtensionRank(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = *a1;
  if (v1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = *v3;
  switch(v4)
  {
    case 's':
      return 128;
    case 'x':
      return 192;
    case 'z':
      v5 = v3[1];
      if (v5 == 105)
      {
        return 64;
      }

      if (v5 == 101)
      {
        return 65;
      }

      v8 = v5;
      v9 = memchr("mafdqlcbkjtpvnh", v5, 0xFuLL);
      v10 = v9 - "mafdqlcbkjtpvnh";
      if (v9)
      {
        v11 = v10 == -1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return (v8 - 80) | 0x40u;
      }

      else
      {
        return (v10 + 2) | 0x40u;
      }
  }

  if ((v1 & 0x80000000) == 0)
  {
    if (v1 == 1)
    {
      v7 = *a1;
      if (v7 != 105)
      {
        goto LABEL_15;
      }

      return 0;
    }

    return 256;
  }

  if (*(a1 + 1) != 1)
  {
    return 256;
  }

  LOBYTE(v2) = *v2;
  v7 = v2;
  if (v2 == 105)
  {
    return 0;
  }

LABEL_15:
  if (v7 == 101)
  {
    return 1;
  }

  v12 = v2;
  v13 = memchr("mafdqlcbkjtpvnh", v2, 0xFuLL);
  if (!v13 || v13 - "mafdqlcbkjtpvnh" == -1)
  {
    return (v12 - 80);
  }

  else
  {
    return (v13 - "mafdqlcbkjtpvnh") + 2;
  }
}

unint64_t llvm::ScaledNumbers::multiply64(llvm::ScaledNumbers *this, uint64_t a2)
{
  v2 = a2 * HIDWORD(this);
  v3 = HIDWORD(a2) * this;
  v4 = a2 * this;
  v5 = HIDWORD(v2) + HIDWORD(a2) * HIDWORD(this);
  result = ((v2 + v3) << 32) + v4;
  v7 = (__PAIR128__(v5, v4) + __PAIR128__(HIDWORD(v3), v2 << 32)) >> 64;
  if (result < v4 + (v2 << 32))
  {
    ++v7;
  }

  if (v7)
  {
    v8 = __clz(v7);
    if (v8)
    {
      v7 = (result >> -v8) | (v7 << v8);
    }

    v9 = result >> (v8 ^ 0x3Fu);
    v10 = v7 + 1;
    if (v7 == -1)
    {
      v10 = 0x8000000000000000;
    }

    if (v9)
    {
      return v10;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

unint64_t llvm::ScaledNumbers::divide32(llvm::ScaledNumbers *this, unsigned int a2)
{
  v2 = __clz(this) + 32;
  v3 = this << v2;
  v4 = v3 / a2;
  if (HIDWORD(v4))
  {
    v5 = __clz(v4);
    v6 = v4 >> (32 - v5);
    v7 = 32 - v5 - v2;
    v8 = v4 >> (31 - v5);
    v9 = v6 + 1;
    if (v6 == -1)
    {
      v9 = 0x80000000;
      v10 = v7 + 1;
    }

    else
    {
      v10 = v7;
    }

    v11 = (v8 & 1) == 0;
    if (v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }

    if (!v11)
    {
      v7 = v10;
    }

    return v12 | (v7 << 32);
  }

  else if (v3 % a2 >= a2 - (a2 >> 1) && (v14 = __CFADD__(v4, 1), LODWORD(v4) = v4 + 1, v14))
  {
    return ((1 - v2) << 32) | 0x80000000;
  }

  else
  {
    return v4 | (-v2 << 32);
  }
}

unint64_t llvm::ScaledNumbers::divide64(unint64_t this, unint64_t a2)
{
  v2 = __clz(__rbit64(a2));
  v3 = -v2;
  v4 = a2 >> v2;
  if (v4 != 1)
  {
    v5 = __clz(this);
    v6 = v3 - v5;
    v7 = this << v5;
    v8 = (this << v5) / v4;
    v9 = v7 - v8 * v4;
    if (v9)
    {
      do
      {
        --v6;
        v10 = v9 < 0;
        v11 = 2 * v9;
        v12 = 2 * v8;
        v14 = v10 || v4 <= v11;
        if (v14)
        {
          v15 = v4;
        }

        else
        {
          v15 = 0;
        }

        v9 = v11 - v15;
        v8 = v14 & 1 | (2 * v8);
      }

      while ((v12 & 0x8000000000000000) == 0 && v9);
    }

    v16 = v4 - (v4 >> 1);
    v17 = v8 + 1;
    if (v8 == -1)
    {
      v17 = 0x8000000000000000;
    }

    if (v9 >= v16)
    {
      return v17;
    }

    else
    {
      return v8;
    }
  }

  return this;
}

uint64_t llvm::ScaledNumbers::compareImpl(unint64_t this, unint64_t a2, char a3)
{
  v3 = this >> a3 << a3 < this;
  if (this >> a3 > a2)
  {
    v3 = 1;
  }

  if (this >> a3 >= a2)
  {
    return v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void llvm::ScaledNumberBase::toString(unint64_t this@<X0>, unsigned int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    a5[23] = 3;
    *a5 = 3157552;
    return;
  }

  v6 = a4;
  if (!a2)
  {
    v79 = a3;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    memset(&v84, 0, sizeof(v84));
    v15 = this;
    goto LABEL_22;
  }

  if (a2 < 1)
  {
    if (a2 < 0xFFFFFFC1)
    {
      if (a2 == -64)
      {
        v79 = a3;
        v12 = 0;
        v13 = 0;
        memset(&v84, 0, sizeof(v84));
        v16 = 1;
        v14 = this;
LABEL_36:
        std::string::push_back(&v84, 48);
        size = 0;
        v19 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        goto LABEL_37;
      }

      if (a2 >= 0xFFFFFF89)
      {
        v12 = -64 - a2;
      }

      else
      {
        v12 = 0;
      }

      if (a2 >= 0xFFFFFF89)
      {
        v13 = this << a2 >> 8;
      }

      else
      {
        v13 = 0;
      }

      if (a2 >= 0xFFFFFF89)
      {
        v14 = this >> -a2;
      }

      else
      {
        v14 = 0;
      }

      v15 = 0;
      v16 = v14 != 0;
      if (v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v15 = this >> -a2;
      v14 = this << a2;
      v16 = this << a2 != 0;
      if (v15 | (this << a2))
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v7 = __clz(this);
    if (v7 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v7;
    }

    v9 = this << v8;
    if (v7 >= a2)
    {
      v10 = this << v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = a2 - v8;
    v12 = 0;
    if (v7)
    {
      LOWORD(a2) = v11;
    }

    v13 = 0;
    v14 = 0;
    if (v7)
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    if (v7)
    {
      this = v9;
    }

    v16 = 0;
    if (v15)
    {
LABEL_18:
      v79 = a3;
      memset(&v84, 0, sizeof(v84));
      if (!v15)
      {
        goto LABEL_36;
      }

LABEL_22:
      v17 = a4;
      do
      {
        std::string::push_back(&v84, (v15 % 0xA) | 0x30);
        v28 = v15 > 9;
        v15 /= 0xAuLL;
      }

      while (v28);
      size = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
      v19 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = v84.__r_.__value_.__l.__size_;
      }

      LODWORD(v6) = v17;
LABEL_37:
      v25 = &v84;
      if ((v19 & 0x80u) == 0)
      {
        v26 = v19;
      }

      else
      {
        v26 = v84.__r_.__value_.__l.__size_;
        v25 = v84.__r_.__value_.__r.__words[0];
      }

      v27 = (v25 + v26 - 1);
      if (v26)
      {
        v28 = v27 > v25;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v29 = &v25->__r_.__value_.__s.__data_[1];
        do
        {
          v30 = *(v29 - 1);
          *(v29 - 1) = v27->__r_.__value_.__s.__data_[0];
          v27->__r_.__value_.__s.__data_[0] = v30;
          v27 = (v27 - 1);
          v31 = v29++ >= v27;
        }

        while (!v31);
      }

      if (!v16)
      {
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v48 = v84.__r_.__value_.__l.__size_;
        }

        v49 = v48 + 2;
        if (v48 + 2 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v49 >= 0x17)
          {
            operator new();
          }

          *(a5 + 1) = 0;
          *(a5 + 2) = 0;
          *a5 = 0;
          a5[23] = v49;
          if (v48)
          {
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = &v84;
            }

            else
            {
              v50 = v84.__r_.__value_.__r.__words[0];
            }

            memmove(a5, v50, v48);
          }

          strcpy(&a5[v48], ".0");
          goto LABEL_167;
        }

        goto LABEL_199;
      }

      std::string::push_back(&v84, 46);
      v32 = 1 << -v79;
      v33 = v13 & 0xF0FFFFFFFFFFFFFFLL | ((v14 & 0xF) << 56);
      v34 = v14 >> 4;
      v35 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v84.__r_.__value_.__l.__size_;
      }

      v78 = v35;
      v36 = v6;
      v80 = v6;
      if (v6)
      {
        v37 = 1;
        do
        {
          v38 = v12;
          v39 = v37;
          if (v12)
          {
            --v12;
          }

          else
          {
            v12 = 0;
          }

          if (v38)
          {
            v40 = 5;
          }

          else
          {
            v40 = 10;
          }

          v41 = 10 * v33;
          v42 = 10 * v34 + (v41 >> 60);
          v43 = v42 >> 60;
          if (v42 >> 61 >= 5)
          {
            LOBYTE(v43) = (v42 >> 60) - 10;
          }

          std::string::push_back(&v84, v43 | 0x30);
          if (size)
          {
            goto LABEL_66;
          }

          v44 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
          v45 = &v84;
          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v84.__r_.__value_.__l.__size_;
            v45 = v84.__r_.__value_.__r.__words[0];
          }

          if (v45->__r_.__value_.__s.__data_[v44 - 1] != 48)
          {
LABEL_66:
            ++size;
          }

          else
          {
            size = 0;
          }

          v32 *= v40;
          if (!v32)
          {
            goto LABEL_103;
          }

          v34 = v42 & 0xFFFFFFFFFFFFFFFLL;
          if (16 * v42 < v32 >> 1)
          {
            goto LABEL_103;
          }

          v33 = v41 & 0xFFFFFFFFFFFFFFELL;
          v37 = v39 + 1;
        }

        while (size <= v36 || v39 < 2);
        v46 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        v47 = a5;
      }

      else
      {
        do
        {
          if (v12)
          {
            v51 = v12 - 1;
          }

          else
          {
            v51 = 0;
          }

          if (v12)
          {
            v52 = 5;
          }

          else
          {
            v52 = 10;
          }

          v53 = 10 * v33;
          v54 = 10 * v34 + (v53 >> 60);
          v55 = v54 >> 60;
          if (v54 >> 61 >= 5)
          {
            LOBYTE(v55) = (v54 >> 60) - 10;
          }

          std::string::push_back(&v84, v55 | 0x30);
          if (size)
          {
            goto LABEL_100;
          }

          v56 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &v84;
          }

          else
          {
            v57 = v84.__r_.__value_.__r.__words[0];
          }

          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v56 = v84.__r_.__value_.__l.__size_;
          }

          if (v57->__r_.__value_.__s.__data_[v56 - 1] != 48)
          {
LABEL_100:
            ++size;
          }

          else
          {
            size = 0;
          }

          v32 *= v52;
          if (!v32)
          {
            break;
          }

          v33 = v53 & 0xFFFFFFFFFFFFFFELL;
          v34 = v54 & 0xFFFFFFFFFFFFFFFLL;
          v31 = 16 * v54 >= v32 >> 1;
          v12 = v51;
        }

        while (v31);
LABEL_103:
        v46 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        v47 = a5;
        if (!v80)
        {
          goto LABEL_115;
        }
      }

      if (v36 < size)
      {
        v58 = v84.__r_.__value_.__l.__size_;
        if ((v46 & 0x80u) == 0)
        {
          v58 = v46;
        }

        if (v36 - size + v58 <= v78 + 1)
        {
          v59 = v78 + 1;
        }

        else
        {
          v59 = v36 - size + v58;
        }

        if (v59 < v58)
        {
          if ((v46 & 0x80) != 0)
          {
            v60 = v84.__r_.__value_.__r.__words[0];
            if (*(v84.__r_.__value_.__r.__words[0] + v59) - 53 < 5)
            {
LABEL_113:
              if (v59)
              {
                v61 = (v60 + v59);
                v62 = 1;
                v63 = (v60 + v59);
                while (1)
                {
                  v68 = HIBYTE(v63[-1].__r_.__value_.__r.__words[2]);
                  v63 = (v63 - 1);
                  v67 = v68;
                  if (v68 != 46)
                  {
                    if (v67 != 57)
                    {
                      v62 = 0;
                      *(&v61[-1].__r_.__value_.__s + 23) = v67 + 1;
                      goto LABEL_185;
                    }

                    v63->__r_.__value_.__s.__data_[0] = 48;
                  }

                  v61 = v63;
                  if (v63 == v60)
                  {
                    goto LABEL_185;
                  }
                }
              }

              v62 = 1;
LABEL_185:
              std::string::basic_string[abi:nn200100](&__b, v62, 49);
              std::string::substr[abi:nn200100](&v84, 0, v59, v81);
              if ((v82 & 0x80u) == 0)
              {
                v74 = v81;
              }

              else
              {
                v74 = v81[0];
              }

              if ((v82 & 0x80u) == 0)
              {
                v75 = v82;
              }

              else
              {
                v75 = v81[1];
              }

              v76 = std::string::append(&__b, v74, v75);
              v77 = v76->__r_.__value_.__r.__words[2];
              *__p = *&v76->__r_.__value_.__l.__data_;
              v87 = v77;
              v76->__r_.__value_.__l.__size_ = 0;
              v76->__r_.__value_.__r.__words[2] = 0;
              v76->__r_.__value_.__r.__words[0] = 0;
              stripTrailingZeros(v47, __p);
              if (SHIBYTE(v87) < 0)
              {
                operator delete(__p[0]);
                if ((v82 & 0x80000000) == 0)
                {
LABEL_193:
                  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_167;
                  }

LABEL_197:
                  v73 = __b.__r_.__value_.__r.__words[0];
LABEL_198:
                  operator delete(v73);
LABEL_167:
                  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v84.__r_.__value_.__l.__data_);
                  }

                  return;
                }
              }

              else if ((v82 & 0x80000000) == 0)
              {
                goto LABEL_193;
              }

              operator delete(v81[0]);
              if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_167;
              }

              goto LABEL_197;
            }
          }

          else
          {
            v60 = &v84;
            if (v84.__r_.__value_.__s.__data_[v59] - 53 < 5)
            {
              goto LABEL_113;
            }
          }

          std::string::substr[abi:nn200100](&v84, 0, v59, __p);
          stripTrailingZeros(v47, __p);
          if ((SHIBYTE(v87) & 0x80000000) == 0)
          {
            goto LABEL_167;
          }

          v73 = __p[0];
          goto LABEL_198;
        }

        if ((v46 & 0x80u) == 0)
        {
          v64 = &v84;
        }

        else
        {
          v64 = v84.__r_.__value_.__r.__words[0];
        }

        v65 = v58;
        while (v65)
        {
          v71 = v64->__r_.__value_.__s.__data_[--v65];
          if (v71 != 48)
          {
            goto LABEL_155;
          }
        }

        goto LABEL_154;
      }

LABEL_115:
      if ((v46 & 0x80u) == 0)
      {
        v64 = &v84;
      }

      else
      {
        v64 = v84.__r_.__value_.__r.__words[0];
      }

      if ((v46 & 0x80u) == 0)
      {
        v58 = v46;
      }

      else
      {
        v58 = v84.__r_.__value_.__l.__size_;
      }

      v65 = v58;
      while (v65)
      {
        v66 = v64->__r_.__value_.__s.__data_[--v65];
        if (v66 != 48)
        {
          goto LABEL_155;
        }
      }

LABEL_154:
      v65 = -1;
LABEL_155:
      if (v64->__r_.__value_.__s.__data_[v65] == 46)
      {
        ++v65;
      }

      if (v58 >= v65 + 1)
      {
        v72 = v65 + 1;
      }

      else
      {
        v72 = v58;
      }

      if (v72 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v72 >= 0x17)
        {
          operator new();
        }

        v47[23] = v72;
        if (v72)
        {
          memmove(v47, v64, v72);
        }

        v47[v72] = 0;
        goto LABEL_167;
      }

LABEL_199:
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  v20 = a2 + 63;
  v21 = v20 - __clz(this);
  if (v21 >= 0x3FFF)
  {
    v21 = 0x3FFF;
  }

  __b.__r_.__value_.__r.__words[0] = this << (v20 - v21);
  __b.__r_.__value_.__l.__size_ = (v21 + 0x3FFF) & (__b.__r_.__value_.__l.__data_ >> 63);
  v22 = llvm::APFloatBase::x87DoubleExtended(this);
  v23 = llvm::APInt::APInt(&v84, 80);
  v24 = llvm::APFloatBase::PPCDoubleDouble(v23);
  if (v24 == v22)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&__p[1], v22);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&__p[1], v22, &v84);
  if (LODWORD(v84.__r_.__value_.__r.__words[1]) >= 0x41 && v84.__r_.__value_.__r.__words[0])
  {
    MEMORY[0x259C63150](v84.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
  }

  v84.__r_.__value_.__r.__words[0] = v85;
  *&v84.__r_.__value_.__r.__words[1] = xmmword_257392FF0;
  if (v24 == __p[1])
  {
    llvm::detail::DoubleAPFloat::toString(&__p[1], &v84, v6, 0, 1);
    v69 = v84.__r_.__value_.__l.__size_;
    if (v84.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_199;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::toString(&__p[1], &v84, v6, 0, 1);
    v69 = v84.__r_.__value_.__l.__size_;
    if (v84.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_199;
    }
  }

  v70 = v84.__r_.__value_.__r.__words[0];
  if (v69 >= 0x17)
  {
    operator new();
  }

  a5[23] = v69;
  if (v69)
  {
    memmove(a5, v70, v69);
  }

  a5[v69] = 0;
  if (v84.__r_.__value_.__l.__data_ != v85)
  {
    free(v84.__r_.__value_.__l.__data_);
  }

  if (v24 == __p[1])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
  }
}

_BYTE *stripTrailingZeros(_BYTE *__dst, _BYTE **a2)
{
  v2 = __dst;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = v3;
  while (v5)
  {
    v6 = v4[--v5];
    if (v6 != 48)
    {
      goto LABEL_11;
    }
  }

  v5 = -1;
LABEL_11:
  if (v4[v5] == 46)
  {
    ++v5;
  }

  if (v3 >= v5 + 1)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v7;
  if (v7)
  {
    __dst = memmove(__dst, v4, v7);
    v2[v7] = 0;
  }

  else
  {
    *__dst = 0;
  }

  return __dst;
}

void *std::string::substr[abi:nn200100]@<X0>(void *result@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = result;
  v6 = *(result + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >= a2)
    {
      v7 = v6 - a2;
      if (v7 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = v7;
      }

      if (v8 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_7;
      }

LABEL_17:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_18:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = result[1];
  if (v9 < a2)
  {
    goto LABEL_18;
  }

  v4 = *result;
  v10 = v9 - a2;
  if (v10 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v10;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    result = memmove(a4, v4 + a2, v8);
    a4[v8] = 0;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void *llvm::ScaledNumberBase::print(llvm::ScaledNumberBase *this, llvm::raw_ostream *a2, unsigned int a3, char a4, uint64_t a5)
{
  llvm::ScaledNumberBase::toString(a2, a3, a4, a5, __p);
  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = __p[1];
  }

  result = llvm::raw_ostream::write(this, v6, v7);
  if (v11 < 0)
  {
    v9 = result;
    operator delete(__p[0]);
    return v9;
  }

  return result;
}

llvm::raw_ostream *llvm::ScaledNumberBase::dump(llvm::ScaledNumberBase *this, signed int a2, int a3)
{
  v6 = llvm::dbgs(this);
  llvm::ScaledNumberBase::toString(this, a2, a3, 0, __p);
  if ((v22 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v8 = v22;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = llvm::raw_ostream::write(v6, v7, v8);
  if (v22 < 0)
  {
    v18 = v9;
    operator delete(__p[0]);
    v9 = v18;
    v10 = *(v18 + 4);
    if (*(v18 + 3) != v10)
    {
LABEL_9:
      *v10 = 91;
      ++*(v9 + 4);
      v11 = llvm::raw_ostream::operator<<(v9, a3);
      v12 = *(v11 + 4);
      if (*(v11 + 3) != v12)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(v9 + 4);
    if (*(v9 + 3) != v10)
    {
      goto LABEL_9;
    }
  }

  v19 = llvm::raw_ostream::write(v9, "[", 1uLL);
  v11 = llvm::raw_ostream::operator<<(v19, a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) != v12)
  {
LABEL_10:
    *v12 = 58;
    ++*(v11 + 4);
    v13 = llvm::raw_ostream::operator<<(v11, this);
    v14 = *(v13 + 4);
    if ((*(v13 + 3) - v14) <= 2)
    {
      goto LABEL_11;
    }

LABEL_16:
    *(v14 + 2) = 94;
    *v14 = 12842;
    *(v13 + 4) += 3;
    result = llvm::raw_ostream::operator<<(v13, a2);
    v17 = *(result + 4);
    if (*(result + 3) != v17)
    {
      goto LABEL_12;
    }

    return llvm::raw_ostream::write(result, "]", 1uLL);
  }

LABEL_15:
  v20 = llvm::raw_ostream::write(v11, ":", 1uLL);
  v13 = llvm::raw_ostream::operator<<(v20, this);
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    goto LABEL_16;
  }

LABEL_11:
  v15 = llvm::raw_ostream::write(v13, "*2^", 3uLL);
  result = llvm::raw_ostream::operator<<(v15, a2);
  v17 = *(result + 4);
  if (*(result + 3) != v17)
  {
LABEL_12:
    *v17 = 93;
    ++*(result + 4);
    return result;
  }

  return llvm::raw_ostream::write(result, "]", 1uLL);
}

llvm::raw_ostream *llvm::operator<<(llvm::raw_ostream *this, unint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(this + 4);
  if (*(this + 3) - v4 > 1uLL)
  {
    *v4 = 30768;
    *(this + 4) += 2;
    v5 = this;
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v16[16] = 48;
    v9 = 16;
    v10 = 1;
    goto LABEL_6;
  }

  v5 = llvm::raw_ostream::write(this, "0x", 2uLL);
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = 16;
  do
  {
    v16[v7--] = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  v9 = v7 + 1;
  v10 = 16 - v7;
  if ((16 - v7) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_6:
  if (v10 > 0x16)
  {
    operator new();
  }

  v15 = v10;
  if (v9 != 17)
  {
    memcpy(__dst, &v16[v9], v10);
  }

  *(__dst + v10) = 0;
  if ((v15 & 0x80u) == 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v12 = v15;
  }

  else
  {
    v12 = __dst[1];
  }

  llvm::raw_ostream::write(v5, v11, v12);
  if (v15 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

llvm::raw_ostream *llvm::ScopedPrinter::printBinaryImpl(uint64_t a1, const void *a2, size_t a3, const char *a4, size_t a5, unsigned __int8 *a6, unint64_t a7, int a8, unsigned int a9)
{
  v17 = (*(*a1 + 288))(a1);
  v18 = v17[4];
  v19 = v17[3] - v18;
  if (a7 <= 0x10 && !a8)
  {
    if (a3 <= v19)
    {
      if (a3)
      {
        v27 = v17;
        memcpy(v17[4], a2, a3);
        v17 = v27;
        v18 = (v27[4] + a3);
        v27[4] = v18;
      }
    }

    else
    {
      v17 = llvm::raw_ostream::write(v17, a2, a3);
      v18 = v17[4];
    }

    if (v17[3] == v18)
    {
      llvm::raw_ostream::write(v17, ":", 1uLL);
      if (!a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v18 = 58;
      ++v17[4];
      if (!a5)
      {
LABEL_25:
        v32 = *(a1 + 8);
        v33 = *(v32 + 4);
        if (*(v32 + 3) - v33 <= 1uLL)
        {
LABEL_26:
          v32 = llvm::raw_ostream::write(v32, " (", 2uLL);
          goto LABEL_38;
        }

LABEL_37:
        *v33 = 10272;
        *(v32 + 4) += 2;
LABEL_38:
        v41 = a6;
        v42 = a7;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = a7;
        v47 = 257;
        v48 = 0;
        if (a7)
        {
          result = llvm::raw_ostream::operator<<(v32, &v41);
          v40 = *(result + 4);
          if (*(result + 3) - v40 > 1uLL)
          {
            goto LABEL_40;
          }
        }

        else
        {
          LOBYTE(v47) = 0;
          result = llvm::raw_ostream::operator<<(v32, &v41);
          v40 = *(result + 4);
          if (*(result + 3) - v40 > 1uLL)
          {
            goto LABEL_40;
          }
        }

        return llvm::raw_ostream::write(result, ")\n", 2uLL);
      }
    }

    v28 = *(a1 + 8);
    v29 = v28[4];
    if (v28[3] == v29)
    {
      v28 = llvm::raw_ostream::write(*(a1 + 8), " ", 1uLL);
      v31 = v28[4];
      if (a5 > v28[3] - v31)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v29 = 32;
      v30 = v28[3];
      v31 = (v28[4] + 1);
      v28[4] = v31;
      if (a5 > v30 - v31)
      {
LABEL_24:
        llvm::raw_ostream::write(v28, a4, a5);
        goto LABEL_25;
      }
    }

    memcpy(v31, a4, a5);
    v28[4] += a5;
    v32 = *(a1 + 8);
    v33 = *(v32 + 4);
    if (*(v32 + 3) - v33 <= 1uLL)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  if (a3 <= v19)
  {
    if (a3)
    {
      v20 = v17;
      memcpy(v17[4], a2, a3);
      v20[4] += a3;
    }
  }

  else
  {
    llvm::raw_ostream::write(v17, a2, a3);
  }

  if (!a5)
  {
LABEL_13:
    v25 = *(a1 + 8);
    v26 = v25[4];
    if ((v25[3] - v26) <= 2)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

  v21 = *(a1 + 8);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 8250;
    v34 = v21[3];
    v23 = (v21[4] + 2);
    v21[4] = v23;
    if (a5 <= v34 - v23)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v21 = llvm::raw_ostream::write(v21, ": ", 2uLL);
    v23 = v21[4];
    if (a5 <= v21[3] - v23)
    {
LABEL_12:
      v24 = v21;
      memcpy(v23, a4, a5);
      v24[4] += a5;
      goto LABEL_13;
    }
  }

  llvm::raw_ostream::write(v21, a4, a5);
  v25 = *(a1 + 8);
  v26 = v25[4];
  if ((v25[3] - v26) <= 2)
  {
LABEL_14:
    llvm::raw_ostream::write(v25, " (\n", 3uLL);
    if (!a7)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v26 + 2) = 10;
  *v26 = 10272;
  v25[4] += 3;
  if (!a7)
  {
    goto LABEL_33;
  }

LABEL_30:
  v35 = *(a1 + 8);
  v36 = 2 * *(a1 + 16) + 2;
  v41 = a6;
  v42 = a7;
  v43 = a9;
  v44 = 1;
  v45 = v36;
  v46 = 16;
  v47 = 260;
  v48 = 1;
  v37 = llvm::raw_ostream::operator<<(v35, &v41);
  v38 = *(v37 + 4);
  if (*(v37 + 3) == v38)
  {
    llvm::raw_ostream::write(v37, "\n", 1uLL);
  }

  else
  {
    *v38 = 10;
    ++*(v37 + 4);
  }

LABEL_33:
  result = (*(*a1 + 288))(a1);
  v40 = *(result + 4);
  if (*(result + 3) - v40 <= 1uLL)
  {
    return llvm::raw_ostream::write(result, ")\n", 2uLL);
  }

LABEL_40:
  *v40 = 2601;
  *(result + 4) += 2;
  return result;
}

uint64_t llvm::JSONScopedPrinter::JSONScopedPrinter(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *a1 = &unk_2868A1678;
  *(a1 + 8) = a2;
  *(a1 + 48) = a1 + 64;
  *(a1 + 56) = 0x800000000;
  *(a1 + 144) = 0;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a2;
  *(a1 + 296) = v5;
  *(a1 + 300) = 0;
  *(a1 + 128) = a1 + 144;
  *(a1 + 136) = 0x1000000001;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 304) = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6, a1);
  }

  return a1;
}

{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *a1 = &unk_2868A1678;
  *(a1 + 8) = a2;
  *(a1 + 48) = a1 + 64;
  *(a1 + 56) = 0x800000000;
  *(a1 + 144) = 0;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a2;
  *(a1 + 296) = v5;
  *(a1 + 300) = 0;
  *(a1 + 128) = a1 + 144;
  *(a1 + 136) = 0x1000000001;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 304) = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6, a1);
  }

  return a1;
}

llvm::raw_ostream *llvm::ScopedPrinter::printNumber(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

llvm::raw_ostream *llvm::ScopedPrinter::printNumber(uint64_t a1, const void *a2, size_t a3, unsigned int a4)
{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

llvm::raw_ostream *llvm::ScopedPrinter::printNumber(uint64_t a1, const void *a2, size_t a3, unint64_t a4)
{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(*(v7 + 4), a2, a3);
      v7 = v9;
      v8 = (*(v9 + 4) + a3);
      *(v9 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
    result = llvm::raw_ostream::operator<<(v7, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    result = llvm::raw_ostream::operator<<(v10, a4);
    v12 = *(result + 4);
    if (*(result + 3) != v12)
    {
LABEL_7:
      *v12 = 10;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

void llvm::ScopedPrinter::printNumber(uint64_t a1, const void *a2, size_t a3, llvm::APInt *a4)
{
  v7 = (*(*a1 + 288))(a1);
  v8 = *(v7 + 4);
  if (a3 <= *(v7 + 3) - v8)
  {
    if (a3)
    {
      memcpy(v8, a2, a3);
      v8 = (*(v7 + 4) + a3);
      *(v7 + 4) = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = *(v7 + 4);
  }

  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(v7 + 4) += 2;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, ": ", 2uLL);
  }

  llvm::APInt::print(a4, v7, (*(a4 + 12) & 1) == 0);
  v9 = *(v7 + 4);
  if (*(v7 + 3) == v9)
  {

    llvm::raw_ostream::write(v7, "\n", 1uLL);
  }

  else
  {
    *v9 = 10;
    ++*(v7 + 4);
  }
}

void *llvm::ScopedPrinter::printNumber(uint64_t a1, const void *a2, size_t a3, float a4)
{
  v7 = (*(*a1 + 288))(a1);
  v8 = v7[4];
  if (a3 <= v7[3] - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(v7[4], a2, a3);
      v7 = v9;
      v8 = (v9[4] + a3);
      v9[4] = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = v7[4];
  }

  if (v7[3] - v8 > 1uLL)
  {
    *v8 = 8250;
    v7[4] += 2;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, ": ", 2uLL);
  }

  v12[0] = &unk_2868A19B0;
  v12[1] = "%5.1f";
  v13 = a4;
  result = llvm::raw_ostream::operator<<(v7, v12);
  v11 = result[4];
  if (result[3] == v11)
  {
    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  *v11 = 10;
  ++result[4];
  return result;
}

void *llvm::ScopedPrinter::printNumber(uint64_t a1, const void *a2, size_t a3, double a4)
{
  v7 = (*(*a1 + 288))(a1);
  v8 = v7[4];
  if (a3 <= v7[3] - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(v7[4], a2, a3);
      v7 = v9;
      v8 = (v9[4] + a3);
      v9[4] = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = v7[4];
  }

  if (v7[3] - v8 > 1uLL)
  {
    *v8 = 8250;
    v7[4] += 2;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, ": ", 2uLL);
  }

  v12[0] = &unk_28689DAF0;
  v12[1] = "%5.1f";
  *&v12[2] = a4;
  result = llvm::raw_ostream::operator<<(v7, v12);
  v11 = result[4];
  if (result[3] == v11)
  {
    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  *v11 = 10;
  ++result[4];
  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printBoolean(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v7 = (*(*a1 + 288))(a1);
  v8 = v7[4];
  if (a3 <= v7[3] - v8)
  {
    if (a3)
    {
      v9 = v7;
      memcpy(v7[4], a2, a3);
      v7 = v9;
      v8 = (v9[4] + a3);
      v9[4] = v8;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, a2, a3);
    v8 = v7[4];
  }

  if (v7[3] - v8 > 1uLL)
  {
    *v8 = 8250;
    v10 = (v7[4] + 2);
    v7[4] = v10;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, ": ", 2uLL);
    v10 = v7[4];
  }

  if (a4)
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  if (a4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  if (v12 <= v7[3] - v10)
  {
    v15 = v7;
    memcpy(v10, v11, v12);
    result = v15;
    v14 = (*(v15 + 4) + v12);
    *(v15 + 4) = v14;
    if (v14 >= *(v15 + 3))
    {
      goto LABEL_16;
    }

LABEL_20:
    *(result + 4) = v14 + 1;
    *v14 = 10;
    return result;
  }

  result = llvm::raw_ostream::write(v7, v11, v12);
  v14 = *(result + 4);
  if (v14 < *(result + 3))
  {
    goto LABEL_20;
  }

LABEL_16:

  return llvm::raw_ostream::write(result, 10);
}

void llvm::ScopedPrinter::printList(llvm::raw_ostream **a1, const void *a2, size_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v21[6] = *MEMORY[0x277D85DE8];
  __src = v21;
  v20 = 0xC00000000;
  if (a5)
  {
    do
    {
      while (v20 < HIDWORD(v20))
      {
        v5 = *a4++;
        *(__src + v20) = v5;
        LODWORD(v20) = v20 + 1;
        if (!--a5)
        {
          goto LABEL_6;
        }
      }

      v6 = a1;
      v7 = a2;
      v8 = a3;
      v9 = a5;
      v10 = a4;
      llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned char const&>(&__src, a4);
      a1 = v6;
      a2 = v7;
      a3 = v8;
      a4 = v10 + 1;
      a5 = v9 - 1;
    }

    while (v9 != 1);
LABEL_6:
    v11 = v20;
    __dst = v18;
    v17 = 0xC00000000;
    if (v20)
    {
      v12 = a1;
      v13 = a2;
      v14 = a3;
      if (v20 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v18, __src, 4 * v20);
      LODWORD(v17) = v11;
      a3 = v14;
      a2 = v13;
      a1 = v12;
    }

    llvm::ScopedPrinter::printListImpl<llvm::SmallVector<unsigned int,12u>>(a1, a2, a3, &__dst);
    v15 = __dst;
    if (__dst != v18)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst = v18;
    v17 = 0xC00000000;
    llvm::ScopedPrinter::printListImpl<llvm::SmallVector<unsigned int,12u>>(a1, a2, a3, &__dst);
    v15 = __dst;
    if (__dst != v18)
    {
LABEL_11:
      free(v15);
    }
  }

  if (__src != v21)
  {
    free(__src);
  }
}

void llvm::ScopedPrinter::printList(llvm::raw_ostream **a1, const void *a2, size_t a3, char *a4, uint64_t a5)
{
  v20[6] = *MEMORY[0x277D85DE8];
  __src = v20;
  v19 = 0xC00000000;
  if (a5)
  {
    do
    {
      while (v19 < HIDWORD(v19))
      {
        *(__src + v19) = *a4;
        LODWORD(v19) = v19 + 1;
        ++a4;
        if (!--a5)
        {
          goto LABEL_6;
        }
      }

      v5 = a1;
      v6 = a2;
      v7 = a3;
      v8 = a5;
      v9 = a4;
      llvm::SmallVectorTemplateBase<int,true>::growAndEmplaceBack<signed char const&>(&__src, a4);
      a1 = v5;
      a2 = v6;
      a3 = v7;
      a4 = v9 + 1;
      a5 = v8 - 1;
    }

    while (v8 != 1);
LABEL_6:
    v10 = v19;
    __dst = v17;
    v16 = 0xC00000000;
    if (v19)
    {
      v11 = a1;
      v12 = a2;
      v13 = a3;
      if (v19 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v17, __src, 4 * v19);
      LODWORD(v16) = v10;
      a3 = v13;
      a2 = v12;
      a1 = v11;
    }

    llvm::ScopedPrinter::printListImpl<llvm::SmallVector<int,12u>>(a1, a2, a3, &__dst);
    v14 = __dst;
    if (__dst != v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst = v17;
    v16 = 0xC00000000;
    llvm::ScopedPrinter::printListImpl<llvm::SmallVector<int,12u>>(a1, a2, a3, &__dst);
    v14 = __dst;
    if (__dst != v17)
    {
LABEL_11:
      free(v14);
    }
  }

  if (__src != v20)
  {
    free(__src);
  }
}

void *llvm::ScopedPrinter::printString(uint64_t a1, const void *a2, size_t a3)
{
  result = (*(*a1 + 288))(a1);
  v6 = result[4];
  if (a3 <= result[3] - v6)
  {
    if (a3)
    {
      v7 = result;
      memcpy(result[4], a2, a3);
      result = v7;
      v6 = (v7[4] + a3);
      v7[4] = v6;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, a2, a3);
    v6 = result[4];
  }

  if (result[3] == v6)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v6 = 10;
    ++result[4];
  }

  return result;
}

void *llvm::ScopedPrinter::printString(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  result = (*(*a1 + 288))(a1);
  v10 = result[4];
  if (a3 <= result[3] - v10)
  {
    if (a3)
    {
      v11 = result;
      memcpy(result[4], a2, a3);
      result = v11;
      v10 = (v11[4] + a3);
      v11[4] = v10;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, a2, a3);
    v10 = result[4];
  }

  if (result[3] - v10 > 1uLL)
  {
    *v10 = 8250;
    v14 = result[3];
    v12 = (result[4] + 2);
    result[4] = v12;
    if (a5 <= v14 - v12)
    {
LABEL_7:
      if (a5)
      {
        v13 = result;
        memcpy(v12, a4, a5);
        result = v13;
        v12 = (v13[4] + a5);
        v13[4] = v12;
      }

      if (result[3] != v12)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, ": ", 2uLL);
    v12 = result[4];
    if (a5 <= result[3] - v12)
    {
      goto LABEL_7;
    }
  }

  result = llvm::raw_ostream::write(result, a4, a5);
  v12 = result[4];
  if (result[3] != v12)
  {
LABEL_10:
    *v12 = 10;
    ++result[4];
    return result;
  }

LABEL_13:

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

llvm::raw_ostream *llvm::ScopedPrinter::objectBegin(llvm::ScopedPrinter *this)
{
  result = (*(*this + 288))(this);
  v3 = *(result + 4);
  if (v3 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 123);
    v4 = *(result + 4);
    if (v4 >= *(result + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 4) = v3 + 1;
    *v3 = 123;
    v4 = *(result + 4);
    if (v4 >= *(result + 3))
    {
LABEL_3:
      result = llvm::raw_ostream::write(result, 10);
      ++*(this + 4);
      return result;
    }
  }

  *(result + 4) = v4 + 1;
  *v4 = 10;
  ++*(this + 4);
  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::objectEnd(llvm::ScopedPrinter *this)
{
  v1 = *(this + 4);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if ((v3 < 0) ^ v2 | (v3 == 0))
  {
    v3 = 0;
  }

  *(this + 4) = v3;
  result = (*(*this + 288))(this);
  v5 = *(result + 4);
  if (v5 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 125);
    v6 = *(result + 4);
    if (v6 >= *(result + 3))
    {
      goto LABEL_6;
    }

LABEL_10:
    *(result + 4) = v6 + 1;
    *v6 = 10;
    return result;
  }

  *(result + 4) = v5 + 1;
  *v5 = 125;
  v6 = *(result + 4);
  if (v6 < *(result + 3))
  {
    goto LABEL_10;
  }

LABEL_6:

  return llvm::raw_ostream::write(result, 10);
}

llvm::raw_ostream *llvm::ScopedPrinter::arrayBegin(llvm::ScopedPrinter *this)
{
  result = (*(*this + 288))(this);
  v3 = *(result + 4);
  if (v3 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 91);
    v4 = *(result + 4);
    if (v4 >= *(result + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 4) = v3 + 1;
    *v3 = 91;
    v4 = *(result + 4);
    if (v4 >= *(result + 3))
    {
LABEL_3:
      result = llvm::raw_ostream::write(result, 10);
      ++*(this + 4);
      return result;
    }
  }

  *(result + 4) = v4 + 1;
  *v4 = 10;
  ++*(this + 4);
  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::arrayEnd(llvm::ScopedPrinter *this)
{
  v1 = *(this + 4);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if ((v3 < 0) ^ v2 | (v3 == 0))
  {
    v3 = 0;
  }

  *(this + 4) = v3;
  result = (*(*this + 288))(this);
  v5 = *(result + 4);
  if (v5 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 93);
    v6 = *(result + 4);
    if (v6 >= *(result + 3))
    {
      goto LABEL_6;
    }

LABEL_10:
    *(result + 4) = v6 + 1;
    *v6 = 10;
    return result;
  }

  *(result + 4) = v5 + 1;
  *v5 = 93;
  v6 = *(result + 4);
  if (v6 < *(result + 3))
  {
    goto LABEL_10;
  }

LABEL_6:

  return llvm::raw_ostream::write(result, 10);
}

uint64_t llvm::ScopedPrinter::startLine(llvm::ScopedPrinter *this)
{
  v2 = *(this + 1);
  v3 = *(this + 3);
  v4 = *(this + 4);
  v5 = v2[4];
  if (v4 <= v2[3] - v5)
  {
    if (v4)
    {
      v6 = v4;
      memcpy(v5, v3, v4);
      v2[4] += v6;
    }
  }

  else
  {
    llvm::raw_ostream::write(v2, v3, v4);
  }

  if (*(this + 4) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v8 = *(this + 1);
        v9 = v8[4];
        if (v8[3] - v9 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v8, "  ", 2uLL);
        if (++v7 >= *(this + 4))
        {
          return *(this + 1);
        }
      }

      *v9 = 8224;
      v8[4] += 2;
      ++v7;
    }

    while (v7 < *(this + 4));
  }

  return *(this + 1);
}

void *llvm::ScopedPrinter::printFlagsImpl(uint64_t a1, const void *a2, size_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v11 = (*(*a1 + 288))(a1);
  v12 = *(v11 + 4);
  if (a3 <= *(v11 + 3) - v12)
  {
    if (a3)
    {
      memcpy(v12, a2, a3);
      v12 = (*(v11 + 4) + a3);
      *(v11 + 4) = v12;
    }
  }

  else
  {
    v11 = llvm::raw_ostream::write(v11, a2, a3);
    v12 = *(v11 + 4);
  }

  if (*(v11 + 3) - v12 > 3uLL)
  {
    *v12 = 673209120;
    *(v11 + 4) += 4;
  }

  else
  {
    v11 = llvm::raw_ostream::write(v11, " [ (", 4uLL);
  }

  llvm::operator<<(v11, &v28);
  v13 = *(v11 + 4);
  if (*(v11 + 3) - v13 > 1uLL)
  {
    *v13 = 2601;
    *(v11 + 4) += 2;
    if (!a6)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  llvm::raw_ostream::write(v11, ")\n", 2uLL);
  if (a6)
  {
LABEL_12:
    v14 = a5 + 24 * a6;
    while (1)
    {
      v15 = (*(*a1 + 288))(a1);
      v16 = *(v15 + 4);
      if (*(v15 + 3) - v16 > 1uLL)
      {
        *v16 = 8224;
        v20 = *(v15 + 3);
        v17 = (*(v15 + 4) + 2);
        *(v15 + 4) = v17;
        v18 = *a5;
        v19 = *(a5 + 8);
        if (v19 <= v20 - v17)
        {
LABEL_18:
          if (v19)
          {
            v21 = v15;
            v22 = v19;
            memcpy(v17, v18, v19);
            v15 = v21;
            v17 = (*(v21 + 4) + v22);
            *(v21 + 4) = v17;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = llvm::raw_ostream::write(v15, "  ", 2uLL);
        v17 = *(v15 + 4);
        v18 = *a5;
        v19 = *(a5 + 8);
        if (v19 <= *(v15 + 3) - v17)
        {
          goto LABEL_18;
        }
      }

      v15 = llvm::raw_ostream::write(v15, v18, v19);
      v17 = *(v15 + 4);
LABEL_20:
      if (*(v15 + 3) - v17 > 1uLL)
      {
        *v17 = 10272;
        *(v15 + 4) += 2;
      }

      else
      {
        v15 = llvm::raw_ostream::write(v15, " (", 2uLL);
      }

      v27 = *(a5 + 16);
      v23 = llvm::operator<<(v15, &v27);
      v24 = *(v23 + 4);
      if (*(v23 + 3) - v24 <= 1uLL)
      {
        llvm::raw_ostream::write(v23, ")\n", 2uLL);
        a5 += 24;
        if (a5 == v14)
        {
          break;
        }
      }

      else
      {
        *v24 = 2601;
        *(v23 + 4) += 2;
        a5 += 24;
        if (a5 == v14)
        {
          break;
        }
      }
    }
  }

LABEL_25:
  result = (*(*a1 + 288))(a1);
  v26 = result[4];
  if (result[3] - v26 > 1uLL)
  {
    *v26 = 2653;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

void *llvm::ScopedPrinter::printFlagsImpl(uint64_t a1, const void *a2, size_t a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  v22 = a4;
  v11 = (*(*a1 + 288))(a1);
  v12 = *(v11 + 4);
  if (a3 <= *(v11 + 3) - v12)
  {
    if (a3)
    {
      memcpy(v12, a2, a3);
      v12 = (*(v11 + 4) + a3);
      *(v11 + 4) = v12;
    }
  }

  else
  {
    v11 = llvm::raw_ostream::write(v11, a2, a3);
    v12 = *(v11 + 4);
  }

  if (*(v11 + 3) - v12 > 3uLL)
  {
    *v12 = 673209120;
    *(v11 + 4) += 4;
  }

  else
  {
    v11 = llvm::raw_ostream::write(v11, " [ (", 4uLL);
  }

  llvm::operator<<(v11, &v22);
  v13 = *(v11 + 4);
  if (*(v11 + 3) - v13 > 1uLL)
  {
    *v13 = 2601;
    *(v11 + 4) += 2;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  llvm::raw_ostream::write(v11, ")\n", 2uLL);
  if (a6)
  {
LABEL_12:
    v14 = 8 * a6;
    while (1)
    {
      v15 = (*(*a1 + 288))(a1);
      v16 = *(v15 + 4);
      if (*(v15 + 3) - v16 > 1uLL)
      {
        *v16 = 8224;
        *(v15 + 4) += 2;
        v18 = llvm::operator<<(v15, a5);
        v19 = *(v18 + 4);
        if (v19 < *(v18 + 3))
        {
          goto LABEL_13;
        }

LABEL_18:
        llvm::raw_ostream::write(v18, 10);
        ++a5;
        v14 -= 8;
        if (!v14)
        {
          break;
        }
      }

      else
      {
        v17 = llvm::raw_ostream::write(v15, "  ", 2uLL);
        v18 = llvm::operator<<(v17, a5);
        v19 = *(v18 + 4);
        if (v19 >= *(v18 + 3))
        {
          goto LABEL_18;
        }

LABEL_13:
        *(v18 + 4) = v19 + 1;
        *v19 = 10;
        ++a5;
        v14 -= 8;
        if (!v14)
        {
          break;
        }
      }
    }
  }

LABEL_19:
  result = (*(*a1 + 288))(a1);
  v21 = result[4];
  if (result[3] - v21 > 1uLL)
  {
    *v21 = 2653;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

void *llvm::ScopedPrinter::printHexListImpl(void *a1, const void *a2, size_t a3, unint64_t *a4, uint64_t a5)
{
  v10 = (*(*a1 + 288))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  v13 = a1[1];
  v15 = *a4;
  v14 = a4 + 1;
  v22 = v15;
  llvm::operator<<(v13, &v22);
  if (a5 != 1)
  {
    v18 = 8 * a5 - 8;
    do
    {
      v19 = a1[1];
      v21 = *(v19 + 4);
      if (*(v19 + 3) - v21 <= 1uLL)
      {
        v19 = llvm::raw_ostream::write(v19, ", ", 2uLL);
      }

      else
      {
        *v21 = 8236;
        *(v19 + 4) += 2;
      }

      v20 = *v14++;
      v22 = v20;
      llvm::operator<<(v19, &v22);
      v18 -= 8;
    }

    while (v18);
  }

LABEL_10:
  result = a1[1];
  v17 = result[4];
  if (result[3] - v17 > 1uLL)
  {
    *v17 = 2653;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printHexImpl(uint64_t a1, const void *a2, size_t a3, unint64_t a4)
{
  v10 = a4;
  v6 = (*(*a1 + 288))(a1);
  v7 = *(v6 + 4);
  if (a3 <= *(v6 + 3) - v7)
  {
    if (a3)
    {
      memcpy(v7, a2, a3);
      v7 = (*(v6 + 4) + a3);
      *(v6 + 4) = v7;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, a2, a3);
    v7 = *(v6 + 4);
  }

  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8250;
    *(v6 + 4) += 2;
    result = llvm::operator<<(v6, &v10);
    v9 = *(v6 + 4);
    if (*(v6 + 3) != v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, ": ", 2uLL);
    result = llvm::operator<<(v6, &v10);
    v9 = *(v6 + 4);
    if (*(v6 + 3) != v9)
    {
LABEL_7:
      *v9 = 10;
      ++*(v6 + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(v6, "\n", 1uLL);
}

llvm::raw_ostream *llvm::ScopedPrinter::printHexImpl(uint64_t a1, const void *a2, size_t a3, const char *a4, size_t a5, unint64_t a6)
{
  v19 = a6;
  v10 = (*(*a1 + 288))(a1);
  v11 = *(v10 + 4);
  if (a3 <= *(v10 + 3) - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(*(v10 + 4), a2, a3);
      v10 = v12;
      v11 = (*(v12 + 4) + a3);
      *(v12 + 4) = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = *(v10 + 4);
  }

  if (*(v10 + 3) - v11 <= 1uLL)
  {
    v10 = llvm::raw_ostream::write(v10, ": ", 2uLL);
    v13 = *(v10 + 4);
    if (a5 <= *(v10 + 3) - v13)
    {
      goto LABEL_7;
    }

LABEL_13:
    v10 = llvm::raw_ostream::write(v10, a4, a5);
    v13 = *(v10 + 4);
    if (*(v10 + 3) - v13 <= 1uLL)
    {
      goto LABEL_10;
    }

LABEL_14:
    *v13 = 10272;
    *(v10 + 4) += 2;
    result = llvm::operator<<(v10, &v19);
    v17 = *(result + 4);
    if (*(result + 3) - v17 > 1uLL)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  *v11 = 8250;
  v18 = *(v10 + 3);
  v13 = (*(v10 + 4) + 2);
  *(v10 + 4) = v13;
  if (a5 > v18 - v13)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (a5)
  {
    v14 = v10;
    memcpy(v13, a4, a5);
    v10 = v14;
    v13 = (*(v14 + 4) + a5);
    *(v14 + 4) = v13;
  }

  if (*(v10 + 3) - v13 > 1uLL)
  {
    goto LABEL_14;
  }

LABEL_10:
  v15 = llvm::raw_ostream::write(v10, " (", 2uLL);
  result = llvm::operator<<(v15, &v19);
  v17 = *(result + 4);
  if (*(result + 3) - v17 > 1uLL)
  {
LABEL_11:
    *v17 = 2601;
    *(result + 4) += 2;
    return result;
  }

LABEL_15:

  return llvm::raw_ostream::write(result, ")\n", 2uLL);
}

llvm::raw_ostream *llvm::ScopedPrinter::printSymbolOffsetImpl(uint64_t a1, const void *a2, size_t a3, const char *a4, size_t a5, unint64_t a6)
{
  v19 = a6;
  v10 = (*(*a1 + 288))(a1);
  v11 = *(v10 + 4);
  if (a3 <= *(v10 + 3) - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(*(v10 + 4), a2, a3);
      v10 = v12;
      v11 = (*(v12 + 4) + a3);
      *(v12 + 4) = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = *(v10 + 4);
  }

  if (*(v10 + 3) - v11 <= 1uLL)
  {
    v10 = llvm::raw_ostream::write(v10, ": ", 2uLL);
    v13 = *(v10 + 4);
    if (a5 <= *(v10 + 3) - v13)
    {
      goto LABEL_7;
    }

LABEL_15:
    v10 = llvm::raw_ostream::write(v10, a4, a5);
    v13 = *(v10 + 4);
    if (v13 < *(v10 + 3))
    {
      goto LABEL_10;
    }

LABEL_16:
    v18 = llvm::raw_ostream::write(v10, 43);
    result = llvm::operator<<(v18, &v19);
    v16 = *(result + 4);
    if (v16 >= *(result + 3))
    {
      goto LABEL_11;
    }

LABEL_17:
    *(result + 4) = v16 + 1;
    *v16 = 10;
    return result;
  }

  *v11 = 8250;
  v17 = *(v10 + 3);
  v13 = (*(v10 + 4) + 2);
  *(v10 + 4) = v13;
  if (a5 > v17 - v13)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (a5)
  {
    v14 = v10;
    memcpy(v13, a4, a5);
    v10 = v14;
    v13 = (*(v14 + 4) + a5);
    *(v14 + 4) = v13;
  }

  if (v13 >= *(v10 + 3))
  {
    goto LABEL_16;
  }

LABEL_10:
  *(v10 + 4) = v13 + 1;
  *v13 = 43;
  result = llvm::operator<<(v10, &v19);
  v16 = *(result + 4);
  if (v16 < *(result + 3))
  {
    goto LABEL_17;
  }

LABEL_11:

  return llvm::raw_ostream::write(result, 10);
}

void *llvm::ScopedPrinter::printNumberImpl(uint64_t a1, const void *a2, size_t a3, const char *a4, size_t a5, const void *a6, size_t a7)
{
  result = (*(*a1 + 288))(a1);
  v14 = result[4];
  if (a3 <= result[3] - v14)
  {
    if (a3)
    {
      v15 = result;
      memcpy(result[4], a2, a3);
      result = v15;
      v14 = (v15[4] + a3);
      v15[4] = v14;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, a2, a3);
    v14 = result[4];
  }

  if (result[3] - v14 <= 1uLL)
  {
    result = llvm::raw_ostream::write(result, ": ", 2uLL);
    v16 = result[4];
    if (a5 <= result[3] - v16)
    {
      goto LABEL_7;
    }

LABEL_18:
    result = llvm::raw_ostream::write(result, a4, a5);
    v16 = result[4];
    if (result[3] - v16 <= 1uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  *v14 = 8250;
  v20 = result[3];
  v16 = (result[4] + 2);
  result[4] = v16;
  if (a5 > v20 - v16)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (a5)
  {
    v17 = result;
    memcpy(v16, a4, a5);
    result = v17;
    v16 = (v17[4] + a5);
    v17[4] = v16;
  }

  if (result[3] - v16 <= 1uLL)
  {
LABEL_10:
    result = llvm::raw_ostream::write(result, " (", 2uLL);
    v18 = result[4];
    if (a7 <= result[3] - v18)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  *v16 = 10272;
  v21 = result[3];
  v18 = (result[4] + 2);
  result[4] = v18;
  if (a7 <= v21 - v18)
  {
LABEL_11:
    if (a7)
    {
      v19 = result;
      memcpy(v18, a6, a7);
      result = v19;
      v18 = (v19[4] + a7);
      v19[4] = v18;
    }

    if (result[3] - v18 <= 1uLL)
    {
      goto LABEL_14;
    }

LABEL_21:
    *v18 = 2601;
    result[4] += 2;
    return result;
  }

LABEL_20:
  result = llvm::raw_ostream::write(result, a6, a7);
  v18 = result[4];
  if (result[3] - v18 > 1uLL)
  {
    goto LABEL_21;
  }

LABEL_14:

  return llvm::raw_ostream::write(result, ")\n", 2uLL);
}

llvm::raw_ostream *llvm::ScopedPrinter::printStringEscapedImpl(uint64_t *a1, const void *a2, size_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v10 = (*(*a1 + 288))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = (v12[4] + a3);
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 1uLL)
  {
    *v11 = 8250;
    v10[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v10, ": ", 2uLL);
  }

  llvm::raw_ostream::write_escaped(a1[1], a4, a5, 0);
  result = a1[1];
  v14 = *(result + 4);
  if (v14 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 10);
  }

  else
  {
    *(result + 4) = v14 + 1;
    *v14 = 10;
  }

  return result;
}

void llvm::JSONScopedPrinter::~JSONScopedPrinter(llvm::JSONScopedPrinter *this)
{
  *this = &unk_2868A1678;
  v2 = *(this + 38);
  *(this + 38) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3 != this + 144)
  {
    free(v3);
  }

  v4 = *(this + 6);
  if (v4 != this + 64)
  {
    free(v4);
  }
}

{
  *this = &unk_2868A1678;
  v2 = *(this + 38);
  *(this + 38) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3 != this + 144)
  {
    free(v3);
  }

  v4 = *(this + 6);
  if (v4 != this + 64)
  {
    free(v4);
  }

  JUMPOUT(0x259C63180);
}

void llvm::JSONScopedPrinter::printNumber(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

void llvm::JSONScopedPrinter::printNumber(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned int a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

void llvm::JSONScopedPrinter::printNumber(uint64_t a1, unsigned __int8 *a2, unint64_t a3, llvm **a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 4;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 3;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 4;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

uint64_t llvm::JSONScopedPrinter::printNumber(uint64_t a1, unsigned __int8 *a2, unint64_t a3, llvm::APInt *a4)
{
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  v6 = llvm::json::OStream::rawValueBegin((a1 + 128));
  llvm::APInt::print(a4, v6, (*(a4 + 12) & 1) == 0);
  llvm::json::OStream::rawValueEnd(a1 + 128);

  return llvm::json::OStream::attributeEnd(a1 + 128);
}

void llvm::JSONScopedPrinter::printNumber(uint64_t a1, unsigned __int8 *a2, unint64_t a3, float a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 2;
  *&v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

void llvm::JSONScopedPrinter::printNumber(uint64_t a1, unsigned __int8 *a2, unint64_t a3, double a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 2;
  v5[1] = *&a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

void llvm::JSONScopedPrinter::printBoolean(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char a4)
{
  v7 = *MEMORY[0x277D85DE8];
  LOWORD(v5) = 1;
  v6 = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), &v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(&v5);
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  for (; a5; --a5)
  {
    v8 = *a4++;
    LOWORD(v10) = 1;
    v11 = v8;
    llvm::json::OStream::value((a1 + 128), &v10);
    llvm::json::Value::destroy(&v10);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

{
  v10[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  for (; a5; --a5)
  {
    v8 = *a4++;
    LOWORD(v10[0]) = 3;
    v10[1] = v8;
    llvm::json::OStream::value((a1 + 128), v10);
    llvm::json::Value::destroy(v10);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printList(__int128 **a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  v8[0] = v7;
  v8[1] = a1;
  llvm::json::OStream::attributeBegin((a1 + 16), a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 16));
  llvm::JSONScopedPrinter::printListImpl<llvm::ArrayRef<std::string>>(llvm::StringRef,llvm::ArrayRef<std::string> const&)::{lambda(void)#1}::operator()(v8);
  llvm::json::OStream::arrayEnd((a1 + 16));
  return llvm::json::OStream::attributeEnd((a1 + 16));
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, llvm ***a4, uint64_t a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 8 * a5;
    do
    {
      v9 = *a4++;
      LOWORD(v11[0]) = 4;
      v11[1] = v9;
      llvm::json::OStream::value((a1 + 128), v11);
      llvm::json::Value::destroy(v11);
      v8 -= 8;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 8 * a5;
    do
    {
      v9 = *a4++;
      LOWORD(v11[0]) = 3;
      v11[1] = v9;
      llvm::json::OStream::value((a1 + 128), v11);
      llvm::json::Value::destroy(v11);
      v8 -= 8;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned int *a4, uint64_t a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 4 * a5;
    do
    {
      v9 = *a4++;
      LOWORD(v11[0]) = 3;
      v11[1] = v9;
      llvm::json::OStream::value((a1 + 128), v11);
      llvm::json::Value::destroy(v11);
      v8 -= 4;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 2 * a5;
    do
    {
      v9 = *a4++;
      LOWORD(v11[0]) = 3;
      v11[1] = v9;
      llvm::json::OStream::value((a1 + 128), v11);
      llvm::json::Value::destroy(v11);
      v8 -= 2;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v10[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  for (; a5; --a5)
  {
    v8 = *a4++;
    LOWORD(v10[0]) = 3;
    v10[1] = v8;
    llvm::json::OStream::value((a1 + 128), v10);
    llvm::json::Value::destroy(v10);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int *a4, uint64_t a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 4 * a5;
    do
    {
      v9 = *a4++;
      LOWORD(v11[0]) = 3;
      v11[1] = v9;
      llvm::json::OStream::value((a1 + 128), v11);
      llvm::json::Value::destroy(v11);
      v8 -= 4;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, __int16 *a4, uint64_t a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 2 * a5;
    do
    {
      v9 = *a4++;
      LOWORD(v11[0]) = 3;
      v11[1] = v9;
      llvm::json::OStream::value((a1 + 128), v11);
      llvm::json::Value::destroy(v11);
      v8 -= 2;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printList(uint64_t a1, unsigned __int8 *a2, unint64_t a3, llvm::APInt *a4, uint64_t a5)
{
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 16 * a5;
    do
    {
      v9 = llvm::json::OStream::rawValueBegin((a1 + 128));
      llvm::APInt::print(a4, v9, (*(a4 + 12) & 1) == 0);
      llvm::json::OStream::rawValueEnd(a1 + 128);
      a4 = (a4 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));

  return llvm::json::OStream::attributeEnd(a1 + 128);
}

void llvm::JSONScopedPrinter::printString(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  llvm::json::Value::Value(v4, a2, a3);
  llvm::json::OStream::value((a1 + 128), v4);
  llvm::json::Value::destroy(v4);
}

void llvm::JSONScopedPrinter::printString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  llvm::json::Value::Value(v8, a4, a5);
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v8);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v8);
}

llvm::raw_ostream *llvm::JSONScopedPrinter::objectBegin(llvm::JSONScopedPrinter *this)
{
  result = llvm::json::OStream::objectBegin((this + 128));
  v3 = *(this + 14);
  if (v3 >= *(this + 15))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(this + 6) + 8 * v3) = 1;
  ++*(this + 14);
  return result;
}

llvm::raw_ostream *llvm::JSONScopedPrinter::objectBegin(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && *(*(a1 + 48) + 8 * v4 - 8) == 1)
  {
    v5 = 0x100000001;
  }

  else
  {
    v6 = a3;
    v7 = a2;
    llvm::json::OStream::objectBegin((a1 + 128));
    a2 = v7;
    a3 = v6;
    v5 = 0x200000001;
  }

  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  result = llvm::json::OStream::objectBegin((a1 + 128));
  v9 = *(a1 + 56);
  if (v9 >= *(a1 + 60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 48) + 8 * v9) = v5;
  ++*(a1 + 56);
  return result;
}

uint64_t llvm::JSONScopedPrinter::objectEnd(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48) + 8 * *(this + 56);
  v3 = *(v2 - 8);
  v4 = *(v2 - 4);
  if (v3)
  {
    if (v3 == 1)
    {
      this = llvm::json::OStream::objectEnd((this + 128));
    }

    if ((v4 - 1) > 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    this = llvm::json::OStream::arrayEnd((this + 128));
    if ((v4 - 1) > 1)
    {
LABEL_5:
      --*(v1 + 56);
      return this;
    }
  }

  this = llvm::json::OStream::attributeEnd(v1 + 128);
  if (v4 != 2)
  {
    goto LABEL_5;
  }

  this = llvm::json::OStream::objectEnd((v1 + 128));
  --*(v1 + 56);
  return this;
}

llvm::raw_ostream *llvm::JSONScopedPrinter::arrayBegin(llvm::JSONScopedPrinter *this)
{
  result = llvm::json::OStream::arrayBegin((this + 128));
  v3 = *(this + 14);
  if (v3 >= *(this + 15))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(this + 6) + 8 * v3) = 0;
  ++*(this + 14);
  return result;
}

llvm::raw_ostream *llvm::JSONScopedPrinter::arrayBegin(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && *(*(a1 + 48) + 8 * v4 - 8) == 1)
  {
    v5 = 0x100000000;
  }

  else
  {
    v6 = a3;
    v7 = a2;
    llvm::json::OStream::objectBegin((a1 + 128));
    a2 = v7;
    a3 = v6;
    v5 = 0x200000000;
  }

  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  result = llvm::json::OStream::arrayBegin((a1 + 128));
  v9 = *(a1 + 56);
  if (v9 >= *(a1 + 60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 48) + 8 * v9) = v5;
  ++*(a1 + 56);
  return result;
}

uint64_t llvm::JSONScopedPrinter::arrayEnd(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48) + 8 * *(this + 56);
  v3 = *(v2 - 8);
  v4 = *(v2 - 4);
  if (v3)
  {
    if (v3 == 1)
    {
      this = llvm::json::OStream::objectEnd((this + 128));
    }

    if ((v4 - 1) > 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    this = llvm::json::OStream::arrayEnd((this + 128));
    if ((v4 - 1) > 1)
    {
LABEL_5:
      --*(v1 + 56);
      return this;
    }
  }

  this = llvm::json::OStream::attributeEnd(v1 + 128);
  if (v4 != 2)
  {
    goto LABEL_5;
  }

  this = llvm::json::OStream::objectEnd((v1 + 128));
  --*(v1 + 56);
  return this;
}

uint64_t llvm::JSONScopedPrinter::printBinaryImpl(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a4;
  v13[1] = a5;
  v12[0] = a6;
  v12[1] = a7;
  v11[0] = v13;
  v11[1] = a1;
  v11[2] = &a9;
  v11[3] = v12;
  llvm::json::OStream::attributeBegin((a1 + 16), a2, a3);
  llvm::json::OStream::objectBegin((a1 + 16));
  llvm::JSONScopedPrinter::printBinaryImpl(llvm::StringRef,llvm::StringRef,llvm::ArrayRef<unsigned char>,BOOL,unsigned int)::{lambda(void)#1}::operator()(v11);
  llvm::json::OStream::objectEnd((a1 + 16));
  return llvm::json::OStream::attributeEnd((a1 + 16));
}

uint64_t llvm::JSONScopedPrinter::printFlagsImpl(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  v9[0] = a5;
  v9[1] = a6;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::objectBegin((a1 + 128));
  LOWORD(v10) = 4;
  v11 = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, "Value", 5uLL);
  llvm::json::OStream::value((a1 + 128), &v10);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(&v10);
  v10 = v9;
  v11 = a1;
  llvm::json::OStream::attributeBegin(a1 + 128, "Flags", 5uLL);
  llvm::json::OStream::arrayBegin((a1 + 128));
  llvm::JSONScopedPrinter::printFlagsImpl(llvm::StringRef,llvm::HexNumber,llvm::ArrayRef<llvm::FlagEntry>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}::operator()(&v10);
  llvm::json::OStream::arrayEnd((a1 + 128));
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::OStream::objectEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

{
  v10 = a4;
  v9[0] = a5;
  v9[1] = a6;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = v9;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::objectBegin((a1 + 128));
  llvm::JSONScopedPrinter::printFlagsImpl(llvm::StringRef,llvm::HexNumber,llvm::ArrayRef<llvm::HexNumber>)::{lambda(void)#1}::operator()(v8);
  llvm::json::OStream::objectEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printHexListImpl(uint64_t a1, unsigned __int8 *a2, unint64_t a3, llvm ***a4, uint64_t a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::arrayBegin((a1 + 128));
  if (a5)
  {
    v8 = 8 * a5;
    do
    {
      v9 = *a4++;
      LOWORD(v11[0]) = 4;
      v11[1] = v9;
      llvm::json::OStream::value((a1 + 128), v11);
      llvm::json::Value::destroy(v11);
      v8 -= 8;
    }

    while (v8);
  }

  llvm::json::OStream::arrayEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

void llvm::JSONScopedPrinter::printHexImpl(uint64_t a1, unsigned __int8 *a2, unint64_t a3, llvm **a4)
{
  v5[4] = *MEMORY[0x277D85DE8];
  LOWORD(v5[0]) = 4;
  v5[1] = a4;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::value((a1 + 128), v5);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v5);
}

uint64_t llvm::JSONScopedPrinter::printHexImpl(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, llvm **a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::objectBegin((a1 + 128));
  llvm::json::Value::Value(v11, a4, a5);
  llvm::json::OStream::attributeBegin(a1 + 128, "Name", 4uLL);
  llvm::json::OStream::value((a1 + 128), v11);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v11);
  LOWORD(v11[0]) = 4;
  v11[1] = a6;
  llvm::json::OStream::attributeBegin(a1 + 128, "Value", 5uLL);
  llvm::json::OStream::value((a1 + 128), v11);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v11);
  llvm::json::OStream::objectEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printSymbolOffsetImpl(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, llvm **a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::objectBegin((a1 + 128));
  llvm::json::Value::Value(v11, a4, a5);
  llvm::json::OStream::attributeBegin(a1 + 128, "SymName", 7uLL);
  llvm::json::OStream::value((a1 + 128), v11);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v11);
  LOWORD(v11[0]) = 4;
  v11[1] = a6;
  llvm::json::OStream::attributeBegin(a1 + 128, "Offset", 6uLL);
  llvm::json::OStream::value((a1 + 128), v11);
  llvm::json::OStream::attributeEnd(a1 + 128);
  llvm::json::Value::destroy(v11);
  llvm::json::OStream::objectEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

uint64_t llvm::JSONScopedPrinter::printNumberImpl(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[0] = a4;
  v11[1] = a5;
  v10[0] = a6;
  v10[1] = a7;
  v9[0] = a1;
  v9[1] = v11;
  v9[2] = v10;
  llvm::json::OStream::attributeBegin(a1 + 128, a2, a3);
  llvm::json::OStream::objectBegin((a1 + 128));
  llvm::JSONScopedPrinter::printNumberImpl(llvm::StringRef,llvm::StringRef,llvm::StringRef)::{lambda(void)#1}::operator()(v9);
  llvm::json::OStream::objectEnd((a1 + 128));
  return llvm::json::OStream::attributeEnd(a1 + 128);
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<BOOL>>(llvm::raw_ostream **a1, const void *a2, size_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v10 = (*(*a1 + 36))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  v14 = *a4;
  v13 = a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], v14);
  v15 = a5 - 1;
  if (a5 != 1)
  {
    do
    {
      while (1)
      {
        v18 = a1[1];
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 > 1uLL)
        {
          break;
        }

        v16 = llvm::raw_ostream::write(v18, ", ", 2uLL);
        v17 = *v13++;
        llvm::raw_ostream::operator<<(v16, v17);
        if (!--v15)
        {
          goto LABEL_14;
        }
      }

      *v19 = 8236;
      *(v18 + 4) += 2;
      v20 = *v13++;
      llvm::raw_ostream::operator<<(v18, v20);
      --v15;
    }

    while (v15);
  }

LABEL_14:
  result = a1[1];
  v22 = *(result + 4);
  if (*(result + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

void *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<std::string>>(void **a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ((*a1)[36])(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 8);
  }

  llvm::raw_ostream::write(a1[1], v14, v15);
  if (a5 != 1)
  {
    v18 = 24 * a5;
    v19 = a4 + 24;
    v20 = v18 - 24;
    do
    {
      v21 = a1[1];
      v25 = v21[4];
      if (v21[3] - v25 <= 1uLL)
      {
        v21 = llvm::raw_ostream::write(v21, ", ", 2uLL);
      }

      else
      {
        *v25 = 8236;
        v21[4] += 2;
      }

      v22 = *(v19 + 23);
      if (v22 >= 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = *v19;
      }

      if (v22 >= 0)
      {
        v24 = *(v19 + 23);
      }

      else
      {
        v24 = *(v19 + 8);
      }

      llvm::raw_ostream::write(v21, v23, v24);
      v19 += 24;
      v20 -= 24;
    }

    while (v20);
  }

LABEL_16:
  result = a1[1];
  v17 = result[4];
  if (result[3] - v17 > 1uLL)
  {
    *v17 = 2653;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<unsigned long long>>(llvm::raw_ostream **a1, const void *a2, size_t a3, unint64_t *a4, uint64_t a5)
{
  v10 = (*(*a1 + 36))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  v14 = *a4;
  v13 = a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], v14);
  if (a5 != 1)
  {
    v15 = 8 * a5 - 8;
    do
    {
      while (1)
      {
        v18 = a1[1];
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 > 1uLL)
        {
          break;
        }

        v16 = llvm::raw_ostream::write(v18, ", ", 2uLL);
        v17 = *v13++;
        llvm::raw_ostream::operator<<(v16, v17);
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      *v19 = 8236;
      *(v18 + 4) += 2;
      v20 = *v13++;
      llvm::raw_ostream::operator<<(v18, v20);
      v15 -= 8;
    }

    while (v15);
  }

LABEL_14:
  result = a1[1];
  v22 = *(result + 4);
  if (*(result + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<unsigned int>>(llvm::raw_ostream **a1, const void *a2, size_t a3, unsigned int *a4, uint64_t a5)
{
  v10 = (*(*a1 + 36))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  v14 = *a4;
  v13 = a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], v14);
  if (a5 != 1)
  {
    v15 = 4 * a5 - 4;
    do
    {
      while (1)
      {
        v18 = a1[1];
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 > 1uLL)
        {
          break;
        }

        v16 = llvm::raw_ostream::write(v18, ", ", 2uLL);
        v17 = *v13++;
        llvm::raw_ostream::operator<<(v16, v17);
        v15 -= 4;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      *v19 = 8236;
      *(v18 + 4) += 2;
      v20 = *v13++;
      llvm::raw_ostream::operator<<(v18, v20);
      v15 -= 4;
    }

    while (v15);
  }

LABEL_14:
  result = a1[1];
  v22 = *(result + 4);
  if (*(result + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<unsigned short>>(llvm::raw_ostream **a1, const void *a2, size_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v10 = (*(*a1 + 36))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  v14 = *a4;
  v13 = a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], v14);
  if (a5 != 1)
  {
    v15 = 2 * a5 - 2;
    do
    {
      while (1)
      {
        v18 = a1[1];
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 > 1uLL)
        {
          break;
        }

        v16 = llvm::raw_ostream::write(v18, ", ", 2uLL);
        v17 = *v13++;
        llvm::raw_ostream::operator<<(v16, v17);
        v15 -= 2;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      *v19 = 8236;
      *(v18 + 4) += 2;
      v20 = *v13++;
      llvm::raw_ostream::operator<<(v18, v20);
      v15 -= 2;
    }

    while (v15);
  }

LABEL_14:
  result = a1[1];
  v22 = *(result + 4);
  if (*(result + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::SmallVector<unsigned int,12u>>(llvm::raw_ostream **a1, const void *a2, size_t a3, unsigned int **a4)
{
  v8 = (*(*a1 + 36))(a1);
  v9 = v8[4];
  if (a3 <= v8[3] - v9)
  {
    if (a3)
    {
      v10 = v8;
      memcpy(v8[4], a2, a3);
      v8 = v10;
      v9 = v10[4] + a3;
      v10[4] = v9;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, a2, a3);
    v9 = v8[4];
  }

  if (v8[3] - v9 > 2)
  {
    *(v9 + 2) = 91;
    *v9 = 8250;
    v8[4] += 3;
    v11 = *(a4 + 2);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v8, ": [", 3uLL);
    v11 = *(a4 + 2);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v12 = *a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], **a4);
  if (v11 != 1)
  {
    v13 = 4 * v11 - 4;
    do
    {
      while (1)
      {
        v16 = a1[1];
        v17 = *(v16 + 4);
        if (*(v16 + 3) - v17 > 1uLL)
        {
          break;
        }

        v14 = llvm::raw_ostream::write(v16, ", ", 2uLL);
        v15 = *v12++;
        llvm::raw_ostream::operator<<(v14, v15);
        v13 -= 4;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      *v17 = 8236;
      *(v16 + 4) += 2;
      v18 = *v12++;
      llvm::raw_ostream::operator<<(v16, v18);
      v13 -= 4;
    }

    while (v13);
  }

LABEL_14:
  result = a1[1];
  v20 = *(result + 4);
  if (*(result + 3) - v20 > 1uLL)
  {
    *v20 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned char const&>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 4 * v2) = *a2;
  v3 = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 4 * v3 - 4;
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<long long>>(llvm::raw_ostream **a1, const void *a2, size_t a3, unint64_t *a4, uint64_t a5)
{
  v10 = (*(*a1 + 36))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  v14 = *a4;
  v13 = a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], v14);
  if (a5 != 1)
  {
    v15 = 8 * a5 - 8;
    do
    {
      while (1)
      {
        v18 = a1[1];
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 > 1uLL)
        {
          break;
        }

        v16 = llvm::raw_ostream::write(v18, ", ", 2uLL);
        v17 = *v13++;
        llvm::raw_ostream::operator<<(v16, v17);
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      *v19 = 8236;
      *(v18 + 4) += 2;
      v20 = *v13++;
      llvm::raw_ostream::operator<<(v18, v20);
      v15 -= 8;
    }

    while (v15);
  }

LABEL_14:
  result = a1[1];
  v22 = *(result + 4);
  if (*(result + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<int>>(llvm::raw_ostream **a1, const void *a2, size_t a3, int *a4, uint64_t a5)
{
  v10 = (*(*a1 + 36))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  v14 = *a4;
  v13 = a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], v14);
  if (a5 != 1)
  {
    v15 = 4 * a5 - 4;
    do
    {
      while (1)
      {
        v18 = a1[1];
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 > 1uLL)
        {
          break;
        }

        v16 = llvm::raw_ostream::write(v18, ", ", 2uLL);
        v17 = *v13++;
        llvm::raw_ostream::operator<<(v16, v17);
        v15 -= 4;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      *v19 = 8236;
      *(v18 + 4) += 2;
      v20 = *v13++;
      llvm::raw_ostream::operator<<(v18, v20);
      v15 -= 4;
    }

    while (v15);
  }

LABEL_14:
  result = a1[1];
  v22 = *(result + 4);
  if (*(result + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<short>>(llvm::raw_ostream **a1, const void *a2, size_t a3, __int16 *a4, uint64_t a5)
{
  v10 = (*(*a1 + 36))(a1);
  v11 = v10[4];
  if (a3 <= v10[3] - v11)
  {
    if (a3)
    {
      v12 = v10;
      memcpy(v10[4], a2, a3);
      v10 = v12;
      v11 = v12[4] + a3;
      v12[4] = v11;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, a2, a3);
    v11 = v10[4];
  }

  if (v10[3] - v11 > 2)
  {
    *(v11 + 2) = 91;
    *v11 = 8250;
    v10[4] += 3;
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ": [", 3uLL);
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  v14 = *a4;
  v13 = a4 + 1;
  llvm::raw_ostream::operator<<(a1[1], v14);
  if (a5 != 1)
  {
    v15 = 2 * a5 - 2;
    do
    {
      while (1)
      {
        v18 = a1[1];
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 > 1uLL)
        {
          break;
        }

        v16 = llvm::raw_ostream::write(v18, ", ", 2uLL);
        v17 = *v13++;
        llvm::raw_ostream::operator<<(v16, v17);
        v15 -= 2;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      *v19 = 8236;
      *(v18 + 4) += 2;
      v20 = *v13++;
      llvm::raw_ostream::operator<<(v18, v20);
      v15 -= 2;
    }

    while (v15);
  }

LABEL_14:
  result = a1[1];
  v22 = *(result + 4);
  if (*(result + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}