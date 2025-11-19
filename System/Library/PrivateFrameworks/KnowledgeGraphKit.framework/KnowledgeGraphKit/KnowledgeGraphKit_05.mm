void sub_2558E400C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, void *a52)
{
  degas::Statement::~Statement(&a13);
  std::ostringstream::~ostringstream(&a16);
  degas::Statement::~Statement(&a49);
  std::ostringstream::~ostringstream(&a52);
  degas::Statement::~Statement(&STACK[0x260]);
  std::ostringstream::~ostringstream(&STACK[0x278]);
  degas::Statement::~Statement(&STACK[0x380]);
  std::ostringstream::~ostringstream(&STACK[0x398]);
  _Unwind_Resume(a1);
}

void degas::AttributeValueTable::~AttributeValueTable(degas::AttributeValueTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *degas::AttributeValueTable::AttributeValueTable(void *a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5)
{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A9040;
  *(result + 48) = a4;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A9040;
  *(result + 48) = a4;
  return result;
}

const char *degas::AttributeValueTable::operatorText(unsigned int a1)
{
  if (a1 > 8)
  {
    return " == ";
  }

  else
  {
    return *(&off_2797FE388 + a1);
  }
}

const char *degas::AttributeValueTable::listOperatorText(int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      result = " in ";
      break;
    case 8:
      result = " collate nocasenodiacritics in ";
      break;
    case 2:
      result = " not in ";
      break;
    default:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v4[0] = 67109120;
        v4[1] = a1;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported operator for list comparison: %d", v4, 8u);
      }

      result = "";
      break;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t degas::AttributeValueTable::rangeOperatorText(const char *a1, int a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        v19 = strlen(a1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v19);
        v13 = " < ?2 or ";
        v14 = 9;
      }

      else
      {
        if (a2 != 8)
        {
          goto LABEL_23;
        }

        v12 = strlen(a1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v12);
        v13 = " <= ?2 or ";
        v14 = 10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v13, v14);
      v20 = strlen(a1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v20);
      v6 = " >= ?3";
      goto LABEL_21;
    }

    if (a2 == 5)
    {
      v17 = strlen(a1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v17);
      v6 = " not between ?2 and ?3";
      v16 = 22;
      goto LABEL_22;
    }

    v7 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, " <= ?2 or ", 10);
    v8 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v8);
    v6 = " > ?3";
LABEL_18:
    v16 = 5;
    goto LABEL_22;
  }

  if (a2 > 2)
  {
    v9 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v9);
    if (a2 == 3)
    {
      v10 = " >= ?2 and ";
      v11 = 11;
    }

    else
    {
      v10 = " > ?2 and ";
      v11 = 10;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v10, v11);
    v18 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v18);
    v6 = " < ?3";
    goto LABEL_18;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      goto LABEL_23;
    }

    v4 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, " > ?2 and ", 10);
    v5 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v5);
    v6 = " <= ?3";
LABEL_21:
    v16 = 6;
    goto LABEL_22;
  }

  v15 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, a1, v15);
  v6 = " between ?2 and ?3";
  v16 = 18;
LABEL_22:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v6, v16);
LABEL_23:
  std::stringbuf::str();
  v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v26);
}

void sub_2558E4768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::upsertStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable15upsertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_1339;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable15upsertStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "insert or replace into ", 23);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " (elementId, attributeId, intValue, realValue, stringValue, dataType) values (?1, ?2, ?3, ?4, ?5, ?6)", 101);
  operator new();
}

void sub_2558E49EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByIdentifierStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_30;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable25readByIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where elementId=?1", 19);
  operator new();
}

void sub_2558E4CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByAttrIdIdentifierStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable31readByAttrIdIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_31;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable31readByAttrIdIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where elementId=?1 and attributeId=?2", 38);
  operator new();
}

void sub_2558E4F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByBitmapStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_34;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable21readByBitmapStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select v.elementId, v.attributeId, v.intValue, v.realValue, v.stringValue, v.dataType from ", 91);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " v, identifierBitmap(?1) b where v.elementId = b.value order by v.elementId", 75);
  operator new();
}

void sub_2558E5244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByIntValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable23readByIntValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_37;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AttributeValueTable23readByIntValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and intValue", 34);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?2 order by elementId", 21);
  operator new();
}

void sub_2558E556C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByBitmapAndAttrIdentifierStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x802;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable38readByBitmapAndAttrIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_39;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable38readByBitmapAndAttrIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select v.elementId, v.attributeId, v.intValue, v.realValue, v.stringValue, v.dataType from ", 91);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " v, identifierBitmap(?1) b where v.elementId = b.value and v.attributeId=?2 order by v.elementId", 96);
  operator new();
}

void sub_2558E5834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByRealValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable24readByRealValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_41;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AttributeValueTable24readByRealValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and realValue", 35);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?2 order by elementId", 21);
  operator new();
}

void sub_2558E5B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByStringValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable26readByStringValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_43;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AttributeValueTable26readByStringValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and stringValue", 37);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?2 order by elementId", 21);
  operator new();
}

void sub_2558E5E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByIntValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable24readByIntValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_45;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xC00u, v5);
}

void ___ZNK5degas19AttributeValueTable24readByIntValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where attributeId=?1 and intValue", 34);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?2, ?3, 'int64') order by elementId", 46);
  operator new();
}

void sub_2558E618C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByRealValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable25readByRealValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_47;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xD00u, v5);
}

void ___ZNK5degas19AttributeValueTable25readByRealValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where attributeId=?1 and realValue", 35);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?2, ?3, 'double') order by elementId", 47);
  operator new();
}

void sub_2558E6498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByStringValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable27readByStringValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_49;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xE00u, v5);
}

void ___ZNK5degas19AttributeValueTable27readByStringValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where attributeId=?1 and stringValue", 37);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?2, ?3, 'char*') order by elementId", 46);
  operator new();
}

void sub_2558E67A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByIntValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable34readByIntValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_52;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AttributeValueTable34readByIntValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +intValue", 75);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?3", 2);
  operator new();
}

void sub_2558E6ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByRealValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable35readByRealValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_54;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AttributeValueTable35readByRealValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +realValue", 76);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?3", 2);
  operator new();
}

void sub_2558E6DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByStringValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable37readByStringValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_56;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AttributeValueTable37readByStringValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +stringValue", 78);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?3", 2);
  operator new();
}

void sub_2558E7124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByIntRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable23readByIntRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_60;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AttributeValueTable23readByIntRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("intValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " order by elementId", 19);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_2558E745C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByRealRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable24readByRealRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_62;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AttributeValueTable24readByRealRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("realValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " order by elementId", 19);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_2558E77B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readByStringRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AttributeValueTable26readByStringRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_64;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AttributeValueTable26readByStringRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("stringValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " order by elementId", 19);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_2558E7B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AttributeValueTable::readAllStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_65;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable16readAllStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select elementId, attributeId, intValue, realValue, stringValue, dataType from ", 79);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " order by elementId", 19);
  operator new();
}

void sub_2558E7DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::AttributeValueTable::insertOrUpdate(degas::AttributeValueTable *this, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v7 = degas::AttributeValueTable::upsertStatement(this);
  degas::Statement::bindInteger(*v7, 1, a3);
  degas::Statement::bindInteger(*v7, 2, a2);
  degas::Statement::bindInteger(*v7, 3, a4);
  degas::Statement::bindNull(*v7, 4);
  degas::Statement::bindNull(*v7, 5);
  degas::Statement::bindInteger(*v7, 6, 1);
  v8 = *v7;

  return degas::Statement::update(v8);
}

uint64_t degas::AttributeValueTable::insertOrUpdateUnsigned(degas::AttributeValueTable *this, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v7 = degas::AttributeValueTable::upsertStatement(this);
  degas::Statement::bindInteger(*v7, 1, a3);
  degas::Statement::bindInteger(*v7, 2, a2);
  degas::Statement::bindInteger(*v7, 3, a4);
  degas::Statement::bindNull(*v7, 4);
  degas::Statement::bindNull(*v7, 5);
  degas::Statement::bindInteger(*v7, 6, 4);
  v8 = *v7;

  return degas::Statement::update(v8);
}

uint64_t degas::AttributeValueTable::insertOrUpdate(degas::AttributeValueTable *this, sqlite3_int64 a2, sqlite3_int64 a3, double a4)
{
  v7 = degas::AttributeValueTable::upsertStatement(this);
  degas::Statement::bindInteger(*v7, 1, a3);
  degas::Statement::bindInteger(*v7, 2, a2);
  degas::Statement::bindNull(*v7, 3);
  degas::Statement::bindDouble(*v7, 4, a4);
  degas::Statement::bindNull(*v7, 5);
  degas::Statement::bindInteger(*v7, 6, 2);
  v8 = *v7;

  return degas::Statement::update(v8);
}

