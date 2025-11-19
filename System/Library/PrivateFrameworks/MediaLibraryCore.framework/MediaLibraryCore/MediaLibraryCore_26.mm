_BYTE *mlcore::PersistentStringFromMediaType@<X0>(mlcore *this@<X0>, _BYTE *a2@<X8>)
{
  if (this > 255)
  {
    if (this > 2047)
    {
      switch(this)
      {
        case 0x800:
          v2 = "MediaTypeMovie";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case 0x2000:
          v2 = "MediaTypeHomeVideo";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case 0x1000:
          v2 = "MediaTypeVideoITunesU";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      }
    }

    else
    {
      switch(this)
      {
        case 0x100:
          v2 = "MediaTypeVideoPodcast";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case 0x200:
          v2 = "MediaTypeTVShow";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case 0x400:
          v2 = "MediaTypeMusicVideo";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      }
    }

LABEL_29:
    v2 = "(unknown)";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (this > 7)
  {
    switch(this)
    {
      case 8:
        v2 = "MediaTypeSong";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      case 0x10:
        v2 = "MediaTypeVoiceMemo";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      case 0x20:
        v2 = "MediaTypeITunesUAudio";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

    goto LABEL_29;
  }

  if (this == 1)
  {
    v2 = "MediaTypeMusicQuiz";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (this == 2)
  {
    v2 = "MediaTypeAudioBook";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (this != 4)
  {
    goto LABEL_29;
  }

  v2 = "MediaTypePodcast";
  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void mlcore::StringFromMediaType(mlcore *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    if (this == 0xFFFFFF)
    {
      std::string::basic_string[abi:ne200100]<0>(&v35, "MediaTypeAny");
      std::ostringstream::basic_ostringstream[abi:ne200100](v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "(", 1);
      v4 = MEMORY[0x1DA6EDAF0](v38, 0xFFFFFFLL);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " => '", 5);
      if (v37 >= 0)
      {
        v6 = &v35;
      }

      else
      {
        v6 = v35;
      }

      if (v37 >= 0)
      {
        v7 = HIBYTE(v37);
      }

      else
      {
        v7 = v36;
      }

      goto LABEL_15;
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    if ((~this & 0xFF00) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v38, "AnyVideo");
      std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
      goto LABEL_37;
    }

    if ((this & 0x100) != 0 && (std::string::basic_string[abi:ne200100]<0>(v38, "VideoPodcast"), std::vector<std::string>::push_back[abi:ne200100](&v35, v38), SHIBYTE(v39[0].__locale_) < 0))
    {
      operator delete(v38[0]);
      if ((this & 0x1000) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((this & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    std::string::basic_string[abi:ne200100]<0>(v38, "VideoITunesU");
    std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
    if (SHIBYTE(v39[0].__locale_) < 0)
    {
      operator delete(v38[0]);
    }

LABEL_27:
    if ((this & 0x200) != 0 && (std::string::basic_string[abi:ne200100]<0>(v38, "TVShow"), std::vector<std::string>::push_back[abi:ne200100](&v35, v38), SHIBYTE(v39[0].__locale_) < 0))
    {
      operator delete(v38[0]);
      if ((this & 0x400) != 0)
      {
LABEL_30:
        std::string::basic_string[abi:ne200100]<0>(v38, "MusicVideo");
        std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
        if (SHIBYTE(v39[0].__locale_) < 0)
        {
          operator delete(v38[0]);
        }
      }
    }

    else if ((this & 0x400) != 0)
    {
      goto LABEL_30;
    }

    if ((this & 0x800) != 0 && (std::string::basic_string[abi:ne200100]<0>(v38, "Movie"), std::vector<std::string>::push_back[abi:ne200100](&v35, v38), SHIBYTE(v39[0].__locale_) < 0))
    {
      operator delete(v38[0]);
      if ((this & 0x2000) == 0)
      {
        goto LABEL_39;
      }
    }

    else if ((this & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    std::string::basic_string[abi:ne200100]<0>(v38, "HomeVideo");
    std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
LABEL_37:
    if (SHIBYTE(v39[0].__locale_) < 0)
    {
      operator delete(v38[0]);
    }

LABEL_39:
    if (this == 0xFF)
    {
      std::string::basic_string[abi:ne200100]<0>(v38, "AnyAudio");
      std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
      goto LABEL_59;
    }

    if ((this & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(v38, "MusicQuiz"), std::vector<std::string>::push_back[abi:ne200100](&v35, v38), SHIBYTE(v39[0].__locale_) < 0))
    {
      operator delete(v38[0]);
      if ((this & 2) == 0)
      {
        goto LABEL_47;
      }
    }

    else if ((this & 2) == 0)
    {
      goto LABEL_47;
    }

    std::string::basic_string[abi:ne200100]<0>(v38, "AudioBook");
    std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
    if (SHIBYTE(v39[0].__locale_) < 0)
    {
      operator delete(v38[0]);
    }

LABEL_47:
    if ((this & 4) != 0 && (std::string::basic_string[abi:ne200100]<0>(v38, "Podcast"), std::vector<std::string>::push_back[abi:ne200100](&v35, v38), SHIBYTE(v39[0].__locale_) < 0))
    {
      operator delete(v38[0]);
      if ((this & 8) != 0)
      {
LABEL_50:
        std::string::basic_string[abi:ne200100]<0>(v38, "Song");
        std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
        if (SHIBYTE(v39[0].__locale_) < 0)
        {
          operator delete(v38[0]);
        }
      }
    }

    else if ((this & 8) != 0)
    {
      goto LABEL_50;
    }

    if ((this & 0x10) != 0 && (std::string::basic_string[abi:ne200100]<0>(v38, "VoiceMemo"), std::vector<std::string>::push_back[abi:ne200100](&v35, v38), SHIBYTE(v39[0].__locale_) < 0))
    {
      operator delete(v38[0]);
      if ((this & 0x20) == 0)
      {
        goto LABEL_61;
      }
    }

    else if ((this & 0x20) == 0)
    {
      goto LABEL_61;
    }

    std::string::basic_string[abi:ne200100]<0>(v38, "ITunesUAudio");
    std::vector<std::string>::push_back[abi:ne200100](&v35, v38);
LABEL_59:
    if (SHIBYTE(v39[0].__locale_) < 0)
    {
      operator delete(v38[0]);
    }

LABEL_61:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (v36 - v35 == 24)
    {
      std::operator+<char>();
      std::ostringstream::basic_ostringstream[abi:ne200100](v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "(", 1);
      v10 = MEMORY[0x1DA6EDAF0](v38, this);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " => '", 5);
      if (v32 >= 0)
      {
        v12 = v31;
      }

      else
      {
        v12 = v31[0];
      }

      if (v32 >= 0)
      {
        v13 = HIBYTE(v32);
      }

      else
      {
        v13 = v31[1];
      }

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "')", 2);
      std::ostringstream::str[abi:ne200100](&v33, v38);
      v38[0] = *MEMORY[0x1E69E54E8];
      *(v38 + *(v38[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      v38[1] = (MEMORY[0x1E69E5548] + 16);
      if (v41 < 0)
      {
        operator delete(__p);
      }

      v38[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(v39);
      std::ostream::~ostream();
      MEMORY[0x1DA6EDCB0](v42);
      v15 = SHIBYTE(v32);
      *a2 = v33;
      *(a2 + 16) = v34;
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      v16 = v31[0];
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "|");
      mediaplatform::ComponentsJoinedByString<std::string>(&v29, &v35, v27);
      v17 = std::string::insert(&v29, 0, "MediaType [", 0xBuLL);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v30, "]", 1uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v32 = v19->__r_.__value_.__r.__words[2];
      *v31 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "(", 1);
      v21 = MEMORY[0x1DA6EDAF0](v38, this);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " => '", 5);
      if (v32 >= 0)
      {
        v23 = v31;
      }

      else
      {
        v23 = v31[0];
      }

      if (v32 >= 0)
      {
        v24 = HIBYTE(v32);
      }

      else
      {
        v24 = v31[1];
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "')", 2);
      std::ostringstream::str[abi:ne200100](&v33, v38);
      v38[0] = *MEMORY[0x1E69E54E8];
      *(v38 + *(v38[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      v38[1] = (MEMORY[0x1E69E5548] + 16);
      if (v41 < 0)
      {
        operator delete(__p);
      }

      v38[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(v39);
      std::ostream::~ostream();
      MEMORY[0x1DA6EDCB0](v42);
      v26 = SHIBYTE(v32);
      *a2 = v33;
      *(a2 + 16) = v34;
      if (v26 < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      v16 = v27[0];
    }

    operator delete(v16);
LABEL_89:
    v38[0] = &v35;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v38);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v35, "MediaTypeUndefined");
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "(", 1);
  v8 = MEMORY[0x1DA6EDAF0](v38, 0);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " => '", 5);
  if (v37 >= 0)
  {
    v6 = &v35;
  }

  else
  {
    v6 = v35;
  }

  if (v37 >= 0)
  {
    v7 = HIBYTE(v37);
  }

  else
  {
    v7 = v36;
  }

LABEL_15:
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "')", 2);
  std::ostringstream::str[abi:ne200100](a2, v38);
  v38[0] = *MEMORY[0x1E69E54E8];
  *(v38 + *(v38[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v38[1] = (MEMORY[0x1E69E5548] + 16);
  if (v41 < 0)
  {
    operator delete(__p);
  }

  v38[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v39);
  std::ostream::~ostream();
  MEMORY[0x1DA6EDCB0](v42);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }
}

void sub_1D59D0120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void **a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  a34 = &a37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

uint64_t mlcore::MediaTypeByStandardizingMediaType(uint64_t this)
{
  if ((this & 0x100) != 0)
  {
    return 256;
  }

  if ((this & 0x1000) != 0)
  {
    return 4096;
  }

  if ((this & 0x800) == 0)
  {
    return this;
  }

  if ((this & 4) != 0)
  {
    return 256;
  }

  if ((this & 0x20) != 0)
  {
    return 4096;
  }

  if ((this & 0x200) != 0)
  {
    return 512;
  }

  if ((this & 0x2000) != 0)
  {
    return 0x2000;
  }

  if ((this & 0x400) != 0)
  {
    return 1024;
  }

  return this;
}

uint64_t mlcore::ITMediaKindForMediaType(mlcore *this)
{
  switch(this)
  {
    case 0xFF:
      return 301;
    case 0xFFFFFF:
      return 3951;
    case 0xFF00:
      return 3682;
  }

  v2 = this & 4;
  if ((this & 0x100) != 0)
  {
    v2 = 6;
  }

  v3 = (4 * this) & 8 | (this >> 3) & 1 | v2;
  if (this)
  {
    v3 |= 0x21u;
  }

  return (this >> 3) & 0x440 | (((this >> 4) & 3) << 20) | (this >> 5) & 0x20 | (this >> 10) & 2 | v3;
}

mlcore::LibraryPinTable *mlcore::LibraryPinTable::LibraryPinTable(mlcore::LibraryPinTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v42, "library_pins");
  std::string::basic_string[abi:ne200100]<0>(&__s, "pin_pid");
  v38 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = __s;
  }

  v40 = 1;
  v41[0] = 0;
  *&v41[4] = 0;
  v38 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v32, "entity_pid");
  v33 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v32;
  }

  v35 = 16;
  v36[0] = 1;
  *&v36[4] = 0;
  v33 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v27, "entity_type");
  v28 = &unk_1F50D86E0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = v27;
  }

  v30 = 16;
  LOBYTE(v31) = 1;
  HIDWORD(v31) = 0;
  v28 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v22, "default_action");
  v23 = &unk_1F50D86E0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v22;
  }

  v25 = 16;
  LOBYTE(v26) = 1;
  HIDWORD(v26) = 0;
  v23 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v17, "position");
  v18 = &unk_1F50D86E0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v17;
  }

  v20 = 16;
  LOBYTE(v21) = 1;
  HIDWORD(v21) = 0;
  v18 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(v10, "position_uuid");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v12, v10, __p);
  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v39;
  }

  v68 = v40;
  v66 = &unk_1F50D8958;
  v69 = *v41;
  v70 = *&v41[8];
  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v34;
  }

  v63 = v35;
  v61 = &unk_1F50D8958;
  v64 = *v36;
  v65 = *&v36[8];
  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = v29;
  }

  v59 = v30;
  v57 = &unk_1F50D8978;
  v60 = v31;
  v53 = &unk_1F50D86E0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v24;
  }

  v55 = v25;
  v53 = &unk_1F50D8978;
  v56 = v26;
  v49 = &unk_1F50D86E0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = v19;
  }

  v51 = v20;
  v49 = &unk_1F50D8978;
  v52 = v21;
  v44 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v13;
  }

  v46 = v14;
  v44 = &unk_1F50D89B8;
  v47 = v15;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = v16;
  }

  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v43) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v42[0], v42[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v42;
    *(this + 3) = v43;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50DD788;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v67;
  }

  v95 = v68;
  v93 = &unk_1F50D8958;
  v96 = v69;
  v97 = v70;
  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v62;
  }

  v90 = v63;
  v88 = &unk_1F50D8958;
  v91 = v64;
  v92 = v65;
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v58;
  }

  v86 = v59;
  v84 = &unk_1F50D8978;
  v87 = v60;
  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v54;
  }

  v82 = v55;
  v80 = &unk_1F50D8978;
  v83 = v56;
  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v50;
  }

  v78 = v51;
  v76 = &unk_1F50D8978;
  v79 = v52;
  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v72 = v45;
  }

  v73 = v46;
  v71 = &unk_1F50D89B8;
  v74 = v47;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = v48;
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v89;
  }

  v117 = v90;
  v115 = &unk_1F50D8958;
  v118 = v91;
  v119 = v92;
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v85;
  }

  v113 = v86;
  v111 = &unk_1F50D8978;
  v114 = v87;
  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v108 = v81;
  }

  v109 = v82;
  v107 = &unk_1F50D8978;
  v110 = v83;
  v103 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = v77;
  }

  v105 = v78;
  v103 = &unk_1F50D8978;
  v106 = v79;
  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v72;
  }

  v100 = v73;
  v98 = &unk_1F50D89B8;
  v101 = v74;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v102 = v75;
  }

  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v112;
  }

  v135 = v113;
  v133 = &unk_1F50D8978;
  v136 = v114;
  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v108;
  }

  v131 = v109;
  v129 = &unk_1F50D8978;
  v132 = v110;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v104;
  }

  v127 = v105;
  v125 = &unk_1F50D8978;
  v128 = v106;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v99;
  }

  v122 = v100;
  v120 = &unk_1F50D89B8;
  v123 = v101;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v124 = v102;
  }

  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v130;
  }

  v148 = v131;
  v146 = &unk_1F50D8978;
  v149 = v132;
  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v126;
  }

  v144 = v127;
  v142 = &unk_1F50D8978;
  v145 = v128;
  v137 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v121;
  }

  v139 = v122;
  v137 = &unk_1F50D89B8;
  v140 = v123;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    v141 = v124;
  }

  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v156, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    v156 = v143;
  }

  v157 = v144;
  v155 = &unk_1F50D8978;
  v158 = v145;
  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v138;
  }

  v152 = v139;
  v150 = &unk_1F50D89B8;
  v153 = v140;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v141;
  }

  v159 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v160, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v160 = v151;
  }

  v161 = v152;
  v159 = &unk_1F50D89B8;
  v162 = v153;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v154;
  }

  *(this + 10) = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), v160.__r_.__value_.__l.__data_, v160.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 88) = v160;
  }

  *(this + 28) = v161;
  *(this + 10) = &unk_1F50D89B8;
  *(this + 116) = v162;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 5) = v163;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v159);
  *(this + 18) = &unk_1F50D86E0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), v156.__r_.__value_.__l.__data_, v156.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 152) = v156;
  }

  *(this + 44) = v157;
  *(this + 18) = &unk_1F50D8978;
  *(this + 180) = v158;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v150);
  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  *(this + 24) = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 200) = v147;
  }

  *(this + 56) = v148;
  *(this + 24) = &unk_1F50D8978;
  *(this + 228) = v149;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v137);
  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  *(this + 30) = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 248) = v134;
  }

  *(this + 68) = v135;
  *(this + 30) = &unk_1F50D8978;
  *(this + 276) = v136;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v120);
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  *(this + 36) = &unk_1F50D86E0;
  v3 = (this + 296);
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v116.__r_.__value_.__l.__data_;
    *(this + 39) = *(&v116.__r_.__value_.__l + 2);
  }

  *(this + 80) = v117;
  *(this + 36) = &unk_1F50D8958;
  *(this + 324) = v118;
  *(this + 83) = v119;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v98);
  v103 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  *(this + 42) = &unk_1F50D86E0;
  v4 = (this + 344);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v94.__r_.__value_.__l.__data_;
    *(this + 45) = *(&v94.__r_.__value_.__l + 2);
  }

  *(this + 92) = v95;
  *(this + 42) = &unk_1F50D8958;
  *(this + 372) = v96;
  *(this + 95) = v97;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v71);
  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v44);
  v49 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v53 = &unk_1F50D86E0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50DD750;
  *(this + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 392), v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 392) = v39;
  }

  *(this + 104) = v40;
  *(this + 420) = *v41;
  *(this + 107) = *&v41[8];
  *(this + 48) = &unk_1F50D7AC0;
  *(this + 54) = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 440), v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 440) = v34;
  }

  *(this + 116) = v35;
  *(this + 468) = *v36;
  *(this + 119) = *&v36[8];
  *(this + 54) = &unk_1F50D7AC0;
  *(this + 60) = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 488), v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 488) = v29;
  }

  *(this + 128) = v30;
  *(this + 516) = v31;
  *(this + 60) = &unk_1F50D7AE0;
  *(this + 66) = &unk_1F50D86E0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 536), v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 536) = v24;
  }

  *(this + 140) = v25;
  *(this + 564) = v26;
  *(this + 66) = &unk_1F50D7AE0;
  *(this + 72) = &unk_1F50D86E0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 584), v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 584) = v19;
  }

  *(this + 152) = v20;
  *(this + 612) = v21;
  *(this + 72) = &unk_1F50D7AE0;
  *(this + 78) = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 632), v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 632) = v13;
  }

  *(this + 164) = v14;
  *(this + 78) = &unk_1F50D89B8;
  *(this + 660) = v15;
  v5 = (this + 664);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v16.__r_.__value_.__l.__data_;
    *(this + 85) = *(&v16.__r_.__value_.__l + 2);
  }

  *(this + 78) = &unk_1F50D7B20;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v12);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v18 = &unk_1F50D86E0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v23 = &unk_1F50D86E0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v28 = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v33 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v38 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  *this = &unk_1F50DD6A0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "UNIQUE (entity_pid, entity_type)");
  std::string::operator=((this + 56), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1D59D20A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, unint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  *(v81 + 624) = v78;
  if (*(v81 + 655) < 0)
  {
    operator delete(*v82);
  }

  *(v81 + 576) = v79;
  if (*(v81 + 607) < 0)
  {
    operator delete(*v86);
  }

  *(v81 + 528) = v85;
  if (*(v81 + 559) < 0)
  {
    operator delete(*v84);
  }

  *(v81 + 480) = a26;
  if (*(v81 + 511) < 0)
  {
    operator delete(*v83);
  }

  *(v81 + 432) = a28;
  if (*(v81 + 463) < 0)
  {
    operator delete(*v80);
  }

  *(v81 + 384) = a29;
  if (*(v81 + 415) < 0)
  {
    operator delete(*a27);
  }

  mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(v81);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a50);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  a64 = a30;
  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  a74 = a31;
  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  STACK[0x200] = a32;
  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  STACK[0x248] = a33;
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  STACK[0x290] = a34;
  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

void sub_1D59D2560()
{
  STACK[0x708] = v0;
  if (SLOBYTE(STACK[0x727]) < 0)
  {
    operator delete(STACK[0x710]);
  }

  JUMPOUT(0x1D59D2254);
}

void sub_1D59D2594()
{
  STACK[0x638] = v0;
  if (SLOBYTE(STACK[0x657]) < 0)
  {
    operator delete(STACK[0x640]);
  }

  JUMPOUT(0x1D59D228CLL);
}

void sub_1D59D25D0()
{
  STACK[0x538] = v0;
  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  JUMPOUT(0x1D59D22DCLL);
}

void sub_1D59D2614()
{
  STACK[0x408] = v0;
  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  JUMPOUT(0x1D59D2344);
}

void sub_1D59D2668()
{
  STACK[0x2D8] = v0;
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  JUMPOUT(0x1D59D23E0);
}

void sub_1D59D26DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  mlcore::MediaTable<long long,long long,int,int,int,std::string>::~MediaTable(v40);
  JUMPOUT(0x1D59D2558);
}

void mlcore::MediaTable<long long,long long,int,int,int,std::string>::~MediaTable(void *a1)
{
  *a1 = &unk_1F50DD750;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple((a1 + 48));

  mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(a1);
}

{
  *a1 = &unk_1F50DD750;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple((a1 + 48));
  mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50DD750;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple((a1 + 48));

  mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(a1);
}

void mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50DD788;
  *(a1 + 336) = &unk_1F50D86E0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void sub_1D59D2970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 336);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 288);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 240);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 192);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 144);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 80);
}

