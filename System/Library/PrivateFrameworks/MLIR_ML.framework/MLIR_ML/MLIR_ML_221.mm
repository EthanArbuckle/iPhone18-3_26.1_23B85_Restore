llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::SmallVector<int,12u>>(llvm::raw_ostream **a1, const void *a2, size_t a3, int **a4)
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

uint64_t llvm::SmallVectorTemplateBase<int,true>::growAndEmplaceBack<signed char const&>(uint64_t a1, char *a2)
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

llvm::raw_ostream *llvm::ScopedPrinter::printListImpl<llvm::ArrayRef<llvm::APSInt>>(llvm::raw_ostream **a1, const void *a2, size_t a3, _BYTE *a4, uint64_t a5)
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

  llvm::APInt::print(a4, a1[1], (a4[12] & 1) == 0);
  if (a5 != 1)
  {
    v15 = (a4 + 16);
    v16 = 16 * a5 - 16;
    do
    {
      v17 = a1[1];
      v18 = *(v17 + 4);
      if (*(v17 + 3) - v18 <= 1uLL)
      {
        v17 = llvm::raw_ostream::write(a1[1], ", ", 2uLL);
      }

      else
      {
        *v18 = 8236;
        *(v17 + 4) += 2;
      }

      llvm::APInt::print(v15, v17, (*(v15 + 12) & 1) == 0);
      v15 = (v15 + 16);
      v16 -= 16;
    }

    while (v16);
  }

LABEL_10:
  result = a1[1];
  v14 = *(result + 4);
  if (*(result + 3) - v14 > 1uLL)
  {
    *v14 = 2653;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream *llvm::ScopedPrinter::scopedBegin(uint64_t a1, const void *a2, size_t a3, char a4)
{
  v8 = (*(*a1 + 288))(a1);
  if (a3 <= *(v8 + 24) - *(v8 + 32))
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    v11 = v8;
    memcpy(*(v8 + 32), a2, a3);
    *(v11 + 32) += a3;
    v9 = *(a1 + 8);
    v10 = *(v9 + 4);
    if (v10 < *(v9 + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::raw_ostream::write(v8, a2, a3);
    v9 = *(a1 + 8);
    v10 = *(v9 + 4);
    if (v10 < *(v9 + 3))
    {
LABEL_3:
      *(v9 + 4) = v10 + 1;
      *v10 = 32;
      goto LABEL_7;
    }
  }

  llvm::raw_ostream::write(v9, 32);
LABEL_7:
  result = *(a1 + 8);
  v13 = *(result + 4);
  if (v13 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, a4);
    v14 = *(result + 4);
    if (v14 >= *(result + 3))
    {
      goto LABEL_9;
    }

LABEL_11:
    *(result + 4) = v14 + 1;
    *v14 = 10;
    goto LABEL_12;
  }

  *(result + 4) = v13 + 1;
  *v13 = a4;
  v14 = *(result + 4);
  if (v14 < *(result + 3))
  {
    goto LABEL_11;
  }

LABEL_9:
  result = llvm::raw_ostream::write(result, 10);
LABEL_12:
  ++*(a1 + 16);
  return result;
}

void llvm::JSONScopedPrinter::printListImpl<llvm::ArrayRef<std::string>>(llvm::StringRef,llvm::ArrayRef<std::string> const&)::{lambda(void)#1}::operator()(__int128 ***a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = (*a1)[1];
  if (v1)
  {
    v2 = **a1;
    v3 = a1[1];
    v4 = 24 * v1;
    do
    {
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
      }

      else
      {
        v5 = *v2;
        __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
        *&__p.__r_.__value_.__l.__data_ = v5;
      }

      LOWORD(v14) = 6;
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
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!llvm::json::isUTF8(p_p, size, 0))
      {
        llvm::Bisector<std::string>::serializeToFile(&__p.__r_.__value_.__r.__words[2] + 7, &__p, &__p.__r_.__value_.__l.__size_, v8, v9, v10, v11, v12);
      }

      v15 = __p;
      memset(&__p, 0, sizeof(__p));
      llvm::json::OStream::value((v3 + 16), &v14);
      llvm::json::Value::destroy(&v14);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v2 = (v2 + 24);
      v4 -= 24;
    }

    while (v4);
  }
}

uint64_t llvm::JSONScopedPrinter::printBinaryImpl(llvm::StringRef,llvm::StringRef,llvm::ArrayRef<unsigned char>,BOOL,unsigned int)::{lambda(void)#1}::operator()(unsigned __int8 ***a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = (*a1)[1];
  if (v3)
  {
    llvm::json::Value::Value(&v10, **a1, v3);
    llvm::json::OStream::attributeBegin((v2 + 16), "Value", 5uLL);
    llvm::json::OStream::value((v2 + 16), &v10);
    llvm::json::OStream::attributeEnd((v2 + 16));
    llvm::json::Value::destroy(&v10);
  }

  v4 = *a1[2];
  LOWORD(v10) = 3;
  v11 = v4;
  llvm::json::OStream::attributeBegin((v2 + 16), "Offset", 6uLL);
  llvm::json::OStream::value((v2 + 16), &v10);
  llvm::json::OStream::attributeEnd((v2 + 16));
  llvm::json::Value::destroy(&v10);
  v5 = a1[3];
  llvm::json::OStream::attributeBegin((v2 + 16), "Bytes", 5uLL);
  llvm::json::OStream::arrayBegin((v2 + 16));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    do
    {
      v8 = *v7++;
      LOWORD(v10) = 3;
      v11 = v8;
      llvm::json::OStream::value((v2 + 16), &v10);
      llvm::json::Value::destroy(&v10);
      --v6;
    }

    while (v6);
  }

  llvm::json::OStream::arrayEnd((v2 + 16));
  return llvm::json::OStream::attributeEnd((v2 + 16));
}

llvm::raw_ostream *llvm::JSONScopedPrinter::printFlagsImpl(llvm::StringRef,llvm::HexNumber,llvm::ArrayRef<llvm::FlagEntry>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}::operator()(llvm::raw_ostream *result)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = *(*result + 8);
  if (v1)
  {
    v2 = **result;
    v3 = v2 + 24 * v1;
    v4 = *(result + 1);
    do
    {
      llvm::json::OStream::objectBegin((v4 + 128));
      llvm::json::Value::Value(v6, *v2, *(v2 + 8));
      llvm::json::OStream::attributeBegin(v4 + 128, "Name", 4uLL);
      llvm::json::OStream::value((v4 + 128), v6);
      llvm::json::OStream::attributeEnd(v4 + 128);
      llvm::json::Value::destroy(v6);
      v5 = *(v2 + 16);
      LOWORD(v6[0]) = 4;
      v6[1] = v5;
      llvm::json::OStream::attributeBegin(v4 + 128, "Value", 5uLL);
      llvm::json::OStream::value((v4 + 128), v6);
      llvm::json::OStream::attributeEnd(v4 + 128);
      llvm::json::Value::destroy(v6);
      result = llvm::json::OStream::objectEnd((v4 + 128));
      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t llvm::JSONScopedPrinter::printFlagsImpl(llvm::StringRef,llvm::HexNumber,llvm::ArrayRef<llvm::HexNumber>)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a1[1];
  LOWORD(v10) = 4;
  v11 = v3;
  llvm::json::OStream::attributeBegin(v2 + 128, "Value", 5uLL);
  llvm::json::OStream::value((v2 + 128), &v10);
  llvm::json::OStream::attributeEnd(v2 + 128);
  llvm::json::Value::destroy(&v10);
  v4 = a1[2];
  llvm::json::OStream::attributeBegin(v2 + 128, "Flags", 5uLL);
  llvm::json::OStream::arrayBegin((v2 + 128));
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = *v4;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      LOWORD(v10) = 4;
      v11 = v8;
      llvm::json::OStream::value((v2 + 128), &v10);
      llvm::json::Value::destroy(&v10);
      v7 -= 8;
    }

    while (v7);
  }

  llvm::json::OStream::arrayEnd((v2 + 128));
  return llvm::json::OStream::attributeEnd(v2 + 128);
}

uint64_t llvm::JSONScopedPrinter::printNumberImpl(llvm::StringRef,llvm::StringRef,llvm::StringRef)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  llvm::json::Value::Value(v10, *a1[1], *(a1[1] + 8));
  llvm::json::OStream::attributeBegin(v2 + 128, "Name", 4uLL);
  llvm::json::OStream::value((v2 + 128), v10);
  llvm::json::OStream::attributeEnd(v2 + 128);
  llvm::json::Value::destroy(v10);
  llvm::json::OStream::attributeBegin(v2 + 128, "Value", 5uLL);
  v3 = llvm::json::OStream::rawValueBegin((v2 + 128));
  v4 = a1[2];
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v6 <= *(v3 + 24) - *(v3 + 32))
  {
    if (v6)
    {
      v7 = v3;
      v8 = *(v4 + 8);
      memcpy(*(v3 + 32), v5, v6);
      *(v7 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v3, v5, v6);
  }

  llvm::json::OStream::rawValueEnd(v2 + 128);
  return llvm::json::OStream::attributeEnd(v2 + 128);
}

double llvm::SHA1::init(llvm::SHA1 *this)
{
  *(this + 4) = xmmword_25739FDA0;
  *&result = 3285377520;
  *(this + 10) = 3285377520;
  *(this + 88) = 0;
  return result;
}

