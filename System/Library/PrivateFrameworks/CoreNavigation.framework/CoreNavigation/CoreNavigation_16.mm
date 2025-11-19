void sub_1D0C6B0A0(_Unwind_Exception *exception_object)
{
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
  _Unwind_Resume(exception_object);
}

BOOL cnnavigation::NORADTLEEphemerides::LoadNORADTLEFromStrings(uint64_t a1, const std::string *a2, std::string *__str, std::string *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v12 < 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size != 69)
    {
      LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
      v78.__r_.__value_.__s.__data_[0] = 3;
      LOBYTE(v12) = size;
      goto LABEL_9;
    }
  }

  else if (v12 != 69)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
LABEL_9:
    cnprint::CNPrinter::Print(&__stra, &v78, "LoadNORADTLEFromStrings unexpected TLE line 1 length %zu", a4, a5, a6, a7, a8, v12);
    return 0;
  }

  v14 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if (v14 < 0)
  {
    v15 = a4->__r_.__value_.__l.__size_;
    if (v15 != 69)
    {
      LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
      v78.__r_.__value_.__s.__data_[0] = 3;
      LOBYTE(v14) = v15;
      goto LABEL_15;
    }
  }

  else if (v14 != 69)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
LABEL_15:
    cnprint::CNPrinter::Print(&__stra, &v78, "LoadNORADTLEFromStrings unexpected TLE line 2 length %zu", a4, a5, a6, a7, a8, v14);
    return 0;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v16 = __str->__r_.__value_.__s.__data_[0];
    if (v16 == 49)
    {
      v17 = __str->__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }

LABEL_19:
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    v76 = v16;
    v18 = "LoadNORADTLEFromStrings unexpected TLE line 1 character 1: %c";
LABEL_20:
    cnprint::CNPrinter::Print(&__stra, &v78, v18, a4, a5, a6, a7, a8, v76);
    return 0;
  }

  v17 = __str->__r_.__value_.__r.__words[0];
  v16 = *__str->__r_.__value_.__l.__data_;
  if (v16 != 49)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((*(v17 + 68) - 58) <= 0xF5u)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    cnprint::CNPrinter::Print(&__stra, &v78, "LoadNORADTLEFromStrings unexpected TLE line 1 character %u: %c", a4, a5, a6, a7, a8, 69);
    return 0;
  }

  if ((v14 & 0x80000000) == 0)
  {
    v21 = a4->__r_.__value_.__s.__data_[0];
    if (v21 == 50)
    {
      v22 = a4->__r_.__value_.__r.__words[0];
      goto LABEL_27;
    }

LABEL_29:
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    cnprint::CNPrinter::Print(&__stra, &v78, "LoadNORADTLEFromStrings unexpected TLE line 2 character 1: %c", a4, a5, a6, a7, a8, v21);
    return 0;
  }

  v22 = a4->__r_.__value_.__r.__words[0];
  v21 = *a4->__r_.__value_.__l.__data_;
  if (v21 != 50)
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((*(v22 + 68) - 58) <= 0xF5u)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    cnprint::CNPrinter::Print(&__stra, &v78, "LoadNORADTLEFromStrings unexpected TLE line 2 character %u: %c", a4, a5, a6, a7, a8, 69);
    return 0;
  }

  std::string::basic_string(&__stra, __str, 2uLL, 5uLL, &v78);
  std::string::basic_string(&v78, a4, 2uLL, 5uLL, &v77);
  v23 = sub_1D0C6BF78(&__stra, &v78);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  if (!v23)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    v18 = "LoadNORADTLEFromStrings lines 1 & 2 satellite number mismatch";
    goto LABEL_20;
  }

  v24 = cnnavigation::NORADTLEEphemerides::TLECheckSum(__str);
  if (v24 >= 0xB)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    v18 = "LoadNORADTLEFromStrings TLE line 1 checksum computation failed.";
    goto LABEL_20;
  }

  v25 = *(__str->__r_.__value_.__r.__words[0] + 68);
  if ((v24 | 0x30) != v25)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    cnprint::CNPrinter::Print(&__stra, &v78, "LoadNORADTLEFromStrings TLE line 1 checksum mismatch: %c vs. %c.", a4, a5, a6, a7, a8, v25);
    return 0;
  }

  v26 = cnnavigation::NORADTLEEphemerides::TLECheckSum(a4);
  if (v26 >= 0xB)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    v18 = "LoadNORADTLEFromStrings TLE line 2 checksum computation failed.";
    goto LABEL_20;
  }

  v27 = *(a4->__r_.__value_.__r.__words[0] + 68);
  if ((v26 | 0x30) != v27)
  {
    LOWORD(__stra.__r_.__value_.__l.__data_) = 5;
    v78.__r_.__value_.__s.__data_[0] = 3;
    cnprint::CNPrinter::Print(&__stra, &v78, "LoadNORADTLEFromStrings TLE line 2 checksum mismatch: %c vs. %c.", a4, a5, a6, a7, a8, v27);
    return 0;
  }

  *(a1 + 8) = 0;
  std::string::operator=((a1 + 88), a2);
  sub_1D0B751F4(&__stra, &unk_1D0ED80C5);
  sub_1D0B751F4(&v78, &unk_1D0ED80C5);
  std::string::basic_string(&v77, __str, 2uLL, 5uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 112) = std::stoul(&__stra, 0, 10);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = *(__str->__r_.__value_.__r.__words[0] + 7);
  }

  else
  {
    v28 = __str->__r_.__value_.__s.__data_[7];
  }

  v29 = v28 != 85 && v28 != 117;
  *(a1 + 116) = v29;
  std::string::basic_string(&v77, __str, 9uLL, 2uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  v30 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  v31 = v77.__r_.__value_.__r.__words[0];
  p_stra = &__stra;
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v77.__r_.__value_.__l.__size_;
    p_stra = v77.__r_.__value_.__r.__words[0];
  }

  if (!v30)
  {
    goto LABEL_62;
  }

  v33 = 0;
  while (p_stra->__r_.__value_.__s.__data_[v33] == 32)
  {
    if (v30 == ++v33)
    {
      goto LABEL_62;
    }
  }

  if (v33 == -1)
  {
LABEL_62:
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      __stra.__r_.__value_.__l.__size_ = 1;
    }

    else
    {
      *(&__stra.__r_.__value_.__s + 23) = 1;
      v31 = &__stra;
    }

    LOWORD(v31->__r_.__value_.__l.__data_) = 48;
  }

  v34 = std::stoul(&__stra, 0, 10);
  if (v34 >= 0x39)
  {
    v35 = 1900;
  }

  else
  {
    v35 = 2000;
  }

  *(a1 + 120) = v35 + v34;
  std::string::basic_string(&v77, __str, 0xBuLL, 3uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  v36 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  v37 = v77.__r_.__value_.__r.__words[0];
  v38 = &__stra;
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v36 = v77.__r_.__value_.__l.__size_;
    v38 = v77.__r_.__value_.__r.__words[0];
  }

  if (!v36)
  {
    goto LABEL_79;
  }

  v39 = 0;
  while (v38->__r_.__value_.__s.__data_[v39] == 32)
  {
    if (v36 == ++v39)
    {
      goto LABEL_79;
    }
  }

  if (v39 == -1)
  {
LABEL_79:
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      __stra.__r_.__value_.__l.__size_ = 1;
    }

    else
    {
      *(&__stra.__r_.__value_.__s + 23) = 1;
      v37 = &__stra;
    }

    LOWORD(v37->__r_.__value_.__l.__data_) = 48;
  }

  *(a1 + 124) = std::stoul(&__stra, 0, 10);
  std::string::basic_string(&v77, __str, 0xEuLL, 3uLL, &v80);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 128) = v77;
  std::string::basic_string(&v77, __str, 0x12uLL, 2uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  v40 = std::stoul(&__stra, 0, 10);
  if (v40 >= 0x39)
  {
    v41 = 1900;
  }

  else
  {
    v41 = 2000;
  }

  *(a1 + 152) = v41 + v40;
  std::string::basic_string(&v77, __str, 0x14uLL, 0xCuLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 160) = std::stod(&__stra, 0);
  std::string::basic_string(&v77, __str, 0x21uLL, 0xAuLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  v42 = std::stod(&__stra, 0);
  *(a1 + 232) = v42 + v42;
  std::string::basic_string(&v77, __str, 0x2CuLL, 6uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  v43 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  v44 = v77.__r_.__value_.__r.__words[0];
  v45 = &__stra;
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = v77.__r_.__value_.__l.__size_;
    v45 = v77.__r_.__value_.__r.__words[0];
  }

  if (!v43)
  {
    goto LABEL_104;
  }

  v46 = 0;
  while (v45->__r_.__value_.__s.__data_[v46] == 32)
  {
    if (v43 == ++v46)
    {
      goto LABEL_104;
    }
  }

  if (v46 == -1)
  {
LABEL_104:
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      __stra.__r_.__value_.__l.__size_ = 1;
    }

    else
    {
      *(&__stra.__r_.__value_.__s + 23) = 1;
      v44 = &__stra;
    }

    LOWORD(v44->__r_.__value_.__l.__data_) = 48;
  }

  std::string::basic_string(&v77, __str, 0x32uLL, 2uLL, &v80);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v78 = v77;
  v47 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  v48 = v77.__r_.__value_.__r.__words[0];
  v49 = &v78;
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = v77.__r_.__value_.__l.__size_;
    v49 = v77.__r_.__value_.__r.__words[0];
  }

  if (!v47)
  {
    goto LABEL_118;
  }

  v50 = 0;
  while (v49->__r_.__value_.__s.__data_[v50] == 32)
  {
    if (v47 == ++v50)
    {
      goto LABEL_118;
    }
  }

  if (v50 == -1)
  {
LABEL_118:
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      v78.__r_.__value_.__l.__size_ = 1;
    }

    else
    {
      *(&v78.__r_.__value_.__s + 23) = 1;
      v48 = &v78;
    }

    LOWORD(v48->__r_.__value_.__l.__data_) = 48;
  }

  v51 = std::stod(&__stra, 0);
  v52 = std::stoi(&v78, 0, 10);
  *(a1 + 240) = v51 * 6.0 * __exp10((v52 - 5));
  std::string::basic_string(&v77, __str, 0x35uLL, 6uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  v53 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  v54 = v77.__r_.__value_.__r.__words[0];
  v55 = &__stra;
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v53 = v77.__r_.__value_.__l.__size_;
    v55 = v77.__r_.__value_.__r.__words[0];
  }

  if (!v53)
  {
    goto LABEL_132;
  }

  v56 = 0;
  while (v55->__r_.__value_.__s.__data_[v56] == 32)
  {
    if (v53 == ++v56)
    {
      goto LABEL_132;
    }
  }

  if (v56 == -1)
  {
LABEL_132:
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      __stra.__r_.__value_.__l.__size_ = 1;
    }

    else
    {
      *(&__stra.__r_.__value_.__s + 23) = 1;
      v54 = &__stra;
    }

    LOWORD(v54->__r_.__value_.__l.__data_) = 48;
  }

  std::string::basic_string(&v77, __str, 0x3BuLL, 2uLL, &v80);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v78 = v77;
  v57 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  v58 = v77.__r_.__value_.__r.__words[0];
  v59 = &v78;
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v57 = v77.__r_.__value_.__l.__size_;
    v59 = v77.__r_.__value_.__r.__words[0];
  }

  if (!v57)
  {
    goto LABEL_146;
  }

  v60 = 0;
  while (v59->__r_.__value_.__s.__data_[v60] == 32)
  {
    if (v57 == ++v60)
    {
      goto LABEL_146;
    }
  }

  if (v60 == -1)
  {
LABEL_146:
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      v78.__r_.__value_.__l.__size_ = 1;
    }

    else
    {
      *(&v78.__r_.__value_.__s + 23) = 1;
      v58 = &v78;
    }

    LOWORD(v58->__r_.__value_.__l.__data_) = 48;
  }

  v61 = std::stod(&__stra, 0);
  v62 = std::stoi(&v78, 0, 10);
  *(a1 + 192) = v61 * __exp10((v62 - 5));
  v63 = *(__str->__r_.__value_.__r.__words[0] + 62);
  v64 = v63 - 49;
  v65 = v63 - 48;
  if (v64 >= 5)
  {
    v65 = 0;
  }

  *(a1 + 117) = v65;
  std::string::basic_string(&v77, __str, 0x40uLL, 4uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 188) = std::stoul(&__stra, 0, 10);
  std::string::basic_string(&v77, a4, 8uLL, 8uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 208) = std::stod(&__stra, 0);
  std::string::basic_string(&v77, a4, 0x11uLL, 8uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 256) = std::stod(&__stra, 0);
  std::string::basic_string(&v77, a4, 0x1AuLL, 7uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 200) = std::stod(&__stra, 0) * 0.0000001;
  std::string::basic_string(&v77, a4, 0x22uLL, 8uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 248) = std::stod(&__stra, 0);
  std::string::basic_string(&v77, a4, 0x2BuLL, 8uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 216) = std::stod(&__stra, 0);
  std::string::basic_string(&v77, a4, 0x34uLL, 0xBuLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 224) = std::stod(&__stra, 0);
  std::string::basic_string(&v77, a4, 0x3FuLL, 5uLL, &v80);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  __stra = v77;
  *(a1 + 184) = std::stoul(&__stra, 0, 10);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  v66 = *(a1 + 152);
  v67 = *(a1 + 160);
  __stra.__r_.__value_.__r.__words[0] = __PAIR64__(vcvtmd_s64_f64(v67), v66);
  *&__stra.__r_.__value_.__l.__size_ = v67 - floor(v67);
  cnnavigation::DayOfYearTimeToJulianTime(&__stra, a1 + 168);
  v19 = v73 == 0;
  if (v73)
  {
    LOWORD(v78.__r_.__value_.__l.__data_) = 5;
    v77.__r_.__value_.__s.__data_[0] = 3;
    cnprint::CNPrinter::Print(&v78, &v77, "LoadNORADTLEFromStrings failed time conversion: doy,%d,%d,%.3lf", v68, v69, v70, v71, v72, v66);
  }

  else
  {
    v74 = *(a1 + 224);
    v75 = vmulq_f64(*(a1 + 208), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    *(a1 + 256) = *(a1 + 256) * 0.0174532925;
    *(a1 + 208) = v75;
    *(a1 + 224) = vmulq_f64(v74, xmmword_1D0E779A0);
    *(a1 + 240) = vmulq_f64(*(a1 + 240), xmmword_1D0E779B0);
    *(a1 + 8) = 1;
  }

  return v19;
}

BOOL sub_1D0C6BF78(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t cnnavigation::NORADTLEEphemerides::TLECheckSum(std::string *__str)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size != 69)
  {
    return 0xFFFFFFFFLL;
  }

  std::string::basic_string(&v10, __str, 0, 0x44uLL, &v11);
  v2 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v10;
  }

  else
  {
    v3 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v2 = v10.__r_.__value_.__l.__size_;
  }

  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = v3->__r_.__value_.__s.__data_[0];
      v3 = (v3 + 1);
      v6 = v5 - 48;
      v7 = v4 + v5 - 48;
      if (v5 == 45)
      {
        ++v4;
      }

      if (v6 < 0xA)
      {
        v4 = v7;
      }

      --v2;
    }

    while (v2);
    v8 = (v4 % 10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_20:
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return v8;
}

char *cnnavigation::NORADTLEEphemerides::SatelliteName@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[111] < 0)
  {
    return sub_1D0BC39B4(a2, *(this + 11), *(this + 12));
  }

  *a2 = *(this + 88);
  *(a2 + 16) = *(this + 13);
  return this;
}