void sub_1D59D2A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::LibraryPinTable::~LibraryPinTable(mlcore::LibraryPinTable *this)
{
  *this = &unk_1F50DD750;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(this + 384);
  mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD750;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(this + 384);

  mediaplatform::DatabaseTable<long long,long long,int,int,int,std::string>::~DatabaseTable(this);
}

uint64_t mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *(a1 + 160) = &unk_1F50D86E0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 112) = &unk_1F50D86E0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 64) = &unk_1F50D86E0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1);
}

void mlcore::LibraryPinTable::persistentIDColumn(mlcore::LibraryPinTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 415) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 49), *(this + 50));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 392);
    *(a2 + 24) = *(this + 51);
  }

  *(a2 + 32) = *(this + 104);
  *(a2 + 44) = *(this + 107);
  *(a2 + 36) = *(this + 420);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::LibraryPinTable::entityPersistentIDColumn(mlcore::LibraryPinTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 463) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 55), *(this + 56));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 440);
    *(a2 + 24) = *(this + 57);
  }

  *(a2 + 32) = *(this + 116);
  *(a2 + 44) = *(this + 119);
  *(a2 + 36) = *(this + 468);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::LibraryPinTable::entityTypeColumn(mlcore::LibraryPinTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 511) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 61), *(this + 62));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 488);
    *(a2 + 24) = *(this + 63);
  }

  *(a2 + 32) = *(this + 128);
  *(a2 + 36) = *(this + 516);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::LibraryPinTable::defaultActionColumn(mlcore::LibraryPinTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 559) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 67), *(this + 68));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 536);
    *(a2 + 24) = *(this + 69);
  }

  *(a2 + 32) = *(this + 140);
  *(a2 + 36) = *(this + 564);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::LibraryPinTable::positionColumn(mlcore::LibraryPinTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 607) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 73), *(this + 74));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 584);
    *(a2 + 24) = *(this + 75);
  }

  *(a2 + 32) = *(this + 152);
  *(a2 + 36) = *(this + 612);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::LibraryPinTable::positionUUIDColumn(mlcore::LibraryPinTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 655) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 79), *(this + 80));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 632);
    *(a2 + 24) = *(this + 81);
  }

  *(a2 + 32) = *(this + 164);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 660);
  if (*(this + 687) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 83), *(this + 84));
  }

  else
  {
    *(a2 + 40) = *(this + 664);
    *(a2 + 56) = *(this + 85);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D59D30FC(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::SmartPlaylistEntityCache::entityForClassAndPersistentID(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = a2;
  v28 = a2;
  v29 = a3;
  if ((*(a1 + 120) & 1) != 0 || (mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::valueForKey(&dsema, a1 + 128, a2, a3), LOBYTE(dsema_8[1]) != 1))
  {
    v32[0] = a2;
    dsema = v32;
    v9 = std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>>>::__emplace_unique_key_args<mlcore::EntityClass *,std::piecewise_construct_t const&,std::tuple<mlcore::EntityClass * const&>,std::tuple<>>((a1 + 8), a2);
    if (v9[4] != v9[3])
    {
      v32[0] = a3 & 0x7FFFFFFFFFFFFFFFLL;
      v10 = mlcore::TypedEntityClass<mlcore::Item>::sharedPointer();
      mlcore::ItemPropertyPersistentID(v10);
      operator new();
    }

    v21 = 1065353216;
    *&v23[8] = 0u;
    v14 = 0u;
    *dsema_8 = 0u;
    v15 = 1065353216;
    v16 = 0u;
    v17 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 1065353216;
    v22 = 0u;
    *v23 = 0u;
    *&v23[16] = 1065353216;
    v25 = 0u;
    v24 = 0u;
    v26 = 1065353216;
    dsema = &unk_1F50D7378;
    v27 = &unk_1F50D73A0;
    (*(*a2 + 48))(a2, a3, &dsema);
    mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&dsema);
  }

  else
  {
    v8 = dsema_8[0];
    *a4 = dsema;
    a4[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1D59D3528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object)
{
  dispatch_release(object);
  v18 = *(v15 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void *mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::valueForKey(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = std::__hash_table<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,std::__unordered_map_hasher<std::pair<mlcore::EntityClass *,long long>,std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>,true>,std::__unordered_map_equal<std::pair<mlcore::EntityClass *,long long>,std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,std::equal_to<std::pair<mlcore::EntityClass *,long long>>,mlcore::EntityCache::hash,true>,std::allocator<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>>>::find<std::pair<mlcore::EntityClass *,long long>>((a2 + 24), a3, a4);
  if (result)
  {
    v6 = result[6];
    operator new();
  }

  *a1 = 0;
  a1[16] = 0;
  return result;
}

void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::__value_func[abi:ne200100](v10, a5);
  v11 = 0;
  operator new();
}

void sub_1D59D37CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::~__value_func[abi:ne200100](v6 - 56);
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::setValueForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,std::__unordered_map_hasher<std::pair<mlcore::EntityClass *,long long>,std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>,true>,std::__unordered_map_equal<std::pair<mlcore::EntityClass *,long long>,std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,std::equal_to<std::pair<mlcore::EntityClass *,long long>>,mlcore::EntityCache::hash,true>,std::allocator<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>>>::find<std::pair<mlcore::EntityClass *,long long>>(a1 + 3, *a3, *(a3 + 8));
  if (v4)
  {
    mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::_removeEntry(a1, v4);
  }

  if (a1[2] > a1[1])
  {
    v5 = a1 + 8;
    v6 = (a1 + 9);
    do
    {
      do
      {
        v7 = *v6;
        v8 = *(*v6 + 24);
        v6 = *v6 + 8;
      }

      while (v7 != v5 && v8 == 0);
      if (v7 == v5)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "no room in cache");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::_removeEntry(a1, *(v7 + 16));
      v6 = (a1 + 9);
    }

    while (a1[2] > a1[1]);
  }

  if ((a1[6] + 1) > *a1)
  {
    mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::_removeEntry(a1, *(a1[9] + 16));
  }

  operator new();
}

void sub_1D59D3E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,void *>>>::operator()[abi:ne200100](1, v11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,std::__unordered_map_hasher<std::pair<mlcore::EntityClass *,long long>,std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>,true>,std::__unordered_map_equal<std::pair<mlcore::EntityClass *,long long>,std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,std::equal_to<std::pair<mlcore::EntityClass *,long long>>,mlcore::EntityCache::hash,true>,std::allocator<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>>>::find<std::pair<mlcore::EntityClass *,long long>>(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) ^ a3;
  v7 = vcnt_s8(v3);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v3)
    {
      v8 = v6 % *&v3;
    }
  }

  else
  {
    v8 = v6 & (*&v3 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    do
    {
      v11 = result[1];
      if (v11 == v6)
      {
        if (result[2] == a2 && result[3] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v11 >= *&v3)
          {
            v11 %= *&v3;
          }
        }

        else
        {
          v11 &= *&v3 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::_removeEntry(void *a1, void *a2)
{
  v4 = a2[6];
  a1[2] -= v4[3];
  v6 = *v4;
  v5 = v4[1];
  *(v6 + 8) = v5;
  *v5 = v6;
  --a1[10];
  operator delete(v4);
  v7 = a1[4];
  v8 = a2[1];
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  v10 = a1[3];
  v11 = *(v10 + 8 * v8);
  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 != a2);
  if (v12 == a1 + 5)
  {
    goto LABEL_18;
  }

  v13 = v12[1];
  if (v9.u32[0] > 1uLL)
  {
    if (v13 >= *&v7)
    {
      v13 %= *&v7;
    }
  }

  else
  {
    v13 &= *&v7 - 1;
  }

  if (v13 != v8)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v14 = *(*a2 + 8);
    if (v9.u32[0] > 1uLL)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v8)
    {
LABEL_19:
      *(v10 + 8 * v8) = 0;
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v16 = *(v15 + 8);
    if (v9.u32[0] > 1uLL)
    {
      if (v16 >= *&v7)
      {
        v16 %= *&v7;
      }
    }

    else
    {
      v16 &= *&v7 - 1;
    }

    if (v16 != v8)
    {
      *(a1[3] + 8 * v16) = v12;
      v15 = *a2;
    }
  }

  *v12 = v15;
  *a2 = 0;
  --a1[6];

  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,void *>>>::operator()[abi:ne200100](1, a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<mlcore::EntityClass *,long long>,mediaplatform::Cache<std::pair<mlcore::EntityClass *,long long>,std::shared_ptr<mlcore::Entity>,mlcore::EntityCache::hash,std::equal_to<std::pair<mlcore::EntityClass *,long long>>>::Entry>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore11LibraryView12performQueryINS_15PropertiesQueryEEEvNSt3__110shared_ptrIT_EENS4_INS_11TransactionEEENS3_8functionIFvNS4_INS5_6ResultEEEEEEEUlNS4_INS_11QueryResultEEEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1D59D4358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F50D3690;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1DA6EDD40);
}

void *std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::PropertiesQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::PropertiesQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F50D3690;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<mlcore::SmartPlaylistEntityCache::entityForClassAndPersistentID(mlcore::EntityClass *,long long,mlcore::PropertyCache)::$_0,std::allocator<mlcore::SmartPlaylistEntityCache::entityForClassAndPersistentID(mlcore::EntityClass *,long long,mlcore::PropertyCache)::$_0>,void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore24SmartPlaylistEntityCache29entityForClassAndPersistentIDEPNS_11EntityClassExNS_13PropertyCacheEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::SmartPlaylistEntityCache::entityForClassAndPersistentID(mlcore::EntityClass *,long long,mlcore::PropertyCache)::$_0,std::allocator<mlcore::SmartPlaylistEntityCache::entityForClassAndPersistentID(mlcore::EntityClass *,long long,mlcore::PropertyCache)::$_0>,void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (!*(v3 + 40))
  {
    v5 = *(a1 + 8);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::vector<mlcore::PropertyCache>::__init_with_size[abi:ne200100]<mlcore::PropertyCache*,mlcore::PropertyCache*>(&v34, *(v3 + 160), *(v3 + 168), 0x84BDA12F684BDA13 * ((*(v3 + 168) - *(v3 + 160)) >> 3));
    if (v35 != v34)
    {
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::PropertyCacheBase(v33, v34);
      v33[0] = &unk_1F50D7378;
      v33[26] = &unk_1F50D73A0;
      *&v26[8] = 0u;
      v29 = 1065353216;
      *&v31[8] = 0u;
      v23 = 0u;
      v22 = 0u;
      v24 = 1065353216;
      v25 = 0u;
      *v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      *&v26[16] = 1065353216;
      v30 = 0u;
      *v31 = 0u;
      *&v31[16] = 1065353216;
      memset(v32, 0, 32);
      v32[4] = 1065353216;
      v21 = &unk_1F50D7378;
      v32[5] = &unk_1F50D73A0;
      v20[0] = &v21;
      v20[1] = v5 + 30;
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::apply<mlcore::ForeignPropertyCacheMapper>(v33, v20);
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::apply<mlcore::ForeignPropertyCacheMapper>(*(a1 + 16), v20);
      v6 = **(a1 + 24);
      *&v18 = mlcore::PlaylistItemPropertyItemPersistentID(v7);
      __p.__r_.__value_.__r.__words[0] = &v18;
      v8 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v32, v18);
      *(v8 + 3) = v6;
      v9 = *(a1 + 16);
      v10 = mlcore::PlaylistItemPropertyOccurrenceID(v8);
      mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::valueForProperty(&__p, v9, v10);
      v12 = mlcore::PlaylistItemPropertyOccurrenceID(v11);
      v13 = mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::setValueForProperty(&v21, &__p, v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v5[35].i8[0] == 1)
      {
        v37 = mlcore::PlaylistItemPropertyPosition(v13);
        *&v18 = &v37;
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v32, v37)[3] = 0;
      }

      v14 = **(a1 + 48);
      (*(***(a1 + 40) + 48))(&v18);
      v15 = *(a1 + 32);
      v16 = v18;
      v18 = 0uLL;
      v17 = *(v15 + 8);
      *v15 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
      }

      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v21);
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v33);
    }

    v33[0] = &v34;
    std::vector<mlcore::PropertyCache>::__destroy_vector::operator()[abi:ne200100](v33);
  }

  dispatch_semaphore_signal(**(a1 + 56));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1D59D4818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&a20);
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&a47);
  a47 = v48 - 80;
  std::vector<mlcore::PropertyCache>::__destroy_vector::operator()[abi:ne200100](&a47);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(a1);
}

void mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::apply<mlcore::ForeignPropertyCacheMapper>(void *a1, int8x8_t **a2)
{
  for (i = a1[23]; i; i = *i)
  {
    v5 = i[3];
    v6 = a2[1];
    __str.__r_.__value_.__r.__words[0] = i[2];
    v7 = std::__hash_table<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,true>,std::__unordered_map_equal<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelPropertyBase *&&>,std::tuple<>>(v6, __str.__r_.__value_.__r.__words[0]);
    v8 = *a2;
    __str.__r_.__value_.__r.__words[0] = v7[3];
    std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(&v8[21], __str.__r_.__value_.__r.__words[0])[3] = v5;
  }

  for (j = a1[18]; j; j = *j)
  {
    v10 = *(j + 6);
    v11 = a2[1];
    __str.__r_.__value_.__r.__words[0] = j[2];
    v12 = std::__hash_table<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,true>,std::__unordered_map_equal<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelPropertyBase *&&>,std::tuple<>>(v11, __str.__r_.__value_.__r.__words[0]);
    v13 = *a2;
    __str.__r_.__value_.__r.__words[0] = v12[3];
    *(std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(&v13[16], __str.__r_.__value_.__r.__words[0]) + 6) = v10;
  }

  for (k = a1[13]; k; k = *k)
  {
    v15 = k[3];
    v16 = a2[1];
    __str.__r_.__value_.__r.__words[0] = k[2];
    v17 = std::__hash_table<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,true>,std::__unordered_map_equal<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelPropertyBase *&&>,std::tuple<>>(v16, __str.__r_.__value_.__r.__words[0]);
    v18 = *a2;
    __str.__r_.__value_.__r.__words[0] = v17[3];
    std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::__unordered_map_hasher<mlcore::ModelProperty<double> *,std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::hash<mlcore::ModelProperty<double> *>,std::equal_to<mlcore::ModelProperty<double> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<double> *,std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::equal_to<mlcore::ModelProperty<double> *>,std::hash<mlcore::ModelProperty<double> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<double> *,double>>>::__emplace_unique_key_args<mlcore::ModelProperty<double> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<double> * const&>,std::tuple<>>(&v18[11], __str.__r_.__value_.__r.__words[0])[3] = v15;
  }

  for (m = a1[8]; m; m = *m)
  {
    v20 = m[2];
    v29 = v20;
    if (*(m + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, m[3], m[4]);
      v20 = v29;
    }

    else
    {
      __p = *(m + 1);
    }

    v21 = a2[1];
    v37 = v20;
    __str.__r_.__value_.__r.__words[0] = &v37;
    v22 = std::__hash_table<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,true>,std::__unordered_map_equal<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelPropertyBase *&&>,std::tuple<>>(v21, v20)[3];
    v23 = *a2;
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = __p;
    }

    mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::setValueForProperty(v23, &__str, v22);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v24 < 0)
      {
LABEL_19:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else if (v24 < 0)
    {
      goto LABEL_19;
    }
  }

  for (n = a1[3]; n; n = *n)
  {
    v30 = n[2];
    mediaplatform::Data::Data(&__p, n[6], n[4], 1);
    v26 = a2[1];
    v37 = v30;
    __str.__r_.__value_.__r.__words[0] = &v37;
    v27 = std::__hash_table<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,true>,std::__unordered_map_equal<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelPropertyBase *&&>,std::tuple<>>(v26, v30)[3];
    v28 = *a2;
    mediaplatform::Data::Data(&__str, __src, __p.__r_.__value_.__l.__size_, 1);
    mlcore::PropertyCacheBase<mediaplatform::Data>::setValueForProperty(v28, &__str, v27);
    __str.__r_.__value_.__r.__words[0] = &unk_1F50DD860;
    if (v36 == 1 && v35)
    {
      MEMORY[0x1DA6EDD20](v35, 0x1000C8077774924);
    }

    __p.__r_.__value_.__r.__words[0] = &unk_1F50DD860;
    if (v33 == 1)
    {
      if (__src)
      {
        MEMORY[0x1DA6EDD20](__src, 0x1000C8077774924);
      }
    }
  }
}

void sub_1D59D4B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  mediaplatform::Data::~Data(&__p);
  mediaplatform::Data::~Data(v23);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,true>,std::__unordered_map_equal<mlcore::ModelPropertyBase *,std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::hash<mlcore::ModelPropertyBase *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelPropertyBase *,mlcore::ModelPropertyBase *>>>::__emplace_unique_key_args<mlcore::ModelPropertyBase *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelPropertyBase *&&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

__n128 std::__function::__func<mlcore::SmartPlaylistEntityCache::entityForClassAndPersistentID(mlcore::EntityClass *,long long,mlcore::PropertyCache)::$_0,std::allocator<mlcore::SmartPlaylistEntityCache::entityForClassAndPersistentID(mlcore::EntityClass *,long long,mlcore::PropertyCache)::$_0>,void ()(std::shared_ptr<mlcore::PropertiesQueryResult>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F50D2D48;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void mlcore::SmartPlaylistEntityCache::setPropertiesToFetchForEntityClass(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  __p[4] = *MEMORY[0x1E69E9840];
  memset(__p, 0, 24);
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  mlcore::EntityCache::setPropertiesToFetchForEntityClass(a1, __p, a3);
}

void sub_1D59D5678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  operator delete(v19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlcore::SmartPlaylistEntityCache::~SmartPlaylistEntityCache(mlcore::SmartPlaylistEntityCache *this)
{
  mlcore::SmartPlaylistEntityCache::~SmartPlaylistEntityCache(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3FA0;
  v2 = *(this + 32);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 30);
  *(this + 30) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 27);
  if (v5)
  {
    *(this + 28) = v5;
    operator delete(v5);
  }

  mlcore::EntityCache::~EntityCache(this);
}

uint64_t mlcore::SmartPlaylistEntityCache::SmartPlaylistEntityCache(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    mlcore::EntityCache::EntityCache(a1, v5);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    mlcore::EntityCache::EntityCache(a1, v5);
  }

  *a1 = &unk_1F50D3FA0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0;
  return a1;
}

{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    mlcore::EntityCache::EntityCache(a1, v5);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    mlcore::EntityCache::EntityCache(a1, v5);
  }

  *a1 = &unk_1F50D3FA0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0;
  return a1;
}

void mlcore::UnaryPredicateBase::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 8);
      v6 = a2[1];
      v12 = *a2;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 96))(&v14);
      std::allocate_shared[abi:ne200100]<mediaplatform::SQLUnaryExpression,std::allocator<mediaplatform::SQLUnaryExpression>,std::shared_ptr<mediaplatform::SQLExpression>,mediaplatform::SQLUnaryExpression::UnaryOperator,0>();
    }

    v9 = *(a1 + 8);
    v10 = a2[1];
    v11 = *a2;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v9 + 96))(&v14);
    std::allocate_shared[abi:ne200100]<mediaplatform::SQLUnaryExpression,std::allocator<mediaplatform::SQLUnaryExpression>,std::shared_ptr<mediaplatform::SQLExpression>,mediaplatform::SQLUnaryExpression::UnaryOperator,0>();
  }

  if (v2)
  {
    v7 = *(a1 + 8);
    v8 = a2[1];
    v13 = *a2;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 96))(&v14);
    std::allocate_shared[abi:ne200100]<mediaplatform::SQLNotExpression,std::allocator<mediaplatform::SQLNotExpression>,std::shared_ptr<mediaplatform::SQLExpression>,0>();
  }

  v3 = *(a1 + 8);
  v4 = a2[1];
  v15 = *a2;
  v16 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 96))(v3, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1D59D5BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  v20 = *(v18 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D59D5C4C()
{
  if (!*(v0 - 40))
  {
    JUMPOUT(0x1D59D5C24);
  }

  JUMPOUT(0x1D59D5C20);
}

void std::__shared_ptr_emplace<mediaplatform::SQLNotExpression>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mediaplatform::SQLUnaryExpression>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::UnaryPredicateBase::_allProperties@<X0>(mlcore::UnaryPredicateBase *this@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *(this + 1);
  result = mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::OrderedSet(a2, v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void mlcore::UnaryPredicateBase::description(mlcore::UnaryPredicateBase *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 4);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      (*(**(this + 1) + 40))(&v13);
      v5 = std::string::append(&v13, "is null", 7uLL);
    }

    else
    {
      (*(**(this + 1) + 40))(&v13);
      v5 = std::string::append(&v13, "is not null", 0xBuLL);
    }

    v11 = *&v5->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v5->__r_.__value_.__l + 2);
    *a2 = v11;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v13.__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = *(**(this + 1) + 40);

      v4();
      return;
    }

    (*(**(this + 1) + 40))(&v12);
    v6 = std::string::insert(&v12, 0, "!(", 2uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v13, ")", 1uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v8->__r_.__value_.__l + 2);
    *a2 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v12.__r_.__value_.__r.__words[0];
LABEL_15:
      operator delete(v10);
    }
  }
}