_DWORD *llvm::SHA1::hashBlock(_DWORD *this)
{
  v1 = this[16];
  v2 = this[17];
  HIDWORD(v4) = v1;
  LODWORD(v4) = v1;
  v3 = v4 >> 27;
  HIDWORD(v4) = v2;
  LODWORD(v4) = v2;
  v5 = v4 >> 2;
  v6 = this[18];
  v277 = this[19];
  v278 = this[20];
  v7 = this[1];
  v8 = v3 + v278 + *this + (v6 & v2 | v277 & ~v2) + 1518500249;
  HIDWORD(v4) = v8;
  LODWORD(v4) = v8;
  v9 = v277 + v7 + (v5 & v1 | v6 & ~v1) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v1;
  LODWORD(v4) = v1;
  v10 = v4 >> 2;
  HIDWORD(v4) = v9;
  LODWORD(v4) = v9;
  v12 = this[2];
  v11 = this[3];
  v13 = v6 + v12 + (v10 & v8 | v5 & ~v8) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v8;
  LODWORD(v4) = v8;
  v14 = v4 >> 2;
  HIDWORD(v4) = v13;
  LODWORD(v4) = v13;
  v15 = v5 + v11 + (v14 & v9 | v10 & ~v9) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v9;
  LODWORD(v4) = v9;
  v16 = v4 >> 2;
  HIDWORD(v4) = v15;
  LODWORD(v4) = v15;
  v17 = this[4];
  v18 = this[5];
  v19 = v10 + v17 + (v16 & v13 | v14 & ~v13) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v13;
  LODWORD(v4) = v13;
  v20 = v4 >> 2;
  HIDWORD(v4) = v19;
  LODWORD(v4) = v19;
  v21 = v14 + v18 + (v20 & v15 | v16 & ~v15) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v15;
  LODWORD(v4) = v15;
  v22 = v4 >> 2;
  HIDWORD(v4) = v21;
  LODWORD(v4) = v21;
  v24 = this[6];
  v23 = this[7];
  v25 = v24 + v16 + (v22 & v19 | v20 & ~v19) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v19;
  LODWORD(v4) = v19;
  v26 = v4 >> 2;
  HIDWORD(v4) = v25;
  LODWORD(v4) = v25;
  v27 = v23 + v20 + (v26 & v21 | v22 & ~v21) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v21;
  LODWORD(v4) = v21;
  v28 = v4 >> 2;
  HIDWORD(v4) = v27;
  LODWORD(v4) = v27;
  v30 = this[8];
  v29 = this[9];
  v31 = v30 + v22 + (v28 & v25 | v26 & ~v25) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v25;
  LODWORD(v4) = v25;
  v32 = v4 >> 2;
  HIDWORD(v4) = v31;
  LODWORD(v4) = v31;
  v33 = v29 + v26 + (v32 & v27 | v28 & ~v27) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v27;
  LODWORD(v4) = v27;
  v34 = v4 >> 2;
  HIDWORD(v4) = v33;
  LODWORD(v4) = v33;
  v36 = this[10];
  v35 = this[11];
  v37 = v36 + v28 + (v34 & v31 | v32 & ~v31) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v31;
  LODWORD(v4) = v31;
  v38 = v4 >> 2;
  HIDWORD(v4) = v37;
  LODWORD(v4) = v37;
  v39 = v35 + v32 + (v38 & v33 | v34 & ~v33) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v33;
  LODWORD(v4) = v33;
  v40 = v4 >> 2;
  HIDWORD(v4) = v39;
  LODWORD(v4) = v39;
  v42 = this[12];
  v41 = this[13];
  v43 = v42 + v34 + (v40 & v37 | v38 & ~v37) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v37;
  LODWORD(v4) = v37;
  v44 = v4 >> 2;
  HIDWORD(v4) = v43;
  LODWORD(v4) = v43;
  v45 = v41 + v38 + (v44 & v39 | v40 & ~v39) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v39;
  LODWORD(v4) = v39;
  v46 = v4 >> 2;
  HIDWORD(v4) = v45;
  LODWORD(v4) = v45;
  v48 = this[14];
  v47 = this[15];
  v49 = v48 + v40 + (v46 & v43 | v44 & ~v43) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v43;
  LODWORD(v4) = v43;
  v50 = v4 >> 2;
  HIDWORD(v4) = v49;
  LODWORD(v4) = v49;
  v51 = v47 + v44 + (v50 & v45 | v46 & ~v45) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v45;
  LODWORD(v4) = v45;
  v52 = v4 >> 2;
  HIDWORD(v4) = v12 ^ *this ^ v30 ^ v41;
  LODWORD(v4) = HIDWORD(v4);
  v53 = v4 >> 31;
  HIDWORD(v4) = v51;
  LODWORD(v4) = v51;
  v54 = v53 + v46 + (v52 & v49 | v50 & ~v49) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v49;
  LODWORD(v4) = v49;
  v55 = v4 >> 2;
  HIDWORD(v4) = v11 ^ v7 ^ v29 ^ v48;
  LODWORD(v4) = HIDWORD(v4);
  v56 = v4 >> 31;
  HIDWORD(v4) = v54;
  LODWORD(v4) = v54;
  v57 = v4 >> 27;
  HIDWORD(v4) = v51;
  LODWORD(v4) = v51;
  v58 = v4 >> 2;
  v59 = v56 + v50 + (v55 & v51 | v52 & ~v51) + 1518500249 + v57;
  HIDWORD(v4) = v17 ^ v12 ^ v36 ^ v47;
  LODWORD(v4) = HIDWORD(v4);
  v60 = v4 >> 31;
  HIDWORD(v4) = v59;
  LODWORD(v4) = v59;
  v61 = v60 + v52 + (v58 & v54 | v55 & ~v54) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v54;
  LODWORD(v4) = v54;
  v62 = v4 >> 2;
  HIDWORD(v4) = v18 ^ v11 ^ v35 ^ v53;
  LODWORD(v4) = HIDWORD(v4);
  v63 = v4 >> 31;
  HIDWORD(v4) = v61;
  LODWORD(v4) = v61;
  v64 = v63 + v55 + (v62 & v59 | v58 & ~v59) + 1518500249 + (v4 >> 27);
  HIDWORD(v4) = v59;
  LODWORD(v4) = v59;
  v65 = v4 >> 2;
  HIDWORD(v4) = v24 ^ v17 ^ v42 ^ v56;
  LODWORD(v4) = HIDWORD(v4);
  v66 = v4 >> 31;
  HIDWORD(v4) = v64;
  LODWORD(v4) = v64;
  v67 = v4 >> 27;
  v68 = v66 + v58 + (v65 ^ v62 ^ v61) + 1859775393;
  HIDWORD(v4) = v61;
  LODWORD(v4) = v61;
  v69 = v4 >> 2;
  v70 = v68 + v67;
  HIDWORD(v4) = v23 ^ v18 ^ v41 ^ v60;
  LODWORD(v4) = HIDWORD(v4);
  v71 = v4 >> 31;
  HIDWORD(v4) = v70;
  LODWORD(v4) = v70;
  v72 = v71 + v62 + (v69 ^ v65 ^ v64) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v64;
  LODWORD(v4) = v64;
  v73 = v4 >> 2;
  HIDWORD(v4) = v30 ^ v24 ^ v48 ^ v63;
  LODWORD(v4) = HIDWORD(v4);
  v74 = v4 >> 31;
  HIDWORD(v4) = v72;
  LODWORD(v4) = v72;
  v75 = v4 >> 27;
  v76 = v74 + v65 + (v73 ^ v69 ^ v70) + 1859775393;
  HIDWORD(v4) = v70;
  LODWORD(v4) = v70;
  v77 = v4 >> 2;
  v78 = v76 + v75;
  HIDWORD(v4) = v29 ^ v23 ^ v47 ^ v66;
  LODWORD(v4) = HIDWORD(v4);
  v79 = v4 >> 31;
  HIDWORD(v4) = v78;
  LODWORD(v4) = v78;
  v80 = v79 + v69 + (v77 ^ v73 ^ v72) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v72;
  LODWORD(v4) = v72;
  v81 = v4 >> 2;
  HIDWORD(v4) = v36 ^ v30 ^ v53 ^ v71;
  LODWORD(v4) = HIDWORD(v4);
  v82 = v4 >> 31;
  HIDWORD(v4) = v80;
  LODWORD(v4) = v80;
  v83 = v4 >> 27;
  v84 = v82 + v73 + (v81 ^ v77 ^ v78) + 1859775393;
  HIDWORD(v4) = v78;
  LODWORD(v4) = v78;
  v85 = v4 >> 2;
  v86 = v84 + v83;
  HIDWORD(v4) = v35 ^ v29 ^ v56 ^ v74;
  LODWORD(v4) = HIDWORD(v4);
  v87 = v4 >> 31;
  HIDWORD(v4) = v86;
  LODWORD(v4) = v86;
  v88 = v87 + v77 + (v85 ^ v81 ^ v80) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v80;
  LODWORD(v4) = v80;
  v89 = v4 >> 2;
  HIDWORD(v4) = v42 ^ v36 ^ v60 ^ v79;
  LODWORD(v4) = HIDWORD(v4);
  v90 = v4 >> 31;
  HIDWORD(v4) = v88;
  LODWORD(v4) = v88;
  v91 = v4 >> 27;
  v92 = v90 + v81 + (v89 ^ v85 ^ v86) + 1859775393;
  HIDWORD(v4) = v86;
  LODWORD(v4) = v86;
  v93 = v4 >> 2;
  v94 = v92 + v91;
  HIDWORD(v4) = v41 ^ v35 ^ v63 ^ v82;
  LODWORD(v4) = HIDWORD(v4);
  v95 = v4 >> 31;
  HIDWORD(v4) = v94;
  LODWORD(v4) = v94;
  v96 = v95 + v85 + (v93 ^ v89 ^ v88) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v88;
  LODWORD(v4) = v88;
  v97 = v4 >> 2;
  HIDWORD(v4) = v48 ^ v42 ^ v66 ^ v87;
  LODWORD(v4) = HIDWORD(v4);
  v98 = v4 >> 31;
  HIDWORD(v4) = v96;
  LODWORD(v4) = v96;
  v99 = v4 >> 27;
  v100 = v98 + v89 + (v97 ^ v93 ^ v94) + 1859775393;
  HIDWORD(v4) = v94;
  LODWORD(v4) = v94;
  v101 = v4 >> 2;
  v102 = v100 + v99;
  HIDWORD(v4) = v47 ^ v41 ^ v71 ^ v90;
  LODWORD(v4) = HIDWORD(v4);
  v103 = v4 >> 31;
  HIDWORD(v4) = v102;
  LODWORD(v4) = v102;
  v104 = v103 + v93 + (v101 ^ v97 ^ v96) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v96;
  LODWORD(v4) = v96;
  v105 = v4 >> 2;
  HIDWORD(v4) = v53 ^ v48 ^ v74 ^ v95;
  LODWORD(v4) = HIDWORD(v4);
  v106 = v4 >> 31;
  HIDWORD(v4) = v104;
  LODWORD(v4) = v104;
  v107 = v4 >> 27;
  v108 = v106 + v97 + (v105 ^ v101 ^ v102) + 1859775393;
  HIDWORD(v4) = v102;
  LODWORD(v4) = v102;
  v109 = v4 >> 2;
  v110 = v108 + v107;
  HIDWORD(v4) = v56 ^ v47 ^ v79 ^ v98;
  LODWORD(v4) = HIDWORD(v4);
  v111 = v4 >> 31;
  HIDWORD(v4) = v110;
  LODWORD(v4) = v110;
  v112 = v111 + v101 + (v109 ^ v105 ^ v104) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v104;
  LODWORD(v4) = v104;
  v113 = v4 >> 2;
  HIDWORD(v4) = v60 ^ v53 ^ v82 ^ v103;
  LODWORD(v4) = HIDWORD(v4);
  v114 = v4 >> 31;
  HIDWORD(v4) = v112;
  LODWORD(v4) = v112;
  v115 = v4 >> 27;
  v116 = v114 + v105 + (v113 ^ v109 ^ v110) + 1859775393;
  HIDWORD(v4) = v110;
  LODWORD(v4) = v110;
  v117 = v4 >> 2;
  v118 = v116 + v115;
  HIDWORD(v4) = v63 ^ v56 ^ v87 ^ v106;
  LODWORD(v4) = HIDWORD(v4);
  v119 = v4 >> 31;
  HIDWORD(v4) = v118;
  LODWORD(v4) = v118;
  v120 = v119 + v109 + (v117 ^ v113 ^ v112) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v112;
  LODWORD(v4) = v112;
  v121 = v4 >> 2;
  HIDWORD(v4) = v66 ^ v60 ^ v90 ^ v111;
  LODWORD(v4) = HIDWORD(v4);
  v122 = v4 >> 31;
  HIDWORD(v4) = v120;
  LODWORD(v4) = v120;
  v123 = v4 >> 27;
  HIDWORD(v4) = v118;
  LODWORD(v4) = v118;
  v124 = v4 >> 2;
  v125 = v122 + v113 + (v121 ^ v117 ^ v118) + 1859775393 + v123;
  HIDWORD(v4) = v71 ^ v63 ^ v95 ^ v114;
  LODWORD(v4) = HIDWORD(v4);
  v126 = v4 >> 31;
  HIDWORD(v4) = v125;
  LODWORD(v4) = v125;
  v127 = v126 + v117 + (v124 ^ v121 ^ v120) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v120;
  LODWORD(v4) = v120;
  v128 = v4 >> 2;
  HIDWORD(v4) = v74 ^ v66 ^ v98 ^ v119;
  LODWORD(v4) = HIDWORD(v4);
  v129 = v4 >> 31;
  HIDWORD(v4) = v127;
  LODWORD(v4) = v127;
  v130 = v4 >> 27;
  v131 = v129 + v121 + (v128 ^ v124 ^ v125) + 1859775393;
  HIDWORD(v4) = v125;
  LODWORD(v4) = v125;
  v132 = v4 >> 2;
  v133 = v131 + v130;
  HIDWORD(v4) = v79 ^ v71 ^ v103 ^ v122;
  LODWORD(v4) = HIDWORD(v4);
  v134 = v4 >> 31;
  HIDWORD(v4) = v133;
  LODWORD(v4) = v133;
  v135 = v134 + v124 + (v132 ^ v128 ^ v127) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v127;
  LODWORD(v4) = v127;
  v136 = v4 >> 2;
  HIDWORD(v4) = v82 ^ v74 ^ v106 ^ v126;
  LODWORD(v4) = HIDWORD(v4);
  v137 = v4 >> 31;
  HIDWORD(v4) = v135;
  LODWORD(v4) = v135;
  v138 = v4 >> 27;
  v139 = v137 + v128 + (v136 ^ v132 ^ v133) + 1859775393;
  HIDWORD(v4) = v133;
  LODWORD(v4) = v133;
  v140 = v4 >> 2;
  v141 = v139 + v138;
  HIDWORD(v4) = v87 ^ v79 ^ v111 ^ v129;
  LODWORD(v4) = HIDWORD(v4);
  v142 = v4 >> 31;
  HIDWORD(v4) = v141;
  LODWORD(v4) = v141;
  v143 = v142 + v132 + (v140 ^ v136 ^ v135) + 1859775393 + (v4 >> 27);
  HIDWORD(v4) = v135;
  LODWORD(v4) = v135;
  v144 = v4 >> 2;
  HIDWORD(v4) = v90 ^ v82 ^ v114 ^ v134;
  LODWORD(v4) = HIDWORD(v4);
  v145 = v4 >> 31;
  HIDWORD(v4) = v143;
  LODWORD(v4) = v143;
  v146 = v145 + v136 + ((v141 | v144) & v140 | v141 & v144) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v141;
  LODWORD(v4) = v141;
  v147 = v4 >> 2;
  HIDWORD(v4) = v95 ^ v87 ^ v119 ^ v137;
  LODWORD(v4) = HIDWORD(v4);
  v148 = v4 >> 31;
  HIDWORD(v4) = v146;
  LODWORD(v4) = v146;
  v149 = v148 + v140 + ((v143 | v147) & v144 | v143 & v147) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v143;
  LODWORD(v4) = v143;
  v150 = v4 >> 2;
  HIDWORD(v4) = v98 ^ v90 ^ v122 ^ v142;
  LODWORD(v4) = HIDWORD(v4);
  v151 = v4 >> 31;
  HIDWORD(v4) = v149;
  LODWORD(v4) = v149;
  v152 = v151 + v144 + ((v146 | v150) & v147 | v146 & v150) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v146;
  LODWORD(v4) = v146;
  v153 = v4 >> 2;
  HIDWORD(v4) = v103 ^ v95 ^ v126 ^ v145;
  LODWORD(v4) = HIDWORD(v4);
  v154 = v4 >> 31;
  HIDWORD(v4) = v152;
  LODWORD(v4) = v152;
  v155 = v4 >> 27;
  v156 = v154 + v147 + ((v149 | v153) & v150 | v149 & v153) - 1894007588;
  HIDWORD(v4) = v149;
  LODWORD(v4) = v149;
  v157 = v4 >> 2;
  v158 = v156 + v155;
  HIDWORD(v4) = v106 ^ v98 ^ v129 ^ v148;
  LODWORD(v4) = HIDWORD(v4);
  v159 = v4 >> 31;
  HIDWORD(v4) = v158;
  LODWORD(v4) = v158;
  v160 = v159 + v150 + ((v152 | v157) & v153 | v152 & v157) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v152;
  LODWORD(v4) = v152;
  v161 = v4 >> 2;
  HIDWORD(v4) = v111 ^ v103 ^ v134 ^ v151;
  LODWORD(v4) = HIDWORD(v4);
  v162 = v4 >> 31;
  HIDWORD(v4) = v160;
  LODWORD(v4) = v160;
  v163 = v162 + v153 + ((v158 | v161) & v157 | v158 & v161) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v158;
  LODWORD(v4) = v158;
  v164 = v4 >> 2;
  HIDWORD(v4) = v114 ^ v106 ^ v137 ^ v154;
  LODWORD(v4) = HIDWORD(v4);
  v165 = v4 >> 31;
  HIDWORD(v4) = v163;
  LODWORD(v4) = v163;
  v166 = v165 + v157 + ((v160 | v164) & v161 | v160 & v164) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v160;
  LODWORD(v4) = v160;
  v167 = v4 >> 2;
  HIDWORD(v4) = v119 ^ v111 ^ v142 ^ v159;
  LODWORD(v4) = HIDWORD(v4);
  v168 = v4 >> 31;
  HIDWORD(v4) = v166;
  LODWORD(v4) = v166;
  v169 = v168 + v161 + ((v163 | v167) & v164 | v163 & v167) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v163;
  LODWORD(v4) = v163;
  v170 = v4 >> 2;
  HIDWORD(v4) = v122 ^ v114 ^ v145 ^ v162;
  LODWORD(v4) = HIDWORD(v4);
  v171 = v4 >> 31;
  HIDWORD(v4) = v169;
  LODWORD(v4) = v169;
  v172 = v171 + v164 + ((v166 | v170) & v167 | v166 & v170) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v166;
  LODWORD(v4) = v166;
  v173 = v4 >> 2;
  HIDWORD(v4) = v126 ^ v119 ^ v148 ^ v165;
  LODWORD(v4) = HIDWORD(v4);
  v174 = v4 >> 31;
  HIDWORD(v4) = v172;
  LODWORD(v4) = v172;
  v175 = v4 >> 27;
  v176 = v174 + v167 + ((v169 | v173) & v170 | v169 & v173) - 1894007588;
  HIDWORD(v4) = v169;
  LODWORD(v4) = v169;
  v177 = v4 >> 2;
  v178 = v176 + v175;
  HIDWORD(v4) = v129 ^ v122 ^ v151 ^ v168;
  LODWORD(v4) = HIDWORD(v4);
  v179 = v4 >> 31;
  HIDWORD(v4) = v178;
  LODWORD(v4) = v178;
  v180 = v179 + v170 + ((v172 | v177) & v173 | v172 & v177) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v172;
  LODWORD(v4) = v172;
  v181 = v4 >> 2;
  HIDWORD(v4) = v134 ^ v126 ^ v154 ^ v171;
  LODWORD(v4) = HIDWORD(v4);
  v182 = v4 >> 31;
  HIDWORD(v4) = v180;
  LODWORD(v4) = v180;
  v183 = v182 + v173 + ((v178 | v181) & v177 | v178 & v181) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v178;
  LODWORD(v4) = v178;
  v184 = v4 >> 2;
  HIDWORD(v4) = v137 ^ v129 ^ v159 ^ v174;
  LODWORD(v4) = HIDWORD(v4);
  v185 = v4 >> 31;
  HIDWORD(v4) = v183;
  LODWORD(v4) = v183;
  v186 = v185 + v177 + ((v180 | v184) & v181 | v180 & v184) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v180;
  LODWORD(v4) = v180;
  v187 = v4 >> 2;
  HIDWORD(v4) = v142 ^ v134 ^ v162 ^ v179;
  LODWORD(v4) = HIDWORD(v4);
  v188 = v4 >> 31;
  HIDWORD(v4) = v186;
  LODWORD(v4) = v186;
  v189 = v188 + v181 + ((v183 | v187) & v184 | v183 & v187) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v183;
  LODWORD(v4) = v183;
  v190 = v4 >> 2;
  HIDWORD(v4) = v145 ^ v137 ^ v165 ^ v182;
  LODWORD(v4) = HIDWORD(v4);
  v191 = v4 >> 31;
  HIDWORD(v4) = v189;
  LODWORD(v4) = v189;
  v192 = v191 + v184 + ((v186 | v190) & v187 | v186 & v190) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v186;
  LODWORD(v4) = v186;
  v193 = v4 >> 2;
  HIDWORD(v4) = v148 ^ v142 ^ v168 ^ v185;
  LODWORD(v4) = HIDWORD(v4);
  v194 = v4 >> 31;
  HIDWORD(v4) = v192;
  LODWORD(v4) = v192;
  v195 = v4 >> 27;
  v196 = v194 + v187 + ((v189 | v193) & v190 | v189 & v193) - 1894007588;
  HIDWORD(v4) = v189;
  LODWORD(v4) = v189;
  v197 = v4 >> 2;
  v198 = v196 + v195;
  HIDWORD(v4) = v151 ^ v145 ^ v171 ^ v188;
  LODWORD(v4) = HIDWORD(v4);
  v199 = v4 >> 31;
  HIDWORD(v4) = v198;
  LODWORD(v4) = v198;
  v200 = v199 + v190 + ((v192 | v197) & v193 | v192 & v197) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v192;
  LODWORD(v4) = v192;
  v201 = v4 >> 2;
  HIDWORD(v4) = v154 ^ v148 ^ v174 ^ v191;
  LODWORD(v4) = HIDWORD(v4);
  v202 = v4 >> 31;
  HIDWORD(v4) = v200;
  LODWORD(v4) = v200;
  v203 = v202 + v193 + ((v198 | v201) & v197 | v198 & v201) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v198;
  LODWORD(v4) = v198;
  v204 = v4 >> 2;
  HIDWORD(v4) = v159 ^ v151 ^ v179 ^ v194;
  LODWORD(v4) = HIDWORD(v4);
  v205 = v4 >> 31;
  HIDWORD(v4) = v203;
  LODWORD(v4) = v203;
  v206 = v205 + v197 + ((v200 | v204) & v201 | v200 & v204) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v200;
  LODWORD(v4) = v200;
  v207 = v4 >> 2;
  HIDWORD(v4) = v162 ^ v154 ^ v182 ^ v199;
  LODWORD(v4) = HIDWORD(v4);
  v208 = v4 >> 31;
  HIDWORD(v4) = v206;
  LODWORD(v4) = v206;
  v209 = v208 + v201 + ((v203 | v207) & v204 | v203 & v207) - 1894007588 + (v4 >> 27);
  HIDWORD(v4) = v203;
  LODWORD(v4) = v203;
  v210 = v4 >> 2;
  HIDWORD(v4) = v165 ^ v159 ^ v185 ^ v202;
  LODWORD(v4) = HIDWORD(v4);
  v211 = v4 >> 31;
  HIDWORD(v4) = v209;
  LODWORD(v4) = v209;
  v212 = v4 >> 27;
  HIDWORD(v4) = v206;
  LODWORD(v4) = v206;
  v213 = v4 >> 2;
  v214 = v211 + v204 + (v210 ^ v207 ^ v206) - 899497514 + v212;
  HIDWORD(v4) = v168 ^ v162 ^ v188 ^ v205;
  LODWORD(v4) = HIDWORD(v4);
  v215 = v4 >> 31;
  HIDWORD(v4) = v214;
  LODWORD(v4) = v214;
  v216 = v215 + v207 + (v213 ^ v210 ^ v209) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v209;
  LODWORD(v4) = v209;
  v217 = v4 >> 2;
  HIDWORD(v4) = v171 ^ v165 ^ v191 ^ v208;
  LODWORD(v4) = HIDWORD(v4);
  v218 = v4 >> 31;
  HIDWORD(v4) = v216;
  LODWORD(v4) = v216;
  v219 = v4 >> 27;
  v220 = v218 + v210 + (v217 ^ v213 ^ v214) - 899497514;
  HIDWORD(v4) = v214;
  LODWORD(v4) = v214;
  v221 = v4 >> 2;
  v222 = v220 + v219;
  HIDWORD(v4) = v174 ^ v168 ^ v194 ^ v211;
  LODWORD(v4) = HIDWORD(v4);
  v223 = v4 >> 31;
  HIDWORD(v4) = v222;
  LODWORD(v4) = v222;
  v224 = v223 + v213 + (v221 ^ v217 ^ v216) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v216;
  LODWORD(v4) = v216;
  v225 = v4 >> 2;
  HIDWORD(v4) = v179 ^ v171 ^ v199 ^ v215;
  LODWORD(v4) = HIDWORD(v4);
  v226 = v4 >> 31;
  HIDWORD(v4) = v224;
  LODWORD(v4) = v224;
  v227 = v4 >> 27;
  HIDWORD(v4) = v222;
  LODWORD(v4) = v222;
  v228 = v4 >> 2;
  v229 = v226 + v217 + (v225 ^ v221 ^ v222) - 899497514 + v227;
  HIDWORD(v4) = v182 ^ v174 ^ v202 ^ v218;
  LODWORD(v4) = HIDWORD(v4);
  v230 = v4 >> 31;
  *this = v226;
  this[1] = v230;
  HIDWORD(v4) = v229;
  LODWORD(v4) = v229;
  v231 = v230 + v221 + (v228 ^ v225 ^ v224) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v224;
  LODWORD(v4) = v224;
  v232 = v4 >> 2;
  HIDWORD(v4) = v185 ^ v179 ^ v205 ^ v223;
  LODWORD(v4) = HIDWORD(v4);
  v233 = v4 >> 31;
  HIDWORD(v4) = v231;
  LODWORD(v4) = v231;
  v234 = v233 + v225 + (v232 ^ v228 ^ v229) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v229;
  LODWORD(v4) = v229;
  v235 = v4 >> 2;
  HIDWORD(v4) = v188 ^ v182 ^ v208 ^ v226;
  LODWORD(v4) = HIDWORD(v4);
  v236 = v4 >> 31;
  this[2] = v233;
  this[3] = v236;
  HIDWORD(v4) = v234;
  LODWORD(v4) = v234;
  v237 = v236 + v228 + (v235 ^ v232 ^ v231) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v231;
  LODWORD(v4) = v231;
  v238 = v4 >> 2;
  HIDWORD(v4) = v191 ^ v185 ^ v211 ^ v230;
  LODWORD(v4) = HIDWORD(v4);
  v239 = v4 >> 31;
  HIDWORD(v4) = v237;
  LODWORD(v4) = v237;
  v240 = v239 + v232 + (v238 ^ v235 ^ v234) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v234;
  LODWORD(v4) = v234;
  v241 = v4 >> 2;
  HIDWORD(v4) = v194 ^ v188 ^ v215 ^ v233;
  LODWORD(v4) = HIDWORD(v4);
  v242 = v4 >> 31;
  this[4] = v239;
  this[5] = v242;
  HIDWORD(v4) = v240;
  LODWORD(v4) = v240;
  v243 = v242 + v235 + (v241 ^ v238 ^ v237) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v237;
  LODWORD(v4) = v237;
  v244 = v4 >> 2;
  HIDWORD(v4) = v199 ^ v191 ^ v218 ^ v236;
  LODWORD(v4) = HIDWORD(v4);
  v245 = v4 >> 31;
  HIDWORD(v4) = v243;
  LODWORD(v4) = v243;
  v246 = v4 >> 27;
  v247 = v245 + v238 + (v244 ^ v241 ^ v240) - 899497514;
  HIDWORD(v4) = v240;
  LODWORD(v4) = v240;
  v248 = v4 >> 2;
  v249 = v247 + v246;
  HIDWORD(v4) = v202 ^ v194 ^ v223 ^ v239;
  LODWORD(v4) = HIDWORD(v4);
  v250 = v4 >> 31;
  this[6] = v245;
  this[7] = v250;
  HIDWORD(v4) = v249;
  LODWORD(v4) = v249;
  v251 = v250 + v241 + (v248 ^ v244 ^ v243) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v243;
  LODWORD(v4) = v243;
  v252 = v4 >> 2;
  HIDWORD(v4) = v205 ^ v199 ^ v226 ^ v242;
  LODWORD(v4) = HIDWORD(v4);
  v253 = v4 >> 31;
  HIDWORD(v4) = v251;
  LODWORD(v4) = v251;
  v254 = v253 + v244 + (v252 ^ v248 ^ v249) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v249;
  LODWORD(v4) = v249;
  v255 = v4 >> 2;
  HIDWORD(v4) = v208 ^ v202 ^ v230 ^ v245;
  LODWORD(v4) = HIDWORD(v4);
  v256 = v4 >> 31;
  this[8] = v253;
  this[9] = v256;
  HIDWORD(v4) = v254;
  LODWORD(v4) = v254;
  v257 = v256 + v248 + (v255 ^ v252 ^ v251) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v251;
  LODWORD(v4) = v251;
  v258 = v4 >> 2;
  HIDWORD(v4) = v211 ^ v205 ^ v233 ^ v250;
  LODWORD(v4) = HIDWORD(v4);
  v259 = v4 >> 31;
  HIDWORD(v4) = v257;
  LODWORD(v4) = v257;
  v260 = v259 + v252 + (v258 ^ v255 ^ v254) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v254;
  LODWORD(v4) = v254;
  v261 = v4 >> 2;
  HIDWORD(v4) = v215 ^ v208 ^ v236 ^ v253;
  LODWORD(v4) = HIDWORD(v4);
  v262 = v4 >> 31;
  this[10] = v259;
  this[11] = v262;
  HIDWORD(v4) = v260;
  LODWORD(v4) = v260;
  v263 = v262 + v255 + (v261 ^ v258 ^ v257) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v257;
  LODWORD(v4) = v257;
  v264 = v4 >> 2;
  HIDWORD(v4) = v218 ^ v211 ^ v239 ^ v256;
  LODWORD(v4) = HIDWORD(v4);
  v265 = v4 >> 31;
  HIDWORD(v4) = v263;
  LODWORD(v4) = v263;
  v266 = v4 >> 27;
  v267 = v265 + v258 + (v264 ^ v261 ^ v260) - 899497514;
  HIDWORD(v4) = v260;
  LODWORD(v4) = v260;
  v268 = v4 >> 2;
  v269 = v267 + v266;
  HIDWORD(v4) = v223 ^ v215 ^ v242 ^ v259;
  LODWORD(v4) = HIDWORD(v4);
  v270 = v4 >> 31;
  this[12] = v265;
  this[13] = v270;
  HIDWORD(v4) = v269;
  LODWORD(v4) = v269;
  v271 = v270 + v261 + (v268 ^ v264 ^ v263) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v263;
  LODWORD(v4) = v263;
  v272 = v4 >> 2;
  HIDWORD(v4) = v226 ^ v218 ^ v245 ^ v262;
  LODWORD(v4) = HIDWORD(v4);
  v273 = v4 >> 31;
  HIDWORD(v4) = v271;
  LODWORD(v4) = v271;
  v274 = v273 + v264 + (v272 ^ v268 ^ v269) - 899497514 + (v4 >> 27);
  HIDWORD(v4) = v269;
  LODWORD(v4) = v269;
  v275 = v4 >> 2;
  HIDWORD(v4) = v230 ^ v223 ^ v250 ^ v265;
  LODWORD(v4) = HIDWORD(v4);
  v276 = v4 >> 31;
  this[14] = v273;
  this[15] = v276;
  HIDWORD(v4) = v274;
  LODWORD(v4) = v274;
  this[16] = v1 + v276 + v268 + (v275 ^ v272 ^ v271) - 899497514 + (v4 >> 27);
  this[17] = v274 + v2;
  HIDWORD(v4) = v271;
  LODWORD(v4) = v271;
  this[18] = (v4 >> 2) + v6;
  this[19] = v275 + v277;
  this[20] = v272 + v278;
  return this;
}

_DWORD *llvm::SHA1::addUncounted(_DWORD *this, char a2)
{
  *(this + (*(this + 88) ^ 3)) = a2;
  v2 = (*(this + 88))++ + 1;
  if (v2 == 64)
  {
    v3 = this;
    this = llvm::SHA1::hashBlock(this);
    *(v3 + 88) = 0;
  }

  return this;
}

_DWORD *llvm::SHA1::writebyte(_DWORD *this, char a2)
{
  ++this[21];
  *(this + (*(this + 88) ^ 3)) = a2;
  v2 = (*(this + 88))++ + 1;
  if (v2 == 64)
  {
    v3 = this;
    this = llvm::SHA1::hashBlock(this);
    *(v3 + 88) = 0;
  }

  return this;
}

_DWORD *llvm::SHA1::update(_DWORD *this, unsigned int *a2, unint64_t a3)
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
        v10 = *v8;
        v8 = (v8 + 1);
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
    v4 = (v4 + v7);
  }

  if (v3 >= 0x40)
  {
    do
    {
      *v5 = bswap32(*v4);
      *(v5 + 4) = bswap32(v4[1]);
      *(v5 + 8) = bswap32(v4[2]);
      *(v5 + 12) = bswap32(v4[3]);
      *(v5 + 16) = bswap32(v4[4]);
      *(v5 + 20) = bswap32(v4[5]);
      *(v5 + 24) = bswap32(v4[6]);
      *(v5 + 28) = bswap32(v4[7]);
      *(v5 + 32) = bswap32(v4[8]);
      *(v5 + 36) = bswap32(v4[9]);
      *(v5 + 40) = bswap32(v4[10]);
      *(v5 + 44) = bswap32(v4[11]);
      *(v5 + 48) = bswap32(v4[12]);
      *(v5 + 52) = bswap32(v4[13]);
      *(v5 + 56) = bswap32(v4[14]);
      *(v5 + 60) = bswap32(v4[15]);
      this = llvm::SHA1::hashBlock(v5);
      v3 -= 64;
      v4 += 16;
    }

    while (v3 > 0x3F);
  }

  if (v3)
  {
    LOBYTE(v11) = *(v5 + 88);
    do
    {
      *(v5 + (v11 ^ 3)) = *v4;
      v11 = (*(v5 + 88))++ + 1;
      if (v11 == 64)
      {
        this = llvm::SHA1::hashBlock(v5);
        LOBYTE(v11) = 0;
        *(v5 + 88) = 0;
      }

      v4 = (v4 + 1);
      --v3;
    }

    while (v3);
  }

  return this;
}