uint64_t cnnavigation::NORADTLEEphemerides::GNSSFindSat(cnnavigation::NORADTLEEphemerides *a1, double *a2, cnnavigation::GNSSUTCParameters *this, __int128 *a4, __int128 *a5, void *a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (cnnavigation::GNSSUTCParameters::IsValid(this))
  {
    if (cnnavigation::TAITime::ToJulianTime(a2, this, v73))
    {
      v74 = 5;
      LOBYTE(v72.f64[0]) = 3;
      v68 = *(this + 10);
      v69 = *(this + 16);
      v64 = *(this + 7) + *(this + 6);
      v63 = *(this + 1);
      v61 = a2[1] + *a2;
      cnprint::CNPrinter::Print(&v74, &v72, "NORADTLEEphemerides::GNSSFindSat failed JulianTime (UTC) conversion tai,%.3lf,sv,%hhu,t_ls,%.3lf,curr_ls,%d,fut_ls,%d", v17, v18, v19, v20, v21, SLOBYTE(v61));
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v74 = 5;
    LOBYTE(v72.f64[0]) = 2;
    cnprint::CNPrinter::Print(&v74, &v72, "NORADTLEEphemerides::GNSSFindSat called with invalid UTC model", v12, v13, v14, v15, v16, v60);
    v74 = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    *&v72.f64[0] = cnnavigation::TAITime::ToGPSTime(a2, &v74);
    v72.f64[1] = v22;
    if (cnnavigation::GPSTimeToJulianTime(v72.f64, 0, v73))
    {
      v74 = 5;
      LOBYTE(v71) = 3;
      *&v62 = a2[1] + *a2;
      v28 = "NORADTLEEphemerides::GNSSFindSat failed JulianTime conversion tai,%.3lf";
      v29 = &v74;
      v30 = &v71;
LABEL_7:
      cnprint::CNPrinter::Print(v29, v30, v28, v23, v24, v25, v26, v27, v62);
      return 0xFFFFFFFFLL;
    }
  }

  v33 = cnnavigation::NORADTLEEphemerides::InitializeSGP4(a1);
  if (v33)
  {
    v31 = v33;
    v74 = 5;
    LOBYTE(v72.f64[0]) = 3;
    cnprint::CNPrinter::Print(&v74, &v72, "NORADTLEEphemerides::GNSSFindSat InitializeSGP4 failed,code,%d", v34, v35, v36, v37, v38, v33);
  }

  else
  {
    v39 = cnnavigation::NORADTLEEphemerides::SGP4(a1, v73, &v74, &v72, v35, v36, v37, v38);
    if (v39)
    {
      v31 = v39;
      v71 = 5;
      v70 = 3;
      cnprint::CNPrinter::Print(&v71, &v70, "NORADTLEEphemerides::GNSSFindSat SGP4 failed,code,%d", v40, v41, v42, v43, v44, v39);
    }

    else
    {
      v46 = cnnavigation::NORADTLEEphemerides::ECIToECEF(v39, v73, &v74);
      v47 = 0;
      *a4 = v46;
      *(a4 + 1) = v48;
      *(a4 + 2) = v49;
      do
      {
        *(a4 + v47) = *(a4 + v47) * 1000.0;
        v47 += 8;
      }

      while (v47 != 24);
      v50 = cnnavigation::NORADTLEEphemerides::ECIToECEF(v45, v73, &v72);
      v51 = 0;
      *a5 = v50;
      *(a5 + 1) = v52;
      *(a5 + 2) = v53;
      do
      {
        *(a5 + v51) = *(a5 + v51) * 1000.0;
        v51 += 8;
      }

      while (v51 != 24);
      v54 = 0;
      v55 = *(a5 + 1);
      *a5 = *a5 + *(a4 + 1) * 0.0000729211515;
      *(a5 + 1) = v55 + *a4 * -0.0000729211515;
      *a6 = 0;
      a6[1] = 0;
      a6[2] = 0;
      v56 = 0.0;
      do
      {
        if ((*(a4 + v54) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          v71 = 5;
          v70 = 3;
          v66 = *(a4 + 2);
          v62 = *a4;
          v28 = "NORADTLEEphemerides::GNSSFindSat invalid SV position %.3lf,%.3lf,%.3lf";
          goto LABEL_24;
        }

        v56 = v56 + *(a4 + v54) * *(a4 + v54);
        v54 += 8;
      }

      while (v54 != 24);
      if (sqrt(v56) < 6341752.3)
      {
        v71 = 5;
        v70 = 3;
        v65 = *(a4 + 2);
        v62 = *a4;
        v28 = "NORADTLEEphemerides::GNSSFindSat decayed SV position %.3lf,%.3lf,%.3lf";
LABEL_24:
        v29 = &v71;
        v30 = &v70;
        goto LABEL_7;
      }

      for (i = 0; i != 24; i += 8)
      {
        if ((*(a5 + i) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a5 + i) > 299792458.0)
        {
          v71 = 5;
          v70 = 3;
          v67 = *(a5 + 2);
          v62 = *a5;
          v28 = "NORADTLEEphemerides::GNSSFindSat invalid SV velocity %.3lf,%.3lf,%.3lf";
          goto LABEL_24;
        }
      }

      v58 = 0;
      while (1)
      {
        v59 = a6[v58];
        if ((v59 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          break;
        }

        if (++v58 == 3)
        {
          goto LABEL_35;
        }
      }

      v71 = 5;
      v70 = 3;
      cnprint::CNPrinter::Print(&v71, &v70, "NORADTLEEphemerides::GNSSFindSat invalid SV acceleration %.3lf,%.3lf,%.3lf", v23, v24, v25, v26, v27, 0);
LABEL_35:
      if ((v59 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v31;
}

uint64_t cnnavigation::NORADTLEEphemerides::InitializeSGP4(cnnavigation::NORADTLEEphemerides *this)
{
  v252 = *MEMORY[0x1E69E9840];
  memset(v251, 0, 207);
  memset(__src, 0, sizeof(__src));
  v250 = 0;
  v248 = 0u;
  v249 = 0u;
  *(this + 132) = 0;
  v2 = v251[11];
  *(this + 426) = v251[10];
  *(this + 442) = v2;
  *(this + 457) = *(&v251[11] + 15);
  v3 = v251[7];
  *(this + 362) = v251[6];
  *(this + 378) = v3;
  v4 = v251[9];
  *(this + 394) = v251[8];
  *(this + 410) = v4;
  v5 = v251[3];
  *(this + 298) = v251[2];
  *(this + 314) = v5;
  v6 = v251[5];
  *(this + 330) = v251[4];
  *(this + 346) = v6;
  v7 = v251[1];
  *(this + 266) = v251[0];
  *(this + 282) = v7;
  memcpy(this + 473, __src, 0x1BFuLL);
  v8 = *(this + 42);
  v9 = *(this + 32);
  __x = *(this + 31);
  *(this + 115) = __x;
  v11 = *(this + 25);
  v10 = *(this + 26);
  *(this + 116) = v11;
  *(this + 117) = v10;
  v12 = *(this + 28);
  v238 = *(this + 27);
  *(this + 118) = v238;
  v235 = v9;
  *(this + 120) = v9;
  v186 = v11;
  v225 = v11 * v11;
  v13 = sqrt(1.0 - v11 * v11);
  v184 = v10;
  v14 = __sincos_stret(v10);
  v211 = v14.__cosval * v14.__cosval;
  v15 = pow(0.0743669161 / v12, 0.666666667);
  v226 = v13;
  v16 = (v14.__cosval * v14.__cosval * 3.0 + -1.0) * 0.000811962 / ((1.0 - v225) * v13);
  v17 = 1.0 - v16 / (v15 * v15) * (v16 / (v15 * v15)) - v16 / (v15 * v15) * (v16 / (v15 * v15) * (v16 / (v15 * v15) * 134.0) / 81.0 + 0.333333333);
  v18 = v12 / (v16 / (v15 * v17 * (v15 * v17)) + 1.0);
  *(this + 119) = v18;
  v19 = pow(0.0743669161 / v18, 0.666666667);
  v244 = -(v211 * -5.0 + 1.0) - v211 - v211;
  *(this + 35) = v244;
  v20 = (v8 - 2451545) / 36525.0;
  v21 = *(this + 22);
  v22 = fmod(v20 * v20 * 0.093104 + v20 * (v20 * v20) * -0.0000062 + v20 * 3164400180.0 + 67310.5484, 86400.0);
  v232 = v21;
  *(this + 97) = fmod(v22 * 0.0000727220522 + ((v21 / 36525.0 + v20) * 5.9006e-11 + 1.00273791 + (v21 / 36525.0 + v20) * (v21 / 36525.0 + v20) * -5.9e-15) * 6.28318531 * v21, 6.28318531);
  v228 = 1.0 - v225;
  if (1.0 - v225 < 0.0 && v18 < 0.0)
  {
    goto LABEL_61;
  }

  v27 = (1.0 - v186) * v19;
  *(this + 265) = v27 < 1.03449284;
  v28 = (v27 + -1.0) * 6378.135;
  v185 = v18;
  if (v28 >= 156.0)
  {
    v32 = 1.01222928;
    v31 = 0.00000000188027916;
  }

  else
  {
    v29 = v28 + -78.0;
    if (v28 < 98.0)
    {
      v29 = 20.0;
    }

    v30 = (120.0 - v29) / 6378.135 * ((120.0 - v29) / 6378.135);
    v31 = v30 * v30;
    v32 = v29 / 6378.135 + 1.0;
  }

  v212 = 1.0 / ((1.0 - v225) * v19 * ((1.0 - v225) * v19));
  v182 = v32;
  v33 = 1.0 / (v19 - v32);
  v34 = v186 * v19 * v33;
  *(this + 43) = v34;
  v35 = v34 * v34;
  v37 = vabdd_f64(1.0, v34 * v34);
  v38 = v31 * (v33 * v33 * (v33 * v33));
  v39 = v38 / pow(v37, 3.5);
  v217 = *(this + 24);
  v36 = v186 * v34;
  v220 = v217 * (v185 * v39 * ((v35 * 3.0 * (v35 + 8.0) + 8.0) * (v244 * (v33 * 0.000405981 / v37)) + v19 * (v35 * 1.5 + 1.0 + v186 * v34 * (v35 + 4.0))));
  *(this + 36) = v220;
  v40 = 0.0;
  if (v186 > 0.0001)
  {
    v40 = v14.__sinval * (v185 * (v33 * (v38 * -2.0) * -0.00234506972)) / v186;
  }

  v209 = v40;
  *(this + 52) = 1.0 - v211;
  v230 = v186 * v19 * v33;
  v206 = v186 * (v35 * 2.0 + 0.5) + v34 * (v35 * 0.5 + 2.0);
  v41 = v39;
  v181 = v33;
  v183 = v19;
  *(this + 37) = v228 * (v19 * ((v185 + v185) * v39)) * (v206 + v33 * -0.001082616 / (v19 * v37) * (cos(__x + __x) * ((1.0 - v211) * 0.75 * (v35 * 2.0 - v36 * (v35 + 1.0))) + v244 * -3.0 * (v36 * -2.0 + 1.0 + v35 * (v36 * -0.5 + 1.5))));
  *(this + 38) = ((v35 + v36) * 2.75 + 1.0 + v36 * v35) * (v228 * (v19 * (v41 + v41)));
  v42 = v14.__cosval * v14.__cosval;
  v43 = v185 * (v212 * 0.001623924);
  v44 = v212 * (v43 * 0.5 * 0.001082616);
  v45 = v185 * (v212 * (v212 * 0.000000776235937));
  v46 = (v211 * -114.0 + 7.0 + v42 * v42 * 395.0) * (v44 * 0.0625) + v43 * -0.5 * (v211 * -5.0 + 1.0) + v45 * (v211 * -36.0 + 3.0 + v42 * v42 * 49.0);
  *(this + 44) = v46;
  v47 = -(v43 * v14.__cosval);
  v48 = ((v211 * -7.0 + 3.0) * (v45 + v45) + v44 * 0.5 * (v211 * -19.0 + 4.0)) * v14.__cosval - v43 * v14.__cosval;
  v180 = v185 + v226 * (v43 * 0.5) * v244 + v226 * (v44 * 0.0625) * (v211 * -78.0 + 13.0 + v42 * v42 * 137.0);
  *(this + 54) = v180;
  *(this + 55) = v48;
  v223 = cos(__x);
  *(this + 45) = v223 * (v217 * v209);
  v49 = 0.0;
  if (v186 > 0.0001)
  {
    v49 = v217 * (v38 * -0.666666667) / v36;
  }

  *(this + 58) = v228 * 3.5 * v47 * v220;
  *(this + 48) = v220 * 1.5;
  v179 = v14.__cosval + 1.0;
  if (fabs(v14.__cosval + 1.0) <= 1.5e-12)
  {
    v50 = 1.5e-12;
  }

  else
  {
    v50 = v14.__cosval + 1.0;
  }

  *(this + 56) = v14.__sinval * 0.00058626743 * (v14.__cosval * 5.0 + 3.0) / v50;
  *(this + 57) = v49;
  *(this + 34) = v14.__sinval * 0.00117253486;
  v51 = __sincos_stret(v238);
  *(this + 42) = (v230 * v51.__cosval + 1.0) * ((v230 * v51.__cosval + 1.0) * (v230 * v51.__cosval + 1.0));
  *(this + 46) = *&v51.__sinval;
  *(this + 53) = v211 * 7.0 + -1.0;
  if (6.28318531 / v185 >= 225.0)
  {
    v176 = v48 + v46;
    *(this + 132) = 257;
    v52 = __sincos_stret(v235);
    v215 = sin(__x);
    v53 = v232 + v8 + -2433281.5 + 18261.5;
    v54 = fmod(v53 * -0.00092422029 + 4.523602, 6.28318531);
    v55 = __sincos_stret(v54);
    v56 = sqrt(1.0 - (v55.__cosval * -0.03568096 + 0.91375164) * (v55.__cosval * -0.03568096 + 0.91375164));
    v57 = v55.__sinval * 0.089683511 / v56;
    v58 = sqrt(1.0 - v57 * v57);
    v178 = v53;
    v245 = 0.39785416;
    v189 = v56;
    __xa = 0.91744867;
    v59 = atan2(v55.__sinval * 0.39785416 / v56, v55.__sinval * (v57 * 0.91744867) + v58 * v55.__cosval);
    v177 = v53 * 0.001944368 + 5.8351514;
    v60 = __sincos_stret(v177 + v59 - v54);
    v61 = 0;
    sinval = v14.__sinval;
    v218 = v186 * -15.0;
    v221 = -v14.__sinval;
    cosval = v52.__cosval;
    v236 = v52.__sinval;
    v187 = v52.__sinval * v58 - v52.__cosval * v57;
    v188 = v52.__sinval * v57 + v58 * v52.__cosval;
    *(this + 40) = 0u;
    *(this + 41) = 0u;
    *(this + 84) = 0;
    v210 = 0.0;
    v63 = 1;
    v239 = 0.0000029864797;
    v64 = -0.98088458;
    v194 = 0.0;
    v195 = 0.0;
    v204 = 0.0;
    v207 = 0.0;
    v208 = 0.0;
    v199 = 0.0;
    v192 = 0.0;
    v213 = 1.0 / v185;
    v65 = 0.1945905;
    v198 = 0.0;
    v201 = 0.0;
    v202 = 0.0;
    v193 = 0.0;
    v190 = 0.0;
    v191 = 0.0;
    v196 = 0.0;
    v203 = 0.0;
    v200 = 0.0;
    v205 = 0.0;
    v197 = 0.0;
    do
    {
      v66 = v64 * __xa * v236 + v65 * cosval;
      v67 = v65 * __xa * v236 - v64 * cosval;
      v68 = v64 * __xa * cosval - v65 * v236;
      v69 = v65 * __xa * cosval + v64 * v236;
      v70 = sinval * (v64 * v245) + v14.__cosval * v68;
      v71 = sinval * (v65 * v245) + v14.__cosval * v69;
      v72 = v14.__cosval * (v64 * v245) + v221 * v68;
      v73 = v14.__cosval * (v65 * v245) + v221 * v69;
      v74 = v215 * v70 + v66 * v223;
      v75 = v215 * v71 + v67 * v223;
      v76 = v223 * v70 - v66 * v215;
      v77 = v223 * v71 - v67 * v215;
      v78 = v76 * (v76 * -3.0) + v74 * 12.0 * v74;
      v79 = v77 * (v76 * -6.0) + v74 * 24.0 * v75;
      v80 = v77 * (v77 * -3.0) + v75 * 12.0 * v75;
      v81 = v225 * v78 + (v70 * v70 + v66 * v66) * 3.0;
      v82 = v225 * v79 + (v70 * v71 + v66 * v67) * 6.0;
      v83 = v225 * v80 + (v71 * v71 + v67 * v67) * 3.0;
      v84 = v225 * (v215 * v72 * (v76 * -6.0) + v74 * -24.0 * (v223 * v72)) + v66 * -6.0 * v72;
      v231 = v225 * ((v215 * v72 * v77 + v76 * (v215 * v73)) * -6.0 + (v223 * v73 * v74 + v75 * (v223 * v72)) * -24.0) + (v67 * v72 + v66 * v73) * -6.0;
      v85 = v225 * (v215 * v73 * (v77 * -6.0) + v75 * -24.0 * (v223 * v73)) + v67 * -6.0 * v73;
      v86 = v225 * (v223 * v72 * (v76 * -6.0) + v74 * 24.0 * (v215 * v72)) + v70 * 6.0 * v72;
      v87 = v61;
      v88 = v225 * ((v223 * v73 * v76 + v77 * (v223 * v72)) * -6.0 + (v215 * v73 * v74 + v75 * (v215 * v72)) * 24.0) + (v70 * v73 + v71 * v72) * 6.0;
      v89 = v225 * (v223 * v73 * (v77 * -6.0) + v75 * 24.0 * (v215 * v73)) + v71 * 6.0 * v73;
      v90 = v81 + v81 + v228 * v78;
      v91 = v82 + v82 + v228 * v79;
      v92 = v83 + v83 + v228 * v80;
      v93 = v213 * v239;
      v94 = v75 * v77 + v74 * v76;
      v95 = v74 * v77 + v75 * v76;
      v96 = v213 * v239 * -0.5 / v226;
      v97 = v75 * v77 - v74 * v76;
      v98 = v226 * (v213 * v239);
      v99 = v218 * v98;
      if (v63)
      {
        v197 = v218 * v98;
        v205 = v213 * v239 * -0.5 / v226;
        v239 = 0.00000047968065;
        v200 = v93;
        v201 = v92;
        v203 = v98;
        v195 = v88;
        v196 = v94;
        v190 = v95;
        v191 = v97;
        v202 = v90;
        v198 = v84;
        v199 = v85;
        v192 = v231;
        v193 = v91;
        v207 = v89;
        v208 = v86;
        v204 = v76 * (v76 * -3.0) + v74 * 12.0 * v74;
        v194 = v79;
        v210 = v80;
        cosval = v188;
        v236 = v187;
        v245 = v189;
        __xa = v55.__cosval * -0.03568096 + 0.91375164;
        v65 = v60.__cosval;
        v64 = v60.__sinval;
      }

      v63 = 0;
      v61 = 1;
      sinval = v14.__sinval;
    }

    while ((v87 & 1) == 0);
    v237 = v98;
    v234 = v76 * (v76 * -3.0) + v74 * 12.0 * v74;
    v219 = v85;
    v222 = v84;
    v246 = v86;
    v229 = v90;
    v227 = v92;
    __xb = v94;
    v240 = v88;
    v224 = v91;
    v214 = v95;
    v216 = v97;
    *(this + 110) = fmod(v178 * 0.2299715 + 4.7199672 - v177, 6.28318531);
    v100 = fmod(v178 * 0.017201977 + 6.2565837, 6.28318531);
    v101 = v96;
    *(this + 111) = v100;
    *(this + 85) = (v197 + v197) * v190;
    *(this + 86) = (v197 + v197) * v191;
    *(this + 92) = (v205 + v205) * v192;
    *(this + 93) = (v205 + v205) * (v199 - v198);
    *(this + 94) = v200 * -2.0 * v193;
    *(this + 95) = v200 * -2.0 * (v201 - v202);
    v102 = v225 * -9.0 + -21.0;
    *(this + 96) = v102 * (v200 * -2.0) * 0.01675;
    v103 = vmulq_n_f64(xmmword_1D0E779C0, v203);
    *(this + 87) = v194 * v103.f64[0];
    v104 = vdupq_lane_s64(0x3F9126E978D4FDF4, 0);
    v104.f64[0] = v210 - v204;
    *(this + 44) = vmulq_f64(v103, v104);
    *(this + 90) = v205 * -2.0 * v195;
    *(this + 91) = v205 * -2.0 * (v207 - v208);
    *(this + 79) = (v99 + v99) * v214;
    *(this + 78) = (v99 + v99) * v216;
    *(this + 104) = (v96 + v96) * v231;
    *(this + 105) = (v96 + v96) * (v219 - v222);
    *(this + 106) = v93 * -2.0 * v224;
    *(this + 107) = v93 * -2.0 * (v227 - v229);
    *(this + 108) = v102 * (v93 * -2.0) * 0.0549;
    v105 = vmulq_n_f64(xmmword_1D0E779C0, v237);
    *(this + 99) = v79 * v105.f64[0];
    v106 = vdupq_lane_s64(0x3FAC1BDA5119CE07, 0);
    v106.f64[0] = v80 - v234;
    *(this + 50) = vmulq_f64(v105, v106);
    *(this + 102) = v96 * -2.0 * v240;
    *(this + 103) = v96 * -2.0 * (v89 - v246);
    v107 = v185 > 0.0034906585 && v185 < 0.0052359877;
    v108 = v185 < 0.00826;
    if (v186 < 0.5)
    {
      v108 = 1;
    }

    v109 = v185 > 0.00924 || v108;
    if (v109)
    {
      v110 = v107;
    }

    else
    {
      v110 = 2;
    }

    *(this + 472) = v110;
    v111 = v205 * -0.0000119459 * (v208 + v207);
    v112 = v184 < 0.052359877;
    if (v184 > 3.08923278)
    {
      v112 = 1;
    }

    if (v112)
    {
      v111 = 0.0;
    }

    if (fabs(v14.__sinval) >= 2.22044605e-16)
    {
      v113 = v111 / v14.__sinval;
    }

    else
    {
      v113 = v111;
    }

    *(this + 70) = v197 * 0.0000119459 * v196 + v99 * 0.00015835218 * __xb;
    *(this + 74) = v205 * 0.0000119459 * (v198 + v199) + v96 * 0.00015835218 * (v219 + v222);
    v114 = v200 * -0.0000119459 * (v202 + v201 + -14.0 + v225 * -6.0) + v93 * -0.00015835218 * (v227 + v229 + -14.0 + v225 * -6.0);
    *(this + 75) = v114;
    v115 = v237 * 0.00015835218 * (v80 + v234 + -6.0) + v203 * 0.0000119459 * (v204 + v210 + -6.0) - v14.__cosval * v113;
    *(this + 77) = v115;
    *(this + 76) = v113;
    if (v14.__sinval != 0.0)
    {
      v116 = v101 * -0.00015835218 * (v89 + v246);
      if (v112)
      {
        v116 = 0.0;
      }

      v115 = v115 + -v14.__cosval / v14.__sinval * v116;
      *(this + 77) = v115;
      v113 = v116 / v14.__sinval + v113;
      *(this + 76) = v113;
    }

    v117 = fmod(*(this + 97) + 0.0, 6.28318531);
    if (v110)
    {
      v118 = v117;
      v119 = pow(v185 / 0.0743669161, 0.666666667);
      if (v109)
      {
        if (!v107)
        {
          v131 = *(this + 109);
          v140 = *(this + 119);
LABEL_58:
          *(this + 113) = v131;
          *(this + 114) = v140;
          *(this + 112) = 0;
          goto LABEL_59;
        }

        v120.f64[0] = v225 * 2.0 + 1.0;
        v121.f64[0] = v119;
        v121.f64[1] = v14.__cosval + 1.0;
        v122.f64[1] = v14.__cosval + 1.0;
        v122.f64[0] = v185 * (v185 * 3.0) * v119;
        v123 = vmulq_f64(v121, v122);
        __asm { FMOV            V4.2D, #0.75 }

        _Q4.f64[0] = v179 * -0.75 + v14.__sinval * (v14.__sinval * 0.9375) * (v14.__cosval * 3.0 + 1.0);
        *(this + 73) = v119 * ((v225 * (v225 * 6.60937 + -6.0) + 1.0) * (v179 * (v179 * (v179 * 1.875)) * (3.0 * v123.f64[0])) * 0.00000022123015);
        v120.f64[1] = v123.f64[0] + v123.f64[0];
        v129 = &unk_1D0E778E8;
        *&v130.f64[0] = *&vld1q_dup_f64(v129);
        v130.f64[1] = v225 * (v225 * 0.8125 + -2.5) + 1.0;
        v121.f64[1] = 0.0000017891679;
        *(this + 568) = vmulq_f64(v121, vmulq_f64(v130, vmulq_f64(v120, vmulq_f64(_Q4, v123))));
        v131 = fmod(*(this + 118) + *(this + 120) + *(this + 115) - v118, 6.28318531);
        *(this + 109) = v131;
        v132 = v113 + v180 + v176 + -0.00437526909 + v114 + v115;
LABEL_57:
        v140 = *(this + 119);
        *(this + 98) = v132 - v140;
        goto LABEL_58;
      }

      v133 = *(this + 116);
      v134 = v225 * *&v133;
      if (*&v133 <= 0.65)
      {
        v135 = *&v133 * -13.247 + 3.616 + v225 * 16.29;
        v136 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E779E0, xmmword_1D0E779D0, *&v133), xmmword_1D0E779F0, v225), xmmword_1D0E77A00, v134);
        v137 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E77A20, xmmword_1D0E77A10, *&v133), xmmword_1D0E77A30, v225), xmmword_1D0E77A40, v134);
        v138 = *&v133 * 3017.977 + -532.114 + v225 * -5740.032;
        v139 = 3708.276;
      }

      else
      {
        v135 = *&v133 * 331.819 + -72.099 + v225 * -508.738 + v134 * 266.724;
        v136 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E77A60, xmmword_1D0E77A50, *&v133), xmmword_1D0E77A70, v225), xmmword_1D0E77A80, v134);
        v137 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E77AA0, xmmword_1D0E77A90, *&v133), xmmword_1D0E77AB0, v225), xmmword_1D0E77AC0, v134);
        if (*&v133 <= 0.715)
        {
          v141.f64[0] = *&v133 * -4664.75 + 1464.74 + v225 * 3763.64;
          goto LABEL_53;
        }

        v138 = *&v133 * 29936.92 + -5149.66 + v225 * -54087.36;
        v139 = 31324.56;
      }

      v141.f64[0] = v138 + v134 * v139;
