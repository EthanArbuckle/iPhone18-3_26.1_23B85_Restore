BOOL llvm::sys::path::has_root_directory(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v12 = v14;
  v13 = xmmword_1002B0230;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_directory(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v9 != 0;
}

uint64_t llvm::sys::path::is_absolute(llvm::sys::path *this, const llvm::Twine *a2)
{
  v14 = v16;
  v15 = xmmword_1002B0230;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v14);
    v5 = v14;
    v6 = v15;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = *(*this + 8);
  }

LABEL_15:
  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_directory = llvm::sys::path::has_root_directory(&v11, a2);
  if (a2 < 2)
  {
    has_root_name = 1;
    v9 = v14;
    if (v14 == v16)
    {
      return has_root_directory & has_root_name;
    }

    goto LABEL_19;
  }

  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_name = llvm::sys::path::has_root_name(&v11, a2);
  v9 = v14;
  if (v14 != v16)
  {
LABEL_19:
    free(v9);
  }

  return has_root_directory & has_root_name;
}

void llvm::sys::fs::createUniquePath(uint64_t a1, uint64_t a2, int a3)
{
  v20 = v22;
  v21 = xmmword_1002B0230;
  llvm::Twine::toVector(a1, &v20);
  if (a3)
  {
    v19[4] = 261;
    v17 = v20;
    *&v18 = v21;
    if ((llvm::sys::path::is_absolute(&v17, 0) & 1) == 0)
    {
      v17 = v19;
      v18 = xmmword_1002B0230;
      llvm::sys::path::system_temp_directory(1, &v17);
      v16 = 261;
      v15[0] = v20;
      v15[1] = v21;
      v14 = 257;
      v12 = 257;
      v10 = 257;
      llvm::sys::path::append(&v17, 0, v15, &v13, &v11, &v9);
      sub_1000528E8(&v20, &v17);
      if (v17 != v19)
      {
        free(v17);
      }
    }
  }

  if (&v20 == a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = v21;
    v6 = *(a2 + 8);
    if (v6 >= v21)
    {
      if (v21)
      {
        memmove(*a2, v20, v21);
      }
    }

    else
    {
      if (*(a2 + 16) >= v21)
      {
        if (v6)
        {
          memmove(*a2, v20, *(a2 + 8));
        }
      }

      else
      {
        *(a2 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5, 1);
        v6 = 0;
      }

      if (v21 != v6)
      {
        memcpy((*a2 + v6), &v20[v6], v21 - v6);
      }
    }

    *(a2 + 8) = v5;
  }

  if (v5 + 1 > *(a2 + 16))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5 + 1, 1);
    *(*a2 + *(a2 + 8)) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(*a2 + v5) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  v8 = 0;
  do
  {
    if (v20[v8] == 37)
    {
      *(*a2 + v8) = a0123456789abcd_2[llvm::sys::Process::GetRandomNumber() & 0xF];
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_24:
  if (v20 != v22)
  {
    free(v20);
  }
}

void llvm::sys::path::system_temp_directory(int a1, uint64_t a2)
{
  v3 = 65537;
  *(a2 + 8) = 0;
  if (a1)
  {
    v4 = getenv("TMPDIR");
    if (v4 || (v4 = getenv("TMP")) != 0 || (v4 = getenv("TEMP")) != 0 || (v4 = getenv("TEMPDIR")) != 0)
    {
      v5 = v4;
      v6 = strlen(v4);
      v7 = v6;
      if (*(a2 + 16) >= v6)
      {
        v8 = 0;
        v13 = 0;
        if (!v6)
        {
LABEL_24:
          *(a2 + 8) = v13 + v7;
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v6, 1);
        v8 = *(a2 + 8);
      }

      memcpy((*a2 + v8), v5, v7);
      v13 = *(a2 + 8);
      goto LABEL_24;
    }
  }

  else
  {
    v3 = 65538;
  }

  v9 = confstr(v3, 0, 0);
  v10 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_26;
  }

  v11 = v9;
  while (v10 == v11)
  {
    v12 = confstr(v3, *a2, v10);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_20:
    v11 = v12;
    v10 = *(a2 + 8);
    if (v12 == v10)
    {
      *(a2 + 8) = v12 - 1;
      return;
    }
  }

  if (v10 <= v11)
  {
    if (*(a2 + 16) < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v11, 1);
      v10 = *(a2 + 8);
    }

    if (v11 != v10)
    {
      bzero((*a2 + v10), v11 - v10);
    }
  }

  *(a2 + 8) = v11;
  v12 = confstr(v3, *a2, v11);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_25:
  v10 = 0;
  *(a2 + 8) = 0;
LABEL_26:
  if (*(a2 + 16) < v10 + 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v10 + 9, 1);
    v10 = *(a2 + 8);
  }

  v14 = *a2 + v10;
  *v14 = *"/var/tmp/";
  *(v14 + 8) = 47;
  *(a2 + 8) += 9;
}

void sub_100053190(uint64_t a1, int *a2, void *a3, int a4, int a5, int a6, uint64_t a7)
{
  v14 = std::system_category();
  if (a5 == 2)
  {
    v22 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v23 = *a3;
      v37 = 257;
      if (*v23)
      {
        v36 = v23;
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      LOBYTE(v37) = v24;
      v38 = &v40;
      v39 = xmmword_1002B0230;
      v25 = llvm::Twine::toNullTerminatedStringRef(&v36, &v38);
      v26 = 0;
      v27 = v14;
      if (access(v25, 0) == -1)
      {
        break;
      }

      v28 = v38;
      if (v38 != &v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      if ((v27 != std::generic_category() || v26 != 2) && !v26 && --v22 >= 2)
      {
        continue;
      }

      return;
    }

    v26 = *__error();
    v27 = std::generic_category();
    v28 = v38;
    if (v38 == &v40)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v28);
    goto LABEL_22;
  }

  if (a5 == 1)
  {
    v15 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v16 = *a3;
      v41 = 257;
      if (*v16)
      {
        v38 = v16;
        v17 = 3;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v41) = v17;
      v19 = llvm::sys::fs::openFile(&v38, a2, 1, 3, a6, a7);
      if (!v19)
      {
        break;
      }

      v20 = v18;
      v21 = std::generic_category();
      if (v19 == 17 && v21 == v20)
      {
        if (--v15 <= 1)
        {
          return;
        }
      }

      else
      {
        if (v19 != 13)
        {
          return;
        }

        if (v21 != v20)
        {
          return;
        }

        if (--v15 <= 1)
        {
          return;
        }
      }
    }
  }

  else if (a5)
  {
    llvm::sys::fs::createUniquePath(a1, a3, a4);
    __break(1u);
  }

  else
  {
    for (i = 129; i > 1; --i)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v30 = *a3;
      v41 = 257;
      if (*v30)
      {
        v38 = v30;
        v31 = 3;
      }

      else
      {
        v31 = 1;
      }

      LOBYTE(v41) = v31;
      directory = llvm::sys::fs::create_directory(&v38, 0, 0x1F8u);
      if (!directory)
      {
        break;
      }

      v34 = v32;
      v35 = std::generic_category();
      if (directory != 17)
      {
        break;
      }

      if (v35 != v34)
      {
        break;
      }
    }
  }
}

void sub_1000534F8(uint64_t *a1, __int128 *a2, uint64_t a3, int *a4, void *a5, int a6, int a7)
{
  v11 = "-%%%%%%";
  if (a3)
  {
    v11 = "-%%%%%%.";
  }

  if (*v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    *&v23 = v11;
    LOBYTE(v25) = v12;
    BYTE1(v25) = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      LOBYTE(v12) = 0;
      LOWORD(v25) = 256;
LABEL_20:
      v14 = 1;
      goto LABEL_26;
    }

    if (*v11)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *(a1 + 33) == 1;
      BYTE1(v25) = v12;
      if (v17)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2;
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      *&v23 = v18;
      *(&v23 + 1) = v16;
      *&v24 = v11;
      LOBYTE(v25) = v12;
    }

    else
    {
      v22 = *(a1 + 1);
      v23 = *a1;
      v24 = v22;
      v25 = a1[4];
      v12 = v25;
      if (!v25)
      {
        goto LABEL_20;
      }
    }
  }

  if (v12 == 1)
  {
    v26 = a2;
    v27 = a3;
    v14 = 1;
    LOBYTE(v12) = 5;
  }

  else
  {
    if (BYTE1(v25) != 1)
    {
      LOBYTE(v12) = 2;
    }

    v19 = &v23;
    if (BYTE1(v25) == 1)
    {
      v19 = v23;
    }

    v26 = v19;
    v27 = *(&v23 + 1);
    v28 = a2;
    v29 = a3;
    v14 = 5;
  }

LABEL_26:
  v30 = v12;
  v31 = v14;
  v35 = v37;
  v36 = xmmword_1002B0230;
  v20 = llvm::Twine::toNullTerminatedStringRef(&v26, &v35);
  v21 = 1;
  v34 = 1;
  if (*v20)
  {
    v32 = v20;
    v21 = 3;
  }

  v33 = v21;
  sub_100053190(&v32, a4, a5, 1, a6, a7, 438);
  if (v35 != v37)
  {
    free(v35);
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4, int a5)
{
  v6 = 0;
  sub_1000534F8(a1, a2, a3, &v6, a4, 1, a5);
  if (!v5)
  {
    close(v6);
  }
}

uint64_t llvm::sys::fs::create_directory(uint64_t a1, char a2, mode_t a3)
{
  v9 = v11;
  v10 = xmmword_1002B0230;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (mkdir(v5, a3) == -1 && (*__error() != 17 || (a2 & 1) == 0))
  {
    v6 = *__error();
    std::generic_category();
    v7 = v9;
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_5;
  }

  std::system_category();
  v6 = 0;
  v7 = v9;
  if (v9 != v11)
  {
LABEL_5:
    free(v7);
  }

  return v6;
}

unint64_t llvm::sys::fs::openFileForRead(uint64_t a1, int *a2, int a3, void *a4)
{
  v6 = llvm::sys::fs::openFile(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v10 = strlen(__s);
        v11 = a4[1];
        if (a4[2] < v11 + v10)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v11 + v10, 1);
          v11 = a4[1];
        }

        if (v10)
        {
          memcpy((*a4 + v11), __s, v10);
          v11 = a4[1];
        }

        a4[1] = v11 + v10;
      }
    }

    std::system_category();
    v8 = 0;
  }

  return v8 | v7;
}

ssize_t llvm::sys::fs::readNativeFileToEOF@<X0>(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v11, 1);
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        *&v19.__val_ = std::generic_category();
        result = llvm::errorCodeToError(v16, v19, &v18);
        v17 = v18;
        goto LABEL_17;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_17:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

unint64_t llvm::sys::fs::getMainExecutable@<X0>(_BYTE *a1@<X8>)
{
  bufsize = 1024;
  result = _NSGetExecutablePath(buf, &bufsize);
  if (result || (result = realpath_DARWIN_EXTSN(buf, __s)) == 0)
  {
    a1[23] = 0;
    *a1 = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003FC0();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a1[23] = result;
    if (result)
    {
      result = memcpy(a1, __s, result);
    }

    a1[v6] = 0;
  }

  return result;
}

uint64_t llvm::sys::fs::remove(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v10 = v12;
  v11 = xmmword_1002B0230;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v3, &v9))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v9.st_mode & 0xF000;
    if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
    {
      v5 = 1;
LABEL_15:
      std::generic_category();
      v7 = v10;
      if (v10 == v12)
      {
        return v5;
      }

      goto LABEL_12;
    }

    if (remove(v3, v4) == -1 && (*__error() != 2 || (v2 & 1) == 0))
    {
LABEL_4:
      v5 = *__error();
      goto LABEL_15;
    }
  }

  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_12:
    free(v7);
  }

  return v5;
}