_DWORD *llvm::SHA1::pad(_DWORD *this)
{
  v1 = this;
  *(this + (*(this + 88) ^ 3)) = 0x80;
  v2 = *(this + 88);
  LOBYTE(v3) = v2 + 1;
  *(this + 88) = v2 + 1;
  if (v2 != 55)
  {
    if (v2 == 63)
    {
      this = llvm::SHA1::hashBlock(this);
      LOBYTE(v3) = 0;
      *(v1 + 88) = 0;
    }

    do
    {
      *(v1 + (v3 ^ 3)) = 0;
      v3 = (*(v1 + 88))++ + 1;
      if (v3 == 64)
      {
        this = llvm::SHA1::hashBlock(v1);
        LOBYTE(v3) = 0;
        *(v1 + 88) = 0;
      }
    }

    while (v3 != 56);
  }

  *(v1 + 59) = 0;
  *(v1 + 57) = 0;
  *(v1 + 56) = *(v1 + 84) >> 29;
  *(v1 + 88) = 60;
  *(v1 + 63) = *(v1 + 84) >> 21;
  v4 = (*(v1 + 88))++ + 1;
  if (v4 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    LOBYTE(v4) = 0;
    *(v1 + 88) = 0;
  }

  *(v1 + (v4 ^ 3)) = *(v1 + 84) >> 13;
  v5 = (*(v1 + 88))++ + 1;
  if (v5 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    LOBYTE(v5) = 0;
    *(v1 + 88) = 0;
  }

  *(v1 + (v5 ^ 3)) = *(v1 + 84) >> 5;
  v6 = (*(v1 + 88))++ + 1;
  if (v6 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    LOBYTE(v6) = 0;
    *(v1 + 88) = 0;
  }

  *(v1 + (v6 ^ 3)) = 8 * *(v1 + 84);
  v7 = (*(v1 + 88))++ + 1;
  if (v7 == 64)
  {
    this = llvm::SHA1::hashBlock(v1);
    *(v1 + 88) = 0;
  }

  return this;
}

_DWORD *llvm::SHA1::final(_DWORD *a1, _DWORD *a2)
{
  result = llvm::SHA1::pad(a1);
  *a2 = bswap32(a1[16]);
  a2[1] = bswap32(a1[17]);
  a2[2] = bswap32(a1[18]);
  a2[3] = bswap32(a1[19]);
  a2[4] = bswap32(a1[20]);
  return result;
}

int8x16_t llvm::SHA1::final@<Q0>(int8x16_t *this@<X0>, int8x16_t *a2@<X8>)
{
  llvm::SHA1::pad(this);
  v4 = bswap32(this[5].u32[0]);
  result = vrev32q_s8(this[4]);
  *a2 = result;
  a2[1].i32[0] = v4;
  return result;
}

__n128 llvm::SHA1::result@<Q0>(llvm::SHA1 *this@<X0>, int8x16_t *a2@<X8>)
{
  v8 = *(this + 2);
  v9 = *(this + 3);
  *v10 = *(this + 4);
  *&v10[12] = *(this + 76);
  v6 = *this;
  v7 = *(this + 1);
  llvm::SHA1::pad(this);
  v4 = bswap32(*(this + 20));
  *a2 = vrev32q_s8(*(this + 4));
  a2[1].i32[0] = v4;
  *(this + 2) = v8;
  *(this + 3) = v9;
  *(this + 4) = *v10;
  *(this + 76) = *&v10[12];
  result = v6;
  *this = v6;
  *(this + 1) = v7;
  return result;
}

int8x16_t llvm::SHA1::hash@<Q0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v7 = xmmword_25739FDA0;
  v8 = 3285377520;
  v9 = 0;
  llvm::SHA1::update(v6, a1, a2);
  llvm::SHA1::pad(v6);
  v4 = bswap32(v8);
  result = vrev32q_s8(v7);
  *a3 = result;
  a3[1].i32[0] = v4;
  return result;
}

void llvm::SHA256::SHA256(llvm::SHA256 *this)
{
  operator new();
}

{
  operator new();
}

void llvm::SHA256::SHA256(llvm::SHA256 *this, const llvm::SHA256 *a2)
{
  operator new();
}

{
  operator new();
}

void llvm::SHA256::~SHA256(llvm::SHA256 *this)
{
  if (*this)
  {
    MEMORY[0x259C63180](*this, 0x1000C40ED882C02);
  }
}

{
  if (*this)
  {
    MEMORY[0x259C63180](*this, 0x1000C40ED882C02);
  }
}

__n128 llvm::SHA256::operator=(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v5 = *(*a2 + 64);
  v4 = *(*a2 + 80);
  v6 = *(*a2 + 48);
  *(v3 + 96) = *(*a2 + 96);
  *(v3 + 64) = v5;
  *(v3 + 80) = v4;
  *(v3 + 48) = v6;
  result = *v2;
  v8 = *(v2 + 32);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 32) = v8;
  *v3 = result;
  return result;
}

uint64_t llvm::SHA256::update(CC_SHA256_CTX **a1, const void *a2, CC_LONG a3)
{
  return CC_SHA256_Update(*a1, a2, a3);
}

{
  return CC_SHA256_Update(*a1, a2, a3);
}

__n128 llvm::SHA256::result@<Q0>(__n128 **this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v8 = (*this)[4];
  v9 = (*this)[5];
  v10 = (*this)[6].n128_u64[0];
  v4 = **this;
  v5 = (*this)[1];
  v6 = (*this)[2];
  v7 = (*this)[3];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  CC_SHA256_Final(a2, v2);
  v2[4] = v8;
  v2[5] = v9;
  v2[6].n128_u64[0] = v10;
  *v2 = v4;
  v2[1] = v5;
  result = v7;
  v2[2] = v6;
  v2[3] = v7;
  return result;
}

void *llvm::SignpostEmitter::SignpostEmitter(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void llvm::SignpostEmitter::~SignpostEmitter(llvm::SignpostEmitter *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    MEMORY[0x259C63180](v1, 0xC400A2AC0F1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    MEMORY[0x259C63180](v1, 0xC400A2AC0F1);
  }
}

unsigned __int8 *llvm::getSipHash_2_4_64(unsigned __int8 *result, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = a3[1];
  v5 = &result[a2 - (a2 & 7)];
  v6 = a2 & 7;
  v7 = a2 << 56;
  v8 = v4 ^ 0x7465646279746573;
  v9 = *a3 ^ 0x6C7967656E657261;
  v10 = v4 ^ 0x646F72616E646F6DLL;
  v11 = *a3 ^ 0x736F6D6570736575;
  if (v5 == result)
  {
    v5 = result;
    if ((a2 & 7u) <= 3)
    {
      goto LABEL_5;
    }

LABEL_9:
    if ((a2 & 7u) > 5)
    {
      if (v6 != 6)
      {
        v7 |= v5[6] << 48;
      }

      v7 |= v5[5] << 40;
    }

    else if (v6 == 4)
    {
      goto LABEL_18;
    }

    v7 |= v5[4] << 32;
LABEL_18:
    v7 |= v5[3] << 24;
LABEL_19:
    v7 |= v5[2] << 16;
    goto LABEL_20;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v13 = *result;
    result += 8;
    v14 = v13 ^ v8;
    v15 = v10 + v11;
    v16 = v15 ^ __ROR8__(v10, 51);
    v17 = v14 + v9;
    v18 = __ROR8__(v14, 48);
    v19 = (v17 ^ v18) + __ROR8__(v15, 32);
    v20 = v19 ^ __ROR8__(v17 ^ v18, 43);
    v21 = v17 + v16;
    v22 = v21 ^ __ROR8__(v16, 47);
    v23 = v19 + v22;
    v24 = v23 ^ __ROR8__(v22, 51);
    v25 = v20 + __ROR8__(v21, 32);
    v26 = __ROR8__(v20, 48);
    v27 = (v25 ^ v26) + __ROR8__(v23, 32);
    v8 = v27 ^ __ROR8__(v25 ^ v26, 43);
    v28 = v24 + v25;
    v10 = v28 ^ __ROR8__(v24, 47);
    v9 = __ROR8__(v28, 32);
    v11 = v27 ^ v13;
    v12 -= 8;
  }

  while (v12);
  if ((a2 & 7u) > 3)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((a2 & 7u) <= 1)
  {
    if ((a2 & 7) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v6 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v7 |= v5[1] << 8;
LABEL_21:
  v7 |= *v5;
LABEL_22:
  v29 = v7 ^ v8;
  v30 = v11 + v10;
  v31 = (v11 + v10) ^ __ROR8__(v10, 51);
  v32 = v29 + v9;
  v33 = __ROR8__(v29, 48);
  v34 = (v32 ^ v33) + __ROR8__(v30, 32);
  v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
  v36 = v32 + v31;
  v37 = v36 ^ __ROR8__(v31, 47);
  v38 = v34 + v37;
  v39 = v38 ^ __ROR8__(v37, 51);
  v40 = v35 + __ROR8__(v36, 32);
  v41 = __ROR8__(v35, 48);
  v42 = (v40 ^ v41) + __ROR8__(v38, 32);
  v43 = v42 ^ __ROR8__(v40 ^ v41, 43);
  v44 = v39 + v40;
  v45 = v44 ^ __ROR8__(v39, 47);
  v46 = (v42 ^ v7) + v45;
  v47 = v46 ^ __ROR8__(v45, 51);
  v48 = (__ROR8__(v44, 32) ^ 0xFFLL) + v43;
  v49 = __ROR8__(v43, 48);
  v50 = __ROR8__(v46, 32) + (v48 ^ v49);
  v51 = v50 ^ __ROR8__(v48 ^ v49, 43);
  v52 = v47 + v48;
  v53 = __ROR8__(v52, 32);
  v54 = v52 ^ __ROR8__(v47, 47);
  v55 = v54 + v50;
  v56 = v55 ^ __ROR8__(v54, 51);
  v57 = v53 + v51;
  v58 = (v53 + v51) ^ __ROR8__(v51, 48);
  v59 = __ROR8__(v55, 32) + v58;
  v60 = v59 ^ __ROR8__(v58, 43);
  v61 = v56 + v57;
  v62 = __ROR8__(v56, 47);
  v63 = (v61 ^ v62) + v59;
  v64 = v63 ^ __ROR8__(v61 ^ v62, 51);
  v65 = __ROR8__(v61, 32) + v60;
  v66 = v65 ^ __ROR8__(v60, 48);
  v67 = __ROR8__(v63, 32) + v66;
  v68 = v67 ^ __ROR8__(v66, 43);
  v69 = v64 + v65;
  v70 = __ROR8__(v64, 47);
  v71 = ((v69 ^ v70) + v67) ^ __ROR8__(v69 ^ v70, 51);
  v72 = __ROR8__(v69, 32) + v68;
  *a4 = __ROR8__(v71, 47) ^ __ROR8__(v72 ^ __ROR8__(v68, 48), 43) ^ __ROR8__(v71 + v72, 32) ^ (v71 + v72);
  return result;
}

unsigned __int8 *llvm::getSipHash_2_4_128(unsigned __int8 *result, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = a3[1];
  v5 = &result[a2 - (a2 & 7)];
  v6 = a2 & 7;
  v7 = a2 << 56;
  v8 = v4 ^ 0x7465646279746573;
  v9 = *a3 ^ 0x6C7967656E657261;
  v10 = *a3 ^ 0x736F6D6570736575;
  v11 = v4 ^ 0x646F72616E646F83;
  if (v5 == result)
  {
    v5 = result;
    if ((a2 & 7u) <= 3)
    {
      goto LABEL_5;
    }

LABEL_9:
    if ((a2 & 7u) > 5)
    {
      if (v6 != 6)
      {
        v7 |= v5[6] << 48;
      }

      v7 |= v5[5] << 40;
    }

    else if (v6 == 4)
    {
      goto LABEL_18;
    }

    v7 |= v5[4] << 32;
LABEL_18:
    v7 |= v5[3] << 24;
LABEL_19:
    v7 |= v5[2] << 16;
    goto LABEL_20;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v13 = *result;
    result += 8;
    v14 = v13 ^ v8;
    v15 = v11 + v10;
    v16 = v15 ^ __ROR8__(v11, 51);
    v17 = v14 + v9;
    v18 = __ROR8__(v14, 48);
    v19 = (v17 ^ v18) + __ROR8__(v15, 32);
    v20 = v19 ^ __ROR8__(v17 ^ v18, 43);
    v21 = v17 + v16;
    v22 = v21 ^ __ROR8__(v16, 47);
    v23 = v19 + v22;
    v24 = v23 ^ __ROR8__(v22, 51);
    v25 = v20 + __ROR8__(v21, 32);
    v26 = __ROR8__(v20, 48);
    v27 = (v25 ^ v26) + __ROR8__(v23, 32);
    v8 = v27 ^ __ROR8__(v25 ^ v26, 43);
    v28 = v24 + v25;
    v11 = v28 ^ __ROR8__(v24, 47);
    v9 = __ROR8__(v28, 32);
    v10 = v27 ^ v13;
    v12 -= 8;
  }

  while (v12);
  if ((a2 & 7u) > 3)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((a2 & 7u) <= 1)
  {
    if ((a2 & 7) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v6 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v7 |= v5[1] << 8;
LABEL_21:
  v7 |= *v5;
LABEL_22:
  v29 = v7 ^ v8;
  v30 = v10 + v11;
  v31 = (v10 + v11) ^ __ROR8__(v11, 51);
  v32 = v29 + v9;
  v33 = __ROR8__(v29, 48);
  v34 = (v32 ^ v33) + __ROR8__(v30, 32);
  v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
  v36 = v32 + v31;
  v37 = v36 ^ __ROR8__(v31, 47);
  v38 = v34 + v37;
  v39 = v38 ^ __ROR8__(v37, 51);
  v40 = v35 + __ROR8__(v36, 32);
  v41 = __ROR8__(v35, 48);
  v42 = (v40 ^ v41) + __ROR8__(v38, 32);
  v43 = v42 ^ __ROR8__(v40 ^ v41, 43);
  v44 = v39 + v40;
  v45 = v44 ^ __ROR8__(v39, 47);
  v46 = (v42 ^ v7) + v45;
  v47 = v46 ^ __ROR8__(v45, 51);
  v48 = (__ROR8__(v44, 32) ^ 0xEELL) + v43;
  v49 = __ROR8__(v43, 48);
  v50 = __ROR8__(v46, 32) + (v48 ^ v49);
  v51 = v50 ^ __ROR8__(v48 ^ v49, 43);
  v52 = v47 + v48;
  v53 = v52 ^ __ROR8__(v47, 47);
  v54 = v53 + v50;
  v55 = v54 ^ __ROR8__(v53, 51);
  v56 = __ROR8__(v52, 32) + v51;
  v57 = __ROR8__(v51, 48);
  v58 = __ROR8__(v54, 32) + (v56 ^ v57);
  v59 = v58 ^ __ROR8__(v56 ^ v57, 43);
  v60 = v55 + v56;
  v61 = v60 ^ __ROR8__(v55, 47);
  v62 = v61 + v58;
  v63 = v62 ^ __ROR8__(v61, 51);
  v64 = __ROR8__(v60, 32) + v59;
  v65 = __ROR8__(v59, 48);
  v66 = __ROR8__(v62, 32) + (v64 ^ v65);
  v67 = v66 ^ __ROR8__(v64 ^ v65, 43);
  v68 = v63 + v64;
  v69 = v68 ^ __ROR8__(v63, 47);
  v70 = v69 + v66;
  v71 = v70 ^ __ROR8__(v69, 51);
  v72 = __ROR8__(v68, 32) + v67;
  v73 = __ROR8__(v67, 48);
  v74 = __ROR8__(v70, 32) + (v72 ^ v73);
  v75 = __ROR8__(v72 ^ v73, 43);
  v76 = v71 + v72;
  v77 = __ROR8__(v76, 32);
  v78 = v76 ^ __ROR8__(v71, 47);
  v79 = v75 ^ v77 ^ v78;
  v78 ^= 0xDDuLL;
  v80 = v74 ^ v75;
  v81 = v78 + v74;
  v82 = v81 ^ __ROR8__(v78, 51);
  v83 = v77 + v80;
  v84 = __ROR8__(v80, 48);
  v85 = __ROR8__(v81, 32) + (v83 ^ v84);
  v86 = v85 ^ __ROR8__(v83 ^ v84, 43);
  v87 = v82 + v83;
  v88 = v87 ^ __ROR8__(v82, 47);
  v89 = v88 + v85;
  v90 = v89 ^ __ROR8__(v88, 51);
  v91 = __ROR8__(v87, 32) + v86;
  v92 = __ROR8__(v86, 48);
  v93 = __ROR8__(v89, 32) + (v91 ^ v92);
  v94 = v93 ^ __ROR8__(v91 ^ v92, 43);
  v95 = v90 + v91;
  v96 = v95 ^ __ROR8__(v90, 47);
  v97 = v96 + v93;
  v98 = v97 ^ __ROR8__(v96, 51);
  v99 = __ROR8__(v95, 32) + v94;
  v100 = __ROR8__(v94, 48);
  v101 = __ROR8__(v97, 32) + (v99 ^ v100);
  v102 = v101 ^ __ROR8__(v99 ^ v100, 43);
  v103 = v98 + v99;
  v104 = v103 ^ __ROR8__(v98, 47);
  v105 = (v104 + v101) ^ __ROR8__(v104, 51);
  v106 = __ROR8__(v103, 32) + v102;
  *a4 = v79;
  a4[1] = __ROR8__(v105, 47) ^ __ROR8__(v106 ^ __ROR8__(v102, 48), 43) ^ __ROR8__(v105 + v106, 32) ^ (v105 + v106);
  return result;
}

uint64_t llvm::getPointerAuthStableSipHash(unsigned __int8 *a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x277D85DE8];
  llvm::getSipHash_2_4_64(a1, a2, llvm::getPointerAuthStableSipHash(llvm::StringRef)::K, v3);
  return (LOWORD(v3[0]) + (((v3[0] * 0x8000800080008001) >> 64) >> 15) + 1);
}

uint64_t llvm::getTypedMemoryDescriptorStableSipHash(unsigned __int8 *a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x277D85DE8];
  llvm::getSipHash_2_4_64(a1, a2, llvm::getTypedMemoryDescriptorStableSipHash(llvm::StringRef)::K, v3);
  return v3[0];
}

uint64_t llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(uint64_t this, uint64_t a2)
{
  *(this + 8) = 64;
  *this = a2;
  return this;
}

{
  *(this + 8) = 64;
  *this = a2;
  return this;
}

uint64_t llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(uint64_t this)
{
  *(this + 8) = 64;
  *this = 0;
  return this;
}

{
  *(this + 8) = 64;
  *this = 0;
  return this;
}

llvm::APInt *llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(llvm::APInt *this, const llvm::APInt *a2)
{
  v2 = *(a2 + 2);
  *(this + 2) = v2;
  if (v2 > 0x40)
  {
    llvm::APInt::initSlowCase(this, a2);
  }

  *this = *a2;
  return this;
}

{
  v2 = *(a2 + 2);
  *(this + 2) = v2;
  if (v2 > 0x40)
  {
    llvm::APInt::initSlowCase(this, a2);
  }

  *this = *a2;
  return this;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator=(uint64_t result, uint64_t a2)
{
  if (*(result + 8) >= 0x41u && *result)
  {
    v2 = result;
    v3 = a2;
    MEMORY[0x259C63150](*result, 0x1000C8000313F17);
    a2 = v3;
    result = v2;
  }

  *result = a2;
  *(result + 8) = 64;
  return result;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator long long(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 > 0x40)
  {
    return **a1;
  }

  if (v1)
  {
    return (*a1 << -v1) >> -v1;
  }

  return 0;
}

uint64_t llvm::detail::operator+=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  llvm::detail::SlowDynamicAPInt::operator+=(a1, &v4);
  if (v5 >= 0x41 && v4)
  {
    MEMORY[0x259C63150](v4, 0x1000C8000313F17);
  }

  return a1;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator+=(uint64_t a1, uint64_t a2)
{
  v6[0] = llvm::APInt::sadd_ov;
  v6[1] = 0;
  runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v4, &v7);
  }

  v4 = v7;
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::detail::operator-=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  llvm::detail::SlowDynamicAPInt::operator-=(a1, &v4);
  if (v5 >= 0x41 && v4)
  {
    MEMORY[0x259C63150](v4, 0x1000C8000313F17);
  }

  return a1;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator-=(uint64_t a1, uint64_t a2)
{
  v6[0] = llvm::APInt::ssub_ov;
  v6[1] = 0;
  runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v4, &v7);
  }

  v4 = v7;
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::detail::operator*=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  llvm::detail::SlowDynamicAPInt::operator*=(a1, &v4);
  if (v5 >= 0x41 && v4)
  {
    MEMORY[0x259C63150](v4, 0x1000C8000313F17);
  }

  return a1;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator*=(uint64_t a1, uint64_t a2)
{
  v6[0] = llvm::APInt::smul_ov;
  v6[1] = 0;
  runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v4, &v7);
  }

  v4 = v7;
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::detail::operator/=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  llvm::detail::SlowDynamicAPInt::operator/=(a1, &v4);
  if (v5 >= 0x41 && v4)
  {
    MEMORY[0x259C63150](v4, 0x1000C8000313F17);
  }

  return a1;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator/=(uint64_t a1, uint64_t a2)
{
  v6[0] = llvm::APInt::sdiv_ov;
  v6[1] = 0;
  runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v4, &v7);
  }

  v4 = v7;
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::detail::operator%=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  llvm::detail::SlowDynamicAPInt::operator%(a1, &v4, &v6);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  if (v5 >= 0x41 && v4)
  {
    MEMORY[0x259C63150](v4, 0x1000C8000313F17);
  }

  return a1;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator%=(uint64_t a1, uint64_t a2)
{
  llvm::detail::SlowDynamicAPInt::operator%(a1, a2, &v4);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

BOOL llvm::detail::operator==(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  result = llvm::detail::SlowDynamicAPInt::operator==(a1, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

{
  v5 = 64;
  v4 = a1;
  result = llvm::detail::SlowDynamicAPInt::operator==(&v4, a2);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

BOOL llvm::detail::SlowDynamicAPInt::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v3, &v9);
  llvm::APInt::sext(a2, v3, &v7);
  v4 = v10;
  if (v10 > 0x40)
  {
    v5 = llvm::APInt::equalSlowCase(&v9, &v7);
    if (v8 < 0x41)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = v9 == v7;
    if (v8 < 0x41)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    v4 = v10;
  }

LABEL_10:
  if (v4 >= 0x41 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  return v5;
}

BOOL llvm::detail::operator!=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  result = llvm::detail::SlowDynamicAPInt::operator!=(a1, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

{
  v5 = 64;
  v4 = a1;
  result = llvm::detail::SlowDynamicAPInt::operator!=(&v4, a2);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

BOOL llvm::detail::SlowDynamicAPInt::operator!=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v3, &v9);
  llvm::APInt::sext(a2, v3, &v7);
  v4 = v10;
  if (v10 > 0x40)
  {
    v5 = llvm::APInt::equalSlowCase(&v9, &v7);
    if (v8 < 0x41)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = v9 == v7;
    if (v8 < 0x41)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    v4 = v10;
  }

LABEL_10:
  if (v4 >= 0x41 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  return !v5;
}

BOOL llvm::detail::operator>(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  result = llvm::detail::SlowDynamicAPInt::operator>(a1, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

{
  v5 = 64;
  v4 = a1;
  result = llvm::detail::SlowDynamicAPInt::operator>(&v4, a2);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

BOOL llvm::detail::SlowDynamicAPInt::operator>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v3, &v8);
  llvm::APInt::sext(a2, v3, &v6);
  v4 = llvm::APInt::compareSigned(&v8, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x259C63150](v6, 0x1000C8000313F17);
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }

  return v4 > 0;
}

uint64_t llvm::detail::operator<(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  result = llvm::detail::SlowDynamicAPInt::operator<(a1, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

{
  v5 = 64;
  v4 = a1;
  result = llvm::detail::SlowDynamicAPInt::operator<(&v4, a2);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator<(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v3, &v8);
  llvm::APInt::sext(a2, v3, &v6);
  v4 = llvm::APInt::compareSigned(&v8, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x259C63150](v6, 0x1000C8000313F17);
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }

  return v4 >> 31;
}

BOOL llvm::detail::operator<=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  result = llvm::detail::SlowDynamicAPInt::operator<=(a1, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

{
  v5 = 64;
  v4 = a1;
  result = llvm::detail::SlowDynamicAPInt::operator<=(&v4, a2);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

BOOL llvm::detail::SlowDynamicAPInt::operator<=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v3, &v8);
  llvm::APInt::sext(a2, v3, &v6);
  v4 = llvm::APInt::compareSigned(&v8, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x259C63150](v6, 0x1000C8000313F17);
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }

  return v4 < 1;
}

BOOL llvm::detail::operator>=(uint64_t a1, uint64_t a2)
{
  v5 = 64;
  v4 = a2;
  result = llvm::detail::SlowDynamicAPInt::operator>=(a1, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

{
  v5 = 64;
  v4 = a1;
  result = llvm::detail::SlowDynamicAPInt::operator>=(&v4, a2);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      v3 = result;
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
      return v3;
    }
  }

  return result;
}

BOOL llvm::detail::SlowDynamicAPInt::operator>=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v3, &v8);
  llvm::APInt::sext(a2, v3, &v6);
  v4 = llvm::APInt::compareSigned(&v8, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x259C63150](v6, 0x1000C8000313F17);
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }

  return v4 >= 0;
}

void *llvm::detail::operator+@<X0>(uint64_t a1@<X0>, void *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a2;
  v8[0] = llvm::APInt::sadd_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(a1, &v6, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::detail::SlowDynamicAPInt::operator+@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v6[0] = llvm::APInt::sadd_ov;
  v6[1] = 0;
  result = runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  *(a3 + 2) = v8;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v7);
  }

  *a3 = v7;
  return result;
}