LABEL_53:
      v142 = vdupq_lane_s64(v133, 0);
      v143 = vdupq_lane_s64(*&v225, 0);
      v144.f64[0] = (*&v133 + -0.64) * -0.44 + -0.306;
      v145 = vdupq_lane_s64(*&v134, 0);
      if (*&v133 >= 0.7)
      {
        v146 = vmlaq_f64(vmlaq_f64(vmlaq_f64(xmmword_1D0E77AE0, xmmword_1D0E77AD0, v142), xmmword_1D0E77AF0, v143), xmmword_1D0E77B00, v145);
        v147 = *&v133 * 170470.89 + -40023.88 + v225 * -242699.48;
        v148 = 115605.82;
      }

      else
      {
        v146 = vmlaq_f64(vmlaq_f64(vmlaq_f64(xmmword_1D0E77B20, xmmword_1D0E77B10, v142), xmmword_1D0E77B30, v143), xmmword_1D0E77B40, v145);
        v147 = *&v133 * 4690.25 + -853.666 + v225 * -8624.77;
        v148 = 5341.4;
      }

      __asm { FMOV            V18.2D, #1.0 }

      v150 = vmlaq_n_f64(_Q18, xmmword_1D0E77B50, v14.__cosval);
      __asm { FMOV            V20.2D, #-8.0 }

      v152 = vmlaq_n_f64(xmmword_1D0E77B70, _Q20, v14.__cosval);
      __asm { FMOV            V24.2D, #8.0 }

      v154 = vmlaq_n_f64(xmmword_1D0E77B80, _Q24, v14.__cosval);
      v155 = vdupq_lane_s64(*&v14.__sinval, 0);
      v156.f64[1] = v155.f64[1];
      v156.f64[0] = v185 * v185 * 3.0;
      v157.f64[1] = v155.f64[1];
      v157.f64[0] = v119 * v119;
      v158 = vmulq_f64(v156, v157);
      v159 = vmuld_lane_f64(4.92187512, v158, 1);
      v160 = vmulq_f64(v158, xmmword_1D0E77B90);
      v161 = vdupq_lane_s64(*&v160.f64[0], 0);
      v161.f64[0] = (v150.f64[1] + v211) * 0.75;
      v144.f64[1] = v135;
      v162 = vmulq_f64(vmulq_f64(v160, v161), v144);
      __asm { FMOV            V29.2D, #-3.0 }

      v164 = vmlaq_n_f64(v150, _Q29, v211);
      *(this + 30) = v162;
      *(this + 31) = vmulq_f64(vmulq_n_f64(vmulq_f64(vmulq_n_f64(xmmword_1D0E77B60, v14.__sinval), v164), v119 * v158.f64[0] * 0.00000037393792), v136);
      v165 = v119 * (v119 * v158.f64[0]);
      *&v166.f64[0] = vdupq_laneq_s64(v158, 1).u64[0];
      v167 = vmulq_laneq_f64(xmmword_1D0E77BA0, v158, 1);
      v158.f64[0] = (v150.f64[1] + v211) * 0.75;
      v168 = v119 * v165;
      v150.f64[1] = v14.__cosval * -4.0 + -2.0;
      v164.f64[0] = v14.__cosval * 4.0 + -2.0 + v211 * 6.0;
      v166.f64[1] = v159;
      v155.f64[0] = v14.__sinval * 9.84375;
      v141.f64[1] = v147 + v134 * v148;
      *(this + 32) = vmulq_f64(vmulq_n_f64(vmulq_f64(v158, v167), (v165 + v165) * 0.0000000073636953), v137);
      *(this + 33) = vmulq_f64(vmulq_n_f64(vmulq_f64(v155, vmlaq_f64(vmulq_f64(v164, xmmword_1D0E77BC0), vmlaq_n_f64(v150, xmmword_1D0E77BB0, v211), v166)), v168 * 0.00000011428639), v141);
      *(this + 34) = vmulq_f64(vmulq_n_f64(vmulq_n_f64(vmlaq_n_f64(v152, vmlaq_n_f64(v154, xmmword_1D0E77BD0, v211), v211), v14.__sinval * 29.53125), (v168 + v168) * 0.0000000021765803), v146);
      v131 = fmod(*(this + 118) + *(this + 120) * 2.0 + v118 * -2.0, 6.28318531);
      *(this + 109) = v131;
      v132 = v114 + *(this + 54) + (*(this + 55) + *(this + 76) + -0.00437526909) * 2.0;
      goto LABEL_57;
    }
  }

LABEL_59:
  if ((*(this + 265) & 1) == 0)
  {
    v169 = *(this + 36);
    v170 = v183 * 4.0 * v181 * (v169 * v169);
    v171 = v169 * (v181 * v170) / 3.0;
    v172 = (v182 + v183 * 17.0) * v171;
    *(this + 39) = v170;
    *(this + 40) = v172;
    v173 = v169 * ((v182 * 31.0 + v183 * 221.0) * (v181 * (v183 * (v171 * 0.5))));
    *(this + 41) = v173;
    *(this + 49) = v170 + v169 * v169 * 2.0;
    *(this + 50) = (v169 * (v169 * v169 * 10.0 + v170 * 12.0) + v172 * 3.0) * 0.25;
    *(this + 51) = (v169 * 12.0 * v172 + v173 * 3.0 + v170 * v170 * 6.0 + v169 * v169 * 15.0 * (v169 * v169 + v170 * 2.0)) * 0.2;
  }

LABEL_61:
  result = cnnavigation::NORADTLEEphemerides::SGP4(this, this + 168, __src, v251, v23, v24, v25, v26);
  v175 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::NORADTLEEphemerides::SGP4(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a2 + 8) - *(a1 + 176) + (*a2 - *(a1 + 168))) * 1440.0;
  *(a1 + 376) = v11;
  v12 = *(a1 + 944) + *(a1 + 432) * v11;
  v217 = *(a1 + 352);
  v218 = *(a1 + 920);
  v13 = v218 + v217 * v11;
  v14 = *(a1 + 960) + *(a1 + 440) * v11;
  v15 = v11 * v11;
  v16 = *(a1 + 464);
  v17 = 1.0 - *(a1 + 288) * v11;
  v18 = *(a1 + 192);
  v19 = v11 * (v18 * *(a1 + 296));
  v20 = v11 * v11 * *(a1 + 384);
  v240 = v11;
  if (*(a1 + 265))
  {
    v246 = *(a1 + 944) + *(a1 + 432) * v11;
  }

  else
  {
    v215 = v11 * v11 * *(a1 + 384);
    v243 = *(a1 + 960) + *(a1 + 440) * v11;
    v21 = v11 * *(a1 + 360);
    v22 = v13;
    v23 = *(a1 + 344);
    v211 = v17;
    v213 = v19;
    v24 = cos(v12);
    v25 = v21 + *(a1 + 456) * -(*(a1 + 336) - (v23 * v24 + 1.0) * (v23 * v24 + 1.0) * (v23 * v24 + 1.0));
    v13 = v22 - v25;
    v26 = v240 * (v240 * v15);
    v27 = v211 - *(a1 + 312) * v15 - *(a1 + 320) * (v240 * v15) - *(a1 + 328) * v26;
    v28 = v18 * *(a1 + 304);
    v246 = v12 + v25;
    v19 = v213 + v28 * (sin(v12 + v25) - *(a1 + 368));
    v14 = v243;
    v17 = v27;
    v20 = v215 + *(a1 + 392) * (v240 * v15) + v26 * (*(a1 + 400) + v240 * *(a1 + 408));
    v11 = v240;
  }

  v216 = v20;
  v29 = v14 + v16 * v15;
  v30 = *(a1 + 952);
  v31 = *(a1 + 928);
  v32 = *(a1 + 936);
  v33 = *(a1 + 264);
  if (v33 == 1)
  {
    v210 = *(a1 + 952);
    v212 = v17;
    v214 = v19;
    v34 = v29;
    v35 = fmod(*(a1 + 776) + v11 * 0.00437526909, 6.28318531);
    v31 = v31 + *(a1 + 560) * v11;
    v32 = v32 + *(a1 + 592) * v11;
    v13 = v13 + *(a1 + 616) * v11;
    v36 = *(a1 + 608);
    v29 = v34 + v36 * v11;
    v37 = *(a1 + 472);
    if (*(a1 + 472))
    {
      v204 = v35;
      v205 = v31;
      v206 = v13;
      v207 = v34 + v36 * v11;
      v208 = v32;
      v38 = *(a1 + 896);
      v39 = fabs(v38);
      if (v39 < 2.22044605e-16 || ((v40 = fabs(v11), v11 * v38 > 0.0) ? (v41 = v40 < v39) : (v41 = 1), v41))
      {
        *(a1 + 896) = 0;
        *(a1 + 912) = v210;
        *(a1 + 904) = *(a1 + 872);
        v38 = 0.0;
      }

      v244 = dbl_1D0E77BE0[v11 > 0.0];
      v42 = 0.0;
      v43 = 0.0;
      v44 = 0.0;
      while (1)
      {
        if (v37 == 2)
        {
          v52 = v218 + v217 * v38;
          v53 = *(a1 + 904);
          v220 = v53 + v53;
          v54 = *(a1 + 480);
          v233 = v54;
          v55 = __sincos_stret(v52 + v52 + v53 + -5.7686396);
          v56 = *(a1 + 488);
          __y = v56;
          v57 = __sincos_stret(v53 + -5.7686396);
          v58 = v56 * v57.__sinval + v54 * v55.__sinval;
          v59 = *(a1 + 496);
          v227 = v59;
          v219 = v52 + v53;
          v60 = __sincos_stret(v52 + v53 + -0.95240898);
          v61 = *(a1 + 504);
          v224 = v61;
          v62 = v53 - v52;
          v63 = __sincos_stret(v62 + -0.95240898);
          v64 = v58 + v59 * v60.__sinval + v61 * v63.__sinval;
          v65 = *(a1 + 512);
          v222 = v65;
          v66 = __sincos_stret(v52 + v52 + v220 + -1.8014998);
          v67 = v64 + v65 * v66.__sinval;
          v68 = *(a1 + 520);
          v221 = v68;
          v69 = __sincos_stret(v220 + -1.8014998);
          v70 = *(a1 + 528);
          v71 = __sincos_stret(v219 + -1.050833);
          v72 = v67 + v68 * v69.__sinval + v70 * v71.__sinval;
          v73 = *(a1 + 536);
          v74 = __sincos_stret(v62 + -1.050833);
          v75 = *(a1 + 544);
          v76 = __sincos_stret(v52 + v220 + -4.4108898);
          v77 = v72 + v73 * v74.__sinval + v75 * v76.__sinval;
          v78 = *(a1 + 552);
          v79 = __sincos_stret(v220 - v52 + -4.4108898);
          v43 = v77 + v78 * v79.__sinval;
          v42 = *(a1 + 912) + *(a1 + 784);
          v11 = v240;
          v44 = (__y * v57.__cosval + v233 * v55.__cosval + v227 * v60.__cosval + v224 * v63.__cosval + v70 * v71.__cosval + v73 * v74.__cosval + (v69.__cosval * v221 + v222 * v66.__cosval + v75 * v76.__cosval + v78 * v79.__cosval) * 2.0) * v42;
        }

        else if (v37 == 1)
        {
          v45 = *(a1 + 568);
          v46 = *(a1 + 904);
          v47 = __sincos_stret(v46 + -0.13130908);
          v48 = *(a1 + 576);
          v49 = __sincos_stret(v46 + -2.8843198 + v46 + -2.8843198);
          v50 = *(a1 + 584);
          v51 = __sincos_stret((v46 + -0.37448087) * 3.0);
          v43 = v48 * v49.__sinval + v45 * v47.__sinval + v50 * v51.__sinval;
          v42 = *(a1 + 912) + *(a1 + 784);
          v11 = v240;
          v44 = v42 * ((v48 + v48) * v49.__cosval + v45 * v47.__cosval + v50 * 3.0 * v51.__cosval);
        }

        if (vabdd_f64(v11, v38) < 720.0)
        {
          break;
        }

        *(a1 + 904) = *(a1 + 904) + v42 * v244 + v43 * 259200.0;
        *(a1 + 912) = *(a1 + 912) + v43 * v244 + v44 * 259200.0;
        v38 = v244 + v38;
        *(a1 + 896) = v38;
      }

      v81 = v11 - v38;
      v82 = *(a1 + 904) + v42 * (v11 - v38) + (v11 - v38) * (v43 * 0.5) * (v11 - v38);
      if (v37 == 2)
      {
        v246 = v82 + v207 * -2.0 + v204 * 2.0;
        v32 = v208;
        v13 = v206;
      }

      else
      {
        v32 = v208;
        v13 = v206;
        if (v37 != 1)
        {
          v258 = 5;
          v257 = 3;
          cnprint::CNPrinter::Print(&v258, &v257, "SGP4 encountered unexpected resonance type %hhu", a4, a5, a6, a7, a8, v37);
          return 4294967291;
        }

        v246 = v204 + v82 - v207 - v206;
      }

      v30 = v210;
      v17 = v212;
      v80 = v210 + *(a1 + 912) + v43 * v81 + v81 * (v44 * 0.5) * v81 - v210;
      v19 = v214;
      v29 = v207;
      v31 = v205;
    }

    else
    {
      v246 = v246 + *(a1 + 600) * v11;
      v30 = v210;
      v17 = v212;
      v80 = v210;
      v19 = v214;
    }
  }

  else
  {
    v80 = *(a1 + 952);
  }

  if (v80 <= 0.0)
  {
    v256 = 5;
    v255 = 3;
    cnprint::CNPrinter::Print(&v256, &v255, "SGP4 encountered invalid mean motion %lg", a4, a5, a6, a7, a8, SLOBYTE(v80));
    return 4294967294;
  }

  v83 = v29;
  v84 = v19;
  v85 = v17 * (v17 * pow(0.0743669161 / v80, 0.666666667));
  v91 = pow(v85, 1.5);
  v92 = v31 - v84;
  if (v31 - v84 >= 1.0 || v92 < -0.001)
  {
    v254 = 5;
    v253 = 3;
    v202 = v31 - v84;
    cnprint::CNPrinter::Print(&v254, &v253, "SGP4 encountered invalid eccentricity %lg", v86, v87, v88, v89, v90, SLOBYTE(v202));
    return 0xFFFFFFFFLL;
  }

  v236 = v91;
  v238 = v85;
  v93 = fmax(v92, 0.000001);
  v94 = v83 + v13 + v246 + v30 * v216;
  v95 = fmod(v83, 6.28318531);
  v96 = fmod(v13, 6.28318531);
  v97 = fmod(v94, 6.28318531);
  v247 = v95;
  v241 = fmod(v97 - v96 - v95, 6.28318531);
  if (v33)
  {
    v229 = v96;
    v98 = *(a1 + 888) + v11 * 0.0000119459;
    v99 = sin(v98);
    v100 = __sincos_stret(v98 + v99 * 0.0335);
    v101 = v100.__sinval * 0.5 * v100.__sinval + -0.25;
    v102 = v100.__cosval * (v100.__sinval * -0.5);
    v103 = *(a1 + 688) * v102 + *(a1 + 680) * v101;
    v234 = v93;
    v104 = v32;
    v105 = *(a1 + 744) * v102 + *(a1 + 736) * v101;
    v106 = *(a1 + 760) * v102 + *(a1 + 752) * v101 + *(a1 + 768) * v100.__sinval;
    v107 = v102 * *(a1 + 704) + *(a1 + 696) * v101 + *(a1 + 712) * v100.__sinval;
    v108 = v11;
    v109 = v102 * *(a1 + 728) + *(a1 + 720) * v101;
    v110 = *(a1 + 880) + v108 * 0.00015835218;
    v111 = sin(v110);
    v112 = __sincos_stret(v110 + v111 * 0.1098);
    v113 = v112.__sinval * 0.5 * v112.__sinval + -0.25;
    v114 = v112.__cosval * (v112.__sinval * -0.5);
    v115 = *(a1 + 624) * v114 + *(a1 + 632) * v113;
    v116 = *(a1 + 840) * v114 + *(a1 + 832) * v113;
    v117 = *(a1 + 856) * v114 + *(a1 + 848) * v113 + *(a1 + 864) * v112.__sinval;
    v118 = v114 * *(a1 + 800) + *(a1 + 792) * v113 + *(a1 + 808) * v112.__sinval;
    v119 = v114 * *(a1 + 824) + *(a1 + 816) * v113;
    v120 = v103 + v115;
    v121 = v109 + v119;
    v122 = v105 + v116 - *(a1 + 664);
    v123 = v106 + v117 - *(a1 + 672);
    v228 = v107 + v118 - *(a1 + 648);
    v124 = v121 - *(a1 + 656);
    v125 = v104 + v122;
    v93 = v234 + v120 - *(a1 + 640);
    v131 = __sincos_stret(v125);
    if (v125 >= 0.2)
    {
      v140 = v229 + v228 - v131.__cosval * (v124 / v131.__sinval);
      v138 = v247 + v124 / v131.__sinval;
      v241 = v241 + v123;
    }

    else
    {
      v132 = __sincos_stret(v247);
      v223 = v132.__cosval * v131.__sinval + v132.__cosval * (v122 * v131.__cosval) - v124 * v132.__sinval;
      v225 = v132.__sinval * v131.__sinval + v132.__sinval * (v122 * v131.__cosval) + v124 * v132.__cosval;
      v133 = fmod(v247, 6.28318531);
      if (v133 >= 0.0)
      {
        v134 = v133;
      }

      else
      {
        v134 = v133 + 6.28318531;
      }

      v135 = v123;
      v226 = v123;
      v136 = v241;
      v137 = v229 + v241 + v131.__cosval * v134 + v135 + v228 + -(v122 * v134) * v131.__sinval;
      v138 = atan2(v225, v223);
      v139 = v138 + dbl_1D0E77BF0[v138 < v134];
      if (vabdd_f64(v134, v138) > 3.14159265)
      {
        v138 = v138 + dbl_1D0E77BF0[v138 < v134];
      }

      v241 = v241 + v226;
      v140 = v137 - (v136 + v226) - v131.__cosval * v138;
    }

    if (v93 < 0.0 || v93 > 1.0)
    {
      v252 = 5;
      v251 = 3;
      cnprint::CNPrinter::Print(&v252, &v251, "SGP4 encountered invalid eccentricity %lg", v126, v127, v128, v129, v130, SLOBYTE(v93));
      return 4294967293;
    }

    v147 = v125 < 0.0;
    if (v125 >= 0.0)
    {
      v96 = v140;
    }

    else
    {
      v125 = -v125;
      v96 = v140 + -3.14159265;
    }

    if (v147)
    {
      v138 = v138 + 3.14159265;
    }

    v247 = v138;
    v148 = __sincos_stret(v125);
    v143 = v148.__sinval * 0.00117253486;
    *(a1 + 272) = v148.__sinval * 0.00117253486;
    v149 = v148.__sinval * 0.00058626743 * (v148.__cosval * 5.0 + 3.0);
    v209 = v125;
    cosval = v148.__cosval;
    sinval = v148.__sinval;
    if (fabs(v148.__cosval + 1.0) <= 1.5e-12)
    {
      v144 = v149 / 1.5e-12;
    }

    else
    {
      v144 = v149 / (v148.__cosval + 1.0);
    }

    *(a1 + 448) = v144;
    v145 = v236;
  }

  else
  {
    v209 = v32;
    v142 = __sincos_stret(v32);
    sinval = v142.__sinval;
    cosval = v142.__cosval;
    v143 = *(a1 + 272);
    v144 = *(a1 + 448);
    v145 = v236;
  }

  v237 = 0.0743669161 / v145;
  v150 = __sincos_stret(v96);
  v151 = v96;
  v152 = v93 * v150.__cosval;
  v153 = 1.0 / (v238 * (1.0 - v93 * v93));
  v154 = v93;
  v155 = v153 * v143;
  v156 = v153 * v143 + v154 * v150.__sinval;
  v157 = fmod(v247 + v151 + v241 + v153 * v144 * v152 - v247, 6.28318531);
  v158 = 0;
  v159 = -(v155 + v154 * v150.__sinval);
  v160 = v157;
  do
  {
    v166 = __sincos_stret(v160);
    v167 = (v157 + v159 * v166.__cosval + v152 * v166.__sinval - v160) / (1.0 - v166.__cosval * v152 - v166.__sinval * v156);
    v168 = dbl_1D0E77C00[v167 > 0.0];
    if (fabs(v167) >= 0.95)
    {
      v167 = dbl_1D0E77C00[v167 > 0.0];
    }

    if (v158 > 8)
    {
      break;
    }

    v160 = v160 + v167;
    ++v158;
  }

  while (fabs(v167) >= 1.0e-12);
  v169 = 1.0 - (v156 * v156 + v152 * v152);
  v170 = v238 * v169;
  if (v238 * v169 >= 0.0)
  {
    v171 = v166.__cosval * v159 + v152 * v166.__sinval;
    v172 = v238 * (1.0 - (v156 * v166.__sinval + v152 * v166.__cosval));
    v242 = sqrt(v238) * v171 / v172;
    v173 = sqrt(v169);
    v174 = v171 / (v173 + 1.0);
    v175 = (v166.__sinval - v156 - v152 * v174) * (v238 / v172);
    v176 = (v166.__cosval - v152 + v156 * v174) * (v238 / v172);
    v177 = sqrt(v170) / v172;
    v178 = atan2(v175, v176);
    v179 = v175 * (v176 + v176);
    v180 = v175 * -2.0 * v175 + 1.0;
    v181 = 1.0 / v170 * 0.000541308;
    v182 = 1.0 / v170 * v181;
    if (v33)
    {
      v183 = cosval;
      v184 = v183 * v183 * 3.0 + -1.0;
      *(a1 + 280) = v184;
      v185 = 1.0 - v183 * v183;
      v186 = v183 * v183 * 7.0 + -1.0;
      *(a1 + 416) = v185;
      *(a1 + 424) = v186;
      v187 = v209;
    }

    else
    {
      v184 = *(a1 + 280);
      v185 = *(a1 + 416);
      v186 = *(a1 + 424);
      v187 = v209;
      v183 = cosval;
    }

    v239 = v180 * (v181 * 0.5 * v185) + v172 * (-(v182 * 1.5 * v173) * v184 + 1.0);
    v188 = v178 + v182 * -0.25 * v186 * v179;
    v189 = v183 * (v182 * 1.5);
    v190 = v247 + v189 * v179;
    v191 = v187 + sinval * v189 * v180;
    v192 = v237 * v181;
    v248 = v242 - v179 * (v192 * v185) / 0.0743669161;
    v245 = v177 + v192 * (v184 * 1.5 + v185 * v180) / 0.0743669161;
    v193 = __sincos_stret(v188);
    v195 = __sincos_stret(v190);
    *v194.i64 = v195.__cosval;
    __ya = v194;
    v196 = __sincos_stret(v191);
    result = 0;
    *&v197.f64[0] = __ya.i64[0];
    v197.f64[1] = v195.__sinval;
    v198 = vnegq_f64(v197);
    v199 = vmulq_n_f64(vextq_s8(v198, __ya, 8uLL), v196.__cosval);
    v200 = vmlaq_n_f64(vmulq_n_f64(v197, v193.__cosval), v199, v193.__sinval);
    v201 = vmlaq_n_f64(vmulq_n_f64(v198, v193.__sinval), v199, v193.__cosval);
    *a3 = v239 * v200.f64[0] * 6378.135;
    *&v199.f64[0] = vdupq_laneq_s64(v200, 1).u64[0];
    v199.f64[1] = v196.__sinval * v193.__sinval;
    *(a3 + 8) = vmulq_f64(vmulq_n_f64(v199, v239), vdupq_n_s64(0x40B8EA228F5C28F6uLL));
    *a4 = vmulq_f64(vmlaq_n_f64(vmulq_n_f64(v201, v245), v200, v248), vdupq_n_s64(0x401F9F197275BE84uLL));
    a4[1].f64[0] = (v196.__sinval * v193.__cosval * v245 + v248 * (v196.__sinval * v193.__sinval)) * 7.90537051;
  }

  else
  {
    v250 = 5;
    v249 = 3;
    v203 = v238 * v169;
    cnprint::CNPrinter::Print(&v250, &v249, "SGP4 encountered invalid pL %lg", v161, v162, v163, v164, v165, SLOBYTE(v203));
    return 4294967292;
  }

  return result;
}