uint64_t llvm::sys::fs::access(uint64_t a1, int a2)
{
  v9 = v11;
  v10 = xmmword_1002B0230;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (!a2)
  {
LABEL_9:
    if (access(v3, a2) != -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    v5 = *__error();
    std::generic_category();
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (a2 != 2)
  {
    a2 = 2;
    goto LABEL_9;
  }

  v4 = v3;
  if (access(v3, 5) == -1)
  {
    goto LABEL_13;
  }

  if (stat(v4, &v8) || (v8.st_mode & 0xF000) != 0x8000)
  {
    std::generic_category();
    v5 = 13;
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::system_category();
  v5 = 0;
  v6 = v9;
  if (v9 != v11)
  {
LABEL_11:
    free(v6);
  }

  return v5;
}

uint64_t sub_100053E1C(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
    result = v4;
    if (v4 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      return 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v6 = a2[10];
    v7 = a2[14];
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = v8 >> 12;
    if (v10 == 7)
    {
      v11 = 9;
    }

    else
    {
      v11 = dword_1002B0578[v10 ^ 8];
    }

    v12 = *a2;
    v13 = *(a2 + 3);
    v14 = *(a2 + 1);
    v15 = *(a2 + 6);
    v16 = *(a2 + 12);
    v17 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v15;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v17;
    *(a3 + 32) = v16;
    *(a3 + 40) = v11;
    *(a3 + 44) = v9;
    *(a3 + 48) = v12;
    *(a3 + 52) = v13;
    *(a3 + 56) = v14;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::mapped_file_region(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *llvm::sys::fs::mapped_file_region::unmapImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return munmap(result, *this);
  }

  return result;
}

void *llvm::sys::fs::mapped_file_region::dontNeedImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return posix_madvise(result, *this, 4);
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::alignment(llvm::sys::fs::mapped_file_region *this)
{
  llvm::sys::Process::getPageSize(&v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  v1 = v6;
  v6 = 0;
  v4 = v1;
  sub_10002C548(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v7)
  {
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return 4096;
}

uint64_t llvm::sys::fs::openFile(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0x600;
  v11 = v8 | 0x200;
  if (a3 == 1)
  {
    v8 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v8 = v11;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((a5 << 20) & 0x1000000 | (2 * (a5 & 4))) ^ 0x1000000;
  v19 = v21;
  v20 = xmmword_1002B0230;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v19);
  while (1)
  {
    *__error() = 0;
    v15 = open(v14, v12 | v13, a6);
    if (v15 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    v17 = v19;
    if (v19 == v21)
    {
      return v16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *__error();
  std::generic_category();
  v17 = v19;
  if (v19 == v21)
  {
    return v16;
  }

LABEL_23:
  free(v17);
  return v16;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v8, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, &v7);
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v8;
  }

  return result;
}

ssize_t llvm::sys::fs::readNativeFileSlice@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      *&v13.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v11, v13, &v12);
      *(a5 + 8) |= 1u;
      *a5 = v12;
      return result;
    }
  }

  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::sys::fs::closeFile(llvm::sys::fs *this, int *a2)
{
  v2 = *this;
  *this = -1;
  return llvm::sys::Process::SafelyCloseFileDescriptor(v2);
}

void llvm::sys::Process::getPageSize(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_1002E4880, memory_order_acquire))
  {
    v3 = dword_1002E4878;
    if (dword_1002E4878 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v3;
      return;
    }
  }

  else
  {
    sub_10029912C();
    v3 = dword_1002E4878;
    if (dword_1002E4878 != -1)
    {
      goto LABEL_3;
    }
  }

  v4 = *__error();
  *&v6.__val_ = std::generic_category();
  llvm::errorCodeToError(v4, v6, &v5);
  *(a1 + 8) |= 1u;
  *a1 = v5;
}

uint64_t llvm::sys::Process::SafelyCloseFileDescriptor(llvm::sys::Process *this)
{
  v1 = this;
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(v1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t llvm::sys::Process::FileDescriptorHasColors(llvm::sys::Process *this)
{
  result = isatty(this);
  if (result)
  {
    v2 = getenv("TERM");
    v4 = v2;
    if (!v2)
    {
      return (v4 != 0) & v3;
    }

    v5 = strlen(v2);
    switch(v5)
    {
      case 6uLL:
        if (*v4 == 2003269987 && *(v4 + 2) == 28265)
        {
          goto LABEL_41;
        }

        break;
      case 5uLL:
        if (*v4 == 1970170220 && v4[4] == 120)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      case 4uLL:
        if (*v4 == 1769172577 || *v4 == 1953921138)
        {
LABEL_41:
          v3 = 1;
          return (v4 != 0) & v3;
        }

LABEL_40:
        v3 = 0;
        return (v4 != 0) & v3;
      default:
        if (v5 < 6)
        {
          goto LABEL_40;
        }

        break;
    }

    if (*v4 == 1701995379 && *(v4 + 2) == 28261)
    {
      goto LABEL_41;
    }

LABEL_27:
    if (*v4 == 1919251576 && v4[4] == 109)
    {
      goto LABEL_41;
    }

    v10 = *v4 == 808547446 && v4[4] == 48;
    if (v10 || *v4 == 1953921138)
    {
      goto LABEL_41;
    }

    if (*&v4[v5 - 5] == 1869377379 && v4[v5 - 1] == 114)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t llvm::sys::ExecuteAndWait(void *a1, size_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v18[0] = 0;
  v18[2] = 0;
  v16 = *a5;
  v17 = *(a5 + 2);
  LODWORD(v15) = a9;
  if (sub_100054840(v18, a1, a2, a3, a4, &v16, a6, a7, v15, a10))
  {
    if (a11)
    {
      *a11 = 0;
    }

    llvm::sys::Wait(v18, a8 | ((a8 != 0) << 32), a10, a12, 0);
    return v13;
  }

  else
  {
    if (a11)
    {
      *a11 = 1;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100054840(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __src = a2;
  __len = a3;
  v35 = 261;
  v33.__r_.__value_.__r.__words[0] = a2;
  v33.__r_.__value_.__l.__size_ = a3;
  if (!llvm::sys::fs::access(&v33, 0))
  {
    *&v33.__r_.__value_.__l.__data_ = 0uLL;
    v33.__r_.__value_.__r.__words[2] = &v35;
    v34 = 0x400000000;
    v36 = v38;
    v37 = 0;
    v38[0] = 0;
    v38[1] = 1;
    *__s = &v33;
    if (a5)
    {
      llvm::StringSaver::save(__s, *a4, *(a4 + 8));
      operator new();
    }

    operator new();
  }

  if (a10)
  {
    *(&v32.__r_.__value_.__s + 23) = 12;
    strcpy(&v32, "Executable ");
    if (a2)
    {
      if (a3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100003FC0();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      v15 = HIBYTE(v31);
      v13 = *(&__dst + 1);
      v14 = __dst;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      __dst = 0uLL;
      v31 = 0;
    }

    if ((v15 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = v14;
    }

    if ((v15 & 0x80u) == 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    v18 = std::string::append(&v32, p_dst, v17);
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v27 = 16;
    strcpy(__s, " doesn't exist!");
    v20 = std::string::append(&v33, __s, 0x10uLL);
    v21 = v20->__r_.__value_.__r.__words[0];
    v39[0] = v20->__r_.__value_.__l.__size_;
    *(v39 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (*(a10 + 23) < 0)
    {
      operator delete(*a10);
    }

    v23 = v39[0];
    *a10 = v21;
    *(a10 + 8) = v23;
    *(a10 + 15) = *(v39 + 7);
    *(a10 + 23) = v22;
    if (v27 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_31:
      operator delete(v32.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_30:
    operator delete(__dst);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t llvm::sys::Wait(pid_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = a2 == 0;
    v25.__sigaction_u.__sa_handler = nullsub_122;
    *&v25.sa_mask = 0;
    sigaction(14, &v25, &v24);
    alarm(a2);
    v23 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v23 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a4 + 24) == 1)
  {
    *(a4 + 24) = 0;
  }

LABEL_7:
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(result) = wait4(v10, &v23, v11, &v22);
  }

  else
  {
    while (1)
    {
      LODWORD(result) = wait4(v10, &v23, v11, &v22);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        LODWORD(result) = -1;
        if (*a1 != -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }
  }

  if (result != *a1)
  {
    if (!result)
    {
      return result;
    }

LABEL_15:
    v13 = result;
    if ((a2 & 0x100000000) != 0 && *__error() == 4 && (a5 & 1) == 0)
    {
      kill(*a1, 9);
      alarm(0);
      sigaction(14, &v24, 0);
      if (wait(&v23) != v10)
      {
        operator new();
      }

      *(&v21.__r_.__value_.__s + 23) = 15;
      strcpy(&v21, "Child timed out");
      sub_100056134(a3, &v21.__r_.__value_.__l.__data_, 0);
      LODWORD(result) = v13;
      return result;
    }

    if (*__error() != 4)
    {
      operator new();
    }

    LODWORD(result) = v13;
  }

LABEL_18:
  if ((a2 & 0x100000000) != 0)
  {
    v14 = result;
    alarm(0);
    sigaction(14, &v24, 0);
    LODWORD(result) = v14;
  }

  if (a4)
  {
    v15 = v22.ru_utime.tv_usec + 1000000 * v22.ru_utime.tv_sec;
    ru_maxrss = v22.ru_maxrss;
    v17 = *(a4 + 24);
    *a4 = v15 + 1000000 * v22.ru_stime.tv_sec + v22.ru_stime.tv_usec;
    *(a4 + 8) = v15;
    *(a4 + 16) = ru_maxrss;
    if ((v17 & 1) == 0)
    {
      *(a4 + 24) = 1;
    }
  }

  if ((v23 & 0x7F) != 0x7F)
  {
    if ((v23 & 0x7F) != 0)
    {
      if (!a3)
      {
        return result;
      }

      v18 = result;
      v19 = strsignal(v23 & 0x7F);
      std::string::assign(a3, v19);
      if ((v23 & 0x80) != 0)
      {
        std::string::append(a3, " (core dumped)");
      }
    }

    else
    {
      if (BYTE1(v23) == 126)
      {
        if (a3)
        {
          v20 = result;
          std::string::assign(a3, "Program could not be executed");
          LODWORD(result) = v20;
        }

        return result;
      }

      if (BYTE1(v23) != 127 || !a3)
      {
        return result;
      }

      v18 = result;
      llvm::sys::StrError(2, &v21);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v21;
    }

    LODWORD(result) = v18;
  }

  return result;
}

double llvm::sys::findProgramByName@<D0>(void *__s@<X0>, size_t __n@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (__n)
  {
    v9 = memchr(__s, 47, __n);
    if (v9)
    {
      if (v9 - __s != -1)
      {
        if (__n > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_38:
          sub_100003FC0();
        }

        if (__n >= 0x17)
        {
          operator new();
        }

        HIBYTE(v41[0]) = __n;
        memmove(v40, __s, __n);
        *(v40 + __n) = 0;
        *(a5 + 24) &= ~1u;
        result = *v40;
        *a5 = *v40;
        *(a5 + 16) = v41[0];
        return result;
      }
    }
  }

  v40[0] = v41;
  v40[1] = 0x1000000000;
  if (a4)
  {
    v10 = &a3[2 * a4];
    goto LABEL_11;
  }

  v22 = getenv("PATH");
  if (v22)
  {
    v23 = v22;
    v24 = strlen(v22);
    llvm::SplitString(v23, v24, v40, ":", 1);
    if (LODWORD(v40[1]))
    {
      a3 = v40[0];
      v10 = (v40[0] + 16 * LODWORD(v40[1]));
      do
      {
LABEL_11:
        v11 = a3[1];
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = *a3;
        __src = v39;
        __len = xmmword_1002B0230;
        if (v11 < 0x81)
        {
          v13 = 0;
          v14 = v39;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, v11, 1);
          v14 = __src;
          v13 = __len;
        }

        memcpy(&v14[v13], v12, v11);
        *&__len = __len + v11;
        v36 = 261;
        *&__dst = __s;
        *(&__dst + 1) = __n;
        v33 = 257;
        v31 = 257;
        v29 = 257;
        llvm::sys::path::append(&__src, &__dst, &v32, &v30, &v28);
        if ((__len + 1) > *(&__len + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, __len + 1, 1);
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
LABEL_17:
            *&__dst = v16;
            LOBYTE(v36) = 3;
            can_execute = llvm::sys::fs::can_execute(&__dst, v15);
            v18 = can_execute;
            v19 = __src;
            if (!can_execute)
            {
              goto LABEL_28;
            }

            goto LABEL_21;
          }
        }

        else
        {
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
            goto LABEL_17;
          }
        }

        LOBYTE(v36) = 1;
        v20 = llvm::sys::fs::can_execute(&__dst, v15);
        v18 = v20;
        v19 = __src;
        if (!v20)
        {
          goto LABEL_28;
        }

LABEL_21:
        v21 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_38;
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v35) = __len;
        if (__len)
        {
          memmove(&__dst, v19, __len);
        }

        *(&__dst + v21) = 0;
        *(a5 + 24) &= ~1u;
        result = *&__dst;
        *a5 = __dst;
        *(a5 + 16) = v35;
        v19 = __src;
LABEL_28:
        if (v19 != v39)
        {
          free(v19);
        }

        if (v18)
        {
          goto LABEL_34;
        }

LABEL_10:
        a3 += 2;
      }

      while (a3 != v10);
    }
  }

  *(a5 + 24) |= 1u;
  v25 = std::generic_category();
  *a5 = 2;
  *(a5 + 8) = v25;
LABEL_34:
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  return result;
}

_BYTE *sub_100056080(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003FC0();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void sub_100056134(uint64_t a1, const void **a2, std::string *this)
{
  if (a1)
  {
    v3 = this;
    if (this == -1)
    {
      v3 = *__error();
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6 + 2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003FC0();
    }

    if (v6 + 2 >= 0x17)
    {
      operator new();
    }

    memset(&v15, 0, sizeof(v15));
    *(&v15.__r_.__value_.__s + 23) = v6 + 2;
    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(&v15, v7, v6);
    }

    strcpy(&v15 + v6, ": ");
    llvm::sys::StrError(v3, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, p_p, size);
    v11 = v10->__r_.__value_.__r.__words[0];
    v16[0] = v10->__r_.__value_.__l.__size_;
    *(v16 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = v16[0];
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 15) = *(v16 + 7);
    *(a1 + 23) = v12;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_27:
      operator delete(v15.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }
}

_BYTE *sub_100056318(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003FC0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_1000563F0(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  memset(&v19, 0, sizeof(v19));
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003FC0();
    }

    v6 = *a1;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    memmove(&__dst, v6, v5);
    __dst.__r_.__value_.__s.__data_[v5] = 0;
    v19 = __dst;
  }

  else
  {
    std::string::assign(&v19, "/dev/null");
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if (a2)
  {
    v9 = open(v8, 513, 438);
  }

  else
  {
    v9 = open(v8, 0, 438);
  }

  if (v9 != -1)
  {
    v10 = v9;
    if (dup2(v9, a2) == -1)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "Cannot dup2");
      sub_100056134(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
      close(v10);
      result = 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      close(v10);
      result = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    return result;
  }

  std::operator+<char>();
  v11 = std::string::append(&v16, "' for ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    v13 = "output";
  }

  else
  {
    v13 = "input";
  }

  v14 = std::string::append(&v17, v13);
  __dst = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  sub_100056134(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    result = 1;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  operator delete(v16.__r_.__value_.__l.__data_);
  result = 1;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_33:
    v15 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v15;
  }

  return result;
}

uint64_t sub_1000566A0(unsigned int a1)
{
  v1 = a1 << 20;
  getrlimit(2, &v3);
  v3.rlim_cur = v1;
  setrlimit(2, &v3);
  getrlimit(5, &v3);
  v3.rlim_cur = v1;
  return setrlimit(5, &v3);
}

llvm::sys::RWMutexImpl *llvm::sys::RWMutexImpl::RWMutexImpl(llvm::sys::RWMutexImpl *this)
{
  *this = 0;
  v2 = malloc_type_malloc(0xC8uLL, 0x3C0F72FBuLL);
  if (!v2)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *this = v3;
  return this;
}

void llvm::sys::RWMutexImpl::~RWMutexImpl(pthread_rwlock_t **this)
{
  v1 = *this;
  pthread_rwlock_destroy(*this);
  free(v1);
}

uint64_t llvm::sys::RunSignalHandlers(llvm::sys *this)
{
  v1 = 2;
  v2 = 2;
  atomic_compare_exchange_strong(dword_1002E4950, &v2, 3u);
  if (v2 == 2)
  {
    result = qword_1002E4940(*algn_1002E4948);
    qword_1002E4940 = 0;
    *algn_1002E4948 = 0;
    atomic_store(0, dword_1002E4950);
  }

  atomic_compare_exchange_strong(dword_1002E4968, &v1, 3u);
  if (v1 == 2)
  {
    result = qword_1002E4958(unk_1002E4960);
    qword_1002E4958 = 0;
    unk_1002E4960 = 0;
    atomic_store(0, dword_1002E4968);
  }

  v4 = 2;
  v5 = 2;
  atomic_compare_exchange_strong(dword_1002E4980, &v5, 3u);
  if (v5 == 2)
  {
    result = qword_1002E4970(*algn_1002E4978);
    qword_1002E4970 = 0;
    *algn_1002E4978 = 0;
    atomic_store(0, dword_1002E4980);
  }

  atomic_compare_exchange_strong(dword_1002E4998, &v4, 3u);
  if (v4 == 2)
  {
    result = qword_1002E4988(unk_1002E4990);
    qword_1002E4988 = 0;
    unk_1002E4990 = 0;
    atomic_store(0, dword_1002E4998);
  }

  v6 = 2;
  v7 = 2;
  atomic_compare_exchange_strong(dword_1002E49B0, &v7, 3u);
  if (v7 == 2)
  {
    result = qword_1002E49A0(*algn_1002E49A8);
    qword_1002E49A0 = 0;
    *algn_1002E49A8 = 0;
    atomic_store(0, dword_1002E49B0);
  }

  atomic_compare_exchange_strong(dword_1002E49C8, &v6, 3u);
  if (v6 == 2)
  {
    result = qword_1002E49B8(unk_1002E49C0);
    qword_1002E49B8 = 0;
    unk_1002E49C0 = 0;
    atomic_store(0, dword_1002E49C8);
  }

  v8 = 2;
  v9 = 2;
  atomic_compare_exchange_strong(dword_1002E49E0, &v9, 3u);
  if (v9 != 2)
  {
    atomic_compare_exchange_strong(dword_1002E49F8, &v8, 3u);
    if (v8 != 2)
    {
      return result;
    }

LABEL_17:
    result = qword_1002E49E8(unk_1002E49F0);
    qword_1002E49E8 = 0;
    unk_1002E49F0 = 0;
    atomic_store(0, dword_1002E49F8);
    return result;
  }

  result = qword_1002E49D0(*algn_1002E49D8);
  qword_1002E49D0 = 0;
  *algn_1002E49D8 = 0;
  atomic_store(0, dword_1002E49E0);
  atomic_compare_exchange_strong(dword_1002E49F8, &v8, 3u);
  if (v8 == 2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_100056A28(unint64_t a1, unint64_t a2, uint64_t a3, int a4, llvm::raw_ostream *a5)
{
  __src.n128_u64[0] = a1;
  __src.n128_u64[1] = a2;
  v84 = a3;
  v83 = a4;
  if ((byte_1002E4888 & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v7 = std::system_category();
  v121 |= 1u;
  v119.n128_u64[0] = 0;
  v119.n128_u64[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (!v8)
  {
    if (__src.n128_u64[1])
    {
      *v104 = llvm::sys::path::parent_path(__src.n128_u64[0], __src.n128_u64[1], 0);
      *&v104[8] = v12;
      if (v12)
      {
        llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, v104, 1, &__p);
        sub_10005781C(&v119, &__p);
        if ((v88 & 1) == 0 && SHIBYTE(v87) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      if ((v121 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = strlen(v8);
  llvm::sys::findProgramByName(v9, v10, 0, 0, &__p);
  v11 = v121;
  if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
  {
    operator delete(v119.n128_u64[0]);
    v11 = v121;
  }

  if (v88)
  {
    v121 = v11 | 1;
    v119 = __p;
LABEL_17:
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
    v11 = v121;
    if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
    {
      operator delete(v119.n128_u64[0]);
      v11 = v121;
    }

    if (v88)
    {
      return 0;
    }
  }

  v121 = v11 & 0xFE;
  v119 = __p;
  v120 = v87;
LABEL_22:
  LOWORD(v89) = 261;
  __p = __src;
  if (llvm::sys::fs::access(&__p, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
  }

  else
  {
    v13 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003FC0();
    }

    if (__src.n128_u64[1] >= 0x17)
    {
      operator new();
    }

    v82 = __src.n128_i8[8];
    if (__src.n128_u64[1])
    {
      memmove(&__dst, __src.n128_u64[0], __src.n128_u64[1]);
    }

    *(&__dst + v13) = 0;
  }

  v112[4] = 0;
  v112[5] = 0;
  v113 = v115;
  v114 = 0x400000000;
  v116 = v118;
  v117 = 0;
  v118[0] = 0;
  v118[1] = 1;
  if (v83)
  {
    if ((v83 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v14 = _dyld_image_count();
  if (v14)
  {
    v15 = v14;
    for (i = 0; i != v15; ++i)
    {
      _dyld_get_image_name(i);
      _dyld_get_image_vmaddr_slide(i);
      _dyld_get_image_header(i);
    }
  }

  v80 = 0;
  v110 = v112;
  v111 = xmmword_1002B0260;
  v107 = v109;
  v108 = xmmword_1002B0260;
  __p.n128_u64[0] = "symbolizer-input";
  LOWORD(v89) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v80, &v110, 0);
  __p.n128_u64[0] = "symbolizer-output";
  LOWORD(v89) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v107, 0);
  v17 = v111;
  if ((v111 + 1) > *(&v111 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v110, v112, v111 + 1, 1);
    v17 = v111;
  }

  *(v110 + v17) = 0;
  LOWORD(v89) = 257;
  if (*v110)
  {
    __p.n128_u64[0] = v110;
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  LOBYTE(v89) = v18;
  *v104 = v105;
  *&v104[8] = xmmword_1002B0230;
  v106 = 1;
  llvm::Twine::toVector(&__p, v104);
  v19 = v108;
  if ((v108 + 1) > *(&v108 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v107, v109, v108 + 1, 1);
    v19 = v108;
  }

  *(v107 + v19) = 0;
  LOWORD(v89) = 257;
  if (*v107)
  {
    __p.n128_u64[0] = v107;
    v20 = 3;
  }

  else
  {
    v20 = 1;
  }

  LOBYTE(v89) = v20;
  *v101 = v102;
  *&v101[8] = xmmword_1002B0230;
  v103 = 1;
  llvm::Twine::toVector(&__p, v101);
  llvm::raw_fd_ostream::raw_fd_ostream(&__p, v80, 1, 0, 0);
  if (v83 >= 1)
  {
    for (j = 0; j < v83; ++j)
    {
      v25 = *(8 * j);
      if (!v25)
      {
        continue;
      }

      v26 = strlen(*(8 * j));
      v27 = v26;
      v28 = v89;
      if (v26 <= v88 - v89)
      {
        if (v26)
        {
          memcpy(v89, v25, v26);
          v28 = &v89[v27];
          v89 += v27;
        }

        p_p = &__p;
        if (v88 != v28)
        {
LABEL_59:
          *v28 = 32;
          ++p_p[2].n128_u64[0];
          v23 = llvm::raw_ostream::operator<<(p_p, *(8 * j));
          v24 = v23[4];
          if (v23[3] == v24)
          {
LABEL_60:
            llvm::raw_ostream::write(v23, "\n", 1uLL);
            continue;
          }

          goto LABEL_50;
        }
      }

      else
      {
        p_p = llvm::raw_ostream::write(&__p, v25, v26);
        v28 = p_p[2].n128_u64[0];
        if (p_p[1].n128_u64[1] != v28)
        {
          goto LABEL_59;
        }
      }

      v22 = llvm::raw_ostream::write(p_p, " ", 1uLL);
      v23 = llvm::raw_ostream::operator<<(v22, *(8 * j));
      v24 = v23[4];
      if (v23[3] == v24)
      {
        goto LABEL_60;
      }

LABEL_50:
      *v24 = 10;
      ++v23[4];
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(&__p);
  v93[0] = v110;
  v93[1] = v111;
  v94 = 1;
  v95 = v107;
  v96 = v108;
  v97 = 1;
  v98 = "";
  v99 = 0;
  v100 = 1;
  v92[0] = off_1002D5408;
  v92[1] = *&off_1002D5418;
  v92[2] = off_1002D5428;
  v92[3] = *&off_1002D5438;
  if (v120 >= 0)
  {
    v30 = &v119;
  }

  else
  {
    v30 = v119.n128_u64[0];
  }

  if (v120 >= 0)
  {
    v31 = SHIBYTE(v120);
  }

  else
  {
    v31 = v119.n128_u64[1];
  }

  __p.n128_u8[0] = 0;
  LOBYTE(v87) = 0;
  v32 = llvm::sys::ExecuteAndWait(v30, v31, v92, 4, &__p, v93, 3, 0, 0, 0, 0, 0);
  v33 = 0;
  if (v32)
  {
    goto LABEL_123;
  }

  v34 = sub_1000578D8(&v107);
  LOWORD(v89) = 257;
  if (*v34)
  {
    __p.n128_u64[0] = v34;
    v35 = 3;
  }

  else
  {
    v35 = 1;
  }

  LOBYTE(v89) = v35;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, &v90);
  v33 = 0;
  if (v91)
  {
    goto LABEL_123;
  }

  v36 = *(v90 + 16) - *(v90 + 8);
  *&v79 = *(v90 + 8);
  *(&v79 + 1) = v36;
  __p.n128_u64[0] = &v87;
  __p.n128_u64[1] = 0x2000000000;
  llvm::StringRef::split(&v79, &__p, "\n", 1uLL, -1, 1);
  v37 = __p.n128_u64[0];
  v78 = 0;
  if (v83 < 1)
  {
    goto LABEL_116;
  }

  for (k = 0; k < v83; LODWORD(v78) = k)
  {
    v77[0] = a5;
    v77[1] = &v78 + 4;
    v77[2] = &v83;
    v77[3] = &v84;
    v77[4] = &v78;
    if (*(8 * k))
    {
      v39 = __p.n128_u64[0];
      if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
      {
LABEL_117:
        v37 = v39;
        v33 = 0;
        goto LABEL_118;
      }

      v37 += 2;
      while (1)
      {
        v41 = *(v37 - 1);
        if (!v41)
        {
          goto LABEL_114;
        }

        v42 = *(v37 - 2);
        sub_10005793C(v77);
        if (v41 == 1 || *v42 != 16191)
        {
          v43 = *(a5 + 4);
          if (v41 <= *(a5 + 3) - v43)
          {
            memcpy(v43, v42, v41);
            v45 = (*(a5 + 4) + v41);
            *(a5 + 4) = v45;
            v44 = a5;
            if (v45 >= *(a5 + 3))
            {
LABEL_84:
              llvm::raw_ostream::write(v44, 32);
              goto LABEL_87;
            }
          }

          else
          {
            v44 = llvm::raw_ostream::write(a5, v42, v41);
            v45 = *(v44 + 4);
            if (v45 >= *(v44 + 3))
            {
              goto LABEL_84;
            }
          }

          *(v44 + 4) = v45 + 1;
          *v45 = 32;
        }

LABEL_87:
        v39 = __p.n128_u64[0];
        if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }

        v46 = *v37;
        v47 = v37[1];
        if (v47 >= 2 && *v46 == 16191)
        {
          v51 = *(a5 + 4);
          if (*(a5 + 3) == v51)
          {
            v52 = llvm::raw_ostream::write(a5, "(", 1uLL);
          }

          else
          {
            *v51 = 40;
            ++*(a5 + 4);
            v52 = a5;
          }

          v53 = *(8 * v78);
          if (v53)
          {
            v54 = v52;
            v55 = strlen(*(8 * v78));
            v52 = v54;
            if (v55 <= *(v54 + 3) - *(v54 + 4))
            {
              if (v55)
              {
                memcpy(*(v54 + 4), v53, v55);
                v52 = v54;
                *(v54 + 4) += v55;
              }
            }

            else
            {
              v52 = llvm::raw_ostream::write(v54, v53, v55);
            }
          }

          v56 = *(v52 + 4);
          if (v56 >= *(v52 + 3))
          {
            v52 = llvm::raw_ostream::write(v52, 43);
          }

          else
          {
            *(v52 + 4) = v56 + 1;
            *v56 = 43;
          }

          v73[0] = *(8 * v78);
          v73[1] = 0;
          v74 = 0;
          v75 = 1;
          v76 = 1;
          v49 = llvm::raw_ostream::operator<<(v52, v73);
          v57 = v49[4];
          if (v49[3] != v57)
          {
            *v57 = 41;
            ++v49[4];
            goto LABEL_108;
          }

          v46 = ")";
          v47 = 1;
        }

        else
        {
          v48 = *(a5 + 4);
          if (v47 <= *(a5 + 3) - v48)
          {
            if (v47)
            {
              v50 = v37[1];
              memcpy(v48, v46, v47);
              *(a5 + 4) += v50;
            }

            goto LABEL_108;
          }

          v49 = a5;
        }

        llvm::raw_ostream::write(v49, v46, v47);
LABEL_108:
        v58 = *(a5 + 4);
        if (*(a5 + 3) == v58)
        {
          llvm::raw_ostream::write(a5, "\n", 1uLL);
        }

        else
        {
          *v58 = 10;
          ++*(a5 + 4);
        }

        v39 = __p.n128_u64[0];
        v40 = v37 + 2;
        v37 += 4;
        if (v40 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }
      }
    }

    sub_10005793C(v77);
    v59 = *(a5 + 4);
    if (v59 >= *(a5 + 3))
    {
      llvm::raw_ostream::write(a5, 10);
    }

    else
    {
      *(a5 + 4) = v59 + 1;
      *v59 = 10;
    }

LABEL_114:
    k = v78 + 1;
  }

  v37 = __p.n128_u64[0];
LABEL_116:
  v33 = 1;
LABEL_118:
  if (v37 != &v87)
  {
    v60 = v33;
    free(v37);
    v33 = v60;
  }

  if ((v91 & 1) == 0)
  {
    v61 = v90;
    v90 = 0;
    if (v61)
    {
      v62 = v33;
      (*(*v61 + 8))(v61);
      v33 = v62;
    }
  }

LABEL_123:
  v63 = v33;
  if (v103 == 1)
  {
    LOWORD(v89) = 261;
    __p = *v101;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v101 != v102)
  {
    free(*v101);
  }

  if (v106 == 1)
  {
    LOWORD(v89) = 261;
    __p = *v104;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v104 != v105)
  {
    free(*v104);
  }

  if (v107 != v109)
  {
    free(v107);
  }

  if (v110 != v112)
  {
    free(v110);
  }

  if (v114)
  {
    v64 = v113;
    v65 = 8 * v114;
    v66 = v113;
    do
    {
      v67 = ((v64 - v113) >> 10) & 0x1FFFFFF;
      if (v67 >= 0x1E)
      {
        LOBYTE(v67) = 30;
      }

      v68 = *v66++;
      llvm::deallocate_buffer(v68, (4096 << v67), 8uLL);
      ++v64;
      v65 -= 8;
    }

    while (v65);
  }

  v69 = v116;
  if (v117)
  {
    v70 = &v116[2 * v117];
    do
    {
      v71 = *v69;
      v72 = v69[1];
      v69 += 2;
      llvm::deallocate_buffer(v71, v72, 8uLL);
    }

    while (v69 != v70);
    v69 = v116;
  }

  if (v69 != v118)
  {
    free(v69);
  }

  if (v113 != v115)
  {
    free(v113);
  }

  if (v82 < 0)
  {
    operator delete(__dst);
  }

  if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
  {
    operator delete(v119.n128_u64[0]);
  }

  return v63;
}

__n128 sub_10005781C(__n128 *a1, __n128 *a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v2 = a1[1].n128_u8[8];
  if ((v2 & 1) == 0 && a1[1].n128_i8[7] < 0)
  {
    v7 = a1;
    v8 = a2;
    operator delete(a1->n128_u64[0]);
    a2 = v8;
    a1 = v7;
    v2 = v7[1].n128_u8[8];
    if (v8[1].n128_u8[8])
    {
      goto LABEL_5;
    }

LABEL_10:
    a1[1].n128_u8[8] = v2 & 0xFE;
    result = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    return result;
  }

  if ((a2[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  a1[1].n128_u8[8] = v2 | 1;
  if (a2[1].n128_u8[8])
  {
    v4 = a2->n128_u64[0];
    v3 = a2->n128_u64[1];
  }

  else
  {
    v5 = a1;
    v3 = std::system_category();
    a1 = v5;
    v4 = 0;
  }

  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v3;
  return result;
}

uint64_t sub_1000578D8(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v1 + 1, 1);
    *(*a1 + a1[1]) = 0;
    return *a1;
  }

  else
  {
    *(*a1 + v1) = 0;
    return *a1;
  }
}

void sub_10005793C(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v21[0] = "#{0}";
  v21[1] = 4;
  v21[2] = &v25;
  v21[3] = 1;
  v22 = 1;
  v23 = &off_1002D5458;
  v24 = v4;
  v25 = &v23;
  __p = 0;
  v27 = 0;
  v28 = 0;
  LODWORD(v30) = 0;
  v34 = 0;
  v35 = 1;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  p_p = &__p;
  v29 = &off_1002D49D0;
  v36 = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v29, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v29, v21, v6, v7, v8, v9, v10);
  if (v33 != v31)
  {
    llvm::raw_ostream::flush_nonempty(&v29);
  }

  llvm::raw_ostream::~raw_ostream(&v29);
  if (v28 < 0)
  {
    p_p = __p;
  }

  if (v28 >= 0)
  {
    v11 = SHIBYTE(v28);
  }

  else
  {
    v11 = v27;
  }

  v12 = log10(**(a1 + 16));
  v29 = p_p;
  v30 = v11;
  LODWORD(v31) = (v12 + 2.0);
  HIDWORD(v31) = 2;
  v13 = llvm::raw_ostream::operator<<(v3, &v29);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    v13 = llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v17[0] = *(**(a1 + 24) + 8 * **(a1 + 32));
  v17[1] = 0;
  v18 = 18;
  v19 = 1;
  v20 = 1;
  v15 = llvm::raw_ostream::operator<<(v13, v17);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
    if (SHIBYTE(v28) < 0)
    {
LABEL_16:
      operator delete(__p);
    }
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100057B44(const void *a1, size_t a2)
{
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (!v4 || !*v4)
  {
    return 0;
  }

  v7 = 261;
  v6[0] = a1;
  v6[1] = a2;
  if (llvm::sys::fs::access(v6, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003FC0();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    v9 = a2;
    if (a2)
    {
      memmove(&__dst, a1, a2);
    }

    *(&__dst + a2) = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  operator delete(__dst);
  return 0;
}

uint64_t llvm::sys::CleanupOnSignal(uint64_t this)
{
  v1 = this;
  if ((this - 29) > 1)
  {
    v5 = atomic_exchange(qword_1002E48C0, 0);
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = atomic_exchange(v6, 0);
        if (v7)
        {
          this = stat(v7, &v8);
          if (!this && (v8.st_mode & 0xF000) == 0x8000)
          {
            this = unlink(v7);
          }

          atomic_exchange(v6, v7);
        }

        v6 = atomic_load((v6 + 8));
      }

      while (v6);
    }

    atomic_exchange(qword_1002E48C0, v5);
    if (v1 > 0x1F || ((1 << v1) & 0x8000A006) == 0)
    {
      return llvm::sys::RunSignalHandlers(this);
    }
  }

  else
  {
    this = __error();
    v2 = this;
    v3 = *this;
    v4 = atomic_load(&qword_1002E48B0);
    if (v4)
    {
      this = v4();
    }

    *v2 = v3;
  }

  return this;
}

int *sub_100057D68()
{
  result = __error();
  v1 = result;
  v2 = *result;
  v3 = atomic_load(&qword_1002E48B0);
  if (v3)
  {
    result = v3();
  }

  *v1 = v2;
  return result;
}

void llvm::sys::RunInterruptHandlers(llvm::sys *this)
{
  v1 = atomic_exchange(qword_1002E48C0, 0);
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = atomic_exchange(v2, 0);
      if (v3)
      {
        if (!stat(v3, &v4) && (v4.st_mode & 0xF000) == 0x8000)
        {
          unlink(v3);
        }

        atomic_exchange(v2, v3);
      }

      v2 = atomic_load((v2 + 8));
    }

    while (v2);
  }

  atomic_exchange(qword_1002E48C0, v1);
}

void sub_100057E34()
{
  if (!atomic_load_explicit(qword_1002E4910, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002E4910, sub_10003DAA4, sub_10003DAE8);
  }

  v0 = qword_1002E4910[0];
  std::recursive_mutex::lock(qword_1002E4910[0]);
  if (!atomic_load(dword_1002E4890))
  {
    v2 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v3 = (&unk_1002E4A00 + 24 * v2);
    sigaction(1, &v39, v3);
    LODWORD(v3[1].__sigaction_u.__sa_handler) = 1;
    atomic_fetch_add(dword_1002E4890, 1u);
    v4 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v5 = (&unk_1002E4A00 + 24 * v4);
    sigaction(2, &v39, v5);
    LODWORD(v5[1].__sigaction_u.__sa_handler) = 2;
    atomic_fetch_add(dword_1002E4890, 1u);
    v6 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v7 = (&unk_1002E4A00 + 24 * v6);
    sigaction(15, &v39, v7);
    LODWORD(v7[1].__sigaction_u.__sa_handler) = 15;
    atomic_fetch_add(dword_1002E4890, 1u);
    v8 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v9 = (&unk_1002E4A00 + 24 * v8);
    sigaction(31, &v39, v9);
    LODWORD(v9[1].__sigaction_u.__sa_handler) = 31;
    atomic_fetch_add(dword_1002E4890, 1u);
    v10 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v11 = (&unk_1002E4A00 + 24 * v10);
    sigaction(4, &v39, v11);
    LODWORD(v11[1].__sigaction_u.__sa_handler) = 4;
    atomic_fetch_add(dword_1002E4890, 1u);
    v12 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v13 = (&unk_1002E4A00 + 24 * v12);
    sigaction(5, &v39, v13);
    LODWORD(v13[1].__sigaction_u.__sa_handler) = 5;
    atomic_fetch_add(dword_1002E4890, 1u);
    v14 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v15 = (&unk_1002E4A00 + 24 * v14);
    sigaction(6, &v39, v15);
    LODWORD(v15[1].__sigaction_u.__sa_handler) = 6;
    atomic_fetch_add(dword_1002E4890, 1u);
    v16 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v17 = (&unk_1002E4A00 + 24 * v16);
    sigaction(8, &v39, v17);
    LODWORD(v17[1].__sigaction_u.__sa_handler) = 8;
    atomic_fetch_add(dword_1002E4890, 1u);
    v18 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v19 = (&unk_1002E4A00 + 24 * v18);
    sigaction(10, &v39, v19);
    LODWORD(v19[1].__sigaction_u.__sa_handler) = 10;
    atomic_fetch_add(dword_1002E4890, 1u);
    v20 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v21 = (&unk_1002E4A00 + 24 * v20);
    sigaction(11, &v39, v21);
    LODWORD(v21[1].__sigaction_u.__sa_handler) = 11;
    atomic_fetch_add(dword_1002E4890, 1u);
    v22 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v23 = (&unk_1002E4A00 + 24 * v22);
    sigaction(3, &v39, v23);
    LODWORD(v23[1].__sigaction_u.__sa_handler) = 3;
    atomic_fetch_add(dword_1002E4890, 1u);
    v24 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v25 = (&unk_1002E4A00 + 24 * v24);
    sigaction(12, &v39, v25);
    LODWORD(v25[1].__sigaction_u.__sa_handler) = 12;
    atomic_fetch_add(dword_1002E4890, 1u);
    v26 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v27 = (&unk_1002E4A00 + 24 * v26);
    sigaction(24, &v39, v27);
    LODWORD(v27[1].__sigaction_u.__sa_handler) = 24;
    atomic_fetch_add(dword_1002E4890, 1u);
    v28 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v29 = (&unk_1002E4A00 + 24 * v28);
    sigaction(25, &v39, v29);
    LODWORD(v29[1].__sigaction_u.__sa_handler) = 25;
    atomic_fetch_add(dword_1002E4890, 1u);
    v30 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100058AF4;
    *&v39.sa_mask = 0x5500000000;
    v31 = (&unk_1002E4A00 + 24 * v30);
    sigaction(7, &v39, v31);
    LODWORD(v31[1].__sigaction_u.__sa_handler) = 7;
    atomic_fetch_add(dword_1002E4890, 1u);
    if (atomic_load(&qword_1002E48B8))
    {
      v33 = atomic_load(dword_1002E4890);
      v39.__sigaction_u.__sa_handler = sub_100058AF4;
      *&v39.sa_mask = 0x5500000000;
      v34 = &dword_1002E4890[6 * v33];
      sigaction(13, &v39, v34 + 23);
      v34[96] = 13;
      atomic_fetch_add(dword_1002E4890, 1u);
    }

    v35 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100057D68;
    *&v39.sa_mask = &_mh_execute_header;
    v36 = (&unk_1002E4A00 + 24 * v35);
    sigaction(30, &v39, v36);
    LODWORD(v36[1].__sigaction_u.__sa_handler) = 30;
    atomic_fetch_add(dword_1002E4890, 1u);
    v37 = atomic_load(dword_1002E4890);
    v39.__sigaction_u.__sa_handler = sub_100057D68;
    *&v39.sa_mask = &_mh_execute_header;
    v38 = (&unk_1002E4A00 + 24 * v37);
    sigaction(29, &v39, v38);
    LODWORD(v38[1].__sigaction_u.__sa_handler) = 29;
    atomic_fetch_add(dword_1002E4890, 1u);
  }

  std::recursive_mutex::unlock(v0);
}

void llvm::sys::RemoveFileOnSignal(void *__src, size_t __len)
{
  if (atomic_load_explicit(qword_1002E48F8, memory_order_acquire))
  {
    if (__src)
    {
LABEL_3:
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100003FC0();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v5) = __len;
      if (__len)
      {
        memmove(__dst, __src, __len);
      }

      *(__dst + __len) = 0;
LABEL_12:
      operator new();
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002E48F8, sub_100058C80, sub_100058C94);
    if (__src)
    {
      goto LABEL_3;
    }
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = 0;
  goto LABEL_12;
}

void llvm::sys::DontRemoveFileOnSignal(const void *a1, size_t a2)
{
  if (!a1)
  {
    __dst = 0;
    v10 = 0;
    v11 = 0;
    if (atomic_load_explicit(&qword_1002E4928, memory_order_acquire))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003FC0();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v11) = a2;
  if (a2)
  {
    memmove(&__dst, a1, a2);
  }

  *(&__dst + a2) = 0;
  if (!atomic_load_explicit(&qword_1002E4928, memory_order_acquire))
  {
LABEL_11:
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_1002E4928, sub_10003DAA4, sub_10003DAE8);
  }

LABEL_12:
  v3 = qword_1002E4928;
  std::recursive_mutex::lock(qword_1002E4928);
  for (i = atomic_load(qword_1002E48C0); i; i = atomic_load(i + 1))
  {
    v5 = atomic_load(i);
    if (v5)
    {
      v6 = strlen(v5);
      if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
      {
        if (v6 != v10)
        {
          continue;
        }

        if (v6 == -1)
        {
          sub_100003FC0();
        }

        if (memcmp(__dst, v5, v6))
        {
          continue;
        }

LABEL_24:
        v7 = atomic_exchange(i, 0);
        if (v7)
        {
          free(v7);
        }

        continue;
      }

      if (v6 == SHIBYTE(v11) && !memcmp(&__dst, v5, v6))
      {
        goto LABEL_24;
      }
    }
  }

  std::recursive_mutex::unlock(v3);
  if (SHIBYTE(v11) < 0)
  {
    v8 = __dst;

    operator delete(v8);
  }
}

void llvm::sys::AddSignalHandler(llvm::sys *this, void (*a2)(void *), void *a3)
{
  v4 = 0;
  v5 = &qword_1002E4940;
  v6 = dword_1002E4950;
  atomic_compare_exchange_strong(dword_1002E4950, &v4, 1u);
  if (v4)
  {
    v7 = 0;
    v5 = &qword_1002E4958;
    v6 = dword_1002E4968;
    atomic_compare_exchange_strong(dword_1002E4968, &v7, 1u);
    if (v7)
    {
      v8 = 0;
      v5 = &qword_1002E4970;
      v6 = dword_1002E4980;
      atomic_compare_exchange_strong(dword_1002E4980, &v8, 1u);
      if (v8)
      {
        v9 = 0;
        v5 = &qword_1002E4988;
        v6 = dword_1002E4998;
        atomic_compare_exchange_strong(dword_1002E4998, &v9, 1u);
        if (v9)
        {
          v10 = 0;
          v5 = &qword_1002E49A0;
          v6 = dword_1002E49B0;
          atomic_compare_exchange_strong(dword_1002E49B0, &v10, 1u);
          if (v10)
          {
            v11 = 0;
            v5 = &qword_1002E49B8;
            v6 = dword_1002E49C8;
            atomic_compare_exchange_strong(dword_1002E49C8, &v11, 1u);
            if (v11)
            {
              v12 = 0;
              v5 = &qword_1002E49D0;
              v6 = dword_1002E49E0;
              atomic_compare_exchange_strong(dword_1002E49E0, &v12, 1u);
              if (v12)
              {
                v13 = 0;
                v5 = &qword_1002E49E8;
                v6 = dword_1002E49F8;
                atomic_compare_exchange_strong(dword_1002E49F8, &v13, 1u);
                if (v13)
                {
                  llvm::report_fatal_error("too many signal callbacks already registered", 1);
                }
              }
            }
          }
        }
      }
    }
  }

  *v5 = this;
  v5[1] = a2;
  atomic_store(2u, v6);

  sub_100057E34();
}

uint64_t llvm::sys::PrintStackTrace(llvm::sys *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  result = backtrace(&qword_1002E4BB0, 256);
  if (result)
  {
    v5 = result;
    if (!v2)
    {
      v2 = result;
    }

    sub_100057B44(qword_1002E4898, qword_1002E48A0);
    result = sub_100056A28(qword_1002E4898, qword_1002E48A0, &qword_1002E4BB0, v2, this);
    if ((result & 1) == 0)
    {
      v6 = *(this + 4);
      if (*(this + 3) - v6 > 0x90uLL)
      {
        *(this + 4) += 145;
        if (v5 < 1)
        {
          return result;
        }
      }

      else
      {
        if (v5 < 1)
        {
          return result;
        }
      }

      v7 = 0;
      v8 = v5;
      v9 = &qword_1002E4BB0;
      v10 = v5;
      do
      {
        while (1)
        {
          dladdr(*v9, &v32);
          dli_fname = v32.dli_fname;
          v13 = strrchr(v32.dli_fname, 47);
          if (v13)
          {
            break;
          }

          v14 = strlen(dli_fname);
          if (v14 > v7)
          {
            v7 = v14;
          }

          ++v9;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        v11 = strlen(v13) - 1;
        if (v11 > v7)
        {
          v7 = v11;
        }

        ++v9;
        --v10;
      }

      while (v10);
      do
      {
        while (1)
        {
LABEL_19:
          v15 = (&unk_1002E4890 + 8 * v10);
          dladdr(v15[100], &v32);
          v28 = &off_1002D5488;
          v29 = "%-2d";
          LODWORD(v30) = v10;
          llvm::raw_ostream::operator<<(this, &v28);
          v16 = v32.dli_fname;
          v17 = strrchr(v32.dli_fname, 47);
          v28 = &off_1002D54A8;
          v29 = " %-*s";
          LODWORD(v30) = v7;
          if (v17)
          {
            v31 = v17 + 1;
          }

          else
          {
            v31 = v16;
          }

          llvm::raw_ostream::operator<<(this, &v28);
          v18 = v15[100];
          v28 = &off_1002D54C8;
          v29 = " %#0*lx";
          LODWORD(v30) = 18;
          v31 = v18;
          result = llvm::raw_ostream::operator<<(this, &v28);
          if (v32.dli_sname)
          {
            v19 = *(this + 4);
            if (v19 >= *(this + 3))
            {
              llvm::raw_ostream::write(this, 32);
            }

            else
            {
              *(this + 4) = v19 + 1;
              *v19 = 32;
            }

            strlen(v32.dli_sname);
            v20 = llvm::itaniumDemangle();
            if (v20)
            {
              v21 = v20;
              v22 = strlen(v20);
              v23 = *(this + 4);
              if (v22 <= *(this + 3) - v23)
              {
                if (v22)
                {
                  memcpy(v23, v21, v22);
                  *(this + 4) += v22;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v21, v22);
              }

              free(v21);
            }

            else if (v32.dli_sname)
            {
              v24 = strlen(v32.dli_sname);
              v25 = *(this + 4);
              if (v24 <= *(this + 3) - v25)
              {
                if (v24)
                {
                  memcpy(v25, v32.dli_sname, v24);
                  *(this + 4) += v24;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v32.dli_sname, v24);
              }
            }

            v26 = v15[100] - v32.dli_saddr;
            v28 = &off_1002D54E8;
            v29 = " + %tu";
            v30 = v26;
            result = llvm::raw_ostream::operator<<(this, &v28);
          }

          v27 = *(this + 4);
          if (v27 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v27 + 1;
          *v27 = 10;
          if (v8 == ++v10)
          {
            return result;
          }
        }

        result = llvm::raw_ostream::write(this, 10);
        ++v10;
      }

      while (v8 != v10);
    }
  }

  return result;
}

uint64_t sub_100058AF4(unsigned int a1, uint64_t a2)
{
  v4 = atomic_load(dword_1002E4890);
  if (v4)
  {
    v5 = &unk_1002E4A00;
    do
    {
      sigaction(v5[1].__sigaction_u.__sa_handler, v5, 0);
      atomic_fetch_add(dword_1002E4890, 0xFFFFFFFF);
      v5 = (v5 + 24);
      --v4;
    }

    while (v4);
  }

  v14 = -1;
  v6 = sigprocmask(2, &v14, 0);
  v7 = atomic_exchange(qword_1002E48C0, 0);
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = atomic_exchange(v8, 0);
      if (v9)
      {
        v6 = stat(v9, &v15);
        if (!v6 && (v15.st_mode & 0xF000) == 0x8000)
        {
          v6 = unlink(v9);
        }

        atomic_exchange(v8, v9);
      }

      v8 = atomic_load((v8 + 8));
    }

    while (v8);
  }

  atomic_exchange(qword_1002E48C0, v7);
  if (a1 <= 0x1F)
  {
    if (((1 << a1) & 0x80008006) != 0)
    {
      v10 = atomic_exchange(&qword_1002E48A8, 0);
      if (v10)
      {
        return v10(v6);
      }

      return raise(a1);
    }

    if (a1 == 13)
    {
      v12 = atomic_exchange(&qword_1002E48B8, 0);
      if (v12)
      {
        return v12(v6);
      }

      return raise(a1);
    }
  }

  llvm::sys::RunSignalHandlers(v6);
  v13 = *(a2 + 12);
  result = getpid();
  if (v13 != result)
  {
    return raise(a1);
  }

  return result;
}

uint64_t sub_100058C94(uint64_t result)
{
  if (result)
  {
    v1 = atomic_exchange(qword_1002E48C0, 0);
    if (v1)
    {
      sub_100058D08(v1);
      operator delete();
    }

    operator delete();
  }

  return result;
}

atomic_ullong *sub_100058D08(atomic_ullong *a1)
{
  if (atomic_exchange(a1 + 1, 0))
  {
    sub_100058D08();
    operator delete();
  }

  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::ThreadPoolStrategy::compute_thread_count(llvm::ThreadPoolStrategy *this)
{
  if (*(this + 4) == 1)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    v5 = *this;
    if (!*this)
    {
      return result;
    }

LABEL_16:
    if (v5 >= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (*(this + 5))
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  if ((atomic_load_explicit(&qword_1002E53B8, memory_order_acquire) & 1) == 0)
  {
    sub_10029917C();
  }

  if (dword_1002E53B0 <= 1)
  {
    result = 1;
  }

  else
  {
    result = dword_1002E53B0;
  }

  v5 = *this;
  if (*this)
  {
    goto LABEL_16;
  }

  return result;
}

pthread_t llvm::llvm_execute_on_thread_impl(void *(__cdecl *a1)(void *), void *a2, uint64_t a3)
{
  v6 = pthread_attr_init(&v13);
  if (v6)
  {
    sub_100058FC4("pthread_attr_init failed", v6);
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = pthread_attr_setstacksize(&v13, a3);
    if (v7)
    {
      sub_100058FC4("pthread_attr_setstacksize failed", v7);
    }
  }

  v12 = 0;
  v8 = pthread_create(&v12, &v13, a1, a2);
  if (v8)
  {
    sub_100058FC4("pthread_create failed", v8);
  }

  v9 = v12;
  v10 = pthread_attr_destroy(&v13);
  if (v10)
  {
    sub_100058FC4("pthread_attr_destroy failed", v10);
  }

  return v9;
}

void sub_100058FC4(char *__s, std::string *a2)
{
  memset(v5, 0, sizeof(v5));
  sub_100056318(&v3, __s);
  sub_100056134(v5, &v3.__r_.__value_.__l.__data_, a2);
  std::string::~string(&v3);
  v4 = 260;
  v3.__r_.__value_.__r.__words[0] = v5;
  llvm::report_fatal_error(&v3, 1);
}

std::string *llvm::llvm_thread_join_impl(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_join(this, 0);
  if (result)
  {
    sub_100058FC4("pthread_join failed", result);
  }

  return result;
}

uint64_t llvm::get_threadid(llvm *this)
{
  v1 = off_1002E3498;
  off_1002E3498();
  if (*v2 == 1)
  {
    off_1002E3480();
    return *v3;
  }

  else
  {
    sub_1000590F4();
    off_1002E3480();
    *v5 = v6;
    *(v1)(&off_1002E3498) = 1;
    return *v7;
  }
}

uint64_t sub_1000590F4()
{
  v0 = mach_thread_self();
  off_1002E3480();
  mach_port_deallocate(v2, *v1);
  return v0;
}

void llvm::set_thread_name(llvm *this, const llvm::Twine *a2)
{
  v5 = v7;
  v6 = xmmword_1002B02A0;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v5);
  v4 = v3 - 63;
  if (v3 < v3 - 63)
  {
    v4 = v3;
  }

  if (v3 <= 0x3F)
  {
    v4 = 0;
  }

  pthread_setname_np(&v2[v4]);
  if (v5 != v7)
  {
    free(v5);
  }
}

uint64_t sub_1000591E4()
{
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0);
  result = v2;
  if (!v2)
  {
    *v3 = 0x1900000006;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    result = v2;
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseAffineMapOrIntegerSetReference(mlir::detail::Parser *this, mlir::AffineMap *a2, mlir::IntegerSet *a3)
{
  v5 = *(this + 1);
  v26 = **v5;
  v27 = v5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v33;
  v32 = 0x400000000;
  v18 = 0;
  v19 = 0;
  *&v34 = &v19;
  *(&v34 + 1) = &v26;
  if ((mlir::detail::Parser::parseCommaSeparatedList(&v26, 1, sub_100059CEC, &v34, " in dimensional identifier list", 31) & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v27;
  v7 = *(v27 + 14);
  if (v7 == 22)
  {
    *&v34 = &v18;
    *(&v34 + 1) = &v26;
    if ((mlir::detail::Parser::parseCommaSeparatedList(&v26, 2, sub_10005A13C, &v34, " in symbol list", 15) & 1) == 0)
    {
      goto LABEL_10;
    }

    v6 = v27;
    if (*(v27 + 14) != 13)
    {
LABEL_5:
      *&v34 = "expected '->' or ':'";
      v36 = 259;
      if (mlir::detail::Parser::parseToken(&v26, 15, &v34))
      {
        v8 = v18;
        v9 = v19;
        *&v34 = v35;
        *(&v34 + 1) = 0x400000000;
        v22[2] = &v23;
        v23 = &v25;
        v24 = xmmword_1002B0330;
        v22[0] = &v26;
        v22[1] = &v34;
        if (mlir::detail::Parser::parseCommaSeparatedList(&v26, 1, sub_10005B9E8, v22, " in integer set constraint list", 31))
        {
          if (DWORD2(v34))
          {
            *a3 = mlir::IntegerSet::get(v9, v8, v34, DWORD2(v34), v23, v24);
            v11 = 1;
            v12 = v23;
            if (v23 == &v25)
            {
              goto LABEL_22;
            }
          }

          else
          {
            AffineConstantExpr = mlir::getAffineConstantExpr(0, **v27, v10);
            v11 = 1;
            v20 = 1;
            *a3 = mlir::IntegerSet::get(v9, v8, &AffineConstantExpr, 1, &v20, 1);
            v12 = v23;
            if (v23 == &v25)
            {
LABEL_22:
              v17 = v34;
              if (v34 == v35)
              {
                goto LABEL_11;
              }

              goto LABEL_23;
            }
          }
        }

        else
        {
          v11 = 0;
          v12 = v23;
          if (v23 == &v25)
          {
            goto LABEL_22;
          }
        }

        free(v12);
        goto LABEL_22;
      }

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if (v7 != 13)
    {
      goto LABEL_5;
    }
  }

  *(v6 + 5) = *(v6 + 7);
  v6[12] = v6[9];
  mlir::Lexer::lexToken((v6 + 1), &v34);
  v14 = v27;
  *(v27 + 7) = v34;
  v14[9] = v35[0];
  v16 = v18;
  v15 = v19;
  *&v34 = v35;
  *(&v34 + 1) = 0x400000000;
  v23 = &v26;
  *&v24 = &v34;
  if (mlir::detail::Parser::parseCommaSeparatedList(&v26, 1, sub_10005A190, &v23, " in affine map range", 20))
  {
    *a2 = mlir::AffineMap::get(v15, v16, v34, DWORD2(v34), **v27);
    v11 = 1;
    v17 = v34;
    if (v34 == v35)
    {
      goto LABEL_11;
    }

LABEL_23:
    free(v17);
    goto LABEL_11;
  }

  v11 = 0;
  v17 = v34;
  if (v34 != v35)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v31 != v33)
  {
    free(v31);
  }

  return v11;
}

BOOL mlir::detail::Parser::parseAffineMapReference(mlir::detail::Parser *this, mlir::AffineMap *a2)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v16 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, a2, &v16) & 1) == 0)
  {
    return 0;
  }

  if (!v16)
  {
    return 1;
  }

  v14 = "expected AffineMap, but got IntegerSet";
  v15 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v14, v17);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v23;
      v8 = __p;
      if (v23 != __p)
      {
        do
        {
          v7 = sub_10005BEF4(v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v23 = v6;
      operator delete(v8);
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      v11 = v20;
      if (v21 != v20)
      {
        do
        {
          v12 = *--v10;
          *v10 = 0;
          if (v12)
          {
            operator delete[]();
          }
        }

        while (v10 != v9);
        v11 = v20;
      }

      v21 = v9;
      operator delete(v11);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v5;
}

BOOL mlir::detail::Parser::parseAffineExprReference(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = *(a1 + 8);
  v13[0] = **v7;
  v13[1] = v7;
  v14 = 0;
  v15 = 0;
  v8 = 3 * a3;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3);
  v16 = 0;
  v17 = v19;
  v18 = 0x400000000;
  if (v9 >= 5)
  {
    v10 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3), 24);
    a2 = v10;
    v6 = v18;
  }

  if (a3)
  {
    memcpy(v17 + 24 * v6, a2, 8 * v8);
    v6 = v18;
  }

  LODWORD(v18) = v6 + v9;
  v11 = sub_10005A214(v13, 0, 0);
  *a4 = v11;
  if (v17 != v19)
  {
    free(v17);
  }

  return v11 != 0;
}

BOOL mlir::detail::Parser::parseIntegerSetReference(mlir::detail::Parser *this, mlir::IntegerSet *a2)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v16 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, &v16, a2) & 1) == 0)
  {
    return 0;
  }

  if (!v16)
  {
    return 1;
  }

  v14 = "expected IntegerSet, but got AffineMap";
  v15 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v14, v17);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v23;
      v8 = __p;
      if (v23 != __p)
      {
        do
        {
          v7 = sub_10005BEF4(v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v23 = v6;
      operator delete(v8);
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      v11 = v20;
      if (v21 != v20)
      {
        do
        {
          v12 = *--v10;
          *v10 = 0;
          if (v12)
          {
            operator delete[]();
          }
        }

        while (v10 != v9);
        v11 = v20;
      }

      v21 = v9;
      operator delete(v11);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 8);
  v10 = **v6;
  v11 = v6;
  v12 = 1;
  v13 = a3;
  v14 = a4;
  v15 = 0;
  v16 = v18;
  v17 = 0x400000000;
  v19 = v21;
  v20 = 0x400000000;
  v9[0] = &v10;
  v9[1] = &v19;
  v7 = 0;
  if (mlir::detail::Parser::parseCommaSeparatedList(&v10, a5, sub_10005C004, v9, " in affine map", 14))
  {
    *a2 = mlir::AffineMap::get(v15, v17 - v15, v19, v20, **v11);
    v7 = 1;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v7;
}

BOOL mlir::detail::Parser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v8[0] = **v5;
  v8[1] = v5;
  v9 = 1;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  v13 = v15;
  v14 = 0x400000000;
  v6 = sub_10005A214(v8, 0, 0);
  *a2 = v6;
  if (v13 != v15)
  {
    free(v13);
  }

  return v6 != 0;
}

uint64_t sub_100059CEC(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineDimExpr = mlir::getAffineDimExpr(v5, ***(v4 + 8), a3);

  return sub_100059D40(v4, AffineDimExpr);
}

uint64_t sub_100059D40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = a1 + 48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    if (!v11)
    {
LABEL_30:
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v39);
      v22 = *(a1 + 8);
      *(v22 + 56) = v39;
      *(v22 + 72) = v40;
      *&v39 = v8;
      *(&v39 + 1) = v7;
      v40 = a2;
      v23 = *(a1 + 56);
      v24 = *(a1 + 48);
      v25 = &v39;
      if (v23 >= *(a1 + 60))
      {
        if (v24 <= &v39 && v24 + 24 * v23 > &v39)
        {
          v34 = &v39 - v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (a1 + 64), v23 + 1, 24);
          v24 = *(a1 + 48);
          v25 = &v34[v24];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (a1 + 64), v23 + 1, 24);
          v24 = *(a1 + 48);
          v25 = &v39;
        }
      }

      v26 = v24 + 24 * *(a1 + 56);
      v27 = *v25;
      *(v26 + 16) = *(v25 + 2);
      *v26 = v27;
      ++*(a1 + 56);
      return 1;
    }

LABEL_7:
    v12 = v10 + 24 * v11;
    while (*(v10 + 8) != v7 || v7 && memcmp(*v10, v8, v7))
    {
      v10 += 24;
      if (v10 == v12)
      {
        goto LABEL_30;
      }
    }

    v36 = 1283;
    v35[0] = "redefinition of identifier '";
    v35[2] = v8;
    v35[3] = v7;
    v37[0] = v35;
    v37[2] = "'";
    v38 = 770;
    mlir::detail::Parser::emitError(a1, v37, &v39);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v46;
        v16 = __p;
        if (v46 != __p)
        {
          do
          {
            v15 = sub_10005BEF4(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v46 = v14;
        operator delete(v16);
      }

      v17 = v43;
      if (!v43)
      {
        goto LABEL_51;
      }

      v18 = v44;
      v19 = v43;
      if (v44 == v43)
      {
LABEL_50:
        v44 = v17;
        operator delete(v19);
LABEL_51:
        if (v41 != &v42)
        {
          free(v41);
        }

        return v13;
      }

      do
      {
        v20 = *--v18;
        *v18 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v18 != v17);
LABEL_49:
      v19 = v43;
      goto LABEL_50;
    }

    return v13;
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(a1 + 8);
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = a1 + 48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    if (!v11)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v37[0] = "expected bare identifier";
  v38 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v37, &v39);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v46;
      v31 = __p;
      if (v46 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v46 = v29;
      operator delete(v31);
    }

    v17 = v43;
    if (!v43)
    {
      goto LABEL_51;
    }

    v32 = v44;
    v19 = v43;
    if (v44 == v43)
    {
      goto LABEL_50;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v17);
    goto LABEL_49;
  }

  return v13;
}

uint64_t sub_10005A13C(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineSymbolExpr = mlir::getAffineSymbolExpr(v5, ***(v4 + 8), a3);

  return sub_100059D40(v4, AffineSymbolExpr);
}

BOOL sub_10005A190(uint64_t a1)
{
  v2 = sub_10005A214(*a1, 0, 0);
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v6 = v2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v4 + 1, 8);
    v2 = v6;
    LODWORD(v4) = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

uint64_t sub_10005A214(mlir::detail::Parser *a1, uint64_t a2, int a3)
{
  sub_10005A4D4(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 1);
    v9 = (v8 + 56);
    v10 = *(v8 + 56);
    if (v10 == 24)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v14 = *(a1 + 1);
      *(v14 + 56) = v34;
      *(v14 + 72) = v35;
      v12 = 2;
      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    if (v10 == 25)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v11 = *(a1 + 1);
      *(v11 + 56) = v34;
      *(v11 + 72) = v35;
      v12 = 1;
      if (a2)
      {
LABEL_5:
        *&v34 = a2;
        if (a3 == 1)
        {
          v13 = mlir::AffineExpr::operator+(&v34, v7);
        }

        else
        {
          v13 = mlir::AffineExpr::operator-(&v34, v7);
        }

        v16 = v13;
        v15 = a1;
        goto LABEL_17;
      }

LABEL_8:
      v15 = a1;
      v16 = v7;
LABEL_17:
      v25 = v12;
      return sub_10005A214(v15, v16, v25);
    }

    Loc = mlir::Token::getLoc(v9);
    v18 = sub_10005AB84(a1);
    if (!v18)
    {
      if (!a2)
      {
        return v7;
      }

      *&v34 = a2;
      if (a3 == 1)
      {
        return mlir::AffineExpr::operator+(&v34, v7);
      }

      else
      {
        return mlir::AffineExpr::operator-(&v34, v7);
      }
    }

    v19 = v18;
    sub_10005A4D4(a1, v7);
    if (v20)
    {
      while (1)
      {
        v21 = v20;
        v22 = mlir::Token::getLoc((*(a1 + 1) + 56));
        v23 = sub_10005AB84(a1);
        if (!v23)
        {
          break;
        }

        v24 = v19;
        Loc = v22;
        v19 = v23;
        v7 = sub_10005B484(a1, v24, v7, v21, v22);
        if (!v7)
        {
          return v7;
        }

        sub_10005A4D4(a1, v7);
        if (!v20)
        {
          return 0;
        }
      }

      v7 = sub_10005B484(a1, v19, v7, v21, Loc);
      if (v7)
      {
        if (a2)
        {
          *&v34 = a2;
          if (a3 == 1)
          {
            v28 = mlir::AffineExpr::operator+(&v34, v7);
          }

          else
          {
            v28 = mlir::AffineExpr::operator-(&v34, v7);
          }

          v7 = v28;
        }

        v29 = *(a1 + 1);
        v30 = (v29 + 56);
        v31 = *(v29 + 56);
        if (v31 == 24)
        {
          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v33 = *(a1 + 1);
          *(v33 + 56) = v34;
          *(v33 + 72) = v35;
          v25 = 2;
        }

        else
        {
          if (v31 != 25)
          {
            return v7;
          }

          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v32 = *(a1 + 1);
          *(v32 + 56) = v34;
          *(v32 + 72) = v35;
          v25 = 1;
        }

        v15 = a1;
        v16 = v7;
        return sub_10005A214(v15, v16, v25);
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

void sub_10005A4D4(mlir::detail::Parser *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v5 = *(v2 + 56);
  v3 = (v2 + 56);
  v4 = v5;
  if (v5 > 20)
  {
    v6 = (v4 - 25);
    if (v6 <= 0x33)
    {
      if (((1 << (v4 - 25)) & 0x101000004000) != 0)
      {
        goto LABEL_43;
      }

      if (((1 << (v4 - 25)) & 0x21) != 0)
      {
        if (a2)
        {
          v72[0] = "missing right operand of binary operator";
          v74 = 259;
          mlir::detail::Parser::emitError(a1, v72, v63);
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }

          if (v71 != 1)
          {
            return;
          }

          if (v70 != &v71)
          {
            free(v70);
          }

          v7 = __p;
          if (__p)
          {
            v8 = v69;
            v9 = __p;
            if (v69 != __p)
            {
              do
              {
                v8 = sub_10005BEF4(v8 - 1);
              }

              while (v8 != v7);
              v9 = __p;
            }

            v69 = v7;
            operator delete(v9);
          }

          v10 = v66;
          if (v66)
          {
            v11 = v67;
            v12 = v66;
            if (v67 != v66)
            {
              do
              {
                v13 = *--v11;
                *v11 = 0;
                if (v13)
                {
                  operator delete[]();
                }
              }

              while (v11 != v10);
              v12 = v66;
            }

            v67 = v10;
            operator delete(v12);
          }

          v46 = v64;
          if (v64 == &v65)
          {
            return;
          }
        }

        else
        {
          v72[0] = "missing left operand of binary operator";
          v74 = 259;
          mlir::detail::Parser::emitError(a1, v72, v54);
          if (v54[0])
          {
            mlir::InFlightDiagnostic::report(v54);
          }

          if (v62 != 1)
          {
            return;
          }

          if (v61 != &v62)
          {
            free(v61);
          }

          v38 = v59;
          if (v59)
          {
            v39 = v60;
            v40 = v59;
            if (v60 != v59)
            {
              do
              {
                v39 = sub_10005BEF4(v39 - 1);
              }

              while (v39 != v38);
              v40 = v59;
            }

            v60 = v38;
            operator delete(v40);
          }

          v41 = v57;
          if (v57)
          {
            v42 = v58;
            v43 = v57;
            if (v58 != v57)
            {
              do
              {
                v44 = *--v42;
                *v42 = 0;
                if (v44)
                {
                  operator delete[]();
                }
              }

              while (v42 != v41);
              v43 = v57;
            }

            v58 = v41;
            operator delete(v43);
          }

          v46 = v55;
          if (v55 == &v56)
          {
            return;
          }
        }

        goto LABEL_104;
      }

      if (v6 == 51)
      {
        v72[0] = "expected symbol keyword";
        v74 = 259;
        v21 = a1;
        if ((mlir::detail::Parser::parseToken(a1, 76, v72) & 1) == 0)
        {
          return;
        }

        *&v47 = "expected '(' at start of SSA symbol";
        v49 = 259;
        if ((mlir::detail::Parser::parseToken(v21, 21, &v47) & 1) == 0)
        {
          return;
        }

        sub_10005ACF4(v21, 1);
        if (!v22)
        {
          return;
        }

        v23 = "expected ')' at end of SSA symbol";
LABEL_90:
        v72[0] = v23;
        v74 = 259;
        mlir::detail::Parser::parseToken(v21, 28, v72);
        return;
      }
    }

    if (v4 == 21)
    {
      v72[0] = "expected '('";
      v74 = 259;
      v21 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 21, v72) & 1) == 0)
      {
        return;
      }

      v30 = v21;
      if (*(*(v21 + 1) + 56) != 28)
      {
        if (!sub_10005A214(v21, 0, 0))
        {
          return;
        }

        v23 = "expected ')'";
        goto LABEL_90;
      }

      *&v47 = "no expression inside parentheses";
      v49 = 259;
    }

    else
    {
      if (v4 != 24)
      {
        goto LABEL_42;
      }

      v72[0] = "expected '-'";
      v74 = 259;
      v25 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 24, v72) & 1) == 0)
      {
        return;
      }

      v26 = sub_10005A4D4(v25, a2);
      if (v26)
      {
        v72[0] = v26;
        mlir::AffineExpr::operator*(v72, -1);
        return;
      }

      *&v47 = "missing operand of negation";
      v49 = 259;
      v30 = v25;
    }

    mlir::detail::Parser::emitError(v30, &v47, v72);
    if (v72[0])
    {
      mlir::InFlightDiagnostic::report(v72);
    }

    if (v81 == 1)
    {
      v45 = v72;
      goto LABEL_100;
    }

    return;
  }

  if (v4 > 9)
  {
    if (v4 != 10)
    {
      if (v4 != 12)
      {
        goto LABEL_42;
      }

LABEL_43:
      sub_10005B154(a1);
      return;
    }

    v14 = a1;
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(*(a1 + 1) + 64), *(*(a1 + 1) + 72));
    if (v16)
    {
      v17 = UInt64IntegerValue;
      if ((UInt64IntegerValue & 0x8000000000000000) == 0)
      {
        v18 = v14[1];
        *(v18 + 5) = *(v18 + 56);
        *(v18 + 12) = *(v18 + 9);
        mlir::Lexer::lexToken((v14[1] + 8), &v47);
        v19 = v14[1];
        *(v19 + 56) = v47;
        *(v19 + 9) = v48;
        mlir::Builder::getAffineConstantExpr(v14, v17, v20);
        return;
      }
    }

    *&v47 = "constant too large for index";
    v49 = 259;
    mlir::detail::Parser::emitError(v14, &v47, v72);
    if (v72[0])
    {
      mlir::InFlightDiagnostic::report(v72);
    }

    if (v81 != 1)
    {
      return;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v31 = v78;
    if (v78)
    {
      v32 = v79;
      v33 = v78;
      if (v79 != v78)
      {
        do
        {
          v32 = sub_10005BEF4(v32 - 1);
        }

        while (v32 != v31);
        v33 = v78;
      }

      v79 = v31;
      operator delete(v33);
    }

    v34 = v76;
    if (v76)
    {
      v35 = v77;
      v36 = v76;
      if (v77 != v76)
      {
        do
        {
          v37 = *--v35;
          *v35 = 0;
          if (v37)
          {
            operator delete[]();
          }
        }

        while (v35 != v34);
        v36 = v76;
      }

      v77 = v34;
      operator delete(v36);
    }

    v46 = v73;
    if (v73 == &v75)
    {
      return;
    }

LABEL_104:
    free(v46);
    return;
  }

  if (v4 == 3)
  {
    goto LABEL_43;
  }

  if (v4 == 6)
  {
    sub_10005ACF4(a1, 0);
    return;
  }

LABEL_42:
  v27 = a1;
  isKeyword = mlir::Token::isKeyword(v3);
  a1 = v27;
  if (isKeyword)
  {
    goto LABEL_43;
  }

  if (a2)
  {
    v72[0] = "missing right operand of binary operator";
    v74 = 259;
    mlir::detail::Parser::emitError(v27, v72, v52);
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
    }

    if (v53 == 1)
    {
      v45 = v52;
LABEL_100:
      sub_10005BE10(v45 + 1);
    }
  }

  else
  {
    v72[0] = "expected affine expression";
    v74 = 259;
    mlir::detail::Parser::emitError(v27, v72, v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v51 == 1)
    {
      v45 = v50;
      goto LABEL_100;
    }
  }
}

uint64_t sub_10005AB84(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 8);
  v4 = (v3 + 56);
  v5 = *(v3 + 56);
  if (v5 > 60)
  {
    if (v5 == 61)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
      v9 = *(a1 + 8);
      *(v9 + 56) = v10;
      *(v9 + 72) = v11;
      return 2;
    }

    else if (v5 == 69)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
      v7 = *(a1 + 8);
      *(v7 + 56) = v10;
      *(v7 + 72) = v11;
      return 4;
    }
  }

  else if (v5 == 30)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
    v8 = *(a1 + 8);
    *(v8 + 56) = v10;
    *(v8 + 72) = v11;
    return 1;
  }

  else if (v5 == 39)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
    v6 = *(a1 + 8);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 3;
  }

  return result;
}

__n128 sub_10005ACF4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    *&v39 = "unexpected ssa identifier";
    v41 = 259;
    mlir::detail::Parser::emitWrongTokenError(a1, &v39, v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return result;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v57;
      v17 = __p;
      if (v57 != __p)
      {
        do
        {
          v16 = sub_10005BEF4(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v57 = v15;
      operator delete(v17);
    }

    v18 = v54;
    if (v54)
    {
      v19 = v55;
      v20 = v54;
      if (v55 != v54)
      {
        do
        {
          v21 = *--v19;
          *v19 = 0;
          if (v21)
          {
            operator delete[]();
          }
        }

        while (v19 != v18);
        v20 = v54;
      }

      v55 = v18;
      operator delete(v20);
    }

    v32 = v52;
    if (v52 == &v53)
    {
      return result;
    }

LABEL_48:
    free(v32);
    return result;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 56) != 6)
  {
    *&v39 = "expected ssa identifier";
    v41 = 259;
    mlir::detail::Parser::emitWrongTokenError(a1, &v39, v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 != 1)
    {
      return result;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v22 = v47;
    if (v47)
    {
      v23 = v48;
      v24 = v47;
      if (v48 != v47)
      {
        do
        {
          v23 = sub_10005BEF4(v23 - 1);
        }

        while (v23 != v22);
        v24 = v47;
      }

      v48 = v22;
      operator delete(v24);
    }

    v25 = v45;
    if (v45)
    {
      v26 = v46;
      v27 = v45;
      if (v46 != v45)
      {
        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
        v27 = v45;
      }

      v46 = v25;
      operator delete(v27);
    }

    v32 = v43;
    if (v43 == &v44)
    {
      return result;
    }

    goto LABEL_48;
  }

  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = (v7 + 24 * v8);
    v10 = (v7 + 16);
    while (1)
    {
      v11 = v10 - 2;
      if (*(v10 - 1) == v5 && (!v5 || !memcmp(*(v10 - 2), v6, v5)))
      {
        break;
      }

      v10 += 3;
      if (v11 + 3 == v9)
      {
        goto LABEL_42;
      }
    }

    v12 = *v10;
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v39);
    v13 = *(a1 + 8);
    result.n128_u64[0] = v39;
    *(v13 + 56) = v39;
    *(v13 + 72) = v40;
  }

  else
  {
LABEL_42:
    if ((*(a1 + 24))(*(a1 + 32), a2))
    {
      if (a2)
      {
        v30 = *(a1 + 44);
        *(a1 + 44) = v30 + 1;
        AffineSymbolExpr = mlir::getAffineSymbolExpr(v30, ***(a1 + 8), v29);
      }

      else
      {
        v33 = *(a1 + 40);
        *(a1 + 40) = v33 + 1;
        AffineSymbolExpr = mlir::getAffineDimExpr(v33, ***(a1 + 8), v29);
      }

      *&v39 = v6;
      *(&v39 + 1) = v5;
      v40 = AffineSymbolExpr;
      v34 = *(a1 + 56);
      v35 = *(a1 + 48);
      v36 = &v39;
      if (v34 >= *(a1 + 60))
      {
        if (v35 <= &v39 && v35 + 24 * v34 > &v39)
        {
          v38 = &v39 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, (a1 + 64), v34 + 1, 24);
          v35 = *(a1 + 48);
          v36 = &v38[v35];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, (a1 + 64), v34 + 1, 24);
          v35 = *(a1 + 48);
          v36 = &v39;
        }
      }

      v37 = (v35 + 24 * *(a1 + 56));
      result = *v36;
      v37[1].n128_u64[0] = v36[1].n128_u64[0];
      *v37 = result;
      ++*(a1 + 56);
    }
  }

  return result;
}