void *llvm::detail::operator-@<X0>(uint64_t a1@<X0>, void *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a2;
  v8[0] = llvm::APInt::ssub_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(a1, &v6, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::detail::SlowDynamicAPInt::operator-@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v6[0] = llvm::APInt::ssub_ov;
  v6[1] = 0;
  result = runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  *(a3 + 2) = v8;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v7);
  }

  *a3 = v7;
  return result;
}

void *llvm::detail::operator*@<X0>(uint64_t a1@<X0>, void *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a2;
  v8[0] = llvm::APInt::smul_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(a1, &v6, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::detail::SlowDynamicAPInt::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v6[0] = llvm::APInt::smul_ov;
  v6[1] = 0;
  result = runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  *(a3 + 2) = v8;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v7);
  }

  *a3 = v7;
  return result;
}

void *llvm::detail::operator/@<X0>(uint64_t a1@<X0>, void *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a2;
  v8[0] = llvm::APInt::sdiv_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(a1, &v6, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::detail::SlowDynamicAPInt::operator/@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v6[0] = llvm::APInt::sdiv_ov;
  v6[1] = 0;
  result = runOpWithExpandOnOverflow(a1, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v6, &v7);
  v5 = v8;
  *(a3 + 2) = v8;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v7);
  }

  *a3 = v7;
  return result;
}

void llvm::detail::operator%(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v4 = 64;
  v3 = a2;
  llvm::detail::SlowDynamicAPInt::operator%(a1, &v3, a3);
  if (v4 >= 0x41)
  {
    if (v3)
    {
      MEMORY[0x259C63150](v3, 0x1000C8000313F17);
    }
  }
}

{
  v4 = 64;
  v3 = a1;
  llvm::detail::SlowDynamicAPInt::operator%(&v3, a2, a3);
  if (v4 >= 0x41)
  {
    if (v3)
    {
      MEMORY[0x259C63150](v3, 0x1000C8000313F17);
    }
  }
}

void llvm::detail::SlowDynamicAPInt::operator%(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v5, &v9);
  llvm::APInt::sext(a2, v5, &v7);
  llvm::APInt::srem(&v9, &v7, &v11);
  v6 = v12;
  *(a3 + 2) = v12;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v11);
  }

  *a3 = v11;
  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x259C63150](v7, 0x1000C8000313F17);
  }

  if (v10 >= 0x41)
  {
    if (v9)
    {
      MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }
}

void *llvm::detail::operator+@<X0>(void *a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a1;
  v8[0] = llvm::APInt::sadd_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(&v6, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::detail::operator-@<X0>(void *a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a1;
  v8[0] = llvm::APInt::ssub_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(&v6, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::detail::operator*@<X0>(void *a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a1;
  v8[0] = llvm::APInt::smul_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(&v6, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::detail::operator/@<X0>(void *a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 64;
  v6 = a1;
  v8[0] = llvm::APInt::sdiv_ov;
  v8[1] = 0;
  result = runOpWithExpandOnOverflow(&v6, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v8, &v9);
  v5 = v10;
  *(a3 + 2) = v10;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v9);
  }

  *a3 = v9;
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *runOpWithExpandOnOverflow@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, void **, void **, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = 0;
  if (*(a1 + 8) <= *(a2 + 8))
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  llvm::APInt::sext(a1, v10, &v17);
  llvm::APInt::sext(a2, v10, &v15);
  result = a3(a4, &v17, &v15, &v19);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v19 == 1)
  {
    v12 = 2 * v10;
    llvm::APInt::sext(a1, v12, &v15);
    llvm::APInt::sext(a2, v12, &v13);
    result = (a3)(&v17, a4, &v15, &v13, &v19);
    if (*(a5 + 8) >= 0x41u)
    {
      result = *a5;
      if (*a5)
      {
        result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
      }
    }

    *a5 = v17;
    *(a5 + 8) = v18;
    v18 = 0;
    if (v14 >= 0x41)
    {
      result = v13;
      if (v13)
      {
        result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      }
    }

    if (v16 >= 0x41)
    {
      result = v15;
      if (v15)
      {
        return MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t *llvm::detail::abs@<X0>(llvm::detail *this@<X0>, llvm::APInt *a2@<X8>)
{
  v9 = 64;
  v8 = 0;
  result = llvm::detail::SlowDynamicAPInt::operator>=(this, &v8);
  if (v9 >= 0x41 && v8)
  {
    v6 = result;
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    result = v6;
  }

  if (!result)
  {
    return llvm::detail::SlowDynamicAPInt::operator-(this, a2);
  }

  v7 = *(this + 2);
  *(a2 + 2) = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, this);
  }

  *a2 = *this;
  return result;
}

uint64_t *llvm::detail::SlowDynamicAPInt::operator-@<X0>(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    if (((*(*this + 8 * ((v4 - 1) >> 6)) >> (v4 - 1)) & 1) == 0 || llvm::APInt::countTrailingZerosSlowCase(this) != v4 - 1)
    {
      v14 = v4;
      llvm::APInt::initSlowCase(&v13, this);
    }
  }

  else
  {
    v5 = *this;
    if (*this != 1 << (v4 - 1))
    {
      v14 = *(this + 2);
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
      if (!v4)
      {
        v7 = 0;
      }

      v13 = (v7 & ~v5);
      result = llvm::APInt::operator++(&v13);
      v8 = v14;
      v20 = v14;
      v9 = v13;
      v19 = v13;
      v14 = 0;
      *(a2 + 2) = v20;
      if (v8 > 0x40)
      {
        llvm::APInt::initSlowCase(a2, &v19);
      }

      *a2 = v9;
      if (v20 >= 0x41)
      {
        result = v19;
        if (v19)
        {
          result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
        }
      }

      if (v14 < 0x41)
      {
        return result;
      }

      result = v13;
      if (!v13)
      {
        return result;
      }

      return MEMORY[0x259C63150](result, 0x1000C8000313F17);
    }
  }

  llvm::APInt::sext(this, 2 * v4, &v19);
  v16 = v20;
  if (v20 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v15, &v19);
  }

  if (v20)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
  }

  else
  {
    v6 = 0;
  }

  v15 = (v6 & ~v19);
  result = llvm::APInt::operator++(&v15);
  v11 = v16;
  v18 = v16;
  v12 = v15;
  v17 = v15;
  v16 = 0;
  *(a2 + 2) = v18;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, &v17);
  }

  *a2 = v12;
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      return MEMORY[0x259C63150](result, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::detail::ceilDiv(llvm::detail *this@<X0>, const llvm::detail::SlowDynamicAPInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v19 = 64;
  v18 = -1;
  v7 = llvm::detail::SlowDynamicAPInt::operator==(a2, &v18);
  if (v19 >= 0x41 && v18)
  {
    v8 = v7;
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    v7 = v8;
  }

  if (v7)
  {
    llvm::detail::SlowDynamicAPInt::operator-(this, a3);
  }

  else
  {
    if (*(this + 2) <= *(a2 + 2))
    {
      v9 = *(a2 + 2);
    }

    else
    {
      v9 = *(this + 2);
    }

    llvm::APInt::sext(this, v9, &v16);
    llvm::APInt::sext(a2, v9, &v14);
    llvm::APIntOps::RoundingSDiv(&v16, &v14, 2, v10, v11, v12, &v18);
    v13 = v19;
    *(a3 + 2) = v19;
    if (v13 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, &v18);
    }

    *a3 = v18;
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }

    if (v17 >= 0x41)
    {
      if (v16)
      {
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }
    }
  }
}

void llvm::detail::floorDiv(llvm::detail *this@<X0>, const llvm::detail::SlowDynamicAPInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v19 = 64;
  v18 = -1;
  v7 = llvm::detail::SlowDynamicAPInt::operator==(a2, &v18);
  if (v19 >= 0x41 && v18)
  {
    v8 = v7;
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    v7 = v8;
  }

  if (v7)
  {
    llvm::detail::SlowDynamicAPInt::operator-(this, a3);
  }

  else
  {
    if (*(this + 2) <= *(a2 + 2))
    {
      v9 = *(a2 + 2);
    }

    else
    {
      v9 = *(this + 2);
    }

    llvm::APInt::sext(this, v9, &v16);
    llvm::APInt::sext(a2, v9, &v14);
    llvm::APIntOps::RoundingSDiv(&v16, &v14, 0, v10, v11, v12, &v18);
    v13 = v19;
    *(a3 + 2) = v19;
    if (v13 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, &v18);
    }

    *a3 = v18;
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }

    if (v17 >= 0x41)
    {
      if (v16)
      {
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }
    }
  }
}

void llvm::detail::mod(llvm::detail *this@<X0>, const llvm::detail::SlowDynamicAPInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  llvm::detail::SlowDynamicAPInt::operator%(this, a2, &v12);
  v16 = 64;
  v15 = 0;
  v7 = llvm::detail::SlowDynamicAPInt::operator<(&v12, &v15);
  if (v16 >= 0x41 && v15)
  {
    v8 = v7;
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    v7 = v8;
  }

  if (v7)
  {
    llvm::detail::SlowDynamicAPInt::operator%(this, a2, &v10);
    v14[0] = llvm::APInt::sadd_ov;
    v14[1] = 0;
    runOpWithExpandOnOverflow(&v10, a2, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, v14, &v15);
    v9 = v16;
    *(a3 + 2) = v16;
    if (v9 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, &v15);
    }

    *a3 = v15;
    if (v11 >= 0x41 && v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  else
  {
    llvm::detail::SlowDynamicAPInt::operator%(this, a2, a3);
  }

  if (v13 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }
}

void llvm::detail::gcd(llvm::detail *this@<X0>, const llvm::detail::SlowDynamicAPInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  if (*(this + 2) <= *(a2 + 2))
  {
    v6 = *(a2 + 2);
  }

  else
  {
    v6 = *(this + 2);
  }

  llvm::APInt::sext(this, v6, &v10);
  llvm::APInt::sext(a2, v6, &v8);
  llvm::APIntOps::GreatestCommonDivisor(&v10, &v8, &v12);
  v7 = v13;
  *(a3 + 2) = v13;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v12);
  }

  *a3 = v12;
  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }
}

void *llvm::detail::lcm@<X0>(llvm::detail *this@<X0>, const llvm::detail::SlowDynamicAPInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v24 = 64;
  v23 = 0;
  v7 = llvm::detail::SlowDynamicAPInt::operator>=(this, &v23);
  if (v24 >= 0x41 && v23)
  {
    v8 = v7;
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    v7 = v8;
  }

  if (v7)
  {
    v20 = *(this + 2);
    if (v20 > 0x40)
    {
      llvm::APInt::initSlowCase(&v19, this);
    }

    v19 = *this;
  }

  else
  {
    llvm::detail::SlowDynamicAPInt::operator-(this, &v19);
  }

  v24 = 64;
  v23 = 0;
  v9 = llvm::detail::SlowDynamicAPInt::operator>=(a2, &v23);
  if (v24 >= 0x41 && v23)
  {
    v10 = v9;
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    v9 = v10;
  }

  if (v9)
  {
    v18 = *(a2 + 2);
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(&v17, a2);
    }

    v17 = *a2;
  }

  else
  {
    llvm::detail::SlowDynamicAPInt::operator-(a2, &v17);
  }

  v21 = llvm::APInt::smul_ov;
  v22 = 0;
  runOpWithExpandOnOverflow(&v19, &v17, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, &v21, &v23);
  v16 = v24;
  if (v24 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, &v23);
  }

  v15 = v23;
  llvm::detail::gcd(&v19, &v17, &v13);
  v21 = llvm::APInt::sdiv_ov;
  v22 = 0;
  result = runOpWithExpandOnOverflow(&v15, &v13, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>, &v21, &v23);
  v12 = v24;
  *(a3 + 2) = v24;
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v23);
  }

  *a3 = v23;
  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      return MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator++(uint64_t a1)
{
  v4 = 64;
  v3 = 1;
  llvm::detail::SlowDynamicAPInt::operator+=(a1, &v3);
  if (v4 >= 0x41 && v3)
  {
    MEMORY[0x259C63150](v3, 0x1000C8000313F17);
  }

  return a1;
}

uint64_t llvm::detail::SlowDynamicAPInt::operator--(uint64_t a1)
{
  v4 = 64;
  v3 = 1;
  llvm::detail::SlowDynamicAPInt::operator-=(a1, &v3);
  if (v4 >= 0x41 && v3)
  {
    MEMORY[0x259C63150](v3, 0x1000C8000313F17);
  }

  return a1;
}

void llvm::detail::SlowDynamicAPInt::dump(llvm::detail::SlowDynamicAPInt *this)
{
  v2 = llvm::dbgs(this);

  llvm::APInt::print(this, v2, 1);
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&,BOOL &)>::callback_fn<std::__mem_fn<llvm::APInt (llvm::APInt::*)(llvm::APInt const&,BOOL &)const>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (a2 + (v5 >> 1));
  if (v5)
  {
    return (*(*v6 + v4))();
  }

  else
  {
    return v4(v6, a3, a4);
  }
}

void *llvm::SmallPtrSetImplBase::shrink_and_clear(void **this)
{
  free(this[1]);
  v2 = *(this + 5) - *(this + 6);
  v3 = 1 << (33 - __clz(v2 - 1));
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2 <= 0x10)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  *(this + 4) = v4;
  v5 = malloc_type_malloc(8 * v4, 0x3C0F72FBuLL);
  if (!v5)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  this[1] = v5;
  v6 = 8 * *(this + 4);

  return memset(v5, 255, v6);
}

const void **llvm::SmallPtrSetImplBase::insert_imp_big(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 5);
  v3 = *(this + 4);
  if (3 * v3 <= 4 * (v2 - *(this + 6)))
  {
    v14 = a2;
    if (v3 >= 0x40)
    {
      v3 *= 2;
    }

    else
    {
      v3 = 128;
    }
  }

  else
  {
    if (v3 - v2 >= v3 >> 3)
    {
      goto LABEL_3;
    }

    v14 = a2;
  }

  v15 = this;
  llvm::SmallPtrSetImplBase::Grow(this, v3);
  this = v15;
  a2 = v14;
LABEL_3:
  v4 = *(this + 4) - 1;
  v5 = *(this + 1);
  v6 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v5 + 8 * v6);
  v8 = *v7;
  if (*v7 != -1)
  {
    v9 = 0;
    v11 = 1;
    while (v8 != a2)
    {
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 + 2 == 0;
      }

      if (v12)
      {
        v9 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v4;
      v7 = (v5 + 8 * (v13 & v4));
      v8 = *v7;
      if (*v7 == -1)
      {
        goto LABEL_5;
      }
    }

    return v7;
  }

  v9 = 0;
LABEL_5:
  if (v9)
  {
    v7 = v9;
  }

  if (*v7 == a2)
  {
    return v7;
  }

  if (*v7 == -2)
  {
    --*(this + 6);
  }

  else
  {
    ++*(this + 5);
  }

  *v7 = a2;
  return v7;
}