double cnnavigation::NORADTLEEphemerides::ECIToECEF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*a2 - 2451545) / 36525.0;
  v5 = *(a2 + 8);
  v6 = fmod(v4 * v4 * 0.093104 + v4 * (v4 * v4) * -0.0000062 + v4 * 3164400180.0 + 67310.5484, 86400.0);
  v7 = fmod(v6 * 0.0000727220522 + ((v5 / 36525.0 + v4) * 5.9006e-11 + 1.00273791 + (v5 / 36525.0 + v4) * (v5 / 36525.0 + v4) * -5.9e-15) * 6.28318531 * v5, 6.28318531);
  v8 = __sincos_stret(v7);
  v9 = *(a3 + 16);
  return *(a3 + 8) * v8.__sinval + v8.__cosval * *a3;
}

uint64_t cnnavigation::NORADTLEEphemerides::GNSSSatelliteClockOffset(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = 0;
  *a6 = 0;
  a6[1] = 0;
  return result;
}

uint64_t cnnavigation::NORADTLEEphemerides::GNSSSatelliteClockOffsetRate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = 0;
  *a6 = 0;
  a6[1] = 0;
  return result;
}

double cnnavigation::NORADTLEEphemerides::GreenwichHourAngle(uint64_t a1, uint64_t a2)
{
  v2 = (*a2 - 2451545) / 36525.0;
  v3 = *(a2 + 8);
  v4 = fmod(v2 * v2 * 0.093104 + v2 * (v2 * v2) * -0.0000062 + v2 * 3164400180.0 + 67310.5484, 86400.0) * 0.0000727220522 + ((v3 / 36525.0 + v2) * 5.9006e-11 + 1.00273791 + (v3 / 36525.0 + v2) * (v3 / 36525.0 + v2) * -5.9e-15) * 6.28318531 * v3;

  return fmod(v4, 6.28318531);
}

uint64_t sub_1D0C6EE38(uint64_t a1)
{
  *a1 = &unk_1F4CD6260;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *a1 = &unk_1F4CD5F70;
  return a1;
}

void sub_1D0C6EEE4(uint64_t a1)
{
  *a1 = &unk_1F4CD6260;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *a1 = &unk_1F4CD5F70;

  JUMPOUT(0x1D387ECA0);
}

uint64_t cnnavigation::GNSSCarrierPhase(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, int8x16_t a7, int8x16_t a8, double a9)
{
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  return cnnavigation::GNSSCarrierPhase(a1, &v11, a2, a3, a4, a5, a6, 0, a7, a8, a9, v10);
}

uint64_t cnnavigation::GNSSCarrierPhase(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, float64x2_t *a7, int8x16_t a8, int8x16_t a9, double a10)
{
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  return cnnavigation::GNSSCarrierPhase(a1, &v11, a2, a3, a4, a5, a6, 1, a8, a9, a10, a7);
}

uint64_t cnnavigation::BeiDouTime::BeiDouTime(uint64_t this, int a2, double a3)
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

double cnnavigation::BeiDouTime::BeiDouTime(cnnavigation::BeiDouTime *this, double a2)
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

double cnnavigation::BeiDouTime::BeiDouTime(uint64_t a1, double *a2)
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

uint64_t cnnavigation::BeiDouTime::operator CNTime(int *a1, int8x16_t a2, int8x16_t a3)
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

uint64_t cnnavigation::BeiDouTimeToJulianTime(double *a1, int a2, uint64_t a3)
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
    *a3 = v6 - v3 + 8 * v3 + 2453736 + vcvtmd_s64_f64(v7);
    *(a3 + 8) = v7 - floor(v7);
  }

  return result;
}

double cnnavigation::JulianTimeToBeiDouTime(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8) + -0.5;
  result = v3 - floor(v3);
  v5 = *a1 - 2453736 + vcvtmd_s64_f64(v3);
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

uint64_t cnnavigation::GNSSPseudorange(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, int8x16_t a7, int8x16_t a8)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSPseudorange(a1, &v10, a2, a3, a4, a5, a6, 0, a7, a8, v9);
}

uint64_t cnnavigation::GNSSPseudorange(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, float64x2_t *a7, int8x16_t a8, int8x16_t a9)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSPseudorange(a1, &v10, a2, a3, a4, a5, a6, 1, a8, a9, a7);
}