void sub_1D59D6164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::UnaryPredicate<long long>::UnaryPredicate(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = a3;
  *result = &unk_1F50D6D38;
  *(result + 8) = a2;
  return result;
}

{
  *(result + 16) = a3;
  *result = &unk_1F50D6D38;
  *(result + 8) = a2;
  return result;
}

uint64_t mlcore::UnaryPredicateBase::UnaryPredicateBase(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_1F50D4970;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t mlcore::UnaryPredicate<std::string>::UnaryPredicate(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = a3;
  *result = &unk_1F50D6E40;
  *(result + 8) = a2;
  return result;
}

{
  *(result + 16) = a3;
  *result = &unk_1F50D6E40;
  *(result + 8) = a2;
  return result;
}

uint64_t mlcore::UnaryPredicate<double>::UnaryPredicate(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = a3;
  *result = &unk_1F50D6DE8;
  *(result + 8) = a2;
  return result;
}

{
  *(result + 16) = a3;
  *result = &unk_1F50D6DE8;
  *(result + 8) = a2;
  return result;
}

uint64_t mlcore::UnaryPredicate<int>::UnaryPredicate(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = a3;
  *result = &unk_1F50D6D90;
  *(result + 8) = a2;
  return result;
}

{
  *(result + 16) = a3;
  *result = &unk_1F50D6D90;
  *(result + 8) = a2;
  return result;
}

uint64_t mlcore::UnaryPredicate<mediaplatform::Data>::UnaryPredicate(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = a3;
  *result = &unk_1F50D6E98;
  *(result + 8) = a2;
  return result;
}

{
  *(result + 16) = a3;
  *result = &unk_1F50D6E98;
  *(result + 8) = a2;
  return result;
}

mlcore::ItemSearchTable *mlcore::ItemSearchTable::ItemSearchTable(mlcore::ItemSearchTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v38, "item_search");
  std::string::basic_string[abi:ne200100]<0>(&__s, "item_pid");
  v34 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = __s;
  }

  v36 = 1;
  v37[0] = 0;
  *&v37[4] = 0;
  v34 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "search_title");
  v29 = &unk_1F50D86E0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v28;
  }

  v31 = 16;
  v32[0] = 1;
  *&v32[4] = 0;
  v29 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "search_album");
  v24 = &unk_1F50D86E0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v23;
  }

  v26 = 16;
  v27[0] = 1;
  *&v27[4] = 0;
  v24 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v18, "search_artist");
  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v18;
  }

  v21 = 16;
  v22[0] = 1;
  *&v22[4] = 0;
  v19 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "search_composer");
  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  v16 = 16;
  v17[0] = 1;
  *&v17[4] = 0;
  v14 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "search_album_artist");
  v9 = &unk_1F50D86E0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  v11 = 16;
  v12[0] = 1;
  *&v12[4] = 0;
  v9 = &unk_1F50D7AC0;
  v65 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v66 = v35;
  }

  v67 = v36;
  v65 = &unk_1F50D8958;
  v68 = *v37;
  v69 = *&v37[8];
  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = v30;
  }

  v62 = v31;
  v60 = &unk_1F50D8958;
  v63 = *v32;
  v64 = *&v32[8];
  v55 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v56 = v25;
  }

  v57 = v26;
  v55 = &unk_1F50D8958;
  v58 = *v27;
  v59 = *&v27[8];
  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v51 = v20;
  }

  v52 = v21;
  v50 = &unk_1F50D8958;
  v53 = *v22;
  v54 = *&v22[8];
  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v46 = v15;
  }

  v47 = v16;
  v45 = &unk_1F50D8958;
  v48 = *v17;
  v49 = *&v17[8];
  v40 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = __p;
  }

  v42 = v11;
  v40 = &unk_1F50D8958;
  v43 = *v12;
  v44 = *&v12[8];
  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v39) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v38[0], v38[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v38;
    *(this + 3) = v39;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50D89F8;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v95 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v96 = v66;
  }

  v97 = v67;
  v95 = &unk_1F50D8958;
  v98 = v68;
  v99 = v69;
  v90 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = v61;
  }

  v92 = v62;
  v90 = &unk_1F50D8958;
  v93 = v63;
  v94 = v64;
  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v56;
  }

  v87 = v57;
  v85 = &unk_1F50D8958;
  v88 = v58;
  v89 = v59;
  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v51;
  }

  v82 = v52;
  v80 = &unk_1F50D8958;
  v83 = v53;
  v84 = v54;
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = v46;
  }

  v77 = v47;
  v75 = &unk_1F50D8958;
  v78 = v48;
  v79 = v49;
  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v41;
  }

  v72 = v42;
  v70 = &unk_1F50D8958;
  v73 = v43;
  v74 = v44;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v91;
  }

  v122 = v92;
  v120 = &unk_1F50D8958;
  v123 = v93;
  v124 = v94;
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v86;
  }

  v117 = v87;
  v115 = &unk_1F50D8958;
  v118 = v88;
  v119 = v89;
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v81;
  }

  v112 = v82;
  v110 = &unk_1F50D8958;
  v113 = v83;
  v114 = v84;
  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v76;
  }

  v107 = v77;
  v105 = &unk_1F50D8958;
  v108 = v78;
  v109 = v79;
  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v71;
  }

  v102 = v72;
  v100 = &unk_1F50D8958;
  v103 = v73;
  v104 = v74;
  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    v141 = v116;
  }

  v142 = v117;
  v140 = &unk_1F50D8958;
  v143 = v118;
  v144 = v119;
  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v136 = v111;
  }

  v137 = v112;
  v135 = &unk_1F50D8958;
  v138 = v113;
  v139 = v114;
  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v106;
  }

  v132 = v107;
  v130 = &unk_1F50D8958;
  v133 = v108;
  v134 = v109;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v101;
  }

  v127 = v102;
  v125 = &unk_1F50D8958;
  v128 = v103;
  v129 = v104;
  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v156, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v156 = v136;
  }

  v157 = v137;
  v155 = &unk_1F50D8958;
  v158 = v138;
  v159 = v139;
  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v131;
  }

  v152 = v132;
  v150 = &unk_1F50D8958;
  v153 = v133;
  v154 = v134;
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v126;
  }

  v147 = v127;
  v145 = &unk_1F50D8958;
  v148 = v128;
  v149 = v129;
  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v151;
  }

  v167 = v152;
  v165 = &unk_1F50D8958;
  v168 = v153;
  v169 = v154;
  v160 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
  }

  else
  {
    v161 = v146;
  }

  v162 = v147;
  v160 = &unk_1F50D8958;
  v163 = v148;
  v164 = v149;
  mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(this + 80, &v165, &v160);
  v160 = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v161.__r_.__value_.__l.__data_);
  }

  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  *(this + 22) = &unk_1F50D86E0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 184), v156.__r_.__value_.__l.__data_, v156.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 184) = v156;
  }

  *(this + 52) = v157;
  *(this + 22) = &unk_1F50D8958;
  *(this + 212) = v158;
  *(this + 55) = v159;
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  *(this + 28) = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 232) = v141;
  }

  *(this + 64) = v142;
  *(this + 28) = &unk_1F50D8958;
  *(this + 260) = v143;
  *(this + 67) = v144;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  *(this + 34) = &unk_1F50D86E0;
  v3 = (this + 280);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v121.__r_.__value_.__l.__data_;
    *(this + 37) = *(&v121.__r_.__value_.__l + 2);
  }

  *(this + 76) = v122;
  *(this + 34) = &unk_1F50D8958;
  *(this + 308) = v123;
  *(this + 79) = v124;
  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  *(this + 40) = &unk_1F50D86E0;
  v4 = (this + 328);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v96.__r_.__value_.__l.__data_;
    *(this + 43) = *(&v96.__r_.__value_.__l + 2);
  }

  *(this + 88) = v97;
  *(this + 40) = &unk_1F50D8958;
  *(this + 356) = v98;
  *(this + 91) = v99;
  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v90 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  v95 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  v40 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v55 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v65 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50D7FA8;
  *(this + 46) = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 376), v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 376) = v35;
  }

  *(this + 100) = v36;
  *(this + 404) = *v37;
  *(this + 103) = *&v37[8];
  *(this + 46) = &unk_1F50D7AC0;
  *(this + 52) = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 424), v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 424) = v30;
  }

  *(this + 112) = v31;
  *(this + 452) = *v32;
  *(this + 115) = *&v32[8];
  *(this + 52) = &unk_1F50D7AC0;
  *(this + 58) = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 472), v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 472) = v25;
  }

  *(this + 124) = v26;
  *(this + 500) = *v27;
  *(this + 127) = *&v27[8];
  *(this + 58) = &unk_1F50D7AC0;
  *(this + 64) = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 520), v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 520) = v20;
  }

  *(this + 136) = v21;
  *(this + 548) = *v22;
  *(this + 139) = *&v22[8];
  *(this + 64) = &unk_1F50D7AC0;
  *(this + 70) = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 568), v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 568) = v15;
  }

  *(this + 148) = v16;
  *(this + 596) = *v17;
  *(this + 151) = *&v17[8];
  *(this + 70) = &unk_1F50D7AC0;
  *(this + 76) = &unk_1F50D86E0;
  v5 = (this + 616);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v6 = 0;
    *&v5->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(this + 79) = *(&__p.__r_.__value_.__l + 2);
  }

  *(this + 160) = v11;
  *(this + 644) = *v12;
  *(this + 163) = *&v12[8];
  *(this + 76) = &unk_1F50D7AC0;
  v9 = &unk_1F50D86E0;
  if (v6)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v24 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v29 = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v34 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  *this = &unk_1F50D6538;
  return this;
}

void sub_1D59D8024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39, unint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, void *a63)
{
  *(v80 + 560) = v78;
  if (*(v80 + 591) < 0)
  {
    operator delete(*v85);
  }

  *(v80 + 512) = v84;
  if (*(v80 + 543) < 0)
  {
    operator delete(*v83);
  }

  *(v80 + 464) = v82;
  if (*(v80 + 495) < 0)
  {
    operator delete(*v81);
  }

  *(v80 + 416) = a33;
  if (*(v80 + 447) < 0)
  {
    operator delete(*v79);
  }

  *(v80 + 368) = a34;
  if (*(v80 + 399) < 0)
  {
    operator delete(*v77);
  }

  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(v80);
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  STACK[0x238] = a39;
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  STACK[0x280] = a40;
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

void sub_1D59D8648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 224);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D59D86DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::ItemSearchTable::~ItemSearchTable(mlcore::ItemSearchTable *this)
{
  *this = &unk_1F50D7FA8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 368);
  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D7FA8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 368);

  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(this);
}

void mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(mediaplatform::DatabaseTableBase *this)
{
  *this = &unk_1F50D89F8;
  *(this + 40) = &unk_1F50D86E0;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 34) = &unk_1F50D86E0;
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  *(this + 28) = &unk_1F50D86E0;
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  *(this + 22) = &unk_1F50D86E0;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 16) = &unk_1F50D86E0;
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  *(this + 10) = &unk_1F50D86E0;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(mediaplatform::DatabaseTableBase *a1)
{
  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaTable<long long,long long,long long,long long,long long,long long>::~MediaTable(mediaplatform::DatabaseTableBase *a1)
{
  *a1 = &unk_1F50D7FA8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(a1 + 368);
  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D7FA8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(a1 + 368);

  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long>::~DatabaseTable(a1);
}

void mlcore::ItemSearchTable::persistentIDColumn(mlcore::ItemSearchTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 399) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 47), *(this + 48));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 376);
    *(a2 + 24) = *(this + 49);
  }

  *(a2 + 32) = *(this + 100);
  *(a2 + 44) = *(this + 103);
  *(a2 + 36) = *(this + 404);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemSearchTable::searchTitleColumn(mlcore::ItemSearchTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 447) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 53), *(this + 54));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 424);
    *(a2 + 24) = *(this + 55);
  }

  *(a2 + 32) = *(this + 112);
  *(a2 + 44) = *(this + 115);
  *(a2 + 36) = *(this + 452);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemSearchTable::searchAlbumColumn(mlcore::ItemSearchTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 495) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 59), *(this + 60));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 472);
    *(a2 + 24) = *(this + 61);
  }

  *(a2 + 32) = *(this + 124);
  *(a2 + 44) = *(this + 127);
  *(a2 + 36) = *(this + 500);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemSearchTable::searchArtistColumn(mlcore::ItemSearchTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 543) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 65), *(this + 66));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 520);
    *(a2 + 24) = *(this + 67);
  }

  *(a2 + 32) = *(this + 136);
  *(a2 + 44) = *(this + 139);
  *(a2 + 36) = *(this + 548);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemSearchTable::searchComposerColumn(mlcore::ItemSearchTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 591) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 71), *(this + 72));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 568);
    *(a2 + 24) = *(this + 73);
  }

  *(a2 + 32) = *(this + 148);
  *(a2 + 44) = *(this + 151);
  *(a2 + 36) = *(this + 596);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemSearchTable::searchAlbumArtistColumn(mlcore::ItemSearchTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 639) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 77), *(this + 78));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 616);
    *(a2 + 24) = *(this + 79);
  }

  *(a2 + 32) = *(this + 160);
  *(a2 + 44) = *(this + 163);
  *(a2 + 36) = *(this + 644);
  *a2 = &unk_1F50D7AC0;
}

mlcore::GeniusMetadataTable *mlcore::GeniusMetadataTable::GeniusMetadataTable(mlcore::GeniusMetadataTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v37, "genius_metadata");
  std::string::basic_string[abi:ne200100]<0>(&v31, "genius_id");
  v32 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v31;
  }

  v34 = 1;
  v35 = 0;
  v36 = 0;
  v32 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v25, "revision_level");
  v26 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v25;
  }

  v28 = 16;
  v29 = 1;
  v30 = 0;
  v26 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "version");
  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v19;
  }

  v22 = 16;
  v23 = 1;
  v24 = 0;
  v20 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "checksum");
  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  v16 = 16;
  v17 = 1;
  v18 = 0;
  v14 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "data");
  v4 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  v6 = 0;
  v7 = 0;
  v8 = &unk_1F50DD860;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = &unk_1F50D7B40;
  mlcore::MediaTable<long long,int,int,int,mediaplatform::Data>::MediaTable(this, &v37, &v32, &v26, &v20, &v14, &v4);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v26 = &unk_1F50D86E0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v32 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  *this = &unk_1F50D46F8;
  return this;
}

void sub_1D59D924C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  *(v54 - 192) = v53;
  if (*(v54 - 161) < 0)
  {
    operator delete(*(v54 - 184));
  }

  if (*(v54 - 193) < 0)
  {
    operator delete(*(v54 - 216));
  }

  *(v54 - 120) = v52;
  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (*(v54 - 49) < 0)
  {
    operator delete(*(v54 - 72));
  }

  _Unwind_Resume(exception_object);
}

void mlcore::GeniusMetadataTable::~GeniusMetadataTable(mlcore::GeniusMetadataTable *this)
{
  mlcore::MediaTable<long long,int,int,int,mediaplatform::Data>::~MediaTable(this);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::GeniusMetadataTable::persistentIDColumn(mlcore::GeniusMetadataTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 383) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 45), *(this + 46));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 360);
    *(a2 + 24) = *(this + 47);
  }

  *(a2 + 32) = *(this + 96);
  *(a2 + 44) = *(this + 99);
  *(a2 + 36) = *(this + 388);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::GeniusMetadataTable::revisionLevelColumn(mlcore::GeniusMetadataTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 431) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 51), *(this + 52));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 408);
    *(a2 + 24) = *(this + 53);
  }

  *(a2 + 32) = *(this + 108);
  *(a2 + 36) = *(this + 436);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::GeniusMetadataTable::versionColumn(mlcore::GeniusMetadataTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 479) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 57), *(this + 58));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 456);
    *(a2 + 24) = *(this + 59);
  }

  *(a2 + 32) = *(this + 120);
  *(a2 + 36) = *(this + 484);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::GeniusMetadataTable::checksumColumn(mlcore::GeniusMetadataTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 527) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 63), *(this + 64));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 504);
    *(a2 + 24) = *(this + 65);
  }

  *(a2 + 32) = *(this + 132);
  *(a2 + 36) = *(this + 532);
  *a2 = &unk_1F50D7AE0;
}