void llvm::SmallPtrSetImplBase::Grow(llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = 16;
  if (v4 == *this)
  {
    v6 = 20;
  }

  v7 = *(this + v6);
  v8 = malloc_type_malloc(8 * a2, 0x3C0F72FBuLL);
  if (!v8 && (a2 || (v8 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *(this + 1) = v8;
  *(this + 4) = a2;
  memset(v8, 255, 8 * a2);
  if (v7)
  {
    v9 = v4;
    do
    {
      v12 = *v9;
      if (*v9 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = *(this + 4) - 1;
        v14 = *(this + 1);
        v15 = v13 & ((v12 >> 4) ^ (v12 >> 9));
        v11 = (v14 + 8 * v15);
        v16 = *v11;
        if (*v11 == -1)
        {
          v10 = 0;
LABEL_9:
          if (v10)
          {
            v11 = v10;
          }
        }

        else
        {
          v10 = 0;
          v17 = 1;
          while (v16 != v12)
          {
            if (v10)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16 == -2;
            }

            if (v18)
            {
              v10 = v11;
            }

            v19 = v15 + v17++;
            v15 = v19 & v13;
            v11 = (v14 + 8 * (v19 & v13));
            v16 = *v11;
            if (*v11 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v11 = v12;
      }

      ++v9;
    }

    while (v9 != &v4[v7]);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(this + 20) = (*(this + 5) - *(this + 6));
}

const void **llvm::SmallPtrSetImplBase::FindBucketFor(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 4) - 1;
  v3 = *(this + 1);
  v4 = ((a2 >> 4) ^ (a2 >> 9)) & v2;
  result = (v3 + 8 * v4);
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
  v2 = *(this + 4) - 1;
  v3 = *(this + 1);
  v4 = ((a2 >> 4) ^ (a2 >> 9)) & v2;
  v5 = *(v3 + 8 * v4);
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
  *this = __dst;
  v5 = *(a3 + 1);
  if (v5 == *a3)
  {
    v7 = __dst;
    *(this + 1) = __dst;
  }

  else
  {
    v6 = *(a3 + 4);
    v7 = malloc_type_malloc(8 * v6, 0x3C0F72FBuLL);
    if (!v7 && (v6 || (v7 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    *(this + 1) = v7;
    v5 = *a3;
  }

  *(this + 4) = *(a3 + 4);
  v8 = *(a3 + 1);
  v9 = v8 == v5;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  v11 = *(a3 + v10);
  if (v11)
  {
    memmove(v7, v8, 8 * v11);
  }

  *(this + 20) = *(a3 + 20);
  return this;
}

double llvm::SmallPtrSetImplBase::CopyHelper(llvm::SmallPtrSetImplBase *this, const llvm::SmallPtrSetImplBase *a2)
{
  *(this + 4) = *(a2 + 4);
  v4 = *(a2 + 1);
  v5 = 16;
  if (v4 == *a2)
  {
    v5 = 20;
  }

  v6 = *(a2 + v5);
  if (v6)
  {
    memmove(*(this + 1), v4, 8 * v6);
  }

  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

double llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(uint64_t a1, void *__dst, int a3, double *a4)
{
  *a1 = __dst;
  v5 = *a4;
  v4 = *(a4 + 1);
  if (v4 == *a4)
  {
    *(a1 + 8) = __dst;
    v6 = *(a4 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a3;
      v9 = a4;
      memmove(__dst, *(a4 + 1), 8 * v6);
      a3 = v8;
      a1 = v7;
      a4 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a4 + 1) = v5;
  }

  result = a4[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return result;
}

{
  *a1 = __dst;
  v5 = *a4;
  v4 = *(a4 + 1);
  if (v4 == *a4)
  {
    *(a1 + 8) = __dst;
    v6 = *(a4 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a3;
      v9 = a4;
      memmove(__dst, *(a4 + 1), 8 * v6);
      a3 = v8;
      a1 = v7;
      a4 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a4 + 1) = v5;
  }

  result = a4[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return result;
}

double llvm::SmallPtrSetImplBase::MoveHelper(uint64_t a1, int a2, double *a3)
{
  v4 = *a3;
  v3 = *(a3 + 1);
  if (v3 == *a3)
  {
    v5 = *a1;
    *(a1 + 8) = *a1;
    v6 = *(a3 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a2;
      v9 = a3;
      memmove(v5, *(a3 + 1), 8 * v6);
      a1 = v7;
      a2 = v8;
      a3 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v3;
    a3[1] = v4;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

double llvm::SmallPtrSetImplBase::CopyFrom(llvm::SmallPtrSetImplBase *this, const llvm::SmallPtrSetImplBase *a2)
{
  v4 = *(this + 1);
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v4 == *this)
  {
    if (v5 == v6)
    {
      v4 = *this;
    }

    else
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = malloc_type_malloc(8 * v7, 0x3C0F72FBuLL);
      if (!v4)
      {
LABEL_9:
        if (v7 || (v4 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0)
        {
          llvm::report_bad_alloc_error("Allocation failed", 1);
        }
      }
    }
  }

  else
  {
    if (v5 != v6)
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = malloc_type_realloc(v4, 8 * v7, 0xF4063A16uLL);
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    free(v4);
    v4 = *this;
  }

LABEL_14:
  *(this + 1) = v4;
LABEL_15:
  *(this + 4) = *(a2 + 4);
  v8 = *(a2 + 1);
  v9 = 16;
  if (v8 == *a2)
  {
    v9 = 20;
  }

  v10 = *(a2 + v9);
  if (v10)
  {
    memmove(v4, v8, 8 * v10);
  }

  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

double llvm::SmallPtrSetImplBase::MoveFrom(uint64_t a1, int a2, double *a3)
{
  v6 = *(a1 + 8);
  if (v6 != *a1)
  {
    free(v6);
  }

  v8 = *a3;
  v7 = *(a3 + 1);
  if (v7 == *a3)
  {
    v9 = *a1;
    *(a1 + 8) = *a1;
    v10 = *(a3 + 5);
    if (v10)
    {
      memmove(v9, *(a3 + 1), 8 * v10);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    a3[1] = v8;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

unint64_t *llvm::SmallPtrSetImplBase::swap(unint64_t *this, llvm::SmallPtrSetImplBase *a2)
{
  if (this == a2)
  {
    return this;
  }

  v2 = *this;
  v3 = this[1];
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v3 == *this)
  {
    if (v5 != v4)
    {
      v7 = *(this + 5);
      if (v7)
      {
        v8 = this;
        v9 = a2;
        memmove(*a2, v3, 8 * v7);
        this = v8;
        a2 = v9;
        v4 = *v9;
        v5 = *(v9 + 1);
      }

      v10 = *(a2 + 4);
      *(a2 + 4) = *(this + 4);
      *(this + 4) = v10;
      v11 = *(a2 + 5);
      *(a2 + 5) = *(this + 5);
      *(this + 5) = v11;
      v12 = *(a2 + 6);
      *(a2 + 6) = *(this + 6);
      *(this + 6) = v12;
      this[1] = v5;
      *(a2 + 1) = v4;
      return this;
    }

    v19 = *(a2 + 5);
    v20 = *(this + 5);
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = 8 * v21;
    if (v21)
    {
      v23 = (v21 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v23 < 9)
      {
        v24 = *this;
LABEL_27:
        v35 = (v2 + 8 * v21);
        do
        {
          v36 = *v24;
          *v24++ = *v4;
          *v4++ = v36;
        }

        while (v24 != v35);
        goto LABEL_29;
      }

      v25 = v2 >= &v4[v22 / 8] || v4 >= v2 + v22;
      v24 = *this;
      if (!v25)
      {
        goto LABEL_27;
      }

      v26 = v23 + 1;
      v27 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      v28 = &v4[v27];
      v24 = (v2 + v27 * 8);
      v29 = (v2 + 16);
      v30 = (v4 + 2);
      v31 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *(v29 - 1);
        v33 = *v29;
        v34 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v34;
        *(v30 - 1) = v32;
        *v30 = v33;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v4 = v28;
      if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    if (v19 >= v20)
    {
      v38 = 8 * v19 - v22;
      if (8 * v19 == v22)
      {
        goto LABEL_34;
      }

      v37 = *a2;
      v39 = *this;
    }

    else
    {
      v37 = *this;
      v38 = 8 * (v20 - v21);
      v39 = *a2;
    }

    v40 = a2;
    v41 = this;
    memmove((v39 + 8 * v21), (v37 + v22), v38);
    this = v41;
    a2 = v40;
    goto LABEL_34;
  }

  if (v5 != v4)
  {
    this[1] = v5;
    *(a2 + 1) = v3;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
LABEL_34:
    v42 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v42;
    v43 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v43;
    return this;
  }

  v13 = *(a2 + 5);
  if (v13)
  {
    v14 = this;
    v15 = a2;
    memmove(*this, *(a2 + 1), 8 * v13);
    this = v14;
    a2 = v15;
    v2 = *v14;
    v3 = v14[1];
  }

  v16 = *(a2 + 4);
  *(a2 + 4) = *(this + 4);
  *(this + 4) = v16;
  v17 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v17;
  v18 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v18;
  *(a2 + 1) = v3;
  this[1] = v2;
  return this;
}

uint64_t llvm::SmallVectorBase<unsigned int>::SmallVectorBase(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  return result;
}

{
  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  return result;
}

void *llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (HIDWORD(a3))
  {
    report_size_overflow(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFuLL);
  }

  v9 = 2 * v5;
  v10 = v5 < 0;
  v11 = 0xFFFFFFFFLL;
  if (!v10)
  {
    v11 = v9 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) < a3)
  {
    v11 = a3;
  }

  *a5 = v11;
  v12 = v11 * a4;
  result = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
  if (!result)
  {
    if (v12)
    {
      goto LABEL_15;
    }

    result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result != a2)
  {
    return result;
  }

  v14 = result;
  v15 = *a5 * a4;
  v16 = malloc_type_malloc(v15, 0x3C0F72FBuLL);
  if (!v16 && (v15 || (v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
LABEL_15:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v17 = v16;
  free(v14);
  return v17;
}

void llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    report_size_overflow(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFuLL);
  }

  v8 = 2 * v5;
  v9 = v5 < 0;
  v10 = 0xFFFFFFFFLL;
  if (!v9)
  {
    v10 = v8 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  v12 = *a1;
  v13 = v11 * a4;
  if (*a1 == a2)
  {
    v16 = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
    if (v16 || !v13 && (v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v15 = v16;
      if (v16 == a2)
      {
        v17 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
        if (!v17)
        {
          if (v13)
          {
            goto LABEL_30;
          }

          v17 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v17)
          {
            goto LABEL_30;
          }
        }

        v18 = v17;
        free(v15);
        v15 = v18;
      }

      memcpy(v15, *a1, *(a1 + 8) * a4);
      goto LABEL_29;
    }

LABEL_30:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v14 = malloc_type_realloc(v12, v11 * a4, 0xF4063A16uLL);
  if (!v14)
  {
    if (v13)
    {
      goto LABEL_30;
    }

    v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  if (v14 != a2)
  {
    v15 = v14;
    goto LABEL_29;
  }

  v19 = v14;
  v20 = *(a1 + 8);
  v21 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
  if (!v21)
  {
    if (v13)
    {
      goto LABEL_30;
    }

    v21 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  v15 = v21;
  if (v20)
  {
    memcpy(v21, v19, v20 * a4);
  }

  free(v19);
LABEL_29:
  *a1 = v15;
  *(a1 + 12) = v11;
}

uint64_t llvm::SmallVectorBase<unsigned int>::set_allocation_range(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 12) = a3;
  return result;
}

void *llvm::SmallVectorBase<unsigned long long>::SmallVectorBase(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

void *llvm::SmallVectorBase<unsigned long long>::mallocForGrow(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v5) | 1uLL) > a3)
  {
    v9 = 2 * v5 + 1;
  }

  else
  {
    v9 = a3;
  }

  *a5 = v9;
  v10 = v9 * a4;
  result = malloc_type_malloc(v9 * a4, 0x3C0F72FBuLL);
  if (!result)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  if (result != a2)
  {
    return result;
  }

  v12 = result;
  v13 = *a5 * a4;
  v14 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
  if (!v14 && (v13 || (v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
LABEL_13:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v15 = v14;
  free(v12);
  return v15;
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
    v13 = malloc_type_malloc(v8 * a4, 0x3C0F72FBuLL);
    if (v13 || !v10 && (v13 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v12 = v13;
      if (v13 == a2)
      {
        v14 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
        if (!v14)
        {
          if (v10)
          {
            goto LABEL_27;
          }

          v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v14)
          {
            goto LABEL_27;
          }
        }

        v15 = v14;
        free(v12);
        v12 = v15;
      }

      memcpy(v12, *a1, *(a1 + 8) * a4);
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

  if (v11 != a2)
  {
    v12 = v11;
    goto LABEL_26;
  }

  v16 = v11;
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

  v12 = v18;
  if (v17)
  {
    memcpy(v18, v16, v17 * a4);
  }

  free(v16);
LABEL_26:
  *a1 = v12;
  *(a1 + 16) = v8;
}

void *llvm::SmallVectorBase<unsigned long long>::set_allocation_range(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[2] = a3;
  return result;
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

double llvm::SourceMgr::SourceMgr(llvm::SourceMgr *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void llvm::SourceMgr::~SourceMgr(llvm::SourceMgr *this)
{
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *this;
  if (*this)
  {
    v8 = *(this + 1);
    v9 = *this;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 2);
        if (v10)
        {
          v11 = *v10;
          if (*v10)
          {
            *(v10 + 8) = v11;
            operator delete(v11);
          }

          MEMORY[0x259C63180](v10, 0x10C402FEFCB83);
          *(v8 - 2) = 0;
        }

        v13 = *(v8 - 3);
        v8 -= 3;
        v12 = v13;
        *v8 = 0;
        if (v13)
        {
          (*(*v12 + 8))(v12);
        }
      }

      while (v8 != v7);
      v9 = *this;
    }

    *(this + 1) = v7;
    operator delete(v9);
  }
}

__n128 llvm::SourceMgr::SourceMgr(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  *a1 = *a2;
  a1[1].n128_u64[0] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  *(a1 + 24) = *(a2 + 24);
  a1[2].n128_u64[1] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = *(a2 + 48);
  a1[3] = result;
  a1[4].n128_u64[0] = *(a2 + 64);
  *(a2 + 64) = 0;
  return result;
}

{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  *a1 = *a2;
  a1[1].n128_u64[0] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  *(a1 + 24) = *(a2 + 24);
  a1[2].n128_u64[1] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = *(a2 + 48);
  a1[3] = result;
  a1[4].n128_u64[0] = *(a2 + 64);
  *(a2 + 64) = 0;
  return result;
}

uint64_t llvm::SourceMgr::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<llvm::SourceMgr::SrcBuffer>::__move_assign(a1, a2);
  v4 = (a1 + 24);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *v4;
    }

    *(a1 + 32) = v5;
    operator delete(v7);
    *v4 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a2 + 64) = 0;
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

double llvm::SourceMgr::SourceMgr(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = *a2;
  *a2 = 0;
  return result;
}

{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = *a2;
  *a2 = 0;
  return result;
}

atomic_uint *llvm::SourceMgr::setFileSystem(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 64);
  *(a1 + 64) = v3;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t llvm::SourceMgr::AddIncludeFile(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::OpenIncludeFile(a1, a2, a4, &v11);
  if (v12)
  {
    v6 = 0;
  }

  else
  {
    v10 = v11;
    v11 = 0;
    v6 = llvm::SourceMgr::AddNewSourceBuffer(a1, &v10, a3);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if ((v12 & 1) == 0)
  {
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  return v6;
}

void llvm::SourceMgr::OpenIncludeFile(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 23);
  v9 = *a2;
  if (v8 >= 0)
  {
    v9 = a2;
  }

  if (v8 < 0)
  {
    v8 = *(a2 + 8);
  }

  v10 = a1[8];
  v42[4] = 261;
  __src = v9;
  __len[0] = v8;
  if (v10)
  {
    llvm::vfs::FileSystem::getBufferForFile(v10, &__src, -1, 1, 0, 0, a4);
  }

  else
  {
    llvm::MemoryBuffer::getFile(&__src, 0, 1, 0, 0, a4);
  }

  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  __src = v42;
  *__len = xmmword_257370CF0;
  if (v13 >= 0x41)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v14 = 0;
  if (v13)
  {
    memcpy(__src, v12, v13);
    v14 = __len[0];
  }

  __len[0] = v14 + v13;
  v15 = -1431655765 * ((a1[4] - a1[3]) >> 3);
  if (v15)
  {
    v16 = 0;
    v17 = 24 * v15;
    do
    {
      if ((*(a4 + 16) & 1) == 0)
      {
        break;
      }

      v19 = a1[3] + v16;
      v20 = *(v19 + 23);
      if (v20 >= 0)
      {
        v21 = (a1[3] + v16);
      }

      else
      {
        v21 = *v19;
      }

      if (v20 >= 0)
      {
        v22 = *(v19 + 23);
      }

      else
      {
        v22 = *(v19 + 8);
      }

      __len[0] = 0;
      if (__len[1] < v22)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v23 = 0;
      if (v22)
      {
        memcpy(__src, v21, v22);
        v23 = __len[0];
      }

      __len[0] = v23 + v22;
      v36 = 260;
      *&__dst = a2;
      v39 = 257;
      v33 = 257;
      v31 = 257;
      llvm::sys::path::append(&__src, &__dst, v37, &v32, &v30);
      v24 = a1[8];
      if (v24)
      {
        v36 = 261;
        __dst = __PAIR128__(__len[0], __src);
        llvm::vfs::FileSystem::getBufferForFile(v24, &__dst, -1, 1, 0, 0, v37);
        if (v37 == a4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v36 = 261;
        __dst = __PAIR128__(__len[0], __src);
        llvm::MemoryBuffer::getFile(&__dst, 0, 1, 0, 0, v37);
        if (v37 == a4)
        {
LABEL_41:
          if ((v38 & 1) == 0)
          {
            v27 = v37[0];
            v37[0] = 0;
            if (v27)
            {
              (*(*v27 + 8))(v27);
            }
          }

          goto LABEL_21;
        }
      }

      v25 = *(a4 + 16);
      if ((v25 & 1) == 0)
      {
        v26 = *a4;
        *a4 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
          v25 = *(a4 + 16);
        }
      }

      if (v38)
      {
        *(a4 + 16) = v25 | 1;
        v18 = v37[1];
        *a4 = v37[0];
        *(a4 + 8) = v18;
      }

      else
      {
        *(a4 + 16) = v25 & 0xFE;
        *a4 = v37[0];
      }

LABEL_21:
      v16 += 24;
    }

    while (v17 != v16);
  }

  v28 = __src;
  if ((*(a4 + 16) & 1) == 0)
  {
    v29 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len[0] >= 0x17)
    {
      operator new();
    }

    HIBYTE(v35) = __len[0];
    if (__len[0])
    {
      memmove(&__dst, __src, __len[0]);
      *(&__dst + v29) = 0;
      if ((*(a3 + 23) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(a3 + 23) & 0x80000000) == 0)
      {
LABEL_49:
        *a3 = __dst;
        *(a3 + 16) = v35;
        v28 = __src;
        goto LABEL_50;
      }
    }

    operator delete(*a3);
    goto LABEL_49;
  }

LABEL_50:
  if (v28 != v42)
  {
    free(v28);
  }
}

uint64_t llvm::SourceMgr::AddNewSourceBuffer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *a2 = 0;
  v12 = v3;
  v13 = 0;
  v14 = a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    v5 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(a1, &v12);
    v8 = v13;
    *(a1 + 8) = v5;
    v6 = *a1;
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v9;
        operator delete(v9);
      }

      MEMORY[0x259C63180](v8, 0x10C402FEFCB83);
      v13 = 0;
    }
  }

  else
  {
    v4[1] = 0;
    v4[2] = a3;
    v12 = 0;
    v13 = 0;
    *v4 = v3;
    v5 = (v4 + 3);
    *(a1 + 8) = v4 + 3;
    v6 = *a1;
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return -1431655765 * ((v5 - v6) >> 3);
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

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumber(llvm::SourceMgr::SrcBuffer *this, const char *a2)
{
  v2 = a2;
  v4 = *(*this + 8);
  v5 = *(*this + 16) - v4;
  if (v5 <= 0xFF)
  {
    Offset = GetOrCreateOffsetCache<unsigned char>(this + 8);
    v8 = *Offset;
    v9 = Offset[1] - *Offset;
    if (v9)
    {
      v10 = *Offset;
      do
      {
        v11 = v9 >> 1;
        v12 = &v10[v9 >> 1];
        v14 = *v12;
        v13 = v12 + 1;
        v9 += ~(v9 >> 1);
        if (v14 < (v2 - *(*this + 8)))
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
      LODWORD(v8) = v10 - v8;
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  else if (v5 >> 16)
  {
    v6 = *(this + 1);
    if (HIDWORD(v5))
    {
      if (!v6)
      {
        operator new();
      }

      v23 = v6[1];
      if (v23 != *v6)
      {
        v24 = &a2[-v4];
        v25 = (v23 - *v6) >> 3;
        v23 = *v6;
        do
        {
          v26 = v25 >> 1;
          v27 = &v23[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (v29 < v24)
          {
            v23 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v8 = (v23 - *v6) >> 3;
    }

    else
    {
      if (!v6)
      {
        operator new();
      }

      v30 = v6[1];
      if (v30 != *v6)
      {
        v31 = a2 - v4;
        v32 = (v30 - *v6) >> 2;
        v30 = *v6;
        do
        {
          v33 = v32 >> 1;
          v34 = &v30[v32 >> 1];
          v36 = *v34;
          v35 = v34 + 1;
          v32 += ~(v32 >> 1);
          if (v36 < v31)
          {
            v30 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      v8 = (v30 - *v6) >> 2;
    }
  }

  else
  {
    v15 = *(this + 1);
    if (!v15)
    {
      operator new();
    }

    v16 = v15[1];
    if (v16 != *v15)
    {
      v17 = (a2 - v4);
      v18 = v16 - *v15;
      v16 = *v15;
      do
      {
        v19 = v18 >> 1;
        v20 = &v16[v18 >> 1];
        v22 = *v20;
        v21 = v20 + 1;
        v18 += ~(v18 >> 1);
        if (v22 < v17)
        {
          v16 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      while (v18);
    }

    v8 = (v16 - *v15) >> 1;
  }

  return (v8 + 1);
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(llvm::SourceMgr::SrcBuffer *this, unsigned int a2)
{
  v4 = *this;
  result = *(*this + 8);
  v6 = *(v4 + 16) - result;
  if (v6 <= 0xFF)
  {
    Offset = GetOrCreateOffsetCache<unsigned char>(this + 8);
    v10 = a2 - 1;
    if (!a2)
    {
      v10 = 0;
    }

    result = *(*this + 8);
    if (a2 >= 2)
    {
      v12 = Offset;
      v11 = *Offset;
      if (v12[1] - v11 < v10)
      {
        return 0;
      }

      v14 = *(v11 + v10 - 1);
      goto LABEL_36;
    }
  }

  else if (v6 >> 16)
  {
    v7 = *(this + 1);
    if (HIDWORD(v6))
    {
      if (!v7)
      {
        operator new();
      }

      LODWORD(v8) = a2 - 1;
      if (a2)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      if (a2 < 2)
      {
        return result;
      }

      if (v8 > (v7[1] - *v7) >> 3)
      {
        return 0;
      }

      v14 = *(*v7 + 8 * (v8 - 1));
LABEL_36:
      result += v14 + 1;
      return result;
    }

    if (!v7)
    {
      operator new();
    }

    LODWORD(v16) = a2 - 1;
    if (a2)
    {
      v16 = v16;
    }

    else
    {
      v16 = 0;
    }

    if (a2 >= 2)
    {
      if (v16 > (v7[1] - *v7) >> 2)
      {
        return 0;
      }

      v14 = *(*v7 + 4 * (v16 - 1));
      goto LABEL_36;
    }
  }

  else
  {
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    LODWORD(v15) = a2 - 1;
    if (a2)
    {
      v15 = v15;
    }

    else
    {
      v15 = 0;
    }

    if (a2 >= 2)
    {
      if (v15 > (v13[1] - *v13) >> 1)
      {
        return 0;
      }

      v14 = *(*v13 + 2 * (v15 - 1));
      goto LABEL_36;
    }
  }

  return result;
}

void *llvm::SourceMgr::SrcBuffer::SrcBuffer(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
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

    MEMORY[0x259C63180](v2, 0x10C402FEFCB83);
    *(this + 1) = 0;
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

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

    MEMORY[0x259C63180](v2, 0x10C402FEFCB83);
    *(this + 1) = 0;
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

unint64_t llvm::SourceMgr::getLineAndColumn(uint64_t *a1, char *a2, int a3)
{
  v4 = *a1;
  if (!a3)
  {
    v5 = -1431655765 * ((a1[1] - v4) >> 3);
    if (v5)
    {
      a3 = 1;
      v6 = *a1;
      while (*(*v6 + 8) > a2 || *(*v6 + 16) < a2)
      {
        ++a3;
        v6 += 24;
        if (!--v5)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      a3 = 0;
    }
  }

  v7 = (v4 + 24 * (a3 - 1));
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v7, a2);
  v9 = &a2[-*(*v7 + 8)];
  v11[0] = *(*v7 + 8);
  v11[1] = v9;
  return LineNumber | ((v9 - llvm::StringRef::find_last_of(v11, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL)) << 32);
}

void llvm::SourceMgr::getFormattedLocationNoOffset(uint64_t *a1@<X0>, const char *a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v8 = -1431655765 * ((a1[1] - *a1) >> 3);
  if (v8)
  {
    v9 = 1;
    v10 = *a1;
    while (*(*v10 + 8) > a2 || *(*v10 + 16) < a2)
    {
      ++v9;
      v10 += 24;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

  v11 = *(*a1 + 24 * (v9 - 1));
  v12 = (*(*v11 + 16))(v11);
  v36 = v12;
  v37 = v13;
  if (a3)
  {
    if (!v12)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_30;
    }

    v14 = v13;
    if (v13 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v13 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v13;
      if (v13)
      {
        memmove(&__dst, v12, v13);
      }

      __dst.__r_.__value_.__s.__data_[v14] = 0;
LABEL_30:
      v19 = std::string::append(&__dst, ":");
      v20 = v19->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = *a1;
      if (v9)
      {
        goto LABEL_48;
      }

      v22 = -1431655765 * ((a1[1] - v21) >> 3);
      if (v22)
      {
        v9 = 1;
        v23 = *a1;
        while (*(*v23 + 8) > a2 || *(*v23 + 16) < a2)
        {
          ++v9;
          v23 += 24;
          if (!--v22)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_48;
      }

LABEL_47:
      v9 = 0;
      goto LABEL_48;
    }

LABEL_61:
    std::string::__throw_length_error[abi:nn200100]();
  }

  last_of = llvm::StringRef::find_last_of(&v36, "/\", 2, 0xFFFFFFFFFFFFFFFFLL);
  if (last_of == v37)
  {
    v16 = 0;
  }

  else
  {
    v16 = last_of + 1;
  }

  if (v37 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v37;
  }

  if (v36)
  {
    v18 = v37 - v17;
    if (v37 - v17 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_61;
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v37 - v17;
    if (v37 > v16)
    {
      memmove(&__dst, &v36[v17], v18);
    }

    __dst.__r_.__value_.__s.__data_[v18] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v24 = std::string::append(&__dst, ":");
  v25 = v24->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v21 = *a1;
  if (v9)
  {
    goto LABEL_48;
  }

  v26 = -1431655765 * ((a1[1] - v21) >> 3);
  if (!v26)
  {
    goto LABEL_47;
  }

  v9 = 1;
  v27 = *a1;
  while (*(*v27 + 8) > a2 || *(*v27 + 16) < a2)
  {
    ++v9;
    v27 += 24;
    if (!--v26)
    {
      goto LABEL_47;
    }
  }

LABEL_48:
  v28 = (v21 + 24 * (v9 - 1));
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v28, a2);
  __p.__r_.__value_.__r.__words[0] = *(*v28 + 8);
  __p.__r_.__value_.__l.__size_ = &a2[-__p.__r_.__value_.__r.__words[0]];
  llvm::StringRef::find_last_of(&__p, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
  std::to_string(&__p, LineNumber);
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

  v32 = std::string::append(&v35, p_p, size);
  *a4 = *v32;
  v32->__r_.__value_.__r.__words[0] = 0;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_56:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_60:
      operator delete(__dst.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_60;
  }
}

uint64_t llvm::SourceMgr::FindLocForLineAndColumn(llvm::SourceMgr *this, int a2, unsigned int a3, unsigned int a4)
{
  v5 = (*this + 24 * (a2 - 1));
  result = llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, a3);
  if (result && a4 >= 2)
  {
    v7 = a4 - 1;
    v8 = result + v7;
    if ((result + v7) <= *(*v5 + 16))
    {
      v9[0] = result;
      v9[1] = v7;
      if (llvm::StringRef::find_first_of(v9, "\n\r", 2, 0) == -1)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

llvm::raw_ostream *llvm::SourceMgr::PrintIncludeStack(llvm::raw_ostream *result, const char *a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v3 = a3;
    v5 = result;
    v6 = -1431655765 * ((*(result + 1) - *result) >> 3);
    if (v6)
    {
      v7 = 1;
      v8 = *result;
      while (*(*v8 + 8) > a2 || *(*v8 + 16) < a2)
      {
        ++v7;
        v8 += 24;
        if (!--v6)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v7 = 0;
    }

    llvm::SourceMgr::PrintIncludeStack(result, *(*result + 24 * (v7 - 1) + 16), a3);
    v9 = *(v3 + 4);
    if (*(v3 + 3) - v9 > 0xDuLL)
    {
      qmemcpy(v9, "Included from ", 14);
      *(v3 + 4) += 14;
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, "Included from ", 0xEuLL);
    }

    v10 = *(*v5 + 24 * (v7 - 1));
    v12 = (*(*v10 + 16))(v10);
    v13 = v11;
    v14 = *(v3 + 4);
    if (v11 <= *(v3 + 3) - v14)
    {
      if (v11)
      {
        memcpy(v14, v12, v11);
        v14 = (*(v3 + 4) + v13);
        *(v3 + 4) = v14;
      }
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, v12, v11);
      v14 = *(v3 + 4);
    }

    if (*(v3 + 3) == v14)
    {
      v3 = llvm::raw_ostream::write(v3, ":", 1uLL);
      v15 = *v5;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v14 = 58;
      ++*(v3 + 4);
      v15 = *v5;
      if (!v7)
      {
LABEL_20:
        v16 = -1431655765 * ((*(v5 + 1) - v15) >> 3);
        if (v16)
        {
          v7 = 1;
          v17 = v15;
          while (*(*v17 + 8) > a2 || *(*v17 + 16) < a2)
          {
            ++v7;
            v17 += 24;
            if (!--v16)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          v7 = 0;
        }
      }
    }

    v18 = (v15 + 24 * (v7 - 1));
    LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v18, a2);
    v21[0] = *(*v18 + 8);
    v21[1] = &a2[-v21[0]];
    llvm::StringRef::find_last_of(v21, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
    result = llvm::raw_ostream::operator<<(v3, LineNumber);
    v20 = *(result + 4);
    if (*(result + 3) - v20 > 1uLL)
    {
      *v20 = 2618;
      *(result + 4) += 2;
    }

    else
    {
      return llvm::raw_ostream::write(result, ":\n", 2uLL);
    }
  }

  return result;
}

void llvm::SourceMgr::GetMessage(llvm::formatv_object_base **this@<X3>, uint64_t *a2@<X0>, const char *a3@<X1>, int a4@<W2>, unint64_t *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v54 = v56;
  v55 = 0x400000000;
  if (a3)
  {
    v13 = -1431655765 * ((a2[1] - *a2) >> 3);
    v46 = this;
    if (v13)
    {
      v14 = 1;
      v15 = *a2;
      while (*(*v15 + 8) > a3 || *(*v15 + 16) < a3)
      {
        ++v14;
        v15 += 24;
        if (!--v13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v14 = 0;
    }

    v16 = *(*a2 + 24 * (v14 - 1));
    v18 = (*(*v16 + 16))(v16);
    v19 = v16[1];
    v20 = a3;
    while (v20 != v19)
    {
      v22 = *--v20;
      v21 = v22;
      if (v22 == 13 || v21 == 10)
      {
        v19 = (v20 + 1);
        break;
      }
    }

    v24 = v16[2];
    v25 = a3;
    if (v24 != a3)
    {
      while (1)
      {
        v26 = *v25;
        if (v26 == 10 || v26 == 13)
        {
          break;
        }

        if (++v25 == v24)
        {
          v25 = v24;
          break;
        }
      }
    }

    if (a6)
    {
      v28 = &a5[2 * a6];
      do
      {
        v30 = *a5;
        v29 = a5[1];
        if (*a5)
        {
          v31 = v30 > v25;
        }

        else
        {
          v31 = 1;
        }

        if (!v31 && v29 >= v19)
        {
          if (v30 >= v19)
          {
            v33 = *a5;
          }

          else
          {
            v33 = v19;
          }

          if (v29 <= v25)
          {
            v34 = a5[1];
          }

          else
          {
            v34 = v25;
          }

          if (v55 >= HIDWORD(v55))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v54 + v55) = (v33 - v19) | ((v34 - v19) << 32);
          LODWORD(v55) = v55 + 1;
        }

        a5 += 2;
      }

      while (a5 != v28);
    }

    v35 = v25 - v19;
    v36 = *a2;
    if (!v14)
    {
      v37 = -1431655765 * ((a2[1] - v36) >> 3);
      if (v37)
      {
        v14 = 1;
        v38 = *a2;
        while (*(*v38 + 8) > a3 || *(*v38 + 16) < a3)
        {
          ++v14;
          v38 += 24;
          if (!--v37)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        v14 = 0;
      }
    }

    v43 = (v36 + 24 * (v14 - 1));
    v41 = v17;
    v42 = v18;
    LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v43, a3);
    __p = *(*v43 + 8);
    v52 = a3 - __p;
    v40 = ~llvm::StringRef::find_last_of(&__p, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL) + a3 - __p;
    this = v46;
  }

  else
  {
    v35 = 0;
    v19 = 0;
    LineNumber = 0;
    v40 = -1;
    v41 = 9;
    v42 = "<unknown>";
  }

  llvm::Twine::str(this, &__p);
  v44 = v53;
  p_p = __p;
  if (v53 >= 0)
  {
    p_p = &__p;
  }

  if (v53 < 0)
  {
    v44 = v52;
  }

  llvm::SMDiagnostic::SMDiagnostic(a9, a2, a3, v42, v41, LineNumber, v40, a4, p_p, v44, v19, v35, v54, v55, a7, a8);
  if (v53 < 0)
  {
    operator delete(__p);
  }

  if (v54 != v56)
  {
    free(v54);
  }
}

uint64_t llvm::SMDiagnostic::SMDiagnostic(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, size_t __len, int a6, int a7, int a8, void *__srca, size_t __lena, void *a11, size_t a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16)
{
  return llvm::SMDiagnostic::SMDiagnostic(a1, a2, a3, __src, __len, a6, a7, a8, __srca, __lena, a11, a12, a13, a14, a15, a16);
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_26;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v21 = (a1 + 16);
  *(a1 + 39) = __len;
  if (__len)
  {
    memmove(v21, __src, __len);
  }

  *(v21 + __len) = 0;
  *(a1 + 40) = a6;
  *(a1 + 44) = a7;
  *(a1 + 48) = a8;
  if (__lena > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_26;
  }

  if (__lena >= 0x17)
  {
    operator new();
  }

  v22 = (a1 + 56);
  *(a1 + 79) = __lena;
  if (__lena)
  {
    memmove(v22, __srca, __lena);
  }

  *(v22 + __lena) = 0;
  if (a12 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_26:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a12 >= 0x17)
  {
    operator new();
  }

  v23 = (a1 + 80);
  *(a1 + 103) = a12;
  if (a12)
  {
    memmove(v23, a11, a12);
    v23[a12] = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    if (!a14)
    {
      goto LABEL_22;
    }

LABEL_20:
    if ((a14 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *v23 = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (a14)
  {
    goto LABEL_20;
  }

LABEL_22:
  *(a1 + 128) = a1 + 144;
  *(a1 + 136) = 0x400000000;
  llvm::SmallVectorImpl<llvm::SMFixIt>::append<llvm::SMFixIt const*,void>(a1 + 128, a15, (a15 + 40 * a16));
  v24 = *(a1 + 136);
  v25 = 126 - 2 * __clz(v24);
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(*(a1 + 128), (*(a1 + 128) + 40 * v24), &v28, v26, 1);
  return a1;
}

void llvm::SourceMgr::PrintMessage(llvm::SourceMgr *this, llvm::raw_ostream *a2, const llvm::SMDiagnostic *a3, int a4)
{
  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(this + 7);

    v5(a3, v6);
  }

  else
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v9 = -1431655765 * ((*(this + 1) - *this) >> 3);
      if (v9)
      {
        v10 = 0;
        v11 = *this;
        while (*(*v11 + 8) > v8 || *(*v11 + 16) < v8)
        {
          ++v10;
          v11 += 24;
          if (v9 == v10)
          {
            goto LABEL_12;
          }
        }

        v12 = a4;
      }

      else
      {
LABEL_12:
        v12 = a4;
        v10 = 0xFFFFFFFFLL;
      }

      llvm::SourceMgr::PrintIncludeStack(this, *(*this + 24 * v10 + 16), a2);
      a4 = v12;
    }

    llvm::SMDiagnostic::print(a3, 0, a2, a4, 1, 1);
  }
}

void llvm::SMDiagnostic::print(llvm::SMDiagnostic *this, const char *a2, llvm::raw_ostream *a3, int a4, int a5, int a6)
{
  v8 = a4;
  v9 = a3;
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  __b.__r_.__value_.__r.__words[0] = a3;
  LODWORD(__b.__r_.__value_.__r.__words[1]) = v12;
  llvm::WithColor::changeColor(&__b);
  if (a2 && *a2)
  {
    v13 = v12;
    v14 = __b.__r_.__value_.__r.__words[0];
    v15 = strlen(a2);
    v16 = *(__b.__r_.__value_.__r.__words[0] + 32);
    if (v15 <= *(__b.__r_.__value_.__r.__words[0] + 24) - v16)
    {
      if (v15)
      {
        memcpy(v16, a2, v15);
        *(v14 + 32) += v15;
      }
    }

    else
    {
      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, a2, v15);
    }

    v17 = __b.__r_.__value_.__r.__words[0];
    v18 = *(__b.__r_.__value_.__r.__words[0] + 32);
    if (*(__b.__r_.__value_.__r.__words[0] + 24) - v18 > 1uLL)
    {
      *v18 = 8250;
      *(v17 + 32) += 2;
    }

    else
    {
      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, ": ", 2uLL);
    }

    v12 = v13;
  }

  if (!a6)
  {
    goto LABEL_43;
  }

  v19 = (this + 16);
  v20 = *(this + 39);
  if (v20 < 0)
  {
    v21 = *(this + 3);
    if (!v21)
    {
      goto LABEL_43;
    }

    if (v21 != 1 || **v19 != 45)
    {
LABEL_26:
      if (v20 >= 0)
      {
        v24 = this + 16;
      }

      else
      {
        v24 = *(this + 2);
      }

      if (v20 >= 0)
      {
        v25 = *(this + 39);
      }

      else
      {
        v25 = *(this + 3);
      }

      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, v24, v25);
      if (*(this + 10) == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (!*(this + 39))
    {
      goto LABEL_43;
    }

    if (*(this + 39) != 1 || *v19 != 45)
    {
      goto LABEL_26;
    }
  }

  v22 = __b.__r_.__value_.__r.__words[0];
  v23 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (*(__b.__r_.__value_.__r.__words[0] + 24) - v23 > 6uLL)
  {
    *(v23 + 3) = 1047423332;
    *v23 = 1685353276;
    *(v22 + 32) += 7;
    if (*(this + 10) == -1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, "<stdin>", 7uLL);
    if (*(this + 10) == -1)
    {
      goto LABEL_41;
    }
  }

LABEL_33:
  v26 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (v26 < *(__b.__r_.__value_.__r.__words[0] + 24))
  {
    *(__b.__r_.__value_.__r.__words[0] + 32) = v26 + 1;
    *v26 = 58;
    llvm::raw_ostream::operator<<(__b.__r_.__value_.__l.__data_, *(this + 10));
    if (*(this + 11) == -1)
    {
      goto LABEL_41;
    }

LABEL_37:
    v27 = *(__b.__r_.__value_.__r.__words[0] + 32);
    if (v27 >= *(__b.__r_.__value_.__r.__words[0] + 24))
    {
      llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, 58);
    }

    else
    {
      *(__b.__r_.__value_.__r.__words[0] + 32) = v27 + 1;
      *v27 = 58;
    }

    llvm::raw_ostream::operator<<(__b.__r_.__value_.__l.__data_, *(this + 11) + 1);
    goto LABEL_41;
  }

  llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, 58);
  llvm::raw_ostream::operator<<(__b.__r_.__value_.__l.__data_, *(this + 10));
  if (*(this + 11) != -1)
  {
    goto LABEL_37;
  }

LABEL_41:
  v28 = __b.__r_.__value_.__r.__words[0];
  v29 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (*(__b.__r_.__value_.__r.__words[0] + 24) - v29 > 1uLL)
  {
    *v29 = 8250;
    *(v28 + 32) += 2;
    llvm::WithColor::~WithColor(&__b);
    if (!a5)
    {
      goto LABEL_55;
    }

    goto LABEL_44;
  }

  llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, ": ", 2uLL);
LABEL_43:
  llvm::WithColor::~WithColor(&__b);
  if (!a5)
  {
    goto LABEL_55;
  }

LABEL_44:
  v30 = *(this + 12);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      llvm::WithColor::remark(v9, "", 0, v8 ^ 1);
    }

    else if (v30 == 3)
    {
      llvm::WithColor::note(v9, "", 0, v8 ^ 1);
    }
  }

  else if (v30)
  {
    if (v30 == 1)
    {
      llvm::WithColor::warning(v9, "", 0, v8 ^ 1);
    }
  }

  else
  {
    llvm::WithColor::error(v9, "", 0, v8 ^ 1);
  }

LABEL_55:
  __b.__r_.__value_.__r.__words[0] = v9;
  LODWORD(__b.__r_.__value_.__r.__words[1]) = v12;
  llvm::WithColor::changeColor(&__b);
  v31 = *(this + 79);
  if (v31 >= 0)
  {
    v32 = this + 56;
  }

  else
  {
    v32 = *(this + 7);
  }

  if (v31 >= 0)
  {
    v33 = *(this + 79);
  }

  else
  {
    v33 = *(this + 8);
  }

  llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, v32, v33);
  v34 = *(__b.__r_.__value_.__r.__words[0] + 32);
  if (v34 >= *(__b.__r_.__value_.__r.__words[0] + 24))
  {
    llvm::raw_ostream::write(__b.__r_.__value_.__l.__data_, 10);
    llvm::WithColor::~WithColor(&__b);
    if (*(this + 10) == -1)
    {
      return;
    }
  }

  else
  {
    *(__b.__r_.__value_.__r.__words[0] + 32) = v34 + 1;
    *v34 = 10;
    llvm::WithColor::~WithColor(&__b);
    if (*(this + 10) == -1)
    {
      return;
    }
  }

  if (*(this + 11) == -1)
  {
    return;
  }

  v35 = (this + 80);
  v36 = *(this + 103);
  if (v36 >= 0)
  {
    v37 = this + 80;
  }

  else
  {
    v37 = *(this + 10);
  }

  if (v36 >= 0)
  {
    v38 = *(this + 103);
  }

  else
  {
    v38 = *(this + 11);
  }

  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      if (v37[i] < 0)
      {
        printSourceLine(v9, v37, v38);
        return;
      }
    }

    v40 = v38 + 1;
    if (v38 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v40 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = v38 + 1;
    if (v38 == -1)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v40 = 1;
    *(&__b.__r_.__value_.__s + 23) = 1;
  }

  memset(&__b, 32, v40);
LABEL_84:
  __b.__r_.__value_.__s.__data_[v40] = 0;
  v41 = *(this + 13);
  for (j = *(this + 14); v41 != j; v41 += 2)
  {
    size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v44 = *v41;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __b.__r_.__value_.__l.__size_;
    }

    if (size >= v41[1])
    {
      size = v41[1];
    }

    if ((size - v44) >= 1)
    {
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__r_.__value_.__r.__words[0];
      }

      memset(p_b + v44, 126, size - v44);
    }
  }

  memset(&v163, 0, sizeof(v163));
  v46 = *(this + 34);
  v47 = *(this + 103);
  if (v47 < 0)
  {
    v47 = *(this + 11);
  }

  v48 = *(this + 11);
  if (v46)
  {
    v158 = v38;
    v159 = v12;
    v160 = this + 80;
    v161 = this;
    v162 = v9;
    v49 = 0;
    v50 = *(this + 1) - v48;
    v51 = v50 + v47;
    v52 = *(this + 16) + 24;
    v53 = 40 * v46;
    do
    {
      v54 = *(v52 - 8);
      v55 = *(v52 + 15);
      if (v55 >= 0)
      {
        v54 = (v52 - 8);
      }

      if (v55 < 0)
      {
        v55 = *v52;
      }

      v165 = v54;
      v166 = v55;
      if (llvm::StringRef::find_first_of(&v165, "\n\r\t", 3, 0) == -1)
      {
        v56 = *(v52 - 24);
        v57 = *(v52 - 16);
        if (v51 >= v56 && v57 >= v50)
        {
          if (v56 >= v50)
          {
            v59 = (v56 - v50);
          }

          else
          {
            v59 = 0;
          }

          if (v49 > v59)
          {
            v60 = (v49 + 1);
          }

          else
          {
            v60 = v59;
          }

          v61 = *(v52 + 15);
          v62 = v61;
          v63 = *v52;
          if ((v61 & 0x80u) == 0)
          {
            v64 = *(v52 + 15);
          }

          else
          {
            v64 = *v52;
          }

          v49 = (v60 + v64);
          v65 = HIBYTE(v163.__r_.__value_.__r.__words[2]);
          if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v65 = v163.__r_.__value_.__l.__size_;
          }

          if (v65 < v49)
          {
            std::string::resize(&v163, v49, 32);
            v61 = *(v52 + 15);
            v63 = *v52;
            v62 = *(v52 + 15);
          }

          if (v62 >= 0)
          {
            v66 = v61;
          }

          else
          {
            v66 = v63;
          }

          if (v66)
          {
            v67 = &v163;
            if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v67 = v163.__r_.__value_.__r.__words[0];
            }

            if (v62 >= 0)
            {
              v68 = (v52 - 8);
            }

            else
            {
              v68 = *(v52 - 8);
            }

            memmove(v67 + v60, v68, v66);
          }

          if (v51 <= v57)
          {
            v69 = v51;
          }

          else
          {
            v69 = v57;
          }

          v70 = (v69 - v50) - v59;
          if (v70 >= 1)
          {
            v71 = &__b;
            if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v71 = __b.__r_.__value_.__r.__words[0];
            }

            memset(v71 + v59, 126, v70);
          }
        }
      }

      v52 += 40;
      v53 -= 40;
    }

    while (v53);
    this = v161;
    v9 = v162;
    LODWORD(v48) = *(v161 + 11);
    v35 = v160;
    v12 = v159;
    v38 = v158;
  }

  if (v38 >= v48)
  {
    v74 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v74 = __b.__r_.__value_.__r.__words[0];
    }

    v73 = v74 + v48;
  }

  else
  {
    v72 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v72 = __b.__r_.__value_.__r.__words[0];
    }

    v73 = v72 + v38;
  }

  *v73 = 94;
  v75 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v76 = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v75 = __b.__r_.__value_.__l.__size_;
    v76 = __b.__r_.__value_.__r.__words[0];
  }

  v77 = &v76[-1].__r_.__value_.__r.__words[2] + 7;
  while (v75)
  {
    v78 = v77[v75--];
    if (v78 != 32)
    {
      v79 = v75 + 1;
      goto LABEL_156;
    }
  }

  v79 = 0;
LABEL_156:
  std::string::erase(&__b, v79, 0xFFFFFFFFFFFFFFFFLL);
  v80 = *(this + 103);
  if (v80 >= 0)
  {
    v81 = v35;
  }

  else
  {
    v81 = *(this + 10);
  }

  if (v80 >= 0)
  {
    v82 = *(this + 103);
  }

  else
  {
    v82 = *(this + 11);
  }

  printSourceLine(v9, v81, v82);
  v165 = v9;
  LODWORD(v166) = v12;
  llvm::WithColor::changeColor(&v165);
  v83 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v83 = __b.__r_.__value_.__r.__words[1];
  }

  v84 = v83;
  if (v83)
  {
    v85 = 0;
    v86 = 0;
    do
    {
      v87 = *(this + 103);
      if ((v87 & 0x8000000000000000) != 0)
      {
        if (*(this + 11) <= v85)
        {
          goto LABEL_182;
        }
      }

      else if (v87 <= v85)
      {
        goto LABEL_182;
      }

      if ((v87 & 0x80000000) != 0)
      {
        if (*(*v35 + v85) != 9)
        {
LABEL_182:
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v92 = &__b;
          }

          else
          {
            v92 = __b.__r_.__value_.__r.__words[0];
          }

          v93 = v92->__r_.__value_.__s.__data_[v85];
          v94 = *(v165 + 4);
          if (v94 >= *(v165 + 3))
          {
            llvm::raw_ostream::write(v165, v93);
          }

          else
          {
            *(v165 + 4) = v94 + 1;
            *v94 = v93;
          }

          ++v86;
          goto LABEL_168;
        }
      }

      else if (*(v35 + v85) != 9)
      {
        goto LABEL_182;
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &__b;
      }

      else
      {
        v88 = __b.__r_.__value_.__r.__words[0];
      }

      v89 = v88->__r_.__value_.__s.__data_[v85];
      v90 = *(v165 + 4);
      if (v90 >= *(v165 + 3))
      {
        llvm::raw_ostream::write(v165, v89);
        v91 = v86 + 1;
        if (((v86 + 1) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      else
      {
        *(v165 + 4) = v90 + 1;
        *v90 = v89;
        v91 = v86 + 1;
        if (((v86 + 1) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v95 = &__b;
      }

      else
      {
        v95 = __b.__r_.__value_.__r.__words[0];
      }

      v96 = v95->__r_.__value_.__s.__data_[v85];
      v97 = *(v165 + 4);
      if (v97 >= *(v165 + 3))
      {
        llvm::raw_ostream::write(v165, v96);
        v91 = v86 + 2;
        if (((v86 + 2) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      else
      {
        *(v165 + 4) = v97 + 1;
        *v97 = v96;
        v91 = v86 + 2;
        if (((v86 + 2) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = &__b;
      }

      else
      {
        v98 = __b.__r_.__value_.__r.__words[0];
      }

      v99 = v98->__r_.__value_.__s.__data_[v85];
      v100 = *(v165 + 4);
      if (v100 >= *(v165 + 3))
      {
        llvm::raw_ostream::write(v165, v99);
        v91 = v86 + 3;
        if (((v86 + 3) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      else
      {
        *(v165 + 4) = v100 + 1;
        *v100 = v99;
        v91 = v86 + 3;
        if (((v86 + 3) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = &__b;
      }

      else
      {
        v101 = __b.__r_.__value_.__r.__words[0];
      }

      v102 = v101->__r_.__value_.__s.__data_[v85];
      v103 = *(v165 + 4);
      if (v103 >= *(v165 + 3))
      {
        llvm::raw_ostream::write(v165, v102);
        v91 = v86 + 4;
        if (((v86 + 4) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      else
      {
        *(v165 + 4) = v103 + 1;
        *v103 = v102;
        v91 = v86 + 4;
        if (((v86 + 4) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v104 = &__b;
      }

      else
      {
        v104 = __b.__r_.__value_.__r.__words[0];
      }

      v105 = v104->__r_.__value_.__s.__data_[v85];
      v106 = *(v165 + 4);
      if (v106 >= *(v165 + 3))
      {
        llvm::raw_ostream::write(v165, v105);
        v91 = v86 + 5;
        if (((v86 + 5) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      else
      {
        *(v165 + 4) = v106 + 1;
        *v106 = v105;
        v91 = v86 + 5;
        if (((v86 + 5) & 7) == 0)
        {
          goto LABEL_234;
        }
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v107 = &__b;
      }

      else
      {
        v107 = __b.__r_.__value_.__r.__words[0];
      }

      v108 = v107->__r_.__value_.__s.__data_[v85];
      v109 = *(v165 + 4);
      if (v109 >= *(v165 + 3))
      {
        llvm::raw_ostream::write(v165, v108);
        v91 = v86 + 6;
        if (((v86 + 6) & 7) != 0)
        {
LABEL_223:
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v110 = &__b;
          }

          else
          {
            v110 = __b.__r_.__value_.__r.__words[0];
          }

          v111 = v110->__r_.__value_.__s.__data_[v85];
          v112 = *(v165 + 4);
          if (v112 >= *(v165 + 3))
          {
            llvm::raw_ostream::write(v165, v111);
            v91 = v86 + 7;
            if (((v86 + 7) & 7) != 0)
            {
LABEL_228:
              if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v113 = &__b;
              }

              else
              {
                v113 = __b.__r_.__value_.__r.__words[0];
              }

              v114 = v113->__r_.__value_.__s.__data_[v85];
              v115 = *(v165 + 4);
              if (v115 >= *(v165 + 3))
              {
                llvm::raw_ostream::write(v165, v114);
              }

              else
              {
                *(v165 + 4) = v115 + 1;
                *v115 = v114;
              }

              v86 += 8;
              goto LABEL_168;
            }
          }

          else
          {
            *(v165 + 4) = v112 + 1;
            *v112 = v111;
            v91 = v86 + 7;
            if (((v86 + 7) & 7) != 0)
            {
              goto LABEL_228;
            }
          }
        }
      }

      else
      {
        *(v165 + 4) = v109 + 1;
        *v109 = v108;
        v91 = v86 + 6;
        if (((v86 + 6) & 7) != 0)
        {
          goto LABEL_223;
        }
      }

LABEL_234:
      v86 = v91;
LABEL_168:
      ++v85;
    }

    while (v84 != v85);
  }

  v116 = *(v165 + 4);
  if (v116 >= *(v165 + 3))
  {
    llvm::raw_ostream::write(v165, 10);
    llvm::WithColor::~WithColor(&v165);
    v117 = SHIBYTE(v163.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_239:
      if (!v117)
      {
        goto LABEL_364;
      }

      goto LABEL_243;
    }
  }

  else
  {
    *(v165 + 4) = v116 + 1;
    *v116 = 10;
    llvm::WithColor::~WithColor(&v165);
    v117 = SHIBYTE(v163.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_239;
    }
  }

  v117 = v163.__r_.__value_.__l.__size_;
  if (!v163.__r_.__value_.__l.__size_)
  {
    goto LABEL_363;
  }

LABEL_243:
  v118 = 0;
  v119 = 0;
  do
  {
    v121 = *(this + 103);
    if ((v121 & 0x8000000000000000) != 0)
    {
      if (v119 >= *(this + 11))
      {
LABEL_253:
        LOBYTE(v122) = *(&v163.__r_.__value_.__s + 23);
        v123 = v163.__r_.__value_.__r.__words[0];
        goto LABEL_254;
      }
    }

    else if (v119 >= v121)
    {
      goto LABEL_253;
    }

    if ((v121 & 0x80000000) != 0)
    {
      v122 = SHIBYTE(v163.__r_.__value_.__r.__words[2]);
      v123 = v163.__r_.__value_.__r.__words[0];
      if (*(*v35 + v119) == 9)
      {
LABEL_259:
        if (v122 >= 0)
        {
          v123 = &v163;
        }

        v126 = v123->__r_.__value_.__s.__data_[v119];
        v127 = *(v9 + 4);
        if (v127 >= *(v9 + 3))
        {
          llvm::raw_ostream::write(v9, v126);
        }

        else
        {
          *(v9 + 4) = v127 + 1;
          *v127 = v126;
        }

        if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v128 = &v163;
        }

        else
        {
          v128 = v163.__r_.__value_.__r.__words[0];
        }

        if (v128->__r_.__value_.__s.__data_[v119] != 32)
        {
          ++v119;
        }

        v120 = v118 + 1;
        if (((v118 + 1) & 7) != 0 && v119 != v117)
        {
          if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v129 = &v163;
          }

          else
          {
            v129 = v163.__r_.__value_.__r.__words[0];
          }

          v130 = v129->__r_.__value_.__s.__data_[v119];
          v131 = *(v9 + 4);
          if (v131 >= *(v9 + 3))
          {
            llvm::raw_ostream::write(v9, v130);
          }

          else
          {
            *(v9 + 4) = v131 + 1;
            *v131 = v130;
          }

          if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v132 = &v163;
          }

          else
          {
            v132 = v163.__r_.__value_.__r.__words[0];
          }

          if (v132->__r_.__value_.__s.__data_[v119] != 32)
          {
            ++v119;
          }

          v120 = v118 + 2;
          if (((v118 + 2) & 7) != 0 && v119 != v117)
          {
            if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v133 = &v163;
            }

            else
            {
              v133 = v163.__r_.__value_.__r.__words[0];
            }

            v134 = v133->__r_.__value_.__s.__data_[v119];
            v135 = *(v9 + 4);
            if (v135 >= *(v9 + 3))
            {
              llvm::raw_ostream::write(v9, v134);
            }

            else
            {
              *(v9 + 4) = v135 + 1;
              *v135 = v134;
            }

            if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v136 = &v163;
            }

            else
            {
              v136 = v163.__r_.__value_.__r.__words[0];
            }

            if (v136->__r_.__value_.__s.__data_[v119] != 32)
            {
              ++v119;
            }

            v120 = v118 + 3;
            if (((v118 + 3) & 7) != 0 && v119 != v117)
            {
              if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v137 = &v163;
              }

              else
              {
                v137 = v163.__r_.__value_.__r.__words[0];
              }

              v138 = v137->__r_.__value_.__s.__data_[v119];
              v139 = *(v9 + 4);
              if (v139 >= *(v9 + 3))
              {
                llvm::raw_ostream::write(v9, v138);
              }

              else
              {
                *(v9 + 4) = v139 + 1;
                *v139 = v138;
              }

              if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v140 = &v163;
              }

              else
              {
                v140 = v163.__r_.__value_.__r.__words[0];
              }

              if (v140->__r_.__value_.__s.__data_[v119] != 32)
              {
                ++v119;
              }

              v120 = v118 + 4;
              if (((v118 + 4) & 7) != 0 && v119 != v117)
              {
                if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v141 = &v163;
                }

                else
                {
                  v141 = v163.__r_.__value_.__r.__words[0];
                }

                v142 = v141->__r_.__value_.__s.__data_[v119];
                v143 = *(v9 + 4);
                if (v143 >= *(v9 + 3))
                {
                  llvm::raw_ostream::write(v9, v142);
                }

                else
                {
                  *(v9 + 4) = v143 + 1;
                  *v143 = v142;
                }

                if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v144 = &v163;
                }

                else
                {
                  v144 = v163.__r_.__value_.__r.__words[0];
                }

                if (v144->__r_.__value_.__s.__data_[v119] != 32)
                {
                  ++v119;
                }

                v120 = v118 + 5;
                if (((v118 + 5) & 7) != 0 && v119 != v117)
                {
                  if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v145 = &v163;
                  }

                  else
                  {
                    v145 = v163.__r_.__value_.__r.__words[0];
                  }

                  v146 = v145->__r_.__value_.__s.__data_[v119];
                  v147 = *(v9 + 4);
                  if (v147 >= *(v9 + 3))
                  {
                    llvm::raw_ostream::write(v9, v146);
                  }

                  else
                  {
                    *(v9 + 4) = v147 + 1;
                    *v147 = v146;
                  }

                  if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v148 = &v163;
                  }

                  else
                  {
                    v148 = v163.__r_.__value_.__r.__words[0];
                  }

                  if (v148->__r_.__value_.__s.__data_[v119] != 32)
                  {
                    ++v119;
                  }

                  v120 = v118 + 6;
                  if (((v118 + 6) & 7) != 0 && v119 != v117)
                  {
                    if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v149 = &v163;
                    }

                    else
                    {
                      v149 = v163.__r_.__value_.__r.__words[0];
                    }

                    v150 = v149->__r_.__value_.__s.__data_[v119];
                    v151 = *(v9 + 4);
                    if (v151 >= *(v9 + 3))
                    {
                      llvm::raw_ostream::write(v9, v150);
                    }

                    else
                    {
                      *(v9 + 4) = v151 + 1;
                      *v151 = v150;
                    }

                    if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v152 = &v163;
                    }

                    else
                    {
                      v152 = v163.__r_.__value_.__r.__words[0];
                    }

                    if (v152->__r_.__value_.__s.__data_[v119] != 32)
                    {
                      ++v119;
                    }

                    v120 = v118 + 7;
                    if (((v118 + 7) & 7) != 0 && v119 != v117)
                    {
                      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v153 = &v163;
                      }

                      else
                      {
                        v153 = v163.__r_.__value_.__r.__words[0];
                      }

                      v154 = v153->__r_.__value_.__s.__data_[v119];
                      v155 = *(v9 + 4);
                      if (v155 >= *(v9 + 3))
                      {
                        llvm::raw_ostream::write(v9, v154);
                      }

                      else
                      {
                        *(v9 + 4) = v155 + 1;
                        *v155 = v154;
                      }

                      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v156 = &v163;
                      }

                      else
                      {
                        v156 = v163.__r_.__value_.__r.__words[0];
                      }

                      if (v156->__r_.__value_.__s.__data_[v119] != 32)
                      {
                        ++v119;
                      }

                      v120 = v118 + 8;
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_246;
      }
    }

    else
    {
      v122 = SHIBYTE(v163.__r_.__value_.__r.__words[2]);
      v123 = v163.__r_.__value_.__r.__words[0];
      if (*(v35 + v119) == 9)
      {
        goto LABEL_259;
      }
    }

LABEL_254:
    if ((v122 & 0x80u) == 0)
    {
      v123 = &v163;
    }

    v124 = v123->__r_.__value_.__s.__data_[v119];
    v125 = *(v9 + 4);
    if (v125 >= *(v9 + 3))
    {
      llvm::raw_ostream::write(v9, v124);
    }

    else
    {
      *(v9 + 4) = v125 + 1;
      *v125 = v124;
    }

    v120 = v118 + 1;
LABEL_246:
    ++v119;
    v118 = v120;
  }

  while (v119 < v117);
  v157 = *(v9 + 4);
  if (v157 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 10);
    if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_364;
    }
  }

  else
  {
    *(v9 + 4) = v157 + 1;
    *v157 = 10;
LABEL_363:
    if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_364:
      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_365;
      }

      return;
    }
  }

  operator delete(v163.__r_.__value_.__l.__data_);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_365:
    operator delete(__b.__r_.__value_.__l.__data_);
  }
}

void llvm::SourceMgr::PrintMessage(uint64_t *a1, llvm::raw_ostream *a2, const char *a3, int a4, llvm::formatv_object_base **this, unint64_t *a6, uint64_t a7, int a8, __int128 *a9, uint64_t a10, BOOL a11)
{
  v33[20] = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::GetMessage(this, a1, a3, a4, a6, a7, a9, a10, v21);
  v13 = a1[6];
  if (v13)
  {
    v13(v21, a1[7]);
    v14 = v31;
    v15 = v32;
    if (!v32)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v22)
  {
    v16 = -1431655765 * ((a1[1] - *a1) >> 3);
    if (v16)
    {
      v17 = 0;
      v18 = *a1;
      while (*(*v18 + 8) > v22 || *(*v18 + 16) < v22)
      {
        ++v17;
        v18 += 24;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v17 = 0xFFFFFFFFLL;
    }

    llvm::SourceMgr::PrintIncludeStack(a1, *(*a1 + 24 * v17 + 16), a2);
  }

  llvm::SMDiagnostic::print(v21, 0, a2, a11, 1, 1);
  v14 = v31;
  v15 = v32;
  if (v32)
  {
LABEL_14:
    v19 = &v14[5 * v15 - 3];
    v20 = -40 * v15;
    do
    {
      if (*(v19 + 23) < 0)
      {
        operator delete(*v19);
      }

      v19 -= 40;
      v20 += 40;
    }

    while (v20);
    v14 = v31;
  }

LABEL_19:
  if (v14 != v33)
  {
    free(v14);
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_25:
      if ((v24 & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v23);
      return;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v25);
  if (v24 < 0)
  {
    goto LABEL_29;
  }
}

void *llvm::SMFixIt::SMFixIt(void *a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base **this)
{
  *a1 = a2;
  a1[1] = a3;
  llvm::Twine::str(this, (a1 + 2));
  return a1;
}

{
  *a1 = a2;
  a1[1] = a3;
  llvm::Twine::str(this, (a1 + 2));
  return a1;
}

llvm::raw_ostream *printSourceLine(llvm::raw_ostream *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a3)
  {
    goto LABEL_57;
  }

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

    v13 = &v12[-v8];
    result = *(v4 + 4);
    if (&v12[-v8] <= *(v4 + 3) - result)
    {
      if (v12 != v8)
      {
        v14 = &v12[-v8];
        result = memcpy(result, (a2 + v8), v13);
        *(v4 + 4) += v14;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(v4, (a2 + v8), v13);
    }

    v15 = *(v4 + 4);
    if (v15 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v16 = v7 - v8 + v10;
      v7 = v16 + 1;
      if (((v16 + 1) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v15 + 1;
      *v15 = 32;
      v16 = v7 - v8 + v10;
      v7 = v16 + 1;
      if (((v16 + 1) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 4);
    if (v17 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 2;
      if (((v16 + 2) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v17 + 1;
      *v17 = 32;
      v7 = v16 + 2;
      if (((v16 + 2) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v18 = *(v4 + 4);
    if (v18 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 3;
      if (((v16 + 3) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v18 + 1;
      *v18 = 32;
      v7 = v16 + 3;
      if (((v16 + 3) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = *(v4 + 4);
    if (v19 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 4;
      if (((v16 + 4) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v19 + 1;
      *v19 = 32;
      v7 = v16 + 4;
      if (((v16 + 4) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v4 + 4);
    if (v20 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 5;
      if (((v16 + 5) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v20 + 1;
      *v20 = 32;
      v7 = v16 + 5;
      if (((v16 + 5) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = *(v4 + 4);
    if (v21 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 6;
      if (((v16 + 6) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *(v4 + 4) = v21 + 1;
      *v21 = 32;
      v7 = v16 + 6;
      if (((v16 + 6) & 7) == 0)
      {
        goto LABEL_5;
      }
    }

    v22 = *(v4 + 4);
    if (v22 >= *(v4 + 3))
    {
      result = llvm::raw_ostream::write(v4, 32);
      v7 = v16 + 7;
      if (((v16 + 7) & 7) != 0)
      {
LABEL_48:
        v23 = *(v4 + 4);
        if (v23 >= *(v4 + 3))
        {
          result = llvm::raw_ostream::write(v4, 32);
        }

        else
        {
          *(v4 + 4) = v23 + 1;
          *v23 = 32;
        }

        v7 = v16 + 8;
      }
    }

    else
    {
      *(v4 + 4) = v22 + 1;
      *v22 = 32;
      v7 = v16 + 7;
      if (((v16 + 7) & 7) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_5:
    v6 = v10 + 1;
    if (v10 + 1 == a3)
    {
      goto LABEL_57;
    }
  }

  if (a3 >= v8)
  {
    v24 = v8;
  }

  else
  {
    v24 = a3;
  }

  v25 = a3 - v24;
  result = *(v4 + 4);
  if (a3 - v24 <= *(v4 + 3) - result)
  {
    if (a3 > v8)
    {
      v26 = (a2 + v24);
      v27 = a3 - v24;
      result = memcpy(result, v26, v25);
      *(v4 + 4) += v27;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(v4, (a2 + v24), v25);
  }

LABEL_57:
  v28 = *(v4 + 4);
  if (v28 >= *(v4 + 3))
  {

    return llvm::raw_ostream::write(v4, 10);
  }

  else
  {
    *(v4 + 4) = v28 + 1;
    *v28 = 10;
  }

  return result;
}

__n128 std::vector<llvm::SourceMgr::SrcBuffer>::__move_assign(void *a1, __n128 *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 2);
        if (v7)
        {
          v8 = *v7;
          if (*v7)
          {
            *(v7 + 8) = v8;
            operator delete(v8);
          }

          MEMORY[0x259C63180](v7, 0x10C402FEFCB83);
          *(v5 - 2) = 0;
        }

        v10 = *(v5 - 3);
        v5 -= 3;
        v9 = v10;
        *v5 = 0;
        if (v10)
        {
          (*(*v9 + 8))(v9);
        }
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  result = *a2;
  *a1 = *a2;
  a1[2] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t GetOrCreateOffsetCache<unsigned char>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

void llvm::SmallVectorImpl<llvm::SMFixIt>::append<llvm::SMFixIt const*,void>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3);
  v6 = *(a1 + 8);
  if (v5 + v6 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (a2 != a3)
  {
    v7 = (*a1 + 40 * v6 + 16);
    v8 = a2 + 1;
    do
    {
      while (1)
      {
        *&v7[-1].__r_.__value_.__r.__words[1] = *(v8 - 1);
        if ((*(v8 + 23) & 0x80000000) == 0)
        {
          break;
        }

        std::string::__init_copy_ctor_external(v7, *v8, *(v8 + 1));
        v9 = v8 - 1;
        v7 = (v7 + 40);
        v8 = (v8 + 40);
        if ((v9 + 40) == a3)
        {
          goto LABEL_8;
        }
      }

      v10 = *v8;
      v7->__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v7->__r_.__value_.__l.__data_ = v10;
      v7 = (v7 + 40);
      v11 = v8 - 1;
      v8 = (v8 + 40);
    }

    while ((v11 + 40) != a3);
LABEL_8:
    LODWORD(v6) = *(a1 + 8);
  }

  *(a1 + 8) = v6 + v5;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, (v9 + 40), (a2 - 40));
        return;
      case 4uLL:

        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, (v9 + 40), (v9 + 80), (a2 - 40));
        return;
      case 5uLL:

        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, v9 + 40, v9 + 80, v9 + 120, a2 - 40);
        return;
    }

LABEL_10:
    if (v12 <= 959)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,llvm::SMFixIt *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 40 * (v13 >> 1);
    if (v12 < 0x1401)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v15, v9, (a2 - 40));
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v9, v15, (a2 - 40));
      v16 = v9 + 40;
      v17 = 40 * v14;
      v18 = (40 * v14 + a1 - 40);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 40), v18, a2 - 5);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 80), (v16 + v17), (a2 - 120));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v18, v15, (v16 + v17));
      v56 = *a1;
      *(&v58 + 7) = *(a1 + 31);
      v19 = *(a1 + 16);
      *&v58 = *(a1 + 24);
      v20 = *(a1 + 39);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v21 = *(v15 + 32);
      v22 = *(v15 + 16);
      *a1 = *v15;
      *(a1 + 16) = v22;
      *(a1 + 32) = v21;
      *v15 = v56;
      *(v15 + 16) = v19;
      *(v15 + 31) = *(&v58 + 7);
      *(v15 + 24) = v58;
      *(v15 + 39) = v20;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v23 = *(a1 - 40);
    v24 = v23 >= *a1;
    if (v23 == *a1 && (v25 = *(a1 - 32), v26 = *(a1 + 8), v24 = v25 >= v26, v25 == v26))
    {
      v30 = *(a1 + 39);
      v31 = *(a1 - 1);
      if (v31 >= 0)
      {
        v32 = (a1 - 24);
      }

      else
      {
        v32 = *(a1 - 24);
      }

      if (v31 >= 0)
      {
        v33 = *(a1 - 1);
      }

      else
      {
        v33 = *(a1 - 16);
      }

      if (v30 >= 0)
      {
        v34 = *(a1 + 39);
      }

      else
      {
        v34 = *(a1 + 24);
      }

      if (v30 >= 0)
      {
        v35 = (a1 + 16);
      }

      else
      {
        v35 = *(a1 + 16);
      }

      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v37 = memcmp(v32, v35, v36);
      v38 = v33 < v34;
      if (v37)
      {
        v38 = v37 < 0;
      }

      if (!v38)
      {
LABEL_41:
        v9 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(a1, a2);
LABEL_43:
        a5 = 0;
        a4 = -v11;
        goto LABEL_2;
      }
    }

    else if (v24)
    {
      goto LABEL_41;
    }

LABEL_19:
    v27 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(a1, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_42;
    }

    v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, v27);
    v9 = v27 + 40;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v27 + 40, a2))
    {
      a4 = -v11;
      a2 = v27;
      if (v29)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v29)
    {
LABEL_42:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(a1, v27, a3, -v11, a5 & 1);
      v9 = v27 + 40;
      goto LABEL_43;
    }
  }

  if (v13 < 2)
  {
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v40 = (a2 - 40);
  v39 = *(a2 - 5);
  v41 = v39 >= *v9;
  if (v39 != *v9 || (v42 = *(a2 - 4), v43 = *(v9 + 8), v41 = v42 >= v43, v42 != v43))
  {
    if (v41)
    {
      return;
    }

    goto LABEL_55;
  }

  v47 = *(v9 + 39);
  v48 = *(a2 - 1);
  if (v48 >= 0)
  {
    v49 = *(a2 - 1);
  }

  else
  {
    v49 = *(a2 - 2);
  }

  if (v48 >= 0)
  {
    v50 = a2 - 24;
  }

  else
  {
    v50 = *(a2 - 3);
  }

  if (v47 >= 0)
  {
    v51 = *(v9 + 39);
  }

  else
  {
    v51 = *(v9 + 24);
  }

  if (v47 >= 0)
  {
    v52 = (v9 + 16);
  }

  else
  {
    v52 = *(v9 + 16);
  }

  if (v51 >= v49)
  {
    v53 = v49;
  }

  else
  {
    v53 = v51;
  }

  v54 = memcmp(v50, v52, v53);
  v55 = v49 < v51;
  if (v54)
  {
    v55 = v54 < 0;
  }

  if (v55)
  {
LABEL_55:
    v57 = *v9;
    v44 = *(v9 + 16);
    *&v59 = *(v9 + 24);
    *(&v59 + 7) = *(v9 + 31);
    v45 = *(v9 + 39);
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 0;
    *v9 = *v40;
    v46 = *(a2 - 24);
    *(v9 + 32) = *(a2 - 1);
    *(v9 + 16) = v46;
    *v40 = v57;
    *(a2 - 3) = v44;
    *(a2 - 2) = v59;
    *(a2 - 9) = *(&v59 + 7);
    *(a2 - 1) = v45;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(__int128 *a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  if (*a2 == *a1)
  {
    v8 = a2[1];
    v9 = *(a1 + 1);
    if (v8 == v9)
    {
      v36 = a1 + 1;
      v37 = *(a1 + 39);
      v38 = a2 + 2;
      v39 = *(a2 + 39);
      if (v39 >= 0)
      {
        v40 = *(a2 + 39);
      }

      else
      {
        v40 = a2[3];
      }

      if (v39 < 0)
      {
        v38 = a2[2];
      }

      if (v37 >= 0)
      {
        v41 = *(a1 + 39);
      }

      else
      {
        v41 = *(a1 + 3);
      }

      if (v37 < 0)
      {
        v36 = *(a1 + 2);
      }

      if (v41 >= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = a1;
      v44 = a2;
      v45 = a3;
      v46 = memcmp(v38, v36, v42);
      a3 = v45;
      a2 = v44;
      v47 = v46;
      a1 = v43;
      v48 = v47 == 0;
      v49 = v47 < 0;
      if (v48)
      {
        v49 = v40 < v41;
      }

      if (!v49)
      {
        goto LABEL_8;
      }
    }

    else if (v8 >= v9)
    {
      goto LABEL_8;
    }

LABEL_3:
    if (*a3 == v3)
    {
      v24 = *(a3 + 1);
      v25 = a2[1];
      if (v24 == v25)
      {
        v63 = a2 + 2;
        v64 = *(a2 + 39);
        v65 = a3 + 1;
        v66 = *(a3 + 39);
        if (v66 >= 0)
        {
          v67 = *(a3 + 39);
        }

        else
        {
          v67 = *(a3 + 3);
        }

        if (v66 < 0)
        {
          v65 = *(a3 + 2);
        }

        if (v64 >= 0)
        {
          v68 = *(a2 + 39);
        }

        else
        {
          v68 = a2[3];
        }

        if (v64 < 0)
        {
          v63 = a2[2];
        }

        if (v68 >= v67)
        {
          v69 = v67;
        }

        else
        {
          v69 = v68;
        }

        v70 = a1;
        v71 = a2;
        v72 = a3;
        v73 = memcmp(v65, v63, v69);
        a3 = v72;
        a2 = v71;
        v74 = v73;
        a1 = v70;
        v48 = v74 == 0;
        v75 = v74 < 0;
        if (v48)
        {
          v75 = v67 < v68;
        }

        if (v75)
        {
          goto LABEL_5;
        }
      }

      else if (v24 < v25)
      {
        goto LABEL_5;
      }
    }

    else if (*a3 < v3)
    {
LABEL_5:
      v98 = *a1;
      v4 = *(a1 + 2);
      *&v103 = *(a1 + 3);
      *(&v103 + 7) = *(a1 + 31);
      v5 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a3;
      v6 = *(a3 + 4);
      a1[1] = a3[1];
      *(a1 + 4) = v6;
      *a3 = v98;
      *(a3 + 2) = v4;
      *(a3 + 3) = v103;
      *(a3 + 31) = *(&v103 + 7);
      result = 1;
      *(a3 + 39) = v5;
      return result;
    }

    v101 = *a1;
    v26 = *(a1 + 2);
    *&v106 = *(a1 + 3);
    *(&v106 + 7) = *(a1 + 31);
    v27 = *(a1 + 39);
    v28 = v27;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *a1 = *a2;
    v29 = a2 + 2;
    v30 = a2[4];
    a1[1] = *(a2 + 1);
    *(a1 + 4) = v30;
    *a2 = v101;
    a2[2] = v26;
    a2[3] = v106;
    v31 = (a2 + 3);
    *(a2 + 31) = *(&v106 + 7);
    *(a2 + 39) = v27;
    v32 = *a3 >= *a2;
    if (*a3 == *a2 && (v33 = *(a3 + 1), v34 = a2[1], v32 = v33 >= v34, v33 == v34))
    {
      v88 = *(a3 + 39);
      if (v88 >= 0)
      {
        v89 = *(a3 + 39);
      }

      else
      {
        v89 = *(a3 + 3);
      }

      if (v88 >= 0)
      {
        v90 = a3 + 1;
      }

      else
      {
        v90 = *(a3 + 2);
      }

      if ((v27 & 0x80u) == 0)
      {
        v91 = v27;
      }

      else
      {
        v91 = *v31;
      }

      if ((v27 & 0x80u) == 0)
      {
        v92 = a2 + 2;
      }

      else
      {
        v92 = v26;
      }

      if (v91 >= v89)
      {
        v93 = v89;
      }

      else
      {
        v93 = v91;
      }

      v94 = a2;
      v95 = a3;
      v96 = memcmp(v90, v92, v93);
      a3 = v95;
      a2 = v94;
      v97 = v89 < v91;
      if (v96)
      {
        v97 = v96 < 0;
      }

      if (v97)
      {
        goto LABEL_20;
      }
    }

    else if (!v32)
    {
LABEL_20:
      v102 = *a2;
      *&v107 = *v31;
      *(&v107 + 7) = *(v31 + 7);
      v29[1] = 0;
      v29[2] = 0;
      *v29 = 0;
      *a2 = *a3;
      v35 = *(a3 + 4);
      *v29 = a3[1];
      v29[2] = v35;
      *a3 = v102;
      *(a3 + 2) = v26;
      *(a3 + 3) = v107;
      *(a3 + 31) = *(&v107 + 7);
      result = 1;
      *(a3 + 39) = v28;
      return result;
    }

    return 1;
  }

  if (*a2 < *a1)
  {
    goto LABEL_3;
  }

LABEL_8:
  v10 = *a3 >= v3;
  if (*a3 != v3 || (v11 = *(a3 + 1), v12 = a2[1], v10 = v11 >= v12, v11 != v12))
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v50 = a2 + 2;
  v51 = *(a2 + 39);
  v52 = a3 + 1;
  v53 = *(a3 + 39);
  if (v53 >= 0)
  {
    v54 = *(a3 + 39);
  }

  else
  {
    v54 = *(a3 + 3);
  }

  if (v53 < 0)
  {
    v52 = *(a3 + 2);
  }

  if (v51 >= 0)
  {
    v55 = *(a2 + 39);
  }

  else
  {
    v55 = a2[3];
  }

  if (v51 < 0)
  {
    v50 = a2[2];
  }

  if (v55 >= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v55;
  }

  v57 = a1;
  v58 = a2;
  v59 = a3;
  v60 = memcmp(v52, v50, v56);
  a3 = v59;
  a2 = v58;
  v61 = v60;
  a1 = v57;
  v48 = v61 == 0;
  v62 = v61 < 0;
  if (v48)
  {
    v62 = v54 < v55;
  }

  if (!v62)
  {
    return 0;
  }

LABEL_11:
  v99 = *a2;
  v14 = a2 + 2;
  v13 = a2[2];
  v15 = a2 + 3;
  *&v104 = a2[3];
  *(&v104 + 7) = *(a2 + 31);
  v16 = *(a2 + 39);
  a2[2] = 0;
  a2[4] = 0;
  a2[3] = 0;
  *a2 = *a3;
  v17 = *(a3 + 4);
  *(a2 + 1) = a3[1];
  a2[4] = v17;
  *a3 = v99;
  *(a3 + 2) = v13;
  *(a3 + 3) = v104;
  *(a3 + 31) = *(&v104 + 7);
  *(a3 + 39) = v16;
  v18 = *a2 >= *a1;
  if (*a2 == *a1 && (v19 = a2[1], v20 = *(a1 + 1), v18 = v19 >= v20, v19 == v20))
  {
    v76 = a1 + 1;
    v77 = *(a1 + 39);
    v78 = *(a2 + 39);
    if (v78 >= 0)
    {
      v79 = *(a2 + 39);
    }

    else
    {
      v79 = a2[3];
    }

    if (v78 >= 0)
    {
      v80 = a2 + 2;
    }

    else
    {
      v80 = a2[2];
    }

    if (v77 >= 0)
    {
      v81 = *(a1 + 39);
    }

    else
    {
      v81 = *(a1 + 3);
    }

    if (v77 < 0)
    {
      v76 = *(a1 + 2);
    }

    if (v81 >= v79)
    {
      v82 = v79;
    }

    else
    {
      v82 = v81;
    }

    v83 = a1;
    v84 = a2;
    v85 = memcmp(v80, v76, v82);
    a2 = v84;
    v86 = v85;
    a1 = v83;
    v48 = v86 == 0;
    v87 = v86 < 0;
    if (v48)
    {
      v87 = v79 < v81;
    }

    if (v87)
    {
      goto LABEL_14;
    }
  }

  else if (!v18)
  {
LABEL_14:
    v100 = *a1;
    v21 = *(a1 + 2);
    *&v105 = *(a1 + 3);
    *(&v105 + 7) = *(a1 + 31);
    v22 = *(a1 + 39);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a1 + 2) = 0;
    *a1 = *a2;
    v23 = v14[2];
    a1[1] = *v14;
    *(a1 + 4) = v23;
    *a2 = v100;
    a2[2] = v21;
    *v15 = v105;
    *(v15 + 7) = *(&v105 + 7);
    result = 1;
    *(a2 + 39) = v22;
    return result;
  }

  return 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3);
  v9 = *a4 >= *a3;
  if (*a4 == *a3 && (v10 = *(a4 + 1), v11 = *(a3 + 1), v9 = v10 >= v11, v10 == v11))
  {
    v27 = *(a3 + 39);
    v28 = *(a4 + 39);
    if (v28 >= 0)
    {
      v29 = *(a4 + 39);
    }

    else
    {
      v29 = *(a4 + 3);
    }

    if (v28 >= 0)
    {
      v30 = a4 + 1;
    }

    else
    {
      v30 = *(a4 + 2);
    }

    if (v27 >= 0)
    {
      v31 = *(a3 + 39);
    }

    else
    {
      v31 = *(a3 + 3);
    }

    if (v27 >= 0)
    {
      v32 = a3 + 1;
    }

    else
    {
      v32 = *(a3 + 2);
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    result = memcmp(v30, v32, v33);
    v34 = v29 < v31;
    if (result)
    {
      v34 = result < 0;
    }

    if (!v34)
    {
      return result;
    }
  }

  else if (v9)
  {
    return result;
  }

  v51 = *a3;
  v12 = *(a3 + 2);
  *&v54 = *(a3 + 3);
  *(&v54 + 7) = *(a3 + 31);
  v13 = *(a3 + 39);
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v14 = *(a4 + 4);
  a3[1] = a4[1];
  *(a3 + 4) = v14;
  *a4 = v51;
  *(a4 + 2) = v12;
  *(a4 + 3) = v54;
  *(a4 + 31) = *(&v54 + 7);
  *(a4 + 39) = v13;
  v15 = *a3 >= *a2;
  if (*a3 == *a2 && (v16 = *(a3 + 1), v17 = *(a2 + 1), v15 = v16 >= v17, v16 == v17))
  {
    v35 = *(a2 + 39);
    v36 = *(a3 + 39);
    if (v36 >= 0)
    {
      v37 = *(a3 + 39);
    }

    else
    {
      v37 = *(a3 + 3);
    }

    if (v36 >= 0)
    {
      v38 = a3 + 1;
    }

    else
    {
      v38 = *(a3 + 2);
    }

    if (v35 >= 0)
    {
      v39 = *(a2 + 39);
    }

    else
    {
      v39 = *(a2 + 3);
    }

    if (v35 >= 0)
    {
      v40 = a2 + 1;
    }

    else
    {
      v40 = *(a2 + 2);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      return result;
    }
  }

  else if (v15)
  {
    return result;
  }

  v52 = *a2;
  v18 = *(a2 + 2);
  *&v55 = *(a2 + 3);
  *(&v55 + 7) = *(a2 + 31);
  v19 = *(a2 + 39);
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v20 = *(a3 + 4);
  a2[1] = a3[1];
  *(a2 + 4) = v20;
  *a3 = v52;
  *(a3 + 2) = v18;
  *(a3 + 3) = v55;
  *(a3 + 31) = *(&v55 + 7);
  *(a3 + 39) = v19;
  v21 = *a2 >= *a1;
  if (*a2 != *a1 || (v22 = *(a2 + 1), v23 = *(a1 + 8), v21 = v22 >= v23, v22 != v23))
  {
    if (v21)
    {
      return result;
    }

    goto LABEL_10;
  }

  v43 = *(a1 + 39);
  v44 = *(a2 + 39);
  if (v44 >= 0)
  {
    v45 = *(a2 + 39);
  }

  else
  {
    v45 = *(a2 + 3);
  }

  if (v44 >= 0)
  {
    v46 = a2 + 1;
  }

  else
  {
    v46 = *(a2 + 2);
  }

  if (v43 >= 0)
  {
    v47 = *(a1 + 39);
  }

  else
  {
    v47 = *(a1 + 24);
  }

  if (v43 >= 0)
  {
    v48 = (a1 + 16);
  }

  else
  {
    v48 = *(a1 + 16);
  }

  if (v47 >= v45)
  {
    v49 = v45;
  }

  else
  {
    v49 = v47;
  }

  result = memcmp(v46, v48, v49);
  v50 = v45 < v47;
  if (result)
  {
    v50 = result < 0;
  }

  if (v50)
  {
LABEL_10:
    v53 = *a1;
    v24 = *(a1 + 16);
    *&v56 = *(a1 + 24);
    *(&v56 + 7) = *(a1 + 31);
    v25 = *(a1 + 39);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    v26 = *(a2 + 4);
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v26;
    *a2 = v53;
    *(a2 + 2) = v24;
    *(a2 + 3) = v56;
    *(a2 + 31) = *(&v56 + 7);
    *(a2 + 39) = v25;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3, a4);
  v11 = *a5 >= *a4;
  if (*a5 == *a4 && (v12 = *(a5 + 8), v13 = *(a4 + 8), v11 = v12 >= v13, v12 == v13))
  {
    v35 = *(a4 + 39);
    v36 = *(a5 + 39);
    if (v36 >= 0)
    {
      v37 = *(a5 + 39);
    }

    else
    {
      v37 = *(a5 + 24);
    }

    if (v36 >= 0)
    {
      v38 = (a5 + 16);
    }

    else
    {
      v38 = *(a5 + 16);
    }

    if (v35 >= 0)
    {
      v39 = *(a4 + 39);
    }

    else
    {
      v39 = *(a4 + 24);
    }

    if (v35 >= 0)
    {
      v40 = (a4 + 16);
    }

    else
    {
      v40 = *(a4 + 16);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  v67 = *a4;
  v14 = *(a4 + 16);
  *&v71 = *(a4 + 24);
  *(&v71 + 7) = *(a4 + 31);
  v15 = *(a4 + 39);
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 24) = 0;
  *a4 = *a5;
  v16 = *(a5 + 32);
  *(a4 + 16) = *(a5 + 16);
  *(a4 + 32) = v16;
  *a5 = v67;
  *(a5 + 16) = v14;
  *(a5 + 24) = v71;
  *(a5 + 31) = *(&v71 + 7);
  *(a5 + 39) = v15;
  v17 = *a4 >= *a3;
  if (*a4 == *a3 && (v18 = *(a4 + 8), v19 = *(a3 + 8), v17 = v18 >= v19, v18 == v19))
  {
    v43 = *(a3 + 39);
    v44 = *(a4 + 39);
    if (v44 >= 0)
    {
      v45 = *(a4 + 39);
    }

    else
    {
      v45 = *(a4 + 24);
    }

    if (v44 >= 0)
    {
      v46 = (a4 + 16);
    }

    else
    {
      v46 = *(a4 + 16);
    }

    if (v43 >= 0)
    {
      v47 = *(a3 + 39);
    }

    else
    {
      v47 = *(a3 + 24);
    }

    if (v43 >= 0)
    {
      v48 = (a3 + 16);
    }

    else
    {
      v48 = *(a3 + 16);
    }

    if (v47 >= v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = v47;
    }

    result = memcmp(v46, v48, v49);
    v50 = v45 < v47;
    if (result)
    {
      v50 = result < 0;
    }

    if (!v50)
    {
      return result;
    }
  }

  else if (v17)
  {
    return result;
  }

  v68 = *a3;
  v20 = *(a3 + 16);
  *&v72 = *(a3 + 24);
  *(&v72 + 7) = *(a3 + 31);
  v21 = *(a3 + 39);
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 24) = 0;
  *a3 = *a4;
  v22 = *(a4 + 32);
  *(a3 + 16) = *(a4 + 16);
  *(a3 + 32) = v22;
  *a4 = v68;
  *(a4 + 16) = v20;
  *(a4 + 24) = v72;
  *(a4 + 31) = *(&v72 + 7);
  *(a4 + 39) = v21;
  v23 = *a3 >= *a2;
  if (*a3 == *a2 && (v24 = *(a3 + 8), v25 = *(a2 + 8), v23 = v24 >= v25, v24 == v25))
  {
    v51 = *(a2 + 39);
    v52 = *(a3 + 39);
    if (v52 >= 0)
    {
      v53 = *(a3 + 39);
    }

    else
    {
      v53 = *(a3 + 24);
    }

    if (v52 >= 0)
    {
      v54 = (a3 + 16);
    }

    else
    {
      v54 = *(a3 + 16);
    }

    if (v51 >= 0)
    {
      v55 = *(a2 + 39);
    }

    else
    {
      v55 = *(a2 + 24);
    }

    if (v51 >= 0)
    {
      v56 = (a2 + 16);
    }

    else
    {
      v56 = *(a2 + 16);
    }

    if (v55 >= v53)
    {
      v57 = v53;
    }

    else
    {
      v57 = v55;
    }

    result = memcmp(v54, v56, v57);
    v58 = v53 < v55;
    if (result)
    {
      v58 = result < 0;
    }

    if (!v58)
    {
      return result;
    }
  }

  else if (v23)
  {
    return result;
  }

  v69 = *a2;
  v26 = *(a2 + 16);
  *&v73 = *(a2 + 24);
  *(&v73 + 7) = *(a2 + 31);
  v27 = *(a2 + 39);
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *a2 = *a3;
  v28 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v28;
  *a3 = v69;
  *(a3 + 16) = v26;
  *(a3 + 24) = v73;
  *(a3 + 31) = *(&v73 + 7);
  *(a3 + 39) = v27;
  v29 = *a2 >= *a1;
  if (*a2 != *a1 || (v30 = *(a2 + 8), v31 = *(a1 + 8), v29 = v30 >= v31, v30 != v31))
  {
    if (v29)
    {
      return result;
    }

    goto LABEL_13;
  }

  v59 = *(a1 + 39);
  v60 = *(a2 + 39);
  if (v60 >= 0)
  {
    v61 = *(a2 + 39);
  }

  else
  {
    v61 = *(a2 + 24);
  }

  if (v60 >= 0)
  {
    v62 = (a2 + 16);
  }

  else
  {
    v62 = *(a2 + 16);
  }

  if (v59 >= 0)
  {
    v63 = *(a1 + 39);
  }

  else
  {
    v63 = *(a1 + 24);
  }

  if (v59 >= 0)
  {
    v64 = (a1 + 16);
  }

  else
  {
    v64 = *(a1 + 16);
  }

  if (v63 >= v61)
  {
    v65 = v61;
  }

  else
  {
    v65 = v63;
  }

  result = memcmp(v62, v64, v65);
  v66 = v61 < v63;
  if (result)
  {
    v66 = result < 0;
  }

  if (v66)
  {
LABEL_13:
    v70 = *a1;
    v32 = *(a1 + 16);
    *&v74 = *(a1 + 24);
    *(&v74 + 7) = *(a1 + 31);
    v33 = *(a1 + 39);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    v34 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v34;
    *a2 = v70;
    *(a2 + 16) = v32;
    *(a2 + 24) = v74;
    *(a2 + 31) = *(&v74 + 7);
    *(a2 + 39) = v33;
  }

  return result;
}