uint64_t degas::AttributeValueTable::insertOrUpdate(degas::AttributeValueTable *a1, sqlite3_int64 a2, sqlite3_int64 a3, uint64_t *a4)
{
  v7 = degas::AttributeValueTable::upsertStatement(a1);
  degas::Statement::bindInteger(*v7, 1, a3);
  degas::Statement::bindInteger(*v7, 2, a2);
  degas::Statement::bindNull(*v7, 3);
  degas::Statement::bindNull(*v7, 4);
  degas::Statement::bindString(*v7, 5, a4);
  degas::Statement::bindInteger(*v7, 6, 3);
  v8 = *v7;

  return degas::Statement::update(v8);
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByIdentifier(degas::AttributeValueTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeValueTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier(degas::AttributeValueTable *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v5 = degas::AttributeValueTable::readByAttrIdIdentifierStatement(this);
  degas::Statement::bindInteger(*v5, 1, a3);
  degas::Statement::bindInteger(*v5, 2, a2);
  return v5;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByBitmap(degas::AttributeValueTable *this, Bitmap *a2)
{
  v3 = degas::AttributeValueTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByBitmapAndAttrIdIdentifier(degas::AttributeValueTable *this, Bitmap *a2, sqlite3_int64 a3)
{
  v5 = degas::AttributeValueTable::readByBitmapAndAttrIdentifierStatement(this);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  degas::Statement::bindInteger(*v5, 2, a3);
  return v5;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4)
{
  v6 = degas::AttributeValueTable::readByIntValueStatement(a1, a4);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindInteger(*v6, 2, a3);
  return v6;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, int a3, double a4)
{
  v6 = degas::AttributeValueTable::readByRealValueStatement(a1, a3);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindDouble(*v6, 2, a4);
  return v6;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, int a4)
{
  v6 = degas::AttributeValueTable::readByStringValueStatement(a1, a4);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindString(*v6, 2, a3);
  return v6;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByValues(uint64_t a1, sqlite3_int64 a2, void *a3, int a4, int a5)
{
  v8 = degas::AttributeValueTable::readByIntValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

{
  v8 = degas::AttributeValueTable::readByRealValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

{
  v8 = degas::AttributeValueTable::readByStringValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, Bitmap *a5)
{
  v8 = degas::AttributeValueTable::readByIntValueIdentifiersStatement(a1, a4);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindInteger(*v8, 3, a3);
  return v8;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, int a3, Bitmap *a4, double a5)
{
  v8 = degas::AttributeValueTable::readByRealValueIdentifiersStatement(a1, a3);
  degas::Statement::bindBitmapPointer(*v8, 1, a4);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindDouble(*v8, 3, a5);
  return v8;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, int a4, Bitmap *a5)
{
  v8 = degas::AttributeValueTable::readByStringValueIdentifiersStatement(a1, a4);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindString(*v8, 3, a3);
  return v8;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5)
{
  v8 = degas::AttributeValueTable::readByIntRangeStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindInteger(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, int a3, double a4, double a5)
{
  v8 = degas::AttributeValueTable::readByRealRangeStatement(a1, a3);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindDouble(*v8, 2, a4);
  degas::Statement::bindDouble(*v8, 3, a5);
  return v8;
}

sqlite3_stmt ***degas::AttributeValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v8 = degas::AttributeValueTable::readByStringRangeStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindString(*v8, 2, a3);
  degas::Statement::bindString(*v8, 3, a4);
  return v8;
}

void *degas::AttributeValueCursor::AttributeValueCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

degas::AttributeValueCursor *degas::AttributeValueCursor::AttributeValueCursor(degas::AttributeValueCursor *this, const degas::AttributeValueTable *a2)
{
  AllStatement = degas::AttributeValueTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  AllStatement = degas::AttributeValueTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AttributeValueCursor *degas::AttributeValueCursor::AttributeValueCursor(degas::AttributeValueCursor *this, sqlite3_int64 a2, const degas::AttributeValueTable *a3)
{
  v5 = degas::AttributeValueTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AttributeValueCursor *degas::AttributeValueCursor::AttributeValueCursor(degas::AttributeValueCursor *this, sqlite3_int64 a2, sqlite3_int64 a3, const degas::AttributeValueTable *a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AttributeValueCursor *degas::AttributeValueCursor::AttributeValueCursor(degas::AttributeValueCursor *this, Bitmap *a2, const degas::AttributeValueTable *a3)
{
  v5 = degas::AttributeValueTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AttributeValueCursor *degas::AttributeValueCursor::AttributeValueCursor(degas::AttributeValueCursor *this, Bitmap *a2, sqlite3_int64 a3, const degas::AttributeValueTable *a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByBitmapAndAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v5 = degas::AttributeValueTable::prepareStatementToReadByBitmapAndAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

void degas::AttributeValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, uint64_t a5)
{
  v6 = degas::AttributeValueTable::prepareStatementToReadByValue(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AttributeValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, uint64_t a4, double a5)
{
  v6 = degas::AttributeValueTable::prepareStatementToReadByValue(a4, a2, a3, a5);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AttributeValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, int a4, uint64_t a5)
{
  v6 = degas::AttributeValueTable::prepareStatementToReadByValue(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AttributeValueCursor::setForValues(sqlite3_stmt ***a1, sqlite3_int64 a2, void *a3, int a4, int a5, uint64_t a6)
{
  v7 = degas::AttributeValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

{
  v7 = degas::AttributeValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

{
  v7 = degas::AttributeValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AttributeValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, Bitmap *a5, uint64_t a6)
{
  v7 = degas::AttributeValueTable::prepareStatementToReadByValueIdentifiers(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AttributeValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, Bitmap *a4, uint64_t a5, double a6)
{
  v7 = degas::AttributeValueTable::prepareStatementToReadByValueIdentifiers(a5, a2, a3, a4, a6);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AttributeValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, int a4, Bitmap *a5, uint64_t a6)
{
  v7 = degas::AttributeValueTable::prepareStatementToReadByValueIdentifiers(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AttributeValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, uint64_t a6)
{
  v7 = degas::AttributeValueTable::prepareStatementToReadByRange(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AttributeValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, uint64_t a4, double a5, double a6)
{
  v7 = degas::AttributeValueTable::prepareStatementToReadByRange(a4, a2, a3, a5, a6);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AttributeValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5, uint64_t a6)
{
  v7 = degas::AttributeValueTable::prepareStatementToReadByRange(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void *degas::TombstoneCopier::TombstoneCopier(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t degas::TombstoneCopier::copyNode(degas::TombstoneCopier *this, sqlite3_int64 a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = ___ZN5degas15TombstoneCopier8copyNodeEy_block_invoke;
  v16[3] = &__block_descriptor_tmp_1446;
  v16[4] = this;
  Statement = degas::StatementCache::getStatement(v4, 0x150300u, v16);
  degas::Statement::bindInteger(*Statement, 1, a2);
  v6 = degas::Statement::update(*Statement);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*this);
      *buf = 136315138;
      v18 = v8;
      v9 = MEMORY[0x277D86220];
LABEL_8:
      _os_log_error_impl(&dword_255870000, v9, OS_LOG_TYPE_ERROR, "tombstone node copy failed: %s", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(this + 1);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = ___ZN5degas15TombstoneCopier8copyNodeEy_block_invoke_2;
    v15[3] = &__block_descriptor_tmp_4_1448;
    v15[4] = this;
    v11 = degas::StatementCache::getStatement(v10, 0x150301u, v15);
    degas::Statement::bindInteger(*v11, 1, a2);
    v7 = degas::Statement::update(*v11);
    if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_errmsg(*this);
      *buf = 136315138;
      v18 = v14;
      v9 = MEMORY[0x277D86220];
      goto LABEL_8;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t degas::TombstoneCopier::copyEdge(degas::TombstoneCopier *this, sqlite3_int64 a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = ___ZN5degas15TombstoneCopier8copyEdgeEy_block_invoke;
  v16[3] = &__block_descriptor_tmp_6_1453;
  v16[4] = this;
  Statement = degas::StatementCache::getStatement(v4, 0x150302u, v16);
  degas::Statement::bindInteger(*Statement, 1, a2);
  v6 = degas::Statement::update(*Statement);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*this);
      *buf = 136315138;
      v18 = v8;
      v9 = MEMORY[0x277D86220];
LABEL_8:
      _os_log_error_impl(&dword_255870000, v9, OS_LOG_TYPE_ERROR, "tombstone edge copy failed: %s", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(this + 1);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = ___ZN5degas15TombstoneCopier8copyEdgeEy_block_invoke_7;
    v15[3] = &__block_descriptor_tmp_9;
    v15[4] = this;
    v11 = degas::StatementCache::getStatement(v10, 0x150303u, v15);
    degas::Statement::bindInteger(*v11, 1, a2);
    v7 = degas::Statement::update(*v11);
    if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_errmsg(*this);
      *buf = 136315138;
      v18 = v14;
      v9 = MEMORY[0x277D86220];
      goto LABEL_8;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t degas::TombstoneCopier::copyNodes(degas::TombstoneCopier *this, Bitmap *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2->_bitSets.__begin_ == a2->_bitSets.__end_)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(this + 1);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = ___ZN5degas15TombstoneCopier9copyNodesERKNS_6BitmapE_block_invoke;
    v16[3] = &__block_descriptor_tmp_11;
    v16[4] = this;
    Statement = degas::StatementCache::getStatement(v4, 0x150304u, v16);
    degas::Statement::bindBitmapPointer(*Statement, 1, a2);
    v6 = degas::Statement::update(*Statement);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = sqlite3_errmsg(*this);
        *buf = 136315138;
        v18 = v8;
        v9 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_error_impl(&dword_255870000, v9, OS_LOG_TYPE_ERROR, "tombstone node copy failed: %s", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(this + 1);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = ___ZN5degas15TombstoneCopier9copyNodesERKNS_6BitmapE_block_invoke_12;
      v15[3] = &__block_descriptor_tmp_14_1459;
      v15[4] = this;
      v11 = degas::StatementCache::getStatement(v10, 0x150305u, v15);
      degas::Statement::bindBitmapPointer(*v11, 1, a2);
      v7 = degas::Statement::update(*v11);
      if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*this);
        *buf = 136315138;
        v18 = v14;
        v9 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t degas::TombstoneCopier::copyEdges(degas::TombstoneCopier *this, Bitmap *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2->_bitSets.__begin_ == a2->_bitSets.__end_)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(this + 1);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = ___ZN5degas15TombstoneCopier9copyEdgesERKNS_6BitmapE_block_invoke;
    v16[3] = &__block_descriptor_tmp_16;
    v16[4] = this;
    Statement = degas::StatementCache::getStatement(v4, 0x150306u, v16);
    degas::Statement::bindBitmapPointer(*Statement, 1, a2);
    v6 = degas::Statement::update(*Statement);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = sqlite3_errmsg(*this);
        *buf = 136315138;
        v18 = v8;
        v9 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_error_impl(&dword_255870000, v9, OS_LOG_TYPE_ERROR, "tombstone edge copy failed: %s", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(this + 1);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = ___ZN5degas15TombstoneCopier9copyEdgesERKNS_6BitmapE_block_invoke_17;
      v15[3] = &__block_descriptor_tmp_19;
      v15[4] = this;
      v11 = degas::StatementCache::getStatement(v10, 0x150307u, v15);
      degas::Statement::bindBitmapPointer(*v11, 1, a2);
      v7 = degas::Statement::update(*v11);
      if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*this);
        *buf = 136315138;
        v18 = v14;
        v9 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_2558EAB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1513(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2558ED670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2012(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void degas::LabelledEdgeTable::~LabelledEdgeTable(degas::LabelledEdgeTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t degas::LabelledEdgeTable::LabelledEdgeTable(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = 1701274693;
  *(result + 31) = 4;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *result = &unk_2867A9090;
  *(result + 48) = 22;
  return result;
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesByLabelIdentifiersSourceNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC00;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable63readTargetNodesByLabelIdentifiersSourceNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_2032;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable63readTargetNodesByLabelIdentifiersSourceNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?1) b where bitmapContainsBitmap(e.labels, ?2) and e.sourceNodeId = b.value", 147);
  operator new();
}

void sub_2558EE350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByLabelIdentifiersTargetNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC01;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable63readSourceNodesByLabelIdentifiersTargetNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4_2035;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable63readSourceNodesByLabelIdentifiersTargetNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?1) b where bitmapContainsBitmap(e.labels, ?2) and e.targetNodeId = b.value", 147);
  operator new();
}

void sub_2558EE5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesBySourceNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC02;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable47readTargetNodesBySourceNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_6_2037;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable47readTargetNodesBySourceNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?1) b where e.sourceNodeId = b.value", 108);
  operator new();
}

void sub_2558EE868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByTargetNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC03;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable47readSourceNodesByTargetNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_8_2039;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable47readSourceNodesByTargetNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?1) b where e.targetNodeId = b.value", 108);
  operator new();
}

void sub_2558EEAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC04;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable70readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_2041;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable70readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?1) nb, identifierBitmap(?2) eb where e.sourceNodeId = nb.value and e.identifier = eb.value", 163);
  operator new();
}

void sub_2558EED80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC06;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable70readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable70readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?1) nb where e.sourceNodeId = nb.value and e.identifier in (select eb.value from identifierBitmap(?2) eb)", 177);
  operator new();
}

void sub_2558EF00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC08;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable70readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_14_2044;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable70readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?2) eb where e.identifier = eb.value and e.sourceNodeId in (select nb.value from identifierBitmap(?1) nb)", 177);
  operator new();
}

void sub_2558EF298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC0A;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable72readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_16_2046;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable72readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?1) nb where  BitmapContainsIdentifier(?2, e.identifier) and e.sourceNodeId = nb.value", 158);
  operator new();
}

void sub_2558EF524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC0C;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable72readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_18;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable72readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?2) eb where  BitmapContainsIdentifier(?1, e.sourceNodeId) and e.identifier = eb.value", 158);
  operator new();
}

void sub_2558EF7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC05;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable70readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_20_2049;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable70readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?1) nb, identifierBitmap(?2) eb where e.targetNodeId = nb.value and e.identifier=eb.value", 161);
  operator new();
}

void sub_2558EFA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC07;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable70readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_22;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable70readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?1) nb where e.targetNodeId = nb.value and e.identifier in (select eb.value from identifierBitmap(?2) eb)", 177);
  operator new();
}

void sub_2558EFCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC09;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable70readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_24;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable70readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?2) eb where e.identifier = eb.value and e.targetNodeId in (select nb.value from identifierBitmap(?1) nb)", 177);
  operator new();
}

void sub_2558EFF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC0B;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable72readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_26_2053;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable72readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?1) en where e.targetNodeId = en.value and BitmapContainsIdentifier(?2, e.identifier)", 157);
  operator new();
}

void sub_2558F01E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC0D;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable72readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_28_2055;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable72readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?2) eb where e.identifier = eb.value and BitmapContainsIdentifier(?1, e.targetNodeId)", 157);
  operator new();
}

void sub_2558F046C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesByLabelIdentifiersSourceNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC0E;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable57readEdgesByLabelIdentifiersSourceNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_30_2057;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable57readEdgesByLabelIdentifiersSourceNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e, identifierBitmap(?1) b where bitmapContainsBitmap(e.labels, ?2) and e.sourceNodeId = b.value", 145);
  operator new();
}

void sub_2558F06F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesByLabelIdentifiersTargetNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC0F;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable57readEdgesByLabelIdentifiersTargetNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_32;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable57readEdgesByLabelIdentifiersTargetNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e, identifierBitmap(?1) b where bitmapContainsBitmap(e.labels, ?2) and e.targetNodeId = b.value", 145);
  operator new();
}

void sub_2558F0984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC10;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable41readEdgesBySourceNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_34_2060;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable41readEdgesBySourceNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e, identifierBitmap(?1) b where e.sourceNodeId = b.value", 106);
  operator new();
}

void sub_2558F0C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC11;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable41readEdgesByTargetNodeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_36;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable41readEdgesByTargetNodeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e, identifierBitmap(?1) b where e.targetNodeId = b.value", 106);
  operator new();
}

void sub_2558F0E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifiersEdgeFilterStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC12;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable51readEdgesBySourceNodeIdentifiersEdgeFilterStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_38;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable51readEdgesBySourceNodeIdentifiersEdgeFilterStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e, identifierBitmap(?1) b where e.sourceNodeId = b.value and BitmapContainsIdentifier(?2, e.identifier)", 153);
  operator new();
}

void sub_2558F1128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifiersEdgeFilterStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC13;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable51readEdgesByTargetNodeIdentifiersEdgeFilterStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_40;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable51readEdgesByTargetNodeIdentifiersEdgeFilterStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e, identifierBitmap(?1) b where e.targetNodeId = b.value and BitmapContainsIdentifier(?2, e.identifier)", 153);
  operator new();
}

void sub_2558F13B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifierStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC14;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable40readEdgesBySourceNodeIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_42;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable40readEdgesBySourceNodeIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e where e.sourceNodeId = ?1", 77);
  operator new();
}

void sub_2558F1640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifierStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC15;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable40readEdgesByTargetNodeIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_44;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable40readEdgesByTargetNodeIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.identifier) from Edge e where e.targetNodeId = ?1", 77);
  operator new();
}

void sub_2558F18CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC16;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable41readTargetNodesByEdgeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_46;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable41readTargetNodesByEdgeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.targetNodeId) from Edge e, identifierBitmap(?1) eb where e.identifier = eb.value", 108);
  operator new();
}

void sub_2558F1B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersStatement(degas::LabelledEdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0xC17;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas17LabelledEdgeTable41readSourceNodesByEdgeIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_48;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas17LabelledEdgeTable41readSourceNodesByEdgeIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "select mergeLiteralBitmap(e.sourceNodeId) from Edge e, identifierBitmap(?1) eb where e.identifier = eb.value", 108);
  operator new();
}

void sub_2558F1DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByLabelIdentifiersSourceNodeIdentifiers(degas::LabelledEdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  TargetNodesByLabelIdentifiersSourceNodeIdentifiersStatement = degas::LabelledEdgeTable::readTargetNodesByLabelIdentifiersSourceNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*TargetNodesByLabelIdentifiersSourceNodeIdentifiersStatement, 1, a3);
  degas::Statement::bindBitmap(*TargetNodesByLabelIdentifiersSourceNodeIdentifiersStatement, 2, a2);
  return TargetNodesByLabelIdentifiersSourceNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByLabelIdentifiersTargetNodeIdentifiers(degas::LabelledEdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  SourceNodesByLabelIdentifiersTargetNodeIdentifiersStatement = degas::LabelledEdgeTable::readSourceNodesByLabelIdentifiersTargetNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*SourceNodesByLabelIdentifiersTargetNodeIdentifiersStatement, 1, a3);
  degas::Statement::bindBitmap(*SourceNodesByLabelIdentifiersTargetNodeIdentifiersStatement, 2, a2);
  return SourceNodesByLabelIdentifiersTargetNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadTargetNodesBySourceNodeIdentifiers(degas::LabelledEdgeTable *this, Bitmap *a2)
{
  TargetNodesBySourceNodeIdentifiersStatement = degas::LabelledEdgeTable::readTargetNodesBySourceNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*TargetNodesBySourceNodeIdentifiersStatement, 1, a2);
  return TargetNodesBySourceNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByTargetNodeIdentifiers(degas::LabelledEdgeTable *this, Bitmap *a2)
{
  SourceNodesByTargetNodeIdentifiersStatement = degas::LabelledEdgeTable::readSourceNodesByTargetNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*SourceNodesByTargetNodeIdentifiersStatement, 1, a2);
  return SourceNodesByTargetNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBoth(degas::LabelledEdgeTable *this, Bitmap *a2, Bitmap *a3)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatement = degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatement(this);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatement, 2, a2);
  return TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBothStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNode(degas::LabelledEdgeTable *this, Bitmap *a2, Bitmap *a3)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatement = degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatement(this);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatement, 2, a2);
  return TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNodeStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdge(degas::LabelledEdgeTable *this, Bitmap *a2, Bitmap *a3)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatement = degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatement(this);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatement, 2, a2);
  return TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdgeStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdge(degas::LabelledEdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatement = degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatement(this);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatement, 1, a3);
  degas::Statement::bindBitmap(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatement, 2, a2);
  return TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdgeStatement;
}

