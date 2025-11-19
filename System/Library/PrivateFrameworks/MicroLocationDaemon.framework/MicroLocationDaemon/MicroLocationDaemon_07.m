void sub_25906C080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, pthread_mutex_t *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a37)
  {
    operator delete(a37);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a60);
  AutoLocker::~AutoLocker(&a40);
  _Unwind_Resume(a1);
}

void CLSqliteDatabase::initUUID(CLSqliteDatabase *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v49 = "id";
  v50 = 1;
  v51 = 1;
  v52 = 0;
  v53 = 0;
  v54 = "uuid";
  v55 = 3;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 5;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v48[0] = "uuid";
  v48[1] = 0;
  CLSqliteDatabase::createTableIfNecessary(this, "DatabaseIdentifier", &v49, v48);
  memset(&v42, 0, sizeof(v42));
  v2 = CLSqliteDatabase::prepareStatementNoCache(this, "SELECT * FROM DatabaseIdentifier;");
  v3 = v2;
  if (v2)
  {
    if (sqlite3_step(v2) == 100)
    {
      v5 = sqlite3_column_text(v3, 1);
      std::string::__assign_external(&v42, v5);
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v42;
      }

      else
      {
        v7 = v42.__r_.__value_.__r.__words[0];
      }

      v8 = [v6 initWithUTF8String:v7];
      v9 = *(this + 15);
      *(this + 15) = v8;

      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(this + 111) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(this + 11), *(this + 12));
        }

        else
        {
          __p = *(this + 88);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v13 = &v42;
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v42.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315395;
        *(buf.__r_.__value_.__r.__words + 4) = p_p;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v13;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "initUUID. path: %s, uuid: %{private}s", &buf, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    CLSqliteDatabase::finalizeStatement(*(this + 1), v3, v4);
    if (!*(this + 15))
    {
      v14 = [MEMORY[0x277CCAD78] UUID];
      v15 = [v14 UUIDString];
      v16 = v15;
      std::string::__assign_external(&v42, [v15 UTF8String]);

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], "INSERT INTO DatabaseIdentifier (uuid) VALUES (", 47);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v42;
      }

      else
      {
        v18 = v42.__r_.__value_.__r.__words[0];
      }

      v19 = strlen(v18);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ");", 3);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&__p, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      v22 = CLSqliteDatabase::prepareStatementNoCache(this, p_buf);
      v23 = v22;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if (v23)
        {
LABEL_32:
          if (sqlite3_step(v23) == 101)
          {
            v24 = [v14 UUIDString];
            v25 = *(this + 15);
            *(this + 15) = v24;

            if (onceToken_MicroLocation_Default != -1)
            {
              CLSqliteDatabase::init();
            }

            v26 = logObject_MicroLocation_Default;
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_60;
            }

            if (*(this + 111) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, *(this + 11), *(this + 12));
            }

            else
            {
              buf = *(this + 88);
            }

            v32 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v32 = buf.__r_.__value_.__r.__words[0];
            }

            v33 = &v42;
            if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v33 = v42.__r_.__value_.__r.__words[0];
            }

            *v43 = 136315395;
            v44 = v32;
            v45 = 2081;
            v46 = v33;
            v29 = "UUID initialized. path: %s, uuid: %{private}s";
            v30 = v26;
            v31 = 22;
          }

          else
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              CLSqliteDatabase::init();
            }

            v26 = logObject_MicroLocation_Default;
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_60;
            }

            if (*(this + 111) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, *(this + 11), *(this + 12));
            }

            else
            {
              buf = *(this + 88);
            }

            v28 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v28 = buf.__r_.__value_.__r.__words[0];
            }

            *v43 = 136315138;
            v44 = v28;
            v29 = "Failed to initialize DB UUID. path: %s";
            v30 = v26;
            v31 = 12;
          }

          _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEFAULT, v29, v43, v31);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_60:

          CLSqliteDatabase::finalizeStatement(*(this + 1), v23, v34);
LABEL_61:
          __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
          v35 = *(MEMORY[0x277D82818] + 72);
          *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
          __p.__r_.__value_.__r.__words[2] = v35;
          v38 = MEMORY[0x277D82878] + 16;
          if (v40 < 0)
          {
            operator delete(v39[7].__locale_);
          }

          v38 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v39);
          std::iostream::~basic_iostream();
          MEMORY[0x259CA1EE0](&v41);

          goto LABEL_64;
        }
      }

      else if (v22)
      {
        goto LABEL_32;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v27 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "#warning Failed to create UUID insert statement", &buf, 2u);
      }

      goto LABEL_61;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "#warning Failed to create UUID select statement", &__p, 2u);
    }
  }

LABEL_64:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_25906C868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9);

  if (a49 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AutoLocker::~AutoLocker(pthread_mutex_t **this)
{
  if (*(this + 17) == 1)
  {
    if (this[2])
    {
      pthread_mutex_unlock(this[1]);
    }

    else
    {
      v2 = *this;
      (*((*this)->__sig + 24))();
    }

    *(this + 17) = 0;
  }
}

BOOL CLSqliteDatabase::setForeignKeysEnabled(CLSqliteDatabase *this, int a2)
{
  v4 = *(this + 2);
  v14 = v4;
  (*(*v4 + 16))(v4);
  v15 = 256;
  std::string::basic_string[abi:ne200100]<0>(&v13, "pragma foreign_keys = ");
  if (a2)
  {
    v5 = "1";
  }

  else
  {
    v5 = "0";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v5);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(&v13, v6, v7);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v13;
  }

  else
  {
    v8 = v13.__r_.__value_.__r.__words[0];
  }

  v9 = sqlite3_exec(*(this + 1), v8, 0, 0, 0);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  (*(*v4 + 24))(v4);
  return v9 == 0;
}

void sub_25906CAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, pthread_mutex_t *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  AutoLocker::~AutoLocker(&a22);
  _Unwind_Resume(a1);
}

uint64_t CLSqliteDatabase::createTableIfNecessary(uint64_t a1, char *a2, const char **a3, char **a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136380675;
    v12 = a2;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "createTableIfNecessary. table: %{private}s", &v11, 0xCu);
  }

  result = CLSqliteDatabase::createTableIfNecessary_internal(a1, a2, a3, a4);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

CLSqliteDatabase *CLSqliteDatabase::prepareStatementNoCache(CLSqliteDatabase *this, sqlite3 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (((*(**(this + 2) + 32))(*(this + 2)) & 1) == 0)
  {
    CLSqliteDatabase::prepareStatementNoCache();
LABEL_15:
    _CLLogObjectForCategory_MicroLocation_Default();
    goto LABEL_4;
  }

  if (!*(this + 1))
  {
    v8 = 0;
    goto LABEL_13;
  }

  v2 = &unk_281455000;
  if (onceToken_MicroLocation_Default != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v7 = (this + 88);
    if (*(this + 111) < 0)
    {
      v7 = *v7;
    }

    v12 = 136380931;
    v13 = a2;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEBUG, "Preparing statement for database. query: %{private}s, path: %s", &v12, 0x16u);
  }

  v8 = CLSqliteDatabase::prepareStatement(*(this + 1), a2, v6);
  if (v2[141] != -1)
  {
    CLSqliteDatabase::init();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = v8;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEBUG, "Prepared statement. statement: %p", &v12, 0xCu);
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void CLSqliteDatabase::finalizeStatement(CLSqliteDatabase *this, sqlite3 *pStmt, sqlite3_stmt *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = sqlite3_finalize(pStmt);
  if (v4)
  {
    v5 = v4;
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (this)
      {
        v7 = sqlite3_errmsg(this);
      }

      else
      {
        v7 = "no database";
      }

      v9[0] = 67109379;
      v9[1] = v5;
      v10 = 2081;
      v11 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "#warning Finalized statement previously failed. sqlite_rc: %d, errmsg: %{private}s", v9, 0x12u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void CLSqliteDatabase::displaySqlResult(CLSqliteDatabase *this, const char *a2, int a3, sqlite3_stmt *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x1Au && ((1 << a3) & 0x4004C00) != 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *__error();
      if (a4)
      {
        v9 = sqlite3_sql(a4);
      }

      else
      {
        v9 = 0;
      }

      v16 = 136315907;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = a3;
      v22 = 2081;
      v23 = v9;
      v12 = "displaySqlResult. function: %s, errno: %d, sqlite_rc: %d, query: %{private}s";
      v13 = v7;
      v14 = OS_LOG_TYPE_FAULT;
LABEL_15:
      _os_log_impl(&dword_258FE9000, v13, v14, v12, &v16, 0x22u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *__error();
      if (a4)
      {
        v11 = sqlite3_sql(a4);
      }

      else
      {
        v11 = 0;
      }

      v16 = 136315907;
      v17 = a2;
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = a3;
      v22 = 2081;
      v23 = v11;
      v12 = "#warning displaySqlResult. function: %s, errno: %d, sqlite_rc: %d, query: %{private}s";
      v13 = v7;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_15;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t CLSqliteDatabase::getElementCreateStatement@<X0>(CLSqliteDatabase *this@<X0>, char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v8 = *(this + 2);
  v32[19] = v8;
  (*(*v8 + 16))(v8);
  v33 = 256;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v27);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "SELECT sql FROM ", 16);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "sqlite_master", 13);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " WHERE ", 7);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Type", 4);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "=? AND ", 7);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Name", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "=?", 2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v27, __p);
  if (v26 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = CLSqliteDatabase::prepareStatementNoCache(this, v15);
  v18 = v16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else if (!v16)
  {
    goto LABEL_16;
  }

  if (CLSqliteDatabase::bind(v18, 1, a2, v17) && CLSqliteDatabase::bind(v18, 2, a3, v20) && sqlite3_step(v18) == 100)
  {
    v21 = sqlite3_column_text(v18, 0);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v22);
    *a4 = *__p;
    a4[2] = v26;
  }

  CLSqliteDatabase::finalizeStatement(*(this + 1), v18, v19);
LABEL_16:
  v27[0] = *MEMORY[0x277D82818];
  v23 = *(MEMORY[0x277D82818] + 72);
  *(v27 + *(v27[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v28 = v23;
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v32);
  return (*(*v8 + 24))(v8);
}

void sub_25906D3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  AutoLocker::~AutoLocker((v16 - 88));
  _Unwind_Resume(a1);
}

void CLSqliteDatabase::handleSqlError(sqlite3 *a1, uint64_t a2, int a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4 != 26 && a4 != 11)
  {
LABEL_14:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 136315394;
      *v19 = v8;
      *&v19[8] = 1024;
      *&v19[10] = a4;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "handleSqlError on read-only db. path: %s, sqlite_rc: %d", buf, 0x12u);
    }

    goto LABEL_14;
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    *buf = 136315394;
    *v19 = v11;
    *&v19[8] = 1024;
    *&v19[10] = a4;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "database error; deleting and exiting. path: %s, sqlite_rc: %d", buf, 0x12u);
  }

  CLSqliteDatabase::deleteDatabase(a1, a2);
  v12 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    *v19 = 0;
    *&v19[4] = 2082;
    *&v19[6] = "";
    v20 = 2082;
    v21 = "assert";
    v22 = 2081;
    v23 = "0";
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to resolve corrupted database, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v13))
  {
    *buf = 68289539;
    *v19 = 0;
    *&v19[4] = 2082;
    *&v19[6] = "";
    v20 = 2082;
    v21 = "assert";
    v22 = 2081;
    v23 = "0";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to resolve corrupted database", "{msg%{public}.0s:Killing locationd to resolve corrupted database, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v14 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    *v19 = 0;
    *&v19[4] = 2082;
    *&v19[6] = "";
    v20 = 2082;
    v21 = "assert";
    v22 = 2081;
    v23 = "0";
    _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to resolve corrupted database, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v15 = abort_report_np();
  CLSqliteDatabase::deleteDatabase(v15, v16);
}

void CLSqliteDatabase::deleteDatabase(sqlite3 *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x282213A80] && a1)
  {
    if (CPSqliteDatabaseDelete())
    {
      goto LABEL_101;
    }

    goto LABEL_6;
  }

  if (a1)
  {
LABEL_6:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_FAULT, "Could not delete the database with CPSqliteDatabaseDelete()", buf, 2u);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *buf = 136315138;
    v52 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_FAULT, "Falling back to file deletion. path: %s", buf, 0xCu);
  }

  sqlite3_close(a1);
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (remove(v8, v7))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136315650;
      v52 = v10;
      v53 = 1024;
      v54 = v11;
      v55 = 2080;
      v56 = v13;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "could not remove file. path: %s, errno: %d, error: %s", buf, 0x1Cu);
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = v49;
  std::string::basic_string[abi:ne200100](v49, v14 + 8);
  if (v50 < 0)
  {
    v15 = v49[0];
  }

  if (v14)
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    memmove(v15, v17, v14);
  }

  strcpy(v15 + v14, "-journal");
  if (v50 >= 0)
  {
    v18 = v49;
  }

  else
  {
    v18 = v49[0];
  }

  if (remove(v18, v16))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      if (v50 >= 0)
      {
        v20 = v49;
      }

      else
      {
        v20 = v49[0];
      }

      v21 = *__error();
      v22 = __error();
      v23 = strerror(*v22);
      *buf = 136315650;
      v52 = v20;
      v53 = 1024;
      v54 = v21;
      v55 = 2080;
      v56 = v23;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_FAULT, "could not remove file. path %s, errno: %d, error: %s", buf, 0x1Cu);
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v24 = *(a2 + 23);
  }

  else
  {
    v24 = *(a2 + 8);
  }

  v25 = v47;
  std::string::basic_string[abi:ne200100](v47, v24 + 4);
  if (v48 < 0)
  {
    v25 = v47[0];
  }

  if (v24)
  {
    if (*(a2 + 23) >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    memmove(v25, v27, v24);
  }

  strcpy(v25 + v24, "-wal");
  if (v48 >= 0)
  {
    v28 = v47;
  }

  else
  {
    v28 = v47[0];
  }

  if (remove(v28, v26))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      if (v48 >= 0)
      {
        v30 = v47;
      }

      else
      {
        v30 = v47[0];
      }

      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      *buf = 136315650;
      v52 = v30;
      v53 = 1024;
      v54 = v31;
      v55 = 2080;
      v56 = v33;
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_FAULT, "could not remove file. path: %s, errno: %d, error: %s", buf, 0x1Cu);
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v34 = *(a2 + 23);
  }

  else
  {
    v34 = *(a2 + 8);
  }

  v35 = __p;
  std::string::basic_string[abi:ne200100](__p, v34 + 4);
  if (v46 < 0)
  {
    v35 = __p[0];
  }

  if (v34)
  {
    if (*(a2 + 23) >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    memmove(v35, v37, v34);
  }

  strcpy(v35 + v34, "-shm");
  if (v46 >= 0)
  {
    v38 = __p;
  }

  else
  {
    v38 = __p[0];
  }

  if (remove(v38, v36))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v39 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      if (v46 >= 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = __p[0];
      }

      v41 = *__error();
      v42 = __error();
      v43 = strerror(*v42);
      *buf = 136315650;
      v52 = v40;
      v53 = 1024;
      v54 = v41;
      v55 = 2080;
      v56 = v43;
      _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_FAULT, "could not remove file. path: %s, errno: %d, error: %s", buf, 0x1Cu);
    }
  }

  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

LABEL_101:
  v44 = *MEMORY[0x277D85DE8];
}

void sub_25906DCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

CLSqliteDatabase *CLSqliteDatabase::createCountTriggersIfNecessary(CLSqliteDatabase *this, const char *a2)
{
  if (*(this + 57) == 1)
  {
    v4 = this;
    CLSqliteDatabase::dropCountTriggers(this, a2);

    return CLSqliteDatabase::addCountTriggers(v4, a2);
  }

  return this;
}