mediaplatform::Data *mlcore::GeniusMetadataTable::dataColumn@<X0>(mlcore::GeniusMetadataTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 575) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 69), *(this + 70));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 552);
    *(a2 + 24) = *(this + 71);
  }

  *(a2 + 32) = *(this + 144);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 580);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 76), *(this + 74), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D59D96F4(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *mlcore::ItemStoreTable::ItemStoreTable(mlcore::ItemStoreTable *this)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  std::string::basic_string[abi:ne200100]<0>(v372, "item_store");
  std::string::basic_string[abi:ne200100]<0>(&v366, "item_pid");
  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v366.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v368, v366.__r_.__value_.__l.__data_, v366.__r_.__value_.__l.__size_);
  }

  else
  {
    v368 = v366;
  }

  v369 = 1;
  v370 = 0;
  v371 = 0;
  v367 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v360, "store_item_id");
  v361 = &unk_1F50D86E0;
  if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v362, v360.__r_.__value_.__l.__data_, v360.__r_.__value_.__l.__size_);
  }

  else
  {
    v362 = v360;
  }

  v363 = 16;
  v364 = 1;
  v365 = 0;
  v361 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&__s, "store_composer_id");
  v355 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v356, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v356 = __s;
  }

  v357 = 16;
  v358 = 1;
  v359 = 0;
  v355 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v348, "store_genre_id");
  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v350, v348.__r_.__value_.__l.__data_, v348.__r_.__value_.__l.__size_);
  }

  else
  {
    v350 = v348;
  }

  v351 = 16;
  v352 = 1;
  v353 = 0;
  v349 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v342, "store_playlist_id");
  v343 = &unk_1F50D86E0;
  if (SHIBYTE(v342.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v344, v342.__r_.__value_.__l.__data_, v342.__r_.__value_.__l.__size_);
  }

  else
  {
    v344 = v342;
  }

  v345 = 16;
  v346 = 1;
  v347 = 0;
  v343 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v336, "storefront_id");
  v337 = &unk_1F50D86E0;
  if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v338, v336.__r_.__value_.__l.__data_, v336.__r_.__value_.__l.__size_);
  }

  else
  {
    v338 = v336;
  }

  v339 = 16;
  v340 = 1;
  v341 = 0;
  v337 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v330, "purchase_history_id");
  v331 = &unk_1F50D86E0;
  if (SHIBYTE(v330.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v332, v330.__r_.__value_.__l.__data_, v330.__r_.__value_.__l.__size_);
  }

  else
  {
    v332 = v330;
  }

  v333 = 16;
  v334 = 1;
  v335 = 0;
  v331 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v324, "purchase_history_token");
  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v326, v324.__r_.__value_.__l.__data_, v324.__r_.__value_.__l.__size_);
  }

  else
  {
    v326 = v324;
  }

  v327 = 16;
  v328 = 1;
  v329 = 0;
  v325 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v316, "purchase_history_redownload_params");
  v317 = &unk_1F50D86E0;
  if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v318, v316.__r_.__value_.__l.__data_, v316.__r_.__value_.__l.__size_);
  }

  else
  {
    v318 = v316;
  }

  v319 = 0;
  v320 = 0;
  v323 = 0;
  v321 = 0;
  v322 = 0;
  v317 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v310, "store_saga_id");
  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, v310.__r_.__value_.__l.__data_, v310.__r_.__value_.__l.__size_);
  }

  else
  {
    v312 = v310;
  }

  v313 = 16;
  v314 = 1;
  v315 = 0;
  v311 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v302, "match_redownload_params");
  v303 = &unk_1F50D86E0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v304, v302.__r_.__value_.__l.__data_, v302.__r_.__value_.__l.__size_);
  }

  else
  {
    v304 = v302;
  }

  v305 = 0;
  v306 = 0;
  v309 = 0;
  v307 = 0;
  v308 = 0;
  v303 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v296, "cloud_status");
  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v298, v296.__r_.__value_.__l.__data_, v296.__r_.__value_.__l.__size_);
  }

  else
  {
    v298 = v296;
  }

  v299 = 16;
  v300 = 1;
  v301 = 0;
  v297 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v290, "sync_id");
  v291 = &unk_1F50D86E0;
  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v292, v290.__r_.__value_.__l.__data_, v290.__r_.__value_.__l.__size_);
  }

  else
  {
    v292 = v290;
  }

  v293 = 16;
  v294 = 1;
  v295 = 0;
  v291 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v284, "home_sharing_id");
  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v284.__r_.__value_.__l.__data_, v284.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v284;
  }

  v287 = 16;
  v288 = 1;
  v289 = 0;
  v285 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v278, "is_ota_purchased");
  v279 = &unk_1F50D86E0;
  if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v280, v278.__r_.__value_.__l.__data_, v278.__r_.__value_.__l.__size_);
  }

  else
  {
    v280 = v278;
  }

  v281 = 16;
  v282 = 1;
  v283 = 0;
  v279 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v272, "store_kind");
  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v272;
  }

  v275 = 16;
  v276 = 1;
  v277 = 0;
  v273 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v266, "account_id");
  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, v266.__r_.__value_.__l.__data_, v266.__r_.__value_.__l.__size_);
  }

  else
  {
    v268 = v266;
  }

  v269 = 16;
  v270 = 1;
  v271 = 0;
  v267 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v260, "downloader_account_id");
  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v260.__r_.__value_.__l.__data_, v260.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v260;
  }

  v263 = 16;
  v264 = 1;
  v265 = 0;
  v261 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v254, "family_account_id");
  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, v254.__r_.__value_.__l.__data_, v254.__r_.__value_.__l.__size_);
  }

  else
  {
    v256 = v254;
  }

  v257 = 16;
  v258 = 1;
  v259 = 0;
  v255 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v248, "is_protected");
  v249 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v250, v248.__r_.__value_.__l.__data_, v248.__r_.__value_.__l.__size_);
  }

  else
  {
    v250 = v248;
  }

  v251 = 16;
  v252 = 1;
  v253 = 0;
  v249 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v242, "key_versions");
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v242.__r_.__value_.__l.__data_, v242.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v242;
  }

  v245 = 16;
  v246 = 1;
  v247 = 0;
  v243 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v236, "key_platform_id");
  v237 = &unk_1F50D86E0;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v236.__r_.__value_.__l.__data_, v236.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v236;
  }

  v239 = 16;
  v240 = 1;
  v241 = 0;
  v237 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v230, "key_id");
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v232, v230.__r_.__value_.__l.__data_, v230.__r_.__value_.__l.__size_);
  }

  else
  {
    v232 = v230;
  }

  v233 = 16;
  v234 = 1;
  v235 = 0;
  v231 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v224, "key_id_2");
  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v224;
  }

  v227 = 16;
  v228 = 1;
  v229 = 0;
  v225 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v218, "date_purchased");
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v218.__r_.__value_.__l.__data_, v218.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v218;
  }

  v221 = 16;
  v222 = 1;
  v223 = 0;
  v219 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v212, "date_released");
  v213 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v214, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    v214 = v212;
  }

  v215 = 16;
  v216 = 1;
  v217 = 0;
  v213 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v204, "external_guid");
  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v204;
  }

  v207 = 0;
  v208 = 0;
  v211 = 0;
  v209 = 0;
  v210 = 0;
  v205 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v196, "feed_url");
  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v196;
  }

  v199 = 0;
  v200 = 0;
  v203 = 0;
  v201 = 0;
  v202 = 0;
  v197 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v188, "artwork_url");
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v188;
  }

  v191 = 0;
  v192 = 0;
  v195 = 0;
  v193 = 0;
  v194 = 0;
  v189 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v180, "store_xid");
  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v180;
  }

  v183 = 0;
  v184 = 0;
  v187 = 0;
  v185 = 0;
  v186 = 0;
  v181 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v172, "store_flavor");
  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v172;
  }

  v175 = 0;
  v176 = 0;
  v179 = 0;
  v177 = 0;
  v178 = 0;
  v173 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v166, "store_matched_status");
  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v168, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    v168 = v166;
  }

  v169 = 16;
  v170 = 1;
  v171 = 0;
  v167 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v160, "store_redownloaded_status");
  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v160.__r_.__value_.__l.__data_, v160.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v160;
  }

  v163 = 16;
  v164 = 1;
  v165 = 0;
  v161 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v157, "extras_url");
  std::string::basic_string[abi:ne200100]<0>(v155, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v159, v157, v155);
  std::string::basic_string[abi:ne200100]<0>(&v149, "vpp_is_licensed");
  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v149;
  }

  v152 = 16;
  v153 = 1;
  v154 = 0;
  v150 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v143, "vpp_org_id");
  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v145, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    v145 = v143;
  }

  v146 = 16;
  v147 = 1;
  v148 = 0;
  v144 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v140, "vpp_org_name");
  std::string::basic_string[abi:ne200100]<0>(v138, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v142, v140, v138);
  std::string::basic_string[abi:ne200100]<0>(v135, "sync_redownload_params");
  std::string::basic_string[abi:ne200100]<0>(v133, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v137, v135, v133);
  std::string::basic_string[abi:ne200100]<0>(&v127, "needs_reporting");
  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v127;
  }

  v130 = 16;
  v131 = 1;
  v132 = 0;
  v128 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v121, "subscription_store_item_id");
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v121;
  }

  v124 = 16;
  v125 = 1;
  v126 = 0;
  v122 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v115, "playback_endpoint_type");
  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v117 = v115;
  }

  v118 = 16;
  v119 = 1;
  v120 = 0;
  v116 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v109, "is_mastered_for_itunes");
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v109;
  }

  v112 = 16;
  v113 = 1;
  v114 = 0;
  v110 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(v106, "radio_station_id");
  std::string::basic_string[abi:ne200100]<0>(v104, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v108, v106, v104);
  std::string::basic_string[abi:ne200100]<0>(v101, "advertisement_unique_id");
  std::string::basic_string[abi:ne200100]<0>(v99, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v103, v101, v99);
  std::string::basic_string[abi:ne200100]<0>(&v93, "advertisement_type");
  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v93;
  }

  v96 = 16;
  v97 = 1;
  v98 = 0;
  v94 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v87, "is_artist_uploaded_content");
  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v87;
  }

  v90 = 16;
  v91 = 1;
  v92 = 0;
  v88 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v81, "cloud_asset_available");
  v82 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v83 = v81;
  }

  v84 = 16;
  v85 = 1;
  v86 = 0;
  v82 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v75, "is_subscription");
  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v75;
  }

  v78 = 16;
  v79 = 1;
  v80 = 0;
  v76 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v69, "sync_in_my_library");
  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v69;
  }

  v72 = 16;
  v73 = 1;
  v74 = 0;
  v70 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v63, "cloud_in_my_library");
  v64 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = v63;
  }

  v66 = 16;
  v67 = 1;
  v68 = 0;
  v64 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(v60, "cloud_album_id");
  std::string::basic_string[abi:ne200100]<0>(v58, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v62, v60, v58);
  std::string::basic_string[abi:ne200100]<0>(&v52, "cloud_playback_endpoint_type");
  v53 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v52;
  }

  v55 = 16;
  v56 = 1;
  v57 = 0;
  v53 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v49, "cloud_universal_library_id");
  std::string::basic_string[abi:ne200100]<0>(v47, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v51, v49, v47);
  std::string::basic_string[abi:ne200100]<0>(&v41, "reporting_store_item_id");
  v42 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = v41;
  }

  v44 = 16;
  v45 = 1;
  v46 = 0;
  v42 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v35, "asset_store_item_id");
  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v35;
  }

  v38 = 16;
  v39 = 1;
  v40 = 0;
  v36 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v29, "extended_playback_attribute");
  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v29;
  }

  v32 = 16;
  v33 = 1;
  v34 = 0;
  v30 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "extended_lyrics_attribute");
  v24 = &unk_1F50D86E0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v23;
  }

  v26 = 16;
  v27 = 1;
  v28 = 0;
  v24 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v20, "store_canonical_id");
  std::string::basic_string[abi:ne200100]<0>(v18, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v22, v20, v18);
  std::string::basic_string[abi:ne200100]<0>(v15, "tv_show_canonical_id");
  std::string::basic_string[abi:ne200100]<0>(v13, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v17, v15, v13);
  std::string::basic_string[abi:ne200100]<0>(v10, "tv_season_canonical_id");
  std::string::basic_string[abi:ne200100]<0>(v8, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v12, v10, v8);
  std::string::basic_string[abi:ne200100]<0>(v5, "immersive_deep_link_url");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v7, v5, __p);
  mlcore::MediaTable<long long,long long,long long,long long,long long,long long,long long,long long,std::string,long long,std::string,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,std::string,std::string,std::string,std::string,std::string,long long,long long,std::string,long long,long long,std::string,std::string,long long,long long,long long,int,std::string,std::string,long long,long long,long long,long long,int,int,std::string,long long,std::string,long long,long long,long long,long long,std::string,std::string,std::string,std::string>::MediaTable(v2, v372, &v367, &v361, &v355, &v349, &v343, &v337, &v331, &v325, &v317, &v311, &v303, &v297, &v291, &v285, &v279, &v273, &v267, &v261, &v255, &v249, &v243, &v237, &v231, &v225, &v219, &v213, &v205, &v197, &v189, &v181, &v173, &v167, &v161, v159, &v150, &v144, v142, v137, &v128, &v122, &v116, &v110, v108, v103, &v94, &v88, &v82, &v76, &v70, &v64, v62, &v53, v51, &v42, &v36, &v30, &v24, v22, v17, v12, v7);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v12);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v17);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v22);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v24 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v42 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v51);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  v53 = &unk_1F50D86E0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v62);
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  v64 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v82 = &unk_1F50D86E0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v103);
  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v108);
  if (v105 < 0)
  {
    operator delete(v104[0]);
  }

  if (v107 < 0)
  {
    operator delete(v106[0]);
  }

  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v137);
  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v142);
  if (v139 < 0)
  {
    operator delete(v138[0]);
  }

  if (v141 < 0)
  {
    operator delete(v140[0]);
  }

  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v159);
  if (v156 < 0)
  {
    operator delete(v155[0]);
  }

  if (v158 < 0)
  {
    operator delete(v157[0]);
  }

  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v173);
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v181);
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v189);
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v197);
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v205);
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  v213 = &unk_1F50D86E0;
  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v214.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v218.__r_.__value_.__l.__data_);
  }

  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  v237 = &unk_1F50D86E0;
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  v249 = &unk_1F50D86E0;
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v256.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v254.__r_.__value_.__l.__data_);
  }

  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v274.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v279 = &unk_1F50D86E0;
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v278.__r_.__value_.__l.__data_);
  }

  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v286.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v284.__r_.__value_.__l.__data_);
  }

  v291 = &unk_1F50D86E0;
  if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v292.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v290.__r_.__value_.__l.__data_);
  }

  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v298.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v296.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v303);
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v317);
  if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v316.__r_.__value_.__l.__data_);
  }

  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v326.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v326.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v324.__r_.__value_.__l.__data_);
  }

  v331 = &unk_1F50D86E0;
  if (SHIBYTE(v332.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v332.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v330.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v330.__r_.__value_.__l.__data_);
  }

  v337 = &unk_1F50D86E0;
  if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v338.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v336.__r_.__value_.__l.__data_);
  }

  v343 = &unk_1F50D86E0;
  if (SHIBYTE(v344.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v344.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v342.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v342.__r_.__value_.__l.__data_);
  }

  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v350.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v350.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v348.__r_.__value_.__l.__data_);
  }

  v355 = &unk_1F50D86E0;
  if (SHIBYTE(v356.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v356.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v361 = &unk_1F50D86E0;
  if (SHIBYTE(v362.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v362.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v360.__r_.__value_.__l.__data_);
  }

  v367 = &unk_1F50D86E0;
  if (SHIBYTE(v368.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v368.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v366.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v366.__r_.__value_.__l.__data_);
  }

  if (v373 < 0)
  {
    operator delete(v372[0]);
  }

  result = v2;
  *v2 = &unk_1F50D7008;
  return result;
}

void sub_1D59DC2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  STACK[0x500] = v75;
  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(STACK[0x4E8]);
  }

  STACK[0x548] = v74;
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  STACK[0x590] = v72;
  if (SLOBYTE(STACK[0x5AF]) < 0)
  {
    operator delete(STACK[0x598]);
  }

  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(STACK[0x578]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x5F0]);
  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(STACK[0x5D8]);
  }

  STACK[0x648] = v73;
  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x6A8]);
  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  STACK[0x700] = v79;
  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x6FF]) < 0)
  {
    operator delete(STACK[0x6E8]);
  }

  STACK[0x748] = v78;
  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x747]) < 0)
  {
    operator delete(STACK[0x730]);
  }

  STACK[0x790] = v77;
  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(STACK[0x798]);
  }

  if (SLOBYTE(STACK[0x78F]) < 0)
  {
    operator delete(STACK[0x778]);
  }

  STACK[0x7D8] = a65;
  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  if (SLOBYTE(STACK[0x7D7]) < 0)
  {
    operator delete(STACK[0x7C0]);
  }

  STACK[0x820] = a66;
  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(STACK[0x808]);
  }

  STACK[0x868] = a67;
  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (SLOBYTE(STACK[0x867]) < 0)
  {
    operator delete(STACK[0x850]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x8C8]);
  if (SLOBYTE(STACK[0x8AF]) < 0)
  {
    operator delete(STACK[0x898]);
  }

  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(STACK[0x8B0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x938]);
  if (SLOBYTE(STACK[0x91F]) < 0)
  {
    operator delete(STACK[0x908]);
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(STACK[0x920]);
  }

  STACK[0x990] = a68;
  if (SLOBYTE(STACK[0x9AF]) < 0)
  {
    operator delete(STACK[0x998]);
  }

  if (SLOBYTE(STACK[0x98F]) < 0)
  {
    operator delete(STACK[0x978]);
  }

  STACK[0x9D8] = a69;
  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(STACK[0x9E0]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  STACK[0xA20] = a70;
  if (SLOBYTE(STACK[0xA3F]) < 0)
  {
    operator delete(STACK[0xA28]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  STACK[0xA68] = a71;
  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(STACK[0xA70]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xAC8]);
  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  if (SLOBYTE(STACK[0xAC7]) < 0)
  {
    operator delete(STACK[0xAB0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xB38]);
  if (SLOBYTE(STACK[0xB1F]) < 0)
  {
    operator delete(STACK[0xB08]);
  }

  if (SLOBYTE(STACK[0xB37]) < 0)
  {
    operator delete(STACK[0xB20]);
  }

  STACK[0xB90] = a72;
  if (SLOBYTE(STACK[0xBAF]) < 0)
  {
    operator delete(STACK[0xB98]);
  }

  if (SLOBYTE(STACK[0xB8F]) < 0)
  {
    operator delete(STACK[0xB78]);
  }

  STACK[0xBD8] = STACK[0x200];
  if (SLOBYTE(STACK[0xBF7]) < 0)
  {
    operator delete(STACK[0xBE0]);
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(STACK[0xBC0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xC38]);
  if (SLOBYTE(STACK[0xC1F]) < 0)
  {
    operator delete(STACK[0xC08]);
  }

  if (SLOBYTE(STACK[0xC37]) < 0)
  {
    operator delete(STACK[0xC20]);
  }

  STACK[0xC90] = STACK[0x208];
  if (SLOBYTE(STACK[0xCAF]) < 0)
  {
    operator delete(STACK[0xC98]);
  }

  if (SLOBYTE(STACK[0xC8F]) < 0)
  {
    operator delete(STACK[0xC78]);
  }

  STACK[0xCD8] = STACK[0x210];
  if (SLOBYTE(STACK[0xCF7]) < 0)
  {
    operator delete(STACK[0xCE0]);
  }

  if (SLOBYTE(STACK[0xCD7]) < 0)
  {
    operator delete(STACK[0xCC0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xD20]);
  if (SLOBYTE(STACK[0xD1F]) < 0)
  {
    operator delete(STACK[0xD08]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xD78]);
  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(STACK[0xD60]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xDD0]);
  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(STACK[0xDB8]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xE28]);
  if (SLOBYTE(STACK[0xE27]) < 0)
  {
    operator delete(STACK[0xE10]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xE80]);
  if (SLOBYTE(STACK[0xE7F]) < 0)
  {
    operator delete(STACK[0xE68]);
  }

  STACK[0xED8] = STACK[0x218];
  if (SLOBYTE(STACK[0xEF7]) < 0)
  {
    operator delete(STACK[0xEE0]);
  }

  if (SLOBYTE(STACK[0xED7]) < 0)
  {
    operator delete(STACK[0xEC0]);
  }

  STACK[0xF20] = STACK[0x220];
  if (SLOBYTE(STACK[0xF3F]) < 0)
  {
    operator delete(STACK[0xF28]);
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(STACK[0xF08]);
  }

  STACK[0xF68] = STACK[0x228];
  if (SLOBYTE(STACK[0xF87]) < 0)
  {
    operator delete(STACK[0xF70]);
  }

  if (SLOBYTE(STACK[0xF67]) < 0)
  {
    operator delete(STACK[0xF50]);
  }

  STACK[0xFB0] = STACK[0x230];
  if (SLOBYTE(STACK[0xFCF]) < 0)
  {
    operator delete(STACK[0xFB8]);
  }

  if (SLOBYTE(STACK[0xFAF]) < 0)
  {
    operator delete(STACK[0xF98]);
  }

  STACK[0xFF8] = STACK[0x238];
  if (SLOBYTE(STACK[0x1017]) < 0)
  {
    operator delete(STACK[0x1000]);
  }

  if (SLOBYTE(STACK[0xFF7]) < 0)
  {
    operator delete(STACK[0xFE0]);
  }

  STACK[0x1040] = STACK[0x240];
  if (SLOBYTE(STACK[0x105F]) < 0)
  {
    operator delete(STACK[0x1048]);
  }

  if (SLOBYTE(STACK[0x103F]) < 0)
  {
    operator delete(STACK[0x1028]);
  }

  STACK[0x1088] = STACK[0x248];
  if (SLOBYTE(STACK[0x10A7]) < 0)
  {
    operator delete(STACK[0x1090]);
  }

  if (SLOBYTE(STACK[0x1087]) < 0)
  {
    operator delete(STACK[0x1070]);
  }

  STACK[0x10D0] = STACK[0x250];
  if (SLOBYTE(STACK[0x10EF]) < 0)
  {
    operator delete(STACK[0x10D8]);
  }

  if (SLOBYTE(STACK[0x10CF]) < 0)
  {
    operator delete(STACK[0x10B8]);
  }

  STACK[0x1118] = STACK[0x258];
  if (SLOBYTE(STACK[0x1137]) < 0)
  {
    operator delete(STACK[0x1120]);
  }

  if (SLOBYTE(STACK[0x1117]) < 0)
  {
    operator delete(STACK[0x1100]);
  }

  STACK[0x1160] = STACK[0x260];
  if (SLOBYTE(STACK[0x117F]) < 0)
  {
    operator delete(STACK[0x1168]);
  }

  if (SLOBYTE(STACK[0x115F]) < 0)
  {
    operator delete(STACK[0x1148]);
  }

  STACK[0x11A8] = STACK[0x268];
  if (SLOBYTE(STACK[0x11C7]) < 0)
  {
    operator delete(STACK[0x11B0]);
  }

  if (SLOBYTE(STACK[0x11A7]) < 0)
  {
    operator delete(STACK[0x1190]);
  }

  STACK[0x11F0] = STACK[0x270];
  if (SLOBYTE(STACK[0x120F]) < 0)
  {
    operator delete(STACK[0x11F8]);
  }

  if (SLOBYTE(STACK[0x11EF]) < 0)
  {
    operator delete(STACK[0x11D8]);
  }

  STACK[0x1238] = STACK[0x278];
  if (SLOBYTE(STACK[0x1257]) < 0)
  {
    operator delete(STACK[0x1240]);
  }

  if (SLOBYTE(STACK[0x1237]) < 0)
  {
    operator delete(STACK[0x1220]);
  }

  STACK[0x1280] = STACK[0x280];
  if (v76[3511] < 0)
  {
    operator delete(STACK[0x1288]);
  }

  if (v76[3479] < 0)
  {
    operator delete(STACK[0x1268]);
  }

  STACK[0x12C8] = STACK[0x288];
  if (v76[3583] < 0)
  {
    operator delete(STACK[0x12D0]);
  }

  if (v76[3551] < 0)
  {
    operator delete(STACK[0x12B0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x1310]);
  if (v76[3623] < 0)
  {
    operator delete(STACK[0x12F8]);
  }

  STACK[0x1368] = STACK[0x290];
  if (v76[3743] < 0)
  {
    operator delete(STACK[0x1370]);
  }

  if (v76[3711] < 0)
  {
    operator delete(STACK[0x1350]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x13B0]);
  if (v76[3783] < 0)
  {
    operator delete(STACK[0x1398]);
  }

  STACK[0x1408] = STACK[0x298];
  if (v76[3903] < 0)
  {
    operator delete(STACK[0x1410]);
  }

  if (v76[3871] < 0)
  {
    operator delete(STACK[0x13F0]);
  }

  STACK[0x1450] = STACK[0x2A0];
  if (v76[3975] < 0)
  {
    operator delete(STACK[0x1458]);
  }

  if (v76[3943] < 0)
  {
    operator delete(STACK[0x1438]);
  }

  STACK[0x1498] = STACK[0x2A8];
  if (v76[4047] < 0)
  {
    operator delete(STACK[0x14A0]);
  }

  if (v76[4015] < 0)
  {
    operator delete(STACK[0x1480]);
  }

  STACK[0x14E0] = STACK[0x2B0];
  if (SLOBYTE(STACK[0x14FF]) < 0)
  {
    operator delete(STACK[0x14E8]);
  }

  if (v76[4087] < 0)
  {
    operator delete(STACK[0x14C8]);
  }

  STACK[0x1528] = STACK[0x2B8];
  if (SLOBYTE(STACK[0x1547]) < 0)
  {
    operator delete(STACK[0x1530]);
  }

  if (SLOBYTE(STACK[0x1527]) < 0)
  {
    operator delete(STACK[0x1510]);
  }

  STACK[0x1570] = STACK[0x2C0];
  if (SLOBYTE(STACK[0x158F]) < 0)
  {
    operator delete(STACK[0x1578]);
  }

  if (SLOBYTE(STACK[0x156F]) < 0)
  {
    operator delete(STACK[0x1558]);
  }

  *(v80 - 232) = STACK[0x2C8];
  if (SLOBYTE(STACK[0x15D7]) < 0)
  {
    operator delete(*(v80 - 224));
  }

  if (SLOBYTE(STACK[0x15B7]) < 0)
  {
    operator delete(*(v80 - 256));
  }

  *(v80 - 160) = STACK[0x2D0];
  if (*(v80 - 129) < 0)
  {
    operator delete(*(v80 - 152));
  }

  if (*(v80 - 161) < 0)
  {
    operator delete(*(v80 - 184));
  }

  if (*(v80 - 89) < 0)
  {
    operator delete(*(v80 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t mlcore::MediaTable<long long,long long,long long,long long,long long,long long,long long,long long,std::string,long long,std::string,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,std::string,std::string,std::string,std::string,std::string,long long,long long,std::string,long long,long long,std::string,std::string,long long,long long,long long,int,std::string,std::string,long long,long long,long long,long long,int,int,std::string,long long,std::string,long long,long long,long long,long long,std::string,std::string,std::string,std::string>::MediaTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v63 = MEMORY[0x1EEE9AC00](a1);
  v440 = v67;
  v441 = v68;
  v442 = v69;
  v71 = v70;
  v72 = v63;
  v740 = &unk_1F50D86E0;
  v439 = v66;
  v438 = v65;
  v437 = v64;
  if (*(v64 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v741, *(v64 + 8), *(v64 + 16));
    v64 = v437;
    v65 = v438;
    v66 = v439;
  }

  else
  {
    v741 = *(v64 + 8);
  }

  v74 = (v64 + 36);
  v73 = *(v64 + 36);
  v742 = *(v64 + 32);
  v740 = &unk_1F50D8958;
  v743 = v73;
  v744 = *(v64 + 44);
  v735 = &unk_1F50D86E0;
  if (*(v65 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v736, *(v65 + 8), *(v65 + 16));
    v65 = v438;
    v66 = v439;
  }

  else
  {
    v736 = *(v65 + 8);
  }

  v76 = (v65 + 36);
  v75 = *(v65 + 36);
  v737 = *(v65 + 32);
  v735 = &unk_1F50D8958;
  v738 = v75;
  v739 = *(v65 + 44);
  v730 = &unk_1F50D86E0;
  if (*(v66 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v731, *(v66 + 8), *(v66 + 16));
    v66 = v439;
  }

  else
  {
    v731 = *(v66 + 8);
  }

  v78 = (v66 + 36);
  v77 = *(v66 + 36);
  v732 = *(v66 + 32);
  v730 = &unk_1F50D8958;
  v733 = v77;
  v734 = *(v66 + 44);
  v725 = &unk_1F50D86E0;
  v79 = v442;
  v436 = v76;
  if (*(v442 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v726, *(v442 + 8), *(v442 + 16));
    v79 = v442;
  }

  else
  {
    v726 = *(v442 + 8);
  }

  v81 = (v79 + 36);
  v80 = *(v79 + 36);
  v727 = *(v79 + 32);
  v725 = &unk_1F50D8958;
  v728 = v80;
  v729 = *(v79 + 44);
  v720 = &unk_1F50D86E0;
  v82 = v441;
  if (*(v441 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v721, *(v441 + 8), *(v441 + 16));
    v82 = v441;
  }

  else
  {
    v721 = *(v441 + 8);
  }

  v84 = *(v82 + 36);
  v83 = (v82 + 36);
  v722 = *(v83 - 1);
  v720 = &unk_1F50D8958;
  v723 = v84;
  v434 = v83;
  v724 = *(v83 + 2);
  v715 = &unk_1F50D86E0;
  v85 = v440;
  v435 = v81;
  if (*(v440 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v716, *(v440 + 8), *(v440 + 16));
    v85 = v440;
  }

  else
  {
    v716 = *(v440 + 8);
  }

  v86 = a9;
  v88 = *(v85 + 36);
  v87 = (v85 + 36);
  v717 = *(v87 - 1);
  v715 = &unk_1F50D8958;
  v718 = v88;
  v433 = v87;
  v719 = *(v87 + 2);
  v710 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v711, *(a9 + 8), *(a9 + 16));
    v86 = a9;
  }

  else
  {
    v711 = *(a9 + 8);
  }

  v89 = a10;
  v91 = *(v86 + 36);
  v90 = (v86 + 36);
  v712 = *(v90 - 1);
  v710 = &unk_1F50D8958;
  v713 = v91;
  v432 = v90;
  v714 = *(v90 + 2);
  v705 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v706, *(a10 + 8), *(a10 + 16));
    v89 = a10;
  }

  else
  {
    v706 = *(a10 + 8);
  }

  v93 = *(v89 + 36);
  v92 = (v89 + 36);
  v707 = *(v92 - 1);
  v705 = &unk_1F50D8958;
  v708 = v93;
  v431 = v92;
  v709 = *(v92 + 2);
  v700 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v701, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v701 = *(a11 + 8);
  }

  v702 = *(a11 + 32);
  v700 = &unk_1F50D89B8;
  v703 = *(a11 + 36);
  if (*(a11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v704, *(a11 + 40), *(a11 + 48));
  }

  else
  {
    v704 = *(a11 + 40);
  }

  v94 = a12;
  v695 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v696, *(a12 + 8), *(a12 + 16));
    v94 = a12;
  }

  else
  {
    v696 = *(a12 + 8);
  }

  v96 = *(v94 + 36);
  v95 = (v94 + 36);
  v697 = *(v95 - 1);
  v695 = &unk_1F50D8958;
  v698 = v96;
  v430 = v95;
  v699 = *(v95 + 2);
  v690 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v691, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v691 = *(a13 + 8);
  }

  v692 = *(a13 + 32);
  v690 = &unk_1F50D89B8;
  v693 = *(a13 + 36);
  if (*(a13 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v694, *(a13 + 40), *(a13 + 48));
  }

  else
  {
    v694 = *(a13 + 40);
  }

  v97 = a14;
  v685 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v686, *(a14 + 8), *(a14 + 16));
    v97 = a14;
  }

  else
  {
    v686 = *(a14 + 8);
  }

  v98 = a15;
  v100 = *(v97 + 36);
  v99 = (v97 + 36);
  v687 = *(v99 - 1);
  v685 = &unk_1F50D8958;
  v688 = v100;
  v429 = v99;
  v689 = *(v99 + 2);
  v680 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v681, *(a15 + 8), *(a15 + 16));
    v98 = a15;
  }

  else
  {
    v681 = *(a15 + 8);
  }

  v101 = a16;
  v103 = *(v98 + 36);
  v102 = (v98 + 36);
  v682 = *(v102 - 1);
  v680 = &unk_1F50D8958;
  v683 = v103;
  v428 = v102;
  v684 = *(v102 + 2);
  v675 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v676, *(a16 + 8), *(a16 + 16));
    v101 = a16;
  }

  else
  {
    v676 = *(a16 + 8);
  }

  v104 = a17;
  v106 = *(v101 + 36);
  v105 = (v101 + 36);
  v677 = *(v105 - 1);
  v675 = &unk_1F50D8958;
  v678 = v106;
  v427 = v105;
  v679 = *(v105 + 2);
  v670 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v671, *(a17 + 8), *(a17 + 16));
    v104 = a17;
  }

  else
  {
    v671 = *(a17 + 8);
  }

  v107 = a18;
  v109 = *(v104 + 36);
  v108 = (v104 + 36);
  v672 = *(v108 - 1);
  v670 = &unk_1F50D8958;
  v673 = v109;
  v426 = v108;
  v674 = *(v108 + 2);
  v665 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v666, *(a18 + 8), *(a18 + 16));
    v107 = a18;
  }

  else
  {
    v666 = *(a18 + 8);
  }

  v110 = a19;
  v112 = *(v107 + 36);
  v111 = (v107 + 36);
  v667 = *(v111 - 1);
  v665 = &unk_1F50D8958;
  v668 = v112;
  v425 = v111;
  v669 = *(v111 + 2);
  v660 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v661, *(a19 + 8), *(a19 + 16));
    v110 = a19;
  }

  else
  {
    v661 = *(a19 + 8);
  }

  v113 = a20;
  v115 = *(v110 + 36);
  v114 = v110 + 36;
  v662 = *(v114 - 4);
  v660 = &unk_1F50D8958;
  v663 = v115;
  v424 = v114;
  v664 = *(v114 + 8);
  v655 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v656, *(a20 + 8), *(a20 + 16));
    v113 = a20;
  }

  else
  {
    v656 = *(a20 + 8);
  }

  v116 = a21;
  v118 = *(v113 + 36);
  v117 = v113 + 36;
  v657 = *(v117 - 4);
  v655 = &unk_1F50D8958;
  v658 = v118;
  v423 = v117;
  v659 = *(v117 + 8);
  v650 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v651, *(a21 + 8), *(a21 + 16));
    v116 = a21;
  }

  else
  {
    v651 = *(a21 + 8);
  }

  v119 = a22;
  v121 = *(v116 + 36);
  v120 = v116 + 36;
  v652 = *(v120 - 4);
  v650 = &unk_1F50D8958;
  v653 = v121;
  v422 = v120;
  v654 = *(v120 + 8);
  v645 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v646, *(a22 + 8), *(a22 + 16));
    v119 = a22;
  }

  else
  {
    v646 = *(a22 + 8);
  }

  v122 = a23;
  v124 = *(v119 + 36);
  v123 = v119 + 36;
  v647 = *(v123 - 4);
  v645 = &unk_1F50D8958;
  v648 = v124;
  v421 = v123;
  v649 = *(v123 + 8);
  v640 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v641, *(a23 + 8), *(a23 + 16));
    v122 = a23;
  }

  else
  {
    v641 = *(a23 + 8);
  }

  v125 = a24;
  v127 = *(v122 + 36);
  v126 = v122 + 36;
  v642 = *(v126 - 4);
  v640 = &unk_1F50D8958;
  v643 = v127;
  v420 = v126;
  v644 = *(v126 + 8);
  v635 = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v636, *(a24 + 8), *(a24 + 16));
    v125 = a24;
  }

  else
  {
    v636 = *(a24 + 8);
  }

  v128 = a25;
  v130 = *(v125 + 36);
  v129 = v125 + 36;
  v637 = *(v129 - 4);
  v635 = &unk_1F50D8958;
  v638 = v130;
  v419 = v129;
  v639 = *(v129 + 8);
  v630 = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v631, *(a25 + 8), *(a25 + 16));
    v128 = a25;
  }

  else
  {
    v631 = *(a25 + 8);
  }

  v131 = a26;
  v133 = *(v128 + 36);
  v132 = v128 + 36;
  v632 = *(v132 - 4);
  v630 = &unk_1F50D8958;
  v633 = v133;
  v418 = v132;
  v634 = *(v132 + 8);
  v625 = &unk_1F50D86E0;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v626, *(a26 + 8), *(a26 + 16));
    v131 = a26;
  }

  else
  {
    v626 = *(a26 + 8);
  }

  v134 = a27;
  v136 = *(v131 + 36);
  v135 = v131 + 36;
  v627 = *(v135 - 4);
  v625 = &unk_1F50D8958;
  v628 = v136;
  v417 = v135;
  v629 = *(v135 + 8);
  v620 = &unk_1F50D86E0;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v621, *(a27 + 8), *(a27 + 16));
    v134 = a27;
  }

  else
  {
    v621 = *(a27 + 8);
  }

  v137 = a28;
  v139 = *(v134 + 36);
  v138 = v134 + 36;
  v622 = *(v138 - 4);
  v620 = &unk_1F50D8958;
  v623 = v139;
  v416 = v138;
  v624 = *(v138 + 8);
  v615 = &unk_1F50D86E0;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v616, *(a28 + 8), *(a28 + 16));
    v137 = a28;
  }

  else
  {
    v616 = *(a28 + 8);
  }

  v141 = *(v137 + 36);
  v140 = v137 + 36;
  v617 = *(v140 - 4);
  v615 = &unk_1F50D8958;
  v618 = v141;
  v415 = v140;
  v619 = *(v140 + 8);
  v610 = &unk_1F50D86E0;
  if (*(a29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v611, *(a29 + 8), *(a29 + 16));
  }

  else
  {
    v611 = *(a29 + 8);
  }

  v612 = *(a29 + 32);
  v610 = &unk_1F50D89B8;
  v613 = *(a29 + 36);
  if (*(a29 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v614, *(a29 + 40), *(a29 + 48));
  }

  else
  {
    v614 = *(a29 + 40);
  }

  v605 = &unk_1F50D86E0;
  if (*(a30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v606, *(a30 + 8), *(a30 + 16));
  }

  else
  {
    v606 = *(a30 + 8);
  }

  v607 = *(a30 + 32);
  v605 = &unk_1F50D89B8;
  v608 = *(a30 + 36);
  if (*(a30 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v609, *(a30 + 40), *(a30 + 48));
  }

  else
  {
    v609 = *(a30 + 40);
  }

  v600 = &unk_1F50D86E0;
  if (*(a31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v601, *(a31 + 8), *(a31 + 16));
  }

  else
  {
    v601 = *(a31 + 8);
  }

  v602 = *(a31 + 32);
  v600 = &unk_1F50D89B8;
  v603 = *(a31 + 36);
  if (*(a31 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v604, *(a31 + 40), *(a31 + 48));
  }

  else
  {
    v604 = *(a31 + 40);
  }

  v595 = &unk_1F50D86E0;
  if (*(a32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v596, *(a32 + 8), *(a32 + 16));
  }

  else
  {
    v596 = *(a32 + 8);
  }

  v597 = *(a32 + 32);
  v595 = &unk_1F50D89B8;
  v598 = *(a32 + 36);
  if (*(a32 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v599, *(a32 + 40), *(a32 + 48));
  }

  else
  {
    v599 = *(a32 + 40);
  }

  v590 = &unk_1F50D86E0;
  if (*(a33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v591, *(a33 + 8), *(a33 + 16));
  }

  else
  {
    v591 = *(a33 + 8);
  }

  v592 = *(a33 + 32);
  v590 = &unk_1F50D89B8;
  v593 = *(a33 + 36);
  if (*(a33 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v594, *(a33 + 40), *(a33 + 48));
  }

  else
  {
    v594 = *(a33 + 40);
  }

  v142 = a34;
  v585 = &unk_1F50D86E0;
  if (*(a34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v586, *(a34 + 8), *(a34 + 16));
    v142 = a34;
  }

  else
  {
    v586 = *(a34 + 8);
  }

  v143 = a35;
  v145 = *(v142 + 36);
  v144 = v142 + 36;
  v587 = *(v144 - 4);
  v585 = &unk_1F50D8958;
  v588 = v145;
  v589 = *(v144 + 8);
  v580 = &unk_1F50D86E0;
  v414 = v144;
  if (*(a35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v581, *(a35 + 8), *(a35 + 16));
    v143 = a35;
  }

  else
  {
    v581 = *(a35 + 8);
  }

  v146 = a36;
  v148 = *(v143 + 36);
  v147 = v143 + 36;
  v582 = *(v147 - 4);
  v580 = &unk_1F50D8958;
  v583 = v148;
  v413 = v147;
  v584 = *(v147 + 8);
  v575 = &unk_1F50D86E0;
  if (*(a36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v576, *(a36 + 8), *(a36 + 16));
    v146 = a36;
  }

  else
  {
    v576 = *(a36 + 8);
  }

  v577 = *(v146 + 32);
  v575 = &unk_1F50D89B8;
  v578 = *(v146 + 36);
  if (*(v146 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v579, *(v146 + 40), *(v146 + 48));
  }

  else
  {
    v579 = *(v146 + 40);
  }

  v149 = a37;
  v570 = &unk_1F50D86E0;
  if (*(a37 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v571, *(a37 + 8), *(a37 + 16));
    v149 = a37;
  }

  else
  {
    v571 = *(a37 + 8);
  }

  v150 = a38;
  v152 = *(v149 + 36);
  v151 = v149 + 36;
  v572 = *(v151 - 4);
  v570 = &unk_1F50D8958;
  v573 = v152;
  v412 = v151;
  v574 = *(v151 + 8);
  v565 = &unk_1F50D86E0;
  if (*(a38 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v566, *(a38 + 8), *(a38 + 16));
    v150 = a38;
  }

  else
  {
    v566 = *(a38 + 8);
  }

  v153 = a39;
  v155 = v150 + 36;
  v154 = *(v150 + 36);
  v567 = *(v150 + 32);
  v565 = &unk_1F50D8958;
  v568 = v154;
  v569 = *(v150 + 44);
  v560 = &unk_1F50D86E0;
  if (*(a39 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v561, *(a39 + 8), *(a39 + 16));
    v153 = a39;
  }

  else
  {
    v561 = *(a39 + 8);
  }

  v562 = *(v153 + 32);
  v560 = &unk_1F50D89B8;
  v563 = *(v153 + 36);
  if (*(v153 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v564, *(v153 + 40), *(v153 + 48));
  }

  else
  {
    v564 = *(v153 + 40);
  }

  v156 = a40;
  v555 = &unk_1F50D86E0;
  if (*(a40 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v556, *(a40 + 8), *(a40 + 16));
    v156 = a40;
  }

  else
  {
    v556 = *(a40 + 8);
  }

  v557 = *(v156 + 32);
  v555 = &unk_1F50D89B8;
  v558 = *(v156 + 36);
  if (*(v156 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v559, *(v156 + 40), *(v156 + 48));
  }

  else
  {
    v559 = *(v156 + 40);
  }

  v157 = a41;
  v550 = &unk_1F50D86E0;
  if (*(a41 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v551, *(a41 + 8), *(a41 + 16));
    v157 = a41;
  }

  else
  {
    v551 = *(a41 + 8);
  }

  v158 = a42;
  v160 = v157 + 36;
  v159 = *(v157 + 36);
  v552 = *(v157 + 32);
  v550 = &unk_1F50D8958;
  v553 = v159;
  v554 = *(v157 + 44);
  v545 = &unk_1F50D86E0;
  if (*(a42 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v546, *(a42 + 8), *(a42 + 16));
    v158 = a42;
  }

  else
  {
    v546 = *(a42 + 8);
  }

  v161 = a43;
  v163 = v158 + 36;
  v162 = *(v158 + 36);
  v547 = *(v158 + 32);
  v545 = &unk_1F50D8958;
  v548 = v162;
  v549 = *(v158 + 44);
  v540 = &unk_1F50D86E0;
  v411 = v155;
  if (*(a43 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v541, *(a43 + 8), *(a43 + 16));
    v161 = a43;
  }

  else
  {
    v541 = *(a43 + 8);
  }

  v165 = v161 + 36;
  v164 = *(v161 + 36);
  v542 = *(v161 + 32);
  v540 = &unk_1F50D8958;
  v543 = v164;
  v544 = *(v161 + 44);
  v536 = &unk_1F50D86E0;
  if (*(a44 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v537, *(a44 + 8), *(a44 + 16));
  }

  else
  {
    v537 = *(a44 + 8);
  }

  v166 = a45;
  v538 = *(a44 + 32);
  v536 = &unk_1F50D8978;
  v539 = *(a44 + 36);
  v531 = &unk_1F50D86E0;
  if (*(a45 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v532, *(a45 + 8), *(a45 + 16));
    v166 = a45;
  }

  else
  {
    v532 = *(a45 + 8);
  }

  v533 = *(v166 + 32);
  v531 = &unk_1F50D89B8;
  v534 = *(v166 + 36);
  if (*(v166 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v535, *(v166 + 40), *(v166 + 48));
  }

  else
  {
    v535 = *(v166 + 40);
  }

  v167 = a46;
  v526 = &unk_1F50D86E0;
  if (*(a46 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v527, *(a46 + 8), *(a46 + 16));
    v167 = a46;
  }

  else
  {
    v527 = *(a46 + 8);
  }

  v528 = *(v167 + 32);
  v526 = &unk_1F50D89B8;
  v529 = *(v167 + 36);
  if (*(v167 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v530, *(v167 + 40), *(v167 + 48));
  }

  else
  {
    v530 = *(v167 + 40);
  }

  v521 = &unk_1F50D86E0;
  v410 = v163;
  if (*(a47 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v522, *(a47 + 8), *(a47 + 16));
  }

  else
  {
    v522 = *(a47 + 8);
  }

  v168 = a48;
  v169 = *(a47 + 36);
  v523 = *(a47 + 32);
  v521 = &unk_1F50D8958;
  v524 = v169;
  v525 = *(a47 + 44);
  v516 = &unk_1F50D86E0;
  v409 = v165;
  if (*(a48 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v517, *(a48 + 8), *(a48 + 16));
    v168 = a48;
  }

  else
  {
    v517 = *(a48 + 8);
  }

  v170 = a49;
  v172 = v168 + 36;
  v171 = *(v168 + 36);
  v518 = *(v168 + 32);
  v516 = &unk_1F50D8958;
  v519 = v171;
  v520 = *(v168 + 44);
  v511 = &unk_1F50D86E0;
  if (*(a49 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v512, *(a49 + 8), *(a49 + 16));
    v170 = a49;
  }

  else
  {
    v512 = *(a49 + 8);
  }

  v173 = a50;
  v175 = v170 + 36;
  v174 = *(v170 + 36);
  v513 = *(v170 + 32);
  v511 = &unk_1F50D8958;
  v514 = v174;
  v515 = *(v170 + 44);
  v506 = &unk_1F50D86E0;
  v408 = v172;
  if (*(a50 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v507, *(a50 + 8), *(a50 + 16));
    v173 = a50;
  }

  else
  {
    v507 = *(a50 + 8);
  }

  v176 = a51;
  v178 = v173 + 36;
  v177 = *(v173 + 36);
  v508 = *(v173 + 32);
  v506 = &unk_1F50D8958;
  v509 = v177;
  v510 = *(v173 + 44);
  v502 = &unk_1F50D86E0;
  if (*(a51 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v503, *(a51 + 8), *(a51 + 16));
    v176 = a51;
  }

  else
  {
    v503 = *(a51 + 8);
  }

  v504 = *(v176 + 32);
  v502 = &unk_1F50D8978;
  v505 = *(v176 + 36);
  v498 = &unk_1F50D86E0;
  if (*(a52 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v499, *(a52 + 8), *(a52 + 16));
  }

  else
  {
    v499 = *(a52 + 8);
  }

  v179 = a53;
  v500 = *(a52 + 32);
  v498 = &unk_1F50D8978;
  v501 = *(a52 + 36);
  v493 = &unk_1F50D86E0;
  if (*(a53 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v494, *(a53 + 8), *(a53 + 16));
    v179 = a53;
  }

  else
  {
    v494 = *(a53 + 8);
  }

  v495 = *(v179 + 32);
  v493 = &unk_1F50D89B8;
  v496 = *(v179 + 36);
  if (*(v179 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v497, *(v179 + 40), *(v179 + 48));
  }

  else
  {
    v497 = *(v179 + 40);
  }

  v488 = &unk_1F50D86E0;
  if (*(a54 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v489, *(a54 + 8), *(a54 + 16));
  }

  else
  {
    v489 = *(a54 + 8);
  }

  v180 = *(a54 + 36);
  v490 = *(a54 + 32);
  v488 = &unk_1F50D8958;
  v491 = v180;
  v492 = *(a54 + 44);
  v483 = &unk_1F50D86E0;
  if (*(a55 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v484, *(a55 + 8), *(a55 + 16));
  }

  else
  {
    v484 = *(a55 + 8);
  }

  v485 = *(a55 + 32);
  v483 = &unk_1F50D89B8;
  v486 = *(a55 + 36);
  if (*(a55 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v487, *(a55 + 40), *(a55 + 48));
  }

  else
  {
    v487 = *(a55 + 40);
  }

  v478 = &unk_1F50D86E0;
  if (*(a56 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v479, *(a56 + 8), *(a56 + 16));
  }

  else
  {
    v479 = *(a56 + 8);
  }

  v181 = a57;
  v182 = *(a56 + 36);
  v480 = *(a56 + 32);
  v478 = &unk_1F50D8958;
  v481 = v182;
  v482 = *(a56 + 44);
  v473 = &unk_1F50D86E0;
  v407 = v178;
  if (*(a57 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v474, *(a57 + 8), *(a57 + 16));
    v181 = a57;
  }

  else
  {
    v474 = *(a57 + 8);
  }

  v184 = v181 + 36;
  v183 = *(v181 + 36);
  v475 = *(v181 + 32);
  v473 = &unk_1F50D8958;
  v476 = v183;
  v477 = *(v181 + 44);
  v468 = &unk_1F50D86E0;
  if (*(a58 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v469, *(a58 + 8), *(a58 + 16));
  }

  else
  {
    v469 = *(a58 + 8);
  }

  v185 = a59;
  v186 = *(a58 + 36);
  v470 = *(a58 + 32);
  v468 = &unk_1F50D8958;
  v471 = v186;
  v472 = *(a58 + 44);
  v463 = &unk_1F50D86E0;
  if (*(a59 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a59 + 8), *(a59 + 16));
    v185 = a59;
  }

  else
  {
    __p = *(a59 + 8);
  }

  v188 = *(v185 + 36);
  v187 = v185 + 36;
  v465 = *(v187 - 4);
  v463 = &unk_1F50D8958;
  v466 = v188;
  v406 = v187;
  v467 = *(v187 + 8);
  v458 = &unk_1F50D86E0;
  if (*(a60 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v459, *(a60 + 8), *(a60 + 16));
  }

  else
  {
    v459 = *(a60 + 8);
  }

  v460 = *(a60 + 32);
  v458 = &unk_1F50D89B8;
  v461 = *(a60 + 36);
  if (*(a60 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v462, *(a60 + 40), *(a60 + 48));
  }

  else
  {
    v462 = *(a60 + 40);
  }

  v453 = &unk_1F50D86E0;
  if (*(a61 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v454, *(a61 + 8), *(a61 + 16));
  }

  else
  {
    v454 = *(a61 + 8);
  }

  v455 = *(a61 + 32);
  v453 = &unk_1F50D89B8;
  v456 = *(a61 + 36);
  if (*(a61 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v457, *(a61 + 40), *(a61 + 48));
  }

  else
  {
    v457 = *(a61 + 40);
  }

  v448 = &unk_1F50D86E0;
  if (*(a62 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v449, *(a62 + 8), *(a62 + 16));
  }

  else
  {
    v449 = *(a62 + 8);
  }

  v450 = *(a62 + 32);
  v448 = &unk_1F50D89B8;
  v451 = *(a62 + 36);
  if (*(a62 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v452, *(a62 + 40), *(a62 + 48));
  }

  else
  {
    v452 = *(a62 + 40);
  }

  v443 = &unk_1F50D86E0;
  if (*(a63 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v444, *(a63 + 8), *(a63 + 16));
  }

  else
  {
    v444 = *(a63 + 8);
  }

  v445 = *(a63 + 32);
  v443 = &unk_1F50D89B8;
  v446 = *(a63 + 36);
  if (*(a63 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v447, *(a63 + 40), *(a63 + 48));
  }

  else
  {
    v447 = *(a63 + 40);
  }

  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long,long long,long long,std::string,long long,std::string,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,std::string,std::string,std::string,std::string,std::string,long long,long long,std::string,long long,long long,std::string,std::string,long long,long long,long long,int,std::string,std::string,long long,long long,long long,long long,int,int,std::string,long long,std::string,long long,long long,long long,long long,std::string,std::string,std::string,std::string>::DatabaseTable(v72, v71, &v740, &v735, &v730, &v725, &v720, &v715, &v710, &v705, &v700, &v695, &v690, &v685, &v680, &v675, &v670, &v665, &v660, &v655, &v650, &v645, &v640, &v635, &v630, &v625, &v620, &v615, &v610, &v605, &v600, &v595, &v590, &v585, &v580, &v575, &v570, &v565, &v560, &v555, &v550, &v545, &v540, &v536, &v531, &v526, &v521, &v516, &v511, &v506, &v502, &v498, &v493, &v488, &v483, &v478, &v473, &v468, &v463, &v458, &v453, &v448, &v443);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v443);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v448);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v453);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v458);
  v463 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v468 = &unk_1F50D86E0;
  if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v469.__r_.__value_.__l.__data_);
  }

  v473 = &unk_1F50D86E0;
  if (SHIBYTE(v474.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v474.__r_.__value_.__l.__data_);
  }

  v478 = &unk_1F50D86E0;
  if (SHIBYTE(v479.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v479.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v483);
  v488 = &unk_1F50D86E0;
  if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v489.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v493);
  v498 = &unk_1F50D86E0;
  if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v499.__r_.__value_.__l.__data_);
  }

  v502 = &unk_1F50D86E0;
  if (SHIBYTE(v503.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v503.__r_.__value_.__l.__data_);
  }

  v506 = &unk_1F50D86E0;
  if (SHIBYTE(v507.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v507.__r_.__value_.__l.__data_);
  }

  v511 = &unk_1F50D86E0;
  if (SHIBYTE(v512.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v512.__r_.__value_.__l.__data_);
  }

  v516 = &unk_1F50D86E0;
  if (SHIBYTE(v517.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v517.__r_.__value_.__l.__data_);
  }

  v521 = &unk_1F50D86E0;
  if (SHIBYTE(v522.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v522.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v526);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v531);
  v536 = &unk_1F50D86E0;
  if (SHIBYTE(v537.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v537.__r_.__value_.__l.__data_);
  }

  v540 = &unk_1F50D86E0;
  if (SHIBYTE(v541.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v541.__r_.__value_.__l.__data_);
  }

  v545 = &unk_1F50D86E0;
  if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v546.__r_.__value_.__l.__data_);
  }

  v550 = &unk_1F50D86E0;
  if (SHIBYTE(v551.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v551.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v555);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v560);
  v565 = &unk_1F50D86E0;
  if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v566.__r_.__value_.__l.__data_);
  }

  v570 = &unk_1F50D86E0;
  if (SHIBYTE(v571.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v571.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v575);
  v580 = &unk_1F50D86E0;
  if (SHIBYTE(v581.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v581.__r_.__value_.__l.__data_);
  }

  v585 = &unk_1F50D86E0;
  if (SHIBYTE(v586.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v586.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v590);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v595);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v600);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v605);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v610);
  v615 = &unk_1F50D86E0;
  if (SHIBYTE(v616.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v616.__r_.__value_.__l.__data_);
  }

  v620 = &unk_1F50D86E0;
  if (SHIBYTE(v621.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v621.__r_.__value_.__l.__data_);
  }

  v625 = &unk_1F50D86E0;
  if (SHIBYTE(v626.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v626.__r_.__value_.__l.__data_);
  }

  v630 = &unk_1F50D86E0;
  if (SHIBYTE(v631.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v631.__r_.__value_.__l.__data_);
  }

  v635 = &unk_1F50D86E0;
  if (SHIBYTE(v636.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v636.__r_.__value_.__l.__data_);
  }

  v640 = &unk_1F50D86E0;
  if (SHIBYTE(v641.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v641.__r_.__value_.__l.__data_);
  }

  v645 = &unk_1F50D86E0;
  if (SHIBYTE(v646.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v646.__r_.__value_.__l.__data_);
  }

  v650 = &unk_1F50D86E0;
  if (SHIBYTE(v651.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v651.__r_.__value_.__l.__data_);
  }

  v655 = &unk_1F50D86E0;
  if (SHIBYTE(v656.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v656.__r_.__value_.__l.__data_);
  }

  v660 = &unk_1F50D86E0;
  if (SHIBYTE(v661.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v661.__r_.__value_.__l.__data_);
  }

  v665 = &unk_1F50D86E0;
  if (SHIBYTE(v666.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v666.__r_.__value_.__l.__data_);
  }

  v670 = &unk_1F50D86E0;
  if (SHIBYTE(v671.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v671.__r_.__value_.__l.__data_);
  }

  v675 = &unk_1F50D86E0;
  if (SHIBYTE(v676.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v676.__r_.__value_.__l.__data_);
  }

  v680 = &unk_1F50D86E0;
  if (SHIBYTE(v681.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v681.__r_.__value_.__l.__data_);
  }

  v685 = &unk_1F50D86E0;
  if (SHIBYTE(v686.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v686.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v690);
  v695 = &unk_1F50D86E0;
  if (SHIBYTE(v696.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v696.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v700);
  v705 = &unk_1F50D86E0;
  if (SHIBYTE(v706.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v706.__r_.__value_.__l.__data_);
  }

  v710 = &unk_1F50D86E0;
  if (SHIBYTE(v711.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v711.__r_.__value_.__l.__data_);
  }

  v715 = &unk_1F50D86E0;
  if (SHIBYTE(v716.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v716.__r_.__value_.__l.__data_);
  }

  v720 = &unk_1F50D86E0;
  if (SHIBYTE(v721.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v721.__r_.__value_.__l.__data_);
  }

  v725 = &unk_1F50D86E0;
  if (SHIBYTE(v726.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v726.__r_.__value_.__l.__data_);
  }

  v730 = &unk_1F50D86E0;
  if (SHIBYTE(v731.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v731.__r_.__value_.__l.__data_);
  }

  v735 = &unk_1F50D86E0;
  if (SHIBYTE(v736.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v736.__r_.__value_.__l.__data_);
  }

  v740 = &unk_1F50D86E0;
  if (SHIBYTE(v741.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v741.__r_.__value_.__l.__data_);
  }

  *v72 = &unk_1F50DD7F0;
  *(v72 + 3296) = &unk_1F50D86E0;
  v189 = v437;
  if (*(v437 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 3304), *(v437 + 8), *(v437 + 16));
    v189 = v437;
  }

  else
  {
    v190 = *(v437 + 8);
    *(v72 + 3320) = *(v437 + 24);
    *(v72 + 3304) = v190;
  }

  *(v72 + 3328) = *(v189 + 32);
  *(v72 + 3296) = &unk_1F50D8958;
  v191 = *v74;
  *(v72 + 3340) = *(v74 + 2);
  *(v72 + 3332) = v191;
  *(v72 + 3296) = &unk_1F50D7AC0;
  *(v72 + 3344) = &unk_1F50D86E0;
  v192 = v438;
  if (*(v438 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 3352), *(v438 + 8), *(v438 + 16));
    v192 = v438;
  }

  else
  {
    v193 = *(v438 + 8);
    *(v72 + 3368) = *(v438 + 24);
    *(v72 + 3352) = v193;
  }

  *(v72 + 3376) = *(v192 + 32);
  *(v72 + 3344) = &unk_1F50D8958;
  v194 = *v436;
  *(v72 + 3388) = *(v436 + 2);
  *(v72 + 3380) = v194;
  *(v72 + 3344) = &unk_1F50D7AC0;
  *(v72 + 3392) = &unk_1F50D86E0;
  v195 = (v72 + 3400);
  v196 = v439;
  if (*(v439 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v195, *(v439 + 8), *(v439 + 16));
    v196 = v439;
  }

  else
  {
    v197 = *(v439 + 8);
    *(v72 + 3416) = *(v439 + 24);
    *&v195->__r_.__value_.__l.__data_ = v197;
  }

  *(v72 + 3424) = *(v196 + 32);
  *(v72 + 3392) = &unk_1F50D8958;
  v198 = *v78;
  *(v72 + 3436) = *(v78 + 2);
  *(v72 + 3428) = v198;
  *(v72 + 3392) = &unk_1F50D7AC0;
  *(v72 + 3440) = &unk_1F50D86E0;
  v199 = (v72 + 3448);
  v200 = v442;
  if (*(v442 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v199, *(v442 + 8), *(v442 + 16));
    v200 = v442;
  }

  else
  {
    v201 = *(v442 + 8);
    *(v72 + 3464) = *(v442 + 24);
    *&v199->__r_.__value_.__l.__data_ = v201;
  }

  *(v72 + 3472) = *(v200 + 32);
  *(v72 + 3440) = &unk_1F50D8958;
  v202 = *v435;
  *(v72 + 3484) = *(v435 + 2);
  *(v72 + 3476) = v202;
  *(v72 + 3440) = &unk_1F50D7AC0;
  *(v72 + 3488) = &unk_1F50D86E0;
  v203 = (v72 + 3496);
  v204 = v441;
  if (*(v441 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v203, *(v441 + 8), *(v441 + 16));
    v204 = v441;
  }

  else
  {
    v205 = *(v441 + 8);
    *(v72 + 3512) = *(v441 + 24);
    *&v203->__r_.__value_.__l.__data_ = v205;
  }

  *(v72 + 3520) = *(v204 + 32);
  *(v72 + 3488) = &unk_1F50D8958;
  v206 = *v434;
  *(v72 + 3532) = *(v434 + 2);
  *(v72 + 3524) = v206;
  *(v72 + 3488) = &unk_1F50D7AC0;
  *(v72 + 3536) = &unk_1F50D86E0;
  v207 = (v72 + 3544);
  v208 = v440;
  if (*(v440 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v207, *(v440 + 8), *(v440 + 16));
    v208 = v440;
  }

  else
  {
    v209 = *(v440 + 8);
    *(v72 + 3560) = *(v440 + 24);
    *&v207->__r_.__value_.__l.__data_ = v209;
  }

  *(v72 + 3568) = *(v208 + 32);
  *(v72 + 3536) = &unk_1F50D8958;
  v210 = *v433;
  *(v72 + 3580) = *(v433 + 2);
  *(v72 + 3572) = v210;
  *(v72 + 3536) = &unk_1F50D7AC0;
  *(v72 + 3584) = &unk_1F50D86E0;
  v211 = (v72 + 3592);
  v212 = a9;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v211, *(a9 + 8), *(a9 + 16));
    v212 = a9;
  }

  else
  {
    v213 = *(a9 + 8);
    *(v72 + 3608) = *(a9 + 24);
    *&v211->__r_.__value_.__l.__data_ = v213;
  }

  *(v72 + 3616) = *(v212 + 32);
  *(v72 + 3584) = &unk_1F50D8958;
  v214 = *v432;
  *(v72 + 3628) = *(v432 + 2);
  *(v72 + 3620) = v214;
  *(v72 + 3584) = &unk_1F50D7AC0;
  *(v72 + 3632) = &unk_1F50D86E0;
  v215 = (v72 + 3640);
  v216 = a10;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v215, *(a10 + 8), *(a10 + 16));
    v216 = a10;
  }

  else
  {
    v217 = *(a10 + 8);
    *(v72 + 3656) = *(a10 + 24);
    *&v215->__r_.__value_.__l.__data_ = v217;
  }

  *(v72 + 3664) = *(v216 + 32);
  *(v72 + 3632) = &unk_1F50D8958;
  v218 = *v431;
  *(v72 + 3676) = *(v431 + 2);
  *(v72 + 3668) = v218;
  *(v72 + 3632) = &unk_1F50D7AC0;
  *(v72 + 3680) = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 3688), *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v219 = *(a11 + 8);
    *(v72 + 3704) = *(a11 + 24);
    *(v72 + 3688) = v219;
  }

  *(v72 + 3712) = *(a11 + 32);
  *(v72 + 3680) = &unk_1F50D89B8;
  *(v72 + 3716) = *(a11 + 36);
  v220 = (v72 + 3720);
  if (*(a11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v220, *(a11 + 40), *(a11 + 48));
  }

  else
  {
    v221 = *(a11 + 40);
    *(v72 + 3736) = *(a11 + 56);
    *&v220->__r_.__value_.__l.__data_ = v221;
  }

  *(v72 + 3680) = &unk_1F50D7B20;
  *(v72 + 3744) = &unk_1F50D86E0;
  v222 = a12;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 3752), *(a12 + 8), *(a12 + 16));
    v222 = a12;
  }

  else
  {
    v223 = *(a12 + 8);
    *(v72 + 3768) = *(a12 + 24);
    *(v72 + 3752) = v223;
  }

  *(v72 + 3776) = *(v222 + 32);
  *(v72 + 3744) = &unk_1F50D8958;
  v224 = *v430;
  *(v72 + 3788) = *(v430 + 2);
  *(v72 + 3780) = v224;
  *(v72 + 3744) = &unk_1F50D7AC0;
  *(v72 + 3792) = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 3800), *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v225 = *(a13 + 8);
    *(v72 + 3816) = *(a13 + 24);
    *(v72 + 3800) = v225;
  }

  *(v72 + 3824) = *(a13 + 32);
  *(v72 + 3792) = &unk_1F50D89B8;
  *(v72 + 3828) = *(a13 + 36);
  v226 = (v72 + 3832);
  v227 = a14;
  if (*(a13 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v226, *(a13 + 40), *(a13 + 48));
    v227 = a14;
  }

  else
  {
    v228 = *(a13 + 40);
    *(v72 + 3848) = *(a13 + 56);
    *&v226->__r_.__value_.__l.__data_ = v228;
  }

  *(v72 + 3792) = &unk_1F50D7B20;
  *(v72 + 3856) = &unk_1F50D86E0;
  if (*(v227 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 3864), *(v227 + 8), *(v227 + 16));
    v227 = a14;
  }

  else
  {
    v229 = *(v227 + 8);
    *(v72 + 3880) = *(v227 + 24);
    *(v72 + 3864) = v229;
  }

  *(v72 + 3888) = *(v227 + 32);
  *(v72 + 3856) = &unk_1F50D8958;
  v230 = *v429;
  *(v72 + 3900) = *(v429 + 2);
  *(v72 + 3892) = v230;
  *(v72 + 3856) = &unk_1F50D7AC0;
  *(v72 + 3904) = &unk_1F50D86E0;
  v231 = (v72 + 3912);
  v232 = a15;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v231, *(a15 + 8), *(a15 + 16));
    v232 = a15;
  }

  else
  {
    v233 = *(a15 + 8);
    *(v72 + 3928) = *(a15 + 24);
    *&v231->__r_.__value_.__l.__data_ = v233;
  }

  *(v72 + 3936) = *(v232 + 32);
  *(v72 + 3904) = &unk_1F50D8958;
  v234 = *v428;
  *(v72 + 3948) = *(v428 + 2);
  *(v72 + 3940) = v234;
  *(v72 + 3904) = &unk_1F50D7AC0;
  *(v72 + 3952) = &unk_1F50D86E0;
  v235 = (v72 + 3960);
  v236 = a16;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v235, *(a16 + 8), *(a16 + 16));
    v236 = a16;
  }

  else
  {
    v237 = *(a16 + 8);
    *(v72 + 3976) = *(a16 + 24);
    *&v235->__r_.__value_.__l.__data_ = v237;
  }

  *(v72 + 3984) = *(v236 + 32);
  *(v72 + 3952) = &unk_1F50D8958;
  v238 = *v427;
  *(v72 + 3996) = *(v427 + 2);
  *(v72 + 3988) = v238;
  *(v72 + 3952) = &unk_1F50D7AC0;
  *(v72 + 4000) = &unk_1F50D86E0;
  v239 = (v72 + 4008);
  v240 = a17;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v239, *(a17 + 8), *(a17 + 16));
    v240 = a17;
  }

  else
  {
    v241 = *(a17 + 8);
    *(v72 + 4024) = *(a17 + 24);
    *&v239->__r_.__value_.__l.__data_ = v241;
  }

  *(v72 + 4032) = *(v240 + 32);
  *(v72 + 4000) = &unk_1F50D8958;
  v242 = *v426;
  *(v72 + 4044) = *(v426 + 2);
  *(v72 + 4036) = v242;
  *(v72 + 4000) = &unk_1F50D7AC0;
  *(v72 + 4048) = &unk_1F50D86E0;
  v243 = (v72 + 4056);
  v244 = a18;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v243, *(a18 + 8), *(a18 + 16));
    v244 = a18;
  }

  else
  {
    v245 = *(a18 + 8);
    *(v72 + 4072) = *(a18 + 24);
    *&v243->__r_.__value_.__l.__data_ = v245;
  }

  *(v72 + 4080) = *(v244 + 32);
  *(v72 + 4048) = &unk_1F50D8958;
  v246 = *v425;
  *(v72 + 4092) = *(v425 + 2);
  *(v72 + 4084) = v246;
  *(v72 + 4048) = &unk_1F50D7AC0;
  *(v72 + 4096) = &unk_1F50D86E0;
  v247 = (v72 + 4104);
  v248 = a19;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v247, *(a19 + 8), *(a19 + 16));
    v248 = a19;
  }

  else
  {
    v249 = *(a19 + 8);
    *(v72 + 4120) = *(a19 + 24);
    *&v247->__r_.__value_.__l.__data_ = v249;
  }

  *(v72 + 4128) = *(v248 + 32);
  *(v72 + 4096) = &unk_1F50D8958;
  v250 = *(v424 + 8);
  *(v72 + 4132) = *v424;
  *(v72 + 4140) = v250;
  *(v72 + 4096) = &unk_1F50D7AC0;
  *(v72 + 4144) = &unk_1F50D86E0;
  v251 = (v72 + 4152);
  v252 = a20;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v251, *(a20 + 8), *(a20 + 16));
    v252 = a20;
  }

  else
  {
    v253 = *(a20 + 8);
    *(v72 + 4168) = *(a20 + 24);
    *&v251->__r_.__value_.__l.__data_ = v253;
  }

  *(v72 + 4176) = *(v252 + 32);
  *(v72 + 4144) = &unk_1F50D8958;
  v254 = *(v423 + 8);
  *(v72 + 4180) = *v423;
  *(v72 + 4188) = v254;
  *(v72 + 4144) = &unk_1F50D7AC0;
  *(v72 + 4192) = &unk_1F50D86E0;
  v255 = (v72 + 4200);
  v256 = a21;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v255, *(a21 + 8), *(a21 + 16));
    v256 = a21;
  }

  else
  {
    v257 = *(a21 + 8);
    *(v72 + 4216) = *(a21 + 24);
    *&v255->__r_.__value_.__l.__data_ = v257;
  }

  *(v72 + 4224) = *(v256 + 32);
  *(v72 + 4192) = &unk_1F50D8958;
  v258 = *(v422 + 8);
  *(v72 + 4228) = *v422;
  *(v72 + 4236) = v258;
  *(v72 + 4192) = &unk_1F50D7AC0;
  *(v72 + 4240) = &unk_1F50D86E0;
  v259 = (v72 + 4248);
  v260 = a22;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v259, *(a22 + 8), *(a22 + 16));
    v260 = a22;
  }

  else
  {
    v261 = *(a22 + 8);
    *(v72 + 4264) = *(a22 + 24);
    *&v259->__r_.__value_.__l.__data_ = v261;
  }

  *(v72 + 4272) = *(v260 + 32);
  *(v72 + 4240) = &unk_1F50D8958;
  v262 = *(v421 + 8);
  *(v72 + 4276) = *v421;
  *(v72 + 4284) = v262;
  *(v72 + 4240) = &unk_1F50D7AC0;
  *(v72 + 4288) = &unk_1F50D86E0;
  v263 = (v72 + 4296);
  v264 = a23;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v263, *(a23 + 8), *(a23 + 16));
    v264 = a23;
  }

  else
  {
    v265 = *(a23 + 8);
    *(v72 + 4312) = *(a23 + 24);
    *&v263->__r_.__value_.__l.__data_ = v265;
  }

  *(v72 + 4320) = *(v264 + 32);
  *(v72 + 4288) = &unk_1F50D8958;
  v266 = *(v420 + 8);
  *(v72 + 4324) = *v420;
  *(v72 + 4332) = v266;
  *(v72 + 4288) = &unk_1F50D7AC0;
  *(v72 + 4336) = &unk_1F50D86E0;
  v267 = (v72 + 4344);
  v268 = a24;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v267, *(a24 + 8), *(a24 + 16));
    v268 = a24;
  }

  else
  {
    v269 = *(a24 + 8);
    *(v72 + 4360) = *(a24 + 24);
    *&v267->__r_.__value_.__l.__data_ = v269;
  }

  *(v72 + 4368) = *(v268 + 32);
  *(v72 + 4336) = &unk_1F50D8958;
  v270 = *(v419 + 8);
  *(v72 + 4372) = *v419;
  *(v72 + 4380) = v270;
  *(v72 + 4336) = &unk_1F50D7AC0;
  *(v72 + 4384) = &unk_1F50D86E0;
  v271 = (v72 + 4392);
  v272 = a25;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v271, *(a25 + 8), *(a25 + 16));
    v272 = a25;
  }

  else
  {
    v273 = *(a25 + 8);
    *(v72 + 4408) = *(a25 + 24);
    *&v271->__r_.__value_.__l.__data_ = v273;
  }

  *(v72 + 4416) = *(v272 + 32);
  *(v72 + 4384) = &unk_1F50D8958;
  v274 = *(v418 + 8);
  *(v72 + 4420) = *v418;
  *(v72 + 4428) = v274;
  *(v72 + 4384) = &unk_1F50D7AC0;
  *(v72 + 4432) = &unk_1F50D86E0;
  v275 = (v72 + 4440);
  v276 = a26;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v275, *(a26 + 8), *(a26 + 16));
    v276 = a26;
  }

  else
  {
    v277 = *(a26 + 8);
    *(v72 + 4456) = *(a26 + 24);
    *&v275->__r_.__value_.__l.__data_ = v277;
  }

  *(v72 + 4464) = *(v276 + 32);
  *(v72 + 4432) = &unk_1F50D8958;
  v278 = *(v417 + 8);
  *(v72 + 4468) = *v417;
  *(v72 + 4476) = v278;
  *(v72 + 4432) = &unk_1F50D7AC0;
  *(v72 + 4480) = &unk_1F50D86E0;
  v279 = (v72 + 4488);
  v280 = a27;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v279, *(a27 + 8), *(a27 + 16));
    v280 = a27;
  }

  else
  {
    v281 = *(a27 + 8);
    *(v72 + 4504) = *(a27 + 24);
    *&v279->__r_.__value_.__l.__data_ = v281;
  }

  *(v72 + 4512) = *(v280 + 32);
  *(v72 + 4480) = &unk_1F50D8958;
  v282 = *(v416 + 8);
  *(v72 + 4516) = *v416;
  *(v72 + 4524) = v282;
  *(v72 + 4480) = &unk_1F50D7AC0;
  *(v72 + 4528) = &unk_1F50D86E0;
  v283 = (v72 + 4536);
  v284 = a28;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v283, *(a28 + 8), *(a28 + 16));
    v284 = a28;
  }

  else
  {
    v285 = *(a28 + 8);
    *(v72 + 4552) = *(a28 + 24);
    *&v283->__r_.__value_.__l.__data_ = v285;
  }

  *(v72 + 4560) = *(v284 + 32);
  *(v72 + 4528) = &unk_1F50D8958;
  v286 = *(v415 + 8);
  *(v72 + 4564) = *v415;
  *(v72 + 4572) = v286;
  *(v72 + 4528) = &unk_1F50D7AC0;
  *(v72 + 4576) = &unk_1F50D86E0;
  if (*(a29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 4584), *(a29 + 8), *(a29 + 16));
  }

  else
  {
    v287 = *(a29 + 8);
    *(v72 + 4600) = *(a29 + 24);
    *(v72 + 4584) = v287;
  }

  *(v72 + 4608) = *(a29 + 32);
  *(v72 + 4576) = &unk_1F50D89B8;
  *(v72 + 4612) = *(a29 + 36);
  v288 = (v72 + 4616);
  if (*(a29 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v288, *(a29 + 40), *(a29 + 48));
  }

  else
  {
    v289 = *(a29 + 40);
    *(v72 + 4632) = *(a29 + 56);
    *&v288->__r_.__value_.__l.__data_ = v289;
  }

  *(v72 + 4576) = &unk_1F50D7B20;
  *(v72 + 4640) = &unk_1F50D86E0;
  if (*(a30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 4648), *(a30 + 8), *(a30 + 16));
  }

  else
  {
    v290 = *(a30 + 8);
    *(v72 + 4664) = *(a30 + 24);
    *(v72 + 4648) = v290;
  }

  *(v72 + 4672) = *(a30 + 32);
  *(v72 + 4640) = &unk_1F50D89B8;
  *(v72 + 4676) = *(a30 + 36);
  v291 = (v72 + 4680);
  if (*(a30 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v291, *(a30 + 40), *(a30 + 48));
  }

  else
  {
    v292 = *(a30 + 40);
    *(v72 + 4696) = *(a30 + 56);
    *&v291->__r_.__value_.__l.__data_ = v292;
  }

  *(v72 + 4640) = &unk_1F50D7B20;
  *(v72 + 4704) = &unk_1F50D86E0;
  if (*(a31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 4712), *(a31 + 8), *(a31 + 16));
  }

  else
  {
    v293 = *(a31 + 8);
    *(v72 + 4728) = *(a31 + 24);
    *(v72 + 4712) = v293;
  }

  *(v72 + 4736) = *(a31 + 32);
  *(v72 + 4704) = &unk_1F50D89B8;
  *(v72 + 4740) = *(a31 + 36);
  v294 = (v72 + 4744);
  if (*(a31 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v294, *(a31 + 40), *(a31 + 48));
  }

  else
  {
    v295 = *(a31 + 40);
    *(v72 + 4760) = *(a31 + 56);
    *&v294->__r_.__value_.__l.__data_ = v295;
  }

  *(v72 + 4704) = &unk_1F50D7B20;
  *(v72 + 4768) = &unk_1F50D86E0;
  if (*(a32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 4776), *(a32 + 8), *(a32 + 16));
  }

  else
  {
    v296 = *(a32 + 8);
    *(v72 + 4792) = *(a32 + 24);
    *(v72 + 4776) = v296;
  }

  *(v72 + 4800) = *(a32 + 32);
  *(v72 + 4768) = &unk_1F50D89B8;
  *(v72 + 4804) = *(a32 + 36);
  v297 = (v72 + 4808);
  if (*(a32 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v297, *(a32 + 40), *(a32 + 48));
  }

  else
  {
    v298 = *(a32 + 40);
    *(v72 + 4824) = *(a32 + 56);
    *&v297->__r_.__value_.__l.__data_ = v298;
  }

  *(v72 + 4768) = &unk_1F50D7B20;
  *(v72 + 4832) = &unk_1F50D86E0;
  if (*(a33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 4840), *(a33 + 8), *(a33 + 16));
  }

  else
  {
    v299 = *(a33 + 8);
    *(v72 + 4856) = *(a33 + 24);
    *(v72 + 4840) = v299;
  }

  *(v72 + 4864) = *(a33 + 32);
  *(v72 + 4832) = &unk_1F50D89B8;
  *(v72 + 4868) = *(a33 + 36);
  v300 = (v72 + 4872);
  if (*(a33 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v300, *(a33 + 40), *(a33 + 48));
  }

  else
  {
    v301 = *(a33 + 40);
    *(v72 + 4888) = *(a33 + 56);
    *&v300->__r_.__value_.__l.__data_ = v301;
  }

  *(v72 + 4832) = &unk_1F50D7B20;
  *(v72 + 4896) = &unk_1F50D86E0;
  v302 = a34;
  if (*(a34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 4904), *(a34 + 8), *(a34 + 16));
    v302 = a34;
  }

  else
  {
    v303 = *(a34 + 8);
    *(v72 + 4920) = *(a34 + 24);
    *(v72 + 4904) = v303;
  }

  *(v72 + 4928) = *(v302 + 32);
  *(v72 + 4896) = &unk_1F50D8958;
  v304 = *(v414 + 8);
  *(v72 + 4932) = *v414;
  *(v72 + 4940) = v304;
  *(v72 + 4896) = &unk_1F50D7AC0;
  *(v72 + 4944) = &unk_1F50D86E0;
  v305 = (v72 + 4952);
  v306 = a35;
  if (*(a35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v305, *(a35 + 8), *(a35 + 16));
    v306 = a35;
  }

  else
  {
    v307 = *(a35 + 8);
    *(v72 + 4968) = *(a35 + 24);
    *&v305->__r_.__value_.__l.__data_ = v307;
  }

  *(v72 + 4976) = *(v306 + 32);
  *(v72 + 4944) = &unk_1F50D8958;
  v308 = *(v413 + 8);
  *(v72 + 4980) = *v413;
  *(v72 + 4988) = v308;
  *(v72 + 4944) = &unk_1F50D7AC0;
  *(v72 + 4992) = &unk_1F50D86E0;
  v309 = a36;
  if (*(a36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 5000), *(a36 + 8), *(a36 + 16));
    v309 = a36;
  }

  else
  {
    v310 = *(a36 + 8);
    *(v72 + 5016) = *(a36 + 24);
    *(v72 + 5000) = v310;
  }

  *(v72 + 5024) = *(v309 + 32);
  *(v72 + 4992) = &unk_1F50D89B8;
  *(v72 + 5028) = *(v309 + 36);
  v311 = (v72 + 5032);
  v312 = a37;
  if (*(v309 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v311, *(v309 + 40), *(v309 + 48));
    v312 = a37;
  }

  else
  {
    v313 = *(v309 + 40);
    *(v72 + 5048) = *(v309 + 56);
    *&v311->__r_.__value_.__l.__data_ = v313;
  }

  *(v72 + 4992) = &unk_1F50D7B20;
  *(v72 + 5056) = &unk_1F50D86E0;
  if (*(v312 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 5064), *(v312 + 8), *(v312 + 16));
    v312 = a37;
  }

  else
  {
    v314 = *(v312 + 8);
    *(v72 + 5080) = *(v312 + 24);
    *(v72 + 5064) = v314;
  }

  *(v72 + 5088) = *(v312 + 32);
  *(v72 + 5056) = &unk_1F50D8958;
  v315 = *(v412 + 8);
  *(v72 + 5092) = *v412;
  *(v72 + 5100) = v315;
  *(v72 + 5056) = &unk_1F50D7AC0;
  *(v72 + 5104) = &unk_1F50D86E0;
  v316 = (v72 + 5112);
  v317 = a38;
  if (*(a38 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v316, *(a38 + 8), *(a38 + 16));
    v317 = a38;
  }

  else
  {
    v318 = *(a38 + 8);
    *(v72 + 5128) = *(a38 + 24);
    *&v316->__r_.__value_.__l.__data_ = v318;
  }

  *(v72 + 5136) = *(v317 + 32);
  *(v72 + 5104) = &unk_1F50D8958;
  v319 = *(v411 + 8);
  *(v72 + 5140) = *v411;
  *(v72 + 5148) = v319;
  *(v72 + 5104) = &unk_1F50D7AC0;
  *(v72 + 5152) = &unk_1F50D86E0;
  v320 = a39;
  if (*(a39 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 5160), *(a39 + 8), *(a39 + 16));
    v320 = a39;
  }

  else
  {
    v321 = *(a39 + 8);
    *(v72 + 5176) = *(a39 + 24);
    *(v72 + 5160) = v321;
  }

  *(v72 + 5184) = *(v320 + 32);
  *(v72 + 5152) = &unk_1F50D89B8;
  *(v72 + 5188) = *(v320 + 36);
  v322 = (v72 + 5192);
  v323 = a40;
  if (*(v320 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v322, *(v320 + 40), *(v320 + 48));
    v323 = a40;
  }

  else
  {
    v324 = *(v320 + 40);
    *(v72 + 5208) = *(v320 + 56);
    *&v322->__r_.__value_.__l.__data_ = v324;
  }

  *(v72 + 5152) = &unk_1F50D7B20;
  *(v72 + 5216) = &unk_1F50D86E0;
  if (*(v323 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 5224), *(v323 + 8), *(v323 + 16));
    v323 = a40;
  }

  else
  {
    v325 = *(v323 + 8);
    *(v72 + 5240) = *(v323 + 24);
    *(v72 + 5224) = v325;
  }

  *(v72 + 5248) = *(v323 + 32);
  *(v72 + 5216) = &unk_1F50D89B8;
  *(v72 + 5252) = *(v323 + 36);
  v326 = (v72 + 5256);
  if (*(v323 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v326, *(v323 + 40), *(v323 + 48));
  }

  else
  {
    v327 = *(v323 + 40);
    *(v72 + 5272) = *(v323 + 56);
    *&v326->__r_.__value_.__l.__data_ = v327;
  }

  *(v72 + 5216) = &unk_1F50D7B20;
  *(v72 + 5280) = &unk_1F50D86E0;
  v328 = (v72 + 5288);
  v329 = a41;
  if (*(a41 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v328, *(a41 + 8), *(a41 + 16));
    v329 = a41;
  }

  else
  {
    v330 = *(a41 + 8);
    *(v72 + 5304) = *(a41 + 24);
    *&v328->__r_.__value_.__l.__data_ = v330;
  }

  *(v72 + 5312) = *(v329 + 32);
  *(v72 + 5280) = &unk_1F50D8958;
  v331 = *(v160 + 8);
  *(v72 + 5316) = *v160;
  *(v72 + 5324) = v331;
  *(v72 + 5280) = &unk_1F50D7AC0;
  *(v72 + 5328) = &unk_1F50D86E0;
  v332 = (v72 + 5336);
  v333 = a42;
  if (*(a42 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v332, *(a42 + 8), *(a42 + 16));
    v333 = a42;
  }

  else
  {
    v334 = *(a42 + 8);
    *(v72 + 5352) = *(a42 + 24);
    *&v332->__r_.__value_.__l.__data_ = v334;
  }

  *(v72 + 5360) = *(v333 + 32);
  *(v72 + 5328) = &unk_1F50D8958;
  v335 = *(v410 + 8);
  *(v72 + 5364) = *v410;
  *(v72 + 5372) = v335;
  *(v72 + 5328) = &unk_1F50D7AC0;
  *(v72 + 5376) = &unk_1F50D86E0;
  v336 = (v72 + 5384);
  v337 = a43;
  if (*(a43 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v336, *(a43 + 8), *(a43 + 16));
    v337 = a43;
  }

  else
  {
    v338 = *(a43 + 8);
    *(v72 + 5400) = *(a43 + 24);
    *&v336->__r_.__value_.__l.__data_ = v338;
  }

  *(v72 + 5408) = *(v337 + 32);
  *(v72 + 5376) = &unk_1F50D8958;
  v339 = *(v409 + 8);
  *(v72 + 5412) = *v409;
  *(v72 + 5420) = v339;
  *(v72 + 5376) = &unk_1F50D7AC0;
  *(v72 + 5424) = &unk_1F50D86E0;
  v340 = (v72 + 5432);
  if (*(a44 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v340, *(a44 + 8), *(a44 + 16));
  }

  else
  {
    v341 = *(a44 + 8);
    *(v72 + 5448) = *(a44 + 24);
    *&v340->__r_.__value_.__l.__data_ = v341;
  }

  *(v72 + 5456) = *(a44 + 32);
  *(v72 + 5424) = &unk_1F50D8978;
  *(v72 + 5460) = *(a44 + 36);
  *(v72 + 5424) = &unk_1F50D7AE0;
  *(v72 + 5472) = &unk_1F50D86E0;
  v342 = a45;
  v343 = a46;
  if (*(a45 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 5480), *(a45 + 8), *(a45 + 16));
    v342 = a45;
    v343 = a46;
  }

  else
  {
    v344 = *(a45 + 8);
    *(v72 + 5496) = *(a45 + 24);
    *(v72 + 5480) = v344;
  }

  *(v72 + 5504) = *(v342 + 32);
  *(v72 + 5472) = &unk_1F50D89B8;
  *(v72 + 5508) = *(v342 + 36);
  v345 = (v72 + 5512);
  if (*(v342 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v345, *(v342 + 40), *(v342 + 48));
    v343 = a46;
  }

  else
  {
    v346 = *(v342 + 40);
    *(v72 + 5528) = *(v342 + 56);
    *&v345->__r_.__value_.__l.__data_ = v346;
  }

  *(v72 + 5472) = &unk_1F50D7B20;
  *(v72 + 5536) = &unk_1F50D86E0;
  if (*(v343 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 5544), *(v343 + 8), *(v343 + 16));
    v343 = a46;
  }

  else
  {
    v347 = *(v343 + 8);
    *(v72 + 5560) = *(v343 + 24);
    *(v72 + 5544) = v347;
  }

  *(v72 + 5568) = *(v343 + 32);
  *(v72 + 5536) = &unk_1F50D89B8;
  *(v72 + 5572) = *(v343 + 36);
  v348 = (v72 + 5576);
  if (*(v343 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v348, *(v343 + 40), *(v343 + 48));
  }

  else
  {
    v349 = *(v343 + 40);
    *(v72 + 5592) = *(v343 + 56);
    *&v348->__r_.__value_.__l.__data_ = v349;
  }

  *(v72 + 5536) = &unk_1F50D7B20;
  *(v72 + 5600) = &unk_1F50D86E0;
  v350 = (v72 + 5608);
  if (*(a47 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v350, *(a47 + 8), *(a47 + 16));
  }

  else
  {
    v351 = *(a47 + 8);
    *(v72 + 5624) = *(a47 + 24);
    *&v350->__r_.__value_.__l.__data_ = v351;
  }

  *(v72 + 5632) = *(a47 + 32);
  *(v72 + 5600) = &unk_1F50D8958;
  v352 = *(a47 + 44);
  *(v72 + 5636) = *(a47 + 36);
  *(v72 + 5644) = v352;
  *(v72 + 5600) = &unk_1F50D7AC0;
  *(v72 + 5648) = &unk_1F50D86E0;
  v353 = (v72 + 5656);
  v354 = a48;
  if (*(a48 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v353, *(a48 + 8), *(a48 + 16));
    v354 = a48;
  }

  else
  {
    v355 = *(a48 + 8);
    *(v72 + 5672) = *(a48 + 24);
    *&v353->__r_.__value_.__l.__data_ = v355;
  }

  *(v72 + 5680) = *(v354 + 32);
  *(v72 + 5648) = &unk_1F50D8958;
  v356 = *(v408 + 8);
  *(v72 + 5684) = *v408;
  *(v72 + 5692) = v356;
  *(v72 + 5648) = &unk_1F50D7AC0;
  *(v72 + 5696) = &unk_1F50D86E0;
  v357 = (v72 + 5704);
  v358 = a49;
  if (*(a49 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v357, *(a49 + 8), *(a49 + 16));
    v358 = a49;
  }

  else
  {
    v359 = *(a49 + 8);
    *(v72 + 5720) = *(a49 + 24);
    *&v357->__r_.__value_.__l.__data_ = v359;
  }

  *(v72 + 5728) = *(v358 + 32);
  *(v72 + 5696) = &unk_1F50D8958;
  v360 = *(v175 + 8);
  *(v72 + 5732) = *v175;
  *(v72 + 5740) = v360;
  *(v72 + 5696) = &unk_1F50D7AC0;
  *(v72 + 5744) = &unk_1F50D86E0;
  v361 = (v72 + 5752);
  v362 = a50;
  if (*(a50 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v361, *(a50 + 8), *(a50 + 16));
    v362 = a50;
  }

  else
  {
    v363 = *(a50 + 8);
    *(v72 + 5768) = *(a50 + 24);
    *&v361->__r_.__value_.__l.__data_ = v363;
  }

  *(v72 + 5776) = *(v362 + 32);
  *(v72 + 5744) = &unk_1F50D8958;
  v364 = *(v407 + 8);
  *(v72 + 5780) = *v407;
  *(v72 + 5788) = v364;
  *(v72 + 5744) = &unk_1F50D7AC0;
  *(v72 + 5792) = &unk_1F50D86E0;
  v365 = (v72 + 5800);
  v366 = a51;
  if (*(a51 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v365, *(a51 + 8), *(a51 + 16));
    v366 = a51;
  }

  else
  {
    v367 = *(a51 + 8);
    *(v72 + 5816) = *(a51 + 24);
    *&v365->__r_.__value_.__l.__data_ = v367;
  }

  *(v72 + 5824) = *(v366 + 32);
  *(v72 + 5792) = &unk_1F50D8978;
  *(v72 + 5828) = *(v366 + 36);
  *(v72 + 5792) = &unk_1F50D7AE0;
  *(v72 + 5840) = &unk_1F50D86E0;
  v368 = (v72 + 5848);
  v369 = a53;
  if (*(a52 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v368, *(a52 + 8), *(a52 + 16));
    v369 = a53;
  }

  else
  {
    v370 = *(a52 + 8);
    *(v72 + 5864) = *(a52 + 24);
    *&v368->__r_.__value_.__l.__data_ = v370;
  }

  *(v72 + 5872) = *(a52 + 32);
  *(v72 + 5840) = &unk_1F50D8978;
  *(v72 + 5876) = *(a52 + 36);
  *(v72 + 5840) = &unk_1F50D7AE0;
  *(v72 + 5888) = &unk_1F50D86E0;
  if (*(v369 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 5896), *(v369 + 8), *(v369 + 16));
    v369 = a53;
  }

  else
  {
    v371 = *(v369 + 8);
    *(v72 + 5912) = *(v369 + 24);
    *(v72 + 5896) = v371;
  }

  *(v72 + 5920) = *(v369 + 32);
  *(v72 + 5888) = &unk_1F50D89B8;
  *(v72 + 5924) = *(v369 + 36);
  v372 = (v72 + 5928);
  if (*(v369 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v372, *(v369 + 40), *(v369 + 48));
  }

  else
  {
    v373 = *(v369 + 40);
    *(v72 + 5944) = *(v369 + 56);
    *&v372->__r_.__value_.__l.__data_ = v373;
  }

  *(v72 + 5888) = &unk_1F50D7B20;
  *(v72 + 5952) = &unk_1F50D86E0;
  v374 = (v72 + 5960);
  if (*(a54 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v374, *(a54 + 8), *(a54 + 16));
  }

  else
  {
    v375 = *(a54 + 8);
    *(v72 + 5976) = *(a54 + 24);
    *&v374->__r_.__value_.__l.__data_ = v375;
  }

  *(v72 + 5984) = *(a54 + 32);
  *(v72 + 5952) = &unk_1F50D8958;
  v376 = *(a54 + 44);
  *(v72 + 5988) = *(a54 + 36);
  *(v72 + 5996) = v376;
  *(v72 + 5952) = &unk_1F50D7AC0;
  *(v72 + 6000) = &unk_1F50D86E0;
  if (*(a55 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 6008), *(a55 + 8), *(a55 + 16));
  }

  else
  {
    v377 = *(a55 + 8);
    *(v72 + 6024) = *(a55 + 24);
    *(v72 + 6008) = v377;
  }

  *(v72 + 6032) = *(a55 + 32);
  *(v72 + 6000) = &unk_1F50D89B8;
  *(v72 + 6036) = *(a55 + 36);
  v378 = (v72 + 6040);
  if (*(a55 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v378, *(a55 + 40), *(a55 + 48));
  }

  else
  {
    v379 = *(a55 + 40);
    *(v72 + 6056) = *(a55 + 56);
    *&v378->__r_.__value_.__l.__data_ = v379;
  }

  *(v72 + 6000) = &unk_1F50D7B20;
  *(v72 + 6064) = &unk_1F50D86E0;
  v380 = (v72 + 6072);
  if (*(a56 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v380, *(a56 + 8), *(a56 + 16));
  }

  else
  {
    v381 = *(a56 + 8);
    *(v72 + 6088) = *(a56 + 24);
    *&v380->__r_.__value_.__l.__data_ = v381;
  }

  *(v72 + 6096) = *(a56 + 32);
  *(v72 + 6064) = &unk_1F50D8958;
  v382 = *(a56 + 44);
  *(v72 + 6100) = *(a56 + 36);
  *(v72 + 6108) = v382;
  *(v72 + 6064) = &unk_1F50D7AC0;
  *(v72 + 6112) = &unk_1F50D86E0;
  v383 = (v72 + 6120);
  v384 = a57;
  if (*(a57 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v383, *(a57 + 8), *(a57 + 16));
    v384 = a57;
  }

  else
  {
    v385 = *(a57 + 8);
    *(v72 + 6136) = *(a57 + 24);
    *&v383->__r_.__value_.__l.__data_ = v385;
  }

  *(v72 + 6144) = *(v384 + 32);
  *(v72 + 6112) = &unk_1F50D8958;
  v386 = *(v184 + 8);
  *(v72 + 6148) = *v184;
  *(v72 + 6156) = v386;
  *(v72 + 6112) = &unk_1F50D7AC0;
  *(v72 + 6160) = &unk_1F50D86E0;
  v387 = (v72 + 6168);
  if (*(a58 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v387, *(a58 + 8), *(a58 + 16));
  }

  else
  {
    v388 = *(a58 + 8);
    *(v72 + 6184) = *(a58 + 24);
    *&v387->__r_.__value_.__l.__data_ = v388;
  }

  *(v72 + 6192) = *(a58 + 32);
  *(v72 + 6160) = &unk_1F50D8958;
  v389 = *(a58 + 44);
  *(v72 + 6196) = *(a58 + 36);
  *(v72 + 6204) = v389;
  *(v72 + 6160) = &unk_1F50D7AC0;
  *(v72 + 6208) = &unk_1F50D86E0;
  v390 = a59;
  if (*(a59 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 6216), *(a59 + 8), *(a59 + 16));
    v390 = a59;
  }

  else
  {
    v391 = *(a59 + 8);
    *(v72 + 6232) = *(a59 + 24);
    *(v72 + 6216) = v391;
  }

  *(v72 + 6240) = *(v390 + 32);
  *(v72 + 6208) = &unk_1F50D8958;
  v392 = *(v406 + 8);
  *(v72 + 6244) = *v406;
  *(v72 + 6252) = v392;
  *(v72 + 6208) = &unk_1F50D7AC0;
  *(v72 + 6256) = &unk_1F50D86E0;
  if (*(a60 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 6264), *(a60 + 8), *(a60 + 16));
  }

  else
  {
    v393 = *(a60 + 8);
    *(v72 + 6280) = *(a60 + 24);
    *(v72 + 6264) = v393;
  }

  *(v72 + 6288) = *(a60 + 32);
  *(v72 + 6256) = &unk_1F50D89B8;
  *(v72 + 6292) = *(a60 + 36);
  v394 = (v72 + 6296);
  if (*(a60 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v394, *(a60 + 40), *(a60 + 48));
  }

  else
  {
    v395 = *(a60 + 40);
    *(v72 + 6312) = *(a60 + 56);
    *&v394->__r_.__value_.__l.__data_ = v395;
  }

  *(v72 + 6256) = &unk_1F50D7B20;
  *(v72 + 6320) = &unk_1F50D86E0;
  if (*(a61 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 6328), *(a61 + 8), *(a61 + 16));
  }

  else
  {
    v396 = *(a61 + 8);
    *(v72 + 6344) = *(a61 + 24);
    *(v72 + 6328) = v396;
  }

  *(v72 + 6352) = *(a61 + 32);
  *(v72 + 6320) = &unk_1F50D89B8;
  *(v72 + 6356) = *(a61 + 36);
  v397 = (v72 + 6360);
  if (*(a61 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v397, *(a61 + 40), *(a61 + 48));
  }

  else
  {
    v398 = *(a61 + 40);
    *(v72 + 6376) = *(a61 + 56);
    *&v397->__r_.__value_.__l.__data_ = v398;
  }

  *(v72 + 6320) = &unk_1F50D7B20;
  *(v72 + 6384) = &unk_1F50D86E0;
  if (*(a62 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 6392), *(a62 + 8), *(a62 + 16));
  }

  else
  {
    v399 = *(a62 + 8);
    *(v72 + 6408) = *(a62 + 24);
    *(v72 + 6392) = v399;
  }

  *(v72 + 6416) = *(a62 + 32);
  *(v72 + 6384) = &unk_1F50D89B8;
  *(v72 + 6420) = *(a62 + 36);
  v400 = (v72 + 6424);
  if (*(a62 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v400, *(a62 + 40), *(a62 + 48));
  }

  else
  {
    v401 = *(a62 + 40);
    *(v72 + 6440) = *(a62 + 56);
    *&v400->__r_.__value_.__l.__data_ = v401;
  }

  *(v72 + 6384) = &unk_1F50D7B20;
  *(v72 + 6448) = &unk_1F50D86E0;
  if (*(a63 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v72 + 6456), *(a63 + 8), *(a63 + 16));
  }

  else
  {
    v402 = *(a63 + 8);
    *(v72 + 6472) = *(a63 + 24);
    *(v72 + 6456) = v402;
  }

  *(v72 + 6480) = *(a63 + 32);
  *(v72 + 6448) = &unk_1F50D89B8;
  *(v72 + 6484) = *(a63 + 36);
  v403 = (v72 + 6488);
  if (*(a63 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v403, *(a63 + 40), *(a63 + 48));
  }

  else
  {
    v404 = *(a63 + 40);
    *(v72 + 6504) = *(a63 + 56);
    *&v403->__r_.__value_.__l.__data_ = v404;
  }

  *(v72 + 6448) = &unk_1F50D7B20;
  return v72;
}