degas::Statement **degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNode(degas::LabelledEdgeTable *this, Bitmap *a2, const degas::Bitmap *a3)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatement = degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatement(this);
  degas::Statement::bindBitmap(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatement, 2, a2);
  return TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNodeStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBoth(degas::LabelledEdgeTable *this, Bitmap *a2, Bitmap *a3)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatement = degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatement(this);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatement, 2, a2);
  return SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBothStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNode(degas::LabelledEdgeTable *this, Bitmap *a2, Bitmap *a3)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatement = degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatement(this);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatement, 2, a2);
  return SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNodeStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdge(degas::LabelledEdgeTable *this, Bitmap *a2, Bitmap *a3)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatement = degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatement(this);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatement, 2, a2);
  return SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdgeStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdge(degas::LabelledEdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatement = degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatement(this);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatement, 1, a3);
  degas::Statement::bindBitmap(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatement, 2, a2);
  return SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdgeStatement;
}

degas::Statement **degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNode(degas::LabelledEdgeTable *this, Bitmap *a2, const degas::Bitmap *a3)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatement = degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatement(this);
  degas::Statement::bindBitmap(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatement, 1, a3);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatement, 2, a2);
  return SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNodeStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesByLabelIdentifiersSourceNodeIdentifiers(degas::LabelledEdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  EdgesByLabelIdentifiersSourceNodeIdentifiersStatement = degas::LabelledEdgeTable::readEdgesByLabelIdentifiersSourceNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*EdgesByLabelIdentifiersSourceNodeIdentifiersStatement, 1, a3);
  degas::Statement::bindBitmap(*EdgesByLabelIdentifiersSourceNodeIdentifiersStatement, 2, a2);
  return EdgesByLabelIdentifiersSourceNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesByLabelIdentifiersTargetNodeIdentifiers(degas::LabelledEdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  EdgesByLabelIdentifiersTargetNodeIdentifiersStatement = degas::LabelledEdgeTable::readEdgesByLabelIdentifiersTargetNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*EdgesByLabelIdentifiersTargetNodeIdentifiersStatement, 1, a3);
  degas::Statement::bindBitmap(*EdgesByLabelIdentifiersTargetNodeIdentifiersStatement, 2, a2);
  return EdgesByLabelIdentifiersTargetNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesBySourceNodeIdentifiers(degas::LabelledEdgeTable *this, Bitmap *a2)
{
  EdgesBySourceNodeIdentifiersStatement = degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*EdgesBySourceNodeIdentifiersStatement, 1, a2);
  return EdgesBySourceNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesByTargetNodeIdentifiers(degas::LabelledEdgeTable *this, Bitmap *a2)
{
  EdgesByTargetNodeIdentifiersStatement = degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*EdgesByTargetNodeIdentifiersStatement, 1, a2);
  return EdgesByTargetNodeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesBySourceNodeIdentifiersEdgeFilter(degas::LabelledEdgeTable *this, Bitmap *a2, const degas::Bitmap *a3)
{
  EdgesBySourceNodeIdentifiersEdgeFilterStatement = degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifiersEdgeFilterStatement(this);
  degas::Statement::bindBitmapPointer(*EdgesBySourceNodeIdentifiersEdgeFilterStatement, 1, a2);
  degas::Statement::bindBitmap(*EdgesBySourceNodeIdentifiersEdgeFilterStatement, 2, a3);
  return EdgesBySourceNodeIdentifiersEdgeFilterStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesByTargetNodeIdentifiersEdgeFilter(degas::LabelledEdgeTable *this, Bitmap *a2, const degas::Bitmap *a3)
{
  EdgesByTargetNodeIdentifiersEdgeFilterStatement = degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifiersEdgeFilterStatement(this);
  degas::Statement::bindBitmapPointer(*EdgesByTargetNodeIdentifiersEdgeFilterStatement, 1, a2);
  degas::Statement::bindBitmap(*EdgesByTargetNodeIdentifiersEdgeFilterStatement, 2, a3);
  return EdgesByTargetNodeIdentifiersEdgeFilterStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesBySourceNodeIdentifier(degas::LabelledEdgeTable *this, sqlite3_int64 a2)
{
  EdgesBySourceNodeIdentifierStatement = degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifierStatement(this);
  degas::Statement::bindInteger(*EdgesBySourceNodeIdentifierStatement, 1, a2);
  return EdgesBySourceNodeIdentifierStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadEdgesByTargetNodeIdentifier(degas::LabelledEdgeTable *this, sqlite3_int64 a2)
{
  EdgesByTargetNodeIdentifierStatement = degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifierStatement(this);
  degas::Statement::bindInteger(*EdgesByTargetNodeIdentifierStatement, 1, a2);
  return EdgesByTargetNodeIdentifierStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiers(degas::LabelledEdgeTable *this, Bitmap *a2)
{
  TargetNodesByEdgeIdentifiersStatement = degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersStatement, 1, a2);
  return TargetNodesByEdgeIdentifiersStatement;
}

sqlite3_stmt ***degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiers(degas::LabelledEdgeTable *this, Bitmap *a2)
{
  SourceNodesByEdgeIdentifiersStatement = degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersStatement, 1, a2);
  return SourceNodesByEdgeIdentifiersStatement;
}

void *degas::LabelledEdgeCursor::LabelledEdgeCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void degas::LabelledEdgeCursor::setForTargetNodesFromLabelsSourceNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  TargetNodesByLabelIdentifiersSourceNodeIdentifiers = degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByLabelIdentifiersSourceNodeIdentifiers(a4, a3, a2);
  v7 = *TargetNodesByLabelIdentifiersSourceNodeIdentifiers;
  v6 = TargetNodesByLabelIdentifiersSourceNodeIdentifiers[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromLabelsTargetNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  SourceNodesByLabelIdentifiersTargetNodeIdentifiers = degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByLabelIdentifiersTargetNodeIdentifiers(a4, a3, a2);
  v7 = *SourceNodesByLabelIdentifiersTargetNodeIdentifiers;
  v6 = SourceNodesByLabelIdentifiersTargetNodeIdentifiers[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForTargetNodesFromSourceNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::LabelledEdgeTable *a3)
{
  TargetNodesBySourceNodeIdentifiersStatement = degas::LabelledEdgeTable::readTargetNodesBySourceNodeIdentifiersStatement(a3);
  degas::Statement::bindBitmapPointer(*TargetNodesBySourceNodeIdentifiersStatement, 1, a2);
  v7 = *TargetNodesBySourceNodeIdentifiersStatement;
  v6 = TargetNodesBySourceNodeIdentifiersStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromTargetNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::LabelledEdgeTable *a3)
{
  SourceNodesByTargetNodeIdentifiersStatement = degas::LabelledEdgeTable::readSourceNodesByTargetNodeIdentifiersStatement(a3);
  degas::Statement::bindBitmapPointer(*SourceNodesByTargetNodeIdentifiersStatement, 1, a2);
  v7 = *SourceNodesByTargetNodeIdentifiersStatement;
  v6 = SourceNodesByTargetNodeIdentifiersStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinBoth(degas::LabelledEdgeCursor *this, Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBoth = degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBoth(a4, a3, a2);
  v7 = *TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBoth;
  v6 = TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinBoth[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinNode(degas::LabelledEdgeCursor *this, Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNode = degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNode(a4, a3, a2);
  v7 = *TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNode;
  v6 = TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinNode[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinEdge(degas::LabelledEdgeCursor *this, Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdge = degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdge(a4, a3, a2);
  v7 = *TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdge;
  v6 = TargetNodesByEdgeIdentifiersSourceNodeIdentifiersJoinEdge[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterEdge(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdge = degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdge(a4, a3, a2);
  v7 = *TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdge;
  v6 = TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterEdge[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterNode(degas::LabelledEdgeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNode = degas::LabelledEdgeTable::prepareStatementToReadTargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNode(a4, a3, a2);
  v7 = *TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNode;
  v6 = TargetNodesByEdgeIdentifiersSourceNodeIdentifiersFilterNode[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinBoth(degas::LabelledEdgeCursor *this, Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBoth = degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBoth(a4, a3, a2);
  v7 = *SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBoth;
  v6 = SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinBoth[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinNode(degas::LabelledEdgeCursor *this, Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNode = degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNode(a4, a3, a2);
  v7 = *SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNode;
  v6 = SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinNode[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinEdge(degas::LabelledEdgeCursor *this, Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdge = degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdge(a4, a3, a2);
  v7 = *SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdge;
  v6 = SourceNodesByEdgeIdentifiersTargetNodeIdentifiersJoinEdge[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterEdge(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdge = degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdge(a4, a3, a2);
  v7 = *SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdge;
  v6 = SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterEdge[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterNode(degas::LabelledEdgeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNode = degas::LabelledEdgeTable::prepareStatementToReadSourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNode(a4, a3, a2);
  v7 = *SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNode;
  v6 = SourceNodesByEdgeIdentifiersTargetNodeIdentifiersFilterNode[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromLabelsSourceNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  EdgesByLabelIdentifiersSourceNodeIdentifiers = degas::LabelledEdgeTable::prepareStatementToReadEdgesByLabelIdentifiersSourceNodeIdentifiers(a4, a3, a2);
  v7 = *EdgesByLabelIdentifiersSourceNodeIdentifiers;
  v6 = EdgesByLabelIdentifiersSourceNodeIdentifiers[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromLabelsTargetNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  EdgesByLabelIdentifiersTargetNodeIdentifiers = degas::LabelledEdgeTable::prepareStatementToReadEdgesByLabelIdentifiersTargetNodeIdentifiers(a4, a3, a2);
  v7 = *EdgesByLabelIdentifiersTargetNodeIdentifiers;
  v6 = EdgesByLabelIdentifiersTargetNodeIdentifiers[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromSourceNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::LabelledEdgeTable *a3)
{
  EdgesBySourceNodeIdentifiersStatement = degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifiersStatement(a3);
  degas::Statement::bindBitmapPointer(*EdgesBySourceNodeIdentifiersStatement, 1, a2);
  v7 = *EdgesBySourceNodeIdentifiersStatement;
  v6 = EdgesBySourceNodeIdentifiersStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromTargetNodes(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::LabelledEdgeTable *a3)
{
  EdgesByTargetNodeIdentifiersStatement = degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifiersStatement(a3);
  degas::Statement::bindBitmapPointer(*EdgesByTargetNodeIdentifiersStatement, 1, a2);
  v7 = *EdgesByTargetNodeIdentifiersStatement;
  v6 = EdgesByTargetNodeIdentifiersStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromSourceNodesEdgeFilter(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  EdgesBySourceNodeIdentifiersEdgeFilter = degas::LabelledEdgeTable::prepareStatementToReadEdgesBySourceNodeIdentifiersEdgeFilter(a4, a2, a3);
  v7 = *EdgesBySourceNodeIdentifiersEdgeFilter;
  v6 = EdgesBySourceNodeIdentifiersEdgeFilter[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromTargetNodesEdgeFilter(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::Bitmap *a3, const degas::LabelledEdgeTable *a4)
{
  EdgesByTargetNodeIdentifiersEdgeFilter = degas::LabelledEdgeTable::prepareStatementToReadEdgesByTargetNodeIdentifiersEdgeFilter(a4, a2, a3);
  v7 = *EdgesByTargetNodeIdentifiersEdgeFilter;
  v6 = EdgesByTargetNodeIdentifiersEdgeFilter[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromSourceNode(degas::LabelledEdgeCursor *this, sqlite3_int64 a2, const degas::LabelledEdgeTable *a3)
{
  EdgesBySourceNodeIdentifierStatement = degas::LabelledEdgeTable::readEdgesBySourceNodeIdentifierStatement(a3);
  degas::Statement::bindInteger(*EdgesBySourceNodeIdentifierStatement, 1, a2);
  v7 = *EdgesBySourceNodeIdentifierStatement;
  v6 = EdgesBySourceNodeIdentifierStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForEdgesFromTargetNode(degas::LabelledEdgeCursor *this, sqlite3_int64 a2, const degas::LabelledEdgeTable *a3)
{
  EdgesByTargetNodeIdentifierStatement = degas::LabelledEdgeTable::readEdgesByTargetNodeIdentifierStatement(a3);
  degas::Statement::bindInteger(*EdgesByTargetNodeIdentifierStatement, 1, a2);
  v7 = *EdgesByTargetNodeIdentifierStatement;
  v6 = EdgesByTargetNodeIdentifierStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForTargetNodesFromEdges(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::LabelledEdgeTable *a3)
{
  TargetNodesByEdgeIdentifiersStatement = degas::LabelledEdgeTable::readTargetNodesByEdgeIdentifiersStatement(a3);
  degas::Statement::bindBitmapPointer(*TargetNodesByEdgeIdentifiersStatement, 1, a2);
  v7 = *TargetNodesByEdgeIdentifiersStatement;
  v6 = TargetNodesByEdgeIdentifiersStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::LabelledEdgeCursor::setForSourceNodesFromEdges(degas::LabelledEdgeCursor *this, Bitmap *a2, const degas::LabelledEdgeTable *a3)
{
  SourceNodesByEdgeIdentifiersStatement = degas::LabelledEdgeTable::readSourceNodesByEdgeIdentifiersStatement(a3);
  degas::Statement::bindBitmapPointer(*SourceNodesByEdgeIdentifiersStatement, 1, a2);
  v7 = *SourceNodesByEdgeIdentifiersStatement;
  v6 = SourceNodesByEdgeIdentifiersStatement[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t degas::MemoryAccountant::MemoryAccountant(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t degas::MemoryAccountant::recordDiffs(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 8) + a3;
  *this += a2;
  *(this + 8) = v3;
  ++*(this + 16);
  return this;
}

void degas::MemoryAccountant::logTotals(degas::MemoryAccountant *this)
{
  v16 = *MEMORY[0x277D85DE8];
  degas::humanReadableMemorySizeWithSize(v8, *this);
  degas::humanReadableMemorySizeWithSize(__p, *(this + 1));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = v8;
    if (v9 < 0)
    {
      v2 = v8[0];
    }

    v3 = __p;
    if (v7 < 0)
    {
      v3 = __p[0];
    }

    v4 = *(this + 4);
    *buf = 136315650;
    v11 = v2;
    v12 = 2080;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Total: resident=%s, footprint=%s, count=%u", buf, 0x1Cu);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2558F3618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::humanReadableMemorySizeWithSize(degas *this, unint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x100000)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v2 = v5 >> 10;
      v3 = v4 + 1;
      if (v4 > 4)
      {
        break;
      }

      v6 = v5 >> 30;
      v5 >>= 10;
      ++v4;
    }

    while (v6);
  }

  else
  {
    v3 = 0;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v7 = MEMORY[0x259C43DF0](&v11, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
  v8 = off_2797FEAF0[v3];
  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::stringbuf::str();
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v15);
}

void sub_2558F3808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x259C43E80](v2 + 112);
  _Unwind_Resume(a1);
}

degas::MemoryEntry *degas::MemoryEntry::MemoryEntry(degas::MemoryEntry *this, degas::MemoryAccountant *a2, unint64_t *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  degas::report_memory((this + 8), this, a3);
  return this;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  degas::report_memory((this + 8), this, a3);
  return this;
}

uint64_t degas::report_memory(degas *this, unint64_t *a2, unint64_t *a3)
{
  task_info_outCnt = 93;
  result = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!result)
  {
    v6 = v9;
    *a2 = v10;
    *this = v6;
  }

  return result;
}

void degas::MemoryEntry::~MemoryEntry(uint64x2_t *this, uint64_t a2, unint64_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  degas::report_memory(&this[1].u64[1], &this[1], a3);
  v6 = vqsubq_u64(this[1], *this);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v8 = v6.i64[1];
    v9 = 2048;
    v10 = v6.i64[0];
    _os_log_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "entry: resident diff=%llu, footprint diff=%llu", buf, 0x16u);
  }

  v4 = this[2].i64[0];
  *v4 = vaddq_s64(*v4, vextq_s8(v6, v6, 8uLL));
  ++v4[1].i32[0];
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2558F3A00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_2558F3D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, degas::Statement *a18)
{
  degas::Cursor::~Cursor(&a18);

  _Unwind_Resume(a1);
}

void sub_2558F4E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v20 = *(v18 - 64);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void sub_2558F5004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v20 = *(v18 - 64);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void sub_2558F57D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  MEMORY[0x259C43EB0](v34, 0xA1C4030951706);
  *(v35 - 104) = &a12;
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v35 - 104));
  _Block_object_dispose(&a22, 8);
  a12 = a11;
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a22 = &a33;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = (v35 - 192);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a22);
  v37 = *(v35 - 144);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v35 - 128);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(v35 - 112);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(a1);
}

void sub_2558F594C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__132(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void std::vector<std::shared_ptr<degas::Predicate>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void sub_2558F5F90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__shared_ptr_pointer<degas::IntersectPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::IntersectPredicate>,std::allocator<degas::IntersectPredicate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255972F11))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::IntersectPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::IntersectPredicate>,std::allocator<degas::IntersectPredicate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::IntersectPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::IntersectPredicate>,std::allocator<degas::IntersectPredicate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__shared_ptr_pointer<degas::NoPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::NoPredicate>,std::allocator<degas::NoPredicate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000002559728D5))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::NoPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::NoPredicate>,std::allocator<degas::NoPredicate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::NoPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::NoPredicate>,std::allocator<degas::NoPredicate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void sub_2558F6538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2558F65D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<degas::AnyLabelsEdgePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AnyLabelsEdgePredicate>,std::allocator<degas::AnyLabelsEdgePredicate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000002559727DDLL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::AnyLabelsEdgePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AnyLabelsEdgePredicate>,std::allocator<degas::AnyLabelsEdgePredicate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::AnyLabelsEdgePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AnyLabelsEdgePredicate>,std::allocator<degas::AnyLabelsEdgePredicate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t std::__shared_ptr_pointer<degas::AnyLabelsNodePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AnyLabelsNodePredicate>,std::allocator<degas::AnyLabelsNodePredicate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000002559726DALL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::AnyLabelsNodePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AnyLabelsNodePredicate>,std::allocator<degas::AnyLabelsNodePredicate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::AnyLabelsNodePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AnyLabelsNodePredicate>,std::allocator<degas::AnyLabelsNodePredicate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void sub_2558F6AB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2558F6B50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<degas::AllLabelsEdgePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AllLabelsEdgePredicate>,std::allocator<degas::AllLabelsEdgePredicate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000002559725D7))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::AllLabelsEdgePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AllLabelsEdgePredicate>,std::allocator<degas::AllLabelsEdgePredicate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::AllLabelsEdgePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AllLabelsEdgePredicate>,std::allocator<degas::AllLabelsEdgePredicate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t std::__shared_ptr_pointer<degas::AllLabelsNodePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AllLabelsNodePredicate>,std::allocator<degas::AllLabelsNodePredicate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000002559724D4))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::AllLabelsNodePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AllLabelsNodePredicate>,std::allocator<degas::AllLabelsNodePredicate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::AllLabelsNodePredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::AllLabelsNodePredicate>,std::allocator<degas::AllLabelsNodePredicate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void sub_2558F71E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v46 + 55) < 0)
  {
    operator delete(*(v46 + 32));
  }

  operator delete(__p);
  if (v45 < 0)
  {
    operator delete(a18);
  }

  MEMORY[0x259C43EB0](v46, 0x10F3C40C42C01C0);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  a36 = &a32;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a36);

  _Unwind_Resume(a1);
}

unint64_t rowCountForElementType(int a1, degas::Database *this)
{
  if ((a1 - 3) < 2)
  {
    return 0;
  }

  if (a1 == 2)
  {

    return degas::Database::edgeCount(this);
  }

  else
  {
    if (a1 != 1)
    {
      abort();
    }

    return degas::Database::nodeCount(this);
  }
}

void stringNSToStd(NSString *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lengthOfBytesUsingEncoding:4];
  v5 = v4;
  v6 = v4 + 1;
  if (v4 > 0x3FF)
  {
    v8 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
    v9 = v3;
    if (([v9 getCString:v8 maxLength:v6 encoding:4] & 1) == 0)
    {
      __assert_rtn("stringNSToChars", "KGDatabase.mm", 97, "success");
    }

    std::string::basic_string[abi:ne200100](a1, v8, v5);
    free(v8);
  }

  else
  {
    MEMORY[0x28223BE20](v4);
    v7 = v3;
    if (([v7 getCString:v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) maxLength:v6 encoding:4] & 1) == 0)
    {
      __assert_rtn("stringNSToChars", "KGDatabase.mm", 97, "success");
    }

    std::string::basic_string[abi:ne200100](a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t std::__shared_ptr_pointer<degas::RangePredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<std::string>>,std::allocator<degas::RangePredicate<std::string>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x800000025597239DLL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::RangePredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<std::string>>,std::allocator<degas::RangePredicate<std::string>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::RangePredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<std::string>>,std::allocator<degas::RangePredicate<std::string>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::RangePredicate<std::string>::debugDescription(uint64_t a1, uint64_t a2)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v30);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v3 = *(a1 + 55);
  if (v3 >= 0)
  {
    v4 = a1 + 32;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 55);
  }

  else
  {
    v5 = *(a1 + 40);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v4, v5);
  LOBYTE(__p[0]) = 44;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, __p, 1);
  v6 = *(a1 + 79);
  if (v6 >= 0)
  {
    v7 = a1 + 56;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 79);
  }

  else
  {
    v8 = *(a1 + 64);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v7, v8);
  if (v32 >= 0)
  {
    v9 = &v30;
  }

  else
  {
    v9 = v30;
  }

  if (v32 >= 0)
  {
    v10 = HIBYTE(v32);
  }

  else
  {
    v10 = v31;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "in ", 3);
  v11 = *(a1 + 16);
  std::stringbuf::str();
  degas::TernaryOperatorDescription(v11, &v16);
  if ((v19 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v13 = v19;
  }

  else
  {
    v13 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v12, v13);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::stringbuf::str();
  v20 = *MEMORY[0x277D82828];
  v14 = v20;
  v15 = *(MEMORY[0x277D82828] + 24);
  *(&v20 + *(v20 - 24)) = v15;
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v24);
  v25 = v14;
  *(&v25 + *(v14 - 24)) = v15;
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v29);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }
}

void sub_2558F79F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a22);
  std::ostringstream::~ostringstream(&a55);
  if (*(v55 - 65) < 0)
  {
    operator delete(*(v55 - 88));
  }

  _Unwind_Resume(a1);
}

void degas::RangePredicate<std::string>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::RangePredicate<std::string>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 80);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::filterElementsForAttributeValueRange(v5, *(a1 + 24), a1 + 32, a1 + 56, *(a1 + 16), a2, a3);
}

uint64_t degas::RangePredicate<std::string>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 80);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return degas::AttributeQuery::elementsForAttributeValueRange(v4, *(a1 + 24), a1 + 32, a1 + 56, *(a1 + 16), a2);
}

void degas::RangePredicate<std::string>::~RangePredicate(uint64_t a1)
{
  *a1 = &unk_2867A97B8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::RangePredicate<std::string>::~RangePredicate(uint64_t a1)
{
  *a1 = &unk_2867A97B8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t std::__shared_ptr_pointer<degas::RangePredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<double>>,std::allocator<degas::RangePredicate<double>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255972219))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::RangePredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<double>>,std::allocator<degas::RangePredicate<double>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::RangePredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<double>>,std::allocator<degas::RangePredicate<double>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::RangePredicate<double>::debugDescription(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v26);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v3 = MEMORY[0x259C43DB0](&v16, *(a1 + 32));
  LOBYTE(__p[0]) = 44;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 1);
  MEMORY[0x259C43DB0](v4, *(a1 + 40));
  if (v28 >= 0)
  {
    v5 = &v26;
  }

  else
  {
    v5 = v26;
  }

  if (v28 >= 0)
  {
    v6 = HIBYTE(v28);
  }

  else
  {
    v6 = v27;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "in ", 3);
  v7 = *(a1 + 16);
  std::stringbuf::str();
  degas::TernaryOperatorDescription(v7, &v12);
  if ((v15 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v8, v9);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::stringbuf::str();
  v16 = *MEMORY[0x277D82828];
  v10 = v16;
  v11 = *(MEMORY[0x277D82828] + 24);
  *(&v16 + *(v16 - 24)) = v11;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v20);
  v21 = v10;
  *(&v21 + *(v10 - 24)) = v11;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v25);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }
}