uint64_t CLSqliteDatabase::dropCountTriggers(CLSqliteDatabase *this, const char *a2)
{
  v4 = *(this + 2);
  v27[19] = v4;
  (*(*v4 + 16))(v4);
  v28 = 256;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
  v5 = strlen(a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, a2, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "IncrementRowCount", 17);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v22, &__p);
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  CLSqliteDatabase::dropTrigger(this, p_p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v21 = 0;
  std::stringbuf::str[abi:ne200100](&v24, &__p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v8 = strlen(a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, a2, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "DecrementRowCount", 17);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v22, &__p);
  if (v21 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  CLSqliteDatabase::dropTrigger(this, v10);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v21 = 0;
  std::stringbuf::str[abi:ne200100](&v24, &__p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v11 = strlen(a2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, a2, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Counts", 6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v22, v18);
  if (v19 >= 0)
  {
    v13 = v18;
  }

  else
  {
    v13 = v18[0];
  }

  CLSqliteDatabase::getElementCreateStatement(this, "table", v13, &__p);
  if (SHIBYTE(v21) < 0)
  {
    v14 = *(&__p + 1) == 0;
    operator delete(__p);
  }

  else
  {
    v14 = SHIBYTE(v21) == 0;
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
    if (v14)
    {
      goto LABEL_30;
    }
  }

  else if (v14)
  {
    goto LABEL_30;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v22, &__p);
  if (v21 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  CLSqliteDatabase::dropTable_internal(this, v15);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  v22[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v23 = v16;
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v27);
  return (*(*v4 + 24))(v4);
}

void sub_25906E17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  AutoLocker::~AutoLocker((v21 - 88));
  _Unwind_Resume(a1);
}

uint64_t CLSqliteDatabase::addCountTriggers(CLSqliteDatabase *this, const char *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v35[19] = v4;
  (*(*v4 + 16))(v4);
  v36 = 256;
  v39 = "Count";
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 5;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v30);
  v5 = strlen(a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, a2, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Counts", 6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v30, &buf);
  if (v38 >= 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf;
  }

  CLSqliteDatabase::createTable(this, p_buf, &v39);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(buf);
  }

  buf = 0uLL;
  v38 = 0;
  std::stringbuf::str[abi:ne200100](&v32, &buf);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(buf);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "SELECT COUNT(*) FROM ", 21);
  v9 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a2, v9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v30, &buf);
  if (v38 >= 0)
  {
    v10 = &buf;
  }

  else
  {
    v10 = buf;
  }

  v11 = CLSqliteDatabase::prepareStatementNoCache(this, v10);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(buf);
  }

  if (!v11)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v14 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    LODWORD(buf) = 136380675;
    *(&buf + 4) = a2;
    v15 = "Couldn't create select count statement. table: %{private}s";
    goto LABEL_24;
  }

  if (sqlite3_step(v11) == 100)
  {
    v13 = sqlite3_column_int(v11, 0);
    goto LABEL_26;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136380675;
    *(&buf + 4) = a2;
    v15 = "Couldn't get row count for. table: %{private}s";
LABEL_24:
    _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_FAULT, v15, &buf, 0xCu);
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  CLSqliteDatabase::finalizeStatement(*(this + 1), v11, v12);
  buf = 0uLL;
  v38 = 0;
  std::stringbuf::str[abi:ne200100](&v32, &buf);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(buf);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "INSERT INTO ", 12);
  v17 = strlen(a2);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, a2, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Counts", 6);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " VALUES (", 9);
  v21 = MEMORY[0x259CA1DB0](v20, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v30, &buf);
  if (v38 >= 0)
  {
    v22 = &buf;
  }

  else
  {
    v22 = buf;
  }

  v23 = CLSqliteDatabase::prepareStatementNoCache(this, v22);
  v24 = v23;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(buf);
    if (v24)
    {
      goto LABEL_33;
    }
  }

  else if (v23)
  {
LABEL_33:
    CLSqliteDatabase::executeAndResetStatement(this, v24);
    CLSqliteDatabase::finalizeStatement(*(this + 1), v24, v25);
    CLSqliteDatabase::addCountTrigger(this, a2, 1);
    CLSqliteDatabase::addCountTrigger(this, a2, 0);
    goto LABEL_39;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v26 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_FAULT, "Couldn't prepare row count insertion statement", &buf, 2u);
  }

LABEL_39:
  v30[0] = *MEMORY[0x277D82818];
  v27 = *(MEMORY[0x277D82818] + 72);
  *(v30 + *(v30[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v31 = v27;
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v35);
  result = (*(*v4 + 24))(v4);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLSqliteDatabase::createTableIfNecessary_internal(uint64_t a1, char *a2, const char **a3, char **a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_FAULT, "Must provide a table name", v19, 2u);
    }

    goto LABEL_20;
  }

  if (*(a1 + 56))
  {
LABEL_20:
    TableIfSchemaDiffers = 0;
    goto LABEL_21;
  }

  v8 = *(a1 + 16);
  *v19 = v8;
  (*(*v8 + 16))(v8);
  v20 = 256;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  SoftwareVersionAndSerialNumberForTable = CLSqliteDatabase::getSoftwareVersionAndSerialNumberForTable(a1, a2, v17, __p);
  if (!CLSqliteDatabase::tableExists_internal(a1, a2) && SoftwareVersionAndSerialNumberForTable)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 136380675;
      v22 = a2;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "Table does not exist but its metadata does. table: %{private}s", buf, 0xCu);
    }

    CLSqliteDatabase::deleteRowFromTableInfo(a1, a2);
  }

  TableIfSchemaDiffers = CLSqliteDatabase::createTableIfSchemaDiffers(a1, a2, a3, a4, 0);
  if (TableIfSchemaDiffers)
  {
    CLSqliteDatabase::createRowInTableInfo(a1, a2);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  (*(*v8 + 24))(v8);
LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
  return TableIfSchemaDiffers;
}

uint64_t CLSqliteDatabase::createIndexIfNecessary(CLSqliteDatabase *this, const char *a2, CLSqliteDatabase *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  v71 = v6;
  (*(*v6 + 16))(v6);
  v72 = 256;
  if (!a3)
  {
    goto LABEL_97;
  }

  memset(&v70, 0, sizeof(v70));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v64);
  v7 = strlen(a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, a2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Index", 5);
  CLSqliteDatabase::indexColumnsToString(a3, &v59);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  v70 = v59;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v59);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59.__r_.__value_.__r.__words[2], "CREATE INDEX ", 13);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v64, v75);
  if (v76 >= 0)
  {
    v10 = v75;
  }

  else
  {
    v10 = *v75;
  }

  if (v76 >= 0)
  {
    v11 = HIBYTE(v76);
  }

  else
  {
    v11 = *&v75[8];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(*v75);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59.__r_.__value_.__r.__words[2], " ON ", 4);
  v13 = strlen(a2);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a2, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " (", 2);
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v70;
  }

  else
  {
    v16 = v70.__r_.__value_.__r.__words[0];
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v70.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ")", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v64, v75);
  if (v76 >= 0)
  {
    v19 = v75;
  }

  else
  {
    v19 = *v75;
  }

  CLSqliteDatabase::getElementCreateStatement(this, "index", v19, &v56);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(*v75);
  }

  v20 = v58;
  if ((v58 & 0x80u) != 0)
  {
    v20 = v57;
  }

  if (v20)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v59, v75);
    v21 = SHIBYTE(v76);
    v23 = *v75;
    v22 = *&v75[8];
    v24 = v58;
    if ((v58 & 0x80u) == 0)
    {
      v25 = &v56;
    }

    else
    {
      v24 = v57;
      v25 = v56;
    }

    if (v76 < 0)
    {
      v26 = *v75;
    }

    else
    {
      v22 = SHIBYTE(v76);
      v26 = v75;
    }

    if (v22 >= v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = v22;
    }

    v28 = v22 == v24;
    if (memcmp(v25, v26, v27))
    {
      v28 = 0;
    }

    if (v21 < 0)
    {
      operator delete(v23);
    }

    if (v28)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v29 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v64, v75);
        v30 = v76 >= 0 ? v75 : *v75;
        *buf = 136380675;
        *&buf[4] = v30;
        _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEBUG, "Index already exists; not re-creating. index: %{private}s", buf, 0xCu);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*v75);
        }
      }

      goto LABEL_89;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v33 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v64, buf);
      v34 = v74;
      v35 = *buf;
      v36 = v58;
      v37 = v56;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v59, __p);
      v38 = &v56;
      if (v36 < 0)
      {
        v38 = v37;
      }

      v39 = buf;
      if (v34 < 0)
      {
        v39 = v35;
      }

      *v75 = 136381187;
      v40 = __p;
      if (v55 < 0)
      {
        v40 = __p[0];
      }

      *&v75[4] = v39;
      *&v75[12] = 2081;
      *&v75[14] = v38;
      v76 = 2081;
      v77 = v40;
      _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_DEBUG, "Index already exists but is different; dropping. index: %{private}s, actual: %{private}s, expected: %{private}s", v75, 0x20u);
      if (v55 < 0)
      {
        operator delete(__p[0]);
      }

      if (v74 < 0)
      {
        operator delete(*buf);
      }
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v64, v75);
    if (v76 >= 0)
    {
      v41 = v75;
    }

    else
    {
      v41 = *v75;
    }

    CLSqliteDatabase::dropIndex(this, v41);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(*v75);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v31 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v64, v75);
      v32 = v76 >= 0 ? v75 : *v75;
      *buf = 136380675;
      *&buf[4] = v32;
      _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_DEBUG, "Index does not exist; creating. index: %{private}s", buf, 0xCu);
      if (SHIBYTE(v76) < 0)
      {
        operator delete(*v75);
      }
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v59, v75);
  if (v76 >= 0)
  {
    v42 = v75;
  }

  else
  {
    v42 = *v75;
  }

  v43 = CLSqliteDatabase::prepareStatementNoCache(this, v42);
  v44 = v43;
  if (SHIBYTE(v76) < 0)
  {
    operator delete(*v75);
    if (v44)
    {
      goto LABEL_81;
    }

LABEL_83:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v46 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v47 = &v70;
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v70.__r_.__value_.__r.__words[0];
      }

      *v75 = 136380931;
      *&v75[4] = a2;
      *&v75[12] = 2080;
      *&v75[14] = v47;
      _os_log_impl(&dword_258FE9000, v46, OS_LOG_TYPE_DEFAULT, "#warning Couldn't create index statement. table: %{private}s, columns: %s", v75, 0x16u);
    }

    goto LABEL_89;
  }

  if (!v43)
  {
    goto LABEL_83;
  }

LABEL_81:
  CLSqliteDatabase::executeAndResetStatement(this, v44);
  CLSqliteDatabase::finalizeStatement(*(this + 1), v44, v45);
LABEL_89:
  if (v58 < 0)
  {
    operator delete(v56);
  }

  v59.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v48 = v59.__r_.__value_.__r.__words[0];
  v49 = *(MEMORY[0x277D82818] + 72);
  v50 = *(MEMORY[0x277D82818] + 64);
  *(v59.__r_.__value_.__r.__words + *(v59.__r_.__value_.__r.__words[0] - 24)) = v50;
  v51 = v49;
  v59.__r_.__value_.__r.__words[2] = v49;
  v60 = MEMORY[0x277D82878] + 16;
  if (v62 < 0)
  {
    operator delete(v61[7].__locale_);
  }

  v60 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v61);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](&v63);
  v64[0] = v48;
  *(v64 + *(v48 - 24)) = v50;
  v65 = v51;
  v66 = MEMORY[0x277D82878] + 16;
  if (v68 < 0)
  {
    operator delete(v67[7].__locale_);
  }

  v66 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v67);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](&v69);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

LABEL_97:
  result = (*(*v6 + 24))(v6);
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25906F2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a53);
  if (*(v54 - 201) < 0)
  {
    operator delete(*(v54 - 224));
  }

  AutoLocker::~AutoLocker((v54 - 200));
  _Unwind_Resume(a1);
}

std::string *CLSqliteDatabase::indexColumnsToString@<X0>(CLSqliteDatabase *this@<X0>, std::string *a2@<X8>)
{
  result = std::string::basic_string[abi:ne200100]<0>(a2, "");
  if (this)
  {
    v6 = *this;
    if (*this)
    {
      v7 = 0;
      v8 = (this + 8);
      do
      {
        if (v7)
        {
          std::string::append(a2, ", ", 2uLL);
          v6 = *(v8 - 1);
        }

        v9 = strlen(v6);
        result = std::string::append(a2, v6, v9);
        v10 = *v8++;
        v6 = v10;
        --v7;
      }

      while (v10);
    }
  }

  return result;
}

void sub_25906F46C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLSqliteDatabase::dropIndex(CLSqliteDatabase *this, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v20[19] = v4;
  (*(*v4 + 16))(v4);
  v21 = 256;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "DROP INDEX ", 11);
  v6 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, buf);
  if (v23 >= 0)
  {
    v7 = buf;
  }

  else
  {
    v7 = *buf;
  }

  v8 = CLSqliteDatabase::prepareStatementNoCache(this, v7);
  v9 = v8;
  if (v23 < 0)
  {
    operator delete(*buf);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
LABEL_6:
    CLSqliteDatabase::executeAndResetStatement(this, v9);
    CLSqliteDatabase::finalizeStatement(*(this + 1), v9, v10);
    goto LABEL_12;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380675;
    *&buf[4] = a2;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "#warning Couldn't create drop index statement. index: %{private}s", buf, 0xCu);
  }

LABEL_12:
  v15[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v12;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v20);
  result = (*(*v4 + 24))(v4);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CLSqliteDatabase::executeAndResetStatement(CLSqliteDatabase *this, sqlite3_stmt *a2)
{
  v4 = *(this + 2);
  (*(*v4 + 16))(v4);
  v5 = sqlite3_step(a2);
  v6 = v5;
  v7 = v5 == 101;
  if (v5 != 101)
  {
    CLSqliteDatabase::displaySqlResult(v5, "sqlite3_step()", v5, a2);
    CLSqliteDatabase::handleSqlError(*(this + 1), this + 88, *(this + 56), v6);
  }

  v8 = sqlite3_reset(a2);
  v9 = v8;
  if (v8)
  {
    CLSqliteDatabase::displaySqlResult(v8, "sqlite3_reset()", v8, a2);
    CLSqliteDatabase::handleSqlError(*(this + 1), this + 88, *(this + 56), v9);
    v7 = 0;
  }

  (*(*v4 + 24))(v4);
  return v7;
}

void sub_25906F8F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AutoLocker::~AutoLocker(va);
  _Unwind_Resume(a1);
}

uint64_t CLSqliteDatabase::dropTrigger(CLSqliteDatabase *this, char *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v25[19] = v4;
  (*(*v4 + 16))(v4);
  v26 = 256;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "DROP TRIGGER ", 13);
  v6 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v6);
  CLSqliteDatabase::getElementCreateStatement(this, "trigger", a2, &buf);
  if (v28 < 0)
  {
    v11 = *(&buf + 1);
    operator delete(buf);
    if (v11)
    {
LABEL_3:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v20, &buf);
      if (v28 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      v8 = CLSqliteDatabase::prepareStatementNoCache(this, p_buf);
      v9 = v8;
      if (v28 < 0)
      {
        operator delete(buf);
        if (v9)
        {
          goto LABEL_8;
        }
      }

      else if (v8)
      {
LABEL_8:
        CLSqliteDatabase::executeAndResetStatement(this, v9);
        CLSqliteDatabase::finalizeStatement(*(this + 1), v9, v10);
        goto LABEL_20;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v16 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a2;
        v13 = "#warning Couldn't create drop trigger statement. trigger: %s";
        v14 = v16;
        v15 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  else if (v28)
  {
    goto LABEL_3;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = a2;
    v13 = "Trigger does not exist. trigger: %s";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
LABEL_19:
    _os_log_impl(&dword_258FE9000, v14, v15, v13, &buf, 0xCu);
  }

LABEL_20:
  v20[0] = *MEMORY[0x277D82818];
  v17 = *(MEMORY[0x277D82818] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v21 = v17;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v25);
  result = (*(*v4 + 24))(v4);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLSqliteDatabase::dropTable_internal(CLSqliteDatabase *this, char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  (*(*v4 + 16))(v4);
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
    *(buf.__r_.__value_.__r.__words + 4) = a2;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Dropping table. table: %{private}s", &buf, 0xCu);
  }

  CLSqliteDatabase::deleteRowFromTableInfo(this, a2);
  std::string::basic_string[abi:ne200100]<0>(&buf, "DROP TABLE IF EXISTS ");
  v6 = strlen(a2);
  std::string::append(&buf, a2, v6);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v8 = CLSqliteDatabase::prepareStatementNoCache(this, p_buf);
  CLSqliteDatabase::executeAndResetStatement(this, v8);
  CLSqliteDatabase::finalizeStatement(*(this + 1), v8, v9);
  CLSqliteDatabase::reduceFreePages(this, 0x7FFFFFFFFFFFFFFFLL);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  result = (*(*v4 + 24))(v4);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLSqliteDatabase::addCountTrigger(CLSqliteDatabase *this, const char *a2, int a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  v40[19] = v6;
  (*(*v6 + 16))(v6);
  v41 = 256;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v35);
  if (a3)
  {
    v7 = "Increment";
  }

  else
  {
    v7 = "Decrement";
  }

  if (a3)
  {
    v8 = "INSERT";
  }

  else
  {
    v8 = "DELETE";
  }

  if (a3)
  {
    v9 = "+";
  }

  else
  {
    v9 = "-";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "CREATE TRIGGER IF NOT EXISTS ", 29);
  v10 = strlen(a2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, a2, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v7, 9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "RowCount", 8);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, " AFTER ", 7);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v8, 6);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ON ", 4);
  v16 = strlen(a2);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a2, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " FOR EACH ROW BEGIN", 19);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, " UPDATE ", 8);
  v19 = strlen(a2);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, a2, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Counts", 6);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " SET ", 5);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Count", 5);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "=", 1);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Count", 5);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v9, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "1 WHERE rowid=1; END", 20);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v35, buf);
  if (v43 >= 0)
  {
    v27 = buf;
  }

  else
  {
    v27 = *buf;
  }

  v28 = CLSqliteDatabase::prepareStatementNoCache(this, v27);
  v29 = v28;
  if (v43 < 0)
  {
    operator delete(*buf);
    if (v29)
    {
      goto LABEL_15;
    }
  }

  else if (v28)
  {
LABEL_15:
    CLSqliteDatabase::executeAndResetStatement(this, v29);
    CLSqliteDatabase::finalizeStatement(*(this + 1), v29, v30);
    goto LABEL_21;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v31 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    *buf = 136380675;
    *&buf[4] = a2;
    _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_FAULT, "Couldn't create add count trigger statement. table: %{private}s", buf, 0xCu);
  }