uint64_t sub_10005B154(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 3 || v3 == 12)
  {
    v5 = *(a1 + 56);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::Token::isKeyword((v2 + 56)))
    {
      *&v31 = "expected bare identifier";
      v33 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, &v31, v43);
      if (v43[0])
      {
        mlir::InFlightDiagnostic::report(v43);
      }

      if (v51 != 1)
      {
        return 0;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v23 = v48;
      if (v48)
      {
        v24 = v49;
        v25 = v48;
        if (v49 != v48)
        {
          do
          {
            v24 = sub_10005BEF4(v24 - 1);
          }

          while (v24 != v23);
          v25 = v48;
        }

        v49 = v23;
        operator delete(v25);
      }

      v26 = v46;
      if (v46)
      {
        v27 = v47;
        v28 = v46;
        if (v47 != v46)
        {
          do
          {
            v29 = *--v27;
            *v27 = 0;
            if (v29)
            {
              operator delete[]();
            }
          }

          while (v27 != v26);
          v28 = v46;
        }

        v47 = v26;
        operator delete(v28);
      }

      v30 = v44;
      if (v44 == &v45)
      {
        return 0;
      }

LABEL_50:
      free(v30);
      return 0;
    }

    v2 = *(a1 + 8);
    v5 = *(a1 + 56);
    if (!v5)
    {
LABEL_15:
      *&v31 = "use of undeclared identifier";
      v33 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, &v31, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
        return 0;
      }

      if (v41 != &v42)
      {
        free(v41);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v40;
        v18 = __p;
        if (v40 != __p)
        {
          do
          {
            v17 = sub_10005BEF4(v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v40 = v16;
        operator delete(v18);
      }

      v19 = v37;
      if (v37)
      {
        v20 = v38;
        v21 = v37;
        if (v38 != v37)
        {
          do
          {
            v22 = *--v20;
            *v20 = 0;
            if (v22)
            {
              operator delete[]();
            }
          }

          while (v20 != v19);
          v21 = v37;
        }

        v38 = v19;
        operator delete(v21);
      }

      v30 = v35;
      if (v35 == &v36)
      {
        return 0;
      }

      goto LABEL_50;
    }
  }

  v6 = *(a1 + 48);
  v7 = (v6 + 24 * v5);
  v9 = *(v2 + 64);
  v8 = *(v2 + 72);
  v10 = (v6 + 16);
  while (1)
  {
    v11 = v10 - 2;
    if (*(v10 - 1) == v8 && (!v8 || !memcmp(*(v10 - 2), v9, v8)))
    {
      break;
    }

    v10 += 3;
    if (v11 + 3 == v7)
    {
      goto LABEL_15;
    }
  }

  v12 = *v10;
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v31);
  result = v12;
  v14 = *(a1 + 8);
  *(v14 + 56) = v31;
  *(v14 + 72) = v32;
  return result;
}