void sub_2558F8074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a22);
  std::ostringstream::~ostringstream(&a55);
  if (*(v55 - 65) < 0)
  {
    operator delete(*(v55 - 88));
  }

  _Unwind_Resume(a1);
}

void degas::RangePredicate<double>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::RangePredicate<double>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::filterElementsForAttributeValueRange(v5, *(a1 + 24), *(a1 + 16), a2, a3, *(a1 + 32), *(a1 + 40));
}

uint64_t degas::RangePredicate<double>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return degas::AttributeQuery::elementsForAttributeValueRange(v4, *(a1 + 24), *(a1 + 16), a2, *(a1 + 32), *(a1 + 40));
}

uint64_t std::__shared_ptr_pointer<degas::RangePredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<long long>>,std::allocator<degas::RangePredicate<long long>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255972104))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::RangePredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<long long>>,std::allocator<degas::RangePredicate<long long>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::RangePredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::RangePredicate<long long>>,std::allocator<degas::RangePredicate<long long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::RangePredicate<long long>::debugDescription(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v26);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v3 = MEMORY[0x259C43DE0](&v16, *(a1 + 32));
  LOBYTE(__p[0]) = 44;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 1);
  MEMORY[0x259C43DE0](v4, *(a1 + 40));
  if (v28 >= 0)
  {
    v5 = &v26;
  }

  else
  {
    v5 = v26;
  }

  if (v28 >= 0)
  {
    v6 = HIBYTE(v28);
  }

  else
  {
    v6 = v27;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "in ", 3);
  v7 = *(a1 + 16);
  std::stringbuf::str();
  degas::TernaryOperatorDescription(v7, &v12);
  if ((v15 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v8, v9);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::stringbuf::str();
  v16 = *MEMORY[0x277D82828];
  v10 = v16;
  v11 = *(MEMORY[0x277D82828] + 24);
  *(&v16 + *(v16 - 24)) = v11;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v20);
  v21 = v10;
  *(&v21 + *(v10 - 24)) = v11;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v25);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }
}

void sub_2558F8570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a22);
  std::ostringstream::~ostringstream(&a55);
  if (*(v55 - 65) < 0)
  {
    operator delete(*(v55 - 88));
  }

  _Unwind_Resume(a1);
}

void degas::RangePredicate<long long>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::RangePredicate<long long>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = *(a1 + 8);
  v6[1] = v4;
  return degas::AttributeQuery::filterElementsForAttributeValueRange(v6, *(a1 + 24), *(a1 + 32), v3, *(a1 + 16), a2, a3);
}

uint64_t degas::RangePredicate<long long>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::elementsForAttributeValueRange(v5, *(a1 + 24), *(a1 + 32), v2, *(a1 + 16), a2);
}

void sub_2558F8A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  operator delete(v20);
  MEMORY[0x259C43EB0](v21, 0x10F3C403BDC16CCLL);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<degas::BinaryPredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<std::string>>,std::allocator<degas::BinaryPredicate<std::string>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255971FB5))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::BinaryPredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<std::string>>,std::allocator<degas::BinaryPredicate<std::string>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::BinaryPredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<std::string>>,std::allocator<degas::BinaryPredicate<std::string>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::BinaryPredicate<std::string>::debugDescription(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v20);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  if (v22 >= 0)
  {
    v3 = &v20;
  }

  else
  {
    v3 = v20;
  }

  if (v22 >= 0)
  {
    v4 = HIBYTE(v22);
  }

  else
  {
    v4 = v21;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v3, v4);
  std::string::basic_string[abi:ne200100]<0>(__p, off_2797FDF20[*(a1 + 16)]);
  if ((v14 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v6 = v14;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v5, v6);
  v9 = *(a1 + 32);
  v8 = a1 + 32;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v11, v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v19);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_2558F8DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ostringstream::~ostringstream(&a16);
  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  _Unwind_Resume(a1);
}

void degas::BinaryPredicate<std::string>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::BinaryPredicate<std::string>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::filterElementsForAttributeValue(v5, *(a1 + 24), a1 + 32, *(a1 + 16), a2, a3);
}

uint64_t degas::BinaryPredicate<std::string>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return degas::AttributeQuery::elementsForAttributeValue(v4, *(a1 + 24), a1 + 32, *(a1 + 16), a2);
}