LABEL_21:
  v35[0] = *MEMORY[0x277D82818];
  v32 = *(MEMORY[0x277D82818] + 72);
  *(v35 + *(v35[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v36 = v32;
  v37 = MEMORY[0x277D82878] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v40);
  result = (*(*v6 + 24))(v6);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLSqliteDatabase::createTable(uint64_t a1, const char *a2, const char **a3)
{
  v41[19] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v32 = v6;
  (*(*v6 + 16))(v6);
  v33 = 256;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    *&buf[4] = a2;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEBUG, "Creating table. table: %{private}s", buf, 0xCu);
  }

  if (a3 && *a3)
  {
    v8 = 0;
    v9 = (a3 + 6);
    do
    {
      v8 += *(v9 - 36);
      v10 = *v9;
      v9 += 6;
    }

    while (v10);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "CREATE TABLE ", 13);
    v12 = strlen(a2);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " (", 2);
    CLSqliteDatabase::columnsToString(a3, 1, v8 < 2, &__p);
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v30;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, p_p, v15);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (v8 >= 2)
    {
      v16 = &__p;
      CLSqliteDatabase::getPrimaryKeyDefinitionString(a3, &__p);
      if ((v31 & 0x80u) != 0)
      {
        v16 = __p;
      }

      v17 = strlen(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v16, v17);
      if (v31 < 0)
      {
        operator delete(__p);
      }
    }

    CLSqliteDatabase::getForeignKeyDefinitionString(a1, a3, &__p);
    if ((v31 & 0x80u) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v19 = v31;
    }

    else
    {
      v19 = v30;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v18, v19);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, ")", 1);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, &__p);
      v21 = (v31 & 0x80u) == 0 ? &__p : __p;
      *v34 = 136315138;
      v35 = v21;
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEBUG, "Schema statement created. schema: %s", v34, 0xCu);
      if (v31 < 0)
      {
        operator delete(__p);
      }
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, &__p);
    if ((v31 & 0x80u) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p;
    }

    v23 = CLSqliteDatabase::prepareStatementNoCache(a1, v22);
    v24 = v23;
    if (v31 < 0)
    {
      operator delete(__p);
      if (!v24)
      {
LABEL_46:
        *buf = *MEMORY[0x277D82818];
        v26 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        v37 = v26;
        v38 = MEMORY[0x277D82878] + 16;
        if (v40 < 0)
        {
          operator delete(v39[7].__locale_);
        }

        v38 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v39);
        std::iostream::~basic_iostream();
        MEMORY[0x259CA1EE0](v41);
        goto LABEL_49;
      }
    }

    else if (!v23)
    {
      goto LABEL_46;
    }

    sqlite3_step(v24);
    CLSqliteDatabase::finalizeStatement(*(a1 + 8), v24, v25);
    goto LABEL_46;
  }

LABEL_49:
  result = (*(*v6 + 24))(v6);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259070868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, pthread_mutex_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a20);
  AutoLocker::~AutoLocker(&a15);
  _Unwind_Resume(a1);
}

BOOL CLSqliteDatabase::bind(CLSqliteDatabase *this, sqlite3_stmt *a2, char *__s, const char *a4)
{
  v5 = a2;
  v20 = *MEMORY[0x277D85DE8];
  v7 = strlen(__s);
  v8 = sqlite3_bind_text(this, v5, __s, v7, 0);
  if (v8)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = 136381443;
      v13 = __s;
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v8;
      v18 = 2081;
      v19 = sqlite3_sql(this);
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "Could not bind. value: %{private}s, index: %d, sqlite_rc: %d, query: %{private}s", &v12, 0x22u);
    }
  }

  result = v8 == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CLSqliteDatabase::tableExists_internal(CLSqliteDatabase *this, const char *a2)
{
  v4 = *(this + 2);
  v23[19] = v4;
  (*(*v4 + 16))(v4);
  v24 = 256;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "SELECT name FROM ", 17);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "sqlite_master", 13);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " WHERE name='", 13);
  v8 = strlen(a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "';", 2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v18, __p);
  if (v17 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = CLSqliteDatabase::prepareStatementNoCache(this, v10);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = sqlite3_step(v11);
  CLSqliteDatabase::finalizeStatement(*(this + 1), v11, v13);
  v18[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v14;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v23);
  (*(*v4 + 24))(v4);
  return v12 == 100;
}

void sub_259070CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  AutoLocker::~AutoLocker((v16 - 72));
  _Unwind_Resume(a1);
}

uint64_t CLSqliteDatabase::getPrimaryKeyDefinitionString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v6 = 1;
    v5 = result;
    while (*v5)
    {
      v7 = *(v5 + 60);
      ++v6;
      v5 += 48;
      if (v7 == 1)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    goto LABEL_15;
  }

  v4 = 1;
  v5 = result;
LABEL_7:
  if (!*v5)
  {
LABEL_15:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", PRIMARY KEY (", 15);
  v9 = *v5;
  v10 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v11 = v2 + 48 * v4;
  if (*v11)
  {
    do
    {
      if (*(v11 + 12) == 1)
      {
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", ", 2);
        v13 = strlen(*v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, *v11, v13);
      }

      v14 = *(v11 + 48);
      v11 += 48;
    }

    while (v14);
  }

  v22 = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v16, a2);
  v16[0] = *MEMORY[0x277D82818];
  v15 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v15;
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x259CA1EE0](&v21);
}

void CLSqliteDatabase::columnsToString(const char **a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(a4, "");
  v7 = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 ^ 1;
    do
    {
      v11 = &a1[6 * v8];
      if (v8)
      {
        std::string::append(a4, ", ", 2uLL);
        v7 = *v11;
      }

      if (*(a4 + 23) >= 0)
      {
        v12 = *(a4 + 23);
      }

      else
      {
        v12 = *(a4 + 8);
      }

      v13 = strlen(v7);
      std::string::basic_string[abi:ne200100](&v32, v12 + v13);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v32;
      }

      else
      {
        v14 = v32.__r_.__value_.__r.__words[0];
      }

      if (v12)
      {
        if (*(a4 + 23) >= 0)
        {
          v15 = a4;
        }

        else
        {
          v15 = *a4;
        }

        memmove(v14, v15, v12);
      }

      v16 = v14 + v12;
      if (v13)
      {
        memmove(v16, v7, v13);
      }

      v16[v13] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v32;
      if (a2)
      {
        if (*(a4 + 23) >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = *(a4 + 8);
        }

        std::string::basic_string[abi:ne200100](&v32, v17 + 1);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v32;
        }

        else
        {
          v18 = v32.__r_.__value_.__r.__words[0];
        }

        if (v17)
        {
          if (*(a4 + 23) >= 0)
          {
            v19 = a4;
          }

          else
          {
            v19 = *a4;
          }

          memmove(v18, v19, v17);
        }

        *(&v18->__r_.__value_.__l.__data_ + v17) = 32;
        v20 = *(v11 + 2);
        v21 = "INTEGER";
        if (v20 != 1)
        {
          v22 = &off_2798D46B0;
          v23 = 5;
          do
          {
            v24 = v22;
            if (!--v23)
            {
              break;
            }

            v22 += 2;
          }

          while (*(v24 - 2) != v20);
          v21 = *v24;
        }

        v25 = strlen(v21);
        v26 = std::string::append(&v32, v21, v25);
        v27 = v26->__r_.__value_.__r.__words[0];
        v33[0] = v26->__r_.__value_.__l.__size_;
        *(v33 + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
        v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        v29 = v33[0];
        *a4 = v27;
        *(a4 + 8) = v29;
        *(a4 + 15) = *(v33 + 7);
        *(a4 + 23) = v28;
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }

      if (((v10 | v9) & 1) == 0)
      {
        if (*(v11 + 12) == 1)
        {
          std::string::append(a4, " PRIMARY KEY", 0xCuLL);
          if (*(v11 + 13) == 1)
          {
            std::string::append(a4, " AUTOINCREMENT", 0xEuLL);
          }

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }
      }

      ++v8;
      v7 = a1[6 * v8];
    }

    while (v7);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_259071284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLSqliteDatabase::getForeignKeyDefinitionString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37);
  if (a2)
  {
    v33 = a3;
    if (*a2)
    {
      do
      {
        if (*(a2 + 40) == 1)
        {
          if (!CLSqliteDatabase::isForeignKeyReferenceValid(a1, a2))
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              CLSqliteDatabase::init();
            }

            a3 = v33;
            v30 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
            {
              LOWORD(__p) = 0;
              v27 = "Foreign key reference and index check failed";
              v28 = v30;
              v29 = OS_LOG_TYPE_FAULT;
LABEL_31:
              _os_log_impl(&dword_258FE9000, v28, v29, v27, &__p, 2u);
            }

            goto LABEL_32;
          }

          v6 = *(a2 + 16);
          v7 = *(a2 + 24);
          v8 = *(a2 + 32);
          v9 = *(a2 + 36);
          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, ", FOREIGN KEY(", 14);
          v11 = strlen(*a2);
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, *a2, v11);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") REFERENCES ", 13);
          v14 = strlen(v6);
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v6, v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
          v17 = strlen(v7);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v7, v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ")", 1);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, " ON DELETE ", 11);
          std::string::basic_string[abi:ne200100]<0>(&__p, off_2798D46F8[v8]);
          if ((v36 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v36 & 0x80u) == 0)
          {
            v21 = v36;
          }

          else
          {
            v21 = v35;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, p_p, v21);
          if (v36 < 0)
          {
            operator delete(__p);
          }

          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, " ON UPDATE ", 11);
          std::string::basic_string[abi:ne200100]<0>(&__p, off_2798D46F8[v9]);
          if ((v36 & 0x80u) == 0)
          {
            v23 = &__p;
          }

          else
          {
            v23 = __p;
          }

          if ((v36 & 0x80u) == 0)
          {
            v24 = v36;
          }

          else
          {
            v24 = v35;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
          if (v36 < 0)
          {
            operator delete(__p);
          }
        }

        v25 = *(a2 + 48);
        a2 += 48;
      }

      while (v25);
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v37, v33);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v26 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p) = 0;
      v27 = "getForeignKeyDefinitionString: NULL column definition";
      v28 = v26;
      v29 = OS_LOG_TYPE_DEBUG;
      goto LABEL_31;
    }

LABEL_32:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  v37[0] = *MEMORY[0x277D82818];
  v31 = *(MEMORY[0x277D82818] + 72);
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v38 = v31;
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return MEMORY[0x259CA1EE0](&v42);
}

BOOL CLSqliteDatabase::getSoftwareVersionAndSerialNumberForTable(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 16);
  (*(*v8 + 16))(v8);
  v9 = CLSqliteDatabase::prepareSelectStatement(a1, off_2798D4610, "TableInfo", "TableName");
  CLSqliteDatabase::bind(v9, 1, a2, v10);
  v12 = sqlite3_step(v9);
  if (v12 == 100)
  {
    v13 = sqlite3_column_text(v9, 0);
    std::string::basic_string[abi:ne200100]<0>(buf, v13);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    v14 = sqlite3_column_text(v9, 1);
    std::string::basic_string[abi:ne200100]<0>(buf, v14);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *buf;
    *(a4 + 16) = *&buf[16];
  }

  CLSqliteDatabase::finalizeStatement(*(a1 + 8), v9, v11);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v15 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v16 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v16 = *v16;
    }

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v18 = a4;
    }

    else
    {
      v18 = *a4;
    }

    *buf = 136381699;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    *&buf[22] = 1024;
    v22 = v12;
    v23 = 2080;
    v24 = v17;
    v25 = 2081;
    v26 = v18;
    _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEBUG, "version and serial number. table: %{private}s, path: %s, sqlite_rc: %d, version: %s, serial number: %{private}s", buf, 0x30u);
  }

  (*(*v8 + 24))(v8);
  result = v12 == 100;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

CLSqliteDatabase *CLSqliteDatabase::prepareSelectStatement(CLSqliteDatabase *this, const char **a2, const char *a3, const char *a4)
{
  v38[19] = *MEMORY[0x277D85DE8];
  v8 = *(this + 2);
  v30 = v8;
  (*(*v8 + 16))(v8);
  v31 = 256;
  if (a3 && a4 && *a2)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34[2], "SELECT ", 7);
    v10 = strlen(*a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, *a2, v10);
    if (a2[1])
    {
      v11 = a2 + 2;
      do
      {
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34[2], ", ", 2);
        v13 = strlen(*(v11 - 1));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, *(v11 - 1), v13);
      }

      while (*v11++);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34[2], " FROM ", 6);
    v16 = strlen(a3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a3, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " WHERE ", 7);
    v19 = strlen(a4);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, a4, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "=?", 2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, __p);
    if (v29 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    v22 = CLSqliteDatabase::prepareStatementNoCache(this, v21);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    *buf = *MEMORY[0x277D82818];
    v23 = *(MEMORY[0x277D82818] + 72);
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
    *&v34[2] = v23;
    v35 = (MEMORY[0x277D82878] + 16);
    if (v37 < 0)
    {
      operator delete(v36[7].__locale_);
    }

    v35 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(v36);
    std::iostream::~basic_iostream();
    MEMORY[0x259CA1EE0](v38);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v24 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v25 = *a2;
      *buf = 136381187;
      *&buf[4] = a3;
      v33 = 2080;
      *v34 = v25;
      *&v34[8] = 2080;
      v35 = a4;
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_FAULT, "Invalid parameters. table: %{private}s, columnNames[0]: %s, key: %s", buf, 0x20u);
    }

    v22 = 0;
  }

  (*(*v8 + 24))(v8);
  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t CLSqliteDatabase::createRowInTableInfo(CLSqliteDatabase *this, char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v19 = v4;
  (*(*v4 + 16))(v4);
  v20 = 256;
  std::string::basic_string[abi:ne200100]<0>(v17, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  inserted = CLSqliteDatabase::prepareInsertStatement(this, "TableInfo", off_2798D4628, 1);
  CLSqliteDatabase::bind(inserted, 1, a2, v6);
  if (v18 >= 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v17[0];
  }

  CLSqliteDatabase::bind(inserted, 2, v8, v7);
  if (v16 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  CLSqliteDatabase::bind(inserted, 3, v10, v9);
  CLSqliteDatabase::executeAndResetStatement(this, inserted);
  CLSqliteDatabase::finalizeStatement(*(this + 1), inserted, v11);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v22 = a2;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEBUG, "Created row in TableInfo. table: %{private}s", buf, 0xCu);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  result = (*(*v4 + 24))(v4);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

CLSqliteDatabase *CLSqliteDatabase::prepareInsertStatement(CLSqliteDatabase *this, const char *a2, const char **a3, int a4)
{
  v37[19] = *MEMORY[0x277D85DE8];
  v8 = *(this + 2);
  v29 = v8;
  (*(*v8 + 16))(v8);
  v30 = 256;
  if (a2 && *a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33[2], "INSERT ", 7);
    if (a4)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33[2], "OR REPLACE ", 11);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33[2], "INTO ", 5);
    v10 = strlen(a2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a2, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " (", 2);
    v13 = strlen(*a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, *a3, v13);
    if (a3[1])
    {
      v14 = a3 + 2;
      v15 = 1;
      do
      {
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33[2], ", ", 2);
        v17 = strlen(*(v14 - 1));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, *(v14 - 1), v17);
        v18 = *v14++;
        ++v15;
      }

      while (v18);
    }

    else
    {
      v15 = 1;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33[2], ") VALUES (?", 11);
    if (v15 >= 2)
    {
      v22 = v15 + 1;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33[2], ", ?", 3);
        --v22;
      }

      while (v22 > 2);
    }

    LOBYTE(__p[0]) = 41;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33[2], __p, 1);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, __p);
    if (v28 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v21 = CLSqliteDatabase::prepareStatementNoCache(this, v23);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    *buf = *MEMORY[0x277D82818];
    v24 = *(MEMORY[0x277D82818] + 72);
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
    *&v33[2] = v24;
    v34 = MEMORY[0x277D82878] + 16;
    if (v36 < 0)
    {
      operator delete(v35[7].__locale_);
    }

    v34 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v35);
    std::iostream::~basic_iostream();
    MEMORY[0x259CA1EE0](v37);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v20 = *a3;
      *buf = 136380931;
      *&buf[4] = a2;
      v32 = 2080;
      *v33 = v20;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_FAULT, "Invalid parameters. table: %{private}s, columnNames[0]: %s", buf, 0x16u);
    }

    v21 = 0;
  }

  (*(*v8 + 24))(v8);
  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t CLSqliteDatabase::deleteRowFromTableInfo(CLSqliteDatabase *this, char *a2)
{
  v8 = *(this + 2);
  (*(*v8 + 16))(v8);
  v4 = CLSqliteDatabase::prepareDeleteStatement(this, "TableInfo", "TableName");
  CLSqliteDatabase::bind(v4, 1, a2, v5);
  CLSqliteDatabase::executeAndResetStatement(this, v4);
  CLSqliteDatabase::finalizeStatement(*(this + 1), v4, v6);
  return (*(*v8 + 24))(v8);
}