uint64_t sub_10005B484(uint64_t a1, int a2, mlir::MLIRContext **a3, uint64_t a4, const char *a5)
{
  v39 = a4;
  v40 = a3;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v40) & 1) != 0 || (mlir::AffineExpr::isSymbolicOrConstant(&v39))
      {
        return mlir::AffineExpr::operator*(&v40, v39);
      }

      v37[0] = "non-affine expression: at least one of the multiply operands has to be either a constant or symbolic";
      v38 = 259;
      mlir::detail::Parser::emitError(a1, a5, v37, v68);
      if (v68[0])
      {
        mlir::InFlightDiagnostic::report(v68);
      }

      if (v76 != 1)
      {
        return 0;
      }

      if (v75 != &v76)
      {
        free(v75);
      }

      v29 = v73;
      if (v73)
      {
        v30 = v74;
        v31 = v73;
        if (v74 != v73)
        {
          do
          {
            v30 = sub_10005BEF4(v30 - 1);
          }

          while (v30 != v29);
          v31 = v73;
        }

        v74 = v29;
        operator delete(v31);
      }

      v32 = v71;
      if (v71)
      {
        v33 = v72;
        v34 = v71;
        if (v72 != v71)
        {
          do
          {
            v35 = *--v33;
            *v33 = 0;
            if (v35)
            {
              operator delete[]();
            }
          }

          while (v33 != v32);
          v34 = v71;
        }

        v72 = v32;
        operator delete(v34);
      }

      v36 = v69;
      if (v69 == &v70)
      {
        return 0;
      }
    }

    else
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v39))
      {
        return mlir::AffineExpr::floorDiv(&v40, v39);
      }

      v37[0] = "non-affine expression: right operand of floordiv has to be either a constant or symbolic";
      v38 = 259;
      mlir::detail::Parser::emitError(a1, a5, v37, v59);
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 != 1)
      {
        return 0;
      }

      if (v66 != &v67)
      {
        free(v66);
      }

      v15 = v64;
      if (v64)
      {
        v16 = v65;
        v17 = v64;
        if (v65 != v64)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = v64;
        }

        v65 = v15;
        operator delete(v17);
      }

      v18 = v62;
      if (v62)
      {
        v19 = v63;
        v20 = v62;
        if (v63 != v62)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v62;
        }

        v63 = v18;
        operator delete(v20);
      }

      v36 = v60;
      if (v60 == &v61)
      {
        return 0;
      }
    }

    goto LABEL_88;
  }

  if (a2 == 3)
  {
    if (mlir::AffineExpr::isSymbolicOrConstant(&v39))
    {
      return mlir::AffineExpr::ceilDiv(&v40, v39);
    }

    v37[0] = "non-affine expression: right operand of ceildiv has to be either a constant or symbolic";
    v38 = 259;
    mlir::detail::Parser::emitError(a1, a5, v37, v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 != 1)
    {
      return 0;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v56;
      v10 = __p;
      if (v56 != __p)
      {
        do
        {
          v9 = sub_10005BEF4(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v56 = v8;
      operator delete(v10);
    }

    v11 = v53;
    if (v53)
    {
      v12 = v54;
      v13 = v53;
      if (v54 != v53)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v53;
      }

      v54 = v11;
      operator delete(v13);
    }

    v36 = v51;
    if (v51 == &v52)
    {
      return 0;
    }

    goto LABEL_88;
  }

  if (mlir::AffineExpr::isSymbolicOrConstant(&v39))
  {
    return mlir::AffineExpr::operator%(&v40, v39);
  }

  v37[0] = "non-affine expression: right operand of mod has to be either a constant or symbolic";
  v38 = 259;
  mlir::detail::Parser::emitError(a1, a5, v37, v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = v46;
    if (v46)
    {
      v23 = v47;
      v24 = v46;
      if (v47 != v46)
      {
        do
        {
          v23 = sub_10005BEF4(v23 - 1);
        }

        while (v23 != v22);
        v24 = v46;
      }

      v47 = v22;
      operator delete(v24);
    }

    v25 = v44;
    if (v44)
    {
      v26 = v45;
      v27 = v44;
      if (v45 != v44)
      {
        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
        v27 = v44;
      }

      v45 = v25;
      operator delete(v27);
    }

    v36 = v42;
    if (v42 != &v43)
    {
LABEL_88:
      free(v36);
    }
  }

  return 0;
}

uint64_t sub_10005B9E8(uint64_t a1)
{
  v2 = *a1;
  v32 = sub_10005A214(*a1, 0, 0);
  if (!v32)
  {
    return 0;
  }

  v3 = *(v2 + 1);
  v4 = *(v3 + 56);
  if (v4 == 19)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
    v5 = *(v2 + 1);
    *(v5 + 56) = v29;
    *(v5 + 72) = v30;
    v3 = *(v2 + 1);
    v4 = *(v3 + 56);
    if (v4 == 18)
    {
      *(v3 + 80) = *(v3 + 56);
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
      v6 = *(v2 + 1);
      *(v6 + 56) = v29;
      *(v6 + 72) = v30;
      v7 = sub_10005A214(v2, 0, 0);
      if (v7)
      {
        result = mlir::AffineExpr::operator-(&v32, v7);
        v9 = 0;
        if (!result)
        {
          return result;
        }

        goto LABEL_17;
      }

      return 0;
    }
  }

  if (v4 == 18)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
    v13 = *(v2 + 1);
    *(v13 + 56) = v29;
    *(v13 + 72) = v30;
    v14 = *(v2 + 1);
    if (*(v14 + 56) == 18)
    {
      *(v14 + 80) = *(v14 + 56);
      *(v14 + 96) = *(v14 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
      v15 = *(v2 + 1);
      *(v15 + 56) = v29;
      *(v15 + 72) = v30;
      v16 = sub_10005A214(v2, 0, 0);
      if (!v16)
      {
        return 0;
      }

      result = mlir::AffineExpr::operator-(&v32, v16);
      v9 = 1;
      if (!result)
      {
        return result;
      }

LABEL_17:
      v17 = *(a1 + 8);
      v18 = *(v17 + 8);
      if (v18 >= *(v17 + 12))
      {
        v28 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v17 + 16), v18 + 1, 8);
        result = v28;
        LODWORD(v18) = *(v17 + 8);
      }

      *(*v17 + 8 * v18) = result;
      ++*(v17 + 8);
      v19 = *(a1 + 16);
      v20 = v19[1];
      if ((v20 + 1) > v19[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v19, v19 + 3, v20 + 1, 1);
        v20 = v19[1];
      }

      *(*v19 + v20) = v9;
      ++v19[1];
      return 1;
    }