void degas::BinaryPredicate<std::string>::~BinaryPredicate(uint64_t a1)
{
  *a1 = &unk_2867A9578;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::BinaryPredicate<std::string>::~BinaryPredicate(uint64_t a1)
{
  *a1 = &unk_2867A9578;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<degas::BinaryPredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<double>>,std::allocator<degas::BinaryPredicate<double>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255971E2ELL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::BinaryPredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<double>>,std::allocator<degas::BinaryPredicate<double>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::BinaryPredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<double>>,std::allocator<degas::BinaryPredicate<double>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::BinaryPredicate<double>::debugDescription(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v14);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  if (v16 >= 0)
  {
    v3 = &v14;
  }

  else
  {
    v3 = v14;
  }

  if (v16 >= 0)
  {
    v4 = HIBYTE(v16);
  }

  else
  {
    v4 = v15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v3, v4);
  std::string::basic_string[abi:ne200100]<0>(__p, off_2797FDF20[*(a1 + 16)]);
  if ((v8 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  MEMORY[0x259C43DB0](&v9, *(a1 + 32));
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }
}

void sub_2558F9260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ostringstream::~ostringstream(&a16);
  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  _Unwind_Resume(a1);
}

void degas::BinaryPredicate<double>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::BinaryPredicate<double>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 40);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::filterElementsForAttributeValue(v5, *(a1 + 24), *(a1 + 16), a2, a3, *(a1 + 32));
}

uint64_t degas::BinaryPredicate<double>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 40);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return degas::AttributeQuery::elementsForAttributeValue(v4, *(a1 + 24), *(a1 + 16), a2, *(a1 + 32));
}

uint64_t std::__shared_ptr_pointer<degas::BinaryPredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<long long>>,std::allocator<degas::BinaryPredicate<long long>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255971D16))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::BinaryPredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<long long>>,std::allocator<degas::BinaryPredicate<long long>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::BinaryPredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::BinaryPredicate<long long>>,std::allocator<degas::BinaryPredicate<long long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::BinaryPredicate<long long>::debugDescription(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v14);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  if (v16 >= 0)
  {
    v3 = &v14;
  }

  else
  {
    v3 = v14;
  }

  if (v16 >= 0)
  {
    v4 = HIBYTE(v16);
  }

  else
  {
    v4 = v15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v3, v4);
  std::string::basic_string[abi:ne200100]<0>(__p, off_2797FDF20[*(a1 + 16)]);
  if ((v8 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  MEMORY[0x259C43DE0](&v9, *(a1 + 32));
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }
}

void sub_2558F961C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ostringstream::~ostringstream(&a16);
  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  _Unwind_Resume(a1);
}

void degas::BinaryPredicate<long long>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::BinaryPredicate<long long>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *(a1 + 8);
  v7[1] = v5;
  return degas::AttributeQuery::filterElementsForAttributeValue(v7, *(a1 + 24), v4, *(a1 + 16), a2, a3);
}

uint64_t degas::BinaryPredicate<long long>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::elementsForAttributeValue(v5, *(a1 + 24), v2, *(a1 + 16), a2);
}

void sub_2558FA048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50, uint64_t a51, uint64_t a52, char a53)
{
  v57 = *v53;
  if (*v53)
  {
    *(v55 + 40) = v57;
    operator delete(v57);
  }

  MEMORY[0x259C43EB0](v55, 0x10E1C40116A7F38);
  if (v54)
  {
    operator delete(v54);
  }

  a50 = &a53;
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a50);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4);
    }

    std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__shared_ptr_pointer<degas::UnionPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::UnionPredicate>,std::allocator<degas::UnionPredicate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255971C02))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::UnionPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::UnionPredicate>,std::allocator<degas::UnionPredicate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::UnionPredicate *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::UnionPredicate>,std::allocator<degas::UnionPredicate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t std::__shared_ptr_pointer<degas::ValueListPredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<double>>,std::allocator<degas::ValueListPredicate<double>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255971B08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::ValueListPredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<double>>,std::allocator<degas::ValueListPredicate<double>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::ValueListPredicate<double> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<double>>,std::allocator<degas::ValueListPredicate<double>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::ValueListPredicate<double>::debugDescription(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v17);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  if (v19 >= 0)
  {
    v3 = &v17;
  }

  else
  {
    v3 = v17;
  }

  if (v19 >= 0)
  {
    v4 = HIBYTE(v19);
  }

  else
  {
    v4 = v18;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v3, v4);
  v5 = *(a1 + 16);
  if (v5 == 1)
  {
    v6 = " in ";
  }

  else
  {
    v6 = " not in ";
  }

  if (v5 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v6, v7);
  v20 = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, &v20, 1);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9 != v8)
  {
    v10 = 1;
    do
    {
      v11 = *v9;
      if ((v10 & 1) == 0)
      {
        v20 = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, &v20, 1);
      }

      MEMORY[0x259C43DB0](&v12, v11);
      v10 = 0;
      ++v9;
    }

    while (v9 != v8);
  }

  v20 = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, &v20, 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v16);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }
}

void sub_2558FA95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 - 73) < 0)
  {
    operator delete(*(v10 - 96));
  }

  _Unwind_Resume(exception_object);
}

void degas::ValueListPredicate<double>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::ValueListPredicate<double>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::filterElementsForAttributeValues(v5, *(a1 + 24), *(a1 + 32), (*(a1 + 40) - *(a1 + 32)) >> 3, *(a1 + 16), a2, a3);
}

uint64_t degas::ValueListPredicate<double>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return degas::AttributeQuery::elementsForAttributeValues(v4, *(a1 + 24), *(a1 + 32), (*(a1 + 40) - *(a1 + 32)) >> 3, *(a1 + 16), a2);
}

void degas::ValueListPredicate<double>::~ValueListPredicate(void *a1)
{
  *a1 = &unk_2867A92E8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x259C43EB0);
}

void *degas::ValueListPredicate<double>::~ValueListPredicate(void *a1)
{
  *a1 = &unk_2867A92E8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<degas::ValueListPredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<long long>>,std::allocator<degas::ValueListPredicate<long long>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000002559719E7))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::ValueListPredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<long long>>,std::allocator<degas::ValueListPredicate<long long>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::ValueListPredicate<long long> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<long long>>,std::allocator<degas::ValueListPredicate<long long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a2);
  }

  std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
}

void degas::ValueListPredicate<long long>::debugDescription(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v17);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  if (v19 >= 0)
  {
    v3 = &v17;
  }

  else
  {
    v3 = v17;
  }

  if (v19 >= 0)
  {
    v4 = HIBYTE(v19);
  }

  else
  {
    v4 = v18;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v3, v4);
  v5 = *(a1 + 16);
  if (v5 == 1)
  {
    v6 = " in ";
  }

  else
  {
    v6 = " not in ";
  }

  if (v5 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v6, v7);
  v20 = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, &v20, 1);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v8 != v9)
  {
    v10 = 1;
    do
    {
      v11 = *v8;
      if ((v10 & 1) == 0)
      {
        v20 = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, &v20, 1);
      }

      MEMORY[0x259C43DE0](&v12, v11);
      v10 = 0;
      ++v8;
    }

    while (v8 != v9);
  }

  v20 = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, &v20, 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v16);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }
}

void sub_2558FAE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 - 57) < 0)
  {
    operator delete(*(v10 - 80));
  }

  _Unwind_Resume(exception_object);
}

void degas::ValueListPredicate<long long>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::ValueListPredicate<long long>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::filterElementsForAttributeValues(v5, *(a1 + 24), *(a1 + 32), (*(a1 + 40) - *(a1 + 32)) >> 3, *(a1 + 16), a2, a3);
}

uint64_t degas::ValueListPredicate<long long>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return degas::AttributeQuery::elementsForAttributeValues(v4, *(a1 + 24), *(a1 + 32), (*(a1 + 40) - *(a1 + 32)) >> 3, *(a1 + 16), a2);
}

void degas::ValueListPredicate<long long>::~ValueListPredicate(void *a1)
{
  *a1 = &unk_2867A9228;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x259C43EB0);
}

void *degas::ValueListPredicate<long long>::~ValueListPredicate(void *a1)
{
  *a1 = &unk_2867A9228;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<degas::ValueListPredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<std::string>>,std::allocator<degas::ValueListPredicate<std::string>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x800000025597188DLL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::ValueListPredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<std::string>>,std::allocator<degas::ValueListPredicate<std::string>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::ValueListPredicate<std::string> *,std::shared_ptr<degas::Predicate>::__shared_ptr_default_delete<degas::Predicate,degas::ValueListPredicate<std::string>>,std::allocator<degas::ValueListPredicate<std::string>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void degas::ValueListPredicate<std::string>::debugDescription(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  degas::Database::getAttributeProperties(a2, *(a1 + 24), &v20);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  if (v22 >= 0)
  {
    v3 = &v20;
  }

  else
  {
    v3 = v20;
  }

  if (v22 >= 0)
  {
    v4 = HIBYTE(v22);
  }

  else
  {
    v4 = v21;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v3, v4);
  v5 = *(a1 + 16);
  if (v5 == 1)
  {
    v6 = " in ";
  }

  else
  {
    v6 = " not in ";
  }

  if (v5 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v6, v7);
  __p.__r_.__value_.__s.__data_[0] = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, &__p, 1);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9 != v8)
  {
    v10 = 1;
    do
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      if ((v10 & 1) == 0)
      {
        v23 = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, &v23, 1);
      }

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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = 0;
      v9 = (v9 + 24);
    }

    while (v9 != v8);
  }

  __p.__r_.__value_.__s.__data_[0] = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, &__p, 1);
  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v19);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_2558FB3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v15 - 73) < 0)
  {
    operator delete(*(v15 - 96));
  }

  _Unwind_Resume(exception_object);
}

void degas::ValueListPredicate<std::string>::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::ValueListPredicate<std::string>::filterElements(uint64_t a1, Bitmap *a2, degas::AggregateValueCursor *a3)
{
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  return degas::AttributeQuery::filterElementsForAttributeValues(v5, *(a1 + 24), *(a1 + 32), -1431655765 * ((*(a1 + 40) - *(a1 + 32)) >> 3), *(a1 + 16), a2, a3);
}

uint64_t degas::ValueListPredicate<std::string>::elements(uint64_t a1, degas::Bitmap *a2)
{
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return degas::AttributeQuery::elementsForAttributeValues(v4, *(a1 + 24), *(a1 + 32), -1431655765 * ((*(a1 + 40) - *(a1 + 32)) >> 3), *(a1 + 16), a2);
}

void degas::ValueListPredicate<std::string>::~ValueListPredicate(uint64_t a1)
{
  *a1 = &unk_2867A9168;
  v1 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::ValueListPredicate<std::string>::~ValueListPredicate(uint64_t a1)
{
  *a1 = &unk_2867A9168;
  v3 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void sub_2558FBB2C(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1 + 16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2558FBBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v12 - 40));

  _Unwind_Resume(a1);
}

void sub_2558FBE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

void sub_2558FBFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

void sub_2558FC118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

void sub_2558FC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v12 - 40));

  _Unwind_Resume(a1);
}

void sub_2558FC344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v12 - 40));

  _Unwind_Resume(a1);
}

void sub_2558FC410(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long,degas::Database::TransactionChanges const&)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long long,degas::Database::TransactionChanges const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_2558FC9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void sub_2558FCD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a10 = &a15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  a13 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void sub_2558FCED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2558FDC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void sub_2558FE03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a10 = &a15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  a13 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void sub_2558FE538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2558FEF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  __p = &a20;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_2558FF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (v50)
  {
    operator delete(v50);
  }

  a45 = &a49;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a45);

  _Unwind_Resume(a1);
}

void sub_2558FFD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20)
{
  __p = &a20;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_255900494(_Unwind_Exception *a1)
{
  *(v1 + 272) = v1 + 304;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v1 + 272));

  _Unwind_Resume(a1);
}

void sub_255900C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  a24 = &a20;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

void sub_2559010B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __p = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_2559015F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v30 - 112) = v29 + 16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v30 - 112));
  a16 = &a27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

void sub_255901CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  a33 = &a57;
  std::vector<degas::EdgeCreationRequest>::__destroy_vector::operator()[abi:ne200100](&a33);

  _Unwind_Resume(a1);
}

void std::vector<degas::EdgeCreationRequest>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 72;
        v7 = (v4 - 48);
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<degas::EdgeCreationRequest>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    v5 = (i - 48);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<degas::EdgeCreationRequest>,degas::EdgeCreationRequest*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v4 = v2 - 72;
        v6 = (v2 - 48);
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v6);
        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_2559021BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  a19 = &a37;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2286(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  result = std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  *(a1 + 88) = *(a2 + 88);
  return result;
}

uint64_t __Block_byref_object_copy__123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2559024D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255902798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v28 - 96) = v27 + 16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v28 - 96));
  a16 = &a25;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

void sub_255902E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  a31 = &a53;
  std::vector<degas::NodeCreationRequest>::__destroy_vector::operator()[abi:ne200100](&a31);

  _Unwind_Resume(a1);
}

void std::vector<degas::NodeCreationRequest>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 56;
        v7 = (v4 - 32);
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<degas::NodeCreationRequest>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v5 = (i - 32);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<degas::NodeCreationRequest>,degas::NodeCreationRequest*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v4 = v2 - 56;
        v6 = (v2 - 32);
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v6);
        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_2559032B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  a19 = &a37;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void sub_255903538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2559037F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255903BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255903D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_25590421C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_2559047F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = a14;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void sub_2559048E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, degas::Statement *a9)
{
  degas::Cursor::~Cursor(&a9);

  _Unwind_Resume(a1);
}

void sub_255904CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  degas::Cursor::~Cursor(v10);

  _Unwind_Resume(a1);
}

void sub_255904D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  degas::Cursor::~Cursor(v10);

  _Unwind_Resume(a1);
}

void sub_25590507C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = a14;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void sub_255905168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, degas::Statement *a9)
{
  degas::Cursor::~Cursor(&a9);

  _Unwind_Resume(a1);
}

void sub_255905550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  degas::Cursor::~Cursor(v10);

  _Unwind_Resume(a1);
}

void sub_255905620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  degas::Cursor::~Cursor(v10);

  _Unwind_Resume(a1);
}

void sub_2559057C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, degas::Statement *a11)
{
  degas::Cursor::~Cursor(&a9);
  degas::Cursor::~Cursor(&a11);

  _Unwind_Resume(a1);
}

void sub_255905888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, degas::Statement *a11)
{
  degas::Cursor::~Cursor(&a9);
  degas::Cursor::~Cursor(&a11);

  _Unwind_Resume(a1);
}

void sub_25590594C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, degas::Statement *a11)
{
  degas::Cursor::~Cursor(&a9);
  degas::Cursor::~Cursor(&a11);

  _Unwind_Resume(a1);
}

void sub_255905A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, degas::Statement *a11)
{
  degas::Cursor::~Cursor(&a9);
  degas::Cursor::~Cursor(&a11);

  _Unwind_Resume(a1);
}

void sub_255905CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255905EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_255906188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, degas::Statement *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a15);
  a9 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_255906350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, degas::Statement *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a15);
  a9 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_255906AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v18 + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a17);

  _Unwind_Resume(a1);
}