void sub_25907255C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AutoLocker::~AutoLocker(va);
  _Unwind_Resume(a1);
}

CLSqliteDatabase *CLSqliteDatabase::prepareDeleteStatement(CLSqliteDatabase *this, const char *a2, const char *a3)
{
  v29[19] = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  v21 = v6;
  (*(*v6 + 16))(v6);
  v22 = 256;
  if (a2 && a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25[2], "DELETE FROM ", 12);
    v8 = strlen(a2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " WHERE ", 7);
    v11 = strlen(a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a3, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "=?", 2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, __p);
    if (v20 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = CLSqliteDatabase::prepareStatementNoCache(this, v13);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    *buf = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
    *&v25[2] = v15;
    v26 = MEMORY[0x277D82878] + 16;
    if (v28 < 0)
    {
      operator delete(v27[7].__locale_);
    }

    v26 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v27);
    std::iostream::~basic_iostream();
    MEMORY[0x259CA1EE0](v29);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 136380931;
      *&buf[4] = a2;
      v24 = 2080;
      *v25 = a3;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "Invalid parameters. table: %{private}s, key: %s", buf, 0x16u);
    }

    v14 = 0;
  }

  (*(*v6 + 24))(v6);
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

CLSqliteDatabase *CLSqliteDatabase::prepareStatement(CLSqliteDatabase *this, sqlite3 *__s, const char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v4 = this;
    v12 = 0;
    ppStmt = 0;
    v5 = strlen(__s);
    v6 = sqlite3_prepare_v2(v4, __s, v5, &ppStmt, &v12);
    if (v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = sqlite3_errmsg(v4);
        *buf = 136381187;
        *&buf[4] = __s;
        v15 = 1024;
        v16 = v6;
        v17 = 2081;
        v18 = v8;
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "Could not prepare statement. query: %{private}s, sqlite_rc: %d, errmsg: %{private}s", buf, 0x1Cu);
      }

      v9 = sqlite3_db_filename(v4, 0);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = "";
      }

      std::string::basic_string[abi:ne200100]<0>(buf, v10);
      CLSqliteDatabase::handleSqlError(v4, buf, 0, v6);
      if (SBYTE3(v18) < 0)
      {
        operator delete(*buf);
      }

      this = 0;
    }

    else
    {
      this = ppStmt;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return this;
}

void CLSqliteDatabase::prepareScopedStatement(CLSqliteDatabase *this, sqlite3 *a2)
{
  (*(**(this + 2) + 16))(*(this + 2));
  CLSqliteDatabase::prepareStatementNoCache(this, a2);
  operator new();
}

void sub_259072B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x259CA1F90](v2, 0xA1C409BE6959DLL);
  AutoLocker::~AutoLocker(va);
  _Unwind_Resume(a1);
}

uint64_t CLSqliteDatabase::vacuum(CLSqliteDatabase *this, sqlite3 *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = +[ULTransactionManager shared];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN16CLSqliteDatabase6vacuumEP7sqlite3_block_invoke;
  v6[3] = &unk_2798D4650;
  v6[4] = &v7;
  v6[5] = this;
  [v3 performUnderTransaction:@"com.apple.milod.sqlitedb.vacuum" block:v6];

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_259072C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ___ZN16CLSqliteDatabase6vacuumEP7sqlite3_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  *v25 = 0;
  v5 = (a1 + 40);
  if (CLSqliteDatabase::execAndGetValue(*(a1 + 40), "pragma page_count;", v25, a4))
  {
    v7 = *v25;
  }

  else
  {
    v7 = -1;
  }

  if (CLSqliteDatabase::execAndGetValue(*v5, "pragma freelist_count;", v25, v6))
  {
    v8 = *v25;
  }

  else
  {
    v8 = -1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sqlite3_db_filename(*(a1 + 40), "main");
    *buf = 134218498;
    *v27 = v7;
    *&v27[8] = 2048;
    *&v27[10] = v8;
    *&v27[18] = 2080;
    *&v27[20] = v10;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "start vacuum. page_count: %lld, freelist_count: %lld, path: %s, ", buf, 0x20u);
  }

  if (CLSqliteDatabase::isIncrementalVacuumEnabled(*(a1 + 40), v11, v12))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sqlite3_db_filename(*(a1 + 40), "main");
      *buf = 134218498;
      *v27 = v7;
      *&v27[8] = 2048;
      *&v27[10] = v8;
      *&v27[18] = 2080;
      *&v27[20] = v14;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "incremental_vacuum. page_count: %lld, freelist_count: %lld, path: %s", buf, 0x20u);
    }

    v15 = CLSqliteDatabase::incrementalVacuum(*(a1 + 40), 0);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sqlite3_db_filename(*(a1 + 40), "main");
      *buf = 67109890;
      *v27 = 1;
      *&v27[4] = 2048;
      *&v27[6] = v7;
      *&v27[14] = 2048;
      *&v27[16] = v8;
      *&v27[24] = 2080;
      *&v27[26] = v17;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "vacuum. sqlite_rc: %d, page_count: %lld, freelist_count: %lld, path: %s", buf, 0x26u);
    }

    v15 = sqlite3_exec(*(a1 + 40), "VACUUM", 0, 0, 0) == 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v15;
  v18 = sqlite3_wal_checkpoint_v2(*(a1 + 40), 0, 3, 0, 0);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sqlite3_db_filename(*(a1 + 40), "main");
    *buf = 136315394;
    *v27 = v20;
    *&v27[8] = 1024;
    *&v27[10] = v18;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "wal_checkpoint. path: %s, sqlite_rc: %d", buf, 0x12u);
  }

  CLSqliteDatabase::execAndGetValue(*(a1 + 40), "pragma page_count;", v25, v21);
  result = CLSqliteDatabase::execAndGetValue(*(a1 + 40), "pragma freelist_count;", v25, v22);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CLSqliteDatabase::execAndGetValue(CLSqliteDatabase *this, sqlite3 *a2, char *a3, uint64_t *a4)
{
  v6 = CLSqliteDatabase::prepareStatement(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sqlite3_step(v6);
  v10 = v8 == 100;
  if (v8 == 100)
  {
    *a3 = sqlite3_column_int64(v7, 0);
  }

  CLSqliteDatabase::finalizeStatement(this, v7, v9);
  return v10;
}

BOOL CLSqliteDatabase::isIncrementalVacuumEnabled(CLSqliteDatabase *this, sqlite3 *a2, const char *a3)
{
  v4 = CLSqliteDatabase::prepareStatement(this, "pragma auto_vacuum;", a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v7 = sqlite3_step(v4) == 100 && sqlite3_column_int(v5, 0) == 2;
  CLSqliteDatabase::finalizeStatement(this, v5, v6);
  return v7;
}

BOOL CLSqliteDatabase::incrementalVacuum(CLSqliteDatabase *this, sqlite3 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "pragma incremental_vacuum(", 26);
  v5 = MEMORY[0x259CA1DE0](v4, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ");", 2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v16, &__p);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sqlite3_db_filename(this, "main");
    *buf = 134218242;
    *&buf[4] = a2;
    v23 = 2080;
    v24 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "incrementalVacuum. pages: %lld, path: %s", buf, 0x16u);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v16, buf);
  if (v25 >= 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  v9 = sqlite3_exec(this, v8, 0, 0, 0);
  if (v25 < 0)
  {
    operator delete(*buf);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "incrementalVacuum. result: %d", buf, 8u);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  v16[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v11;
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](&v21);
  v12 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

{
  v6 = *(this + 2);
  (*(*v6 + 16))(v6);
  v4 = CLSqliteDatabase::incrementalVacuum(*(this + 1), a2);
  (*(*v6 + 24))(v6);
  return v4;
}

void sub_25907347C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

void sub_259073584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AutoLocker::~AutoLocker(va);
  _Unwind_Resume(a1);
}

uint64_t CLSqliteDatabase::reduceFreePages(CLSqliteDatabase *this, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v15[7] = v4;
  v5 = (*(*v4 + 16))(v4);
  v16 = 256;
  if (*(this + 56) == 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v7 = (this + 88);
      if (*(this + 111) < 0)
      {
        v7 = *v7;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_FAULT, "Attempt to reduceFreePages on readonly database. path: %s", &buf, 0xCu);
    }

    v8 = 2;
  }

  else
  {
    v9 = CLSqliteDatabaseManager::instance(v5);
    if (CLSqliteDatabaseManager::useIncrementalVacuum(v9))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v18 = 0x2020000000;
      v19 = 0;
      v10 = +[ULTransactionManager shared];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = ___ZN16CLSqliteDatabase15reduceFreePagesEx_block_invoke;
      v15[3] = &unk_2798D4678;
      v15[4] = &buf;
      v15[5] = this;
      v15[6] = a2;
      [v10 performUnderTransaction:@"com.apple.milod.sqlitedb.IncrementalVacuum" block:v15];

      v8 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        _CLLogObjectForCategory_MicroLocation_Default();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        v12 = (this + 88);
        if (*(this + 111) < 0)
        {
          v12 = *v12;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "Attempt to reduceFreePages with incremental vacuum disabled. path: %s", &buf, 0xCu);
      }

      v8 = 3;
    }
  }

  (*(*v4 + 24))(v4);
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_259073814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, pthread_mutex_t *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  _Block_object_dispose(va1, 8);
  AutoLocker::~AutoLocker(va);
  _Unwind_Resume(a1);
}

void ___ZN16CLSqliteDatabase15reduceFreePagesEx_block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "reduceFreePages", buf, 2u);
  }

  *v17 = 0;
  if (CLSqliteDatabase::execAndGetValue(*(v2 + 8), "pragma page_count;", v17, v4))
  {
    v6 = *v17;
  }

  else
  {
    v6 = -1;
  }

  if (CLSqliteDatabase::execAndGetValue(*(v2 + 8), "pragma freelist_count;", v17, v5))
  {
    v7 = *v17;
  }

  else
  {
    v7 = -1;
  }

  v8 = v6 - v7;
  if (v6)
  {
    v9 = v8 / v6;
  }

  else
  {
    v9 = 1.0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (v2 + 88);
    if (*(v2 + 111) < 0)
    {
      v11 = *v11;
    }

    *buf = 136315906;
    v19 = v11;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "reduceFreePages. path: %s, page_count: %lld, freelist_count: %lld, loadFactor: %f", buf, 0x2Au);
  }

  if (v7)
  {
    if (v6 < 0 || (v7 & 0x8000000000000000) != 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        v15 = (v2 + 88);
        if (*(v2 + 111) < 0)
        {
          v15 = *v15;
        }

        *buf = 136315138;
        v19 = v15;
        _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_FAULT, "Cannot reduceFreePages. path: %s", buf, 0xCu);
      }
    }

    else
    {
      if (v9 > 0.85 && v7 < 0x200)
      {
        goto LABEL_39;
      }

      v12 = v9 >= 0.4 ? (v7 * 0.8) : (v7 - v8);
      v13 = a1[6];
      if (v12 > v13)
      {
        *(*(a1[4] + 8) + 24) = 1;
        v12 = v13;
      }

      if (CLSqliteDatabase::incrementalVacuum(v2, v12))
      {
        goto LABEL_39;
      }
    }

    *(*(a1[4] + 8) + 24) = 4;
  }

LABEL_39:
  v16 = *MEMORY[0x277D85DE8];
}

BOOL CLSqliteDatabase::setIncrementalVacuumEnabled(CLSqliteDatabase *this, sqlite3 *a2)
{
  v2 = a2;
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = "pragma auto_vacuum = 2;";
  }

  else
  {
    v4 = "pragma auto_vacuum = 0;";
  }

  v5 = sqlite3_exec(this, v4, 0, 0, 0);
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109376;
    v20 = v2;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "setIncrementalVacuumEnabled. enabled: %d, sqlite_rc: %d", &v19, 0xEu);
  }

  v8 = v5 == 0;
  if (v2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = CLSqliteDatabase::prepareStatement(this, "pragma auto_vacuum;", v7);
  if (v10)
  {
    v11 = v10;
    if (sqlite3_step(v10) == 100)
    {
      v13 = sqlite3_column_int(v11, 0);
      CLSqliteDatabase::finalizeStatement(this, v11, v14);
      if (v13 == v9)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    CLSqliteDatabase::finalizeStatement(this, v11, v12);
  }

  v8 = 0;
  v13 = -1;
LABEL_17:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v15 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109632;
    v20 = v13;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = 1;
    _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "Actual auto-vacuum state does not match desired state. actual: %d, expected: %d, vacuumNow: %d", &v19, 0x14u);
  }

  CLSqliteDatabase::vacuum(this, v16);
LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t CLSqliteDatabase::isForeignKeyReferenceValid(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v42[19] = v4;
  (*(*v4 + 16))(v4);
  v43 = 256;
  if (*a2 && *(a2 + 40) == 1 && (v5 = *(a2 + 24)) != 0 && (v6 = *(a2 + 16)) != 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "PRAGMA table_info(", 18);
    v8 = strlen(v6);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ")", 1);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v37, buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    v11 = CLSqliteDatabase::prepareStatementNoCache(a1, v10);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    while (1)
    {
      v13 = sqlite3_step(v11);
      if (v13 != 100)
      {
        break;
      }

      v14 = sqlite3_column_text(v11, 1);
      if (!strcmp(v5, v14))
      {
        v15 = *(a2 + 8);
        v16 = "INTEGER";
        if (v15 != 1)
        {
          v17 = &off_2798D46B0;
          v18 = 5;
          do
          {
            v19 = v17;
            if (!--v18)
            {
              break;
            }

            v17 += 2;
          }

          while (*(v19 - 2) != v15);
          v16 = *v19;
        }

        v20 = sqlite3_column_text(v11, 2);
        if (!strcmp(v16, v20))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            CLSqliteDatabase::init();
          }

          v21 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = v6;
            *&buf[12] = 2080;
            *&buf[14] = v5;
            _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEBUG, "Foreign key references are valid. FK_Table: %s, FK_Col: %s", buf, 0x16u);
          }

          break;
        }
      }
    }

    CLSqliteDatabase::finalizeStatement(*(a1 + 8), v11, v12);
    memset(buf, 0, sizeof(buf));
    std::stringbuf::str[abi:ne200100](&v39, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "SELECT indexInfo.name FROM pragma_index_list('", 46);
    v23 = strlen(v6);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v6, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "') AS indexList, pragma_index_info(indexList.name) AS indexInfo", 63);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v37, buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    v27 = CLSqliteDatabase::prepareStatementNoCache(a1, v25);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v28 = &unk_281455000;
    if (v13 == 100)
    {
      while (sqlite3_step(v27) == 100)
      {
        v29 = sqlite3_column_text(v27, 0);
        if (!strcmp(v5, v29))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            CLSqliteDatabase::init();
          }

          v30 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = v6;
            *&buf[12] = 2080;
            *&buf[14] = v5;
            _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEBUG, "Index exist. FK_Table: %s, FK_Col: %s", buf, 0x16u);
          }

          v31 = 1;
          v28 = &unk_281455000;
          goto LABEL_40;
        }
      }
    }

    v31 = 0;