LABEL_22:
    *&v29 = "expected '== affine-expr' or '>= affine-expr' at end of affine constraint";
    v31 = 259;
    mlir::detail::Parser::emitError(v2, &v29, v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v39;
        v23 = __p;
        if (v39 != __p)
        {
          do
          {
            v22 = sub_10005BEF4(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v39 = v21;
        operator delete(v23);
      }

      v24 = v36;
      if (v36)
      {
        v25 = v37;
        v26 = v36;
        if (v37 != v36)
        {
          do
          {
            v27 = *--v25;
            *v25 = 0;
            if (v27)
            {
              operator delete[]();
            }
          }

          while (v25 != v24);
          v26 = v36;
        }

        v37 = v24;
        operator delete(v26);
      }

      if (v34 != &v35)
      {
        free(v34);
      }
    }

    return 0;
  }

  if (v4 != 23)
  {
    goto LABEL_22;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
  v10 = *(v2 + 1);
  *(v10 + 56) = v29;
  *(v10 + 72) = v30;
  v11 = *(v2 + 1);
  if (*(v11 + 56) != 18)
  {
    goto LABEL_22;
  }

  *(v11 + 80) = *(v11 + 56);
  *(v11 + 96) = *(v11 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
  v12 = *(v2 + 1);
  *(v12 + 56) = v29;
  *(v12 + 72) = v30;
  result = sub_10005A214(v2, 0, 0);
  *&v29 = result;
  if (result)
  {
    result = mlir::AffineExpr::operator-(&v29, v32);
  }

  v9 = 0;
  if (result)
  {
    goto LABEL_17;
  }

  return result;
}

void *sub_10005BE10(void *a1)
{
  v2 = a1[22];
  if (v2 != a1 + 24)
  {
    free(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    v4 = a1[20];
    v5 = a1[19];
    if (v4 != v3)
    {
      do
      {
        v4 = sub_10005BEF4(v4 - 1);
      }

      while (v4 != v3);
      v5 = a1[19];
    }

    a1[20] = v3;
    operator delete(v5);
  }

  v6 = a1[16];
  if (v6)
  {
    v7 = a1[17];
    v8 = a1[16];
    if (v7 != v6)
    {
      do
      {
        v9 = *--v7;
        *v7 = 0;
        if (v9)
        {
          operator delete[]();
        }
      }

      while (v7 != v6);
      v8 = a1[16];
    }

    a1[17] = v6;
    operator delete(v8);
  }

  v10 = a1[2];
  if (v10 != a1 + 4)
  {
    free(v10);
  }

  return a1;
}

void *sub_10005BEF4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[22];
    if (v2 != v1 + 24)
    {
      free(v2);
    }

    v3 = v1[19];
    if (v3)
    {
      v4 = v1[20];
      v5 = v1[19];
      if (v4 != v3)
      {
        do
        {
          v4 = sub_10005BEF4(v4 - 8);
        }

        while (v4 != v3);
        v5 = v1[19];
      }

      v1[20] = v3;
      operator delete(v5);
    }

    v6 = v1[16];
    if (v6)
    {
      v7 = v1[17];
      v8 = v1[16];
      if (v7 != v6)
      {
        do
        {
          v9 = *--v7;
          *v7 = 0;
          if (v9)
          {
            operator delete[]();
          }
        }

        while (v7 != v6);
        v8 = v1[16];
      }

      v1[17] = v6;
      operator delete(v8);
    }

    v10 = v1[2];
    if (v10 != v1 + 4)
    {
      free(v10);
    }

    operator delete();
  }

  return result;
}

BOOL sub_10005C004(uint64_t a1)
{
  v2 = sub_10005A214(*a1, 0, 0);
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v6 = v2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v4 + 1, 8);
    v2 = v6;
    LODWORD(v4) = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

uint64_t sub_10005C084(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(a1 + 112);
  }

  if (v2 != (a1 + 128))
  {
    free(v2);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v7 - 8;
    do
    {
      v11 = *&v10[v9];
      *&v10[v9] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v9 -= 8;
    }

    while (v9);
    v7 = *(a1 + 48);
  }

  if (v7 != (a1 + 64))
  {
    free(v7);
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  if (v12)
  {
    v14 = 24 * v12;
    v15 = (v13 + 16);
    do
    {
      if (*(v15 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = *v15;
        *v15 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    v13 = *(a1 + 16);
    v17 = 24 * *(a1 + 32);
  }

  else
  {
    v17 = 0;
  }

  llvm::deallocate_buffer(v13, v17, 8uLL);
  return a1;
}

uint64_t sub_10005C208(uint64_t a1)
{
  llvm::deallocate_buffer(*(a1 + 72), (16 * *(a1 + 88)), 8uLL);
  sub_10005C314((a1 + 48));
  llvm::deallocate_buffer(*(a1 + 48), (32 * *(a1 + 64)), 8uLL);
  if (*(a1 + 36))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(a1 + 24) + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17), 8uLL);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*(a1 + 24));
  if (*(a1 + 12))
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = 0;
      v9 = 8 * v7;
      do
      {
        v10 = *(*a1 + v8);
        if (v10 != -8 && v10 != 0)
        {
          llvm::deallocate_buffer(v10, (*v10 + 17), 8uLL);
        }

        v8 += 8;
      }

      while (v9 != v8);
    }
  }

  free(*a1);
  return a1;
}