void sub_255906CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25590725C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2559074A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255907550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = KGDatabase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_255907804(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_255907A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_255907C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  degas::Database::~Database(&a15);

  _Unwind_Resume(a1);
}

BOOL report_memory(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 | a3)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *task_info_out = 0u;
    v12 = 0u;
    task_info_outCnt = 93;
    v6 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
    result = v6 == 0;
    if (!v6)
    {
      if (a2)
      {
        *a2 = v20;
      }

      if (a3)
      {
        *a3 = *(&v21 + 1);
      }

      if (a1)
      {
        v8 = v12;
LABEL_12:
        *a1 = v8;
      }
    }
  }

  else
  {
    if (a1)
    {
      v12 = 0u;
      v13 = 0u;
      *task_info_out = 0u;
      task_info_outCnt = 12;
      v9 = task_info(*MEMORY[0x277D85F48], 0x14u, task_info_out, &task_info_outCnt);
      result = v9 == 0;
      if (v9)
      {
        return result;
      }

      v8 = *&task_info_out[2];
      goto LABEL_12;
    }

    return 1;
  }

  return result;
}

uint64_t degas::AttributeInstanceTable::deleteEntry(degas::AttributeInstanceTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeInstanceTable::deleteStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  v4 = *v3;

  return degas::Statement::update(v4);
}

char *degas::AttributeInstanceTable::deleteStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 72;
  v2 = *(this + 9);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "delete from ", 12);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where elementId=?1", 19);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_25590887C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::AttributeInstanceTable::createTable(degas::AttributeInstanceTable *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "create table ", 13);
  v2 = *(this + 31);
  if (v2 >= 0)
  {
    v3 = this + 8;
  }

  else
  {
    v3 = *(this + 1);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 31);
  }

  else
  {
    v4 = *(this + 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " (elementId integer primary key, intValue integer, realValue real, stringValue text, dataType integer)", 102);
  v5 = *(this + 4);
  std::stringbuf::str();
  degas::Statement::Statement(ppStmt, v5, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v15);
  return v6;
}

void sub_255908AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  degas::Statement::~Statement(&a16);
  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void degas::AttributeInstanceTable::~AttributeInstanceTable(degas::AttributeInstanceTable *this)
{
  degas::AttributeInstanceTable::~AttributeInstanceTable(this);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A08;
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t degas::AttributeInstanceTable::tableSafeName(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  for (; v3; --v3)
  {
    if (*a1 == 45)
    {
      v10 = 95;
    }

    else
    {
      v10 = *a1;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, &v10, 1);
    a1 = (a1 + 1);
  }

  std::stringbuf::str();
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v9);
}

uint64_t degas::AttributeInstanceTable::AttributeInstanceTable(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "-", 1);
  if (a5)
  {
    v15 = "node";
  }

  else
  {
    if ((a5 & 2) == 0)
    {
      goto LABEL_12;
    }

    v15 = "edge";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v15, 4);
LABEL_12:
  std::stringbuf::str();
  degas::AttributeInstanceTable::tableSafeName(&__p);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v26);
  *a1 = &unk_2867A9A50;
  v16 = (a1 + 8);
  if (SHIBYTE(v19) < 0)
  {
    std::string::__init_copy_ctor_external(v16, v18[0], v18[1]);
    *(a1 + 32) = a2;
    *(a1 + 40) = a6;
    operator delete(v18[0]);
  }

  else
  {
    *&v16->__r_.__value_.__l.__data_ = *v18;
    *(a1 + 24) = v19;
    *(a1 + 32) = a2;
    *(a1 + 40) = a6;
  }

  *a1 = &unk_2867A9A08;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a4;
  return a1;
}

void sub_255909084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double degas::AttributeInstanceTable::AttributeInstanceTable(degas::AttributeInstanceTable *this, const degas::AttributeInstanceTable *a2)
{
  v3 = degas::Table::Table(this, a2);
  *v3 = &unk_2867A9A08;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 46) = *(a2 + 46);
  return result;
}

{
  v3 = degas::Table::Table(this, a2);
  *v3 = &unk_2867A9A08;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 46) = *(a2 + 46);
  return result;
}

uint64_t degas::AttributeInstanceTable::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

BOOL degas::AttributeInstanceTable::operator==(uint64_t a1, uint64_t a2)
{
  result = degas::Table::operator==(a1, a2);
  if (result)
  {
    return *(a2 + 184) == *(a1 + 184);
  }

  return result;
}

char *degas::AttributeInstanceTable::upsertStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 56;
  v2 = *(this + 7);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "insert or replace into ", 23);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (elementId, intValue, realValue, stringValue, dataType) values (?1, ?2, ?3, ?4, ?5)", 84);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_25590942C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

char *degas::AttributeInstanceTable::readByIdentifierStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, intValue, realValue, stringValue, dataType from ", 66);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where elementId=?1", 19);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_255909688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

char *degas::AttributeInstanceTable::readByBitmapStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 104;
  v2 = *(this + 13);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select v.elementId, v.intValue, v.realValue, v.stringValue, v.dataType from ", 76);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " v, identifierBitmap(?) b where v.elementId = b.value order by v.elementId", 74);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_2559098E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

char *degas::AttributeInstanceTable::readByIntValueStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 136;
  v2 = *(this + 17);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, intValue, realValue, stringValue, dataType from ", 66);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where intValue=?1 order by elementId", 37);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_255909B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

char *degas::AttributeInstanceTable::readByRealValueStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 152;
  v2 = *(this + 19);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, intValue, realValue, stringValue, dataType from ", 66);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where realValue=?1 order by elementId", 38);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_255909D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

char *degas::AttributeInstanceTable::readByStringValueStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 168;
  v2 = *(this + 21);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, intValue, realValue, stringValue, dataType from ", 66);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where stringValue=?1 order by elementId", 40);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_255909FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

char *degas::AttributeInstanceTable::readAllStatement(degas::AttributeInstanceTable *this)
{
  v3 = this + 120;
  v2 = *(this + 15);
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select elementId, intValue, realValue, stringValue, dataType from ", 66);
    v4 = *(this + 31);
    if (v4 >= 0)
    {
      v5 = this + 8;
    }

    else
    {
      v5 = *(this + 1);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " order by elementId", 19);
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return v3;
}

void sub_25590A254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::AttributeInstanceTable::insertOrUpdate(degas::AttributeInstanceTable *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v5 = degas::AttributeInstanceTable::upsertStatement(this);
  degas::Statement::bindInteger(*v5, 1, a2);
  degas::Statement::bindInteger(*v5, 2, a3);
  degas::Statement::bindNull(*v5, 3);
  degas::Statement::bindNull(*v5, 4);
  degas::Statement::bindInteger(*v5, 5, 1);
  v6 = *v5;

  return degas::Statement::update(v6);
}

uint64_t degas::AttributeInstanceTable::insertOrUpdateUnsigned(degas::AttributeInstanceTable *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v5 = degas::AttributeInstanceTable::upsertStatement(this);
  degas::Statement::bindInteger(*v5, 1, a2);
  degas::Statement::bindInteger(*v5, 2, a3);
  degas::Statement::bindNull(*v5, 3);
  degas::Statement::bindNull(*v5, 4);
  degas::Statement::bindInteger(*v5, 5, 4);
  v6 = *v5;

  return degas::Statement::update(v6);
}

uint64_t degas::AttributeInstanceTable::insertOrUpdate(degas::AttributeInstanceTable *this, sqlite3_int64 a2, double a3)
{
  v5 = degas::AttributeInstanceTable::upsertStatement(this);
  degas::Statement::bindInteger(*v5, 1, a2);
  degas::Statement::bindNull(*v5, 2);
  degas::Statement::bindDouble(*v5, 3, a3);
  degas::Statement::bindNull(*v5, 4);
  degas::Statement::bindInteger(*v5, 5, 2);
  v6 = *v5;

  return degas::Statement::update(v6);
}

uint64_t degas::AttributeInstanceTable::insertOrUpdate(degas::AttributeInstanceTable *a1, sqlite3_int64 a2, uint64_t *a3)
{
  v5 = degas::AttributeInstanceTable::upsertStatement(a1);
  degas::Statement::bindInteger(*v5, 1, a2);
  degas::Statement::bindNull(*v5, 2);
  degas::Statement::bindNull(*v5, 3);
  degas::Statement::bindString(*v5, 4, a3);
  degas::Statement::bindInteger(*v5, 5, 3);
  v6 = *v5;

  return degas::Statement::update(v6);
}