LABEL_40:
    CLSqliteDatabase::finalizeStatement(*(a1 + 8), v27, v26);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v35 = *(v28 + 143);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v13 == 100;
      *&buf[8] = 1024;
      *&buf[10] = v31;
      _os_log_impl(&dword_258FE9000, v35, OS_LOG_TYPE_DEBUG, "ForeignKey reference. isReferenceValid: %d, isIndexed: %d", buf, 0xEu);
    }

    if (v13 == 100)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v37[0] = *MEMORY[0x277D82818];
    v36 = *(MEMORY[0x277D82818] + 72);
    *(v37 + *(v37[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v38 = v36;
    v39 = MEMORY[0x277D82878] + 16;
    if (v41 < 0)
    {
      operator delete(v40[7].__locale_);
    }

    v39 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v40);
    std::iostream::~basic_iostream();
    MEMORY[0x259CA1EE0](v42);
  }

  else
  {
    v32 = 0;
  }

  (*(*v4 + 24))(v4);
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_25()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__list_imp<sqlite3_stmt *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLSqliteDatabase::ColumnInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::stringbuf::str[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
}

uint64_t CLSqliteDatabaseManager::instance(CLSqliteDatabaseManager *this)
{
  if (CLSqliteDatabaseManager::instance(void)::pred != -1)
  {
    CLSqliteDatabaseManager::instance();
  }

  return CLSqliteDatabaseManager::fInstance;
}

void CLSqliteDatabaseManager::CLSqliteDatabaseManager(CLSqliteDatabaseManager *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  BasicMutex::BasicMutex((this + 24), "SqliteDatabaseManager", 1, 1);
  *(this + 20) = 256;
  v2 = sqlite3_shutdown();
  if (v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v2;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "sqlite3_shutdown failed. sqlite_rc: %d", buf, 8u);
    }
  }

  v4 = sqlite3_config(13, 512, 125);
  if (v4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v4;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "Can't set the sqlite lookaside buffers size to 64K. sqlite_rc: %d", buf, 8u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t CLSqliteDatabaseManager::openDatabase(unsigned __int8 *a1, int *a2, const char *a3, sqlite3 **a4)
{
  v69[20] = *MEMORY[0x277D85DE8];
  if (!BasicMutex::__assertOwned((a1 + 24)))
  {
    CLSqliteDatabaseManager::openDatabase();
  }

  if (*(a2 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = 6;
  }

  v8 = *a2;
  if (*a2 == 3)
  {
    v10 = 0;
    v11 = 3145728;
  }

  else if (v8 == 2)
  {
    v10 = 0;
    v11 = 0x200000;
  }

  else if (v8 == 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "Attempted to open an encrypted database", buf, 2u);
    }

    v10 = 0;
    v11 = 0x100000;
  }

  else
  {
    v10 = 1;
    v11 = 0x400000;
  }

  v53 = v7 | v11;
  v12 = *(MEMORY[0x277D82818] + 64);
  v50 = v12;
  v51 = *MEMORY[0x277D82818];
  v49 = *(MEMORY[0x277D82818] + 72);
  while (1)
  {
    while (1)
    {
      if (a3[23] >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      v14 = sqlite3_open_v2(v13, a4, v53 | 0x20000, 0);
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (a3[23] >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        *buf = 67109378;
        *&buf[4] = v14;
        v61 = 2080;
        *v62 = v16;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "openDatabase. sqlite_rc: %d, path: %s", buf, 0x12u);
      }

      if (v14)
      {
        goto LABEL_105;
      }

      if ((a2[2] & 1) == 0)
      {
        CLSqliteDatabase::setIncrementalVacuumEnabled(*a4, a1[41]);
      }

      v14 = sqlite3_exec(*a4, "pragma page_size = 4096;", 0, 0, 0);
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v14;
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_INFO, "pragma page_size = 4096. sqlite_rc: %d", buf, 8u);
      }

      if (v14)
      {
        goto LABEL_105;
      }

      if (a2[2])
      {
        v14 = 0;
      }

      else
      {
        v14 = sqlite3_exec(*a4, "pragma journal_mode=WAL;", 0, 0, 0);
        if (onceToken_MicroLocation_Default != -1)
        {
          CLSqliteDatabaseManager::CLSqliteDatabaseManager();
        }

        v18 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_INFO, "pragma journal_mode=WAL. sqlite_rc: %d", buf, 8u);
        }
      }

      if (v14)
      {
        v19 = 1;
      }

      else
      {
        v19 = v10;
      }

      if ((v19 & 1) == 0)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
        v20 = a1[40];
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62[6], "pragma secure_delete = ", 23);
        v22 = MEMORY[0x259CA1D80](v21, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ";", 1);
        if ((v68 & 0x10) != 0)
        {
          v24 = v67;
          if (v67 < v64)
          {
            v67 = v64;
            v24 = v64;
          }

          locale = v63[4].__locale_;
        }

        else
        {
          if ((v68 & 8) == 0)
          {
            v23 = 0;
            v55 = 0;
LABEL_59:
            *(&__dst + v23) = 0;
            if (v55 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            v14 = sqlite3_exec(*a4, p_dst, 0, 0, 0);
            if (onceToken_MicroLocation_Default != -1)
            {
              CLSqliteDatabaseManager::CLSqliteDatabaseManager();
            }

            v27 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *v56 = 67109376;
              v57 = v20;
              v58 = 1024;
              v59 = v14;
              _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_INFO, "pragma secure_delete. useSecureDelete: %d, sqlite_rc: %d", v56, 0xEu);
            }

            if (v55 < 0)
            {
              operator delete(__dst);
            }

            *buf = v51;
            *&buf[*(v51 - 24)] = v50;
            *&v62[6] = v49;
            *&v62[14] = MEMORY[0x277D82878] + 16;
            if (v66 < 0)
            {
              operator delete(__p);
            }

            *&v62[14] = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v63);
            std::iostream::~basic_iostream();
            MEMORY[0x259CA1EE0](v69);
            goto LABEL_71;
          }

          locale = v63[1].__locale_;
          v24 = v63[3].__locale_;
        }

        v23 = v24 - locale;
        if ((v24 - locale) >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v23 >= 0x17)
        {
          operator new();
        }

        v55 = v24 - locale;
        if (v23)
        {
          memmove(&__dst, locale, v23);
        }

        goto LABEL_59;
      }

LABEL_71:
      if (v14)
      {
        goto LABEL_105;
      }

      v28 = *a4;
      if (*(a2 + 8) == 1)
      {
        v14 = sqlite3_exec(v28, "pragma cache_size = 5;", 0, 0, 0);
        if (onceToken_MicroLocation_Default != -1)
        {
          CLSqliteDatabaseManager::CLSqliteDatabaseManager();
        }

        v29 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_INFO, "pragma cache_size = 5. sqlite_rc: %d", buf, 8u);
        }

        goto LABEL_87;
      }

      v14 = sqlite3_exec(v28, "pragma cache_size = 50;", 0, 0, 0);
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v30 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v14;
        _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_INFO, "pragma cache_size = 50. sqlite_rc: %d", buf, 8u);
      }

      if (!v14)
      {
        break;
      }

LABEL_105:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v36 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *__error();
        *buf = 67109376;
        *&buf[4] = v37;
        v61 = 1024;
        *v62 = v14;
        _os_log_impl(&dword_258FE9000, v36, OS_LOG_TYPE_DEFAULT, "failed to obtain database handle. errno: %d, sqlite_rc: %d", buf, 0xEu);
      }

      v38 = sqlite3_close(*a4);
      if (v38)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLSqliteDatabaseManager::CLSqliteDatabaseManager();
        }

        v39 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          *&buf[4] = v38;
          _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_FAULT, "Failed to close partially opened database. sqlite_rc: %d", buf, 8u);
        }
      }

      *a4 = 0;
      if (v14 != 10 && v14 != 13)
      {
        goto LABEL_132;
      }

      sleepAfterSqliteReadOnlyMismatch();
    }

    v14 = sqlite3_exec(*a4, "pragma cache_spill = 500;", 0, 0, 0);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v31 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_INFO, "pragma cache_spill = 500. sqlite_rc: %d", buf, 8u);
    }

LABEL_87:
    if (v14)
    {
      goto LABEL_105;
    }

    v14 = sqlite3_exec(*a4, "pragma recursive_triggers = true;", 0, 0, 0);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v32 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_INFO, "pragma recursive_triggers = true. sqlite_rc: %d", buf, 8u);
    }

    if (v14)
    {
      goto LABEL_105;
    }

    sqlite3_limit(*a4, 10, 10);
    v33 = sqlite3_limit(*a4, 10, -1);
    if (v33 != 10)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v34 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        *&buf[4] = 10;
        v61 = 1024;
        *v62 = v33;
        _os_log_impl(&dword_258FE9000, v34, OS_LOG_TYPE_FAULT, "Trigger depth. expected: %d, actual: %d", buf, 0xEu);
      }
    }

    v14 = sqlite3_extended_result_codes(*a4, 1);
    if (v14)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v35 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        *&buf[4] = v14;
        _os_log_impl(&dword_258FE9000, v35, OS_LOG_TYPE_FAULT, "Failed to enable extended result codes. sqlite_rc: %d", buf, 8u);
      }

      goto LABEL_105;
    }

    LODWORD(__dst) = -1;
    v40 = sqlite3_file_control(*a4, "main", 4, &__dst);
    v41 = sqlite3_db_readonly(*a4, "main");
    if (a2[2])
    {
      break;
    }

    v42 = v41;
    if (v41 <= 0)
    {
      break;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v43 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v44 = *(a2 + 8);
      *buf = 67109888;
      *&buf[4] = v44;
      v61 = 1024;
      *v62 = v42;
      *&v62[4] = 1024;
      *&v62[6] = __dst;
      *&v62[10] = 1024;
      *&v62[12] = v40;
      _os_log_impl(&dword_258FE9000, v43, OS_LOG_TYPE_FAULT, "Database opened with read/write access was found to be read-only. properties.readOnly: %d, sqlite3_db_readonly: %d, last POSIX errNo: %d, File control rc: %d", buf, 0x1Au);
    }

    v45 = sqlite3_close(*a4);
    if (v45)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v46 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        *&buf[4] = v45;
        _os_log_impl(&dword_258FE9000, v46, OS_LOG_TYPE_FAULT, "Failed to close partially opened database. sqlite_rc: %d", buf, 8u);
      }
    }

    *a4 = 0;
    sleepAfterSqliteReadOnlyMismatch();
  }

  v14 = 0;
LABEL_132:
  v47 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_2590753E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a25, MEMORY[0x277D82818]);
  MEMORY[0x259CA1EE0](va);
  _Unwind_Resume(a1);
}

uint64_t CLSqliteDatabaseManager::openDatabase(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 24);
  v31 = a1 + 24;
  (*(v8 + 16))();
  v33 = 256;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabaseManager::CLSqliteDatabaseManager();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    buf[0] = 136315138;
    *&buf[1] = v10;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "Opening database. path: %s", buf, 0xCu);
  }

  v11 = std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>(a1, a3);
  v12 = a1 + 8;
  if (a1 + 8 != v11)
  {
    v13 = 0;
    goto LABEL_26;
  }

  memset(&v30, 0, sizeof(v30));
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  std::string::operator=(&v30, a3);
  v25 = 0;
  v22 = *a2;
  v23 = *(a2 + 4);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a2[2], a2[3]);
  }

  else
  {
    __p = *(a2 + 2);
  }

  v14 = CLSqliteDatabaseManager::openDatabase(a1, &v22, a3, &v25);
  v13 = v14;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_21:
    operator new();
  }

  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v25)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_FAULT, "openDatabase failed to open a connection and then to clean up after itself", buf, 2u);
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

LABEL_26:
  if (v11 == v12)
  {
    goto LABEL_35;
  }

  v16 = *(v11 + 56);
  *(a4 + 16) = *(v11 + 72);
  *a4 = v16;
  std::string::operator=((a4 + 24), (v11 + 80));
  ++*(v11 + 104);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabaseManager::CLSqliteDatabaseManager();
  }

  v17 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    v19 = *(v11 + 104);
    buf[0] = 136315394;
    *&buf[1] = v18;
    v35 = 1024;
    v36 = v19;
    _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_INFO, "Reference count increased. path: %s, referenceCount: %d", buf, 0x12u);
  }

  if ((v33 & 0x100) != 0)
  {
LABEL_35:
    if (v33)
    {
      pthread_mutex_unlock(v32);
    }

    else
    {
      (*(*v31 + 24))(v31);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t CLSqliteDatabaseManager::closeDatabase(CLSqliteDatabaseManager *this, sqlite3 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = this + 24;
  (*(*(this + 3) + 16))(this + 24);
  v5 = *this;
  if (*this != (this + 8))
  {
    while (*(v5 + 7) != a2)
    {
      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
      if (v7 == (this + 8))
      {
        goto LABEL_28;
      }
    }

    --*(v5 + 26);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabaseManager::CLSqliteDatabaseManager();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v10 = (v5 + 112);
      if (*(v5 + 135) < 0)
      {
        v10 = *v10;
      }

      v11 = *(v5 + 26);
      *buf = 136315394;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "Reference count decreased. path: %s, referenceCount: %d", buf, 0x12u);
    }

    if (!*(v5 + 26))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabaseManager::CLSqliteDatabaseManager();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (v5 + 112);
        if (*(v5 + 135) < 0)
        {
          v13 = *v13;
        }

        *buf = 136315138;
        v19 = v13;
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "Destroying database. path: %s", buf, 0xCu);
      }

      sqlite3_close(a2);
      v14 = *(v5 + 8);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v15 = *(v5 + 9);
      if (v15)
      {
        MEMORY[0x259CA1F90](v15, 0x1000C4077774924);
      }

      std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::erase(this, v5);
    }
  }

LABEL_28:
  result = (*(*v4 + 24))(v4);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_26()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

std::string *std::pair<std::string,CLSqliteDatabaseManager::ConnectionState>::pair[abi:ne200100]<std::string const&,CLSqliteDatabaseManager::ConnectionState&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *a3;
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
  *&this[1].__r_.__value_.__l.__data_ = v6;
  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    this[2].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[2].__r_.__value_.__l.__data_ = v7;
  }

  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a3 + 12);
  if (*(a3 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a3 + 7), *(a3 + 8));
  }

  else
  {
    v8 = *(a3 + 56);
    this[4].__r_.__value_.__r.__words[0] = *(a3 + 9);
    *&this[3].__r_.__value_.__r.__words[1] = v8;
  }

  return this;
}

void sub_259075E00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,CLSqliteDatabaseManager::ConnectionState>::~pair(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void CLSqliteDatabaseManager::ConnectionState::~ConnectionState(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,CLSqliteDatabaseManager::ConnectionState>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,CLSqliteDatabaseManager::ConnectionState>,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__emplace_unique_key_args<std::string,std::pair<std::string,CLSqliteDatabaseManager::ConnectionState>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,CLSqliteDatabaseManager::ConnectionState>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void CLSqliteStatement::~CLSqliteStatement(CLSqliteDatabase **this)
{
  *this = &unk_286A55930;
  CLSqliteDatabase::unlock(this[1]);
}

{
  CLSqliteStatement::~CLSqliteStatement(this);

  JUMPOUT(0x259CA1F90);
}

void CLSqliteFinalizingStatement::CLSqliteFinalizingStatement(CLSqliteFinalizingStatement *this, CLSqliteDatabase *a2, sqlite3_stmt *a3)
{
  *this = &unk_286A55930;
  *(this + 1) = a2;
  *(this + 2) = a3;
  CLSqliteDatabase::lock(a2);
  *this = &unk_286A55950;
}

void CLSqliteFinalizingStatement::~CLSqliteFinalizingStatement(CLSqliteFinalizingStatement *this)
{
  *this = &unk_286A55950;
  v2 = sqlite3_finalize(*(this + 2));
  *(this + 2) = 0;
  if (v2)
  {
    CLSqliteDatabase::displaySqlResult(*(this + 1), "sqlite3_finalize()", v2, 0);
    CLSqliteDatabase::handleSqlError(*(this + 1), v2);
  }

  CLSqliteStatement::~CLSqliteStatement(this);
}

{
  CLSqliteFinalizingStatement::~CLSqliteFinalizingStatement(this);

  JUMPOUT(0x259CA1F90);
}

void sub_259076528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ULHomeSlamModel *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::unique_ptr<ULSqliteDatabase>::~unique_ptr[abi:ne200100](&a10);
  v21 = a11;
  a11 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ULHomeSlamModel **std::unique_ptr<ULSqliteDatabase>::~unique_ptr[abi:ne200100](ULHomeSlamModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud(v2);
    MEMORY[0x259CA1F90](TrajectoryPointCloud, 0x20C4093837F09);
  }

  return a1;
}

void sub_2590767E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  *v17 = 0;
  (*(*v18 + 8))(v18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_27()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_259078020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_28()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_259078354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259078738(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_29()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULSqliteDatabase::numEntries(ULSqliteDatabase *this, const char *__s)
{
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "SELECT COUNT(*) FROM ");
  v4 = strlen(__s);
  v5 = std::string::append(&__p, __s, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10 = v5->__r_.__value_.__r.__words[2];
  *v9 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 >= 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = v9[0];
  }

  CLSqliteDatabase::prepareScopedStatement(this->var0, v7);
}

void sub_2590789B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_30()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t boost::uuids::string_generator::operator()<std::__wrap_iter<char const*>>(boost::uuids::string_generator *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    goto LABEL_31;
  }

  v5 = (a2 + 1);
  v6 = *a2;
  if (v6 == 123)
  {
    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v5 = (a2 + 2);
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    do
    {
      if (v8 == 4)
      {
        if (v7 != 45)
        {
          v9 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v12 = v8 == 6 || (v8 & 0x7FFFFFFD) == 8;
        if ((v12 & v9) != 1)
        {
          goto LABEL_23;
        }

        if (v7 != 45)
        {
          goto LABEL_31;
        }
      }

      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v13 = *v5++;
      v7 = v13;
      v9 = 1;
LABEL_23:
      value = boost::uuids::string_generator::get_value(this, v7);
      *(v19 + v8) = value;
      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v15 = *v5++;
      v7 = v15;
      *(v19 + v8++) = boost::uuids::string_generator::get_value(this, v15) | (16 * value);
    }

    while (!v8);
    if (v8 == 16)
    {
      break;
    }

    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v10 = *v5++;
    v7 = v10;
  }

  if (v6 == 123 && (v5 == a3 || (v16 = *v5, ++v5, v16 != 125)) || v5 != a3)
  {
LABEL_31:
    boost::uuids::string_generator::throw_invalid(this);
  }

  result = v19[0];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULRecordingEventDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRecordingEventDO>,ULRecordingEventDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      v10 = *(v6 + v7);
      *(v9 + 16) = *(v6 + v7 + 16);
      *v9 = v10;
      if (*(v6 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external((v9 + 24), *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v11 = *(v8 + 24);
        *(v9 + 40) = *(v8 + 40);
        *(v9 + 24) = v11;
      }

      v12 = a4 + v7;
      v13 = *(v8 + 48);
      *(v12 + 60) = *(v8 + 60);
      *(v12 + 48) = v13;
      CLMicroLocationProto::RecordingEvent::RecordingEvent((a4 + v7 + 80), (v6 + v7 + 80));
      v14 = *(v8 + 224);
      *(v12 + 240) = *(v8 + 240);
      *(v12 + 224) = v14;
      v7 += 248;
    }

    while (v8 + 248 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULRecordingEventDO,0>(v6);
      v6 += 248;
    }
  }
}

void sub_259078D34(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 248;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULRecordingEventDO,0>(v4);
      v4 -= 248;
      v5 += 248;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<ULRecordingEventDO,0>(uint64_t a1)
{
  CLMicroLocationProto::RecordingEvent::~RecordingEvent((a1 + 80));
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<ULRecordingEventDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    std::__destroy_at[abi:ne200100]<ULRecordingEventDO,0>(i - 248);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 248;
        std::__destroy_at[abi:ne200100]<ULRecordingEventDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULMeasurementDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMeasurementDO>,ULMeasurementDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      v10 = *(v6 + v7 + 16);
      *v9 = *(v6 + v7);
      *(v9 + 16) = v10;
      CLMicroLocationProto::Measurement::Measurement((a4 + v7 + 32), (v6 + v7 + 32));
      *(v9 + 112) = *(v6 + v7 + 112);
      v7 += 120;
    }

    while (v8 + 120 != a3);
    while (v6 != a3)
    {
      CLMicroLocationProto::Measurement::~Measurement((v6 + 32));
      v6 += 120;
    }
  }
}

void sub_259078F88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 88);
    do
    {
      CLMicroLocationProto::Measurement::~Measurement(v5);
      v5 = (v6 - 120);
      v4 += 120;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ULMeasurementDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    CLMicroLocationProto::Measurement::~Measurement((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 120;
        CLMicroLocationProto::Measurement::~Measurement((v4 - 88));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      *(a4 + 56) = *(v6 + 56);
      v9 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 64) = v9;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = 0;
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULServiceDO,0>(v5);
      v5 += 88;
    }
  }
}