void sub_10005C314(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 32 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*(v2 + 20))
        {
          v4 = *(v2 + 16);
          if (v4)
          {
            v5 = 0;
            v6 = 8 * v4;
            do
            {
              v7 = *(*(v2 + 8) + v5);
              if (v7 != -8 && v7 != 0)
              {
                v9 = *v7;
                if (*(v7 + 31) < 0)
                {
                  operator delete(*(v7 + 1));
                }

                llvm::deallocate_buffer(v7, (v9 + 57), 8uLL);
              }

              v5 += 8;
            }

            while (v6 != v5);
          }
        }

        free(*(v2 + 8));
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void mlir::AsmParserState::Impl::resolveSymbolUses(mlir::AsmParserState::Impl *this)
{
  v31 = v33;
  v32 = 0x600000000;
  v1 = *(this + 96);
  if (v1)
  {
    v3 = *(this + 47);
    v29 = &v3[2 * v1];
    do
    {
      v4 = v3[1];
      if (*(v4 + 8))
      {
        v5 = *v4;
        v6 = *(v4 + 16);
        if (v6)
        {
          v7 = 24 * v6;
          v8 = v5;
          while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v8 += 24;
            v7 -= 24;
            if (!v7)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          v8 = v5;
        }

        v9 = v5 + 24 * v6;
        v30 = v3;
        while (v8 != v9)
        {
          LODWORD(v32) = 0;
          if (mlir::SymbolTableCollection::lookupSymbolIn(this + 568, *v3, *v8, &v31))
          {
            v10 = *(v8 + 16);
            if (v10)
            {
              v11 = *(v8 + 8);
              v12 = v11 + (v10 << 6);
              do
              {
                v13 = *(v11 + 8);
                if (v32)
                {
                  v14 = v13 == 0;
                }

                else
                {
                  v14 = 1;
                }

                if (!v14)
                {
                  v15 = *v11;
                  v16 = v31;
                  v17 = v31 + 8 * v32;
                  v18 = *v11 + 16 * v13;
                  do
                  {
                    v19 = *(this + 20);
                    if (v19)
                    {
                      v20 = *(this + 8);
                      v21 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v19 - 1);
                      v22 = *(v20 + 16 * v21);
                      if (v22 == *v16)
                      {
LABEL_26:
                        if (v21 != v19)
                        {
                          v23 = *(*this + 8 * *(v20 + 16 * v21 + 8));
                          v24 = *v15;
                          v25 = *(v23 + 152);
                          if (v25 >= *(v23 + 156))
                          {
                            v28 = *v15;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 144, (v23 + 160), v25 + 1, 16);
                            v24 = v28;
                            v25 = *(v23 + 152);
                          }

                          *(*(v23 + 144) + 16 * v25) = v24;
                          ++*(v23 + 152);
                        }
                      }

                      else
                      {
                        v26 = 1;
                        while (v22 != -4096)
                        {
                          v27 = v21 + v26++;
                          v21 = v27 & (v19 - 1);
                          v22 = *(v20 + 16 * v21);
                          if (v22 == *v16)
                          {
                            goto LABEL_26;
                          }
                        }
                      }
                    }

                    if (++v16 == v17)
                    {
                      break;
                    }

                    ++v15;
                  }

                  while (v15 != v18);
                }

                v11 += 64;
              }

              while (v11 != v12);
            }
          }

          v8 += 24;
          if (v8 == v9)
          {
            v3 = v30;
          }

          else
          {
            v3 = v30;
            do
            {
              if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              v8 += 24;
            }

            while (v8 != v9);
          }
        }
      }

LABEL_3:
      v3 += 2;
    }

    while (v3 != v29);
    if (v31 != v33)
    {
      free(v31);
    }
  }
}