char *degas::AttributeInstanceTable::prepareStatementToReadByIdentifier(degas::AttributeInstanceTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeInstanceTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

char *degas::AttributeInstanceTable::prepareStatementToReadByBitmap(degas::AttributeInstanceTable *this, Bitmap *a2)
{
  v3 = degas::AttributeInstanceTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

char *degas::AttributeInstanceTable::prepareStatementToReadByValue(degas::AttributeInstanceTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeInstanceTable::readByIntValueStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

char *degas::AttributeInstanceTable::prepareStatementToReadByValue(degas::AttributeInstanceTable *this, double a2)
{
  v3 = degas::AttributeInstanceTable::readByRealValueStatement(this);
  degas::Statement::bindDouble(*v3, 1, a2);
  return v3;
}

uint64_t *degas::AttributeInstanceTable::prepareStatementToReadByValue(degas::AttributeInstanceTable *a1, uint64_t *a2)
{
  v3 = degas::AttributeInstanceTable::readByStringValueStatement(a1);
  degas::Statement::bindString(*v3, 1, a2);
  return v3;
}

void *degas::AttributeInstanceCursor::AttributeInstanceCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

degas::AttributeInstanceCursor *degas::AttributeInstanceCursor::AttributeInstanceCursor(degas::AttributeInstanceCursor *this, degas::AttributeInstanceTable *a2)
{
  AllStatement = degas::AttributeInstanceTable::readAllStatement(a2);
  v4 = *(AllStatement + 1);
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  AllStatement = degas::AttributeInstanceTable::readAllStatement(a2);
  v4 = *(AllStatement + 1);
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AttributeInstanceCursor *degas::AttributeInstanceCursor::AttributeInstanceCursor(degas::AttributeInstanceCursor *this, sqlite3_int64 a2, degas::AttributeInstanceTable *a3)
{
  v5 = degas::AttributeInstanceTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v6 = *(v5 + 1);
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AttributeInstanceCursor *degas::AttributeInstanceCursor::AttributeInstanceCursor(degas::AttributeInstanceCursor *this, Bitmap *a2, degas::AttributeInstanceTable *a3)
{
  v5 = degas::AttributeInstanceTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v6 = *(v5 + 1);
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void degas::AttributeInstanceCursor::setForValue(degas::AttributeInstanceCursor *this, sqlite3_int64 a2, degas::AttributeInstanceTable *a3)
{
  v5 = degas::AttributeInstanceTable::readByIntValueStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v7 = *v5;
  v6 = *(v5 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::AttributeInstanceCursor::setForValue(degas::AttributeInstanceCursor *this, double a2, degas::AttributeInstanceTable *a3)
{
  v5 = degas::AttributeInstanceTable::readByRealValueStatement(a3);
  degas::Statement::bindDouble(*v5, 1, a2);
  v7 = *v5;
  v6 = *(v5 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::AttributeInstanceCursor::setForValue(uint64_t *a1, uint64_t *a2, degas::AttributeInstanceTable *this)
{
  v5 = degas::AttributeInstanceTable::readByStringValueStatement(this);
  degas::Statement::bindString(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1[1];
  *a1 = v7;
  a1[1] = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_25590B79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *degas::Table::Table(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2867A9A50;
  v7 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v7->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  a1[4] = a3;
  a1[5] = a4;
  return a1;
}

degas::Table *degas::Table::Table(degas::Table *this, const degas::Table *a2)
{
  *this = &unk_2867A9A50;
  v4 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(this + 2) = *(a2 + 2);
  return this;
}

void degas::Table::~Table(degas::Table *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t degas::Table::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

BOOL degas::Table::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

BOOL degas::Table::checkTableExists(degas::Table *this)
{
  v2 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "select * from sqlite_master where type = 'table' and name = ?");
  degas::Statement::Statement(ppStmt, v2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  degas::Statement::bindString(ppStmt, 1, this + 1);
  v3 = degas::Statement::next(ppStmt);
  if (v3 == 1)
  {
    degas::Statement::finishStatementCursor(ppStmt);
  }

  degas::Statement::~Statement(ppStmt);
  return v3 == 1;
}

uint64_t degas::Table::rowCount(degas::Table *this, sqlite3_int64 *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "select count(*) from ", 21);
  v4 = *(this + 31);
  if (v4 >= 0)
  {
    v5 = this + 8;
  }

  else
  {
    v5 = *(this + 1);
  }

  if (v4 >= 0)
  {
    v6 = *(this + 31);
  }

  else
  {
    v6 = *(this + 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v5, v6);
  v7 = *(this + 4);
  std::stringbuf::str();
  if (v12 >= 0)
  {
    v8 = &v11;
  }

  else
  {
    v8 = v11;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v8);
  degas::Statement::Statement(ppStmt, v7, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  v9 = degas::Statement::next(ppStmt);
  if (v9 == 1)
  {
    *a2 = sqlite3_column_int64(ppStmt[0], 0);
    degas::Statement::finishStatementCursor(ppStmt);
    v9 = 0;
  }

  degas::Statement::~Statement(ppStmt);
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v20);
  return v9;
}

void sub_25590C4D0(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  if (a13 < 0)
  {
    operator delete(__p);
  }

  if (a7 < 0)
  {
    operator delete(a2);
  }

  std::ostringstream::~ostringstream(&a17);
  MEMORY[0x259C43E80](va);
  _Unwind_Resume(a1);
}

uint64_t degas::Table::statementIdentifier(degas::Table *this, int a2, unsigned int a3)
{
  return (this << 16) | (a2 << 8) | a3;
}

{
  return (a2 << 8) | (*(this + 48) << 16) | a3;
}

void sub_25590D190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2787(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25590D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25590E5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25590E920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25590ED88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25590F18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25590FBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25590FCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MAInverseEdgeType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_255972F78[a1 - 1];
  }
}

void sub_255910188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2559103DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2876(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t degas::LabelTable::deleteEntry(degas::LabelTable *this, sqlite3_int64 a2)
{
  v3 = degas::LabelTable::deleteStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  v4 = *v3;

  return degas::Statement::update(v4);
}

degas::Statement **degas::LabelTable::deleteStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_6_2881;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::LabelTable::createTable(degas::LabelTable *this)
{
  v1 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "create table Label (identifier integer primary key autoincrement, name text, nodeIds blob, edgeIds blob)");
  degas::Statement::Statement(ppStmt, v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  return v2;
}

void degas::LabelTable::~LabelTable(degas::LabelTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

degas::LabelTable *degas::LabelTable::LabelTable(degas::LabelTable *this, sqlite3 *a2, degas::StatementCache *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Label");
  *this = &unk_2867A9A50;
  v6 = (this + 8);
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external(v6, __p[0], __p[1]);
    v7 = SHIBYTE(v10);
    *(this + 4) = a2;
    *(this + 5) = a3;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *__p;
    *(this + 3) = v10;
    *(this + 4) = a2;
    *(this + 5) = a3;
  }

  *this = &unk_2867A9A80;
  *(this + 48) = 4;
  return this;
}

void sub_255910A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

degas::Statement **degas::LabelTable::insertStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable15insertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_2887;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::LabelTable::updateStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0x400;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable15updateStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4_2889;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::LabelTable::readByIdentifierStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_8_2891;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::LabelTable::readAfterIdentifierStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable28readAfterIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_2893;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::LabelTable::readByBitmapStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12_2895;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::LabelTable::readByNameStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0xB00;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable19readByNameStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_14_2897;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::LabelTable::readAllStatement(degas::LabelTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas10LabelTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_16_2899;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::LabelTable::insert(sqlite3 **a1, sqlite3_int64 *a2, uint64_t *a3)
{
  inserted = degas::LabelTable::insertStatement(a1);
  v7 = *inserted;
  if (*a2)
  {
    degas::Statement::bindInteger(v7, 1, *a2);
  }

  else
  {
    degas::Statement::bindNull(v7, 1);
  }

  degas::Statement::bindString(*inserted, 2, a3);
  v10 = 0u;
  memset(v11, 0, 25);
  degas::Statement::bindBitmap(*inserted, 3, &v10);
  degas::Statement::bindBitmap(*inserted, 4, &v10);
  v8 = degas::Statement::update(*inserted);
  if (!v8 && !*a2)
  {
    *a2 = sqlite3_last_insert_rowid(a1[4]);
  }

  v12 = v11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v8;
}

void sub_25591156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t degas::LabelTable::update(degas::LabelTable *this, sqlite3_int64 a2, const degas::Bitmap *a3, const degas::Bitmap *a4)
{
  updated = degas::LabelTable::updateStatement(this);
  degas::Statement::bindInteger(*updated, 1, a2);
  degas::Statement::bindBitmap(*updated, 2, a3);
  degas::Statement::bindBitmap(*updated, 3, a4);
  v8 = *updated;

  return degas::Statement::update(v8);
}

sqlite3_stmt ***degas::LabelTable::prepareStatementToReadByIdentifier(degas::LabelTable *this, sqlite3_int64 a2)
{
  v3 = degas::LabelTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::LabelTable::prepareStatementToReadAfterIdentifier(degas::LabelTable *this, sqlite3_int64 a2)
{
  v3 = degas::LabelTable::readAfterIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::LabelTable::prepareStatementToReadByBitmap(degas::LabelTable *this, Bitmap *a2)
{
  v3 = degas::LabelTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

uint64_t *degas::LabelTable::prepareStatementToReadByName(degas::LabelTable *a1, uint64_t *a2)
{
  v3 = degas::LabelTable::readByNameStatement(a1);
  degas::Statement::bindString(*v3, 1, a2);
  return v3;
}

degas::LabelCursor *degas::LabelCursor::LabelCursor(degas::LabelCursor *this, sqlite3_int64 a2, const degas::LabelTable *a3)
{
  v5 = degas::LabelTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

sqlite3_stmt ***degas::LabelCursor::LabelCursor(sqlite3_stmt ***a1, sqlite3_int64 a2, degas::LabelTable *this, int a4)
{
  if (a4 == 5)
  {
    v6 = degas::LabelTable::readAfterIdentifierStatement(this);
  }

  else
  {
    v6 = degas::LabelTable::readByIdentifierStatement(this);
  }

  v7 = v6;
  degas::Statement::bindInteger(*v6, 1, a2);
  v8 = v7[1];
  *a1 = *v7;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  return a1;
}

degas::LabelCursor *degas::LabelCursor::LabelCursor(degas::LabelCursor *this, Bitmap *a2, const degas::LabelTable *a3)
{
  v5 = degas::LabelTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t *degas::LabelCursor::LabelCursor(uint64_t *a1, uint64_t *a2, degas::LabelTable *this)
{
  v5 = degas::LabelTable::readByNameStatement(this);
  degas::Statement::bindString(*v5, 1, a2);
  v6 = v5[1];
  *a1 = *v5;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

degas::LabelCursor *degas::LabelCursor::LabelCursor(degas::LabelCursor *this, const degas::LabelTable *a2)
{
  AllStatement = degas::LabelTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  AllStatement = degas::LabelTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

int32x2_t degas::IOAccountingEntry::operator-=(int32x2_t *a1, int32x2_t *a2)
{
  result = vsub_s32(*a1, *a2);
  *a1 = result;
  a1[1].i32[0] -= a2[1].i32[0];
  return result;
}

int32x2_t degas::IOAccountingEntry::operator+=(int32x2_t *a1, int32x2_t *a2)
{
  result = vadd_s32(*a1, *a2);
  *a1 = result;
  a1[1].i32[0] += a2[1].i32[0];
  return result;
}

uint64_t degas::StepSpecification::StepSpecification(uint64_t result, int a2, void *a3)
{
  *result = a2;
  v3 = a3[1];
  *(result + 8) = *a3;
  *(result + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = a2;
  v3 = a3[1];
  *(result + 8) = *a3;
  *(result + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t degas::StepSpecification::StepSpecification(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t degas::StepSpecification::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void degas::StepSpecification::setTargetNodeFilter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t degas::StepSpecification::appendSourceNodesForEdges(degas::StepSpecification *this, degas::Database *a2, Bitmap *a3, degas::Bitmap *a4)
{
  degas::EdgeCursor::EdgeCursor(v12);
  degas::EdgeCursor::setForIdentifiers(v12, a3, (a2 + 248));
  while (degas::Statement::next(v12[0]) == 1)
  {
    v7 = sqlite3_column_int64(*v12[0], 2);
    degas::Bitmap::setBit(a4, v7);
  }

  v8 = *(v12[0] + 4);
  if ((v8 - 100) < 2 || v8 == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 7;
  }

  degas::Cursor::~Cursor(v12);
  return v10;
}

uint64_t degas::StepSpecification::appendTargetNodesForEdges(degas::StepSpecification *this, degas::Database *a2, Bitmap *a3, degas::Bitmap *a4)
{
  degas::EdgeCursor::EdgeCursor(v12);
  degas::EdgeCursor::setForIdentifiers(v12, a3, (a2 + 248));
  while (degas::Statement::next(v12[0]) == 1)
  {
    v7 = sqlite3_column_int64(*v12[0], 3);
    degas::Bitmap::setBit(a4, v7);
  }

  v8 = *(v12[0] + 4);
  if ((v8 - 100) < 2 || v8 == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 7;
  }

  degas::Cursor::~Cursor(v12);
  return v10;
}

uint64_t degas::StepSpecification::performStepWithoutPathRecording(degas::StepSpecification *this, degas::Database *a2, Bitmap *a3, degas::Bitmap *a4)
{
  v8 = *(this + 1);
  memset(&v23, 0, 41);
  memset(&v22, 0, 41);
  v20 = 0u;
  memset(v21, 0, 25);
  if (!v8 || (appended = (*(*v8 + 16))(v8, &v20), !appended))
  {
    degas::NodeCursor::NodeCursor(v19);
    degas::NodeCursor::setForIdentifiers(v19, a3, (a2 + 192));
    v17 = 0u;
    memset(v18, 0, 25);
    while (degas::Statement::next(v19[0]) == 1)
    {
      v10 = *this;
      if (*this <= 1u)
      {
        degas::Statement::bitmapColumnValue(v19[0], 3, &v23);
        if (v8)
        {
          degas::Bitmap::intersectWith<degas::Bitmap>(&v23, &v20);
        }

        if (v23._bitSets.__begin_ != v23._bitSets.__end_)
        {
          appended = degas::StepSpecification::appendTargetNodesForEdges(v11, a2, &v23, &v17);
          if (appended)
          {
            goto LABEL_22;
          }
        }

        v10 = *this;
      }

      if ((v10 | 2) == 2)
      {
        degas::Statement::bitmapColumnValue(v19[0], 2, &v22);
        if (v8)
        {
          degas::Bitmap::intersectWith<degas::Bitmap>(&v22, &v20);
        }

        if (v22._bitSets.__begin_ != v22._bitSets.__end_)
        {
          appended = degas::StepSpecification::appendSourceNodesForEdges(v12, a2, &v22, &v17);
          if (appended)
          {
            goto LABEL_22;
          }
        }
      }
    }

    v13 = *(this + 3);
    if (v13)
    {
      v15 = 0u;
      memset(v16, 0, 25);
      appended = (*(*v13 + 16))(v13, &v15);
      if (appended)
      {
        v24 = v16;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v24);
LABEL_22:
        *&v15 = v18;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
        degas::Cursor::~Cursor(v19);
        goto LABEL_23;
      }

      degas::Bitmap::intersectWith<degas::Bitmap>(&v17, &v15);
      v24 = v16;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v24);
    }

    degas::Bitmap::operator=(a4, &v17);
    appended = 0;
    goto LABEL_22;
  }

LABEL_23:
  *&v17 = v21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);
  *&v20 = &v22._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v20);
  v22._bitCount = &v23._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v22);
  return appended;
}

void sub_255911FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, degas::Statement *a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29, uint64_t a30, uint64_t a31)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  degas::Cursor::~Cursor(&a21);
  a15 = &a25;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  a23 = &a31;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a23);
  a29 = (v31 - 112);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t degas::StepSpecification::performStepWithUncountedPathRecording(degas::StepSpecification *this, degas::Database *a2, const degas::UncountedPathCollection *a3, degas::UncountedPathCollection *a4)
{
  v7 = *(this + 1);
  v8 = *(this + 3);
  v9 = 0uLL;
  memset(&v40, 0, 41);
  memset(&v39, 0, 41);
  v37 = 0u;
  memset(v38, 0, 25);
  if (!v7 || (appended = (*(*v7 + 16))(v7, &v37), v9 = 0uLL, !appended))
  {
    *(v36 + 9) = v9;
    v35 = v9;
    v36[0] = v9;
    if (v8)
    {
      appended = (*(**(this + 3) + 16))(*(this + 3), &v35);
      if (appended)
      {
        goto LABEL_52;
      }
    }

    degas::NodeCursor::NodeCursor(v34);
    degas::NodeCursor::setForIdentifiers(v34, (a3 + 24), (a2 + 192));
    v32 = 0u;
    memset(v33, 0, 25);
LABEL_6:
    while (2)
    {
      if (degas::Statement::next(v34[0]) == 1)
      {
        v11 = sqlite3_column_int64(*v34[0], 0);
        v32 = 0uLL;
        v13 = v33[0];
        for (i = v33[1]; i != v13; i -= 16)
        {
          degas::BitsetPtr::releaseBitset((i - 16));
          *(i - 8) = 0;
        }

        v33[1] = v13;
        v14 = *this;
        if (*this > 1u)
        {
LABEL_15:
          if ((v14 | 2) != 2)
          {
            goto LABEL_20;
          }

          degas::Statement::bitmapColumnValue(v34[0], 2, &v39);
          if (v7)
          {
            degas::Bitmap::intersectWith<degas::Bitmap>(&v39, &v37);
          }

          if (v39._bitSets.__begin_ == v39._bitSets.__end_ || (appended = degas::StepSpecification::appendSourceNodesForEdges(v16, a2, &v39, &v32), !appended))
          {
LABEL_20:
            if (v8)
            {
              degas::Bitmap::intersectWith<degas::Bitmap>(&v32, &v35);
            }

            if (!*(a3 + 2))
            {
              degas::Bitmap::begin(&v32, &v29);
              while (1)
              {
                v22 = v30;
                if (v29 == &v32 && v30 == -1)
                {
                  if (v31 == v33[1])
                  {
                    goto LABEL_6;
                  }

                  v22 = -1;
                }

                degas::UncountedPathCollection::addPath(a4, v11, v22);
                degas::Bitmap::iterator::operator++(&v29);
              }
            }

            degas::Bitmap::begin(&v32, &v29);
LABEL_24:
            v17 = v30;
            if (v29 == &v32 && v30 == -1)
            {
              if (v31 == v33[1])
              {
                continue;
              }

              v17 = -1;
            }

            v19 = degas::UncountedPathCollection::sourceNodesForTargetNodeId(a3, v11);
            degas::Bitmap::begin(*v19, &v26);
            while (1)
            {
              v20 = v27;
              if (v26 == *v19 && v27 == -1)
              {
                if (v28 == *(*v19 + 24))
                {
                  degas::Bitmap::iterator::operator++(&v29);
                  goto LABEL_24;
                }

                v20 = -1;
              }

              degas::UncountedPathCollection::addPath(a4, v20, v17);
              degas::Bitmap::iterator::operator++(&v26);
            }
          }

          break;
        }

        degas::Statement::bitmapColumnValue(v34[0], 3, &v40);
        if (v7)
        {
          degas::Bitmap::intersectWith<degas::Bitmap>(&v40, &v37);
        }

        if (v40._bitSets.__begin_ == v40._bitSets.__end_ || (appended = degas::StepSpecification::appendTargetNodesForEdges(v15, a2, &v40, &v32), !appended))
        {
          v14 = *this;
          goto LABEL_15;
        }
      }

      else
      {
        appended = 0;
      }

      break;
    }

    v29 = v33;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v29);
    degas::Cursor::~Cursor(v34);
LABEL_52:
    *&v32 = v36;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v32);
  }

  *&v35 = v38;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v35);
  *&v37 = &v39._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v37);
  v39._bitCount = &v40._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v39);
  return appended;
}

void sub_2559123C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, degas::Statement *a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, uint64_t a33)
{
  degas::Cursor::~Cursor(&a23);
  a17 = &a27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a17);
  a25 = &a33;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a25);
  a31 = (v33 - 176);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a31);
  *(v33 - 192) = v33 - 128;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v33 - 192));
  _Unwind_Resume(a1);
}

uint64_t degas::StepSpecification::performStepWithCountedPathRecording(degas::StepSpecification *this, degas::Database *a2, const degas::CountedPathCollection *a3, degas::CountedPathCollection *a4)
{
  v7 = *(this + 1);
  v8 = *(this + 3);
  v9 = 0uLL;
  memset(&v39, 0, 41);
  memset(&v38, 0, 41);
  v36 = 0u;
  memset(v37, 0, 25);
  if (!v7 || (appended = (*(*v7 + 16))(v7, &v36), v9 = 0uLL, !appended))
  {
    *&v35[9] = v9;
    v34 = v9;
    *v35 = v9;
    if (v8)
    {
      appended = (*(**(this + 3) + 16))(*(this + 3), &v34);
      if (appended)
      {
        goto LABEL_50;
      }
    }

    degas::NodeCursor::NodeCursor(v33);
    degas::NodeCursor::setForIdentifiers(v33, (a3 + 24), (a2 + 192));
    v31 = 0u;
    memset(v32, 0, 25);
LABEL_6:
    if (degas::Statement::next(v33[0]) == 1)
    {
      v11 = sqlite3_column_int64(*v33[0], 0);
      v31 = 0uLL;
      v12 = v32[0];
      for (i = v32[1]; i != v12; i -= 16)
      {
        degas::BitsetPtr::releaseBitset((i - 16));
        *(i - 8) = 0;
      }

      v32[1] = v12;
      v14 = *this;
      if (*this > 1u)
      {
LABEL_15:
        if ((v14 | 2) != 2)
        {
          goto LABEL_20;
        }

        degas::Statement::bitmapColumnValue(v33[0], 2, &v38);
        if (v7)
        {
          degas::Bitmap::intersectWith<degas::Bitmap>(&v38, &v36);
        }

        if (v38._bitSets.__begin_ == v38._bitSets.__end_ || (appended = degas::StepSpecification::appendSourceNodesForEdges(v16, a2, &v38, &v31), !appended))
        {
LABEL_20:
          if (v8)
          {
            degas::Bitmap::intersectWith<degas::Bitmap>(&v31, &v34);
          }

          if (*(a3 + 2))
          {
            degas::Bitmap::begin(&v31, &v28);
            while (1)
            {
              v17 = v29;
              v18 = v28 == &v31 && v29 == -1;
              if (v18)
              {
                if (v30 == v32[1])
                {
                  goto LABEL_6;
                }

                v17 = -1;
              }

              v19 = degas::CountedPathCollection::sourcePathsForTargetNodeId(a3, v11);
              v21 = v19 + 1;
              v20 = *v19;
              if (*v19 != v19 + 1)
              {
                do
                {
                  degas::CountedPathCollection::addPath(a4, v20[4], v17, *(v20 + 10));
                  v22 = v20[1];
                  if (v22)
                  {
                    do
                    {
                      v23 = v22;
                      v22 = *v22;
                    }

                    while (v22);
                  }

                  else
                  {
                    do
                    {
                      v23 = v20[2];
                      v18 = *v23 == v20;
                      v20 = v23;
                    }

                    while (!v18);
                  }

                  v20 = v23;
                }

                while (v23 != v21);
              }

              degas::Bitmap::iterator::operator++(&v28);
            }
          }

          degas::Bitmap::begin(&v31, &v28);
          while (1)
          {
            v24 = v29;
            if (v28 == &v31 && v29 == -1)
            {
              if (v30 == v32[1])
              {
                goto LABEL_6;
              }

              v24 = -1;
            }

            degas::CountedPathCollection::addPath(a4, v11, v24, 1);
            degas::Bitmap::iterator::operator++(&v28);
          }
        }

        goto LABEL_49;
      }

      degas::Statement::bitmapColumnValue(v33[0], 3, &v39);
      if (v7)
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v39, &v36);
      }

      if (v39._bitSets.__begin_ == v39._bitSets.__end_ || (appended = degas::StepSpecification::appendTargetNodesForEdges(v15, a2, &v39, &v31), !appended))
      {
        v14 = *this;
        goto LABEL_15;
      }
    }

    else
    {
      appended = 0;
    }

LABEL_49:
    v28 = v32;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v28);
    degas::Cursor::~Cursor(v33);
LABEL_50:
    *&v31 = v35;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v31);
  }

  *&v34 = v37;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v34);
  *&v36 = &v38._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v36);
  v38._bitCount = &v39._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v38);
  return appended;
}