void std::__destroy_at[abi:ne200100]<ULServiceDO,0>(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<ULServiceDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:ne200100]<ULServiceDO,0>(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 88;
        std::__destroy_at[abi:ne200100]<ULServiceDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULLoiDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULLoiDO>,ULLoiDO*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      *(a4 + 32) = *(v6 + 4);
      *a4 = v7;
      *(a4 + 16) = v8;
      v9 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 40) = v9;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 5) = 0;
      v6 += 4;
      a4 += 64;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 63) < 0)
      {
        operator delete(v5[5]);
      }

      v5 += 8;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULLoiDO>,ULLoiDO*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULLoiDO>,ULLoiDO*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULLoiDO>,ULLoiDO*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULLoiDO>,ULLoiDO*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 64;
  }
}

uint64_t std::__split_buffer<ULLoiDO>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULLoiDO>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULLoiDO>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULLoiDO>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULLoiDO>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      v9 = (a4 + v7 + 8);
      if (*(v6 + v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      CLMicroLocationProto::RapportDevice::RapportDevice((a4 + v7 + 32), (v6 + v7 + 32));
      *(a4 + v7 + 64) = *(v8 + 64);
      v7 += 80;
    }

    while (v8 + 80 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v6);
      v6 += 80;
    }
  }
}

void sub_259079688(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<ULRapportDO,0>(uint64_t a1)
{
  CLMicroLocationProto::RapportDevice::~RapportDevice((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<ULRapportDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:ne200100]<ULRapportDO,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULAssociatedStateDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 72);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 49);
    v1 -= 9;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULAssociatedStateDO>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULAssociatedStateDO>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 9;
      *(a1 + 16) = v2 - 9;
      if (*(v2 - 49) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULAssociatedStateDO>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULAssociatedStateDO>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 49);
    v3 -= 9;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>,ULBluetoothIdentityDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      *(a4 + 64) = *(v6 + 64);
      v6 += 72;
      a4 += 72;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v5);
      v5 += 72;
    }
  }
}

void std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULConfigurationDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULConfigurationDO>,ULConfigurationDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      v9 = (a4 + v7 + 8);
      if (*(v6 + v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      v12 = *(v8 + 32);
      *(v11 + 48) = *(v8 + 48);
      *(v11 + 32) = v12;
      CLMicroLocationProto::Configuration::Configuration((a4 + v7 + 56), (v6 + v7 + 56));
      v7 += 112;
    }

    while (v8 + 112 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULConfigurationDO,0>(v6);
      v6 += 112;
    }
  }
}

void sub_259079E18(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 112;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULConfigurationDO,0>(v4);
      v4 -= 112;
      v5 += 112;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<ULConfigurationDO,0>(uint64_t a1)
{
  CLMicroLocationProto::Configuration::~Configuration((a1 + 56));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<ULConfigurationDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    std::__destroy_at[abi:ne200100]<ULConfigurationDO,0>(i - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 112;
        std::__destroy_at[abi:ne200100]<ULConfigurationDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

CLMicroLocationProto::Model *ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(CLMicroLocationProto::Model *a1, CLMicroLocationProto::Model *a2)
{
  CLMicroLocationProto::Model::Model(a1);
  CLMicroLocationProto::Model::Swap(v4, a2);
  return a1;
}

{
  CLMicroLocationProto::Model::Model(a1);
  CLMicroLocationProto::Model::Swap(v4, a2);
  return a1;
}

unsigned int *std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](unsigned int *result)
{
  v1 = result;
  v2 = result[52];
  if (v2 != -1)
  {
    result = off_286A55A08[v2](&v3, result);
  }

  v1[52] = -1;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULModelDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULModelDO>,ULModelDO*>(int a1, ULModelDO *a2, ULModelDO *a3, ULModelDO *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      ULModelDO::ULModelDO(this, v8);
      v8 += 20;
      this += 20;
      v7 -= 320;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULModelDO,0>(v6);
      v6 += 20;
    }
  }
}

void sub_25907A114(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 320;
    do
    {
      std::__destroy_at[abi:ne200100]<ULModelDO,0>(v4);
      v4 -= 320;
      v2 += 320;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void ULModelDO::ULModelDO(ULModelDO *this, const ULModelDO *a2)
{
  v4 = *a2;
  *(this + 12) = *(a2 + 12);
  *this = v4;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](this[2].var0.data, &a2[2]);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&this[15].var0.data[8], &a2[15].var0.data[8]);
  v5 = *(&a2[17] + 8);
  v6 = *(&a2[18] + 8);
  this[19].var0.data[8] = a2[19].var0.data[8];
  *(this + 280) = v5;
  *(this + 296) = v6;
}

unsigned int *std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](unsigned int *a1, uint64_t a2)
{
  *a1 = 0;
  a1[52] = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1> const&>(unsigned int *a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 208);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286A55A20[v5])(&v6, a2);
    a1[52] = v5;
  }

  return result;
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_25907A2A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

unsigned int *std::__destroy_at[abi:ne200100]<ULModelDO,0>(uint64_t a1)
{
  if (*(a1 + 272) == 1 && *(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 32));
}

uint64_t std::__split_buffer<ULModelDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 320;
    std::__destroy_at[abi:ne200100]<ULModelDO,0>(i - 320);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 320;
        std::__destroy_at[abi:ne200100]<ULModelDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULEventLogDO>,ULEventLogDO*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULEventLogDO>,ULEventLogDO*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<ULEventLogDO>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULEventLogDO>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULEventLogDO>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULCustomLoiDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ULConfigurationDO::ULConfigurationDO(uint64_t a1, __int128 *a2, CLMicroLocationProto::Configuration *a3, uint64_t a4, uint64_t a5)
{
  *a1 = *(a3 + 1);
  v6 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = *(a3 + 10);
  CLMicroLocationProto::Configuration::Configuration((a1 + 56), a3);
  return a1;
}

void sub_25907A654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULMeasurementDO::ULMeasurementDO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CLMicroLocationProto::Measurement *a5, uint64_t a6, double a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a7;
  *(a1 + 24) = a4;
  CLMicroLocationProto::Measurement::Measurement((a1 + 32), a5);
  if ((a6 & 0x100000000) != 0)
  {
    v9 = a6;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 112) = v9;
  return a1;
}

uint64_t ULMeasurementDO::ULMeasurementDO(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  CLMicroLocationProto::Measurement::Measurement((a1 + 32));
  *(a1 + 112) = *(a2 + 112);
  CLMicroLocationProto::Measurement::Swap((a1 + 32), (a2 + 32));
  return a1;
}

uint64_t ULRecordingEventDO::ULRecordingEventDO(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5, CLMicroLocationProto::RecordingEvent *a6, __int128 *a7, int a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a9;
  v14 = *a4;
  *(a1 + 40) = *(a4 + 2);
  *(a1 + 24) = v14;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 48) = a11;
  *(a1 + 56) = a12;
  *(a1 + 64) = a10;
  *(a1 + 72) = a5;
  CLMicroLocationProto::RecordingEvent::RecordingEvent((a1 + 80), a6);
  v15 = *a7;
  *(a1 + 240) = *(a7 + 16);
  *(a1 + 224) = v15;
  return a1;
}

{
  return ULRecordingEventDO::ULRecordingEventDO(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_25907A7A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void *ULLabelDataWiFi::toProtobuf@<X0>(ULLabelDataWiFi *this@<X0>, void *a2@<X8>)
{
  result = CLMicroLocationProto::ULLabelDataWiFi::ULLabelDataWiFi(a2);
  var1 = this->var1;
  *(result + 5) |= 1u;
  result[1] = var1;
  return result;
}

ULLabelDataWiFi *ULLabelDataWiFi::fromProtobuf@<X0>(ULLabelDataWiFi *this@<X0>, void *a2@<X8>)
{
  var1 = this->var1;
  *a2 = &unk_286A55A48;
  a2[1] = var1;
  return this;
}

void ULLabelDataWiFi::operator std::string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v4, *(a1 + 8));
  v3 = std::string::insert(&v4, 0, "rssi: ", 6uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25907A8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(uint64_t a1, void *a2, _OWORD *a3, CLMicroLocationProto::AnchorAppearanceConfiguration *a4)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration((a1 + 24), a4);
  return a1;
}

uint64_t ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration((a1 + 24), (a2 + 24));
  return a1;
}

void ULAssociatedStateDO::ULAssociatedStateDO(std::string *this, __int128 *a2, _OWORD *a3, std::string::size_type *a4, std::string::value_type a5, std::string::size_type *a6, int a7, int a8)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v15 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v15;
  }

  *&this[1].__r_.__value_.__l.__data_ = *a3;
  this[1].__r_.__value_.__r.__words[2] = *a4;
  this[2].__r_.__value_.__s.__data_[0] = a5;
  this[2].__r_.__value_.__l.__size_ = *a6;
  LODWORD(this[2].__r_.__value_.__r.__words[2]) = a7;
  HIDWORD(this[2].__r_.__value_.__r.__words[2]) = a8;
}

__n128 ULBLEMeasurementDO::ULBLEMeasurementDO(uint64_t a1, void *a2, int a3, __n128 *a4, _WORD *a5)
{
  *a1 = *a2;
  *(a1 + 8) = a3;
  result = *a4;
  *(a1 + 12) = *a4;
  *(a1 + 28) = *a5;
  return result;
}

__n128 ULBLEMeasurementDO::ULBLEMeasurementDO(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

__n128 ULBLEMeasurementDO::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    result = *(a2 + 12);
    *(a1 + 12) = result;
    *(a1 + 28) = *(a2 + 28);
  }

  return result;
}

BOOL ULBLEMeasurementDO::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 12) == *(a2 + 12) ? (v2 = *(a1 + 20) == *(a2 + 20)) : (v2 = 0), v2))
  {
    return *(a1 + 28) == *(a2 + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t ULBluetoothIdentityDO::ULBluetoothIdentityDO(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, double a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 56) = *(a5 + 2);
    *(a1 + 40) = v10;
  }

  *(a1 + 64) = a6;
  return a1;
}

void sub_25907AB5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULCustomLoiDO::ULCustomLoiDO(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  return result;
}

uint64_t ULHomeSlamAnalyticEventDO::ULHomeSlamAnalyticEventDO(uint64_t result, __int16 a2, double a3)
{
  *result = a3;
  *(result + 8) = a2;
  return result;
}

void ULLabelDO::create(void *a1@<X0>, __int128 *a2@<X1>, $B8718ED90A3FA1F2B32457B8A9343B88 *a3@<X2>, ULLabelDO *a4@<X8>)
{
  v7 = a1;
  v16 = [v7 contextLayerEnum];
  LOBYTE(v13[0]) = 0;
  v15 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 1;
    v13[0] = &unk_286A55A48;
    v13[1] = [v7 rssi];
    v14 = 0;
    v15 = 1;
  }

  v12 = [v7 deviceClass];
  v11 = cl::chrono::CFAbsoluteTimeClock::now();
  v8 = [v7 name];
  std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
  ULLabelDO::ULLabelDO(a4, &v16, &v12, a3, &v11, a2, __p, v13);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void ULLabelDO::getLabelDataFromNSData(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  *a3 = 0;
  a3[24] = 0;
  if (v5)
  {
    if (a2 != 1 || (ULLabelData<ULLabelDataWiFi,CLMicroLocationProto::ULLabelDataWiFi>::fromNSData(v5, v8), std::__optional_storage_base<std::variant<ULLabelDataWiFi>,false>::__assign_from[abi:ne200100]<std::optional<ULLabelDataWiFi>>(a3, v8), (a3[24] & 1) == 0))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULLabelDO::getLabelDataFromNSData();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "Failed to deserialize labelData protobuf from byte stream", v8, 2u);
      }
    }
  }
}

void sub_25907ADD0(_Unwind_Exception *a1)
{
  if (*(v2 + 24))
  {
    *(v2 + 16) = -1;
  }

  _Unwind_Resume(a1);
}

void ULLabelData<ULLabelDataWiFi,CLMicroLocationProto::ULLabelDataWiFi>::fromNSData(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (v3)
  {
    CLMicroLocationProto::ULLabelDataWiFi::ULLabelDataWiFi(&v7);
    v4 = [v3 bytes];
    [v3 length];
    if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(&v7, v4))
    {
      ULLabelDataWiFi::fromProtobuf(&v7, v6);
      v5 = v6[1];
      *a2 = &unk_286A55A48;
      *(a2 + 8) = v5;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }

    CLMicroLocationProto::ULLabelDataWiFi::~ULLabelDataWiFi(&v7);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void sub_25907AEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CLMicroLocationProto::ULLabelDataWiFi::~ULLabelDataWiFi(va);

  _Unwind_Resume(a1);
}

void ULLabelDO::ULLabelDO(ULLabelDO *this, unint64_t *a2, unint64_t *a3, $B8718ED90A3FA1F2B32457B8A9343B88 *a4, unint64_t *a5, __int128 *a6, __int128 *a7, uint64_t a8)
{
  v10 = *a3;
  this->var0 = *a2;
  this->var1 = v10;
  v11 = *a4;
  this->var2.var1 = a4[1].var0;
  this->var2.var0 = v11;
  this[1].var0 = *a5;
  v12 = *a6;
  this[1].var2.var0.var1.data[8] = *(a6 + 16);
  *&this[1].var1 = v12;
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&this[1].var2.var1, *a7, *(a7 + 1));
  }

  else
  {
    v13 = *a7;
    this[2].var1 = *(a7 + 2);
    *&this[1].var2.var1 = v13;
  }

  this[2].var2.var0.var0 = 0;
  LOBYTE(this[3].var0) = 0;
  if (*(a8 + 24) == 1)
  {
    *&this[2].var2.var1 = -1;
    v14 = *(a8 + 16);
    if (v14 != -1)
    {
      v15 = *(a8 + 8);
      *&this[2].var2.var0.var0 = &unk_286A55A48;
      *&this[2].var2.var0.var1.data[8] = v15;
      *&this[2].var2.var1 = v14;
    }

    LOBYTE(this[3].var0) = 1;
  }

  ULLabelDO::verifyData(this);
}