_BYTE *mlir::AsmParserState::convertIdLocToRange(_BYTE *a1)
{
  if (!a1 || !*a1)
  {
    return a1;
  }

  if (*a1 != 34)
  {
    v9 = a1 + 1;
    while (1)
    {
      v10 = v9;
      v11 = *v9;
      if (v11 < 0)
      {
        if (__maskrune(*v9, 0x500uLL))
        {
          goto LABEL_26;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v11] & 0x500) != 0)
      {
        goto LABEL_26;
      }

      if (v11 - 36 > 0x3B || ((1 << (v11 - 36)) & 0x800000000000601) == 0)
      {
        return a1;
      }

LABEL_26:
      v9 = v10 + 1;
      if (!*v10)
      {
        return a1;
      }
    }
  }

  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    do
    {
      v4 = v2 + 1;
      v5 = memchr("\n\v\f", v3, 4uLL);
      if (v5 && v5 - "\n\v\f" != -1)
      {
        break;
      }

      if (v3 == 92)
      {
        v7 = *v4;
        v8 = (v7 - 92) > 0x18 || ((1 << (v7 - 92)) & 0x1040001) == 0;
        if (!v8 || v7 == 34)
        {
          v4 = v2 + 2;
        }

        else
        {
          if (word_1002B0918[*v4] == -1 || word_1002B0918[v2[2]] == -1)
          {
            return a1;
          }

          v4 = v2 + 3;
        }
      }

      v3 = *v4;
      v2 = v4;
    }

    while (*v4);
  }

  return a1;
}

void mlir::AsmParserState::initialize(mlir::AsmParserState *this, mlir::Operation *a2)
{
  v8 = *(a2 + 6);
  v3 = *this;
  v4 = *(*this + 448);
  if (v4 >= *(*this + 452))
  {
    sub_10005E91C(v3 + 440, &v8);
    v5 = *this;
    v6 = *(*(v5 + 440) + 8 * *(v5 + 448) - 8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    sub_10005EA8C((*(v3 + 440) + 8 * v4), &v8);
    ++*(v3 + 448);
    v5 = *this;
    v6 = *(*(v5 + 440) + 8 * *(v5 + 448) - 8);
    if (!v6)
    {
      return;
    }
  }

  v7 = *(v5 + 512);
  if (v7 >= *(v5 + 516))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 504, (v5 + 520), v7 + 1, 8);
    LODWORD(v7) = *(v5 + 512);
  }

  *(*(v5 + 504) + 8 * v7) = v6;
  ++*(v5 + 512);
}

void *mlir::AsmParserState::startOperationDefinition(mlir::AsmParserState *this, const mlir::OperationName *a2)
{
  v2 = *this;
  v3 = *(*this + 448);
  if (v3 >= *(*this + 452))
  {

    return sub_10005E91C(v2 + 440, a2);
  }

  else
  {
    result = sub_10005EA8C((*(v2 + 440) + 8 * v3), a2);
    ++*(v2 + 448);
  }

  return result;
}

void mlir::AsmParserState::finalize(mlir::AsmParserState::Impl **this, mlir::Operation *a2)
{
  v15 = a2;
  v4 = *this;
  v5 = *(v4 + 55);
  v6 = *(v4 + 112);
  v7 = v5 + 8 * v6;
  v8 = *(v7 - 8);
  *(v7 - 8) = 0;
  v14 = v8;
  LODWORD(v6) = v6 - 1;
  *(v4 + 112) = v6;
  v9 = (v5 + 8 * v6);
  v10 = *v9;
  *v9 = 0;
  if (v10)
  {
    sub_10005E4FC(v9, v10);
    v4 = *this;
  }

  if (!v8)
  {
LABEL_6:
    mlir::AsmParserState::Impl::resolveSymbolUses(v4);
    v13 = v14;
    v14 = 0;
    if (!v13)
    {
      return;
    }

    goto LABEL_7;
  }

  v11 = *(v4 + 96);
  if (v11 < *(v4 + 97))
  {
    v12 = (*(v4 + 47) + 16 * v11);
    v14 = 0;
    *v12 = a2;
    v12[1] = v8;
    *(v4 + 96) = v11 + 1;
    goto LABEL_6;
  }

  sub_10005E784(v4 + 376, &v15, &v14);
  mlir::AsmParserState::Impl::resolveSymbolUses(*this);
  v13 = v14;
  v14 = 0;
  if (!v13)
  {
    return;
  }

LABEL_7:
  sub_10005E4FC(&v14, v13);
}

void mlir::AsmParserState::finalizeOperationDefinition(uint64_t *a1, uint64_t a2)
{
  v10 = a2;
  v2 = *a1;
  v3 = *(*a1 + 440);
  v4 = *(*a1 + 448);
  v5 = v3 + 8 * v4;
  v6 = *(v5 - 8);
  *(v5 - 8) = 0;
  v9 = v6;
  LODWORD(v4) = v4 - 1;
  *(v2 + 448) = v4;
  v7 = (v3 + 8 * v4);
  v8 = *v7;
  *v7 = 0;
  if (v8)
  {
    sub_10005E4FC(v7, v8);
  }

  operator new();
}

uint64_t sub_10005CCF8@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    sub_1000415A0(result, v5);
    sub_1000414FC(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void mlir::AsmParserState::startRegionDefinition(mlir::AsmParserState *this)
{
  v1 = *this;
  v2 = *(*(*this + 440) + 8 * *(*this + 448) - 8);
  if (v2)
  {
    v3 = *(v1 + 512);
    if (v3 >= *(v1 + 516))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v1 + 504, (v1 + 520), v3 + 1, 8);
      LODWORD(v3) = *(v1 + 512);
    }

    *(*(v1 + 504) + 8 * v3) = v2;
    ++*(v1 + 512);
  }
}

uint64_t mlir::AsmParserState::finalizeRegionDefinition(uint64_t this)
{
  if (*(*(*this + 440) + 8 * *(*this + 448) - 8))
  {
    --*(*this + 512);
  }

  return this;
}

_BYTE *mlir::AsmParserState::addDefinition(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v13 = a2;
  v5 = *a1;
  v10 = *(*a1 + 96);
  sub_10005CCF8(v5 + 152, &v13, &v10, &v11);
  if (v12 == 1)
  {
    v6 = *a1;
    mlir::AsmParserState::convertIdLocToRange(a3);
    operator new();
  }

  result = mlir::AsmParserState::convertIdLocToRange(a3);
  v8 = *(*(*a1 + 88) + 8 * *(v11 + 8));
  *(v8 + 8) = result;
  *(v8 + 16) = v9;
  return result;
}

void mlir::AsmParserState::addDefinition(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(*a1 + 152);
  v5 = *(*a1 + 168);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = ((v6 >> 4) ^ (v6 >> 9)) & (v5 - 1);
    v8 = *(v4 + 16 * v7);
    if (v8 == v6)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v7 + v9++;
      v7 = v10 & (v5 - 1);
      v8 = *(v4 + 16 * v7);
      if (v8 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = *(*a1 + 168);
LABEL_8:
  v11 = *(*(*a1 + 88) + 8 * *(v4 + 16 * v7 + 8));
  v12 = *(a2 + 24);
  v13 = *(v11 + 96);
  v14 = (v12 + 1);
  if (v12 >= v13 && v13 != v14)
  {
    if (v13 <= v14)
    {
      if (*(v11 + 100) < v14)
      {
        sub_10005F1C8(v11 + 88, (v12 + 1));
        v13 = *(v11 + 96);
      }

      if (v13 != v14)
      {
        v19 = *(v11 + 88);
        v20 = v19 + 80 * v13;
        do
        {
          *(v20 + 48) = 0uLL;
          *(v20 + 64) = 0uLL;
          *v20 = 0uLL;
          *(v20 + 16) = 0uLL;
          *(v20 + 32) = 0uLL;
          *(v20 + 16) = v20 + 32;
          *(v20 + 28) = 3;
          v20 += 80;
        }

        while (v20 != v19 + 80 * v14);
      }
    }

    else
    {
      v16 = 80 * v13;
      v17 = (v16 + *(v11 + 88) - 64);
      v18 = 80 * v14 - v16;
      do
      {
        if (v17 + 2 != *v17)
        {
          free(*v17);
        }

        v17 -= 10;
        v18 += 80;
      }

      while (v18);
    }

    *(v11 + 96) = v14;
  }

  *&v28 = mlir::AsmParserState::convertIdLocToRange(a3);
  *(&v28 + 1) = v21;
  __src = v31;
  v30 = 0x300000000;
  v22 = *(v11 + 88) + 80 * v12;
  *v22 = v28;
  v23 = __src;
  if (v22 != &v28)
  {
    if (__src != v31)
    {
      v24 = *(v22 + 16);
      if (v24 != (v22 + 32))
      {
        free(v24);
        v23 = __src;
      }

      *(v22 + 16) = v23;
      *(v22 + 24) = v30;
      __src = v31;
      HIDWORD(v30) = 0;
      goto LABEL_38;
    }

    v25 = v30;
    v26 = *(v22 + 24);
    if (v26 >= v30)
    {
      if (v30)
      {
        memmove(*(v22 + 16), __src, 16 * v30);
      }

      goto LABEL_37;
    }

    if (*(v22 + 28) >= v30)
    {
      if (v26)
      {
        memmove(*(v22 + 16), __src, 16 * v26);
        v27 = v30 - v26;
        if (v30 == v26)
        {
LABEL_37:
          *(v22 + 24) = v25;
LABEL_38:
          LODWORD(v30) = 0;
          v23 = __src;
          goto LABEL_39;
        }
      }

      else
      {
        v26 = 0;
        v27 = v30;
        if (!v30)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      *(v22 + 24) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v22 + 16, (v22 + 32), v25, 16);
      v26 = 0;
      v27 = v30;
      if (!v30)
      {
        goto LABEL_37;
      }
    }

    memcpy((*(v22 + 16) + 16 * v26), __src + 16 * v26, 16 * v27);
    goto LABEL_37;
  }

LABEL_39:
  if (v23 != v31)
  {
    free(v23);
  }
}

uint64_t *mlir::AsmParserState::addAttrAliasDefinition(uint64_t *a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v18 = *(*a1 + 184);
  v13 = llvm::StringMapImpl::hash(a2, a3);
  result = sub_10005F2F8((v12 + 304), a2, a3, v13, &v18);
  if (v15)
  {
    v16 = *a1;
    operator new();
  }

  v17 = *(*(*a1 + 176) + 8 * *(*result + 8));
  v17[2] = a4;
  v17[3] = a5;
  v17[12] = a6;
  return result;
}

void mlir::AsmParserState::addTypeAliasDefinition(uint64_t *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *a1;
  v9 = *(*a1 + 248);
  v7 = llvm::StringMapImpl::hash(a2, a3);
  sub_10005F2F8((v6 + 328), a2, a3, v7, &v9);
  v8 = *a1;
  operator new();
}

void mlir::AsmParserState::addUses(uint64_t a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v55 = a2;
  if ((~*(a2 + 8) & 7) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v18 = *(*a1 + 152);
    v19 = *(*a1 + 168);
    if (v19)
    {
      v20 = *(a2 + 16);
      v21 = ((v20 >> 4) ^ (v20 >> 9)) & (v19 - 1);
      v22 = *(v18 + 16 * v21);
      if (v22 == v20)
      {
        goto LABEL_22;
      }

      v23 = 1;
      while (v22 != -4096)
      {
        v24 = v21 + v23++;
        v21 = v24 & (v19 - 1);
        v22 = *(v18 + 16 * v21);
        if (v22 == v20)
        {
          goto LABEL_22;
        }
      }
    }

    v21 = *(*a1 + 168);
LABEL_22:
    if (a4)
    {
      v27 = *(*(*(*a1 + 88) + 8 * *(v18 + 16 * v21 + 8)) + 88) + 80 * *(a2 + 24);
      v28 = 8 * a4;
      do
      {
        while (1)
        {
          *&v54 = mlir::AsmParserState::convertIdLocToRange(*a3);
          *(&v54 + 1) = v29;
          v30 = *(v27 + 24);
          if (v30 >= *(v27 + 28))
          {
            break;
          }

          *(*(v27 + 16) + 16 * v30) = v54;
          ++*(v27 + 24);
          ++a3;
          v28 -= 8;
          if (!v28)
          {
            return;
          }
        }

        sub_10005FB60(v27 + 16, &v54);
        ++a3;
        v28 -= 8;
      }

      while (v28);
    }

    return;
  }

  Owner = mlir::detail::OpResultImpl::getOwner(v7);
  v9 = *a1;
  v10 = *(*a1 + 80);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v9[8];
  v12 = (v10 - 1) & ((Owner >> 4) ^ (Owner >> 9));
  v13 = *(v11 + 16 * v12);
  if (v13 != Owner)
  {
    v51 = 1;
    while (v13 != -4096)
    {
      v52 = v12 + v51++;
      v12 = v52 & (v10 - 1);
      v13 = *(v11 + 16 * v12);
      if (v13 == Owner)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_8;
  }

LABEL_7:
  if (v12 == v10)
  {
LABEL_8:
    v14 = sub_10005DA84((v9 + 44), &v55);
    v15 = v14;
    v16 = v14[2];
    v17 = v16 + ((8 * a4) >> 3);
    if (v17 > v14[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v14 + 4, v17, 8);
      LODWORD(v16) = v15[2];
    }

    if (a4)
    {
      memcpy((*v15 + 8 * v16), a3, 8 * a4);
      LODWORD(v16) = v15[2];
    }

    v15[2] = v16 + a4;
    return;
  }

  v25 = *(v7 + 8);
  if ((v25 & 7) == 6)
  {
    v26 = *(v7 + 16) + 6;
  }

  else
  {
    v26 = v25 & 7;
  }

  v31 = 0;
  v32 = *(*v9 + 8 * *(v11 + 16 * v12 + 8));
  v33 = *(v32 + 40);
  v34 = *(v32 + 48);
  v35 = 88 * v34;
  do
  {
    if (v35 == v31)
    {
      return;
    }

    v36 = *(v33 + v35 - 88);
    v33 -= 88;
    v31 += 88;
  }

  while (v26 < v36);
  if (a4)
  {
    v53 = &a3[a4];
    v37 = v33 + 88 * v34;
    do
    {
      v38 = *a3;
      if (*a3)
      {
        v39 = *a3;
        if (*v38)
        {
          if (*v38 == 34)
          {
            v40 = v38 + 1;
            v41 = v38[1];
            if (v41)
            {
              while (1)
              {
                v39 = v40 + 1;
                v42 = memchr("\n\v\f", v41, 4uLL);
                if (v42 && v42 - "\n\v\f" != -1)
                {
                  break;
                }

                if (v41 == 92)
                {
                  v44 = *v39;
                  v45 = (v44 - 92) > 0x18 || ((1 << (v44 - 92)) & 0x1040001) == 0;
                  if (!v45 || v44 == 34)
                  {
                    v39 = v40 + 2;
                  }

                  else
                  {
                    if (word_1002B0918[*v39] == -1 || word_1002B0918[v40[2]] == -1)
                    {
                      goto LABEL_58;
                    }

                    v39 = v40 + 3;
                  }
                }

                v41 = *v39;
                v40 = v39;
                if (!*v39)
                {
                  goto LABEL_58;
                }
              }
            }

            else
            {
              v39 = v38 + 1;
            }

            goto LABEL_58;
          }

          v48 = v38 + 1;
          while (2)
          {
            v39 = v48;
            v49 = *v48;
            if (v49 < 0)
            {
              if (!__maskrune(*v48, 0x500uLL))
              {
LABEL_68:
                if (v49 - 36 > 0x3B || ((1 << (v49 - 36)) & 0x800000000000601) == 0)
                {
                  break;
                }
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v49] & 0x500) == 0)
            {
              goto LABEL_68;
            }

            v48 = (v39 + 1);
            if (!*v39)
            {
              break;
            }

            continue;
          }
        }
      }

      else
      {
        v39 = 0;
      }

LABEL_58:
      v46 = *(v37 + 32);
      if (v46 >= *(v37 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v37 + 24, (v37 + 40), v46 + 1, 16);
        v46 = *(v37 + 32);
      }

      v47 = (*(v37 + 24) + 16 * v46);
      *v47 = v38;
      v47[1] = v39;
      ++*(v37 + 32);
      ++a3;
    }

    while (a3 != v53);
  }
}

void *sub_10005DA84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 72 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    sub_10005F684(a1, v2);
    sub_10005F590(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = v7 + 3;
  v7[2] = 0x600000000;
  return v7 + 1;
}

uint64_t mlir::AsmParserState::addUses(uint64_t *a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v20 = a2;
  v7 = *a1;
  v17 = *(*a1 + 96);
  result = sub_10005CCF8(v7 + 152, &v20, &v17, &v18);
  if (v19 == 1)
  {
    v9 = *a1;
    operator new();
  }

  if (a4)
  {
    v10 = *(*(*a1 + 88) + 8 * *(v18 + 8));
    v11 = 8 * a4;
    do
    {
      result = mlir::AsmParserState::convertIdLocToRange(*a3);
      v13 = *(v10 + 32);
      if (v13 >= *(v10 + 36))
      {
        v15 = result;
        v16 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v10 + 24, (v10 + 40), v13 + 1, 16);
        v12 = v16;
        result = v15;
        v13 = *(v10 + 32);
      }

      v14 = (*(v10 + 24) + 16 * v13);
      *v14 = result;
      v14[1] = v12;
      ++*(v10 + 32);
      ++a3;
      v11 -= 8;
    }

    while (v11);
  }

  return result;
}