void sub_2559127FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, degas::Statement *a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29, uint64_t a30, uint64_t a31)
{
  degas::Cursor::~Cursor(&a21);
  a15 = &a25;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  a23 = &a31;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a23);
  a29 = (v31 - 176);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v31 - 192) = v31 - 128;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v31 - 192));
  _Unwind_Resume(a1);
}

double degas::Traversal::Traversal(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

{
  *a1 = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

uint64_t degas::Traversal::startFromNodes(uint64_t a1, void *a2)
{
  v3 = (*(**a2 + 16))(*a2, a1 + 64);
  if (!v3)
  {
    degas::Bitmap::operator=((a1 + 16), (a1 + 64));
  }

  return v3;
}

void *degas::Traversal::startFromNodes(degas::Traversal *this, const degas::Bitmap *a2)
{
  degas::Bitmap::operator=(this + 8, a2);

  return degas::Bitmap::operator=(this + 2, a2);
}

void degas::Traversal::addStep(degas::Traversal *this, const degas::StepSpecification *a2)
{
  v3 = *(this + 17);
  v4 = *(this + 18);
  if (v3 >= v4)
  {
    v8 = *(this + 16);
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = 40 * v9;
    *v13 = *a2;
    v14 = *(a2 + 2);
    *(v13 + 8) = *(a2 + 1);
    *(v13 + 16) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(a2 + 4);
    *(40 * v9 + 0x18) = *(a2 + 3);
    *(40 * v9 + 0x20) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v13 + 40;
    v24 = (v13 + 40);
    v16 = *(this + 16);
    v17 = *(this + 17);
    v18 = v13 + v16 - v17;
    if (v17 != v16)
    {
      v19 = *(this + 16);
      v20 = v13 + v16 - v17;
      do
      {
        *v20 = *v19;
        v21 = *(v19 + 16);
        *(v20 + 8) = *(v19 + 8);
        *(v20 + 16) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v22 = *(v19 + 32);
        *(v20 + 24) = *(v19 + 24);
        *(v20 + 32) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v19 += 40;
        v20 += 40;
      }

      while (v19 != v17);
      do
      {
        std::allocator<degas::StepSpecification>::destroy[abi:ne200100](v16);
        v16 += 40;
      }

      while (v16 != v17);
    }

    v23 = *(this + 16);
    *(this + 16) = v18;
    *(this + 136) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 2);
    *(v3 + 8) = *(a2 + 1);
    *(v3 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 4);
    *(v3 + 24) = *(a2 + 3);
    *(v3 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v3 + 40;
  }

  *(this + 17) = v7;
}

void std::allocator<degas::StepSpecification>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void degas::Traversal::setTerminatingCondition(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 120);
  *(a1 + 112) = v3;
  *(a1 + 120) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t degas::Traversal::performFixedStepTraversal(degas::Traversal *this)
{
  v3 = *(this + 2);
  if (v3)
  {
    if (v3 == 2)
    {
      operator new();
    }

    if (v3 == 1)
    {
      operator new();
    }

    return 0;
  }

  degas::Bitmap::operator=(this + 2, this + 8);
  v4 = *(this + 16);
  v5 = *(this + 17);
  if (v4 == v5)
  {
    return 0;
  }

  while (1)
  {
    LODWORD(v17[0]) = *v4;
    v6 = *(v4 + 16);
    v17[1] = *(v4 + 8);
    v17[2] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    v7 = *(v4 + 32);
    v17[3] = *(v4 + 24);
    v17[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    v15 = 0u;
    memset(v16, 0, 25);
    v8 = degas::StepSpecification::performStepWithoutPathRecording(v17, *this, (this + 16), &v15);
    v9 = v8;
    if (v8)
    {
      v10 = 0;
      v11 = 0;
      v1 = v8;
    }

    else
    {
      degas::Bitmap::operator=(this + 2, &v15);
      v12 = *(this + 4);
      v13 = *(this + 5);
      v10 = v12 != v13;
      v11 = v12 == v13;
    }

    v18 = v16;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (!v10)
    {
      break;
    }

    v4 += 40;
    if (v4 == v5)
    {
      return v9;
    }
  }

  if (v11)
  {
    return v9;
  }

  return v1;
}

void sub_255913170(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<degas::UncountedPathCollection>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void degas::StepSpecification::~StepSpecification(degas::StepSpecification *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_25591322C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<degas::CountedPathCollection>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::default_delete<degas::CountedPathCollection>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 40);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
    std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::destroy(*(v1 + 8));

    JUMPOUT(0x259C43EB0);
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::destroy(a1[1]);
    std::__tree<unsigned long long>::destroy(a1[6]);

    operator delete(a1);
  }
}

uint64_t std::__shared_ptr_pointer<degas::CountedPathCollection *,std::shared_ptr<degas::CountedPathCollection>::__shared_ptr_default_delete<degas::CountedPathCollection,degas::CountedPathCollection>,std::allocator<degas::CountedPathCollection>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255972B18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<degas::CountedPathCollection *,std::shared_ptr<degas::CountedPathCollection>::__shared_ptr_default_delete<degas::CountedPathCollection,degas::CountedPathCollection>,std::allocator<degas::CountedPathCollection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t std::default_delete<degas::UncountedPathCollection>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 40);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(*(v1 + 8));

    JUMPOUT(0x259C43EB0);
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

uint64_t std::__shared_ptr_pointer<degas::UncountedPathCollection *,std::shared_ptr<degas::UncountedPathCollection>::__shared_ptr_default_delete<degas::UncountedPathCollection,degas::UncountedPathCollection>,std::allocator<degas::UncountedPathCollection>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255972A2DLL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<degas::UncountedPathCollection *,std::shared_ptr<degas::UncountedPathCollection>::__shared_ptr_default_delete<degas::UncountedPathCollection,degas::UncountedPathCollection>,std::allocator<degas::UncountedPathCollection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::Traversal::performVariableStepTraversal(degas::Traversal *this)
{
  v11 = 0u;
  memset(v12, 0, 25);
  v2 = *(this + 14);
  if (v2 && ((*(*v2 + 16))(v2, &v11), v3 = *(this + 16), v3 != *(this + 17)) && (*v3 || *(v3 + 3)))
  {
    v4 = *(this + 2);
    switch(v4)
    {
      case 0:
        degas::Bitmap::operator=(this + 2, this + 8);
        *v9 = 0u;
        memset(v10, 0, 25);
        while (1)
        {
          *v7 = 0u;
          memset(v8, 0, 25);
          if (!degas::StepSpecification::performStepWithoutPathRecording(v3, *this, (this + 16), v7))
          {
            if (v8[0] == v8[1] || (degas::Bitmap::operator==(v7, this + 16) & 1) != 0)
            {
              v13 = v8;
              std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v13);
              degas::Bitmap::operator=(this + 2, v9);
              v7[0] = v10;
              std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v7);
              goto LABEL_19;
            }

            degas::Bitmap::operator=(this + 2, v7);
            degas::Bitmap::intersectWith<degas::Bitmap>(v7, &v11);
            if (v8[0] != v8[1])
            {
              degas::Bitmap::unionWith<degas::Bitmap>(v9, v7);
            }
          }

          v13 = v8;
          std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v13);
        }

      case 2:
        operator new();
      case 1:
        operator new();
    }

LABEL_19:
    v5 = 0;
  }

  else
  {
    v5 = 6;
  }

  v9[0] = v12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v9);
  return v5;
}

void sub_255913954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a23;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t degas::Traversal::targetNodes(degas::Traversal *this)
{
  v1 = *(this + 2);
  if (v1 == 2)
  {
    v2 = *(this + 19);
    return v2 + 24;
  }

  if (v1 == 1)
  {
    v2 = *(this + 21);
    return v2 + 24;
  }

  return this + 16;
}

void degas::Traversal::populateDistribution(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v7 = *(a1 + 152);
    v6 = *(a1 + 160);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a2[1];
    *a2 = v7;
    a2[1] = v6;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else if (v2 == 1)
  {
    v4 = *(a1 + 168);
    v3 = *(a1 + 176);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a2[3];
    a2[2] = v4;
    a2[3] = v3;
    if (v5)
    {
LABEL_6:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t degas::Bitset::encodedLength(degas::Bitset *this)
{
  v1 = *(this + 1);
  if (v1 < 0x80)
  {
    v4 = 1;
  }

  else
  {
    v2 = -1;
    do
    {
      v3 = v1 >> 14;
      v1 >>= 7;
      ++v2;
    }

    while (v3);
    v4 = v2 + 2;
  }

  v5 = *(this + 1);
  if (v5 <= 0x7F)
  {
    v9 = v4 + 1;
  }

  else
  {
    v6 = -1;
    v7 = *(this + 1);
    do
    {
      v8 = v7 >> 14;
      v7 >>= 7;
      ++v6;
    }

    while (v8);
    v9 = v6 + v4 + 2;
    if (v5 == 1024)
    {
      return v9;
    }
  }

  for (i = 0; i != 32; ++i)
  {
    v11 = (*(this + i + 4) + 1);
    if (v11 < 0x80)
    {
      v14 = 1;
    }

    else
    {
      v12 = -1;
      do
      {
        v13 = v11 >> 14;
        v11 >>= 7;
        ++v12;
      }

      while (v13);
      v14 = v12 + 2;
    }

    v9 += v14;
  }

  return v9;
}

uint64_t degas::Bitset::appendEncodedToBuffer(uint64_t this, unsigned __int8 **a2)
{
  v2 = *(this + 8);
  if (v2 < 0x80)
  {
    v4 = *(this + 8);
  }

  else
  {
    do
    {
      v3 = (*a2)++;
      *v3 = v2 | 0x80;
      v4 = v2 >> 7;
      v5 = v2 >> 14;
      v2 >>= 7;
    }

    while (v5);
  }

  v6 = (*a2)++;
  *v6 = v4;
  v7 = *(this + 4);
  if (v7 < 0x80)
  {
    LODWORD(v9) = *(this + 4);
  }

  else
  {
    do
    {
      v8 = (*a2)++;
      *v8 = v7 | 0x80;
      v9 = v7 >> 7;
      v10 = v7 >> 14;
      v7 >>= 7;
    }

    while (v10);
  }

  v11 = (*a2)++;
  *v11 = v9;
  if (*(this + 4) != 1024)
  {
    v12 = 0;
    v13 = this + 16;
    do
    {
      v14 = (*(v13 + 4 * v12) + 1);
      if (v14 < 0x80)
      {
        LODWORD(v16) = *(v13 + 4 * v12) + 1;
      }

      else
      {
        do
        {
          v15 = (*a2)++;
          *v15 = v14 | 0x80;
          v16 = v14 >> 7;
          v17 = v14 >> 14;
          v14 >>= 7;
        }

        while (v17);
      }

      v18 = (*a2)++;
      *v18 = v16;
      ++v12;
    }

    while (v12 != 32);
  }

  return this;
}