uint64_t cnnavigation::BeiDouEphemerisDatabase::GetEphemerides(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a2 + 28) + 4000;
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
  if (v8 == v3 || v7 < *(v8 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  std::string::operator=((a3 + 8), (v8 + 48));
  *(a3 + 32) = *(v8 + 72);
  memcpy((a3 + 40), (v8 + 80), 0x10CuLL);
  return 0;
}

uint64_t cnnavigation::BeiDouEphemerisDatabase::SetEphemerides(cnnavigation::BeiDouEphemerisDatabase *this, const cnnavigation::BeiDouEphemerides *a2)
{
  v2 = a2 + 40;
  if (*(a2 + 32) != 4 || *(a2 + 40) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 9) + 4000;
  v7 = *(this + 1);
  if (!v7)
  {
LABEL_19:
    operator new();
  }

  v8 = this + 8;
  v9 = *(this + 1);
  do
  {
    v10 = *(v9 + 8);
    v12 = __OFSUB__(v10, v6);
    v11 = v10 - v6 < 0;
    v13 = v10 < v6;
    if (v11 == v12)
    {
      v8 = v9;
    }

    v9 = *&v9[8 * v13];
  }

  while (v9);
  if (v8 == this + 8 || v6 < *(v8 + 8))
  {
    while (1)
    {
      while (1)
      {
        v14 = v7;
        v15 = *(v7 + 32);
        if (v15 <= v6)
        {
          break;
        }

        v7 = *v14;
        if (!*v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 >= v6)
      {
        return 0;
      }

      v7 = v14[1];
      if (!v7)
      {
        goto LABEL_19;
      }
    }
  }

  if (*(a2 + 7) - *(v8 + 12) + (*(a2 + 12) - *(v8 + 22)) * 604800.0 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  std::string::operator=(v8 + 2, (a2 + 8));
  *(v8 + 9) = *(a2 + 4);
  memcpy(v8 + 80, v2, 0x10CuLL);
  return 0;
}

void sub_1D0C6F764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = &unk_1F4CD5F70;
  sub_1D0C6F7CC(va);
  _Unwind_Resume(a1);
}

void cnnavigation::BeiDouEphemerisDatabase::Reset(char **this)
{
  v2 = (this + 1);
  sub_1D0C6F840(this[1]);
  *this = v2;
  this[2] = 0;
  *v2 = 0;
}

uint64_t *sub_1D0C6F7CC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 40) = &unk_1F4CD5C60;
      if (*(v2 + 71) < 0)
      {
        operator delete(*(v2 + 48));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1D0C6F840(char *a1)
{
  if (a1)
  {
    sub_1D0C6F840(*a1);
    sub_1D0C6F840(*(a1 + 1));
    *(a1 + 5) = &unk_1F4CD5C60;
    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

uint64_t cnnavigation::GPSTimeOfFlight(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int a7, double *a8, double a9, double a10)
{
  v67 = *MEMORY[0x1E69E9840];
  v48 = a2[1];
  v49 = *a2;
  v47 = a2[2];
  *a6 = 0.0;
  v20 = 0.0;
  v21 = 10;
  while (1)
  {
    result = cnnavigation::GPSFindSat(a1, a3, &v56, 0, 0, a9 - v20);
    if (result)
    {
      break;
    }

    v23 = *a6;
    v24 = __sincos_stret(*a6 * 0.0000729211515);
    v25 = v24.__sinval * *(&v56 + 1) + v24.__cosval * *&v56;
    v26 = v24.__cosval * *(&v56 + 1) - v24.__sinval * *&v56;
    v27 = *&v57;
    *&v52 = v25;
    *(&v52 + 1) = v26;
    *&v53 = v57;
    v64 = 0.0;
    result = (*(*a4 + 16))(a4, a1, a2, &v52, &v64, a9 - v23, a10);
    if (result)
    {
      break;
    }

    v61 = 0.0;
    result = (*(*a5 + 16))(a5, a1, a2, &v52, &v61, a9 - *a6);
    if (result)
    {
      break;
    }

    v20 = sqrt((v26 - v48) * (v26 - v48) + (v25 - v49) * (v25 - v49) + (v27 - v47) * (v27 - v47)) / 299792458.0 + v64 + v61;
    *a6 = v20;
    if (!--v21)
    {
      if (a7)
      {
        result = cnnavigation::GPSFindSat(a1, a3, &v64, &v61, 0, a9 - v20);
        if (!result)
        {
          v28 = *a6;
          v29 = __sincos_stret(*a6 * 0.0000729211515);
          v30 = v66;
          v45 = v29.__cosval * v65 - v29.__sinval * v64;
          v46 = v29.__sinval * v65 + v29.__cosval * v64;
          v60[0] = v46;
          v60[1] = v45;
          v60[2] = v66;
          v51 = 0.0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          result = (*(*a4 + 24))(a4, a1, a2, v60, &v51, &v56, a9 - v28, a10);
          if (!result)
          {
            v50 = 0.0;
            v55 = 0.0;
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            result = (*(*a5 + 24))(a5, a1, a2, v60, &v50, &v52, a9 - *a6);
            if (!result)
            {
              v31 = sqrt((v45 - v48) * (v45 - v48) + (v46 - v49) * (v46 - v49) + (v30 - v47) * (v30 - v47));
              *a6 = v31 / 299792458.0 + v51 + v50;
              v32 = (v46 - v49) / v31;
              v33 = (v45 - v48) / v31;
              v34 = (v30 - v47) / v31;
              v35 = (v29.__cosval * v65 + -v29.__sinval * v64) * 0.0000729211515 - v29.__cosval * v61 - v29.__sinval * v62;
              v36 = (v65 * -v29.__sinval - v29.__cosval * v64) * 0.0000729211515 + v29.__sinval * v61 - v29.__cosval * v62;
              v37 = v29.__sinval * v62 + v29.__cosval * v61;
              v38 = *&v58;
              v39 = *(&v52 + 1);
              v40 = 1.0 - (*(&v58 + 1) * v35 - *&v56 + *&v59 * v36 - *(&v59 + 1) * v63 + (v33 * v36 + v32 * v35 - v34 * v63) * 0.00000000333564095 + v35 * *&v54 - *&v52 + *(&v54 + 1) * v36 - v55 * v63);
              v41 = *(&v56 + 1) / v40;
              *a8 = (*&v56 + *(&v58 + 1) * v37 + *&v59 * (v29.__cosval * v62 + -v29.__sinval * v61) + *(&v59 + 1) * v63 + (v33 * (v29.__cosval * v62 + -v29.__sinval * v61) + v32 * v37 + v34 * v63) * 0.00000000333564095 + *&v52 + *&v54 * v37 + *(&v54 + 1) * (v29.__cosval * v62 + -v29.__sinval * v61) + v55 * v63) / v40;
              a8[1] = v41;
              v42 = *(&v53 + 1);
              v43 = (*&v53 + *(&v57 + 1) - v33 * 0.00000000333564095) / v40;
              a8[2] = (v39 + *&v57 - v32 * 0.00000000333564095) / v40;
              a8[3] = v43;
              a8[4] = (v42 + v38 - v34 * 0.00000000333564095) / v40;
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

  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::GPSTimeOfFlightRate(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, int a8, double a9, double a10, double *a11)
{
  v155 = *MEMORY[0x1E69E9840];
  v148 = 0.0;
  result = cnnavigation::GPSTimeOfFlight(a1, a2, a4, a5, a6, &v148, 1, v144, a9, a10);
  if (!result)
  {
    v22 = v144[0];
    v23 = v145;
    v24 = v146;
    v25 = v147;
    *a7 = v144[0] + v145 * *a3 + v146 * a3[1] + v147 * a3[2];
    if (a8)
    {
      v131 = v24;
      v132 = v23;
      v133 = v144[1];
      v26 = *a2;
      v27 = a2[1];
      v28 = a2[2];
      v29 = v148;
      v30 = a9 - v148;
      result = cnnavigation::GPSFindSat(a1, a4, &v152, v151, v150, v30);
      if (!result)
      {
        v111 = v26;
        v112 = v22;
        v113 = v25;
        v118 = v27;
        v31 = __sincos_stret(v29 * 0.0000729211515);
        v33 = v152;
        v32 = v153;
        v34 = v154;
        v35 = v31.__cosval * v153 - v31.__sinval * v152;
        v149[0] = v31.__sinval * v153 + v31.__cosval * v152;
        v149[1] = v35;
        v149[2] = v154;
        v128 = *a7;
        v129 = v149[0];
        v122 = *a3;
        v123 = a3[1];
        v124 = v151[2];
        v125 = a3[2];
        v126 = v150[0];
        v114 = v150[1];
        v116 = v151[0];
        v120 = v151[1];
        v121 = v150[2];
        v143 = 0;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        result = (*(*a5 + 24))(a5, a1, a2, v149, &v143, &v139, v30, a10);
        if (!result)
        {
          v36 = v34;
          v37 = v129;
          v137 = 0;
          v138 = 0;
          v135 = 0u;
          v136 = 0u;
          v134 = 0u;
          result = (*(*a6 + 24))(a6, a1, a2, v149, &v138, &v134, v30);
          if (!result)
          {
            v38 = v129 - v111;
            v39 = 1.0 - v128;
            v40 = v31.__sinval * -0.0000729211515 * v128;
            v41 = v31.__cosval * 0.0000729211515 * -0.0000729211515 * v128;
            v42 = v31.__sinval * 0.0000729211515 * v128;
            v43 = v35 - v118;
            v44 = v31.__cosval * 0.0000729211515 * v128;
            v45 = v116 * v40 + v31.__cosval * v126 * v39 + v31.__sinval * v114 * v39 + v44 * v120;
            v46 = v39 * (v31.__sinval * v126) + v31.__cosval * -0.0000729211515 * v116 * v39 + v31.__sinval * 0.0000729211515 * 0.0000729211515 * v128 * v33 + v44 * v116;
            v47 = v35 * 0.0000729211515 - v31.__cosval * v116 - v31.__sinval * v120;
            v48 = (-(v31.__sinval * v32) - v31.__cosval * v33) * 0.0000729211515 + v31.__sinval * v116;
            v49 = v31.__cosval * v120 - v31.__sinval * v116;
            v50 = v31.__sinval * -0.0000729211515 * v33 - v31.__cosval * v116 - v31.__sinval * v120;
            v51 = v31.__cosval * -0.0000729211515 * v33 + v31.__sinval * v116;
            v52 = v31.__sinval * v120 + v31.__cosval * v116;
            v53 = v31.__cosval * -0.0000729211515 * v128;
            v54 = v39 * -(v31.__cosval * v126) + v31.__sinval * -0.0000729211515 * v116 * v39 + v41 * v33 + v42 * v116 + v31.__cosval * 0.0000729211515 * v120 * v39 + -(v31.__sinval * v114) * v39 + v31.__sinval * 0.0000729211515 * -0.0000729211515 * v128 * v32 + v53 * v120;
            v119 = v116 * v53 + -(v31.__sinval * v126) * (1.0 - v128) + v31.__cosval * v114 * (1.0 - v128) + v40 * v120;
            v55 = v46 + v31.__sinval * -0.0000729211515 * v120 * (1.0 - v128) + -(v31.__cosval * v114) * (1.0 - v128) + v41 * v32;
            v115 = v43 * v43 + v38 * v38;
            v117 = v55 + v42 * v120;
            v56 = v36 - v28;
            v57 = sqrt(v115 + v56 * v56);
            v58 = v48 - v31.__cosval * v120;
            v59 = v51 - v31.__cosval * v120;
            v130 = v50 + v31.__cosval * 0.0000729211515 * v32;
            v60 = v57 * (v57 * v57);
            v61 = (v56 * v56 + v43 * v43) / v60;
            v127 = v59 + v31.__sinval * -0.0000729211515 * v32;
            v62 = -((v37 - v111) * v43) / v60;
            v63 = -((v37 - v111) * (v36 - v28)) / v60;
            v64 = v52 + v47 * v112;
            v65 = v52 + v47 * v128;
            v66 = v49 + v58 * v112;
            v67 = (v37 - v111) / v57;
            v68 = v67 * (v45 + v54 * v112) + (v62 * v66 + v61 * v64 + v63 * (v124 - v112 * v124)) * v65;
            v69 = v58 * v62 + v61 * v47 - v63 * v124;
            v70 = v67 * v54;
            v71 = v133 * (v67 * v54) + v133 * v69 * v65;
            v72 = v132 * v70 + -(v61 - v69 * v132) * v65;
            v73 = v131 * v70 + -(v62 - v69 * v131) * v65;
            v74 = v113 * v70 + -(v63 - v69 * v113) * v65;
            v75 = (v56 * v56 + v38 * v38) / v60;
            v76 = v49 + v58 * v128;
            v77 = -(v43 * v56) / v60;
            v78 = v124 - v112 * v124;
            v79 = v68 + (v75 * v66 + v62 * v64 + v77 * v78) * v76;
            v80 = v47;
            v81 = v58 * v75 + v62 * v47 - v77 * v124;
            v82 = v71 + v133 * v81 * v76;
            v83 = v72 + -(v62 - v81 * v132) * v76;
            v84 = v73 + -(v75 - v81 * v131) * v76;
            v85 = v74 + -(v77 - v81 * v113) * v76;
            v86 = v43 / v57;
            v87 = v56 / v57;
            v88 = v115 / v60;
            v89 = -(v121 * (1.0 - v128));
            v90 = v124 - v124 * v128;
            v91 = v79 + v43 / v57 * (v119 + v117 * v112) + (v77 * v66 + v63 * v64 + v115 / v60 * v78) * v90 + v56 / v57 * ((1.0 - v128) * v121 + v89 * v112) + (-(v62 * v66) - v61 * v64 - v63 * v78) * v122 + (-(v75 * v66) - v62 * v64 - v77 * v78) * v123;
            v92 = v80;
            v93 = v58 * v77 + v63 * v80 - v115 / v60 * v124;
            v94 = v83 + v86 * v117 * v132 + -(v63 - v93 * v132) * v90;
            v95 = v84 + v86 * v117 * v131 + -(v77 - v93 * v131) * v90;
            v96 = v87 * v89;
            v97 = v82 + v86 * v117 * v133 + v133 * v93 * v90 + v96 * v133;
            v98 = v85 + v86 * v117 * v113 + -(v88 - v93 * v113) * v90;
            v99 = -(v62 * v58) - v61 * v92 + v63 * v124;
            v100 = v94 + v96 * v132 + (v61 + v99 * v132) * v122;
            v101 = v95 + v96 * v131 + (v62 + v99 * v131) * v122;
            v102 = -(v75 * v58) - v62 * v92 + v77 * v124;
            v103 = -(v77 * v58) - v63 * v92 + v88 * v124;
            v104 = v98 + v96 * v113 + (v63 + v99 * v113) * v122 + (v77 + v102 * v113) * v123 + (v88 + v103 * v113) * v125;
            v105 = 1.0 - (v86 * v127 + v67 * v130 - v87 * v124) / 299792458.0;
            *a11 = (v91 + (-(v77 * v66) - v63 * v64 - v88 * v78) * v125) / 299792458.0 / v105;
            a11[1] = (v97 + v133 * v99 * v122 + v133 * v102 * v123 + v133 * v103 * v125) / 299792458.0 / v105;
            a11[2] = (v100 + (v62 + v102 * v132) * v123 + (v63 + v103 * v132) * v125) / 299792458.0 / v105;
            a11[3] = (v101 + (v75 + v102 * v131) * v123 + (v77 + v103 * v131) * v125) / 299792458.0 / v105;
            v106 = *(&v140 + 1);
            v107 = *&v135;
            v108 = (*&v140 - v67 / 299792458.0 + *(&v134 + 1)) / v105;
            a11[4] = v104 / 299792458.0 / v105;
            a11[5] = v108;
            v109 = (*&v141 - v87 / 299792458.0 + *(&v135 + 1)) / v105;
            a11[6] = (v106 - v86 / 299792458.0 + v107) / v105;
            a11[7] = v109;
          }
        }
      }
    }

    else
    {
      result = 0;
    }
  }

  v110 = *MEMORY[0x1E69E9840];
  return result;
}

cnprint::CNPrinter *cnprint::CNPrinter::CNPrinter(cnprint::CNPrinter *this)
{
  v2 = sub_1D0B751F4(this, "com.apple.corenavigation");
  *(v2 + 6) = 250;
  std::timed_mutex::timed_mutex((v2 + 32));
  *(this + 22) = 0;
  *(this + 21) = this + 176;
  *(this + 152) = 1;
  *(this + 20) = 0;
  *(this + 23) = 0;
  sub_1D0B751F4(this + 192, &unk_1D0ED80C5);
  *(this + 85) = 0;
  v3 = MEMORY[0x1E69E5530] + 64;
  *(this + 79) = MEMORY[0x1E69E5530] + 64;
  v4 = *(MEMORY[0x1E69E54D0] + 16);
  v5 = *(MEMORY[0x1E69E54D0] + 8);
  *(this + 27) = v5;
  *(this + *(v5 - 24) + 216) = v4;
  v6 = (this + *(*(this + 27) - 24) + 216);
  std::ios_base::init(v6, this + 224);
  v7 = MEMORY[0x1E69E5530] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *(this + 27) = v7;
  *(this + 79) = v3;
  MEMORY[0x1D387E8B0](this + 224);
  *(this + 152) = 1;
  *(this + 20) = *(this + 20) & 0xFFFFFFFFFFFFFFF8 | 1;
  v46 = 0;
  v8 = this;
  if (*(this + 23) < 0)
  {
    v8 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = os_log_create(v8, v9);
  v44 = 0;
  v45 = v10;
  sub_1D0C71AB0(this + 168, 0);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 1;
  v11 = this;
  if (*(this + 23) < 0)
  {
    v11 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = os_log_create(v11, v12);
  v44 = 1;
  v45 = v13;
  sub_1D0C71AB0(this + 168, 1u);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 2;
  v14 = this;
  if (*(this + 23) < 0)
  {
    v14 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = os_log_create(v14, v15);
  v44 = 2;
  v45 = v16;
  sub_1D0C71AB0(this + 168, 2u);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 3;
  v17 = this;
  if (*(this + 23) < 0)
  {
    v17 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  v19 = os_log_create(v17, v18);
  v44 = 3;
  v45 = v19;
  sub_1D0C71AB0(this + 168, 3u);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 4;
  v20 = this;
  if (*(this + 23) < 0)
  {
    v20 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  v22 = os_log_create(v20, v21);
  v44 = 4;
  v45 = v22;
  sub_1D0C71AB0(this + 168, 4u);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 5;
  v23 = this;
  if (*(this + 23) < 0)
  {
    v23 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = os_log_create(v23, v24);
  v44 = 5;
  v45 = v25;
  sub_1D0C71AB0(this + 168, 5u);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 8;
  v26 = this;
  if (*(this + 23) < 0)
  {
    v26 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  v28 = os_log_create(v26, v27);
  v44 = 8;
  v45 = v28;
  sub_1D0C71AB0(this + 168, 8u);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 10;
  v29 = this;
  if (*(this + 23) < 0)
  {
    v29 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  v31 = os_log_create(v29, v30);
  v44 = 10;
  v45 = v31;
  sub_1D0C71AB0(this + 168, 0xAu);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 11;
  v32 = this;
  if (*(this + 23) < 0)
  {
    v32 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v33 = __p;
  }

  else
  {
    v33 = __p[0];
  }

  v34 = os_log_create(v32, v33);
  v44 = 11;
  v45 = v34;
  sub_1D0C71AB0(this + 168, 0xBu);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 12;
  v35 = this;
  if (*(this + 23) < 0)
  {
    v35 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  v37 = os_log_create(v35, v36);
  v44 = 12;
  v45 = v37;
  sub_1D0C71AB0(this + 168, 0xCu);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 13;
  v38 = this;
  if (*(this + 23) < 0)
  {
    v38 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v39 = __p;
  }

  else
  {
    v39 = __p[0];
  }

  v40 = os_log_create(v38, v39);
  v44 = 13;
  v45 = v40;
  sub_1D0C71AB0(this + 168, 0xDu);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1D0C70B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0C54438(v17, MEMORY[0x1E69E54D0]);
  MEMORY[0x1D387EBF0](v16);
  if (*(v14 + 215) < 0)
  {
    operator delete(*(v15 + 24));
  }

  sub_1D0B99218(*v18);
  MEMORY[0x1D387E7E0](v14 + 32);
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

_BYTE *cnprint::CNPrinter::GetLogCategoryString@<X0>(_WORD *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D0B751F4(a2, "error");
  switch(*a1)
  {
    case 0:
      if (result[23] < 0)
      {
        *(result + 1) = 7;
        result = *result;
      }

      else
      {
        result[23] = 7;
      }

      *(result + 3) = 1818325605;
      v7 = 1701733735;
      goto LABEL_61;
    case 1:
      if (result[23] < 0)
      {
        *(result + 1) = 18;
        result = *result;
      }

      else
      {
        result[23] = 18;
      }

      *(result + 8) = 31090;
      *result = *"cnbuildinggeometry";
      result += 18;
      goto LABEL_62;
    case 2:
      if (result[23] < 0)
      {
        *(result + 1) = 12;
        result = *result;
      }

      else
      {
        result[23] = 12;
      }

      *(result + 2) = 1852795252;
      v6 = "cnestimation";
      goto LABEL_58;
    case 3:
      if (result[23] < 0)
      {
        *(result + 1) = 11;
        result = *result;
      }

      else
      {
        result[23] = 11;
      }

      *(result + 7) = 1802661751;
      *result = *"cnframework";
      result += 11;
      goto LABEL_62;
    case 4:
      if (result[23] < 0)
      {
        *(result + 1) = 8;
        result = *result;
      }

      else
      {
        result[23] = 8;
      }

      v4 = 0x78697274616D6E63;
      goto LABEL_53;
    case 5:
      if (result[23] < 0)
      {
        *(result + 1) = 12;
        result = *result;
      }

      else
      {
        result[23] = 12;
      }

      *(result + 2) = 1852795252;
      v6 = "cnnavigation";
      goto LABEL_58;
    case 6:
      if (result[23] < 0)
      {
        *(result + 1) = 14;
        result = *result;
      }

      else
      {
        result[23] = 14;
      }

      qmemcpy(result, "cnplatforminfo", 14);
      result += 14;
      goto LABEL_62;
    case 7:
      if (result[23] < 0)
      {
        *(result + 1) = 10;
        result = *result;
      }

      else
      {
        result[23] = 10;
      }

      *(result + 4) = 27491;
      v5 = "cnplayback";
      goto LABEL_44;
    case 8:
      if (result[23] < 0)
      {
        *(result + 1) = 7;
        result = *result;
      }

      else
      {
        result[23] = 7;
      }

      *(result + 3) = 1953393010;
      v7 = 1919970915;
LABEL_61:
      *result = v7;
      result += 7;
      goto LABEL_62;
    case 9:
      if (result[23] < 0)
      {
        *(result + 1) = 10;
        result = *result;
      }

      else
      {
        result[23] = 10;
      }

      *(result + 4) = 26229;
      v5 = "cnprototuf";
LABEL_44:
      *result = *v5;
      result += 10;
      goto LABEL_62;
    case 0xA:
      if (result[23] < 0)
      {
        *(result + 1) = 12;
        result = *result;
      }

      else
      {
        result[23] = 12;
      }

      *(result + 2) = 1935894900;
      v6 = "cnstatistics";
LABEL_58:
      *result = *v6;
      result += 12;
      goto LABEL_62;
    case 0xB:
      if (result[23] < 0)
      {
        *(result + 1) = 8;
        result = *result;
      }

      else
      {
        result[23] = 8;
      }

      v4 = 0x726F746365766E63;
      goto LABEL_53;
    case 0xC:
      if (result[23] < 0)
      {
        *(result + 1) = 5;
        result = *result;
      }

      else
      {
        result[23] = 5;
      }

      result[4] = 110;
      *result = 1702257010;
      result += 5;
      goto LABEL_62;
    case 0xD:
      if (result[23] < 0)
      {
        *(result + 1) = 8;
        result = *result;
      }

      else
      {
        result[23] = 8;
      }

      v4 = 0x6E75726B63617274;
LABEL_53:
      *result = v4;
      result += 8;
LABEL_62:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D0C70F70(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *(a1 + 216) = *MEMORY[0x1E69E54D0];
  *(a1 + 216 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1D387E8C0](a1 + 224);
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](a1 + 632);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  sub_1D0B99218(*(a1 + 176));
  MEMORY[0x1D387E7E0](a1 + 32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *cnprint::CNPrinter::GetLogLevelString@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D0B751F4(a2, "None");
  v4 = *a1;
  if (v4 > 2)
  {
    if (*a1 <= 4u)
    {
      if (v4 != 3)
      {
        if (v4 != 4)
        {
          return result;
        }

        if (result[23] < 0)
        {
          *(result + 1) = 5;
          result = *result;
        }

        else
        {
          result[23] = 5;
        }

        result[4] = 114;
        v6 = 1869771333;
        goto LABEL_40;
      }

      if (result[23] < 0)
      {
        *(result + 1) = 7;
        result = *result;
      }

      else
      {
        result[23] = 7;
      }

      *(result + 3) = 1953264993;
      v5 = 1634100548;
      goto LABEL_28;
    }

    if (v4 != 5)
    {
      if (v4 != 255)
      {
        return result;
      }

      if (result[23] < 0)
      {
        *(result + 1) = 4;
        result = *result;
      }

      else
      {
        result[23] = 4;
      }

      v7 = 1701736270;
      goto LABEL_37;
    }

    if (result[23] < 0)
    {
      *(result + 1) = 5;
      result = *result;
    }

    else
    {
      result[23] = 5;
    }

    result[4] = 116;
    v6 = 1819631942;
    goto LABEL_40;
  }

  if (*a1)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return result;
      }

      if (result[23] < 0)
      {
        *(result + 1) = 4;
        result = *result;
      }

      else
      {
        result[23] = 4;
      }

      v7 = 1868983881;
LABEL_37:
      *result = v7;
      result += 4;
      goto LABEL_41;
    }

    if (result[23] < 0)
    {
      *(result + 1) = 5;
      result = *result;
    }

    else
    {
      result[23] = 5;
    }

    result[4] = 103;
    v6 = 1969382724;
LABEL_40:
    *result = v6;
    result += 5;
    goto LABEL_41;
  }

  if (result[23] < 0)
  {
    *(result + 1) = 7;
    result = *result;
  }

  else
  {
    result[23] = 7;
  }

  *(result + 3) = 1702063970;
  v5 = 1651664214;
LABEL_28:
  *result = v5;
  result += 7;
LABEL_41:
  *result = 0;
  return result;
}

BOOL sub_1D0C71260(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1D0C54390();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void cnprint::CNPrinter::DisableLogStream(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v9 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v9))
  {
    v8 = 8;
    v7 = 2;
    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v8, &v7, "Disabling log stream %zu", v2, v3, v4, v5, *a1);
    v6 = *a1;
    if (*a1 >= 3uLL)
    {
      sub_1D0C543A8("bitset set argument out of range");
    }

    qword_1EC5FB958 &= ~(1 << v6);
    if (v6 == 1 && qword_1EC5FBA10 && !std::filebuf::close())
    {
      std::ios_base::clear((&qword_1EC5FB990 + *(qword_1EC5FB990 - 24)), *(&qword_1EC5FB990 + *(qword_1EC5FB990 - 24) + 32) | 4);
    }

    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

void cnprint::CNPrinter::EnableLogStream(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v9 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v9))
  {
    v6 = *a1;
    if (*a1 >= 3uLL)
    {
      sub_1D0C543A8("bitset set argument out of range");
    }

    qword_1EC5FB958 |= 1 << v6;
    v8 = 8;
    v7 = 2;
    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v8, &v7, "Enabling log stream %zu", v2, v3, v4, v5, v6);
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

unint64_t cnprint::CNPrinter::IsLogStreamEnabled(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v4 = dword_1EC5FB8D0;
  if (!sub_1D0B7DED0(&stru_1EC5FB8D8, &v4))
  {
    return 0;
  }

  if (*a1 >= 3uLL)
  {
    sub_1D0C543A8("bitset test argument out of range");
  }

  v2 = (qword_1EC5FB958 >> *a1) & 1;
  std::timed_mutex::unlock(&stru_1EC5FB8D8);
  return v2;
}

void cnprint::CNPrinter::GetFileLogStreamName(cnprint::CNPrinter *this@<X0>, uint64_t a2@<X8>)
{
  cnprint::CNPrinter::GetCNPrinter(this);
  v3 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v3))
  {
    if (byte_1EC5FB98F < 0)
    {
      sub_1D0BC39B4(a2, xmmword_1EC5FB978, *(&xmmword_1EC5FB978 + 1));
    }

    else
    {
      *a2 = xmmword_1EC5FB978;
      *(a2 + 16) = unk_1EC5FB988;
    }

    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }

  else
  {
    sub_1D0B751F4(a2, &unk_1D0ED80C5);
  }
}

void cnprint::CNPrinter::Print(cnprint::CNPrinter *a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 23) >= 0)
  {
    LOBYTE(v8) = a3;
  }

  else
  {
    v8 = *a3;
  }

  cnprint::CNPrinter::Print(a1, a2, "%s", a4, a5, a6, a7, a8, v8);
}

void cnprint::CNPrinter::SetFileLogStreamName(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v16 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v16))
  {
    if (qword_1EC5FBA10)
    {
      v15 = 8;
      v14 = 2;
      if (byte_1EC5FB98F >= 0)
      {
        v6 = &xmmword_1EC5FB978;
      }

      else
      {
        LOBYTE(v6) = xmmword_1EC5FB978;
      }

      cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v15, &v14, "Closing file log stream %s", v2, v3, v4, v5, v6);
      if (!std::filebuf::close())
      {
        std::ios_base::clear((&qword_1EC5FB990 + *(qword_1EC5FB990 - 24)), *(&qword_1EC5FB990 + *(qword_1EC5FB990 - 24) + 32) | 4);
      }
    }

    std::string::operator=(&xmmword_1EC5FB978, a1);
    v13 = 8;
    v12 = 2;
    if (byte_1EC5FB98F >= 0)
    {
      v11 = &xmmword_1EC5FB978;
    }

    else
    {
      LOBYTE(v11) = xmmword_1EC5FB978;
    }

    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v13, &v12, "Setting file log stream %s", v7, v8, v9, v10, v11);
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

void cnprint::CNPrinter::SetLogLevel(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  __p[0] = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, __p))
  {
    byte_1EC5FB950 = *a1;
    v10 = 8;
    v9 = 2;
    cnprint::CNPrinter::GetLogLevelString(a1, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      LOBYTE(v6) = __p[0];
    }

    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v10, &v9, "Setting log level %s", v2, v3, v4, v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

void sub_1D0C71824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *cnprint::CNLogFormatter::GetLogPrefix@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[47] < 0)
  {
    return sub_1D0BC39B4(a2, *(this + 3), *(this + 4));
  }

  *a2 = *(this + 24);
  *(a2 + 16) = *(this + 5);
  return this;
}

const void **cnprint::CNLogFormatter::FormatGeneral(const void **a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return cnprint::CNLogFormatter::FormatGeneral(a1, "%s", v2);
}

uint64_t cnprint::CNLogFormatter::FormatGeneral(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = *a3;
  }

  return cnprint::CNLogFormatter::FormatGeneral(a1, a2, "%s", v3);
}

cnprint::CNLogFormatter *cnprint::CNLogFormatter::FormatWarning(cnprint::CNLogFormatter *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return cnprint::CNLogFormatter::FormatWarning(a1, "%s", v2);
}

uint64_t cnprint::CNLogFormatter::FormatWarning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return cnprint::CNLogFormatter::FormatWarning(a1, a2, "%s", a4, a5, a6, a7, a8, v8);
}

uint64_t sub_1D0C71960(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1D0C71AB0(uint64_t result, unsigned __int16 a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1D0C71B88(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void CNPlatformInfo::CNPlatformInfo(CNPlatformInfo *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  *this = 0;
  *(this + 2) = 0;
  sub_1D0B751F4(this + 8, &unk_1D0ED80C5);
  sub_1D0B751F4(this + 32, &unk_1D0ED80C5);
  *(this + 7) = 0;
  v9 = *(a2 + 4);
  if (v9 <= 2007000)
  {
    v10 = 0;
    v11 = *(a2 + 4);
    switch(v9)
    {
      case 0:
        v17 = 6;
        v16 = 4;
        cnprint::CNPrinter::Print(&v17, &v16, "ConvertProtobufToPlatformInfoObject encountered the HW_PROTOBUF_DEFAULT type that it cannot convert: %d", v4, v5, v6, v7, v8, 0);
        goto LABEL_4;
      case 1:
        goto LABEL_5;
      case 2:
        v10 = 1;
        goto LABEL_5;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 50:
      case 55:
      case 57:
      case 58:
        v15 = 0;
        v14 = 4;
        cnprint::CNPrinter::Print(&v15, &v14, "ConvertProtobufToPlatformInfoObject encountered an unhandled hardware type: %d", v4, v5, v6, v7, v8, v9);
LABEL_4:
        v10 = 0;
        goto LABEL_5;
      case 8:
        v10 = 2;
        goto LABEL_5;
      case 9:
        v10 = 3;
        goto LABEL_5;
      case 10:
        v10 = 4;
        goto LABEL_5;
      case 11:
        v10 = 5;
        goto LABEL_5;
      case 12:
        v10 = 6;
        goto LABEL_5;
      case 13:
        v10 = 7;
        goto LABEL_5;
      case 14:
        v10 = 8;
        goto LABEL_5;
      case 15:
        v10 = 9;
        goto LABEL_5;
      case 16:
        v10 = 10;
        goto LABEL_5;
      case 17:
        v10 = 11;
        goto LABEL_5;
      case 18:
        v10 = 12;
        goto LABEL_5;
      case 19:
        v10 = 13;
        goto LABEL_5;
      case 20:
        v10 = 14;
        goto LABEL_5;
      case 21:
        v10 = 15;
        goto LABEL_5;
      case 22:
        v10 = 16;
        goto LABEL_5;
      case 23:
        v10 = 17;
        goto LABEL_5;
      case 24:
        v10 = 18;
        goto LABEL_5;
      case 25:
        v10 = 19;
        goto LABEL_5;
      case 26:
        v10 = 20;
        goto LABEL_5;
      case 27:
        v10 = 21;
        goto LABEL_5;
      case 28:
        v10 = 22;
        goto LABEL_5;
      case 29:
        v10 = 23;
        goto LABEL_5;
      case 30:
        v10 = 24;
        goto LABEL_5;
      case 31:
        v10 = 25;
        goto LABEL_5;
      case 32:
        v10 = 26;
        goto LABEL_5;
      case 33:
        v10 = 27;
        goto LABEL_5;
      case 34:
        v10 = 28;
        goto LABEL_5;
      case 35:
        v10 = 29;
        goto LABEL_5;
      case 36:
        v10 = 30;
        goto LABEL_5;
      case 37:
        v10 = 31;
        goto LABEL_5;
      case 38:
        v10 = 32;
        goto LABEL_5;
      case 39:
        v10 = 33;
        goto LABEL_5;
      case 40:
        v10 = 34;
        goto LABEL_5;
      case 41:
        v10 = 35;
        goto LABEL_5;
      case 42:
        v10 = 36;
        goto LABEL_5;
      case 43:
        v10 = 37;
        goto LABEL_5;
      case 44:
        v10 = 38;
        goto LABEL_5;
      case 45:
        v10 = 39;
        goto LABEL_5;
      case 46:
        v10 = 42;
        goto LABEL_5;
      case 47:
        v10 = 40;
        goto LABEL_5;
      case 51:
        v10 = 41;
        goto LABEL_5;
      case 52:
        v10 = 43;
        goto LABEL_5;
      case 53:
        v10 = 44;
        goto LABEL_5;
      case 54:
        v10 = 45;
        goto LABEL_5;
      case 56:
        v10 = 46;
        goto LABEL_5;
      case 59:
        v10 = 47;
        goto LABEL_5;
      case 60:
        v10 = 48;
        goto LABEL_5;
      case 61:
        v10 = 49;
        goto LABEL_5;
      case 62:
        v10 = 50;
        goto LABEL_5;
      case 63:
        v10 = 51;
        goto LABEL_5;
      case 64:
        v10 = 52;
        goto LABEL_5;
      case 65:
        v10 = 53;
        goto LABEL_5;
      case 66:
        v10 = 57;
        goto LABEL_5;
      case 67:
        v10 = 58;
        goto LABEL_5;
      case 68:
        v10 = 54;
        goto LABEL_5;
      case 69:
        v10 = 55;
        goto LABEL_5;
      case 70:
        v10 = 60;
        goto LABEL_5;
      case 71:
        v10 = 61;
        goto LABEL_5;
      case 72:
        v10 = 62;
        goto LABEL_5;
      case 73:
        v10 = 63;
        goto LABEL_5;
      case 74:
        v10 = 64;
        goto LABEL_5;
      case 75:
        v10 = 65;
        goto LABEL_5;
      case 76:
        v10 = 66;
        goto LABEL_5;
      case 77:
        v10 = 67;
        goto LABEL_5;
      case 78:
        v10 = 68;
        goto LABEL_5;
      case 79:
        v10 = 69;
        goto LABEL_5;
      case 80:
        v10 = 70;
        goto LABEL_5;
      case 81:
        v10 = 71;
        goto LABEL_5;
      case 82:
        v10 = 72;
        goto LABEL_5;
      case 83:
        v10 = 73;
        goto LABEL_5;
      case 84:
        v10 = 74;
        goto LABEL_5;
      case 85:
        v10 = 75;
        goto LABEL_5;
      case 86:
        v10 = 76;
        goto LABEL_5;
      case 100:
        v10 = 83;
        goto LABEL_5;
      case 200:
        v10 = 56;
        goto LABEL_5;
      default:
        goto LABEL_6;
    }
  }

  if (v9 > 3003021)
  {
    if (v9 <= 4001001)
    {
      if (v9 == 3003022)
      {
        v10 = 81;
        goto LABEL_5;
      }

      if (v9 == 3003023)
      {
        v10 = 82;
        goto LABEL_5;
      }
    }

    else
    {
      switch(v9)
      {
        case 4001002:
          v10 = 84;
          goto LABEL_5;
        case 4001003:
          v10 = 85;
          goto LABEL_5;
        case 4001004:
          v10 = 86;
LABEL_5:
          *this = v10;
          break;
      }
    }
  }

  else
  {
    if (v9 > 3003018)
    {
      if (v9 == 3003019)
      {
        v10 = 78;
      }

      else if (v9 == 3003020)
      {
        v10 = 79;
      }

      else
      {
        v10 = 80;
      }

      goto LABEL_5;
    }

    if (v9 == 2007001)
    {
      v10 = 59;
      goto LABEL_5;
    }

    if (v9 == 3003018)
    {
      v10 = 77;
      goto LABEL_5;
    }
  }

LABEL_6:
  *(this + 2) = *(a2 + 20);
  std::string::operator=((this + 8), *(a2 + 3));
  std::string::operator=((this + 32), *(a2 + 4));
  v12 = *(a2 + 10);
  if (v12 <= 3)
  {
    *(this + 14) = v12;
  }

  v13 = *(a2 + 11);
  if (v13 <= 2)
  {
    *(this + 15) = v13;
  }
}

void sub_1D0C72164(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CNPlatformInfo::CNPlatformInfo(uint64_t a1, __int16 a2, char a3, __int128 *a4, __int128 *a5, int a6, int a7)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 8), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 24) = *(a4 + 2);
    *(a1 + 8) = v11;
  }

  if (*(a5 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 32), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 48) = *(a5 + 2);
    *(a1 + 32) = v12;
  }

  *(a1 + 56) = a6;
  *(a1 + 60) = a7;
  return a1;
}

void sub_1D0C72238(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CNPlatformInfo::GetGnssChipset(CNPlatformInfo *this)
{
  if (*this - 2 > 0x54)
  {
    return 0;
  }

  else
  {
    return dword_1D0E77C40[(*this - 2)];
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_ShutdownFile_CoreNavigationCLPRayTracingTilesAvailability_2eproto(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability *this)
{
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_;
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::LogEntry(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6318;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6318;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::AvailabilityFileTimestamp(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6390;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6390;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::AvailabilityFileCommonHeader(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6408;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6408;
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::RayTracingTilesAvailabilityHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  *this = &unk_1F4CD6480;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6480;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::LatLonGeodetic(void *this)
{
  *this = &unk_1F4CD64F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD64F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::BoundingBox(void *this)
{
  *this = &unk_1F4CD6570;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD6570;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::RegionSpecificAvailableTiles(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD65E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD65E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::RayTracingTilesAvailabilityData(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  *this = &unk_1F4CD6660;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CD6660;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_;
  *(this + 16) = v1;
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability *this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C72948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD6318;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    *(this + 5) |= 1u;
    v4 = *(this + 1);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(v4, v5);
  }
}

void sub_1D0C72AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this)
{
  *this = &unk_1F4CD6318;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 20))
  {
    this = *(this + 8);
    if (this)
    {
      this = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::Clear(this);
    }
  }

  *(v1 + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::Clear(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      v3 = *(this + 1);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 13);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::Clear(v4);
      }
    }
  }

  result = sub_1D0C77384(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v14 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || *v7 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14))
        {
          return 0;
        }
      }

      else
      {
        v14 = *v7;
        *(a2 + 1) = v7 + 1;
      }

      v8 = *(a2 + 14);
      v9 = *(a2 + 15);
      *(a2 + 14) = v8 + 1;
      if (v8 >= v9)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergePartialFromCodedStream(v6, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v10 = *(a2 + 14);
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v12 < 0 == v11)
      {
        *(a2 + 14) = v12;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    result = (v5 + v6 + 1);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v7) = *(a2 + 8);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= v7)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
      }

      v9 = *(*(a2 + 3) + 8 * v8);
      v10 = *(this + 9);
      v11 = *(this + 8);
      if (v11 >= v10)
      {
        if (v10 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v10 = *(this + 9);
        }

        *(this + 9) = v10 + 1;
        operator new();
      }

      v12 = *(this + 3);
      *(this + 8) = v11 + 1;
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = *(a2 + 8);
    }

    while (v8 < v7);
  }

  LOBYTE(v13) = *(a2 + 52);
  if (v13)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v14 = *(this + 1);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 1);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(v6);
        v15 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(v14, v15);
      v13 = *(a2 + 13);
    }

    if ((v13 & 2) != 0)
    {
      *(this + 13) |= 2u;
      v16 = *(this + 2);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 2);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(v6);
        v17 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 16);
      }

      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(v16, v17);
    }
  }
}