void mlir::AsmParserState::addUses(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v15 = a2;
  v4 = *(*a1 + 512);
  if (v4)
  {
    v7 = sub_10005DEDC(*(*(*a1 + 504) + 8 * v4 - 8), &v15);
    v8 = v7;
    v13 = &a3[16 * a4];
    v14 = a3;
    v9 = *(v7 + 2);
    if (v9 >= *(v7 + 3))
    {
      sub_1000603C0(v7, &v14, &v13);
      return;
    }

    v10 = (*v7 + (v9 << 6));
    *v10 = v10 + 2;
    v10[1] = 0x300000000;
    v11 = (16 * a4) >> 4;
    if (v11 < 4)
    {
      v12 = 0;
      if (!a4)
      {
LABEL_8:
        *(v10 + 2) = v12 + a4;
        ++*(v8 + 2);
        return;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v10 + 2, v11, 16);
      v12 = *(v10 + 2);
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    memcpy((*v10 + 16 * v12), a3, 16 * a4);
    v12 = *(v10 + 2);
    goto LABEL_8;
  }
}

void *sub_10005DEDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 24 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 24 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_10005FC84(a1, v2);
    sub_10005FBDC(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = v5 + 3;
  v5[2] = 0;
  return v5 + 1;
}

void mlir::AsmParserState::addAttrAliasUses(uint64_t *a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey((v10 + 304), a2, a3, v11);
  if (Key == -1)
  {
    v13 = *(v10 + 312);
  }

  else
  {
    v13 = Key;
  }

  v14 = *(v10 + 304) + 8 * v13;
  v15 = *a1;
  if (v14 == *(*a1 + 304) + 8 * *(*a1 + 312))
  {
    v21 = *(v15 + 184);
    v16 = llvm::StringMapImpl::hash(a2, a3);
    sub_10005F2F8((v15 + 304), a2, a3, v16, &v21);
    v17 = *a1;
    operator new();
  }

  v18 = *(*(v15 + 176) + 8 * *(*v14 + 8));
  v19 = *(v18 + 40);
  if (v19 >= *(v18 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 32, (v18 + 48), v19 + 1, 16);
    LODWORD(v19) = *(v18 + 40);
  }

  v20 = (*(v18 + 32) + 16 * v19);
  *v20 = a4;
  v20[1] = a5;
  ++*(v18 + 40);
}

void mlir::AsmParserState::addTypeAliasUses(uint64_t *a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey((v10 + 328), a2, a3, v11);
  if (Key == -1)
  {
    v13 = *(v10 + 336);
  }

  else
  {
    v13 = Key;
  }

  v14 = *(*(*a1 + 240) + 8 * *(*(*(v10 + 328) + 8 * v13) + 8));
  v15 = *(v14 + 40);
  if (v15 >= *(v14 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 32, (v14 + 48), v15 + 1, 16);
    LODWORD(v15) = *(v14 + 40);
  }

  v16 = (*(v14 + 32) + 16 * v15);
  *v16 = a4;
  v16[1] = a5;
  ++*(v14 + 40);
}

void mlir::AsmParserState::refineDefinition(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 352);
  v6 = *(*a1 + 368);
  v7 = HIDWORD(a2);
  v8 = 8 * a2;
  if (v6)
  {
    v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v10 = (v6 - 1) & (-348639895 * ((v9 >> 47) ^ v9));
    v11 = (v5 + 72 * v10);
    v12 = *v11;
    if (*v11 == a2)
    {
      goto LABEL_8;
    }

    v13 = 1;
    while (v12 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v6 - 1);
      v11 = (v5 + 72 * v10);
      v12 = *v11;
      if (*v11 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = (v5 + 72 * v6);
LABEL_8:
  mlir::AsmParserState::addUses(a1, a3, v11[1], *(v11 + 4));
  v15 = *a1;
  v16 = v15[46].i32[0];
  if (v16)
  {
    v17 = v15[44];
    v18 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v19 = v16 - 1;
    v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
    v21 = (*&v17 + 72 * v20);
    v22 = *v21;
    if (*v21 == a2)
    {
LABEL_10:
      v23 = v21[1];
      if (v23 != v21 + 3)
      {
        free(v23);
      }

      *v21 = -8192;
      v15[45] = vadd_s32(v15[45], 0x1FFFFFFFFLL);
    }

    else
    {
      v24 = 1;
      while (v22 != -4096)
      {
        v25 = v20 + v24++;
        v20 = v25 & v19;
        v21 = (*&v17 + 72 * v20);
        v22 = *v21;
        if (*v21 == a2)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void sub_10005E4FC(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *(a2 + 4);
    v4 = *a2;
    if (v3)
    {
      v5 = v4 + 24 * v3;
      do
      {
        if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v6 = *(v4 + 8);
          v7 = *(v4 + 16);
          if (v7)
          {
            v8 = v7 << 6;
            v9 = &v6[v8 - 64];
            v10 = -v8;
            do
            {
              if (v9 + 2 != *v9)
              {
                free(*v9);
              }

              v9 -= 8;
              v10 += 64;
            }

            while (v10);
            v6 = *(v4 + 8);
          }

          if (v6 != (v4 + 24))
          {
            free(v6);
          }
        }

        v4 += 24;
      }

      while (v4 != v5);
      v4 = *a2;
      v11 = 24 * *(a2 + 4);
    }

    else
    {
      v11 = 0;
    }

    llvm::deallocate_buffer(v4, v11, 8uLL);

    operator delete();
  }
}

uint64_t sub_10005E60C(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 16 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 16 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 16);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 16 * v8), *a2 + 16 * v8, 16 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10005E784(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v34 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v34);
  v8 = *(a1 + 8);
  v9 = 16 * v8;
  v10 = &v7[16 * v8];
  v11 = *a2;
  v12 = *a3;
  *a3 = 0;
  *v10 = v11;
  *(v10 + 1) = v12;
  v13 = *a1;
  if (!v8)
  {
    goto LABEL_10;
  }

  v14 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v14 < 0xB || (v13 + 8 < &v7[v9] ? (v24 = v7 + 8 >= &v13[v9]) : (v24 = 1), v24 ? (v25 = 0) : (v25 = 1), v13 < &v7[v9 - 8] ? (v26 = v7 >= &v13[v9 - 8]) : (v26 = 1), !v26 || (v25 & 1) != 0))
  {
    v15 = v7;
    v16 = *a1;
    do
    {
LABEL_4:
      v17 = *v16;
      *(v16 + 1) = 0;
      *v15 = v17;
      v15 += 16;
      v16 += 16;
    }

    while (v16 != &v13[v9]);
    goto LABEL_5;
  }

  v27 = v14 + 1;
  v28 = (v14 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v15 = &v7[16 * v28];
  v16 = &v13[16 * v28];
  v29 = v28;
  v30 = v7;
  v31 = *a1;
  do
  {
    v32 = *v31;
    v33 = *(v31 + 1);
    *(v31 + 1) = 0;
    *(v31 + 3) = 0;
    *v30 = v32;
    *(v30 + 1) = v33;
    v30 += 32;
    v31 += 32;
    v29 -= 2;
  }

  while (v29);
  if (v27 != v28)
  {
    goto LABEL_4;
  }

LABEL_5:
  v18 = &v13[v9 - 8];
  v19 = -v9;
  do
  {
    v20 = *v18;
    *v18 = 0;
    if (v20)
    {
      sub_10005E4FC(v18, v20);
    }

    v18 -= 2;
    v19 += 16;
  }

  while (v19);
  v13 = *a1;
LABEL_10:
  v21 = v34;
  if (v13 != v6)
  {
    free(v13);
  }

  *a1 = v7;
  v22 = *(a1 + 8) + 1;
  *(a1 + 8) = v22;
  *(a1 + 12) = v21;
  return &v7[16 * v22 - 16];
}

uint64_t sub_10005E91C(uint64_t a1, void *a2)
{
  v28 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v28);
  sub_10005EA8C(&v5[8 * *(a1 + 8)], a2);
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v10 = 8 * v8;
  if (v9 < 0xB)
  {
    v11 = v5;
LABEL_12:
    v20 = &v6[8 * v8];
    do
    {
      v21 = *v7;
      *v7 = 0;
      v7 += 8;
      *v11 = v21;
      v11 += 8;
    }

    while (v7 != v20);
    goto LABEL_14;
  }

  v12 = v6 >= &v5[v10] || v5 >= &v6[v10];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v9 + 1;
  v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
  v11 = &v5[v14];
  v7 = &v6[v14];
  v15 = (v6 + 16);
  v16 = v5 + 16;
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    *(v15 - 1) = 0uLL;
    *v15 = 0uLL;
    *(v16 - 1) = v18;
    *v16 = v19;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v22 = -v10;
  v23 = &v6[v10 - 8];
  do
  {
    v24 = *v23;
    *v23 = 0;
    if (v24)
    {
      sub_10005E4FC(v23, v24);
    }

    --v23;
    v22 += 8;
  }

  while (v22);
  v7 = *a1;
LABEL_19:
  v25 = v28;
  if (v7 != v4)
  {
    free(v7);
  }

  *a1 = v5;
  v26 = *(a1 + 8) + 1;
  *(a1 + 8) = v26;
  *(a1 + 12) = v25;
  return &v5[8 * v26 - 8];
}

void *sub_10005EA8C(void *a1, void *a2)
{
  *a1 = 0;
  {
    v4 = a2;
    sub_100299260();
    a2 = v4;
  }

  if ((*(**a2 + 32))(*a2, mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_10005EB48()
{
  {
    sub_1002992B4();
  }

  return llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name;
}

const char *sub_10005EB90()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SymbolTable<Empty>]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t sub_10005EC10(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  v21 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 88, &v21);
  v8 = &v7[88 * *(a1 + 8)];
  *v8 = *a2;
  *(v8 + 8) = *a3;
  *(v8 + 3) = v8 + 40;
  *(v8 + 4) = 0x300000000;
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = &v9[88 * v10];
    v12 = v7 + 24;
    v13 = v9 + 24;
    do
    {
      v14 = v13 - 24;
      *(v12 - 6) = *(v13 - 6);
      *(v12 - 1) = *(v13 - 1);
      *v12 = v12 + 2;
      v12[1] = 0x300000000;
      if (*(v13 + 2))
      {
        sub_10005E60C(v12, v13);
      }

      v12 += 11;
      v13 += 88;
    }

    while (v14 + 88 != v11);
    v9 = *a1;
    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = &v9[88 * v15 - 64];
      v17 = -88 * v15;
      do
      {
        if (v16 + 2 != *v16)
        {
          free(*v16);
        }

        v16 -= 11;
        v17 += 88;
      }

      while (v17);
      v9 = *a1;
    }
  }

  v18 = v21;
  if (v9 != v6)
  {
    free(v9);
  }

  *a1 = v7;
  v19 = *(a1 + 8) + 1;
  *(a1 + 8) = v19;
  *(a1 + 12) = v18;
  return &v7[88 * v19 - 88];
}

uint64_t sub_10005ED90(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  sub_10005EE2C(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

uint64_t sub_10005EE2C(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  v4 = (*result + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *result;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 144);
      if (v20 != (v18 + 160))
      {
        free(v20);
      }

      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      if (v22)
      {
        v23 = &v21[88 * v22 - 64];
        v24 = -88 * v22;
        do
        {
          if (v23 + 2 != *v23)
          {
            free(*v23);
          }

          v23 -= 11;
          v24 += 88;
        }

        while (v24);
        v21 = *(v18 + 40);
      }

      if (v21 != (v18 + 56))
      {
        free(v21);
      }

      operator delete();
    }
  }

  while (v4 != v3);
  return result;
}

uint64_t sub_10005EFAC(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  sub_10005F048(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

uint64_t sub_10005F048(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  v4 = (*result + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *result;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 88);
      v21 = *(v18 + 96);
      if (v21)
      {
        v22 = &v20[80 * v21 - 64];
        v23 = -80 * v21;
        do
        {
          if (v22 + 2 != *v22)
          {
            free(*v22);
          }

          v22 -= 10;
          v23 += 80;
        }

        while (v23);
        v20 = *(v18 + 88);
      }

      if (v20 != (v18 + 104))
      {
        free(v20);
      }

      v24 = *(v18 + 24);
      if (v24 != (v18 + 40))
      {
        free(v24);
      }

      operator delete();
    }
  }

  while (v4 != v3);
  return result;
}

void sub_10005F1C8(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 80, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[80 * v6];
    v8 = v4 + 16;
    v9 = v5 + 16;
    do
    {
      *(v8 - 1) = *(v9 - 1);
      *v8 = v8 + 2;
      v8[1] = 0x300000000;
      if (*(v9 + 2))
      {
        sub_10005E60C(v8, v9);
      }

      v10 = v9 - 16;
      v8 += 10;
      v9 += 80;
    }

    while (v10 + 80 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[80 * v11 - 64];
      v13 = -80 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 10;
        v13 += 80;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

uint64_t *sub_10005F2F8(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, void *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void sub_10005F420(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      v23 = *(v22 + 32);
      if (v23 != (v22 + 48))
      {
        free(v23);
      }

      operator delete();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_21:
  v24 = v25;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v24;
}

uint64_t sub_10005F590(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 72 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 72 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void sub_10005F684(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 72 * v11 - 72;
    if (v12 >= 0x48)
    {
      v14 = v12 / 0x48 + 1;
      v13 = &buffer[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v15 = -4096;
        v15[9] = -4096;
        v15 += 18;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0x7FFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[9 * v11];
    do
    {
      *v13 = -4096;
      v13 += 9;
    }

    while (v13 != v17);
    return;
  }

  v10 = 9 * v3;
  sub_10005F7D0(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

void sub_10005F7D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -4096;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[9] = -4096;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15);
        LODWORD(v15) = -348639895 * ((v16 >> 47) ^ v16);
        v17 = *(a1 + 16) - 1;
        v18 = v17 & v15;
        v19 = (*a1 + 72 * v18);
        v20 = *v19;
        if (v14 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*a1 + 72 * (v25 & v17));
            v20 = *v19;
            if (v14 == *v19)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_14:
        *v19 = v14;
        v19[1] = (v19 + 3);
        v19[2] = 0x600000000;
        if (*(v4 + 4))
        {
          sub_10005F9E8((v19 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v21 = v4[1];
        if (v21 != v4 + 3)
        {
          free(v21);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t sub_10005F9E8(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 8 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 8 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 8);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 8 * v8), *a2 + 8 * v8, 8 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10005FB60(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    v7 = *a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 16);
    v2 = v7;
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 16 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 16 * v4 - 16;
}

uint64_t sub_10005FBDC(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 24 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}