void sub_25907B00C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 120) == 1)
  {
    *(v1 + 112) = -1;
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULLabelDO::verifyData(ULLabelDO *this)
{
  if (LOBYTE(this[3].var0) != 1 || this->var0 == 1 && !*&this[2].var2.var1)
  {
    return 1;
  }

  v2 = ULLabelDO::verifyData();
  return ULLabelDO::ULLabelDO(v2, v3);
}

uint64_t ULLabelDO::ULLabelDO(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(result + 16) = v2;
  *(result + 40) = *(a2 + 40);
  v3 = *(a2 + 48);
  *(result + 64) = *(a2 + 64);
  *(result + 48) = v3;
  v4 = *(a2 + 72);
  *(result + 88) = *(a2 + 88);
  *(result + 72) = v4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(result + 112) = -1;
    v5 = *(a2 + 112);
    if (v5 != -1)
    {
      v6 = *(a2 + 104);
      *(result + 96) = &unk_286A55A48;
      *(result + 104) = v6;
      *(result + 112) = v5;
    }

    *(result + 120) = 1;
  }

  return result;
}

uint64_t ULLabelDO::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
    *(a1 + 40) = *(a2 + 40);
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
    *(a2 + 95) = 0;
    *(a2 + 72) = 0;
    std::__optional_storage_base<std::variant<ULLabelDataWiFi>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<ULLabelDataWiFi>,false>>(a1 + 96, a2 + 96);
  }

  return a1;
}

uint64_t ULLabelDO::to_str@<X0>(ULLabelDO *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v35);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (LOBYTE(this[3].var0) == 1)
  {
    if (*&this[2].var2.var1 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    (*(*&this[2].var2.var0.var0 + 32))(&v33);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v33;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "ULLabelDO: { ", 13);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fContextLayerType: ", 19);
  v5 = [MEMORY[0x277D28788] contextLayerStringTypeFromEnum:this->var0];
  v6 = MEMORY[0x259CA1D80](v4, v5 != 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fDeviceClass: ", 14);
  var1 = this->var1;
  v9 = ULDeviceClassToString();
  v10 = MEMORY[0x259CA1D80](v7, v9 != 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fUuid: ", 7);
  if (this->var2.var1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v33, "nil");
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v33;
  }

  else
  {
    v12 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fReceivedTimestamp: ", 20);
  v16 = MEMORY[0x259CA1D90](v15, *&this[1].var0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", ", 2);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fServiceUUID: ", 14);
  if (this[1].var2.var0.var1.data[8] == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v33, "nil");
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v33;
  }

  else
  {
    v18 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v33.__r_.__value_.__l.__size_;
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fLabelID: ", 10);
  var1_high = SHIBYTE(this[2].var1);
  if (var1_high >= 0)
  {
    p_var1 = &this[1].var2.var1;
  }

  else
  {
    p_var1 = *&this[1].var2.var1;
  }

  if (var1_high >= 0)
  {
    var0 = HIBYTE(this[2].var1);
  }

  else
  {
    var0 = this[2].var0;
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, p_var1, var0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", ", 2);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fData: ", 7);
  if (LOBYTE(this[3].var0) == 1)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = __p;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v33, "");
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v33;
  }

  else
  {
    v27 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v33.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, " }", 2);
  if ((v42 & 0x10) != 0)
  {
    v30 = v41;
    if (v41 < v38)
    {
      v41 = v38;
      v30 = v38;
    }

    locale = v37[4].__locale_;
  }

  else
  {
    if ((v42 & 8) == 0)
    {
      v29 = 0;
      a2[23] = 0;
      goto LABEL_58;
    }

    locale = v37[1].__locale_;
    v30 = v37[3].__locale_;
  }

  v29 = v30 - locale;
  if ((v30 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v29 >= 0x17)
  {
    operator new();
  }

  a2[23] = v29;
  if (v29)
  {
    memmove(a2, locale, v29);
  }

LABEL_58:
  a2[v29] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v35 = *MEMORY[0x277D82828];
  *(&v35 + *(v35 - 24)) = *(MEMORY[0x277D82828] + 24);
  v36 = MEMORY[0x277D82878] + 16;
  if (v40 < 0)
  {
    operator delete(v39);
  }

  v36 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v37);
  std::ostream::~ostream();
  return MEMORY[0x259CA1EE0](&v43);
}

void sub_25907B788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  operator delete(v28);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x277D82828]);
  MEMORY[0x259CA1EE0](va);
  _Unwind_Resume(a1);
}

uint64_t ULLabelDO::hasData(ULLabelDO *this)
{
  if (LOBYTE(this[3].var0) == 1)
  {
    return ULLabelDO::verifyData(this);
  }

  else
  {
    return 0;
  }
}

id ULLabelDO::getNSDataFromLabelData(ULLabelDO *this)
{
  if (LOBYTE(this[3].var0) == 1 && ULLabelDO::verifyData(this))
  {
    if (this[3].var0)
    {
      if (*&this[2].var2.var1 != -1)
      {
        ULLabelData<ULLabelDataWiFi,CLMicroLocationProto::ULLabelDataWiFi>::toNSData(&this[2].var2);
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return 0;
}

void ULLabelDOAndObjectID::ULLabelDOAndObjectID(ULLabelDOAndObjectID *this, const ULLabelDO *a2, NSManagedObjectID *a3)
{
  v5 = a3;
  ULLabelDO::ULLabelDO(&this->var0, a2);
  *&this[1].var1.var0.var0 = v5;
}

void ULLabelDOAndObjectID::labelDOs(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      ULLabelDO::ULLabelDO(&v8, v3);
      v13 = *(v3 + 128);
      v5 = *(a2 + 8);
      if (v5 >= *(a2 + 16))
      {
        v6 = std::vector<ULLabelDO>::__emplace_back_slow_path<ULLabelDO const&>(a2, &v8);
      }

      else
      {
        ULLabelDO::ULLabelDO(*(a2 + 8), &v8);
        v6 = v5 + 128;
      }

      *(a2 + 8) = v6;

      if (v12 == 1)
      {
        v11 = -1;
      }

      if (v10 < 0)
      {
        operator delete(__p);
      }

      v3 += 136;
    }

    while (v3 != v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25907BA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  ULLabelDOAndObjectID::~ULLabelDOAndObjectID(&a9);
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_storage_base<std::variant<ULLabelDataWiFi>,false>::__assign_from[abi:ne200100]<std::optional<ULLabelDataWiFi>>(uint64_t result, uint64_t a2)
{
  if (*(result + 24) == *(a2 + 16))
  {
    if (*(result + 24))
    {
      if (*(result + 16))
      {
        *result = &unk_286A55A48;
        v2 = *(a2 + 8);
        *(result + 16) = 0;
      }

      else
      {
        v2 = *(a2 + 8);
      }

      *(result + 8) = v2;
    }
  }

  else if (*(result + 24))
  {
    *(result + 16) = -1;
    *(result + 24) = 0;
  }

  else
  {
    v3 = *(a2 + 8);
    *result = &unk_286A55A48;
    *(result + 8) = v3;
    *(result + 16) = 0;
    *(result + 24) = 1;
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_31()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__optional_storage_base<std::variant<ULLabelDataWiFi>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::variant<ULLabelDataWiFi>,false>>(uint64_t result, uint64_t a2)
{
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {
      return std::__variant_detail::__assignment<std::__variant_detail::__traits<ULLabelDataWiFi>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ULLabelDataWiFi>,(std::__variant_detail::_Trait)1>>(result, a2);
    }
  }

  else
  {
    if (*(result + 24))
    {
      v2 = 0;
      *(result + 16) = -1;
    }

    else
    {
      *result = 0;
      *(result + 16) = -1;
      v3 = *(a2 + 16);
      if (v3 != -1)
      {
        v4 = *(a2 + 8);
        *result = &unk_286A55A48;
        *(result + 8) = v4;
        *(result + 16) = v3;
      }

      v2 = 1;
    }

    *(result + 24) = v2;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<ULLabelDataWiFi>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ULLabelDataWiFi>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v2 != -1)
  {
    if (v3 == -1)
    {
      *(result + 16) = -1;
      return result;
    }

    if (!v2)
    {
      *(result + 8) = *(a2 + 8);
      return result;
    }

LABEL_7:
    v4 = *(a2 + 8);
    *result = &unk_286A55A48;
    *(result + 8) = v4;
    *(result + 16) = 0;
    return result;
  }

  if (v3 != -1)
  {
    goto LABEL_7;
  }

  return result;
}

void ULLabelData<ULLabelDataWiFi,CLMicroLocationProto::ULLabelDataWiFi>::toNSData(uint64_t a1)
{
  (*(*a1 + 24))(v1);
  CLMicroLocationProto::ULLabelDataWiFi::ByteSize(v1);
  operator new[]();
}

void sub_25907BD50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CLMicroLocationProto::ULLabelDataWiFi::~ULLabelDataWiFi(va);
  _Unwind_Resume(a1);
}

void ULLabelDO::ULLabelDO(ULLabelDO *this, const ULLabelDO *a2)
{
  *&this->var0 = *&a2->var0;
  var0 = a2->var2.var0;
  v5 = *&a2->var2.var1;
  v6 = *&a2[1].var1;
  this[1].var2.var0.var1.data[8] = a2[1].var2.var0.var1.data[8];
  *&this->var2.var1 = v5;
  *&this[1].var1 = v6;
  this->var2.var0 = var0;
  if (SHIBYTE(a2[2].var1) < 0)
  {
    std::string::__init_copy_ctor_external(&this[1].var2.var1, *&a2[1].var2.var1, a2[2].var0);
  }

  else
  {
    v7 = *&a2[1].var2.var1;
    this[2].var1 = a2[2].var1;
    *&this[1].var2.var1 = v7;
  }

  this[2].var2.var0.var0 = 0;
  LOBYTE(this[3].var0) = 0;
  if (LOBYTE(a2[3].var0) == 1)
  {
    *&this[2].var2.var1 = -1;
    v8 = *&a2[2].var2.var1;
    if (v8 != -1)
    {
      v9 = *&a2[2].var2.var0.var1.data[8];
      *&this[2].var2.var0.var0 = &unk_286A55A48;
      *&this[2].var2.var0.var1.data[8] = v9;
      *&this[2].var2.var1 = v8;
    }

    LOBYTE(this[3].var0) = 1;
  }
}

uint64_t std::vector<ULLabelDO>::__emplace_back_slow_path<ULLabelDO const&>(uint64_t a1, const ULLabelDO *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULLabelDO>>(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 7);
  ULLabelDO::ULLabelDO((v2 << 7), a2);
  v16 = ((v2 << 7) + 128);
  v8 = *(a1 + 8);
  v9 = ((v2 << 7) + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULLabelDO>,ULLabelDO*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ULLabelDO>::~__split_buffer(&v14);
  return v13;
}

void sub_25907BF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULLabelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULLabelDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULLabelDO>,ULLabelDO*>(uint64_t a1, ULLabelDO *a2, ULLabelDO *a3, ULLabelDO *this)
{
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  i = 0;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      ULLabelDO::ULLabelDO(this, v6);
      v6 = (v6 + 128);
      this = (v11 + 128);
      v11 = (v11 + 128);
    }

    while (v6 != a3);
    for (i = 1; v5 != a3; v5 = (v5 + 128))
    {
      if (LOBYTE(v5[3].var0) == 1)
      {
        *&v5[2].var2.var1 = -1;
      }

      if (SHIBYTE(v5[2].var1) < 0)
      {
        operator delete(*&v5[1].var2.var1);
      }
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULLabelDO>,ULLabelDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULLabelDO>,ULLabelDO*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULLabelDO>,ULLabelDO*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULLabelDO>,ULLabelDO*>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 128)
  {
    if (*(v3 - 8) == 1)
    {
      *(v3 - 16) = -1;
    }

    if (*(v3 - 33) < 0)
    {
      operator delete(*(v3 - 56));
    }
  }
}

uint64_t std::__split_buffer<ULLabelDO>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULLabelDO>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULLabelDO>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 128;
      *(a1 + 16) = v2 - 128;
      if (*(v2 - 8) == 1)
      {
        *(v2 - 16) = -1;
      }

      if (*(v2 - 33) < 0)
      {
        operator delete(*(v2 - 56));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void ULLabelDOAndObjectID::~ULLabelDOAndObjectID(ULLabelDOAndObjectID *this)
{
  if (this[1].var0.var2.var1)
  {
    *&this[1].var0.var2.var0.var1.data[8] = -1;
  }

  if (SHIBYTE(this[1].var0.var0) < 0)
  {
    operator delete(this->var2.var0.var1.var1);
  }
}

void std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULLabelDO>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULLabelDO>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 128)
  {
    if (*(i - 8) == 1)
    {
      *(i - 16) = -1;
    }

    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  *(a1 + 8) = a2;
}

uint64_t ULLoiDO::ULLoiDO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, double a7)
{
  *a1 = a7;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a6, *(a6 + 1));
  }

  else
  {
    v8 = *a6;
    *(a1 + 56) = *(a6 + 2);
    *(a1 + 40) = v8;
  }

  return a1;
}

uint64_t ULMagnetometerDO::ULMagnetometerDO(uint64_t result, double a2, double a3, float a4, float a5, float a6, double a7)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  *(result + 32) = a7;
  return result;
}

id ULMapLabelDO::create(ULMapLabelDO *this, const ULMapLabelDO *a2)
{
  if (this->var0.var1)
  {
    *&v3 = *&this->var0.var0.var0;
    DWORD2(v3) = LODWORD(this->var0.var0.var1.var2);
  }

  else
  {
    v3 = *MEMORY[0x277D28830];
  }

  v16 = *&v3;
  if (this->var1.var1)
  {
    [MEMORY[0x277CBEA60] fromFloatVector:&this->var1];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v4 = ;
  if (this->var2.var1)
  {
    ULDBUtils::NSStringArrayFromBoostUUIDs(&this->var2.var0.var1);
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v5 = ;
  if (*&this[1].var0.var0.var1.var2 == 1)
  {
    if ((ULLabelDO::hasData(&this[1].var0.var0.var1.var2) & 1) == 0)
    {
      ULMapLabelDO::create(&v17);

      result = abort_report_np();
      __break(1u);
      return result;
    }

    v6 = objc_alloc(MEMORY[0x277D287A8]);
    if (SHIBYTE(this[2].var1.var0.var1.var0) >= 0)
    {
      v7 = this + 2;
    }

    else
    {
      v7 = *&this[2].var0.var0.var0;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    if ((this[2].var2.var0.var0 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*&this[2].var1.var1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    var2 = this[2].var1.var0.var1.var2;
    v10 = [MEMORY[0x277CBEAA8] fromCFAbsoluteTime:&this[1].var2];
    v11 = [v6 initWithName:v8 rssi:var2 timestamp:v10 coordinates:v4 probabilityVector:v5 imageIdentifiersVector:v16];
  }

  else
  {
    v8 = [MEMORY[0x277D28788] contextLayerStringTypeFromEnum:?];
    v12 = objc_alloc(MEMORY[0x277D287A0]);
    if (SHIBYTE(this[2].var1.var0.var1.var0) >= 0)
    {
      v13 = this + 2;
    }

    else
    {
      v13 = *&this[2].var0.var0.var0;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    v14 = [MEMORY[0x277CBEAA8] fromCFAbsoluteTime:&this[1].var2];
    v11 = [v12 initWithName:v10 timestamp:v14 contextLayer:v8 deviceClass:this[1].var1.var0.var1.var0 coordinates:v4 probabilityVector:v5 imageIdentifiersVector:v16];
  }

  return v11;
}

uint64_t ULMapLabelDO::ULMapLabelDO(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5, const ULLabelDO *a6, _OWORD *a7)
{
  *a1 = *a2;
  std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](a1 + 16, a3);
  std::__optional_copy_base<std::vector<boost::uuids::uuid>,false>::__optional_copy_base[abi:ne200100](a1 + 48, a4);
  *(a1 + 80) = *a5;
  ULLabelDO::ULLabelDO((a1 + 88), a6);
  *(a1 + 216) = *a7;
  return a1;
}

void sub_25907C6D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) == 1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      *(v1 + 56) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 40) == 1)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      *(v1 + 24) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULMapLabelDO::ULMapLabelDO(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a1 + 72) = 1;
  }

  *(a1 + 80) = *(a2 + 80);
  ULLabelDO::ULLabelDO(a1 + 88, a2 + 88);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

void sub_25907C7F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) == 1)
  {
    v5 = *v3;
    if (*v3)
    {
      *(v1 + 56) = v5;
      operator delete(v5);
    }
  }

  if (*(v1 + 40) == 1)
  {
    v6 = *v2;
    if (*v2)
    {
      *(v1 + 24) = v6;
      operator delete(v6);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULMapLabelDO::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    *(a1 + 5) = *(a2 + 5);
    *a1 = v4;
    std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(a1 + 16, a2 + 1);
    std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(a1 + 48, a2 + 3);
    *(a1 + 80) = a2[10];
    ULLabelDO::operator=(a1 + 88, (a2 + 11));
    *(a1 + 216) = *(a2 + 27);
  }

  return a1;
}

void ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(ULMapLabelDOAndLabelObjectID *this, const ULMapLabelDO *a2, NSManagedObjectID *a3)
{
  v5 = a3;
  ULMapLabelDO::ULMapLabelDO(this, a2);
  *(this + 29) = v5;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_32()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<float>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<float>,false> const&>(a1, a2);
  return a1;
}

void sub_25907C98C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<float>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<float>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::__optional_copy_base<std::vector<boost::uuids::uuid>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<boost::uuids::uuid>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<boost::uuids::uuid>,false> const&>(a1, a2);
  return a1;
}

void sub_25907CA30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<boost::uuids::uuid>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<boost::uuids::uuid>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    *(v2 + 24) = 1;
  }

  return result;
}

void ULMapLabelDO::ULMapLabelDO(ULMapLabelDO *this, const ULMapLabelDO *a2)
{
  this->var0 = a2->var0;
  std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](&this->var1, &a2->var1);
  std::__optional_copy_base<std::vector<boost::uuids::uuid>,false>::__optional_copy_base[abi:ne200100](&this->var2, &a2->var2);
  *&this[1].var0.var0.var0 = *&a2[1].var0.var0.var0;
  ULLabelDO::ULLabelDO(&this[1].var0.var0.var1.var2, &a2[1].var0.var0.var1.var2);
  *&this[2].var2.var0.var1.var1 = *&a2[2].var2.var0.var1.var1;
}

void sub_25907CB00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) == 1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      *(v1 + 56) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 40) == 1)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      *(v1 + 24) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULMigrationDO::ULMigrationDO(uint64_t result, int a2, void *a3)
{
  *result = *a3;
  *(result + 8) = a2;
  return result;
}

uint64_t ULModelDO::ULModelDO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, double a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a9;
  v14 = (a1 + 297);
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a1 + 32), a4);
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  v15 = *a6;
  *(a1 + 296) = *(a6 + 16);
  *(a1 + 280) = v15;
  *v14 = a7;
  v14[1] = a8;
  ULModelDO::setModelType(a1);
  if (*(a5 + 24) != 1)
  {
    goto LABEL_4;
  }

  if ((*(a5 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a5 + 8))
    {
      goto LABEL_4;
    }
  }

  else if (*(a5 + 23))
  {
LABEL_4:
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 248), a5);
    return a1;
  }

  if (*(a1 + 272) == 1)
  {
    if (*(a1 + 271) < 0)
    {
      operator delete(*(a1 + 248));
    }

    *(a1 + 272) = 0;
  }

  return a1;
}

void sub_25907CC44(_Unwind_Exception *a1)
{
  if (*(v1 + 272) == 1 && *(v1 + 271) < 0)
  {
    operator delete(*v2);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v1 + 32));
  _Unwind_Resume(a1);
}

ULModelDO *ULModelDO::setModelType(ULModelDO *this)
{
  v1 = this;
  v2 = *this[15].var0.data;
  switch(v2)
  {
    case 2:
      v3 = 5;
      goto LABEL_9;
    case 1:
      v4 = *this[6].var0.data;
      if (!v4)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v4 = *this[4].var0.data;
      }

      v3 = *(v4 + 16);
      goto LABEL_9;
    case 0:
      v3 = *&this[5].var0.data[4];
LABEL_9:
      *&v1[1].var0.data[8] = v3;
      return this;
  }

  ULModelDO::setModelType();
  return ULModelDO::ULModelDO(v5, v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t ULModelWithMapLabels::ULModelWithMapLabels(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v6 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v6;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a1 + 32), (a2 + 2));
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v7 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 33);
    *(a1 + 248) = v7;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(a1 + 272) = 1;
  }

  v8 = *(a2 + 280);
  v9 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = v8;
  *(a1 + 296) = v9;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(a1 + 320, *a3, a3[1], 0xEEEEEEEEEEEEEEEFLL * ((a3[1] - *a3) >> 4));
  return a1;
}

unsigned int *std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](unsigned int *a1, uint64_t a2)
{
  *a1 = 0;
  a1[52] = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>>(unsigned int *a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 208);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286A55AD8[v5])(&v6, a2);
    a1[52] = v5;
  }

  return result;
}

CLMicroLocationProto::HomeSlamModel *ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(CLMicroLocationProto::HomeSlamModel *a1, CLMicroLocationProto::HomeSlamModel *a2)
{
  CLMicroLocationProto::HomeSlamModel::HomeSlamModel(a1);
  CLMicroLocationProto::HomeSlamModel::Swap(v4, a2);
  return a1;
}

{
  CLMicroLocationProto::HomeSlamModel::HomeSlamModel(a1);
  CLMicroLocationProto::HomeSlamModel::Swap(v4, a2);
  return a1;
}

void *ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(void *a1, CLMicroLocationProto::VMKModel *a2)
{
  v4 = CLMicroLocationProto::VMKModel::VMKModel(a1);
  CLMicroLocationProto::VMKModel::Swap(v4, a2);
  return a1;
}

{
  v4 = CLMicroLocationProto::VMKModel::VMKModel(a1);
  CLMicroLocationProto::VMKModel::Swap(v4, a2);
  return a1;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_33()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULMapLabelDOAndLabelObjectID>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25907D0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULMapLabelDOAndLabelObjectID>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

ULMapLabelDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(uint64_t a1, ULMapLabelDO *a2, ULMapLabelDO *a3, ULMapLabelDO *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v4, v6);
      *&v4[2].var2.var1 = *&v6[2].var2.var1;
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,std::reverse_iterator<ULMapLabelDOAndLabelObjectID*>,std::reverse_iterator<ULMapLabelDOAndLabelObjectID*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,std::reverse_iterator<ULMapLabelDOAndLabelObjectID*>,std::reverse_iterator<ULMapLabelDOAndLabelObjectID*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      if (*(v6 - 32) == 1)
      {
        *(v6 - 40) = -1;
      }

      if (*(v6 - 57) < 0)
      {
        operator delete(*(v6 - 80));
      }

      if (*(v6 - 168) == 1)
      {
        v7 = *(v6 - 192);
        if (v7)
        {
          *(v6 - 184) = v7;
          operator delete(v7);
        }
      }

      if (*(v6 - 200) == 1)
      {
        v8 = *(v6 - 224);
        if (v8)
        {
          *(v6 - 216) = v8;
          operator delete(v8);
        }
      }

      v6 -= 240;
    }

    while (v6 != a5);
  }
}

void std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULMapLabelDOAndLabelObjectID>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULMapLabelDOAndLabelObjectID>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 224;
    do
    {

      if (*(v4 + 192) == 1)
      {
        *(v4 + 184) = -1;
      }

      if (*(v4 + 167) < 0)
      {
        operator delete(*(v4 + 144));
      }

      if (*(v4 + 56) == 1)
      {
        v5 = *(v4 + 32);
        if (v5)
        {
          *(v4 + 40) = v5;
          operator delete(v5);
        }
      }

      if (*(v4 + 24) == 1)
      {
        v6 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v6;
          operator delete(v6);
        }
      }

      v7 = v4 - 16;
      v4 -= 240;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

void ULModelDO::~ULModelDO(ULModelDO *this)
{
  if (this[17].var0.data[0] == 1 && this[16].var0.data[15] < 0)
  {
    operator delete(*&this[15].var0.data[8]);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this[2].var0.data);
}

uint64_t ULOdometryDO::ULOdometryDO(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, float a5, float a6, float a7, double a8)
{
  v15 = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 1));
  }

  else
  {
    v16 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v16;
  }

  *(a1 + 24) = a5;
  *(a1 + 28) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 48) = v15;
  *(a1 + 56) = a4;
  return a1;
}

void *ULPhotoFeaturesDO::ULPhotoFeaturesDO(void *a1, uint64_t *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = *a3;
  return a1;
}

void ULPhotoFeaturesDO::ULPhotoFeaturesDO(ULPhotoFeaturesDO *this, const CLMicroLocationProto::PhotoFeatures *a2)
{
  *&this->var0.var0 = 0u;
  *&this->var0.var2 = 0u;
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 2);
    v7 = 4 * v4;
    do
    {
      v8 = *v6;
      var2 = this->var0.var2;
      if (v5 >= var2)
      {
        var0 = this->var0.var0;
        v11 = v5 - this->var0.var0;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v14 = var2 - var0;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(this, v15);
        }

        *(4 * v12) = v8;
        v5 = (4 * v12 + 4);
        memcpy(0, var0, v11);
        v16 = this->var0.var0;
        this->var0.var0 = 0;
        this->var0.var1 = v5;
        this->var0.var2 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v5++ = v8;
      }

      this->var0.var1 = v5;
      ++v6;
      v7 -= 4;
    }

    while (v7);
  }

  this[1].var0.var0 = *(a2 + 1);
}

void sub_25907D6C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ULPhotoFeaturesDO::toProtobuf(ULPhotoFeaturesDO *this@<X0>, uint64_t a2@<X8>)
{
  CLMicroLocationProto::PhotoFeatures::PhotoFeatures(a2);
  var0 = this[1].var0.var0;
  *(a2 + 36) |= 1u;
  *(a2 + 8) = var0;
  v6 = this->var0.var0;
  var1 = this->var0.var1;
  if (v6 != var1)
  {
    v7 = *(a2 + 24);
    do
    {
      v8 = *v6;
      if (v7 == *(a2 + 28))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 16), v7 + 1);
        v7 = *(a2 + 24);
      }

      *(*(a2 + 16) + 4 * v7++) = v8;
      *(a2 + 24) = v7;
      ++v6;
    }

    while (v6 != var1);
  }
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(uint64_t *result, int a2)
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

uint64_t ULRapportDO::ULRapportDO(uint64_t a1, __int128 *a2, CLMicroLocationProto::RapportDevice *a3, _OWORD *a4, void *a5)
{
  *a1 = *a5;
  v7 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  CLMicroLocationProto::RapportDevice::RapportDevice((a1 + 32), a3);
  *(a1 + 64) = *a4;
  return a1;
}

void sub_25907D8A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULScanningEventDO::ULScanningEventDO(uint64_t a1, _OWORD *a2, __int128 *a3, __int16 *a4, uint64_t *a5, __int16 a6, char a7, char a8, char a9, __int16 *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, _OWORD *a15, __int128 *a16, uint64_t *a17, __int128 *a18)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v24 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v24;
  }

  v25 = *a4;
  v26 = *a5;
  v27 = *a10;
  *(a1 + 64) = 0;
  *(a1 + 40) = v25;
  *(a1 + 48) = v26;
  *(a1 + 56) = a6;
  *(a1 + 58) = a7;
  *(a1 + 59) = a8;
  *(a1 + 60) = a9;
  *(a1 + 62) = v27;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<ULLabelDO>::__init_with_size[abi:ne200100]<ULLabelDO*,ULLabelDO*>(a1 + 64, *a11, a11[1], (a11[1] - *a11) >> 7);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<ULWiFiMeasurementDO*,ULWiFiMeasurementDO*>(a1 + 88, *a12, a12[1], (a12[1] - *a12) >> 5);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<ULBLEMeasurementDO>::__init_with_size[abi:ne200100]<ULBLEMeasurementDO*,ULBLEMeasurementDO*>(a1 + 112, *a13, a13[1], (a13[1] - *a13) >> 5);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<ULUWBMeasurementDO>::__init_with_size[abi:ne200100]<ULUWBMeasurementDO*,ULUWBMeasurementDO*>(a1 + 136, *a14, a14[1], (a14[1] - *a14) >> 5);
  *(a1 + 160) = *a15;
  v28 = *a16;
  v29 = *(a16 + 2);
  *(a1 + 200) = 0;
  *(a1 + 192) = v29;
  *(a1 + 176) = v28;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<ULPhotoFeaturesDO>::__init_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(a1 + 200, *a17, a17[1], (a17[1] - *a17) >> 5);
  v30 = *a18;
  v31 = a18[2];
  *(a1 + 240) = a18[1];
  *(a1 + 256) = v31;
  *(a1 + 224) = v30;
  return a1;
}

{
  return ULScanningEventDO::ULScanningEventDO(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_25907DA60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 144) = v8;
    operator delete(v8);
  }

  v9 = *v4;
  if (*v4)
  {
    *(v2 + 120) = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    *(v2 + 96) = v10;
    operator delete(v10);
  }

  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  _Unwind_Resume(a1);
}

__n128 ULScanningEventDO::ULScanningEventDO(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  v3 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v3;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  result = *(a2 + 224);
  v5 = *(a2 + 256);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = v5;
  *(a1 + 224) = result;
  return result;
}

uint64_t ULScanningEventDO::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
    *(a2 + 39) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 58) = *(a2 + 58);
    *(a1 + 59) = *(a2 + 59);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 62) = *(a2 + 62);
    std::vector<ULLabelDO>::__vdeallocate((a1 + 64));
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 88, (a2 + 88));
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 112, (a2 + 112));
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 136, (a2 + 136));
    *(a1 + 160) = *(a2 + 160);
    v5 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v5;
    std::vector<ULPhotoFeaturesDO>::__vdeallocate((a1 + 200));
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    v6 = *(a2 + 224);
    v7 = *(a2 + 240);
    *(a1 + 249) = *(a2 + 249);
    *(a1 + 224) = v6;
    *(a1 + 240) = v7;
  }

  return a1;
}

uint64_t std::vector<ULLabelDO>::__init_with_size[abi:ne200100]<ULLabelDO*,ULLabelDO*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULLabelDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25907DDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULLabelDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULLabelDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

ULLabelDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULLabelDO>,ULLabelDO*,ULLabelDO*,ULLabelDO*>(uint64_t a1, ULLabelDO *a2, ULLabelDO *a3, ULLabelDO *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ULLabelDO::ULLabelDO(v4, v6);
      v6 = (v6 + 128);
      v4 = (v11 + 128);
      v11 = (v11 + 128);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULLabelDO>,ULLabelDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<ULWiFiMeasurementDO*,ULWiFiMeasurementDO*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULWiFiMeasurementDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25907DF20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULWiFiMeasurementDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiMeasurementDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiMeasurementDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ULBLEMeasurementDO>::__init_with_size[abi:ne200100]<ULBLEMeasurementDO*,ULBLEMeasurementDO*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULBLEMeasurementDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25907E018(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULBLEMeasurementDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULBLEMeasurementDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULBLEMeasurementDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ULUWBMeasurementDO>::__init_with_size[abi:ne200100]<ULUWBMeasurementDO*,ULUWBMeasurementDO*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULBLEMeasurementDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25907E110(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULLabelDO>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULLabelDO>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t ULScanningServiceAnalyticsDO::ULScanningServiceAnalyticsDO(uint64_t result, _WORD *a2, __int16 a3, __int16 a4, __int16 a5, void *a6)
{
  *result = *a2;
  *(result + 2) = a3;
  *(result + 4) = a4;
  *(result + 6) = a5;
  *(result + 8) = *a6;
  return result;
}

uint64_t ULServiceDO::ULServiceDO(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, __int128 *a5, uint64_t a6, __int128 *a7, double a8)
{
  *a1 = a4;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a8;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a5, *(a5 + 1));
  }

  else
  {
    v11 = *a5;
    *(a1 + 48) = *(a5 + 2);
    *(a1 + 32) = v11;
  }

  *(a1 + 56) = a6;
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a7, *(a7 + 1));
  }

  else
  {
    v12 = *a7;
    *(a1 + 80) = *(a7 + 2);
    *(a1 + 64) = v12;
  }

  return a1;
}

void sub_25907E224(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

__n128 ULUWBMeasurementDO::ULUWBMeasurementDO(uint64_t a1, void *a2, __n128 *a3, _WORD *a4, float a5)
{
  *a1 = *a2;
  *(a1 + 8) = a5;
  result = *a3;
  *(a1 + 12) = *a3;
  *(a1 + 28) = *a4;
  return result;
}

__n128 ULUWBMeasurementDO::ULUWBMeasurementDO(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

__n128 ULUWBMeasurementDO::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    result = *(a2 + 12);
    *(a1 + 12) = result;
    *(a1 + 28) = *(a2 + 28);
  }

  return result;
}

uint64_t ULWiFiHistogramDO::ULWiFiHistogramDO(uint64_t a1, void *a2, _OWORD *a3, CLMicroLocationProto::WifiHistogram *a4)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  CLMicroLocationProto::WifiHistogram::WifiHistogram((a1 + 24), a4);
  return a1;
}

uint64_t ULWiFiHistogramDO::ULWiFiHistogramDO(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  CLMicroLocationProto::WifiHistogram::WifiHistogram((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t ULWiFiMeasurementDO::ULWiFiMeasurementDO(uint64_t result, void *a2, int a3, void *a4, __int16 a5, _BYTE *a6, int a7)
{
  *result = *a2;
  *(result + 8) = a3;
  *(result + 16) = *a4;
  *(result + 24) = a5;
  *(result + 26) = *a6;
  *(result + 28) = a7;
  return result;
}

uint64_t ULWiFiMeasurementDO::ULWiFiMeasurementDO(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 26) = *(a2 + 26);
  *(result + 28) = *(a2 + 28);
  return result;
}