void sub_1D0C73324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::AvailabilityFileTimestamp(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD6390;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    result = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = result;
  }

  return result;
}

void sub_1D0C73518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::~AvailabilityFileTimestamp(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this)
{
  *this = &unk_1F4CD6390;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::~AvailabilityFileTimestamp(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 9)
      {
        break;
      }

      v7 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v7) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v7;
      *(this + 5) |= 1u;
      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this)
{
  v1 = ((*(this + 5) << 31) >> 31) & 9;
  *(this + 4) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::AvailabilityFileCommonHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD6408;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1D0C73A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::~AvailabilityFileCommonHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this)
{
  *this = &unk_1F4CD6408;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::~AvailabilityFileCommonHeader(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(this + 4) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SharedCtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::RayTracingTilesAvailabilityHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  *this = &unk_1F4CD6480;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(v6, v7);
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 12) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = *(a2 + 6);
    *(this + 12) |= 8u;
    *(this + 6) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 7);
    *(this + 12) |= 0x10u;
    *(this + 7) = v11;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 8);
    *(this + 12) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_24:
    v13 = *(a2 + 9);
    *(this + 12) |= 0x40u;
    *(this + 9) = v13;
    if ((*(a2 + 12) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 10);
    *(this + 12) |= 0x80u;
    *(this + 10) = v5;
  }
}