void sub_1D59E2B04(_Unwind_Exception *a1)
{
  *(v1 + 6448) = v7;
  if (*(v4 + 2383) < 0)
  {
    operator delete(*v6);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v8);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v5);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v2);
  *(v1 + 6208) = STACK[0x300];
  if (*(STACK[0x610] + 2143) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 6160) = STACK[0x4C8];
  if (*(STACK[0x610] + 2095) < 0)
  {
    operator delete(*STACK[0x2F0]);
  }

  *(v1 + 6112) = STACK[0x310];
  if (*(STACK[0x610] + 2047) < 0)
  {
    operator delete(*STACK[0x2F8]);
  }

  *(v1 + 6064) = STACK[0x318];
  if (*(STACK[0x610] + 1999) < 0)
  {
    operator delete(*STACK[0x308]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x328]);
  *(v1 + 5952) = STACK[0x340];
  if (*(STACK[0x610] + 1887) < 0)
  {
    operator delete(*STACK[0x320]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x5C8]);
  *(v1 + 5840) = STACK[0x4D0];
  if (*(STACK[0x610] + 1775) < 0)
  {
    operator delete(*STACK[0x330]);
  }

  *(v1 + 5792) = STACK[0x4D8];
  if (*(STACK[0x610] + 1727) < 0)
  {
    operator delete(*STACK[0x338]);
  }

  *(v1 + 5744) = STACK[0x4E0];
  if (*(STACK[0x610] + 1679) < 0)
  {
    operator delete(*STACK[0x348]);
  }

  *(v1 + 5696) = STACK[0x4E8];
  if (*(STACK[0x610] + 1631) < 0)
  {
    operator delete(*STACK[0x350]);
  }

  *(v1 + 5648) = STACK[0x370];
  if (*(STACK[0x610] + 1583) < 0)
  {
    operator delete(*STACK[0x358]);
  }

  *(v1 + 5600) = STACK[0x380];
  if (*(STACK[0x610] + 1535) < 0)
  {
    operator delete(*STACK[0x360]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x5F0]);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x4F0]);
  *(v1 + 5424) = STACK[0x4F8];
  if (*(STACK[0x610] + 1359) < 0)
  {
    operator delete(*STACK[0x368]);
  }

  *(v1 + 5376) = STACK[0x500];
  if (*(STACK[0x610] + 1311) < 0)
  {
    operator delete(*STACK[0x378]);
  }

  *(v1 + 5328) = STACK[0x508];
  if (*(STACK[0x610] + 1263) < 0)
  {
    operator delete(*STACK[0x388]);
  }

  *(v1 + 5280) = STACK[0x5D0];
  if (*(STACK[0x610] + 1215) < 0)
  {
    operator delete(*STACK[0x390]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x510]);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x518]);
  *(v1 + 5104) = STACK[0x5D8];
  if (*(STACK[0x610] + 1039) < 0)
  {
    operator delete(*STACK[0x398]);
  }

  *(v1 + 5056) = STACK[0x520];
  if (*(STACK[0x610] + 991) < 0)
  {
    operator delete(*STACK[0x3A0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x528]);
  *(v1 + 4944) = STACK[0x530];
  if (*(STACK[0x610] + 879) < 0)
  {
    operator delete(*STACK[0x3A8]);
  }

  *(v1 + 4896) = STACK[0x3C8];
  if (*(STACK[0x610] + 831) < 0)
  {
    operator delete(*STACK[0x3B0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x3D8]);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x3F8]);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x418]);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x430]);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x538]);
  *(v1 + 4528) = STACK[0x540];
  if (*(STACK[0x610] + 463) < 0)
  {
    operator delete(*STACK[0x3B8]);
  }

  *(v1 + 4480) = STACK[0x548];
  if (*(STACK[0x610] + 415) < 0)
  {
    operator delete(*STACK[0x3C0]);
  }

  *(v1 + 4432) = STACK[0x550];
  if (*(STACK[0x610] + 367) < 0)
  {
    operator delete(*STACK[0x3D0]);
  }

  *(v1 + 4384) = STACK[0x558];
  if (*(STACK[0x610] + 319) < 0)
  {
    operator delete(*STACK[0x3E0]);
  }

  *(v1 + 4336) = STACK[0x560];
  if (*(STACK[0x610] + 271) < 0)
  {
    operator delete(*STACK[0x3E8]);
  }

  *(v1 + 4288) = STACK[0x568];
  if (*(STACK[0x610] + 223) < 0)
  {
    operator delete(*STACK[0x3F0]);
  }

  *(v1 + 4240) = STACK[0x570];
  if (*(STACK[0x610] + 175) < 0)
  {
    operator delete(*STACK[0x400]);
  }

  *(v1 + 4192) = STACK[0x578];
  if (*(STACK[0x610] + 127) < 0)
  {
    operator delete(*STACK[0x408]);
  }

  *(v1 + 4144) = STACK[0x580];
  if (*(STACK[0x610] + 79) < 0)
  {
    operator delete(*STACK[0x410]);
  }

  *(v1 + 4096) = STACK[0x588];
  if (*(STACK[0x610] + 31) < 0)
  {
    operator delete(*STACK[0x420]);
  }

  *(v1 + 4048) = STACK[0x590];
  if (*(v1 + 4079) < 0)
  {
    operator delete(*STACK[0x428]);
  }

  *(v1 + 4000) = STACK[0x598];
  if (*(v1 + 4031) < 0)
  {
    operator delete(*STACK[0x438]);
  }

  *(v1 + 3952) = STACK[0x5A0];
  if (*(v1 + 3983) < 0)
  {
    operator delete(*STACK[0x440]);
  }

  *(v1 + 3904) = STACK[0x5E0];
  if (*(v1 + 3935) < 0)
  {
    operator delete(*STACK[0x448]);
  }

  *(v1 + 3856) = STACK[0x4A0];
  if (*(v1 + 3887) < 0)
  {
    operator delete(*STACK[0x450]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x5A8]);
  *(v1 + 3744) = STACK[0x4A8];
  if (*(v1 + 3775) < 0)
  {
    operator delete(*STACK[0x458]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x5B0]);
  *(v1 + 3632) = STACK[0x5B8];
  if (*(v1 + 3663) < 0)
  {
    operator delete(*STACK[0x460]);
  }

  *(v1 + 3584) = STACK[0x600];
  if (*(v1 + 3615) < 0)
  {
    operator delete(*STACK[0x468]);
  }

  *(v1 + 3536) = STACK[0x608];
  if (*(v1 + 3567) < 0)
  {
    operator delete(*STACK[0x470]);
  }

  *(v1 + 3488) = STACK[0x4B0];
  if (*(v1 + 3519) < 0)
  {
    operator delete(*STACK[0x478]);
  }

  *(v1 + 3440) = STACK[0x5F8];
  if (*(v1 + 3471) < 0)
  {
    operator delete(*STACK[0x480]);
  }

  *(v1 + 3392) = STACK[0x5E8];
  if (*(v1 + 3423) < 0)
  {
    operator delete(*STACK[0x488]);
  }

  *(v1 + 3344) = STACK[0x5C0];
  if (*(v1 + 3375) < 0)
  {
    operator delete(*STACK[0x490]);
  }

  *(v1 + 3296) = STACK[0x4B8];
  if (*(v1 + 3327) < 0)
  {
    operator delete(*STACK[0x498]);
  }

  mediaplatform::DatabaseTable<long long,long long,long long,long long,long long,long long,long long,long long,std::string,long long,std::string,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,long long,std::string,std::string,std::string,std::string,std::string,long long,long long,std::string,long long,long long,std::string,std::string,long long,long long,long long,int,std::string,std::string,long long,long long,long long,long long,int,int,std::string,long long,std::string,long long,long long,long long,long long,std::string,std::string,std::string,std::string>::~DatabaseTable(v1);
  _Unwind_Resume(a1);
}