void sub_1D0C741C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::~RayTracingTilesAvailabilityHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  *this = &unk_1F4CD6480;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::~RayTracingTilesAvailabilityHeader(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 40) = 0;
    *(this + 32) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_97;
          }
        }

        else if (v6 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_73;
          }
        }

        else if (v6 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_81;
        }

        goto LABEL_36;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_57;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_65;
        }

        goto LABEL_36;
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_49;
      }

LABEL_36:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_36;
    }

    *(this + 12) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v39 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
      {
        return 0;
      }
    }

    else
    {
      v39 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v18 = *(a2 + 14);
    v19 = *(a2 + 15);
    *(a2 + 14) = v18 + 1;
    if (v18 >= v19)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v20 = *(a2 + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(a2 + 14) = v22;
    }

    v23 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v23 < v8 && *v23 == 16)
    {
      v9 = v23 + 1;
      *(a2 + 1) = v9;
LABEL_49:
      if (v9 >= v8 || (v24 = *v9, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v24;
        v25 = v9 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 12) |= 2u;
      if (v25 < v8 && *v25 == 24)
      {
        v16 = v25 + 1;
        *(a2 + 1) = v16;
LABEL_57:
        if (v16 >= v8 || (v27 = *v16, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v27;
          v28 = v16 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 12) |= 4u;
        if (v28 < v8 && *v28 == 32)
        {
          v11 = v28 + 1;
          *(a2 + 1) = v11;
LABEL_65:
          if (v11 >= v8 || (v29 = *v11, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v29;
            v30 = v11 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 12) |= 8u;
          if (v30 < v8 && *v30 == 40)
          {
            v15 = v30 + 1;
            *(a2 + 1) = v15;
LABEL_73:
            if (v15 >= v8 || (v31 = *v15, v31 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v32 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v31;
              v32 = v15 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 12) |= 0x10u;
            if (v32 < v8 && *v32 == 48)
            {
              v10 = v32 + 1;
              *(a2 + 1) = v10;
LABEL_81:
              if (v10 >= v8 || (v33 = *v10, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v33;
                v34 = v10 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 12) |= 0x20u;
              if (v34 < v8 && *v34 == 56)
              {
                v17 = v34 + 1;
                *(a2 + 1) = v17;
LABEL_89:
                if (v17 >= v8 || (v35 = *v17, v35 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v35;
                  v36 = v17 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 12) |= 0x40u;
                if (v36 < v8 && *v36 == 64)
                {
                  v12 = v36 + 1;
                  *(a2 + 1) = v12;
LABEL_97:
                  if (v12 >= v8 || (v37 = *v12, v37 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 10) = v37;
                    v38 = v12 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 12) |= 0x80u;
                  if (v38 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
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

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[12];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[12];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[12];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
    if ((v5[12] & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_44;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8);
  }

  v5 = ((*(v4 + 20) << 31) >> 31) & 9;
  *(v4 + 16) = v5;
  v3 = v5 | 2u;
  v2 = *(this + 12);
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 4);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
  }

LABEL_13:
  if ((v2 & 4) != 0)
  {
    v8 = *(this + 5);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(this + 6);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_28:
  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_32:
  v14 = *(this + 8);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_36:
  v16 = *(this + 9);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_40:
    v18 = *(this + 10);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
  }

LABEL_44:
  *(this + 11) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::LatLonGeodetic(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  *this = &unk_1F4CD64F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0C74E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::~LatLonGeodetic(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this)
{
  *this = &unk_1F4CD64F8;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::~LatLonGeodetic(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v9;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 1)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      v7 = *(a2 + 1);
      if (v7 < *(a2 + 2) && *v7 == 17)
      {
        *(a2 + 1) = v7 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::BoundingBox(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  *this = &unk_1F4CD6570;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(v6, v7);
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v8 = *(this + 2);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 2);
      if (!v9)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
        v9 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 16);
      }

      return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(v8, v9);
    }
  }

  return result;
}

void sub_1D0C75520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::~BoundingBox(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this)
{
  *this = &unk_1F4CD6570;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::~BoundingBox(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 28);
  if (v1)
  {
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 28);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_15;
      }

      *(this + 7) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v22 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
        {
          return 0;
        }
      }

      else
      {
        v22 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v11 = *(a2 + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(a2 + 14) = v13;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 18)
      {
        *(a2 + 1) = v14 + 1;
LABEL_27:
        *(this + 7) |= 2u;
        v15 = *(this + 2);
        if (!v15)
        {
          operator new();
        }

        v23 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v19 = *(a2 + 14);
        v12 = __OFSUB__(v19, 1);
        v20 = v19 - 1;
        if (v20 < 0 == v12)
        {
          *(a2 + 14) = v20;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this)
{
  if (!*(this + 28))
  {
    v2 = 0;
    goto LABEL_20;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
    v3 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8);
  }

  v4 = *(v3 + 28);
  if (*(v3 + 28))
  {
    if ((v4 & 2) != 0)
    {
      v4 = ((v4 << 31 >> 31) & 9) + 9;
    }

    else
    {
      v4 = (v4 << 31 >> 31) & 9;
    }
  }

  *(v3 + 24) = v4;
  v2 = (v4 + 2);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_13:
    v5 = *(this + 2);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 16);
    }

    v6 = *(v5 + 28);
    if (*(v5 + 28))
    {
      if ((v6 & 2) != 0)
      {
        v6 = ((v6 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v6 = (v6 << 31 >> 31) & 9;
      }
    }

    *(v5 + 24) = v6;
    v2 = (v2 + v6 + 2);
  }

LABEL_20:
  *(this + 6) = v2;
  return v2;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::RegionSpecificAvailableTiles(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F4CD65E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(this, a2);
  return this;
}

void sub_1D0C75D70(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    sub_1D0C773F4(v3 + 2, *(v3 + 6) + v5);
    this = memcpy((*(v3 + 2) + 8 * *(v3 + 6)), *(a2 + 2), 8 * *(a2 + 6));
    *(v3 + 6) += *(a2 + 6);
  }

  if (*(a2 + 40))
  {
    *(v3 + 10) |= 1u;
    v6 = *(v3 + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0C75ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::~RegionSpecificAvailableTiles(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this)
{
  *this = &unk_1F4CD65E8;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SharedDtor(this);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::~RegionSpecificAvailableTiles(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 40))
  {
    this = *(this + 8);
    if (this)
    {
      this = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::Clear(this);
    }
  }

  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_16;
      }

      *(this + 10) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v22[0] = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v22))
        {
          return 0;
        }
      }

      else
      {
        v22[0] = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v14 = *(a2 + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(a2 + 14) = v16;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v17 < v9 && *v17 == 18)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_31:
        v23 = 0;
        if (v10 >= v9 || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          *v22 = 0;
          v18 = *(a2 + 1);
          if (v18 >= *(a2 + 2) || (*v18 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v22))
            {
              return 0;
            }
          }

          else
          {
            *v22 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v19 = *(this + 6);
          if (v19 == *(this + 7))
          {
            sub_1D0C773F4(this + 2, v19 + 1);
            v19 = *(this + 6);
          }

          v20 = *v22;
          v21 = *(this + 2);
          *(this + 6) = v19 + 1;
          *(v21 + 8 * v19) = v20;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_45:
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      result = sub_1D0C763C8(1, 0x12u, a2, this + 16);
      if (!result)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (v6 == 2)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_16:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1D0C763C8(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a4)
{
  v19 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (*v7 & 0x8000000000000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v19 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  if (v9 == v10)
  {
    sub_1D0C773F4(a4, v9 + 1);
    v9 = *(a4 + 8);
    v10 = *(a4 + 12);
  }

  v11 = v19;
  v12 = *a4;
  v13 = v9 + 1;
  *(a4 + 8) = v9 + 1;
  *(v12 + 8 * v9) = v11;
  if (v10 - (v9 + 1) >= 1)
  {
    v14 = v10 - v9;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v18 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v18 < 2 || (a2 & 0x7F | 0x80) != *v18 || a2 >> 7 != v18[1])
        {
          return 1;
        }

        v17 = (v18 + 2);
      }

      else
      {
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 >= v15 || *v16 != a2)
        {
          return 1;
        }

        v17 = (v16 + 1);
      }

      *(this + 1) = v17;
      if (v17 >= v15 || (*v17 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v13 = *(a4 + 8);
      }

      else
      {
        v19 = *v17;
        *(this + 1) = v17 + 1;
      }

      if (v13 >= *(a4 + 12))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
        v13 = *(a4 + 8);
      }

      *(*a4 + 8 * v13++) = v19;
      *(a4 + 8) = v13;
      --v14;
    }

    while (v14 > 1);
  }

  return 1;
}

void sub_1D0C765A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v7 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 16) + 8 * v8);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a2);
        ++v8;
      }

      while (v8 < *(v5 + 24));
    }
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this)
{
  if (*(this + 40))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8);
    }

    v2 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::ByteSize(v3) + 2;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 6) < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v4 = 0;
    LODWORD(v5) = 0;
    do
    {
      v5 = (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 2) + 8 * v4++)) + v5);
    }

    while (v4 < *(this + 6));
    if (v5 > 0)
    {
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
      }

      v2 += v6;
    }
  }

  result = (v2 + v5);
  *(this + 8) = v5;
  *(this + 9) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    result = *(a2 + 3);
    *(a2 + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v5;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::RayTracingTilesAvailabilityData(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  *this = &unk_1F4CD6660;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(this, a2);
  return this;
}

void sub_1D0C76944(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::~RayTracingTilesAvailabilityData(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  *this = &unk_1F4CD6660;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SharedDtor(this);
  sub_1D0B8CD0C(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::~RayTracingTilesAvailabilityData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 2)
      {
        goto LABEL_18;
      }

      *(this + 13) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v34 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 18)
      {
        *(a2 + 1) = v15 + 1;
LABEL_30:
        *(this + 13) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v35 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v13 = __OFSUB__(v20, 1);
        v21 = v20 - 1;
        if (v21 < 0 == v13)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 26)
        {
          do
          {
            *(a2 + 1) = v22 + 1;
LABEL_44:
            v23 = *(this + 9);
            v24 = *(this + 8);
            if (v24 >= v23)
            {
              if (v23 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v23 = *(this + 9);
              }

              *(this + 9) = v23 + 1;
              operator new();
            }

            v25 = *(this + 3);
            *(this + 8) = v24 + 1;
            v26 = *(v25 + 8 * v24);
            v36 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
              {
                return 0;
              }
            }

            else
            {
              v36 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergePartialFromCodedStream(v26, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v30 = *(a2 + 14);
            v13 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 == v13)
            {
              *(a2 + 14) = v31;
            }

            v22 = *(a2 + 1);
            v32 = *(a2 + 2);
          }

          while (v22 < v32 && *v22 == 26);
          if (v22 == v32 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  if (!*(this + 52))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
    v3 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);
  }

  v4 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 13) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 16);
    }

    v8 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 8);
  v12 = (v11 + v2);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::ByteSize(*(*(this + 3) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 8));
  }

  *(this + 12) = v12;
  return v12;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    v7 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return this;
}

uint64_t sub_1D0C77384(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t *sub_1D0C773F4(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::protobuf_ShutdownFile_CoreNavigationCLPRavenOutput_2eproto(CoreNavigation::CLP::LogEntry::Raven *this)
{
  if (CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_;
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::Raven::TimeStruct::TimeStruct(void *this)
{
  *this = &unk_1F4CD6810;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD6810;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  *this = &unk_1F4CD6888;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6888;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this)
{
  *this = &unk_1F4CD6900;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CD6900;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::NrEstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  *this = &unk_1F4CD6978;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6978;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::EstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  *this = &unk_1F4CD69F0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  *(this + 52) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 10) = 0u;
  return result;
}

{
  *this = &unk_1F4CD69F0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  *(this + 52) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 10) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::EstimatorActivity(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  *this = &unk_1F4CD6A68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6A68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::NrParameters(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this)
{
  *this = &unk_1F4CD6AE0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  return result;
}

{
  *this = &unk_1F4CD6AE0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrBiases::NrBiases(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this)
{
  *this = &unk_1F4CD6B58;
  *(this + 23) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  return result;
}

{
  *this = &unk_1F4CD6B58;
  *(this + 23) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorState::EstimatorState(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  *this = &unk_1F4CD6BD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6BD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::UserPosition::UserPosition(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  *this = &unk_1F4CD6C48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6C48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::UserVelocity::UserVelocity(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  *this = &unk_1F4CD6CC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6CC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DevicePosition::DevicePosition(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  *this = &unk_1F4CD6D38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6D38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::DeviceVelocity(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  *this = &unk_1F4CD6DB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6DB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::DeviceAttitude(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this)
{
  *this = &unk_1F4CD6E28;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6E28;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::DeviceRateGyroBias(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this)
{
  *this = &unk_1F4CD6EA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6EA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::DeviceAccelerometerBias(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this)
{
  *this = &unk_1F4CD6F18;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6F18;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::DeviceAccelerometerScaleFactor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this)
{
  *this = &unk_1F4CD6F90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6F90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::DeviceReceiverClockDiscrepancy(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  *this = &unk_1F4CD7008;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4CD7008;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Raven::RavenOutput::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_;
  this[4] = v2;
  v3 = CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_;
  this[6] = v3;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Raven::TimeStamp::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Raven::EstimatorState::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_;
  this[4] = v2;
  v3 = CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_;
  this[6] = v3;
  v4 = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_;
  this[7] = CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_;
  this[8] = v4;
  v5 = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_;
  this[9] = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_;
  this[10] = v5;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::RavenOutput *CoreNavigation::CLP::LogEntry::Raven::RavenOutput::RavenOutput(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, const CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2)
{
  *this = &unk_1F4CD6798;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, const CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    *(this + 15) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergeFrom(v5, v6);
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 15) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergeFrom(v7, v8);
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    *(this + 15) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 32);
    }

    CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergeFrom(v11, v12);
    v4 = *(a2 + 15);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_21:
  *(this + 15) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergeFrom(v9, v10);
  v4 = *(a2 + 15);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_31:
  *(this + 15) |= 0x10u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 40);
  }

  CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergeFrom(v13, v14);
  if ((*(a2 + 15) & 0x20) != 0)
  {
LABEL_36:
    *(this + 15) |= 0x20u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 48);
    }

    CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergeFrom(v15, v16);
  }
}

void sub_1D0C78BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    if (*(this + 60))
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::EstimatorState::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::NrParameters::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::NrBiases::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::Clear(this);
      }
    }
  }

  *(v1 + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::Clear(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  v2 = *(this + 73);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 1);
      if (v3)
      {
        CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(v3);
        v2 = *(this + 73);
      }
    }

    *(this + 2) = 0u;
    *(this + 3) = 0u;
    *(this + 1) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 4) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 10) = 0u;
    *(this + 11) = 0u;
  }

  sub_1D0C77384(this + 112);
  sub_1D0C77384(this + 136);
  sub_1D0C77384(this + 192);
  sub_1D0C77384(this + 216);
  sub_1D0C77384(this + 240);
  result = sub_1D0C77384(this + 264);
  *(this + 73) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 228);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 228);
      }
    }

    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 136) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 140) = 0;
    *(v1 + 184) = 0u;
    *(v1 + 200) = 0u;
    *(v1 + 216) = 0;
  }

  *(v1 + 228) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::UserPosition::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::UserVelocity::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DevicePosition::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::Clear(this);
        v2 = *(v1 + 92);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::Clear(this);
      }
    }
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrParameters::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 160);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 160);
      }
    }

    *(v1 + 152) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 136) = 0u;
    *(v1 + 120) = 0u;
  }

  *(v1 + 160) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrBiases::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 96);
      }
    }

    *(v1 + 88) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  *(v1 + 96) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::Clear(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 1);
      if (v3)
      {
        CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(v3);
        v2 = *(this + 42);
      }
    }

    *(this + 44) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
  }

  if ((v2 & 0x3FC00) != 0)
  {
    *(this + 15) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = 0;
    *(this + 40) = 0;
  }

  sub_1D0C77384(this + 64);
  sub_1D0C77384(this + 88);
  result = sub_1D0C77384(this + 112);
  *(this + 42) = 0;
  return result;
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  sub_1D0C84594((this + 112), a2 + 112);
  sub_1D0C84594((this + 136), a2 + 136);
  sub_1D0C84594((this + 192), a2 + 192);
  sub_1D0C84594((this + 216), a2 + 216);
  sub_1D0C84594((this + 240), a2 + 240);
  sub_1D0C84594((this + 264), a2 + 264);
  v6 = *(a2 + 73);
  if (!v6)
  {
    goto LABEL_22;
  }

  if (v6)
  {
    *(this + 73) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v4);
      v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v7, v8);
    v6 = *(a2 + 73);
  }

  if ((v6 & 2) != 0)
  {
    v9 = *(a2 + 4);
    if (v9 >= 7)
    {
      __assert_rtn("set_estimator_type", "CoreNavigationCLPRavenOutput.pb.h", 5162, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth_EstimatorType_IsValid(value)");
    }

    *(this + 73) |= 2u;
    *(this + 4) = v9;
    v6 = *(a2 + 73);
  }

  if ((v6 & 4) != 0)
  {
    v10 = *(a2 + 5);
    if (v10 >= 4)
    {
      __assert_rtn("set_health", "CoreNavigationCLPRavenOutput.pb.h", 5185, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth_EstimatorHealthType_IsValid(value)");
    }

    *(this + 73) |= 4u;
    *(this + 5) = v10;
    v6 = *(a2 + 73);
  }

  if ((v6 & 8) != 0)
  {
    result = *(a2 + 3);
    *(this + 73) |= 8u;
    *(this + 3) = result;
    v6 = *(a2 + 73);
    if ((v6 & 0x10) == 0)
    {
LABEL_18:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_19;
      }

LABEL_49:
      v13 = *(a2 + 5);
      *(this + 73) |= 0x20u;
      *(this + 5) = v13;
      v6 = *(a2 + 73);
      if ((v6 & 0x40) == 0)
      {
LABEL_20:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      goto LABEL_50;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  result = *(a2 + 4);
  *(this + 73) |= 0x10u;
  *(this + 4) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_50:
  v14 = *(a2 + 6);
  *(this + 73) |= 0x40u;
  *(this + 6) = v14;
  v6 = *(a2 + 73);
  if ((v6 & 0x80) != 0)
  {
LABEL_21:
    v11 = *(a2 + 7);
    *(this + 73) |= 0x80u;
    *(this + 7) = v11;
    v6 = *(a2 + 73);
  }

LABEL_22:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v6 & 0x100) != 0)
  {
    result = *(a2 + 8);
    *(this + 73) |= 0x100u;
    *(this + 8) = result;
    v6 = *(a2 + 73);
    if ((v6 & 0x200) == 0)
    {
LABEL_25:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  result = *(a2 + 9);
  *(this + 73) |= 0x200u;
  *(this + 9) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x400) == 0)
  {
LABEL_26:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 10);
  *(this + 73) |= 0x400u;
  *(this + 10) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x800) == 0)
  {
LABEL_27:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 11);
  *(this + 73) |= 0x800u;
  *(this + 11) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x1000) == 0)
  {
LABEL_28:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_41:
  result = *(a2 + 12);
  *(this + 73) |= 0x1000u;
  *(this + 12) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x2000) != 0)
  {
LABEL_29:
    result = *(a2 + 13);
    *(this + 73) |= 0x2000u;
    *(this + 13) = result;
    v6 = *(a2 + 73);
  }

LABEL_30:
  if ((v6 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v6 & 0x10000) != 0)
  {
    result = *(a2 + 20);
    *(this + 73) |= 0x10000u;
    *(this + 20) = result;
    v6 = *(a2 + 73);
    if ((v6 & 0x20000) == 0)
    {
LABEL_33:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_45;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_33;
  }

  result = *(a2 + 21);
  *(this + 73) |= 0x20000u;
  *(this + 21) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x40000) == 0)
  {
LABEL_34:
    if ((v6 & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_45:
  result = *(a2 + 22);
  *(this + 73) |= 0x40000u;
  *(this + 22) = result;
  if ((*(a2 + 73) & 0x80000) != 0)
  {
LABEL_35:
    v12 = *(a2 + 23);
    *(this + 73) |= 0x80000u;
    *(this + 23) = v12;
  }

  return result;
}

void sub_1D0C79520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v36);
  }

  v4 = *(a2 + 57);
  if (!v4)
  {
    goto LABEL_29;
  }

  if (v4)
  {
    *(this + 57) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v5, v6);
    v4 = *(a2 + 57);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 6);
    if (v7 >= 0xA)
    {
      __assert_rtn("set_estimated_user_activity", "CoreNavigationCLPRavenOutput.pb.h", 5734, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_UserActivityType_IsValid(value)");
    }

    *(this + 57) |= 2u;
    *(this + 6) = v7;
    v4 = *(a2 + 57);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 57) |= 4u;
    *(this + 2) = v8;
    v4 = *(a2 + 57);
  }

  if ((v4 & 8) != 0)
  {
    v9 = *(a2 + 7);
    if (v9 >= 4)
    {
      __assert_rtn("set_estimated_moving_state", "CoreNavigationCLPRavenOutput.pb.h", 5779, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_MovingStateType_IsValid(value)");
    }

    *(this + 57) |= 8u;
    *(this + 7) = v9;
    v4 = *(a2 + 57);
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    v11 = *(a2 + 5);
    *(this + 57) |= 0x20u;
    *(this + 5) = v11;
    v4 = *(a2 + 57);
    if ((v4 & 0x40) == 0)
    {
LABEL_21:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v10 = *(a2 + 4);
  *(this + 57) |= 0x10u;
  *(this + 4) = v10;
  v4 = *(a2 + 57);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_25:
  v12 = *(a2 + 12);
  if (v12 >= 0xA)
  {
    __assert_rtn("set_user_fitness_session", "CoreNavigationCLPRavenOutput.pb.h", 5846, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_UserFitnessSessionType_IsValid(value)");
  }

  *(this + 57) |= 0x40u;
  *(this + 12) = v12;
  v4 = *(a2 + 57);
  if ((v4 & 0x80) != 0)
  {
LABEL_27:
    v13 = *(a2 + 13);
    if (v13 >= 4)
    {
      __assert_rtn("set_estimated_mount_state", "CoreNavigationCLPRavenOutput.pb.h", 5869, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_MountStateType_IsValid(value)");
    }

    *(this + 57) |= 0x80u;
    *(this + 13) = v13;
    v4 = *(a2 + 57);
  }

LABEL_29:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 34);
    if (v14 >= 3)
    {
      __assert_rtn("set_estimated_position_context_state", "CoreNavigationCLPRavenOutput.pb.h", 5892, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_PositionContextStateType_IsValid(value)");
    }

    *(this + 57) |= 0x100u;
    *(this + 34) = v14;
    v4 = *(a2 + 57);
  }

  if ((v4 & 0x200) != 0)
  {
    v24 = *(a2 + 7);
    *(this + 57) |= 0x200u;
    *(this + 7) = v24;
    v4 = *(a2 + 57);
    if ((v4 & 0x400) == 0)
    {
LABEL_35:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_35;
  }

  v25 = *(a2 + 8);
  *(this + 57) |= 0x400u;
  *(this + 8) = v25;
  v4 = *(a2 + 57);
  if ((v4 & 0x800) == 0)
  {
LABEL_36:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  v26 = *(a2 + 9);
  *(this + 57) |= 0x800u;
  *(this + 9) = v26;
  v4 = *(a2 + 57);
  if ((v4 & 0x1000) == 0)
  {
LABEL_37:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  v27 = *(a2 + 10);
  *(this + 57) |= 0x1000u;
  *(this + 10) = v27;
  v4 = *(a2 + 57);
  if ((v4 & 0x2000) == 0)
  {
LABEL_38:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_72;
  }

LABEL_71:
  v28 = *(a2 + 11);
  *(this + 57) |= 0x2000u;
  *(this + 11) = v28;
  v4 = *(a2 + 57);
  if ((v4 & 0x4000) == 0)
  {
LABEL_39:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_72:
  v29 = *(a2 + 12);
  *(this + 57) |= 0x4000u;
  *(this + 12) = v29;
  v4 = *(a2 + 57);
  if ((v4 & 0x8000) != 0)
  {
LABEL_40:
    v15 = *(a2 + 13);
    *(this + 57) |= 0x8000u;
    *(this + 13) = v15;
    v4 = *(a2 + 57);
  }

LABEL_41:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_51;
  }

  if ((v4 & 0x10000) != 0)
  {
    v17 = *(a2 + 14);
    *(this + 57) |= 0x10000u;
    *(this + 14) = v17;
    v4 = *(a2 + 57);
    if ((v4 & 0x20000) == 0)
    {
LABEL_44:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_44;
  }

  v18 = *(a2 + 15);
  *(this + 57) |= 0x20000u;
  *(this + 15) = v18;
  v4 = *(a2 + 57);
  if ((v4 & 0x40000) == 0)
  {
LABEL_45:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a2 + 16);
  *(this + 57) |= 0x40000u;
  *(this + 16) = v19;
  v4 = *(a2 + 57);
  if ((v4 & 0x80000) == 0)
  {
LABEL_46:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a2 + 18);
  *(this + 57) |= 0x80000u;
  *(this + 18) = v20;
  v4 = *(a2 + 57);
  if ((v4 & 0x100000) == 0)
  {
LABEL_47:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 19);
  *(this + 57) |= 0x100000u;
  *(this + 19) = v21;
  v4 = *(a2 + 57);
  if ((v4 & 0x200000) == 0)
  {
LABEL_48:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 20);
  *(this + 57) |= 0x200000u;
  *(this + 20) = v22;
  v4 = *(a2 + 57);
  if ((v4 & 0x400000) == 0)
  {
LABEL_49:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_65:
  v23 = *(a2 + 21);
  *(this + 57) |= 0x400000u;
  *(this + 21) = v23;
  v4 = *(a2 + 57);
  if ((v4 & 0x800000) != 0)
  {
LABEL_50:
    v16 = *(a2 + 22);
    *(this + 57) |= 0x800000u;
    *(this + 22) = v16;
    v4 = *(a2 + 57);
  }

LABEL_51:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v30 = *(a2 + 23);
    *(this + 57) |= 0x1000000u;
    *(this + 23) = v30;
    v4 = *(a2 + 57);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_54:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_76;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_54;
  }

  v31 = *(a2 + 24);
  *(this + 57) |= 0x2000000u;
  *(this + 24) = v31;
  v4 = *(a2 + 57);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_55:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_77;
  }

LABEL_76:
  v32 = *(a2 + 25);
  *(this + 57) |= 0x4000000u;
  *(this + 25) = v32;
  v4 = *(a2 + 57);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_56:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_78:
    v34 = *(a2 + 27);
    *(this + 57) |= 0x10000000u;
    *(this + 27) = v34;
    if ((*(a2 + 57) & 0x20000000) == 0)
    {
      return;
    }

    goto LABEL_79;
  }

LABEL_77:
  v33 = *(a2 + 26);
  *(this + 57) |= 0x8000000u;
  *(this + 26) = v33;
  v4 = *(a2 + 57);
  if ((v4 & 0x10000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_57:
  if ((v4 & 0x20000000) == 0)
  {
    return;
  }

LABEL_79:
  v35 = *(a2 + 35);
  if (v35 >= 8)
  {
    __assert_rtn("set_estimated_signal_environment", "CoreNavigationCLPRavenOutput.pb.h", 6355, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_SignalEnvironmentType_IsValid(value)");
  }

  *(this + 57) |= 0x20000000u;
  *(this + 35) = v35;
}