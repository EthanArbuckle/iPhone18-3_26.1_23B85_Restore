void llvm::DAGDeltaAlgorithm::Run(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v3 = v4;
  v4[0] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v4[1] = 0;
  v5 = v6;
  v7 = v8;
  v8[0] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v8[1] = 0;
  v9 = v10;
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  if (*a1 != a1 + 1)
  {
    operator new();
  }

  if (*a2 != a2[1])
  {
    operator new();
  }

  if (*a1 != a1 + 1)
  {
    operator new();
  }

  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  std::__tree<long long>::destroy(&v13, v14[0]);
  std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(&v11, v12[0]);
  std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(&v9, v10[0]);
  std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(&v7, v8[0]);
  std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(&v5, v6[0]);
  std::__tree<std::set<unsigned int>>::destroy(&v3, v4[0]);
}

uint64_t anonymous namespace::DeltaActiveSetHelper::ExecuteOneTest(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v19, *v3, (v3 + 8));
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v19, *a2, (a2 + 8));
  v5 = *a2;
  if (*a2 != a2 + 8)
  {
    v6 = v4 + 14;
    do
    {
      v7 = v5[7];
      v8 = *v6;
      if (!*v6)
      {
LABEL_10:
        operator new();
      }

      v9 = *v6;
      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = v9[8];
          if (v11 <= v7)
          {
            break;
          }

          v9 = *v10;
          if (!*v10)
          {
            goto LABEL_10;
          }
        }

        if (v11 >= v7)
        {
          break;
        }

        v9 = v10[1];
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      if (!v8)
      {
LABEL_17:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v12 = v8;
          v13 = v8[8];
          if (v13 <= v7)
          {
            break;
          }

          v8 = *v12;
          if (!*v12)
          {
            goto LABEL_17;
          }
        }

        if (v13 >= v7)
        {
          break;
        }

        v8 = *(v12 + 1);
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v19, v10[5], v12 + 12);
      v14 = *(v5 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v5 + 2);
          v16 = *v15 == v5;
          v5 = v15;
        }

        while (!v16);
      }

      v5 = v15;
    }

    while (v15 != (a2 + 8));
  }

  if (!std::__tree<std::set<unsigned int>>::__count_unique<std::set<unsigned int>>((v4 + 4), &v19))
  {
    if ((*(**v4 + 32))(*v4, &v19))
    {
      v17 = 1;
      goto LABEL_26;
    }

    if (!*std::__tree<std::set<unsigned int>>::__find_equal<std::set<unsigned int>>((v4 + 4), &v21, &v19))
    {
      operator new();
    }
  }

  v17 = 0;
LABEL_26:
  std::__tree<long long>::destroy(&v19, v20[0]);
  return v17;
}

void anonymous namespace::DeltaActiveSetHelper::~DeltaActiveSetHelper(_anonymous_namespace_::DeltaActiveSetHelper *this)
{
  llvm::DeltaAlgorithm::~DeltaAlgorithm(this);

  JUMPOUT(0x259C63180);
}

void std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(a1, a2[1]);
    std::__tree<long long>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

unsigned int *llvm::caseFoldingDjbHash(unsigned int *result, char *a2, uint64_t a3)
{
  v3 = a3;
  if (!a2)
  {
    return v3;
  }

  v4 = a2;
  v5 = result;
  v6 = 0;
  v7 = 1;
  LODWORD(result) = a3;
  do
  {
    v8 = v6[v5];
    v9 = v8;
    if ((v8 - 65) >= 0x1Au)
    {
      v10 = v6[v5];
    }

    else
    {
      v10 = v6[v5] + 32;
    }

    result = (v10 + 33 * result);
    v7 &= v9 >= 0;
    ++v6;
  }

  while (a2 != v6);
  if ((v7 & 1) == 0)
  {
    do
    {
      v18 = 0;
      v16 = &v18;
      v17 = v5;
      llvm::ConvertUTF8toUTF32(&v17, &v4[v5], &v16, &v19, 1);
      if (v4 >= v17 - v5)
      {
        v11 = v17 - v5;
      }

      else
      {
        v11 = v4;
      }

      if ((v18 & 0xFFFFFFFE) == 0x130)
      {
        v12 = 105;
      }

      else
      {
        v12 = llvm::sys::unicode::foldCharSimple(v18);
      }

      v18 = v12;
      v16 = v15;
      v17 = &v18;
      llvm::ConvertUTF32toUTF8(&v17, &v19, &v16, &v16, 0);
      if (v16 != v15)
      {
        v13 = v15;
        do
        {
          v14 = *v13;
          v13 = (v13 + 1);
          v3 = (33 * v3 + v14);
        }

        while (v13 != v16);
      }

      v5 = (v5 + v11);
      v4 -= v11;
    }

    while (v4);
    return v3;
  }

  return result;
}

unint64_t llvm::hash_value(llvm *this, const llvm::DynamicAPInt *a2)
{
  if (*(this + 2))
  {
    return llvm::detail::hash_value(this, a2);
  }

  v3 = HIDWORD(*this);
  v4 = 0x9DDFEA08EB382D69 * ((8 * *this - 0xAE502812AA7333) ^ v3);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
}

llvm::raw_ostream *llvm::DynamicAPInt::print(llvm::DynamicAPInt *this, llvm::raw_ostream *a2)
{
  if (*(this + 2))
  {
    llvm::detail::SlowDynamicAPInt::print(this, a2);
    return a2;
  }

  else
  {
    v5 = *this;

    return llvm::raw_ostream::operator<<(a2, v5);
  }
}

void llvm::DynamicAPInt::dump(llvm::DynamicAPInt *this)
{
  v2 = llvm::dbgs(this);
  if (*(this + 2))
  {

    llvm::detail::SlowDynamicAPInt::print(this, v2);
  }

  else
  {
    v3 = *this;

    llvm::raw_ostream::operator<<(v2, v3);
  }
}

uint64_t *llvm::ELFAttributeParser::parseStringAttribute@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v13 = ULEB128;
  v30 = ULEB128;
  if (ULEB128 >= a5)
  {
    llvm::ELFAttributeParser::printAttribute(a1, a3, ULEB128, "", 0);
    std::generic_category();
    v16 = *a2;
    if (*a2)
    {
      v22[2] = a2;
      v17 = 3;
      v18 = 2;
    }

    else
    {
      v17 = 1;
      v18 = 3;
    }

    v22[0] = "unknown ";
    v23 = 3;
    v24 = v17;
    v20 = v16 == 0;
    v21 = v22;
    if (v20)
    {
      v21 = "unknown ";
    }

    v25[0] = v21;
    v25[2] = " value: ";
    v26 = v18;
    v27 = 3;
    v28[0] = v25;
    v28[2] = &v30;
    v29 = 3330;
    llvm::Twine::str(v28, &v31);
    llvm::createStringError();
  }

  v14 = *(a4 + 8 * ULEB128);
  if (v14)
  {
    v15 = strlen(*(a4 + 8 * ULEB128));
  }

  else
  {
    v15 = 0;
  }

  result = llvm::ELFAttributeParser::printAttribute(a1, a3, v13, v14, v15);
  *a6 = 0;
  return result;
}

uint64_t *llvm::ELFAttributeParser::printAttribute(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = (a2 | (a3 << 32));
  result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int>>(a1 + 3, &v15);
  if (a1[13])
  {
    v11 = llvm::ELFAttrs::attrTypeAsString(a2, a1[14], a1[15], 0);
    v13 = v12;
    v14 = a1[13];
    v15 = &unk_28689E460;
    v16 = v14;
    (*(*v14 + 248))(v14, "Attribute", 9);
    (*(*a1[13] + 64))(a1[13], "Tag", 3, a2);
    (*(*a1[13] + 64))(a1[13], "Value", 5, a3);
    if (v13)
    {
      (*(*a1[13] + 232))(a1[13], "TagName", 7, v11, v13);
    }

    if (a5)
    {
      (*(*a1[13] + 232))(a1[13], "Description", 11, a4, a5);
    }

    v15 = &unk_28689E460;
    result = v16;
    if (v16)
    {
      return (*(*v16 + 256))(v16);
    }
  }

  return result;
}

uint64_t llvm::ELFAttributeParser::integerAttribute@<X0>(llvm::ELFAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = llvm::ELFAttrs::attrTypeAsString(a2, *(this + 14), *(this + 15), 0);
  v8 = v7;
  ULEB128 = llvm::DataExtractor::getULEB128((this + 128), this + 19, (this + 160));
  v11 = a2;
  v12 = ULEB128;
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned long long>>(this + 3, &v11);
  result = *(this + 13);
  if (result)
  {
    v11 = &unk_28689E460;
    v12 = result;
    (*(*result + 248))(result, "Attribute", 9);
    (*(**(this + 13) + 64))(*(this + 13), "Tag", 3, a2);
    if (v8)
    {
      (*(**(this + 13) + 232))(*(this + 13), "TagName", 7, v6, v8);
    }

    (*(**(this + 13) + 96))(*(this + 13), "Value", 5, ULEB128);
    v11 = &unk_28689E460;
    result = v12;
    if (v12)
    {
      result = (*(*v12 + 256))(v12);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::ELFAttributeParser::stringAttribute@<X0>(llvm::ELFAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = llvm::ELFAttrs::attrTypeAsString(a2, *(this + 14), *(this + 15), 0);
  v8 = v7;
  CStrRef = llvm::DataExtractor::getCStrRef((this + 128), this + 19, (this + 160));
  v11 = v10;
  v14 = CStrRef;
  v15 = v10;
  v13 = a2;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__emplace_unique_key_args<unsigned int,unsigned int &,llvm::StringRef&>(this + 8, &v13);
  result = *(this + 13);
  if (result)
  {
    v14 = &unk_28689E460;
    v15 = result;
    (*(*result + 248))(result, "Attribute", 9);
    (*(**(this + 13) + 64))(*(this + 13), "Tag", 3, a2);
    if (v8)
    {
      (*(**(this + 13) + 232))(*(this + 13), "TagName", 7, v6, v8);
    }

    (*(**(this + 13) + 232))(*(this + 13), "Value", 5, CStrRef, v11);
    v14 = &unk_28689E460;
    result = v15;
    if (v15)
    {
      result = (*(*v15 + 256))(v15);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::ELFAttributeParser::parseIndexList(unint64_t *a1, void *a2)
{
  result = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  if (a1[20])
  {
    v5 = 1;
  }

  else
  {
    v5 = result == 0;
  }

  if (!v5)
  {
    do
    {
      v6 = a2[1];
      if ((v6 + 1) > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v6) = result;
      ++a2[1];
      result = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
      if (a1[20])
      {
        v7 = 1;
      }

      else
      {
        v7 = result == 0;
      }
    }

    while (!v7);
  }

  return result;
}

uint64_t llvm::ELFAttributeParser::parseAttributeList@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = (this + 152);
  v4 = *(this + 152);
  v6 = v4 + a2;
  v17 = v4;
  if (v4 >= v6)
  {
LABEL_11:
    *a3 = 0;
  }

  else
  {
    v7 = this;
    while (1)
    {
      ULEB128 = llvm::DataExtractor::getULEB128((v7 + 128), v5, (v7 + 160));
      v16 = ULEB128;
      v15 = 0;
      this = (**v7)(v7, ULEB128, &v15);
      if (*a3)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (ULEB128 <= 0x1F)
        {
          std::generic_category();
          v9[0] = "invalid tag 0x";
          v9[2] = &v16;
          v10 = 3843;
          v11[0] = v9;
          v11[2] = " at offset 0x";
          v12 = 770;
          v13[0] = v11;
          v13[2] = &v17;
          v14 = 3842;
          llvm::Twine::str(v13, &v18);
          llvm::createStringError();
        }

        if (ULEB128)
        {
          this = llvm::ELFAttributeParser::stringAttribute(v7, ULEB128, a3);
          if (*a3)
          {
            return this;
          }
        }

        else
        {
          this = llvm::ELFAttributeParser::integerAttribute(v7, ULEB128, a3);
          if (*a3)
          {
            return this;
          }
        }
      }

      v17 = *v5;
      if (v17 >= v6)
      {
        goto LABEL_11;
      }
    }
  }

  return this;
}

void llvm::ELFAttributeParser::parseSubsection(llvm::ELFAttributeParser *this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v7 = (this + 152);
  v6 = *(this + 19);
  v8 = (this + 128);
  CStrRef = llvm::DataExtractor::getCStrRef((this + 128), this + 19, (this + 160));
  v46[0] = CStrRef;
  v46[1] = v9;
  v11 = *(v7 - 6);
  if (v11)
  {
    v12 = v9;
    (*(*v11 + 64))(v11, "SectionLength", 13, a2);
    (*(**(this + 13) + 232))(*(this + 13), "Vendor", 6, CStrRef, v12);
  }

  llvm::StringRef::lower(v46, &v42);
  v13 = SHIBYTE(v44);
  v14 = v42;
  if (SHIBYTE(v44) >= 0)
  {
    v15 = &v42;
  }

  else
  {
    v15 = v42;
  }

  if (SHIBYTE(v44) >= 0)
  {
    v16 = SHIBYTE(v44);
  }

  else
  {
    v16 = v43;
  }

  if (v16 != *(this + 2))
  {
    v17 = 1;
    v18 = v6 + a2;
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_12;
  }

  if (!v16)
  {
    v17 = 0;
    v18 = v6 + a2;
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_12:
    operator delete(v14);
    v19 = v18 - 4;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_53:
    *v7 = v19;
    goto LABEL_54;
  }

  v17 = memcmp(v15, *(this + 1), v16) != 0;
  v18 = v6 + a2;
  if (v13 < 0)
  {
    goto LABEL_12;
  }

LABEL_52:
  v19 = v18 - 4;
  if (v17)
  {
    goto LABEL_53;
  }

LABEL_13:
  if (*v7 >= v19)
  {
LABEL_54:
    *a3 = 0;
    return;
  }

  v33 = a3;
  while (1)
  {
    U8 = llvm::DataExtractor::getU8(v8, v7, (v7 + 1));
    U32 = llvm::DataExtractor::getU32(v8, v7, (v7 + 1));
    v22 = v7[1];
    if (v22)
    {
      *a3 = v22;
      v7[1] = 0;
      return;
    }

    v23 = U32;
    v24 = *(this + 13);
    if (v24)
    {
      if (U8 - 1 > 2)
      {
        (*(*v24 + 336))(v24, "Tag", 3, U8);
      }

      else
      {
        (*(*v24 + 344))(v24, "Tag", 3, *(&off_27983C438)[(U8 - 1)], (&off_27983C438)[(U8 - 1)][1], U8);
      }

      (*(**(this + 13) + 64))(*(this + 13), "Size", 4, v23);
    }

    if (v23 <= 4)
    {
      std::generic_category();
      v36[0] = "invalid attribute size ";
      v37 = v23;
      v38 = 2307;
      v39[0] = v36;
      v40 = " at offset 0x";
      v41 = 770;
      v47[0] = *v7 - 5;
      v42 = v39;
      v44 = v47;
      v45 = 3842;
      llvm::Twine::str(&v42, &v48);
      llvm::createStringError();
    }

    v48 = v50;
    v49 = xmmword_25738FDE0;
    if (U8 == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 14;
      v29 = "FileAttributes";
      v31 = *(this + 13);
      if (v31)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    if (U8 != 3)
    {
      break;
    }

    while (1)
    {
      ULEB128 = llvm::DataExtractor::getULEB128(v8, v7, (v7 + 1));
      if (v7[1])
      {
        break;
      }

      v26 = 7;
      v27 = "Symbols";
      v28 = 16;
      v29 = "SymbolAttributes";
      if (!ULEB128)
      {
        goto LABEL_41;
      }

      if ((v49 + 1) > *(&v49 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v48[v49] = ULEB128;
      *&v49 = v49 + 1;
    }

    v26 = 7;
    v27 = "Symbols";
    v28 = 16;
    v29 = "SymbolAttributes";
LABEL_41:
    v31 = *(this + 13);
    if (v31)
    {
      goto LABEL_42;
    }

LABEL_38:
    a3 = v33;
    llvm::ELFAttributeParser::parseAttributeList(this, v23 - 5, v33);
    if (*v33)
    {
      goto LABEL_63;
    }

LABEL_47:
    if (v48 != v50)
    {
      free(v48);
    }

    if (*v7 >= v19)
    {
      goto LABEL_54;
    }
  }

  if (U8 != 2)
  {
    std::generic_category();
    v35 = U8;
    v36[0] = "unrecognized tag 0x";
    v37 = &v35;
    v38 = 3843;
    v39[0] = v36;
    v40 = " at offset 0x";
    v41 = 770;
    v34 = *v7 - 5;
    v42 = v39;
    v44 = &v34;
    v45 = 3842;
    llvm::Twine::str(&v42, v47);
    llvm::createStringError();
  }

  for (i = llvm::DataExtractor::getULEB128(v8, v7, (v7 + 1)); !v7[1]; i = llvm::DataExtractor::getULEB128(v8, v7, (v7 + 1)))
  {
    v26 = 8;
    v27 = "Sections";
    v28 = 17;
    v29 = "SectionAttributes";
    if (!i)
    {
      goto LABEL_41;
    }

    if ((v49 + 1) > *(&v49 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v48[v49] = i;
    *&v49 = v49 + 1;
  }

  v26 = 8;
  v27 = "Sections";
  v28 = 17;
  v29 = "SectionAttributes";
  v31 = *(this + 13);
  if (!v31)
  {
    goto LABEL_38;
  }

LABEL_42:
  v42 = &unk_28689E460;
  v43 = v31;
  (*(*v31 + 248))(v31, v29, v28);
  if (v49)
  {
    (*(**(this + 13) + 176))(*(this + 13), v27, v26, v48);
  }

  a3 = v33;
  llvm::ELFAttributeParser::parseAttributeList(this, v23 - 5, v33);
  v32 = *v33;
  v42 = &unk_28689E460;
  if (!v32)
  {
    if (v43)
    {
      (*(*v43 + 256))();
    }

    goto LABEL_47;
  }

  if (v43)
  {
    (*(*v43 + 256))();
  }

LABEL_63:
  if (v48 != v50)
  {
    free(v48);
  }
}

void *llvm::ELFAttributeParser::parse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t *a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  v8 = (a1 + 128);
  *(a1 + 144) = a4 == 1;
  U8 = llvm::DataExtractor::getU8((a1 + 128), (a1 + 152), (a1 + 160));
  if (U8 != 65)
  {
    v11 = U8;
    std::generic_category();
    if (v11)
    {
      v12 = v11;
      v13 = 16;
      do
      {
        *(v48 + v13--) = llvm::hexdigit(unsigned int,BOOL)::LUT[v12 & 0xF];
        v14 = v12 > 0xF;
        v12 >>= 4;
      }

      while (v14);
      v15 = v13 + 1;
      v16 = 16 - v13;
      if ((16 - v13) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_53;
      }
    }

    else
    {
      LOBYTE(v49) = 48;
      v15 = 16;
      v16 = 1;
    }

    if (v16 <= 0x16)
    {
      *(&__dst.__r_.__value_.__s + 23) = v16;
      if (v15 != 17)
      {
        memcpy(&__dst, v48 + v15, v16);
      }

      __dst.__r_.__value_.__s.__data_[v16] = 0;
      v32 = std::string::insert(&__dst, 0, "unrecognized format-version: 0x");
      v33 = v32->__r_.__value_.__r.__words[2];
      *v42 = *&v32->__r_.__value_.__l.__data_;
      v43 = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v50 = 260;
      v48[0] = v42;
      llvm::Twine::str(v48, __p);
      llvm::createStringError();
    }

    operator new();
  }

  if (*(a1 + 136) != *(a1 + 152))
  {
    LODWORD(v17) = 0;
    while (1)
    {
      U32 = llvm::DataExtractor::getU32(v8, v8 + 3, (v8 + 4));
      v10 = v8[4];
      if (v10)
      {
        goto LABEL_4;
      }

      v19 = U32;
      v20 = *(a1 + 104);
      if (v20)
      {
        v21 = (*(*v20 + 288))(v20);
        v22 = *(v21 + 4);
        if (*(v21 + 3) - v22 > 7uLL)
        {
          *v22 = 0x206E6F6974636553;
          *(v21 + 4) += 8;
        }

        else
        {
          v21 = llvm::raw_ostream::write(v21, "Section ", 8uLL);
        }

        v17 = (v17 + 1);
        v23 = llvm::raw_ostream::operator<<(v21, v17);
        v24 = *(v23 + 4);
        if ((*(v23 + 3) - v24) > 2)
        {
          *(v24 + 2) = 10;
          *v24 = 31520;
          *(v23 + 4) += 3;
        }

        else
        {
          llvm::raw_ostream::write(v23, " {\n", 3uLL);
        }

        ++*(*(a1 + 104) + 16);
      }

      if (v19 <= 3)
      {
        break;
      }

      v25 = v19;
      if (v19 + v8[3] - 4 > a3)
      {
        goto LABEL_39;
      }

      llvm::ELFAttributeParser::parseSubsection(a1, v19, a5);
      if (*a5)
      {
        goto LABEL_49;
      }

      v26 = *(a1 + 104);
      if (v26)
      {
        v27 = v26[4];
        v28 = __OFSUB__(v27, 1);
        v29 = v27 - 1;
        if ((v29 < 0) ^ v28 | (v29 == 0))
        {
          v29 = 0;
        }

        v26[4] = v29;
        v30 = (*(*v26 + 288))(v26);
        v31 = v30[4];
        if (v30[3] - v31 > 1uLL)
        {
          *v31 = 2685;
          v30[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v30, "}\n", 2uLL);
        }
      }

      if (*(a1 + 136) == *(a1 + 152))
      {
        goto LABEL_3;
      }
    }

    v25 = v19;
LABEL_39:
    std::generic_category();
    v42[0] = "invalid section length ";
    v43 = v25;
    v44 = 2307;
    __p[0] = v42;
    __p[2] = " at offset 0x";
    v46 = 770;
    v34 = v8[3] - 4;
    if (v8[3] == 4)
    {
      LOBYTE(v49) = 48;
      v36 = 16;
      v37 = 1;
      goto LABEL_43;
    }

    v35 = 16;
    do
    {
      *(v48 + v35--) = llvm::hexdigit(unsigned int,BOOL)::LUT[v34 & 0xF];
      v14 = v34 > 0xF;
      v34 >>= 4;
    }

    while (v14);
    v36 = v35 + 1;
    v37 = 16 - v35;
    if ((16 - v35) <= 0x7FFFFFFFFFFFFFF7)
    {
LABEL_43:
      if (v37 <= 0x16)
      {
        v41 = v37;
        if (v36 != 17)
        {
          memcpy(&v40, v48 + v36, v37);
        }

        *(&v40 + v37) = 0;
        v48[0] = __p;
        v49 = &v40;
        v50 = 1026;
        llvm::Twine::str(v48, &__dst);
        llvm::createStringError();
      }

      operator new();
    }

LABEL_53:
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_3:
  v10 = v8[4];
LABEL_4:
  *a5 = v10;
  v8[4] = 0;
LABEL_49:
  v38 = v8[4];
  v8[4] = 0;
  __p[0] = v38;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(__p, v48);
  result = __p[0];
  if (__p[0])
  {
    return (*(*__p[0] + 8))(__p[0]);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned long long>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

const char *llvm::ELFAttrs::attrTypeAsString(int a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v5 = 24 * a3;
    result = "";
    for (i = a2; *i != a1; i += 24)
    {
      v5 -= 24;
      if (!v5)
      {
        return result;
      }
    }
  }

  else
  {
    i = a2;
  }

  if (i == a2 + 24 * a3)
  {
    return "";
  }

  v8 = *(i + 8);
  v9 = *(i + 16);
  v10 = 4;
  if (v9 < 4)
  {
    v10 = v9;
  }

  if (a4)
  {
    return v8;
  }

  else
  {
    return (v8 + v10);
  }
}

uint64_t llvm::ELFAttrs::attrTypeFromString(_DWORD *__s2, size_t __n, uint64_t a3, uint64_t a4)
{
  if (__n >= 4)
  {
    v8 = 4 * (*__s2 != 1600610644);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 4;
    if (a4)
    {
LABEL_3:
      v9 = 24 * a4;
      v10 = a3;
      while (1)
      {
        v11 = *(v10 + 16);
        v12 = v11 >= v8 ? v8 : *(v10 + 16);
        if (v11 - v12 == __n && (v8 >= v11 || !memcmp((*(v10 + 8) + v12), __s2, __n)))
        {
          break;
        }

        v10 += 24;
        v9 -= 24;
        if (!v9)
        {
          goto LABEL_15;
        }
      }

      if (v10 != a3 + 24 * a4)
      {
        goto LABEL_12;
      }

LABEL_15:
      v15 = 0;
      v14 = 0;
      v13 = 0;
      return v15 | v13 | v14;
    }
  }

  v10 = a3;
  if (a3 == a3 + 24 * a4)
  {
    goto LABEL_15;
  }

LABEL_12:
  v13 = *v10 & 0xFFFFFF00;
  v14 = *v10;
  v15 = 0x100000000;
  return v15 | v13 | v14;
}

llvm::raw_ostream *llvm::logAllUnhandledErrors(llvm::raw_ostream *result, llvm::raw_ostream *a2, llvm::Twine *a3)
{
  if (*result)
  {
    v4 = result;
    result = llvm::Twine::print(a3, a2);
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      if ((*(*v5 + 48))(v5, &llvm::ErrorList::ID))
      {
        v6 = v5[1];
        v7 = v5[2];
        if (v6 != v7)
        {
          v8 = 0;
          do
          {
            v13 = v8;
            v9 = *v6;
            *v6 = 0;
            if ((*(*v9 + 48))(v9, &llvm::ErrorInfoBase::ID))
            {
              (*(*v9 + 16))(v9, a2);
              v10 = *(a2 + 4);
              if (*(a2 + 3) == v10)
              {
                llvm::raw_ostream::write(a2, "\n", 1uLL);
              }

              else
              {
                *v10 = 10;
                ++*(a2 + 4);
              }

              v12 = 0;
              (*(*v9 + 8))(v9);
            }

            else
            {
              v12 = v9;
            }

            llvm::ErrorList::join(&v13, &v12, &v14);
            v8 = v14;
            v14 = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            ++v6;
          }

          while (v6 != v7);
        }
      }

      else
      {
        (*(*v5 + 48))(v5, &llvm::ErrorInfoBase::ID);
        (*(*v5 + 16))(v5, a2);
        v11 = *(a2 + 4);
        if (*(a2 + 3) == v11)
        {
          llvm::raw_ostream::write(a2, "\n", 1uLL);
        }

        else
        {
          *v11 = 10;
          ++*(a2 + 4);
        }
      }

      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

void llvm::Error::~Error(llvm::Error *this)
{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

void llvm::toString(void **a1@<X0>, std::string *a2@<X8>)
{
  v117[6] = *MEMORY[0x277D85DE8];
  v115 = v117;
  v116 = 0x200000000;
  v3 = *a1;
  *a1 = 0;
  v109 = &v115;
  if (!v3)
  {
    v110 = 0;
    goto LABEL_18;
  }

  if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
  {
    v110 = 0;
    v4 = v3[1];
    v5 = v3[2];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        v113 = v6;
        v7 = *v4;
        *v4 = 0;
        v111 = v7;
        llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v112, &v111, &v109);
        llvm::ErrorList::join(&v113, &v112, &v114);
        v6 = v114;
        v114 = 0;
        if (v112)
        {
          (*(*v112 + 8))(v112);
        }

        v8 = v111;
        v111 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (v113)
        {
          (*(*v113 + 8))(v113);
        }

        ++v4;
      }

      while (v4 != v5);
      v110 = v6;
    }

    v9 = *(*v3 + 8);
  }

  else
  {
    v114 = v3;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v110, &v114, &v109);
    if (!v114)
    {
      goto LABEL_18;
    }

    v9 = *(*v114 + 8);
  }

  v9();
LABEL_18:
  v10 = v115;
  v11 = v116;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = v11 - 1;
  v13 = 24 * v11 - 24;
  if (v13 >= 0x60)
  {
    v15 = v13 / 0x18;
    v16 = v13 / 0x18 + 1;
    if (v13 >= 0x180)
    {
      v18 = 0uLL;
      v19 = (v11 - 1);
      if ((v16 & 0xF) != 0)
      {
        v20 = v16 & 0xF;
      }

      else
      {
        v20 = 16;
      }

      v21 = v16 - v20;
      v22 = v10 + 191;
      v106 = v20;
      v107 = v16 - v20;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      do
      {
        v29.i8[0] = *(v22 - 168);
        v30.i8[0] = v29.i8[0];
        v30.i8[1] = *(v22 - 144);
        v30.i8[2] = *(v22 - 120);
        v30.i8[3] = *(v22 - 96);
        v30.i8[4] = *(v22 - 72);
        v30.i8[5] = *(v22 - 48);
        v30.i8[6] = *(v22 - 24);
        v30.i8[7] = *v22;
        v31 = (v22 - 183);
        v32 = (v22 - 135);
        v33 = (v22 - 87);
        v34 = (v22 - 39);
        v35 = (v22 + 9);
        v36 = (v22 + 57);
        v37 = vld3q_f64(v31);
        v38 = vld3q_f64(v32);
        v39 = vld3q_f64(v33);
        v40 = vld3q_f64(v34);
        v108 = v40;
        v41 = vld3q_f64(v35);
        v42 = vld3q_f64(v36);
        v30.i8[8] = v22[24];
        v30.i8[9] = v22[48];
        v30.i8[10] = v22[72];
        v30.i8[11] = v22[96];
        v43.i32[0] = v30.i32[2];
        v30.i8[12] = v22[120];
        v30.i8[13] = v22[144];
        v43.i16[2] = v30.i16[6];
        v30.i8[14] = v22[168];
        v43.i8[6] = v30.i8[14];
        v30.i8[15] = v22[192];
        v29.i8[1] = v30.i8[1];
        v29.i8[2] = v30.i8[2];
        v44 = vcltzq_s8(v30);
        v45 = vmovl_high_s8(v44);
        v29.i8[3] = *(v22 - 96);
        v29.i8[4] = *(v22 - 72);
        v46 = vmovl_s8(*v44.i8);
        v47 = vmovl_s16(*v46.i8);
        v29.i8[5] = *(v22 - 48);
        v29.i8[6] = *(v22 - 24);
        v48.i64[0] = v47.i32[0];
        v48.i64[1] = v47.i32[1];
        v49 = v48;
        v29.i8[7] = *v22;
        v50 = vmovl_u8(v29);
        v51 = vmovl_u16(*v50.i8);
        v48.i64[0] = v51.u32[0];
        v48.i64[1] = v51.u32[1];
        v52 = vbslq_s8(v49, v37, v48);
        v53 = vmovl_s16(*v45.i8);
        v43.i8[7] = v22[192];
        v54 = vmovl_u8(v43);
        v55 = vmovl_u16(*v54.i8);
        v48.i64[0] = v53.i32[0];
        v48.i64[1] = v53.i32[1];
        v56 = v48;
        v48.i64[0] = v55.u32[0];
        v48.i64[1] = v55.u32[1];
        v57 = vbslq_s8(v56, v41, v48);
        v58 = vmovl_high_s16(v46);
        v48.i64[0] = v47.i32[2];
        v48.i64[1] = v47.i32[3];
        v59 = v48;
        v48.i64[0] = v51.u32[2];
        v48.i64[1] = v51.u32[3];
        v60 = vbslq_s8(v59, v38, v48);
        v48.i64[0] = v58.i32[0];
        v48.i64[1] = v58.i32[1];
        v61 = v48;
        v62 = (v22 + 105);
        v63 = (v22 + 153);
        v64 = vmovl_high_u16(v50);
        v48.i64[0] = v64.u32[0];
        v48.i64[1] = v64.u32[1];
        v65 = vbslq_s8(v61, v39, v48);
        v66 = vld3q_f64(v62);
        v67 = vld3q_f64(v63);
        v48.i64[0] = v53.i32[2];
        v48.i64[1] = v53.i32[3];
        v68 = v48;
        v48.i64[0] = v55.u32[2];
        v48.i64[1] = v55.u32[3];
        v69 = vbslq_s8(v68, v42, v48);
        v70 = vmovl_high_s16(v45);
        v71 = vmovl_high_u16(v54);
        v48.i64[0] = v70.i32[0];
        v48.i64[1] = v70.i32[1];
        v72 = v48;
        v48.i64[0] = v71.u32[0];
        v48.i64[1] = v71.u32[1];
        v73 = vbslq_s8(v72, v66, v48);
        v48.i64[0] = v58.i32[2];
        v48.i64[1] = v58.i32[3];
        v74 = v48;
        v48.i64[0] = v64.u32[2];
        v48.i64[1] = v64.u32[3];
        v75 = vbslq_s8(v74, v108, v48);
        v48.i64[0] = v70.i32[2];
        v48.i64[1] = v70.i32[3];
        v76 = v48;
        v48.i64[0] = v71.u32[2];
        v48.i64[1] = v71.u32[3];
        v28 = vaddq_s64(vbslq_s8(v76, v67, v48), v28);
        v24 = vaddq_s64(v75, v24);
        v27 = vaddq_s64(v73, v27);
        v26 = vaddq_s64(v69, v26);
        v23 = vaddq_s64(v65, v23);
        v18 = vaddq_s64(v60, v18);
        v25 = vaddq_s64(v57, v25);
        v19 = vaddq_s64(v52, v19);
        v22 += 384;
        v21 -= 16;
      }

      while (v21);
      v12 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v25), vaddq_s64(v23, v27)), vaddq_s64(vaddq_s64(v18, v26), vaddq_s64(v24, v28))));
      if (v106 <= 4)
      {
        v14 = &v10[24 * v107];
        goto LABEL_36;
      }

      v15 = v13 / 0x18;
      v17 = v107;
    }

    else
    {
      v17 = 0;
    }

    v77 = v16 & 3;
    if ((v16 & 3) == 0)
    {
      v77 = 4;
    }

    v14 = &v10[24 * (v16 - v77)];
    v78 = 0uLL;
    v79 = v12;
    v80 = ~v15 + v17 + v77;
    v81 = &v10[24 * v17 + 47];
    v82.i64[0] = 255;
    v82.i64[1] = 255;
    do
    {
      v83 = (v81 - 39);
      v84 = (v81 + 9);
      v85 = vld3q_f64(v83);
      v86 = vld3q_f64(v84);
      v87.i16[0] = *(v81 - 24);
      v87.i16[1] = *v81;
      v87.i16[2] = v81[24];
      v87.i16[3] = v81[48];
      v88 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v87, 8uLL), 8uLL)));
      v89.i64[0] = v88.u32[0];
      v89.i64[1] = v88.u32[1];
      v90 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v88.u32[2];
      v89.i64[1] = v88.u32[3];
      v91 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v81[24];
      v89.i64[1] = v81[48];
      v92 = vbicq_s8(v89, v91);
      v89.i64[0] = *(v81 - 24);
      v89.i64[1] = *v81;
      v78 = vaddq_s64(vorrq_s8(vandq_s8(v86, v91), vandq_s8(v92, v82)), v78);
      v79 = vaddq_s64(vorrq_s8(vandq_s8(v85, v90), vandq_s8(vbicq_s8(v89, v90), v82)), v79);
      v81 += 96;
      v80 += 4;
    }

    while (v80);
    v12 = vaddvq_s64(vaddq_s64(v79, v78));
    goto LABEL_36;
  }

  v14 = v10;
  do
  {
LABEL_36:
    v93 = v14[23];
    if ((v93 & 0x80u) != 0)
    {
      v93 = *(v14 + 1);
    }

    v12 += v93;
    v14 += 24;
  }

  while (v14 != &v10[24 * v11]);
  std::string::reserve(a2, v12);
  v94 = v10[23];
  if (v94 >= 0)
  {
    v95 = v10;
  }

  else
  {
    v95 = *v10;
  }

  if (v94 >= 0)
  {
    v96 = v10[23];
  }

  else
  {
    v96 = *(v10 + 1);
  }

  std::string::append(a2, v95, v96);
  if (v11 != 1)
  {
    v97 = v10 + 24;
    do
    {
      std::string::append(a2, "\n", 1uLL);
      v98 = v97[23];
      if (v98 >= 0)
      {
        v99 = v97;
      }

      else
      {
        v99 = *v97;
      }

      if (v98 >= 0)
      {
        v100 = v97[23];
      }

      else
      {
        v100 = *(v97 + 1);
      }

      std::string::append(a2, v99, v100);
      v97 += 24;
      v13 -= 24;
    }

    while (v13);
  }

LABEL_54:
  v101 = v115;
  if (v116)
  {
    v102 = v115 + 24 * v116 - 1;
    v103 = -24 * v116;
    v104 = v102;
    do
    {
      v105 = *v104;
      v104 -= 24;
      if (v105 < 0)
      {
        operator delete(*(v102 - 23));
      }

      v102 = v104;
      v103 += 24;
    }

    while (v103);
    v101 = v115;
  }

  if (v101 != v117)
  {
    free(v101);
  }
}

void llvm::toStringWithoutConsuming(llvm *this@<X0>, std::string *a2@<X8>)
{
  v114[6] = *MEMORY[0x277D85DE8];
  v112 = v114;
  v113 = 0x200000000;
  v4 = *this;
  if (!*this)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_51;
  }

  if ((*(*v4 + 48))(*this, &llvm::ErrorList::ID))
  {
    v6 = v4[1];
    for (i = v4[2]; v6 != i; v6 += 8)
    {
      (*(**v6 + 24))(&__p);
      if (v113 >= HIDWORD(v113))
      {
        if (v112 > &__p || v112 + 24 * v113 <= &__p)
        {
          llvm::SmallVectorTemplateBase<std::string,false>::grow();
        }

        llvm::SmallVectorTemplateBase<std::string,false>::grow();
      }

      v7 = v112 + 24 * v113;
      v8 = __p;
      *(v7 + 2) = v111;
      *v7 = v8;
      v111 = 0;
      __p = 0uLL;
      LODWORD(v113) = v113 + 1;
    }
  }

  else
  {
    (*(*v4 + 24))(&__p, v4);
    if (v113 >= HIDWORD(v113))
    {
      if (v112 > &__p || v112 + 24 * v113 <= &__p)
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow();
      }

      llvm::SmallVectorTemplateBase<std::string,false>::grow();
    }

    v9 = v112 + 24 * v113;
    v10 = __p;
    *(v9 + 2) = v111;
    *v9 = v10;
    v111 = 0;
    __p = 0uLL;
    LODWORD(v113) = v113 + 1;
  }

  v11 = v113;
  v12 = v112;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (v11)
  {
    v13 = v11 - 1;
    v14 = 24 * v11 - 24;
    if (v14 < 0x60)
    {
      v15 = v12;
      do
      {
LABEL_33:
        v94 = v15[23];
        if ((v94 & 0x80u) != 0)
        {
          v94 = *(v15 + 1);
        }

        v13 += v94;
        v15 += 24;
      }

      while (v15 != &v12[24 * v11]);
      std::string::reserve(a2, v13);
      v95 = v12[23];
      if (v95 >= 0)
      {
        v96 = v12;
      }

      else
      {
        v96 = *v12;
      }

      if (v95 >= 0)
      {
        v97 = v12[23];
      }

      else
      {
        v97 = *(v12 + 1);
      }

      std::string::append(a2, v96, v97);
      if (v11 != 1)
      {
        v98 = v12 + 24;
        do
        {
          std::string::append(a2, "\n", 1uLL);
          v99 = v98[23];
          if (v99 >= 0)
          {
            v100 = v98;
          }

          else
          {
            v100 = *v98;
          }

          if (v99 >= 0)
          {
            v101 = v98[23];
          }

          else
          {
            v101 = *(v98 + 1);
          }

          std::string::append(a2, v100, v101);
          v98 += 24;
          v14 -= 24;
        }

        while (v14);
      }

      goto LABEL_51;
    }

    v16 = v14 / 0x18;
    v17 = v14 / 0x18 + 1;
    if (v14 >= 0x180)
    {
      v19 = 0uLL;
      v20 = (v11 - 1);
      if ((v17 & 0xF) != 0)
      {
        v21 = v17 & 0xF;
      }

      else
      {
        v21 = 16;
      }

      v22 = v17 - v21;
      v23 = v12 + 191;
      v107 = v21;
      v108 = v17 - v21;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30.i8[0] = *(v23 - 168);
        v31.i8[0] = v30.i8[0];
        v31.i8[1] = *(v23 - 144);
        v31.i8[2] = *(v23 - 120);
        v31.i8[3] = *(v23 - 96);
        v31.i8[4] = *(v23 - 72);
        v31.i8[5] = *(v23 - 48);
        v31.i8[6] = *(v23 - 24);
        v31.i8[7] = *v23;
        v32 = (v23 - 183);
        v33 = (v23 - 135);
        v34 = (v23 - 87);
        v35 = (v23 - 39);
        v36 = (v23 + 9);
        v37 = (v23 + 57);
        v38 = vld3q_f64(v32);
        v39 = vld3q_f64(v33);
        v40 = vld3q_f64(v34);
        v41 = vld3q_f64(v35);
        v109 = v41;
        v42 = vld3q_f64(v36);
        v43 = vld3q_f64(v37);
        v31.i8[8] = v23[24];
        v31.i8[9] = v23[48];
        v31.i8[10] = v23[72];
        v31.i8[11] = v23[96];
        v44.i32[0] = v31.i32[2];
        v31.i8[12] = v23[120];
        v31.i8[13] = v23[144];
        v44.i16[2] = v31.i16[6];
        v31.i8[14] = v23[168];
        v44.i8[6] = v31.i8[14];
        v31.i8[15] = v23[192];
        v30.i8[1] = v31.i8[1];
        v30.i8[2] = v31.i8[2];
        v45 = vcltzq_s8(v31);
        v46 = vmovl_high_s8(v45);
        v30.i8[3] = *(v23 - 96);
        v30.i8[4] = *(v23 - 72);
        v47 = vmovl_s8(*v45.i8);
        v48 = vmovl_s16(*v47.i8);
        v30.i8[5] = *(v23 - 48);
        v30.i8[6] = *(v23 - 24);
        v49.i64[0] = v48.i32[0];
        v49.i64[1] = v48.i32[1];
        v50 = v49;
        v30.i8[7] = *v23;
        v51 = vmovl_u8(v30);
        v52 = vmovl_u16(*v51.i8);
        v49.i64[0] = v52.u32[0];
        v49.i64[1] = v52.u32[1];
        v53 = vbslq_s8(v50, v38, v49);
        v54 = vmovl_s16(*v46.i8);
        v44.i8[7] = v23[192];
        v55 = vmovl_u8(v44);
        v56 = vmovl_u16(*v55.i8);
        v49.i64[0] = v54.i32[0];
        v49.i64[1] = v54.i32[1];
        v57 = v49;
        v49.i64[0] = v56.u32[0];
        v49.i64[1] = v56.u32[1];
        v58 = vbslq_s8(v57, v42, v49);
        v59 = vmovl_high_s16(v47);
        v49.i64[0] = v48.i32[2];
        v49.i64[1] = v48.i32[3];
        v60 = v49;
        v49.i64[0] = v52.u32[2];
        v49.i64[1] = v52.u32[3];
        v61 = vbslq_s8(v60, v39, v49);
        v49.i64[0] = v59.i32[0];
        v49.i64[1] = v59.i32[1];
        v62 = v49;
        v63 = (v23 + 105);
        v64 = (v23 + 153);
        v65 = vmovl_high_u16(v51);
        v49.i64[0] = v65.u32[0];
        v49.i64[1] = v65.u32[1];
        v66 = vbslq_s8(v62, v40, v49);
        v67 = vld3q_f64(v63);
        v68 = vld3q_f64(v64);
        v49.i64[0] = v54.i32[2];
        v49.i64[1] = v54.i32[3];
        v69 = v49;
        v49.i64[0] = v56.u32[2];
        v49.i64[1] = v56.u32[3];
        v70 = vbslq_s8(v69, v43, v49);
        v71 = vmovl_high_s16(v46);
        v72 = vmovl_high_u16(v55);
        v49.i64[0] = v71.i32[0];
        v49.i64[1] = v71.i32[1];
        v73 = v49;
        v49.i64[0] = v72.u32[0];
        v49.i64[1] = v72.u32[1];
        v74 = vbslq_s8(v73, v67, v49);
        v49.i64[0] = v59.i32[2];
        v49.i64[1] = v59.i32[3];
        v75 = v49;
        v49.i64[0] = v65.u32[2];
        v49.i64[1] = v65.u32[3];
        v76 = vbslq_s8(v75, v109, v49);
        v49.i64[0] = v71.i32[2];
        v49.i64[1] = v71.i32[3];
        v77 = v49;
        v49.i64[0] = v72.u32[2];
        v49.i64[1] = v72.u32[3];
        v29 = vaddq_s64(vbslq_s8(v77, v68, v49), v29);
        v25 = vaddq_s64(v76, v25);
        v28 = vaddq_s64(v74, v28);
        v27 = vaddq_s64(v70, v27);
        v24 = vaddq_s64(v66, v24);
        v19 = vaddq_s64(v61, v19);
        v26 = vaddq_s64(v58, v26);
        v20 = vaddq_s64(v53, v20);
        v23 += 384;
        v22 -= 16;
      }

      while (v22);
      v13 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v20, v26), vaddq_s64(v24, v28)), vaddq_s64(vaddq_s64(v19, v27), vaddq_s64(v25, v29))));
      if (v107 <= 4)
      {
        v15 = &v12[24 * v108];
        goto LABEL_33;
      }

      v16 = v14 / 0x18;
      v18 = v108;
    }

    else
    {
      v18 = 0;
    }

    v78 = v17 & 3;
    if ((v17 & 3) == 0)
    {
      v78 = 4;
    }

    v15 = &v12[24 * (v17 - v78)];
    v79 = 0uLL;
    v80 = v13;
    v81 = ~v16 + v18 + v78;
    v82 = &v12[24 * v18 + 47];
    v83.i64[0] = 255;
    v83.i64[1] = 255;
    do
    {
      v84 = (v82 - 39);
      v85 = (v82 + 9);
      v86 = vld3q_f64(v84);
      v87 = vld3q_f64(v85);
      v88.i16[0] = *(v82 - 24);
      v88.i16[1] = *v82;
      v88.i16[2] = v82[24];
      v88.i16[3] = v82[48];
      v89 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v88, 8uLL), 8uLL)));
      v90.i64[0] = v89.u32[0];
      v90.i64[1] = v89.u32[1];
      v91 = vshrq_n_s64(vshlq_n_s64(v90, 0x38uLL), 0x38uLL);
      v90.i64[0] = v89.u32[2];
      v90.i64[1] = v89.u32[3];
      v92 = vshrq_n_s64(vshlq_n_s64(v90, 0x38uLL), 0x38uLL);
      v90.i64[0] = v82[24];
      v90.i64[1] = v82[48];
      v93 = vbicq_s8(v90, v92);
      v90.i64[0] = *(v82 - 24);
      v90.i64[1] = *v82;
      v79 = vaddq_s64(vorrq_s8(vandq_s8(v87, v92), vandq_s8(v93, v83)), v79);
      v80 = vaddq_s64(vorrq_s8(vandq_s8(v86, v91), vandq_s8(vbicq_s8(v90, v91), v83)), v80);
      v82 += 96;
      v81 += 4;
    }

    while (v81);
    v13 = vaddvq_s64(vaddq_s64(v80, v79));
    goto LABEL_33;
  }

LABEL_51:
  v102 = v112;
  if (v113)
  {
    v103 = v112 + 24 * v113 - 1;
    v104 = -24 * v113;
    v105 = v103;
    do
    {
      v106 = *v105;
      v105 -= 24;
      if (v106 < 0)
      {
        operator delete(*(v103 - 23));
      }

      v103 = v105;
      v104 += 24;
    }

    while (v104);
    v102 = v112;
  }

  if (v102 != v114)
  {
    free(v102);
  }
}

uint64_t llvm::ErrorList::convertToErrorCode(llvm::ErrorList *this)
{
  {
    llvm::ErrorList::convertToErrorCode();
  }

  return 1;
}

uint64_t llvm::inconvertibleErrorCode(llvm *this)
{
  {
    llvm::ErrorList::convertToErrorCode();
  }

  return 3;
}

unint64_t llvm::FileError::convertToErrorCode(llvm::FileError *this)
{
  v1 = (*(**(this + 6) + 32))(*(this + 6));
  {
    v3 = v1;
    if (v2 != getErrorErrorCat(void)::ErrorErrorCat || v1 != 3)
    {
      return v1 & 0xFFFFFFFF00000000 | v3;
    }
  }

  else
  {
    v7 = v1;
    v8 = v2;
    llvm::ErrorList::convertToErrorCode();
    v1 = v7;
    v3 = v7;
    if (v8 != getErrorErrorCat(void)::ErrorErrorCat || v7 != 3)
    {
      return v1 & 0xFFFFFFFF00000000 | v3;
    }
  }

  {
    return 2;
  }

  return 2;
}

uint64_t llvm::errorCodeToError@<X0>(llvm *this@<X0>, std::error_code a2@<0:X1, 8:X2>, void *a3@<X8>)
{
  if (this)
  {
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::errorToErrorCode(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &llvm::ErrorList::ID))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &llvm::ErrorInfoBase::ID))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            (*(*v6 + 8))(v6);
            v6 = 0;
          }

          v15 = v6;
          llvm::ErrorList::join(&v11, &v15, v12);
          v5 = v12[0];
          v12[0] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &llvm::ErrorInfoBase::ID);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  {
    llvm::errorToErrorCode();
  }

  if (v14.__cat_ == getErrorErrorCat(void)::ErrorErrorCat && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12[0] = &v11;
    llvm::report_fatal_error(v12, 1);
  }

  return *&v14.__val_;
}

llvm::StringError *llvm::StringError::StringError(llvm::StringError *this, std::error_code a2, llvm::formatv_object_base **a3)
{
  cat = a2.__cat_;
  v4 = *&a2.__val_;
  *this = &unk_2868A0608;
  llvm::Twine::str(a3, this + 8);
  *(this + 4) = v4;
  *(this + 5) = cat;
  *(this + 48) = 0;
  return this;
}

{
  cat = a2.__cat_;
  v4 = *&a2.__val_;
  *this = &unk_2868A0608;
  llvm::Twine::str(a3, this + 8);
  *(this + 4) = v4;
  *(this + 5) = cat;
  *(this + 48) = 0;
  return this;
}

llvm::StringError *llvm::StringError::StringError(llvm::StringError *this, llvm::formatv_object_base **a2, std::error_code a3)
{
  cat = a3.__cat_;
  v4 = *&a3.__val_;
  *this = &unk_2868A0608;
  llvm::Twine::str(a2, this + 8);
  *(this + 4) = v4;
  *(this + 5) = cat;
  *(this + 48) = 1;
  return this;
}

{
  cat = a3.__cat_;
  v4 = *&a3.__val_;
  *this = &unk_2868A0608;
  llvm::Twine::str(a2, this + 8);
  *(this + 4) = v4;
  *(this + 5) = cat;
  *(this + 48) = 1;
  return this;
}

uint64_t llvm::StringError::StringError(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  *result = &unk_2868A0608;
  if (*(a2 + 23) < 0)
  {
    v9 = result;
    std::string::__init_copy_ctor_external((result + 8), *a2, *(a2 + 1));
    result = v9;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    *(v9 + 48) = a5;
  }

  else
  {
    v8 = *a2;
    *(result + 24) = *(a2 + 2);
    *(result + 8) = v8;
    *(result + 32) = a3;
    *(result + 40) = a4;
    *(result + 48) = a5;
  }

  return result;
}

{
  *result = &unk_2868A0608;
  if (*(a2 + 23) < 0)
  {
    v9 = result;
    std::string::__init_copy_ctor_external((result + 8), *a2, *(a2 + 1));
    result = v9;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    *(v9 + 48) = a5;
  }

  else
  {
    v8 = *a2;
    *(result + 24) = *(a2 + 2);
    *(result + 8) = v8;
    *(result + 32) = a3;
    *(result + 40) = a4;
    *(result + 48) = a5;
  }

  return result;
}

void llvm::StringError::log(const std::error_code *this, llvm::raw_ostream *a2)
{
  if (LOBYTE(this[3].__val_) == 1)
  {
    cat_high = SHIBYTE(this[1].__cat_);
    if (cat_high >= 0)
    {
      p_cat = &this->__cat_;
    }

    else
    {
      p_cat = this->__cat_;
    }

    if (cat_high >= 0)
    {
      v6 = HIBYTE(this[1].__cat_);
    }

    else
    {
      v6 = *&this[1].__val_;
    }

    llvm::raw_ostream::write(a2, p_cat, v6);
    return;
  }

  std::error_code::message(&v12, this + 2);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v7, size);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = SHIBYTE(this[1].__cat_);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (!*&this[1].__val_)
    {
      return;
    }

    goto LABEL_23;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  v9 = SHIBYTE(this[1].__cat_);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!v9)
  {
    return;
  }

LABEL_23:
  std::operator+<char>();
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void llvm::report_fatal_error(uint64_t *a1, const llvm::Twine *a2)
{
  memset(v8, 0, sizeof(v8));
  llvm::raw_string_ostream::raw_string_ostream(v6, v8);
  v5 = *a1;
  *a1 = 0;
  v4[16] = 257;
  llvm::logAllUnhandledErrors(&v5, v6, v4);
  llvm::Error::~Error(&v5);
  llvm::raw_string_ostream::~raw_string_ostream(v6);
  v7 = 260;
  v6[0] = v8;
  llvm::report_fatal_error(v6, a2);
}

void *LLVMConsumeError(void *a1)
{
  v2 = a1;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

void LLVMGetErrorMessage(void *a1)
{
  v1 = a1;
  llvm::toString(&v1, &__src);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator new[]();
}

uint64_t LLVMDisposeErrorMessage(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x259C63150);
  }

  return result;
}

void LLVMCreateStringError()
{
  {
    llvm::ErrorList::convertToErrorCode();
  }

  operator new();
}

void llvm::ErrorList::~ErrorList(llvm::ErrorList *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x259C63180);
}

void *llvm::ErrorList::log(void *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 4) += 17;
    v5 = this[1];
    for (i = this[2]; v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        this = (*(**v5 + 16))(*v5, a2);
        v7 = *(a2 + 4);
        if (*(a2 + 3) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(a2 + 4);
        if (++v5 == i)
        {
          return this;
        }
      }

      this = llvm::raw_ostream::write(a2, "\n", 1uLL);
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "Multiple errors:\n", 0x11uLL);
    v5 = v3[1];
    i = v3[2];
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return this;
}

void llvm::ECError::log(llvm::ECError *this, llvm::raw_ostream *a2)
{
  std::error_code::message(&v5, (this + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void llvm::FileError::~FileError(llvm::FileError *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::FileError::log(llvm::FileError *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    v5 = llvm::raw_ostream::write(a2, "'", 1uLL);
  }

  else
  {
    *v4 = 39;
    ++*(a2 + 4);
    v5 = a2;
  }

  v6 = *(this + 31);
  if (v6 >= 0)
  {
    v7 = this + 8;
  }

  else
  {
    v7 = *(this + 1);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 31);
  }

  else
  {
    v8 = *(this + 2);
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = v9[4];
  if ((v9[3] - v10) > 2)
  {
    *(v10 + 2) = 32;
    *v10 = 14887;
    v9[4] += 3;
    if (*(this + 40) != 1)
    {
      goto LABEL_19;
    }

LABEL_14:
    v11 = *(a2 + 4);
    if ((*(a2 + 3) - v11) > 4)
    {
      *(v11 + 4) = 32;
      *v11 = 1701734764;
      *(a2 + 4) += 5;
      v13 = llvm::raw_ostream::operator<<(a2, *(this + 4));
      v14 = *(v13 + 4);
      if (*(v13 + 3) - v14 > 1uLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = llvm::raw_ostream::write(a2, "line ", 5uLL);
      v13 = llvm::raw_ostream::operator<<(v12, *(this + 4));
      v14 = *(v13 + 4);
      if (*(v13 + 3) - v14 > 1uLL)
      {
LABEL_16:
        *v14 = 8250;
        *(v13 + 4) += 2;
        goto LABEL_19;
      }
    }

    llvm::raw_ostream::write(v13, ": ", 2uLL);
    goto LABEL_19;
  }

  llvm::raw_ostream::write(v9, "': ", 3uLL);
  if (*(this + 40) == 1)
  {
    goto LABEL_14;
  }

LABEL_19:
  v15 = *(**(this + 6) + 16);

  return v15();
}

void llvm::StringError::~StringError(void **this)
{
  *this = &unk_2868A0608;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2868A0608;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C63180);
}

void anonymous namespace::ErrorErrorCategory::~ErrorErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::ErrorErrorCategory::message(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 3)
  {
    operator new();
  }

  if (a1 == 2)
  {
    a2[23] = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(void *a1, void *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = *a3;
    (*(*v7 + 24))(&__p, v7);
    v9 = *(v8 + 8);
    v10 = *v8;
    if (v9 >= *(v8 + 12))
    {
      if (v10 > &__p || v10 + 24 * v9 <= &__p)
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow();
      }

      llvm::SmallVectorTemplateBase<std::string,false>::grow();
    }

    v11 = v10 + 24 * *(v8 + 8);
    v12 = __p;
    *(v11 + 16) = v14;
    *v11 = v12;
    v14 = 0;
    __p = 0uLL;
    ++*(v8 + 8);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    *a1 = 0;
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, void *a2, void *a3)
{
}

void llvm::install_fatal_error_handler(llvm *this, void (*a2)(void *, const char *, BOOL), void *a3)
{
  std::mutex::lock(&_MergedGlobals);
  _MergedGlobals_9 = this;
  unk_27F874790 = a2;

  std::mutex::unlock(&_MergedGlobals);
}

void llvm::remove_fatal_error_handler(llvm *this)
{
  std::mutex::lock(&_MergedGlobals);
  _MergedGlobals_9 = 0;
  unk_27F874790 = 0;

  std::mutex::unlock(&_MergedGlobals);
}

void llvm::report_fatal_error(llvm *this, const llvm::Twine *a2)
{
  v2 = 1;
  v5 = 1;
  if (*this)
  {
    v3 = this;
    v2 = 3;
  }

  v4 = v2;
  llvm::report_fatal_error(&v3, a2);
}

void llvm::report_fatal_error(llvm::formatv_object_base **this, const llvm::Twine *a2)
{
  std::mutex::lock(&_MergedGlobals);
  v5 = _MergedGlobals_9;
  v4 = unk_27F874790;
  std::mutex::unlock(&_MergedGlobals);
  if (v5)
  {
    llvm::Twine::str(this, &__p);
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = v5(v4, p_p, a2);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

LABEL_14:
    llvm::sys::RunInterruptHandlers(v10);
    if (a2)
    {
      abort();
    }

    exit(1);
  }

  v18 = &__p;
  __p = v21;
  v20 = xmmword_257370CF0;
  v12 = 2;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_2868A3F88;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = v15;
  if ((v14 - v15) > 0xB)
  {
    *(v15 + 8) = 540693071;
    *v6 = *"LLVM ERROR: ";
    v15 += 12;
    v7 = &v11;
    llvm::Twine::print(this, &v11);
    v8 = v15;
    if (v14 != v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(&v11, "LLVM ERROR: ", 0xCuLL);
    llvm::Twine::print(this, v7);
    v8 = v7[4];
    if (v7[3] != v8)
    {
LABEL_4:
      *v8 = 10;
      v7[4] = v7[4] + 1;
      goto LABEL_12;
    }
  }

  llvm::raw_ostream::write(v7, "\n", 1uLL);
LABEL_12:
  write(2, *v18, v18[1]);
  llvm::raw_ostream::~raw_ostream(&v11);
  v10 = __p;
  if (__p != v21)
  {
    free(__p);
  }

  goto LABEL_14;
}

void llvm::report_fatal_error(llvm::formatv_object_base *a1, llvm::formatv_object_base *a2, const llvm::Twine *a3)
{
  v4 = 261;
  v3[0] = a1;
  v3[1] = a2;
  llvm::report_fatal_error(v3, a3);
}

void llvm::install_bad_alloc_error_handler(llvm *this, void (*a2)(void *, const char *, BOOL), void *a3)
{
  std::mutex::lock(&stru_27F838C60);
  qword_27F874798 = this;
  unk_27F8747A0 = a2;

  std::mutex::unlock(&stru_27F838C60);
}

void llvm::remove_bad_alloc_error_handler(llvm *this)
{
  std::mutex::lock(&stru_27F838C60);
  qword_27F874798 = 0;
  unk_27F8747A0 = 0;

  std::mutex::unlock(&stru_27F838C60);
}

void llvm::report_bad_alloc_error(llvm *this, const char *a2)
{
  std::mutex::lock(&stru_27F838C60);
  v5 = qword_27F874798;
  v4 = unk_27F8747A0;
  std::mutex::unlock(&stru_27F838C60);
  if (!v5)
  {
    write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
    v6 = strlen(this);
    write(2, this, v6);
    write(2, "\n", 1uLL);
    abort();
  }

  v5(v4, this, a2);
  __break(1u);
}

void llvm::llvm_unreachable_internal(llvm *this, const char *a2, const char *a3)
{
  v3 = a3;
  if (this)
  {
    v5 = this;
    v6 = llvm::dbgs(this);
    v7 = strlen(v5);
    v8 = v7;
    v9 = *(v6 + 32);
    if (v7 <= *(v6 + 24) - v9)
    {
      if (v7)
      {
        v7 = memcpy(*(v6 + 32), v5, v7);
        v9 = v8 + *(v6 + 32);
        *(v6 + 32) = v9;
      }
    }

    else
    {
      v7 = llvm::raw_ostream::write(v6, v5, v7);
      v6 = v7;
      v9 = *(v7 + 4);
    }

    if (*(v6 + 24) != v9)
    {
      *v9 = 10;
      ++*(v6 + 32);
      v10 = llvm::dbgs(v7);
      v11 = *(v10 + 4);
      if ((*(v10 + 3) - v11) <= 0x13)
      {
LABEL_9:
        v10 = llvm::raw_ostream::write(v10, "UNREACHABLE executed", 0x14uLL);
        if (!a2)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

LABEL_12:
      *(v11 + 16) = 1684370549;
      *v11 = *"UNREACHABLE executed";
      *(v10 + 4) += 20;
      if (!a2)
      {
LABEL_10:
        v12 = llvm::dbgs(v10);
        llvm::raw_ostream::operator<<(v12, "!\n");
        abort();
      }

LABEL_13:
      v13 = llvm::dbgs(v10);
      v14 = *(v13 + 4);
      if (*(v13 + 3) - v14 > 3uLL)
      {
        *v14 = 544497952;
        v16 = (*(v13 + 4) + 4);
        v15 = v13;
        *(v13 + 4) = v16;
      }

      else
      {
        v15 = llvm::raw_ostream::write(v13, " at ", 4uLL);
        v16 = *(v15 + 4);
      }

      v17 = strlen(a2);
      v18 = v15;
      if (v17 <= *(v15 + 3) - v16)
      {
        if (v17)
        {
          memcpy(v16, a2, v17);
          v18 = v15;
          v16 = (*(v15 + 4) + v17);
          *(v15 + 4) = v16;
        }
      }

      else
      {
        v18 = llvm::raw_ostream::write(v15, a2, v17);
        v16 = *(v18 + 4);
      }

      if (*(v18 + 3) == v16)
      {
        v18 = llvm::raw_ostream::write(v18, ":", 1uLL);
      }

      else
      {
        *v16 = 58;
        ++*(v18 + 4);
      }

      v19 = llvm::raw_ostream::operator<<(v18, v3);
      v20 = llvm::dbgs(v19);
      llvm::raw_ostream::operator<<(v20, "!\n");
      abort();
    }

    this = llvm::raw_ostream::write(v6, "\n", 1uLL);
  }

  v10 = llvm::dbgs(this);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) <= 0x13)
  {
    goto LABEL_9;
  }

  goto LABEL_12;
}

void LLVMInstallFatalErrorHandler(uint64_t a1)
{
  std::mutex::lock(&_MergedGlobals);
  _MergedGlobals_9 = bindingsErrorHandler;
  unk_27F874790 = a1;

  std::mutex::unlock(&_MergedGlobals);
}

void LLVMResetFatalErrorHandler()
{
  std::mutex::lock(&_MergedGlobals);
  _MergedGlobals_9 = 0;
  unk_27F874790 = 0;

  std::mutex::unlock(&_MergedGlobals);
}

uint64_t _GLOBAL__sub_I_ErrorHandling_cpp()
{
  v0 = MEMORY[0x277D82690];
  __cxa_atexit(MEMORY[0x277D82690], &_MergedGlobals, &dword_25639F000);

  return __cxa_atexit(v0, &stru_27F838C60, &dword_25639F000);
}

BOOL llvm::ExponentialBackoff::waitForNextAttempt(llvm::ExponentialBackoff *this)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *(this + 2);
  if (v2.__d_.__rep_ < v3)
  {
    if (*(this + 1) >= *(this + 4) * *this)
    {
      v4 = *(this + 4) * *this;
    }

    else
    {
      v4 = *(this + 1);
    }

    v10[0] = *this;
    v10[1] = v4;
    v5 = std::uniform_int_distribution<unsigned long long>::operator()<std::random_device>(v10, this + 24, v10);
    v6 = *(this + 1);
    v7 = *(this + 2) - v2.__d_.__rep_;
    if (v7 >= v5)
    {
      v7 = v5;
    }

    __ns.__rep_ = v7;
    if (v4 < v6)
    {
      *(this + 4) *= 2;
    }

    std::this_thread::sleep_for (&__ns);
  }

  return v2.__d_.__rep_ < v3;
}

unint64_t std::uniform_int_distribution<unsigned long long>::operator()<std::random_device>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result == *a3)
  {
    return result;
  }

  v5 = v4 + 1;
  if (v4 == -1)
  {
    v14 = arc4random();
    return arc4random() | (v14 << 32);
  }

  v6 = __clz(v5);
  v7 = 63;
  if (((v5 << v6) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = 64;
  }

  v8 = v7 - v6;
  if ((v8 & 0x1F) != 0)
  {
    v9 = (v8 >> 5) + 1;
  }

  else
  {
    v9 = v8 >> 5;
  }

  v10 = v8 / v9;
  if (v10 >= 0x40)
  {
    v11 = 0;
  }

  else
  {
    v11 = (-1 << v10) & 0x100000000;
  }

  if ((v11 ^ 0x100000000) > v11 / v9)
  {
    v10 = v8 / ++v9;
    if (v10 > 0x3F)
    {
      v11 = 0;
      v13 = 0;
      v12 = v9 - (v8 % v9);
      v10 = 64;
      goto LABEL_19;
    }

    v11 = (-1 << (v8 / v9)) & 0x100000000;
  }

  v12 = v9 - v8 % v9;
  if (v10 <= 0x3E)
  {
    v13 = 0x80000000uLL >> v10 << (v10 + 1);
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  if (v10)
  {
    v15 = 0xFFFFFFFF >> -v10;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xFFFFFFFF >> ~v10;
  if (v10 >= 0x1F)
  {
    v16 = -1;
  }

  v40 = v16;
  v17 = v10 + 1;
  if (v12)
  {
    if (v12 < v9)
    {
      v38 = v10;
      v39 = v5;
      while (v10 < 0x40)
      {
        v18 = 0;
        for (i = 0; i != v12; ++i)
        {
          do
          {
            v20 = arc4random();
          }

          while (v11 <= v20);
          v18 = (v18 << v10) + (v20 & v15);
        }

        v21 = v10;
        v22 = v12;
        v23 = v12;
        if (v21 >= 0x3F)
        {
          goto LABEL_41;
        }

        do
        {
          do
          {
            v25 = arc4random();
          }

          while (v13 <= v25);
          v18 = (v18 << v17) + (v25 & v40);
          ++v23;
        }

        while (v23 < v9);
LABEL_27:
        v10 = v38;
        if (v18 < v39)
        {
          return *a3 + v18;
        }
      }

      for (j = 0; j != v12; ++j)
      {
          ;
        }
      }

      v22 = v12;
      do
      {
        do
        {
LABEL_41:
          v26 = arc4random();
        }

        while (v13 <= v26);
        ++v22;
      }

      while (v22 < v9);
      v18 = v26 & v40;
      goto LABEL_27;
    }

    if (v10 >= 0x40)
    {
      v33 = 0;
      while (1)
      {
        do
        {
          v34 = arc4random();
        }

        while (v11 <= v34);
        if (++v33 == v12)
        {
          v33 = 0;
          v18 = v34 & v15;
          if (v5 > v18)
          {
            break;
          }
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      while (1)
      {
        do
        {
          v32 = arc4random();
        }

        while (v11 <= v32);
        v18 = (v30 << v10) + (v32 & v15);
        ++v31;
        v30 = v18;
        if (v31 == v12)
        {
          v30 = 0;
          v31 = 0;
          if (v18 < v5)
          {
            break;
          }
        }
      }
    }
  }

  else if (v9)
  {
    if (v10 >= 0x3F)
    {
      v35 = 0;
      while (1)
      {
        do
        {
          v36 = arc4random();
        }

        while (v13 <= v36);
        if (++v35 >= v9)
        {
          v35 = 0;
          v18 = v36 & v40;
          if (v5 > v18)
          {
            break;
          }
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        do
        {
          v29 = arc4random();
        }

        while (v13 <= v29);
        v18 = (v27 << v17) + (v29 & v40);
        ++v28;
        v27 = v18;
        if (v28 >= v9)
        {
          v27 = 0;
          v28 = 0;
          if (v18 < v5)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return *a3 + v18;
}

double llvm::FileCollectorBase::FileCollectorBase(llvm::FileCollectorBase *this)
{
  *this = &unk_2868A0910;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 23) = 8;
  return result;
}

void llvm::FileCollectorBase::~FileCollectorBase(llvm::FileCollectorBase *this)
{
  *this = &unk_2868A0910;
  if (*(this + 21))
  {
    v2 = *(this + 20);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 9) + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 9));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 9));
  std::mutex::~mutex((this + 8));
}

void llvm::FileCollectorBase::addFile(llvm::FileCollectorBase *this, llvm::formatv_object_base **a2)
{
  std::mutex::lock((this + 8));
  p_p = &__p;
  llvm::Twine::str(a2, &__p);
  v6 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = v13;
  }

  if (v7)
  {
    if ((v14 & 0x80u) != 0)
    {
      p_p = __p;
    }

    v8 = llvm::StringMapImpl::hash(p_p, v7, v5);
    llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>((this + 72), p_p, v7, v8);
    v6 = v14;
    if (v9)
    {
      if ((v14 & 0x80u) == 0)
      {
        v10 = &__p;
      }

      else
      {
        v10 = __p;
      }

      if ((v14 & 0x80u) == 0)
      {
        v11 = v14;
      }

      else
      {
        v11 = v13;
      }

      (*(*this + 16))(this, v10, v11);
      v6 = v14;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((this + 8));
}

uint64_t llvm::FileCollectorBase::addDirectory(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = std::system_category();
  llvm::vfs::getRealFileSystem(&v6);
  (*(*a1 + 24))(&v7, a1, a2, &v6, &v9);
  v4 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  result = v6;
  if (v6)
  {
    if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t llvm::FileCollector::FileCollector(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 8;
  *a1 = &unk_2868A0940;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external((a1 + 120), *a3, *(a3 + 1));
    goto LABEL_6;
  }

  v5 = *a2;
  *(a1 + 112) = *(a2 + 2);
  *(a1 + 96) = v5;
  if (*(a3 + 23) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *a3;
  *(a1 + 136) = *(a3 + 2);
  *(a1 + 120) = v6;
LABEL_6:
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 166) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 32;
  return a1;
}

{
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 8;
  *a1 = &unk_2868A0940;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external((a1 + 120), *a3, *(a3 + 1));
    goto LABEL_6;
  }

  v5 = *a2;
  *(a1 + 112) = *(a2 + 2);
  *(a1 + 96) = v5;
  if (*(a3 + 23) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *a3;
  *(a1 + 136) = *(a3 + 2);
  *(a1 + 120) = v6;
LABEL_6:
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 166) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 32;
  return a1;
}

void llvm::FileCollector::PathCanonicalizer::updateWithRealPath(uint64_t a1, unsigned __int8 **a2)
{
  v41[32] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = llvm::sys::path::filename(*a2, v5, 0);
  v8 = v7;
  v9 = llvm::sys::path::parent_path(v4, v5, 0);
  v11 = v10;
  __src = v41;
  *__len = xmmword_25736B790;
  v13 = llvm::StringMapImpl::hash(v9, v10, v12);
  Key = llvm::StringMapImpl::FindKey(a1, v9, v11, v13);
  if (Key == -1 || Key == *(a1 + 8))
  {
    v38 = 261;
    *&__dst = v9;
    *(&__dst + 1) = v11;
    if (llvm::sys::fs::real_path(&__dst, &__src, 0))
    {
      goto LABEL_25;
    }

    v16 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v29 = v6;
    if (__len[0] >= 0x17)
    {
      operator new();
    }

    HIBYTE(v37) = __len[0];
    if (__len[0])
    {
      memmove(&__dst, __src, __len[0]);
    }

    *(&__dst + v16) = 0;
    v26 = llvm::StringMapImpl::hash(v9, v11, v15);
    v27 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>(a1, v9, v11, v26);
    v28 = *v27;
    if (*(*v27 + 31) < 0)
    {
      operator delete(*(v28 + 8));
    }

    *(v28 + 8) = __dst;
    *(v28 + 24) = v37;
    v6 = v29;
  }

  else
  {
    v17 = *(*a1 + 8 * Key);
    v20 = *(v17 + 8);
    v18 = v17 + 8;
    v19 = v20;
    v21 = *(v18 + 23);
    if (v21 >= 0)
    {
      v22 = v18;
    }

    else
    {
      v22 = v19;
    }

    v23 = *(v18 + 8);
    if (v21 >= 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = v23;
    }

    __len[0] = 0;
    if (__len[1] < v24)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v25 = 0;
    if (v24)
    {
      memcpy(__src, v22, v24);
      v25 = __len[0];
    }

    __len[0] = v25 + v24;
  }

  v38 = 261;
  *&__dst = v6;
  *(&__dst + 1) = v8;
  v35 = 257;
  v33 = 257;
  v31 = 257;
  llvm::sys::path::append(&__src, &__dst, &v34, &v32, &v30);
  llvm::SmallVectorImpl<char>::swap(a2, &__src);
LABEL_25:
  if (__src != v41)
  {
    free(__src);
  }
}

void *llvm::SmallVectorImpl<char>::swap(void *result, void *a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  v4 = *result;
  if (*result != result + 3 && *a2 != a2 + 3)
  {
    v5 = result[1];
    v6 = a2[1];
    *result = *a2;
    result[1] = v6;
    *a2 = v4;
    a2[1] = v5;
    v7 = result[2];
    result[2] = a2[2];
    a2[2] = v7;
    return result;
  }

  if (result[2] < a2[1])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v8 = result[1];
  if (a2[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v9 = a2[1];
  if (v8 >= v9)
  {
    v10 = a2[1];
  }

  else
  {
    v10 = result[1];
  }

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v14 = *a2;
      v15 = *(*result + i);
      *(*result + i) = *(*a2 + i);
      *(v14 + i) = v15;
    }

    v8 = result[1];
    v9 = a2[1];
    v11 = v8 - v9;
    if (v8 > v9)
    {
LABEL_12:
      v12 = v8 - v10;
      if (v12)
      {
        result = memcpy((*a2 + v9), (*result + v10), v12);
        v9 = a2[1];
      }

      a2[1] = v11 + v9;
      v3[1] = v10;
      return result;
    }
  }

  else
  {
    v11 = v8 - v9;
    if (v8 > v9)
    {
      goto LABEL_12;
    }
  }

  v16 = v9 - v8;
  if (v9 > v8)
  {
    v17 = v9 - v10;
    if (v17)
    {
      result = memcpy((*result + v8), (*a2 + v10), v17);
      v8 = v3[1];
    }

    v3[1] = v16 + v8;
    a2[1] = v10;
  }

  return result;
}

uint64_t llvm::FileCollector::PathCanonicalizer::canonicalize@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a4 + 24;
  *(a4 + 8) = xmmword_25736B790;
  *(a4 + 280) = a4 + 304;
  *(a4 + 288) = xmmword_25736B790;
  if (a3 >= 0x101)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v7 = 0;
  if (a3)
  {
    memcpy(*(a4 + 280), a2, a3);
    v7 = *(a4 + 288);
  }

  *(a4 + 288) = v7 + a3;
  llvm::sys::fs::make_absolute(a4 + 280);
  llvm::sys::path::native((a4 + 280), 0);
  v8 = *(a4 + 280);
  v9 = llvm::sys::path::remove_leading_dotslash(v8, *(a4 + 288), 0);
  v10 = *(a4 + 280);
  v11 = &v10[*(a4 + 288)];
  v12 = v11 - v9;
  if (v11 != v9)
  {
    memmove(v8, v9, v12);
    v10 = *(a4 + 280);
  }

  v13 = &v8[v12];
  v14 = &v8[v12] - v10;
  *(a4 + 288) = v14;
  v15 = *(a4 + 8);
  if (v15 >= v14)
  {
    if (v13 != v10)
    {
      memmove(*a4, v10, v14);
    }
  }

  else
  {
    if (*(a4 + 16) < v14)
    {
      *(a4 + 8) = 0;
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v15)
    {
      memmove(*a4, v10, *(a4 + 8));
    }

    v16 = *(a4 + 288);
    if (v16 != v15)
    {
      memcpy((*a4 + v15), (*(a4 + 280) + v15), v16 - v15);
    }
  }

  *(a4 + 8) = v14;
  llvm::FileCollector::PathCanonicalizer::updateWithRealPath(a1, a4);

  return llvm::sys::path::remove_dots((a4 + 280), 1, 0);
}

void llvm::FileCollector::addFileImpl(uint64_t a1, const void *a2, size_t a3)
{
  v31[32] = *MEMORY[0x277D85DE8];
  llvm::FileCollector::PathCanonicalizer::canonicalize(a1 + 200, a2, a3, v27);
  v4 = *(a1 + 119);
  if (v4 >= 0)
  {
    v5 = (a1 + 96);
  }

  else
  {
    v5 = *(a1 + 96);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 119);
  }

  else
  {
    v6 = *(a1 + 104);
  }

  v24 = v26;
  v25 = xmmword_25736B790;
  if (v6 >= 0x101)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v7 = 0;
  if (v6)
  {
    memcpy(v24, v5, v6);
    v7 = v25;
  }

  *&v25 = v7 + v6;
  v23 = 261;
  v21 = llvm::sys::path::relative_path(v27[0], v27[1], 0);
  v22 = v8;
  v20 = 257;
  v18 = 257;
  v16 = 257;
  llvm::sys::path::append(&v24, &v21, v19, &v17, &v15);
  v9 = v29;
  v10 = v30;
  v12 = v24;
  v11 = v25;
  v23 = 261;
  v21 = v29;
  v22 = v30;
  LOBYTE(v19[0]) = 0;
  if (llvm::sys::fs::is_directory(&v21, v19, v13) || (v19[0] & 1) == 0)
  {
    llvm::vfs::YAMLVFSWriter::addFileMapping(a1 + 144, v9, v10, v12, v11);
    v14 = v24;
    if (v24 == v26)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::vfs::YAMLVFSWriter::addDirectoryMapping(a1 + 144, v9, v10, v12, v11);
  v14 = v24;
  if (v24 != v26)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  if (v29 != v31)
  {
    free(v29);
  }

  if (v27[0] != &v28)
  {
    free(v27[0]);
  }
}

void llvm::FileCollector::addDirectoryImpl(llvm::FileCollectorBase *a1@<X0>, llvm::formatv_object_base **a2@<X1>, void *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  (*(**a3 + 56))(&v19);
  if (*a4 || (llvm::FileCollectorBase::addFile(a1, a2), *a4))
  {
LABEL_3:
    *a5 = v19;
  }

  else
  {
    while (1)
    {
      v10 = v19;
      if (!v19)
      {
        break;
      }

      if ((*(v19 + 32) - 2) <= 2)
      {
        v11 = *(v19 + 8);
        v12 = *(v19 + 31);
        if (v12 >= 0)
        {
          v11 = (v19 + 8);
        }

        if (v12 < 0)
        {
          v12 = *(v19 + 16);
        }

        v18 = 261;
        v17[0] = v11;
        v17[1] = v12;
        llvm::FileCollectorBase::addFile(a1, v17);
        v10 = v19;
      }

      *a4 = (*(*v10 + 16))(v10);
      a4[1] = v13;
      v14 = *(v19 + 16);
      if (*(v19 + 31) >= 0)
      {
        v14 = *(v19 + 31);
      }

      if (!v14)
      {
        v15 = *(&v19 + 1);
        v19 = 0uLL;
        if (v15)
        {
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }
        }
      }

      if (*a4)
      {
        goto LABEL_3;
      }
    }

    (*(**a3 + 56))(*a3, a2, a4);
    v16 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

unint64_t llvm::FileCollector::copyFiles(llvm::FileCollector *this, char a2)
{
  v26 = *MEMORY[0x277D85DE8];
  LOWORD(v24.st_atimespec.tv_sec) = 260;
  *&v24.st_dev = this + 96;
  v4 = llvm::sys::fs::create_directories(&v24, 1, 504);
  v5 = v4;
  if (v4)
  {
    v6 = HIDWORD(v4);
    return v5 | (v6 << 32);
  }

  std::mutex::lock((this + 8));
  v8 = *(this + 18);
  v9 = *(this + 19);
  if (v8 == v9)
  {
    v6 = 0;
LABEL_33:
    std::system_category();
    v5 = 0;
    goto LABEL_36;
  }

  v10 = v8 + 24;
  while (1)
  {
    memset(&v24, 0, 44);
    *(&v24.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v24.st_mtimespec.tv_sec) = 0;
    v24.st_mtimespec.tv_nsec = 0;
    LOWORD(v24.st_blocks) = 260;
    v24.st_ctimespec.tv_nsec = v10 - 24;
    directories = llvm::sys::fs::status(&v24.st_ctimespec.tv_nsec, &v24, 1);
    v6 = HIDWORD(directories);
    if (directories)
    {
      goto LABEL_7;
    }

    if (LODWORD(v24.st_atimespec.tv_nsec) == 1)
    {
      goto LABEL_8;
    }

    v13 = *(v10 + 23);
    v14 = v13 >= 0 ? v10 : *v10;
    v15 = v13 >= 0 ? *(v10 + 23) : *(v10 + 8);
    v16 = llvm::sys::path::parent_path(v14, v15, 0);
    LOWORD(v24.st_blocks) = 261;
    v24.st_ctimespec.tv_nsec = v16;
    v24.st_birthtimespec.tv_sec = v17;
    directories = llvm::sys::fs::create_directories(&v24.st_ctimespec.tv_nsec, 1, 504);
    if (directories)
    {
      if (a2)
      {
        break;
      }
    }

    if (LODWORD(v24.st_atimespec.tv_nsec) == 3)
    {
      LOWORD(v24.st_blocks) = 260;
      v24.st_ctimespec.tv_nsec = v10;
      directories = llvm::sys::fs::create_directories(&v24.st_ctimespec.tv_nsec, 1, 504);
      v6 = HIDWORD(directories);
      if (!directories)
      {
        goto LABEL_8;
      }

LABEL_7:
      if (a2)
      {
        goto LABEL_35;
      }

      goto LABEL_8;
    }

    LOWORD(v24.st_blocks) = 260;
    v24.st_ctimespec.tv_nsec = v10 - 24;
    v25 = 260;
    *&v24.st_blksize = v10;
    directories = llvm::sys::fs::copy_file(&v24.st_ctimespec.tv_nsec, &v24.st_blksize, v18);
    v6 = HIDWORD(directories);
    if (directories && (a2 & 1) != 0)
    {
      goto LABEL_35;
    }

    LOWORD(v24.st_blocks) = 260;
    v24.st_ctimespec.tv_nsec = v10 - 24;
    llvm::sys::fs::getPermissions(&v24.st_ctimespec.tv_nsec, &v24.st_blksize);
    if ((v24.st_qspare[0] & 1) == 0)
    {
      LOWORD(v24.st_blocks) = 260;
      v24.st_ctimespec.tv_nsec = v10;
      directories = llvm::sys::fs::setPermissions(&v24.st_ctimespec.tv_nsec, v24.st_blksize);
      v6 = HIDWORD(directories);
      if (directories)
      {
        if (a2)
        {
          goto LABEL_35;
        }
      }
    }

    v19 = *(v10 + 23);
    v20 = *v10;
    if (v19 >= 0)
    {
      v20 = v10;
    }

    if (v19 < 0)
    {
      v19 = *(v10 + 8);
    }

    v24.st_blksize = 0;
    LOWORD(v24.st_blocks) = 261;
    v24.st_ctimespec.tv_nsec = v20;
    v24.st_birthtimespec.tv_sec = v19;
    if (!llvm::sys::fs::openFile(&v24.st_ctimespec.tv_nsec, &v24.st_blksize, 2, 2, 0, 438))
    {
      st_blksize = v24.st_blksize;
      LastAccessedTime = llvm::sys::fs::basic_file_status::getLastAccessedTime(&v24.st_dev);
      LastModificationTime = llvm::sys::fs::basic_file_status::getLastModificationTime(&v24);
      if (!llvm::sys::fs::setLastAccessAndModificationTime(st_blksize, LastAccessedTime, LastModificationTime))
      {
        llvm::sys::Process::SafelyCloseFileDescriptor(v24.st_blksize);
      }
    }

LABEL_8:
    v12 = v10 + 32;
    v10 += 56;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

  v6 = HIDWORD(directories);
LABEL_35:
  v5 = directories;
LABEL_36:
  std::mutex::unlock((this + 8));
  return v5 | (v6 << 32);
}

unint64_t llvm::FileCollector::writeMapping(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v36[32] = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 8));
  v6 = *(a1 + 143);
  if (v6 >= 0)
  {
    v7 = (a1 + 120);
  }

  else
  {
    v7 = *(a1 + 120);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 143);
  }

  else
  {
    v8 = *(a1 + 128);
  }

  *(a1 + 170) = 257;
  if (v7)
  {
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    __dst[23] = v8;
    if (!v8)
    {
      __dst[0] = 0;
      if ((*(a1 + 199) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    memmove(__dst, v7, v8);
    __dst[v8] = 0;
    if (*(a1 + 199) < 0)
    {
LABEL_12:
      operator delete(*(a1 + 176));
    }
  }

  else
  {
    memset(__dst, 0, sizeof(__dst));
    if (*(a1 + 199) < 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  *(a1 + 176) = *__dst;
  *(a1 + 192) = *&__dst[16];
  v9 = *(a1 + 143);
  if (v9 >= 0)
  {
    v10 = (a1 + 120);
  }

  else
  {
    v10 = *(a1 + 120);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 143);
  }

  else
  {
    v11 = *(a1 + 128);
  }

  __s1 = v10;
  __n = v11;
  *__dst = v36;
  *&__dst[8] = xmmword_25736B790;
  if (v11 >= 0x101)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v12 = 0;
  if (v11)
  {
    memcpy(*__dst, v10, v11);
    v12 = *&__dst[8];
  }

  *&__dst[8] = v12 + v11;
  v32 = v34;
  v33 = xmmword_25736B790;
  __s2 = v31;
  v30 = xmmword_25736B790;
  v26 = 261;
  __p = v10;
  v24 = v11;
  if (llvm::sys::fs::real_path(&__p, __dst, 0))
  {
    goto LABEL_45;
  }

  __s1 = *__dst;
  __n = *&__dst[8];
  llvm::StringRef::upper(&__s1, &__p);
  v13 = v25;
  if (v25 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v25 >= 0)
  {
    v15 = v25;
  }

  else
  {
    v15 = v24;
  }

  *&v33 = 0;
  if (*(&v33 + 1) < v15)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v16 = 0;
  if (v15)
  {
    memcpy(v32, p_p, v15);
    v16 = v33;
    v13 = v25;
  }

  v17 = v16 + v15;
  *&v33 = v16 + v15;
  if (v13 < 0)
  {
    operator delete(__p);
    v17 = v33;
  }

  v26 = 261;
  __p = v32;
  v24 = v17;
  if (llvm::sys::fs::real_path(&__p, &__s2, 0) || __n != v30 || __n && memcmp(__s1, __s2, __n))
  {
LABEL_45:
    v18 = 1;
    v19 = __s2;
    if (__s2 == v31)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v18 = 0;
  v19 = __s2;
  if (__s2 != v31)
  {
LABEL_46:
    free(v19);
  }

LABEL_47:
  if (v32 != v34)
  {
    free(v32);
  }

  if (*__dst != v36)
  {
    free(*__dst);
  }

  *(a1 + 168) = v18 | 0x100;
  *(a1 + 172) = 256;
  LODWORD(v32) = 0;
  *&v33 = std::system_category();
  llvm::raw_fd_ostream::raw_fd_ostream(__dst, a2, a3, &v32, 3);
  if (v32)
  {
    v20 = v32 & 0xFFFFFFFF00000000;
    v21 = v32;
  }

  else
  {
    llvm::vfs::YAMLVFSWriter::write((a1 + 144), __dst);
    v21 = 0;
    v20 = 0;
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(__dst);
  std::mutex::unlock((a1 + 8));
  return v20 | v21;
}

void llvm::FileCollector::~FileCollector(llvm::FileCollector *this)
{
  llvm::FileCollector::~FileCollector(this);

  JUMPOUT(0x259C63180);
}

{
  *this = &unk_2868A0940;
  if (*(this + 53))
  {
    v2 = *(this + 52);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 25) + v3);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          if (*(v4 + 31) < 0)
          {
            operator delete(*(v4 + 1));
          }

          llvm::deallocate_buffer(v4, (v6 + 33));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 25));
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v7 = *(this + 18);
  if (v7)
  {
    v8 = *(this + 19);
    v9 = *(this + 18);
    if (v8 == v7)
    {
LABEL_24:
      *(this + 19) = v7;
      operator delete(v9);
      goto LABEL_25;
    }

    while (1)
    {
      if (*(v8 - 9) < 0)
      {
        operator delete(*(v8 - 4));
        v10 = v8 - 7;
        if (*(v8 - 33) < 0)
        {
LABEL_22:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 7;
        if (*(v8 - 33) < 0)
        {
          goto LABEL_22;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = *(this + 18);
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  if ((*(this + 143) & 0x80000000) == 0)
  {
    if ((*(this + 119) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    operator delete(*(this + 12));
    *this = &unk_2868A0910;
    if (!*(this + 21))
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  operator delete(*(this + 15));
  if (*(this + 119) < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  *this = &unk_2868A0910;
  if (!*(this + 21))
  {
    goto LABEL_39;
  }

LABEL_31:
  v11 = *(this + 20);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = *(*(this + 9) + v12);
      if (v13 != -8 && v13 != 0)
      {
        llvm::deallocate_buffer(v13, (*v13 + 9));
      }

      v12 += 8;
    }

    while (8 * v11 != v12);
  }

LABEL_39:
  free(*(this + 9));
  std::mutex::~mutex((this + 8));
}

void llvm::FileCollectorFileSystem::~FileCollectorFileSystem(llvm::FileCollectorFileSystem *this)
{
  *this = &unk_2868A0998;
  v1 = *(this + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 2);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    v4 = this;
    (*(*v3 + 8))(v3);
    this = v4;
  }

  llvm::vfs::FileSystem::~FileSystem(this);
}

{
  *this = &unk_2868A0998;
  v2 = *(this + 4);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::vfs::FileSystem::~FileSystem(this);

  JUMPOUT(0x259C63180);
}

void llvm::FileCollectorFileSystem::status(llvm::FileCollectorFileSystem *this@<X0>, llvm::formatv_object_base **a2@<X1>, llvm::vfs::Status *a3@<X8>)
{
  (*(**(this + 2) + 40))(*(this + 2));
  if ((*(a3 + 80) & 1) == 0 && llvm::vfs::Status::exists(a3))
  {
    v6 = *(this + 3);

    llvm::FileCollectorBase::addFile(v6, a2);
  }
}

void llvm::FileCollectorFileSystem::openFileForRead(llvm::FileCollectorFileSystem *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  (*(**(this + 2) + 48))(*(this + 2));
  if ((*(a3 + 16) & 1) == 0 && *a3)
  {
    v6 = *(this + 3);

    llvm::FileCollectorBase::addFile(v6, a2);
  }
}

uint64_t llvm::FileCollectorFileSystem::dir_begin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  (*(*v4 + 24))(v4, a2, &v7, a3);
  result = v7;
  if (v7)
  {
    if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t llvm::FileCollectorFileSystem::getRealPath(uint64_t a1, llvm::formatv_object_base **a2, llvm::formatv_object_base **a3)
{
  result = (*(**(a1 + 16) + 80))(*(a1 + 16));
  if (!result)
  {
    v7 = result;
    llvm::FileCollectorBase::addFile(*(a1 + 24), a2);
    result = v7;
    v8 = a3[1];
    if (v8)
    {
      v9 = *(a1 + 24);
      v11 = 261;
      v10[0] = *a3;
      v10[1] = v8;
      llvm::FileCollectorBase::addFile(v9, v10);
      return v7;
    }
  }

  return result;
}

void llvm::vfs::FileSystem::getDirectoryEntry(llvm::vfs::FileSystem *this, const llvm::Twine *a2)
{
  *&v6.__val_ = std::generic_category();
  llvm::errorCodeToError(0x2D, v6, &v4);
  v3 = v4;
  v4 = 0;
  v5 = v3;
  llvm::FileError::build(a2, 0, 0, &v5);
}

void llvm::vfs::FileSystem::printImpl(int a1, llvm::raw_ostream *this, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = a4;
    do
    {
      while (1)
      {
        v6 = *(this + 4);
        if (*(this + 3) - v6 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(this, "  ", 2uLL);
        if (!--v5)
        {
          goto LABEL_6;
        }
      }

      *v6 = 8224;
      *(this + 4) += 2;
      --v5;
    }

    while (v5);
  }

LABEL_6:
  v7 = *(this + 4);
  if ((*(this + 3) - v7) > 0xA)
  {
    *(v7 + 7) = 174941556;
    *v7 = *"FileSystem\n";
    *(this + 4) += 11;
  }

  else
  {

    llvm::raw_ostream::write(this, "FileSystem\n", 0xBuLL);
  }
}

void llvm::FileError::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  v5 = &v6;
  v6 = 0;
  v7 = v4;
  llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v7, &v5, &v8);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  operator new();
}

uint64_t llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &llvm::ErrorList::ID))
    {
      v6 = v4[1];
      v7 = v4[2];
      if (v6 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        do
        {
          v12 = v8;
          v9 = *v6;
          *v6 = 0;
          if ((*(*v9 + 48))(v9, &llvm::ErrorInfoBase::ID))
          {
            v10 = **a2;
            **a2 = v9;
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }

            v9 = 0;
          }

          v11 = v9;
          llvm::ErrorList::join(&v12, &v11, &v13);
          v8 = v13;
          v13 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      *a3 = v8;
      return (*(*v4 + 8))(v4);
    }

    else
    {
      result = (*(*v4 + 48))(v4, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        result = **a2;
        **a2 = v4;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v4 = 0;
      }

      *a3 = v4;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::DiffFilesWithTolerance(std::string::size_type a1, std::string::size_type a2, std::string::size_type a3, std::string::size_type a4, uint64_t a5, double a6, double a7)
{
  v61 = *MEMORY[0x277D85DE8];
  v56 = 261;
  v55.__r_.__value_.__r.__words[0] = a1;
  v55.__r_.__value_.__l.__size_ = a2;
  llvm::MemoryBuffer::getFile(&v55, 0, 1, 0, 0, &v59);
  if (v60)
  {
    v57 = v59;
    if (v59.__val_)
    {
      if (a5)
      {
        std::error_code::message(&v55, &v57);
        if (*(a5 + 23) < 0)
        {
          operator delete(*a5);
        }

        *a5 = v55;
      }

      v12 = 2;
      goto LABEL_154;
    }
  }

  v13 = *&v59.__val_;
  v56 = 261;
  v55.__r_.__value_.__r.__words[0] = a3;
  v55.__r_.__value_.__l.__size_ = a4;
  llvm::MemoryBuffer::getFile(&v55, 0, 1, 0, 0, &v57);
  if (v58)
  {
    v54 = v57;
    if (v57.__val_)
    {
      if (a5)
      {
        std::error_code::message(&v55, &v54);
        if (*(a5 + 23) < 0)
        {
          operator delete(*a5);
        }

        *a5 = v55;
      }

      v12 = 2;
      goto LABEL_151;
    }
  }

  v15 = *(v13 + 8);
  v14 = *(v13 + 16);
  v17 = *(*&v57.__val_ + 8);
  v16 = *(*&v57.__val_ + 16);
  v55.__r_.__value_.__r.__words[0] = v15;
  *&v54.__val_ = v17;
  if (v14 - v15 == v16 - v17 && !memcmp(v15, v17, v14 - v15))
  {
    v12 = 0;
    goto LABEL_151;
  }

  if (a6 == 0.0 && a7 == 0.0)
  {
    if (a5)
    {
      MEMORY[0x259C62C80](a5, "Files differ without tolerance allowance");
    }

    v12 = 1;
    goto LABEL_151;
  }

  while (2)
  {
    v19 = v55.__r_.__value_.__r.__words[0];
    v20 = *&v54.__val_;
    if (v55.__r_.__value_.__r.__words[0] < v14)
    {
      v21 = &v14[-v55.__r_.__value_.__r.__words[0]];
      v22 = (v55.__r_.__value_.__r.__words[0] - 1);
      v23 = (*&v54.__val_ - 1);
      v18 = *&v54.__val_;
      while (1)
      {
        if (v18 >= v16)
        {
          v12 = 0;
          v55.__r_.__value_.__r.__words[0] = v19;
          *&v54.__val_ = v18;
          v34 = v19 < v14 || v18 < v16;
          goto LABEL_93;
        }

        v24 = *v19;
        if (v24 != *v18)
        {
          break;
        }

        ++v19;
        ++v18;
        ++v22;
        ++v23;
        if (!--v21)
        {
          v20 = &v14[*&v54.__val_ - v55.__r_.__value_.__r.__words[0]];
          v19 = v14;
          goto LABEL_87;
        }
      }

      if (v24 - 48 >= 0xA && (v24 <= 0x2E ? (v25 = ((1 << v24) & 0x680000000000) == 0) : (v25 = 1), v25))
      {
        if (v19 <= v15 || ((v24 - 68) & 0xDE) != 0)
        {
          goto LABEL_54;
        }
      }

      else if (v19 <= v15)
      {
        goto LABEL_54;
      }

      v26 = 0;
      while (1)
      {
        v27 = *v22;
        if (v27 - 48 >= 0xA)
        {
          v28 = v27 > 0x2E || ((1 << v27) & 0x680000000000) == 0;
          if (v28 && ((v27 - 68) & 0xDE) != 0)
          {
            break;
          }
        }

        if (((v27 == 46) & v26) != 0)
        {
          goto LABEL_54;
        }

        --v19;
        if (v22 <= v15)
        {
          goto LABEL_54;
        }

        if ((v27 == 45 || v27 == 43) && ((*(v22 - 1) - 68) & 0xDE) != 0)
        {
          v19 = v22;
          goto LABEL_54;
        }

        v26 |= v27 == 46;
        --v22;
      }

      v19 = v22 + 1;
LABEL_54:
      v55.__r_.__value_.__r.__words[0] = v19;
      v29 = *v18;
      if (v29 - 48 < 0xA || v29 <= 0x2E && ((1 << v29) & 0x680000000000) != 0)
      {
        if (v18 > v17)
        {
          goto LABEL_58;
        }
      }

      else if (v18 > v17 && ((v29 - 68) & 0xDE) == 0)
      {
LABEL_58:
        v30 = 0;
        while (1)
        {
          v31 = *v23;
          if (v31 - 48 >= 0xA)
          {
            v32 = v31 > 0x2E || ((1 << v31) & 0x680000000000) == 0;
            if (v32 && ((v31 - 68) & 0xDE) != 0)
            {
              break;
            }
          }

          if (((v31 == 46) & v30) != 0)
          {
            goto LABEL_25;
          }

          --v18;
          if (v23 <= v17)
          {
            goto LABEL_25;
          }

          if ((v31 == 45 || v31 == 43) && ((*(v23 - 1) - 68) & 0xDE) != 0)
          {
            v18 = v23;
            goto LABEL_25;
          }

          v30 |= v31 == 46;
          --v23;
        }

        v18 = v23 + 1;
      }

LABEL_25:
      *&v54.__val_ = v18;
      if (!CompareNumbers(&v55.__r_.__value_.__l.__data_, &v54, v14, v16, a5, a6, a7))
      {
        continue;
      }

      v12 = 1;
      goto LABEL_151;
    }

    break;
  }

LABEL_87:
  v12 = 0;
  v55.__r_.__value_.__r.__words[0] = v19;
  *&v54.__val_ = v20;
  v18 = v20;
  v34 = v19 < v14 || v20 < v16;
LABEL_93:
  if (!v34)
  {
    goto LABEL_151;
  }

  if (v19 >= v14)
  {
    if ((v36 = *(v19 - 1), v36 - 48 < 0xA) || v36 <= 0x2E && ((1 << v36) & 0x680000000000) != 0 || ((v36 - 68) & 0xDE) == 0)
    {
      v55.__r_.__value_.__r.__words[0] = --v19;
    }
  }

  if (v18 >= v16)
  {
    if ((v37 = *(v18 - 1), v37 - 48 < 0xA) || v37 <= 0x2E && ((1 << v37) & 0x680000000000) != 0 || ((v37 - 68) & 0xDE) == 0)
    {
      *&v54.__val_ = --v18;
    }
  }

  v38 = *v19;
  if (v38 - 48 < 0xA || v38 <= 0x2E && ((1 << v38) & 0x680000000000) != 0)
  {
    if (v19 <= v15)
    {
      goto LABEL_124;
    }
  }

  else if (v19 <= v15 || ((v38 - 68) & 0xDE) != 0)
  {
    goto LABEL_124;
  }

  v39 = 0;
  for (i = (v19 - 1); ; --i)
  {
    v41 = *i;
    if (v41 - 48 >= 0xA)
    {
      v42 = v41 > 0x2E || ((1 << v41) & 0x680000000000) == 0;
      if (v42 && ((v41 - 68) & 0xDE) != 0)
      {
        break;
      }
    }

    if (((v41 == 46) & v39) != 0)
    {
      goto LABEL_124;
    }

    --v19;
    if (i <= v15)
    {
      goto LABEL_124;
    }

    if ((v41 == 45 || v41 == 43) && ((*(i - 1) - 68) & 0xDE) != 0)
    {
      v19 = i;
      goto LABEL_124;
    }

    v39 |= v41 == 46;
  }

  v19 = (i + 1);
LABEL_124:
  v55.__r_.__value_.__r.__words[0] = v19;
  v43 = *v18;
  if (v43 - 48 < 0xA || v43 <= 0x2E && ((1 << v43) & 0x680000000000) != 0)
  {
    if (v18 > v17)
    {
      goto LABEL_128;
    }
  }

  else if (v18 > v17 && ((v43 - 68) & 0xDE) == 0)
  {
LABEL_128:
    v44 = 0;
    for (j = v18 - 1; ; --j)
    {
      v46 = *j;
      if (v46 - 48 >= 0xA)
      {
        v47 = v46 > 0x2E || ((1 << v46) & 0x680000000000) == 0;
        if (v47 && ((v46 - 68) & 0xDE) != 0)
        {
          break;
        }
      }

      if (((v46 == 46) & v44) != 0)
      {
        goto LABEL_144;
      }

      --v18;
      if (j <= v17)
      {
        goto LABEL_144;
      }

      if ((v46 == 45 || v46 == 43) && ((*(j - 1) - 68) & 0xDE) != 0)
      {
        v18 = j;
        goto LABEL_144;
      }

      v44 |= v46 == 46;
    }

    v18 = j + 1;
  }

LABEL_144:
  *&v54.__val_ = v18;
  v48 = CompareNumbers(&v55.__r_.__value_.__l.__data_, &v54, v14, v16, a5, a6, a7);
  if (v55.__r_.__value_.__r.__words[0] >= v14 && *&v54.__val_ >= v16)
  {
    v50 = v48;
  }

  else
  {
    v50 = 1;
  }

  v12 = v50;
LABEL_151:
  if ((v58 & 1) == 0)
  {
    v51 = *&v57.__val_;
    *&v57.__val_ = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }
  }

LABEL_154:
  if ((v60 & 1) == 0)
  {
    v52 = *&v59.__val_;
    *&v59.__val_ = 0;
    if (v52)
    {
      (*(*v52 + 8))(v52);
    }
  }

  return v12;
}

uint64_t CompareNumbers(std::string::value_type **a1, std::string::value_type **a2, std::string::value_type *a3, char *a4, std::string *a5, double a6, double a7)
{
  v57 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v12 = *a1;
  v13 = **a1;
  if ((v13 - 9) < 5)
  {
LABEL_5:
    while (v12 != a3)
    {
      *a1 = ++v12;
      v13 = *v12;
      if ((v13 - 9) >= 5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (v13 == 32)
    {
      goto LABEL_5;
    }
  }

  v14 = *a2;
  v15 = **a2;
  if (v15 - 9 < 5)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (v15 == 32)
  {
LABEL_10:
    while (v14 != a4)
    {
      *a2 = ++v14;
      v15 = *v14;
      if (v15 - 9 >= 5)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *a1;
  v17 = **a1;
  if (v17 - 48 >= 0xA && (v17 <= 0x2E ? (v18 = ((1 << v17) & 0x680000000000) == 0) : (v18 = 1), v18 && ((v17 - 68) & 0xDE) != 0) || v15 - 48 >= 0xA && (v15 > 0x2E || ((1 << v15) & 0x680000000000) == 0) && ((v15 - 68) & 0xDE) != 0)
  {
    v48 = v14;
    v49 = v16;
    v20 = 0.0;
    v19 = 0.0;
    v35 = v16;
    if (v16 == *a1)
    {
LABEL_62:
      if (a5)
      {
        MEMORY[0x259C62C80](a5, "FP Comparison failed, not a numeric difference between '");
        std::string::push_back(a5, **a1);
        std::string::append(a5, "' and '");
        std::string::push_back(a5, **a2);
        std::string::append(a5, "'");
      }

      return 1;
    }
  }

  else
  {
    v19 = strtod(v16, &v49);
    v20 = strtod(*a2, &v48);
    v21 = *v49;
    if ((v21 | 0x20) == 0x64)
    {
      v22 = v49 + 1;
      v23 = *a1;
      v24 = &(*a1)[~v49];
      while (v21 - 48 < 0xA || v21 <= 0x2Eu && ((1 << v21) & 0x680000000000) != 0 || ((v21 - 68) & 0xDE) == 0)
      {
        v25 = *v22++;
        LOBYTE(v21) = v25;
        --v24;
      }

      v50 = &v52;
      v51 = xmmword_25739F9C0;
      if (-v24 >= 0xC9)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v26 = 0;
      v27 = &v52;
      if (v22 != v23)
      {
        memcpy(&v52, v23, -v24);
        v27 = v50;
        v26 = v51;
      }

      *&v51 = v26 - v24;
      v27[v49 - *a1] = 101;
      v19 = strtod(v50, &v49);
      v49 = &(*a1)[v49 - v50];
      if (v50 != &v52)
      {
        free(v50);
      }
    }

    v28 = *v48;
    if ((v28 | 0x20) == 0x64)
    {
      v29 = v48 + 1;
      v30 = *a2;
      v31 = &(*a2)[~v48];
      while (v28 - 48 < 0xA || v28 <= 0x2Eu && ((1 << v28) & 0x680000000000) != 0 || ((v28 - 68) & 0xDE) == 0)
      {
        v32 = *v29++;
        LOBYTE(v28) = v32;
        --v31;
      }

      v50 = &v52;
      v51 = xmmword_25739F9C0;
      if (-v31 >= 0xC9)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v33 = 0;
      v34 = &v52;
      if (v29 != v30)
      {
        memcpy(&v52, v30, -v31);
        v34 = v50;
        v33 = v51;
      }

      *&v51 = v33 - v31;
      v34[v48 - *a2] = 101;
      v20 = strtod(v50, &v48);
      v48 = &(*a2)[v48 - v50];
      if (v50 != &v52)
      {
        free(v50);
      }
    }

    v35 = v49;
    if (v49 == *a1)
    {
      goto LABEL_62;
    }
  }

  v36 = v48;
  if (v48 == *a2)
  {
    goto LABEL_62;
  }

  v37 = vabdd_f64(v19, v20);
  if (v37 <= a6)
  {
LABEL_52:
    result = 0;
    *a1 = v35;
    *a2 = v36;
    return result;
  }

  if (v20 == 0.0)
  {
    if (v19 == 0.0)
    {
      v38 = 0.0;
      if (a7 >= 0.0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v38 = fabs(v20 / v19 + -1.0);
      if (v38 <= a7)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    v38 = fabs(v19 / v20 + -1.0);
    if (v38 <= a7)
    {
      goto LABEL_52;
    }
  }

  result = 1;
  if (!a5)
  {
    return result;
  }

  LODWORD(v51) = 0;
  v54 = 0;
  v55 = 1;
  v52 = 0;
  v53 = 0;
  *(&v51 + 1) = 0;
  v50 = &unk_2868A3EF8;
  v56 = a5;
  llvm::raw_ostream::SetBufferAndMode(&v50, 0, 0, 0);
  v40 = v53;
  if (v52 - v53 > 9)
  {
    *(v53 + 4) = 8250;
    *v40 = *"Compared: ";
    v53 += 10;
  }

  else
  {
    llvm::raw_ostream::write(&v50, "Compared: ", 0xAuLL);
  }

  llvm::raw_ostream::operator<<(&v50, v19);
  v41 = v53;
  if (v52 - v53 <= 4)
  {
    llvm::raw_ostream::write(&v50, " and ", 5uLL);
    llvm::raw_ostream::operator<<(&v50, v20);
    v42 = v53;
    if (v53 >= v52)
    {
      goto LABEL_69;
    }

LABEL_72:
    v53 = v42 + 1;
    *v42 = 10;
    v43 = v53;
    if (v52 - v53 > 0xB)
    {
      goto LABEL_70;
    }

    goto LABEL_73;
  }

  v53[4] = 32;
  *v41 = 1684955424;
  v53 += 5;
  llvm::raw_ostream::operator<<(&v50, v20);
  v42 = v53;
  if (v53 < v52)
  {
    goto LABEL_72;
  }

LABEL_69:
  llvm::raw_ostream::write(&v50, 10);
  v43 = v53;
  if (v52 - v53 > 0xB)
  {
LABEL_70:
    *(v43 + 2) = 540876902;
    *v43 = *"abs. diff = ";
    v53 += 12;
    goto LABEL_74;
  }

LABEL_73:
  llvm::raw_ostream::write(&v50, "abs. diff = ", 0xCuLL);
LABEL_74:
  llvm::raw_ostream::operator<<(&v50, v37);
  v44 = v53;
  if (v52 - v53 > 0xB)
  {
    *(v53 + 2) = 540876902;
    *v44 = *" rel.diff = ";
    v53 += 12;
    llvm::raw_ostream::operator<<(&v50, v38);
    v45 = v53;
    if (v53 >= v52)
    {
LABEL_76:
      llvm::raw_ostream::write(&v50, 10);
      v46 = v53;
      if (v52 - v53 > 0x1A)
      {
        goto LABEL_77;
      }

LABEL_81:
      llvm::raw_ostream::write(&v50, "Out of tolerance: rel/abs: ", 0x1BuLL);
      llvm::raw_ostream::operator<<(&v50, a7);
      v47 = v53;
      if (v53 >= v52)
      {
        goto LABEL_78;
      }

LABEL_82:
      v53 = v47 + 1;
      *v47 = 47;
      goto LABEL_83;
    }
  }

  else
  {
    llvm::raw_ostream::write(&v50, " rel.diff = ", 0xCuLL);
    llvm::raw_ostream::operator<<(&v50, v38);
    v45 = v53;
    if (v53 >= v52)
    {
      goto LABEL_76;
    }
  }

  v53 = v45 + 1;
  *v45 = 10;
  v46 = v53;
  if (v52 - v53 <= 0x1A)
  {
    goto LABEL_81;
  }

LABEL_77:
  qmemcpy(v46, "Out of tolerance: rel/abs: ", 27);
  v53 += 27;
  llvm::raw_ostream::operator<<(&v50, a7);
  v47 = v53;
  if (v53 < v52)
  {
    goto LABEL_82;
  }

LABEL_78:
  llvm::raw_ostream::write(&v50, 47);
LABEL_83:
  llvm::raw_ostream::operator<<(&v50, a6);
  llvm::raw_ostream::~raw_ostream(&v50);
  return 1;
}

double llvm::FilePermissionsApplier::create@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v15, 0, 44);
  *&v15[44] = 0xFFFFLL;
  *&v15[52] = 0;
  *&v15[56] = 0;
  if (a2 == 1 && *a1 == 45)
  {
    *&v15[44] = 511;
  }

  else
  {
    v14 = 261;
    v12 = a1;
    v13 = a2;
    v6 = llvm::sys::fs::status(&v12, v15, 1);
    if (v6)
    {
      v14 = 261;
      v12 = a1;
      v13 = a2;
      llvm::errorCodeToError(v6, v7, &v16);
      v8 = v16;
      v16 = 0;
      v17 = v8;
      llvm::FileError::build(&v12, 0, 0, &v17);
    }
  }

  v9 = *&v15[16];
  *(a3 + 16) = *v15;
  *(a3 + 32) = v9;
  result = *&v15[32];
  v11 = *&v15[48];
  *(a3 + 48) = *&v15[32];
  *(a3 + 64) = v11;
  *(a3 + 80) &= ~1u;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t llvm::FilePermissionsApplier::apply@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, __darwin_ino64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  v11 = *(result + 32);
  v27.st_birthtimespec = *(result + 16);
  v12 = *(result + 48);
  v13 = *(result + 64);
  *&v27.st_size = v11;
  *&v27.st_blksize = v12;
  *v27.st_qspare = v13;
  if ((a5 & 0x100000000) != 0)
  {
    v27.st_lspare = a5;
  }

  HIDWORD(v27.st_ctimespec.tv_nsec) = 0;
  if (a3 != 1 || *a2 != 45)
  {
    LOWORD(v27.st_atimespec.tv_sec) = 261;
    *&v27.st_dev = a2;
    v27.st_ino = a3;
    AccessAndModificationTime = llvm::sys::fs::openFile(&v27, &v27.st_ctimespec.tv_nsec + 1, 2, 2, 0, 438);
    if (AccessAndModificationTime)
    {
      LOWORD(v27.st_atimespec.tv_sec) = 261;
      goto LABEL_8;
    }

    if (a4)
    {
      tv_nsec_high = HIDWORD(v27.st_ctimespec.tv_nsec);
      LastAccessedTime = llvm::sys::fs::basic_file_status::getLastAccessedTime(&v27.st_birthtimespec.tv_sec);
      LastModificationTime = llvm::sys::fs::basic_file_status::getLastModificationTime(&v27.st_birthtimespec);
      AccessAndModificationTime = llvm::sys::fs::setLastAccessAndModificationTime(tv_nsec_high, LastAccessedTime, LastModificationTime);
      if (AccessAndModificationTime)
      {
        LOWORD(v27.st_atimespec.tv_sec) = 261;
LABEL_8:
        *&v27.st_dev = a2;
        v27.st_ino = a3;
        llvm::errorCodeToError(AccessAndModificationTime, v15, &v29);
        v25[0] = v29;
        v29 = 0;
        llvm::FileError::build(&v27, 0, 0, v25);
      }
    }

    memset(&v27, 0, 44);
    *(&v27.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v27.st_mtimespec.tv_sec) = 0;
    v27.st_mtimespec.tv_nsec = 0;
    result = llvm::sys::fs::status(HIDWORD(v27.st_ctimespec.tv_nsec), &v27, v15.__cat_);
    if (result)
    {
LABEL_27:
      v26 = 261;
      v25[0] = a2;
      v25[1] = a3;
      llvm::errorCodeToError(result, v19, &v28);
      v24 = v28;
      v28 = 0;
      v29 = v24;
      llvm::FileError::build(v25, 0, 0, &v29);
    }

    if (LODWORD(v27.st_atimespec.tv_nsec) != 2)
    {
LABEL_26:
      result = llvm::sys::Process::SafelyCloseFileDescriptor(HIDWORD(v27.st_ctimespec.tv_nsec));
      if (!result)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }

    v21 = *v9;
    v20 = *(v9 + 8);
    if (a3 != v20)
    {
LABEL_18:
      st_lspare = v27.st_lspare;
      if (a3 != v20)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (a3)
    {
      v22 = memcmp(a2, *v9, a3);
      if (!(v22 | v27.st_rdev))
      {
LABEL_17:
        result = llvm::sys::fs::changeFileOwnership(HIDWORD(v27.st_ctimespec.tv_nsec), v27.st_blocks, HIDWORD(v27.st_blocks));
        v21 = *v9;
        v20 = *(v9 + 8);
        goto LABEL_18;
      }
    }

    else if (!v27.st_rdev)
    {
      goto LABEL_17;
    }

    st_lspare = v27.st_lspare;
LABEL_22:
    if (!a3 || (result = memcmp(a2, v21, a3), !result))
    {
LABEL_25:
      result = llvm::sys::fs::setPermissions(SHIDWORD(v27.st_ctimespec.tv_nsec), st_lspare);
      if (result)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:
    st_lspare &= ~llvm::sys::fs::getUmask(result) & 0xF3FF;
    goto LABEL_25;
  }

LABEL_5:
  *a6 = 0;
  return result;
}

void llvm::FileOutputBuffer::create(const char *a1@<X0>, uint64_t a2@<X1>, size_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2 == 1 && *a1 == 45)
  {
    v10 = "-";
    v11 = 1;
    v12 = a3;
LABEL_13:
    createInMemoryBuffer(&v28, v10, v11, v12);
    *(a5 + 8) = *(a5 + 8) & 0xFE | v28.st_ino & 1;
    tv_sec = *&v28.st_dev;
    goto LABEL_18;
  }

  if (a4)
  {
    v13 = 511;
  }

  else
  {
    v13 = 438;
  }

  if (!a3)
  {
    v10 = a1;
    v11 = a2;
    v12 = 0;
    goto LABEL_13;
  }

  memset(&v28, 0, 44);
  *(&v28.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
  WORD2(v28.st_mtimespec.tv_sec) = 0;
  v28.st_mtimespec.tv_nsec = 0;
  LOWORD(v28.st_size) = 261;
  v28.st_ctimespec.tv_sec = a1;
  v28.st_ctimespec.tv_nsec = a2;
  llvm::sys::fs::status(&v28.st_ctimespec, &v28, 1);
  if (LODWORD(v28.st_atimespec.tv_nsec) >= 3)
  {
    if (LODWORD(v28.st_atimespec.tv_nsec) == 3)
    {
      *&v31.__val_ = std::generic_category();
      llvm::errorCodeToError(0x15, v31, &v28.st_ctimespec.tv_sec);
      *(a5 + 8) |= 1u;
LABEL_17:
      tv_sec = v28.st_ctimespec.tv_sec;
      goto LABEL_18;
    }

LABEL_16:
    createInMemoryBuffer(&v28.st_ctimespec, a1, a2, a3);
    *(a5 + 8) = *(a5 + 8) & 0xFE | v28.st_ctimespec.tv_nsec & 1;
    goto LABEL_17;
  }

  if ((a4 & 2) != 0)
  {
    goto LABEL_16;
  }

  v29 = 773;
  *&v28.st_blksize = a1;
  *&v28.st_gen = a2;
  v28.st_qspare[0] = ".tmp%%%%%%%";
  llvm::sys::fs::TempFile::create(&v28.st_blksize, v13, 0, &v28.st_ctimespec);
  if (v28.st_blocks)
  {
    tv_sec = v28.st_ctimespec.tv_sec;
    *(a5 + 8) |= 1u;
LABEL_18:
    *a5 = tv_sec;
    return;
  }

  llvm::sys::fs::TempFile::TempFile(v24, &v28.st_ctimespec);
  v16 = llvm::sys::fs::resize_file(v25, a3);
  if (!v16)
  {
    LODWORD(v23[0]) = 0;
    v23[1] = std::system_category();
    llvm::sys::fs::mapped_file_region::mapped_file_region(&v22, v25, 1, a3, 0, v23);
    if (!LODWORD(v23[0]))
    {
      operator new();
    }

    llvm::sys::fs::TempFile::discard(v24, &v26);
    v21 = v26;
    v26 = 0;
    v27 = v21;
    llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v27, &v28.st_blksize);
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    createInMemoryBuffer(&v28.st_blksize, a1, a2, a3);
    *(a5 + 8) = *(a5 + 8) & 0xFE | v28.st_gen & 1;
    *a5 = *&v28.st_blksize;
    llvm::sys::fs::mapped_file_region::unmapImpl(&v22);
    llvm::sys::fs::TempFile::~TempFile(v24);
    if (v28.st_blocks)
    {
      goto LABEL_26;
    }

LABEL_36:
    llvm::sys::fs::TempFile::~TempFile(&v28.st_ctimespec);
    return;
  }

  v17 = v15;
  llvm::sys::fs::TempFile::discard(v24, &v26);
  v18 = v26;
  v26 = 0;
  v27 = v18;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v27, &v28.st_blksize);
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  *&v19.__val_ = v17;
  llvm::errorCodeToError(v16, v19, a5);
  *(a5 + 8) |= 1u;
  llvm::sys::fs::TempFile::~TempFile(v24);
  if ((v28.st_blocks & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  v20 = v28.st_ctimespec.tv_sec;
  v28.st_ctimespec.tv_sec = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }
}

uint64_t createInMemoryBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v9) = 0;
  v10 = std::system_category();
  llvm::sys::Memory::allocateMappedMemory(a4, 0, 50331648, &v9, &v8);
  if (!v9)
  {
    operator new();
  }

  *&v6.__val_ = v10;
  result = llvm::errorCodeToError(v9, v6, &v11);
  *(a1 + 8) |= 1u;
  *a1 = v11;
  return result;
}

void anonymous namespace::InMemoryBuffer::commit(_anonymous_namespace_::InMemoryBuffer *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 8);
  v5 = *(this + 31);
  if (v5 < 0)
  {
    if (*(this + 2) != 1 || **v4 != 45)
    {
LABEL_9:
      v19 = 0;
      LOWORD(v18) = 260;
      v17[0] = this + 8;
      v9 = llvm::sys::fs::openFile(v17, &v19, 0, 2, 0, *(this + 16));
      if (v9)
      {
        llvm::errorCodeToError(v9, v10, a2);
      }

      else
      {
        llvm::raw_fd_ostream::raw_fd_ostream(v17, v19, 1, 1, 0);
        v11 = *(this + 4);
        v12 = *(this + 7);
        if (v12 <= v17[3] - v18)
        {
          if (v12)
          {
            v13 = *(this + 7);
            memcpy(v18, v11, v12);
            v18 += v13;
          }
        }

        else
        {
          llvm::raw_ostream::write(v17, v11, v12);
        }

        *a2 = 0;
        llvm::raw_fd_ostream::~raw_fd_ostream(v17);
      }

      return;
    }
  }

  else if (v5 != 1 || *v4 != 45)
  {
    goto LABEL_9;
  }

  v6 = llvm::outs(this);
  v7 = *(this + 4);
  v8 = *(this + 7);
  if (v8 <= v6[3] - v6[4])
  {
    if (v8)
    {
      v14 = v6;
      v15 = *(this + 7);
      v6 = memcpy(v6[4], v7, v8);
      v14[4] = v14[4] + v15;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v7, v8);
  }

  v16 = llvm::outs(v6);
  if (*(v16 + 4) != *(v16 + 2))
  {
    llvm::raw_ostream::flush_nonempty(v16);
  }

  *a2 = 0;
}

void anonymous namespace::InMemoryBuffer::~InMemoryBuffer(_anonymous_namespace_::InMemoryBuffer *this)
{
  *this = &unk_2868A0A50;
  v3 = *(this + 4);
  v2 = (this + 32);
  if (v3)
  {
    llvm::sys::Memory::releaseMappedMemory(v2);
  }

  *this = &unk_2868A0AC0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2868A0A50;
  v3 = *(this + 4);
  v2 = (this + 32);
  if (v3)
  {
    llvm::sys::Memory::releaseMappedMemory(v2);
  }

  *this = &unk_2868A0AC0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t *anonymous namespace::OnDiskBuffer::commit@<X0>(_anonymous_namespace_::OnDiskBuffer *this@<X0>, void *a2@<X8>)
{
  if (llvm::getTimeTraceProfilerInstance(this))
  {
    llvm::timeTraceProfilerBegin("Commit buffer to disk", 0x15uLL, "", 0);
  }

  llvm::sys::fs::mapped_file_region::unmapImpl((this + 32));
  memset(v7, 0, 24);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  llvm::sys::fs::mapped_file_region::unmapImpl(v7);
  v8 = 260;
  v7[0] = this + 8;
  v5 = llvm::sys::fs::TempFile::keep((this + 56), v7, v4, a2);
  result = llvm::getTimeTraceProfilerInstance(v5);
  if (result)
  {
    return llvm::timeTraceProfilerEnd();
  }

  return result;
}

void anonymous namespace::OnDiskBuffer::~OnDiskBuffer(_anonymous_namespace_::OnDiskBuffer *this)
{
  *this = &unk_2868A0B08;
  llvm::sys::fs::mapped_file_region::unmapImpl((this + 32));
  memset(v4, 0, sizeof(v4));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  llvm::sys::fs::mapped_file_region::unmapImpl(v4);
  llvm::sys::fs::TempFile::discard((this + 56), &v3);
  v2 = v3;
  v3 = 0;
  v5 = v2;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v5, v4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::sys::fs::TempFile::~TempFile(this + 7);
  llvm::sys::fs::mapped_file_region::unmapImpl((this + 32));
  *this = &unk_2868A0AC0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::OnDiskBuffer::discard(_anonymous_namespace_::OnDiskBuffer *this)
{
  llvm::sys::fs::TempFile::discard((this + 56), &v3);
  v1 = v3;
  v3 = 0;
  v4 = v1;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

uint64_t llvm::fneg(unsigned int a1)
{
  v1 = vdupq_n_s32(a1);
  v2 = vshlq_u32(v1, xmmword_25739FA30);
  v2.i32[3] = vshlq_u32(v1, xmmword_25739FA40).i32[3];
  v3 = vandq_s8(v2, xmmword_25739FA50);
  *v3.i8 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  return v3.i32[0] | (a1 << 7) & 0x200 | v3.i32[1] | a1 & 3 | (16 * ((a1 >> 7) & 1)) | (a1 >> 5) & 8 | (a1 >> 7) & 4;
}

uint64_t llvm::inverse_fabs(__int16 a1)
{
  v1 = a1 & 3;
  if ((a1 & 0x40) != 0)
  {
    v1 = a1 & 3 | 0x60;
  }

  if ((a1 & 0x80) != 0)
  {
    v1 |= 0x90u;
  }

  if ((a1 & 0x100) != 0)
  {
    v1 |= 0x108u;
  }

  if ((a1 & 0x200) != 0)
  {
    return v1 | 0x204;
  }

  else
  {
    return v1;
  }
}

uint64_t llvm::unknown_sign(__int16 a1)
{
  v1 = a1 & 3;
  if ((a1 & 0x60) != 0)
  {
    v1 = a1 & 3 | 0x60;
  }

  if ((a1 & 0x90) != 0)
  {
    v1 |= 0x90u;
  }

  if ((a1 & 0x108) != 0)
  {
    v1 |= 0x108u;
  }

  if ((a1 & 0x204) != 0)
  {
    return v1 | 0x204;
  }

  else
  {
    return v1;
  }
}

llvm::raw_ostream *llvm::operator<<(llvm::raw_ostream *this, int a2)
{
  v2 = a2;
  v4 = *(this + 4);
  if (v4 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 40);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(this + 4) = v4 + 1;
    *v4 = 40;
    if (a2)
    {
LABEL_3:
      v5 = 1;
      v6 = &unk_27983C460;
      v7 = 384;
      while (1)
      {
        v8 = *(v6 - 4);
        if ((v8 & ~v2) != 0)
        {
          goto LABEL_6;
        }

        v9 = *(v6 - 1);
        v10 = *v6;
        v11 = this;
        if (v5)
        {
          goto LABEL_11;
        }

        v12 = *(this + 4);
        if (*(this + 3) != v12)
        {
          break;
        }

        v14 = *(v6 - 1);
        v15 = llvm::raw_ostream::write(this, " ", 1uLL);
        v9 = v14;
        v11 = v15;
        v16 = *(v15 + 3);
        v13 = *(v15 + 4);
        if (v10 <= v16 - v13)
        {
LABEL_12:
          if (v10)
          {
            memcpy(v13, v9, v10);
            *(v11 + 4) += v10;
          }

          goto LABEL_5;
        }

LABEL_4:
        llvm::raw_ostream::write(v11, v9, v10);
LABEL_5:
        v5 = 0;
        v2 &= ~v8 & 0x3FF;
LABEL_6:
        v6 += 3;
        v7 -= 24;
        if (!v7)
        {
          v17 = *(this + 4);
          if (v17 >= *(this + 3))
          {
            llvm::raw_ostream::write(this, 41);
          }

          else
          {
            *(this + 4) = v17 + 1;
            *v17 = 41;
          }

          return this;
        }
      }

      *v12 = 32;
      ++*(this + 4);
      v11 = this;
LABEL_11:
      v13 = *(v11 + 4);
      if (v10 <= *(v11 + 3) - v13)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }
  }

  v18 = *(this + 4);
  if ((*(this + 3) - v18) > 4)
  {
    *(v18 + 4) = 41;
    *v18 = 1701736302;
    *(this + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(this, "none)", 5uLL);
  }

  return this;
}

BOOL llvm::FoldingSetNodeIDRef::operator<(uint64_t a1, const void *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, 4 * a3) >> 31;
  }

  else
  {
    return v3 < a3;
  }
}

unsigned int *llvm::FoldingSetNodeID::AddString(unsigned int *result, unsigned __int8 *a2, unsigned int a3)
{
  v5 = result;
  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 + ((a3 - (a3 != 0)) >> 2);
  v8 = result[2];
  v9 = result[3];
  if (v8 + v7 > v9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v8 >= v9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v8) = a3;
  v10 = result[2] + 1;
  result[2] = v10;
  if (a3)
  {
    if ((a2 & 3) != 0)
    {
      for (i = 4; i <= a3; i += 4)
      {
        if (v10 >= result[3])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*result + 4 * v10) = (a2[i - 1] << 24) | (a2[i - 2] << 16) | (a2[i - 3] << 8) | a2[i - 4];
        v10 = result[2] + 1;
        result[2] = v10;
      }
    }

    else
    {
      v12 = a3 >> 2;
      if (v12 + v10 > result[3])
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (a3 >> 2)
      {
        result = memcpy((*result + 4 * v10), a2, 4 * v12);
        v10 = v5[2];
      }

      v10 += (4 * v12) >> 2;
      v5[2] = v10;
      i = (a3 & 0xFFFFFFFC) + 4;
    }

    v13 = 0;
    v14 = i - a3;
    if (i - a3 != 3)
    {
      if (v14 != 2)
      {
        if (v14 != 1)
        {
          return result;
        }

        v13 = a2[a3 - 3] << 8;
      }

      v13 = (v13 | a2[a3 - 2]) << 8;
    }

    v15 = v13 | a2[a3 - 1];
    if (v10 >= v5[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v5 + 4 * v10) = v15;
    ++v5[2];
  }

  return result;
}

unsigned int *llvm::FoldingSetNodeID::AddNodeID(unsigned int *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  v4 = result[2];
  if (v4 + v3 > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3)
  {
    result = memcpy((*result + 4 * v4), *a2, 4 * v3);
    LODWORD(v4) = v2[2];
  }

  v2[2] = v4 + v3;
  return result;
}

BOOL llvm::FoldingSetNodeID::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, 4 * v2) >> 31;
  }

  else
  {
    return v2 > v3;
  }
}

BOOL llvm::FoldingSetNodeID::operator<(uint64_t a1, const void *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (a3 == v3)
  {
    return memcmp(*a1, a2, 4 * v3) >> 31;
  }

  else
  {
    return a3 > v3;
  }
}

unint64_t llvm::FoldingSetNodeID::Intern(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  a2[10] += 4 * v2;
  Slow = (*a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = Slow + 4 * v2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v19 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 4 * v2, 4 * v2, 2);
    a1 = v19;
    v2 = *(v19 + 8);
    if (v2)
    {
LABEL_6:
      v6 = *a1;
      v7 = (v2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v7 < 7)
      {
        v8 = Slow;
        v9 = *a1;
      }

      else
      {
        v8 = Slow;
        v9 = *a1;
        if (Slow - v6 >= 0x20)
        {
          v10 = v7 + 1;
          v11 = v10 & 0x7FFFFFFFFFFFFFF8;
          v8 = (Slow + v11 * 4);
          v9 = &v6[v11];
          v12 = (v6 + 4);
          v13 = (Slow + 16);
          v14 = v10 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v15 = *v12;
            *(v13 - 1) = *(v12 - 1);
            *v13 = v15;
            v12 += 2;
            v13 += 2;
            v14 -= 8;
          }

          while (v14);
          if (v10 == (v10 & 0x7FFFFFFFFFFFFFF8))
          {
            return Slow;
          }
        }
      }

      v16 = &v6[v2];
      do
      {
        v17 = *v9++;
        *v8++ = v17;
      }

      while (v9 != v16);
      return Slow;
    }
  }

  else
  {
    *a2 = v4;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  return Slow;
}

llvm::FoldingSetBase *llvm::FoldingSetBase::FoldingSetBase(llvm::FoldingSetBase *this, char a2)
{
  v3 = 1 << a2;
  *(this + 2) = 1 << a2;
  v4 = malloc_type_calloc(((1 << a2) + 1), 8uLL, 0x17B874E6uLL);
  if (!v4)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v4[v3] = -1;
  *this = v4;
  *(this + 3) = 0;
  return this;
}

{
  v3 = 1 << a2;
  *(this + 2) = 1 << a2;
  v4 = malloc_type_calloc(((1 << a2) + 1), 8uLL, 0x17B874E6uLL);
  if (!v4)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v4[v3] = -1;
  *this = v4;
  *(this + 3) = 0;
  return this;
}

double llvm::FoldingSetBase::FoldingSetBase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::FoldingSetBase::operator=(uint64_t a1, void *a2)
{
  free(*a1);
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *a2 = 0;
  a2[1] = 0;
  return a1;
}

void llvm::FoldingSetBase::~FoldingSetBase(void **this)
{
  free(*this);
}

{
  free(*this);
}

void llvm::FoldingSetBase::clear(void **this)
{
  bzero(*this, 8 * *(this + 2));
  *(*this + *(this + 2)) = -1;
  *(this + 3) = 0;
}

void llvm::FoldingSetBase::GrowBucketCount(uint64_t a1, int a2, uint64_t a3)
{
  v28[16] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v23 = *(a1 + 8);
  v7 = a2 + 1;
  v8 = malloc_type_calloc((a2 + 1), 8uLL, 0x17B874E6uLL);
  if (!v8 && (v7 || (v8 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v8[a2] = -1;
  *a1 = v8;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  v24 = v26;
  v25 = 0x2000000000;
  if (!v23)
  {
    goto LABEL_23;
  }

  for (i = 0; i != v23; ++i)
  {
    v10 = v6;
    v11 = *(v6 + i);
    if (v11)
    {
      v12 = (*(v6 + i) & 1) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      do
      {
        v13 = *v11;
        *v11 = 0;
        v14 = (*(a3 + 16))(a1, v11, &v24);
        v15 = *(a1 + 8);
        v16 = *(a1 + 12) + 1;
        if (v16 <= 2 * v15)
        {
          v20 = *a1 + 8 * ((v15 - 1) & v14);
        }

        else
        {
          llvm::FoldingSetBase::GrowBucketCount(a1);
          v27[0] = v28;
          v27[1] = 0x2000000000;
          v17 = (*(a3 + 16))(a1, v11, v27);
          v18 = *a1;
          v19 = *(a1 + 8);
          if (v27[0] != v28)
          {
            free(v27[0]);
          }

          v20 = v18 + 8 * ((v19 - 1) & v17);
          v16 = *(a1 + 12) + 1;
        }

        *(a1 + 12) = v16;
        v21 = *v20;
        if (!*v20)
        {
          v21 = v20 | 1;
        }

        *v11 = v21;
        *v20 = v11;
        LODWORD(v25) = 0;
        if (!v13)
        {
          break;
        }

        v11 = v13;
      }

      while ((v13 & 1) == 0);
    }

    v6 = v10;
  }

  v22 = v24;
  free(v10);
  v6 = v22;
  if (v22 != v26)
  {
LABEL_23:
    free(v6);
  }
}

void llvm::FoldingSetBase::InsertNode(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 12) + 1;
  v7 = 2 * *(a1 + 8);
  if (v6 > v7)
  {
    llvm::FoldingSetBase::GrowBucketCount(a1, v7, a4);
    v11[0] = v12;
    v11[1] = 0x2000000000;
    a3 = *a1 + 8 * ((*(a1 + 8) - 1) & (*(a4 + 16))(a1, a2, v11));
    if (v11[0] != v12)
    {
      v9 = a3;
      free(v11[0]);
      a3 = v9;
    }

    v6 = *(a1 + 12) + 1;
  }

  *(a1 + 12) = v6;
  v10 = *a3;
  if (!*a3)
  {
    v10 = a3 | 1;
  }

  *a2 = v10;
  *a3 = a2;
}

void llvm::FoldingSetBase::reserve(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 2 * *(a1 + 8))
  {
    v3 = 0x80000000 >> __clz(a2);
    if (a2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    llvm::FoldingSetBase::GrowBucketCount(a1, v4, a3);
  }
}

void *llvm::FoldingSetBase::FindNodeOrInsertPos(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v8 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(*a2, *a2 + 4 * *(a2 + 8));
  v9 = (*a1 + 8 * ((*(a1 + 8) - 1) & v8));
  v10 = *v9;
  *a3 = 0;
  v14 = v16;
  v15 = 0x2000000000;
  if (v10)
  {
    v11 = (v10 & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    while (((*(a4 + 8))(a1, v10, a2, v8, &v14) & 1) == 0)
    {
      LODWORD(v15) = 0;
      v10 = *v10;
      if (v10)
      {
        v12 = (v10 & 1) == 0;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
    *a3 = v9;
  }

  if (v14 != v16)
  {
    free(v14);
  }

  return v10;
}

BOOL llvm::FoldingSetBase::RemoveNode(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    --*(a1 + 12);
    *a2 = 0;
    v3 = v2;
    do
    {
      v4 = v3;
      if (!v3 || (v3 & 1) != 0)
      {
        v4 = (v3 & 0xFFFFFFFFFFFFFFFELL);
      }

      v3 = *v4;
    }

    while (*v4 != a2);
    *v4 = v2;
  }

  return v2 != 0;
}

void *llvm::FoldingSetBase::GetOrInsertNode(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21[16] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x2000000000;
  (*a3)(a1, a2, &v16);
  v6 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v16, v16 + 4 * v17);
  v7 = *a1 + 8 * ((*(a1 + 8) - 1) & v6);
  v8 = *v7;
  v19 = v21;
  v20 = 0x2000000000;
  if (v8)
  {
    v9 = (v8 & 1) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  while (((*(a3 + 8))(a1, v8, &v16, v6, &v19) & 1) == 0)
  {
    LODWORD(v20) = 0;
    v8 = *v8;
    if (v8)
    {
      v10 = (v8 & 1) == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v8 = 0;
      v11 = v19;
      if (v19 == v21)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v7 = 0;
  v11 = v19;
  if (v19 == v21)
  {
    goto LABEL_15;
  }

LABEL_14:
  free(v11);
LABEL_15:
  if (!v8)
  {
LABEL_16:
    v12 = *(a1 + 12) + 1;
    v13 = 2 * *(a1 + 8);
    if (v12 > v13)
    {
      llvm::FoldingSetBase::GrowBucketCount(a1, v13, a3);
      v19 = v21;
      v20 = 0x2000000000;
      v7 = *a1 + 8 * ((*(a1 + 8) - 1) & (*(a3 + 16))(a1, a2, &v19));
      if (v19 != v21)
      {
        free(v19);
      }

      v12 = *(a1 + 12) + 1;
    }

    *(a1 + 12) = v12;
    v14 = *v7;
    if (!*v7)
    {
      v14 = v7 | 1;
    }

    *a2 = v14;
    *v7 = a2;
    v8 = a2;
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v8;
}

unint64_t *llvm::FoldingSetIteratorImpl::FoldingSetIteratorImpl(unint64_t *this, void **a2)
{
  while (1)
  {
    v2 = *a2;
    if (*a2)
    {
      if (v2 == -1)
      {
        break;
      }

      if (v2 && (*a2 & 1) == 0)
      {
        break;
      }
    }

    ++a2;
  }

  *this = v2;
  return this;
}

{
  while (1)
  {
    v2 = *a2;
    if (*a2)
    {
      if (v2 == -1)
      {
        break;
      }

      if (v2 && (*a2 & 1) == 0)
      {
        break;
      }
    }

    ++a2;
  }

  *this = v2;
  return this;
}

unint64_t **llvm::FoldingSetIteratorImpl::advance(unint64_t **this)
{
  v1 = **this;
  if (v1)
  {
    v2 = (**this & 1) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    for (i = ((v1 & 0xFFFFFFFFFFFFFFFELL) + 8); ; ++i)
    {
      v1 = *i;
      if (*i)
      {
        if (v1 == -1)
        {
          break;
        }

        if (v1 && (*i & 1) == 0)
        {
          break;
        }
      }
    }
  }

  *this = v1;
  return this;
}

void ***llvm::FoldingSetBucketIteratorImpl::FoldingSetBucketIteratorImpl(void ***this, void **a2)
{
  if (*a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  if (*a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2;
  }

  *this = v3;
  return this;
}

{
  if (*a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  if (*a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2;
  }

  *this = v3;
  return this;
}

uint64_t llvm::formatted_raw_ostream::UpdatePosition(uint64_t this, const char *a2, int64_t a3)
{
  v5 = this;
  if (!*(this + 80))
  {
    goto LABEL_24;
  }

  this = llvm::getNumBytesForUTF8(**(this + 72));
  v7 = *(v5 + 80);
  v6 = *(v5 + 88);
  v8 = this - v7;
  v9 = a3 - v8;
  if (a3 < v8)
  {
    if (v6 < v7 + a3)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (a3)
    {
      this = memcpy((*(v5 + 72) + v7), a2, a3);
      v7 = *(v5 + 80);
    }

    *(v5 + 80) = v7 + a3;
    return this;
  }

  v10 = *(v5 + 80);
  if (v6 < this)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (this != v7)
  {
    memcpy((*(v5 + 72) + v10), a2, v8);
    v10 = *(v5 + 80);
  }

  v11 = v10 + v8;
  *(v5 + 80) = v10 + v8;
  v12 = *(v5 + 72);
  this = llvm::sys::unicode::columnWidthUTF8(v12, v10 + v8);
  if (this != -1)
  {
    *(v5 + 56) += this;
  }

  a2 += v8;
  if (v11 <= 1)
  {
    v13 = *v12;
    switch(v13)
    {
      case 9:
        v14 = (-*(v5 + 56) & 7) + *(v5 + 56);
        goto LABEL_22;
      case 13:
        v14 = 0;
        goto LABEL_22;
      case 10:
        v14 = 0;
        ++*(v5 + 60);
LABEL_22:
        *(v5 + 56) = v14;
        break;
    }
  }

  *(v5 + 80) = 0;
  a3 = v9;
LABEL_24:
  if (a3 < 1)
  {
    return this;
  }

  v15 = &a2[a3];
  while (1)
  {
    NumBytesForUTF8 = llvm::getNumBytesForUTF8(*a2);
    v18 = v15 - a2;
    if (NumBytesForUTF8 > v15 - a2)
    {
      break;
    }

    v19 = NumBytesForUTF8;
    v20 = NumBytesForUTF8;
    this = llvm::sys::unicode::columnWidthUTF8(a2, NumBytesForUTF8);
    if (this != -1)
    {
      *(v5 + 56) += this;
    }

    if (v19 > 1)
    {
      goto LABEL_28;
    }

    v21 = *a2;
    switch(v21)
    {
      case 9:
        v16 = (-*(v5 + 56) & 7) + *(v5 + 56);
        break;
      case 13:
        v16 = 0;
        break;
      case 10:
        v16 = 0;
        ++*(v5 + 60);
        break;
      default:
        goto LABEL_28;
    }

    *(v5 + 56) = v16;
LABEL_28:
    a2 += v20;
    if (a2 >= v15)
    {
      return this;
    }
  }

  *(v5 + 80) = 0;
  if (*(v5 + 88) < v18)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  this = memcpy(*(v5 + 72), a2, v15 - a2);
  *(v5 + 80) += v18;
  return this;
}

uint64_t llvm::formatted_raw_ostream::ComputePosition(uint64_t this, const char *a2, int64_t a3)
{
  if ((*(this + 104) & 1) == 0)
  {
    v3 = this;
    v4 = *(this + 64);
    v5 = &a2[a3];
    if (v4 >= a2 && v4 <= v5)
    {
      a3 = &v5[-v4];
      a2 = *(this + 64);
    }

    this = llvm::formatted_raw_ostream::UpdatePosition(this, a2, a3);
    *(v3 + 64) = v5;
  }

  return this;
}

llvm::formatted_raw_ostream *llvm::formatted_raw_ostream::PadToColumn(llvm::formatted_raw_ostream *this, int a2)
{
  if (*(this + 104))
  {
    goto LABEL_15;
  }

  v4 = *(this + 2);
  v5 = *(this + 4);
  v6 = *(this + 8);
  if (v6 < v4 || v6 > v5)
  {
    llvm::formatted_raw_ostream::UpdatePosition(this, v4, v5 - v4);
    *(this + 8) = v5;
    if (*(this + 104))
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::formatted_raw_ostream::UpdatePosition(this, *(this + 8), &v5[-v6]);
    *(this + 8) = v5;
    if (*(this + 104))
    {
      goto LABEL_15;
    }
  }

  v8 = *(this + 2);
  v9 = *(this + 4);
  v10 = v9 - v8;
  v11 = v9;
  if (v5 < v8 || v5 > v9)
  {
    v12 = this;
  }

  else
  {
    v10 = v9 - v5;
    v12 = this;
    v8 = v5;
  }

  llvm::formatted_raw_ostream::UpdatePosition(v12, v8, v10);
  *(this + 8) = v11;
LABEL_15:
  if (a2 - *(this + 14) <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2 - *(this + 14);
  }

  llvm::raw_ostream::indent(this, v13);
  return this;
}

void *llvm::formatted_raw_ostream::write_impl(llvm::formatted_raw_ostream *this, const char *a2, size_t a3)
{
  if ((*(this + 104) & 1) == 0)
  {
    v4 = *(this + 8);
    v5 = &a2[a3];
    v6 = v4 < a2 || v4 > v5;
    v7 = a2;
    v8 = a3;
    if (!v6)
    {
      a3 = &v5[-v4];
      a2 = *(this + 8);
    }

    llvm::formatted_raw_ostream::UpdatePosition(this, a2, a3);
    *(this + 8) = v5;
    a3 = v8;
    a2 = v7;
  }

  result = llvm::raw_ostream::write(*(this + 6), a2, a3);
  *(this + 8) = 0;
  return result;
}

void *llvm::fouts(llvm *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_8, memory_order_acquire) & 1) == 0)
  {
    llvm::fouts();
  }

  return &unk_27F8747C0;
}

llvm::formatted_raw_ostream *llvm::formatted_raw_ostream::formatted_raw_ostream(llvm::formatted_raw_ostream *this, llvm::raw_ostream *a2)
{
  *(this + 2) = 0;
  *(this + 40) = 0;
  *(this + 11) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *this = &unk_2868A0B68;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = this + 96;
  *(this + 5) = xmmword_25736EFF0;
  *(this + 104) = 0;
  llvm::formatted_raw_ostream::setStream(this, a2);
  return this;
}

void llvm::formatted_raw_ostream::~formatted_raw_ostream(llvm::formatted_raw_ostream *this)
{
  *this = &unk_2868A0B68;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::formatted_raw_ostream::releaseStream(this);
  v2 = *(this + 9);
  if (v2 != this + 96)
  {
    free(v2);
  }

  llvm::raw_ostream::~raw_ostream(this);
}

{
  *this = &unk_2868A0B68;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::formatted_raw_ostream::releaseStream(this);
  v2 = *(this + 9);
  if (v2 != this + 96)
  {
    free(v2);
  }

  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

void *llvm::ferrs(llvm *this)
{
  if ((atomic_load_explicit(&qword_27F8747B0, memory_order_acquire) & 1) == 0)
  {
    llvm::ferrs();
  }

  return &unk_27F874830;
}

void *llvm::fdbgs(llvm *this)
{
  if ((atomic_load_explicit(&qword_27F8747B8, memory_order_acquire) & 1) == 0)
  {
    llvm::fdbgs();
  }

  return &unk_27F8748A0;
}

llvm::formatted_raw_ostream *llvm::formatted_raw_ostream::changeColor(llvm::formatted_raw_ostream *this, int a2, int a3, llvm::sys::Process *a4)
{
  if (*(this + 40) == 1)
  {
    if ((*(this + 104) & 1) == 0)
    {
      v5 = a2;
      v6 = a3;
      v7 = a4;
      v8 = *(this + 2);
      v9 = *(this + 4);
      v10 = v9 - v8;
      v11 = *(this + 8);
      v12 = v9;
      if (v11 >= v8 && v11 <= v9)
      {
        v10 = v9 - v11;
        v8 = *(this + 8);
      }

      llvm::formatted_raw_ostream::UpdatePosition(this, v8, v10);
      *(this + 8) = v12;
      a4 = v7;
      a3 = v6;
      a2 = v5;
    }

    *(this + 104) = 1;
    llvm::raw_ostream::changeColor(this, a2, a3, a4);
    *(this + 104) = 0;
    *(this + 8) = *(this + 4);
  }

  return this;
}

llvm::formatted_raw_ostream *llvm::formatted_raw_ostream::resetColor(llvm::formatted_raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    if ((*(this + 104) & 1) == 0)
    {
      v2 = *(this + 2);
      v3 = *(this + 4);
      v4 = v3 - v2;
      v5 = *(this + 8);
      v6 = v3;
      if (v5 >= v2 && v5 <= v3)
      {
        v4 = v3 - v5;
        v2 = *(this + 8);
      }

      llvm::formatted_raw_ostream::UpdatePosition(this, v2, v4);
      *(this + 8) = v6;
    }

    *(this + 104) = 1;
    llvm::raw_ostream::resetColor(this);
    *(this + 104) = 0;
    *(this + 8) = *(this + 4);
  }

  return this;
}

llvm::formatted_raw_ostream *llvm::formatted_raw_ostream::reverseColor(llvm::formatted_raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    if ((*(this + 104) & 1) == 0)
    {
      v2 = *(this + 2);
      v3 = *(this + 4);
      v4 = v3 - v2;
      v5 = *(this + 8);
      v6 = v3;
      if (v5 >= v2 && v5 <= v3)
      {
        v4 = v3 - v5;
        v2 = *(this + 8);
      }

      llvm::formatted_raw_ostream::UpdatePosition(this, v2, v4);
      *(this + 8) = v6;
    }

    *(this + 104) = 1;
    llvm::raw_ostream::reverseColor(this);
    *(this + 104) = 0;
    *(this + 8) = *(this + 4);
  }

  return this;
}

uint64_t llvm::formatted_raw_ostream::setStream(llvm::formatted_raw_ostream *this, llvm::raw_ostream *a2)
{
  llvm::formatted_raw_ostream::releaseStream(this);
  *(this + 6) = a2;
  v4 = *(a2 + 2);
  if (*(a2 + 11))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = (*(*a2 + 88))(a2);
    v6 = *(this + 4) == *(this + 2);
    if (v8)
    {
LABEL_6:
      if (!v6)
      {
        llvm::raw_ostream::flush_nonempty(this);
      }

      operator new[]();
    }
  }

  else
  {
    v6 = *(this + 4) == *(this + 2);
    if (*(a2 + 3) != v4)
    {
      goto LABEL_6;
    }
  }

  if (!v6)
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  v9 = *(this + 6);
  if (*(v9 + 4) != *(v9 + 2))
  {
    llvm::raw_ostream::flush_nonempty(v9);
  }

  llvm::raw_ostream::SetBufferAndMode(v9, 0, 0, 0);
  result = (*(*this + 64))(this, *(*(this + 6) + 40));
  *(this + 8) = 0;
  return result;
}

uint64_t llvm::formatted_raw_ostream::releaseStream(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = *(this + 16);
    if (*(this + 44))
    {
      v2 = v1 == 0;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      v5 = this;
      v6 = (*(*this + 88))();
      v3 = *(v5 + 48);
      v4 = *(v3 + 4) == *(v3 + 2);
      if (v6)
      {
LABEL_7:
        if (!v4)
        {
          llvm::raw_ostream::flush_nonempty(v3);
        }

        operator new[]();
      }
    }

    else
    {
      v3 = *(this + 48);
      v4 = *(v3 + 4) == *(v3 + 2);
      if (*(this + 24) != v1)
      {
        goto LABEL_7;
      }
    }

    if (!v4)
    {
      llvm::raw_ostream::flush_nonempty(v3);
    }

    return llvm::raw_ostream::SetBufferAndMode(v3, 0, 0, 0);
  }

  return this;
}

char *llvm::formatv_object_base::parseFormatString@<X0>(char *result@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = a3 + 2;
  a3[1] = 0x200000000;
  if (a2)
  {
    v83 = 0;
    do
    {
      v9 = result;
      v10 = a2;
      LOBYTE(v85) = 0;
      v89 = 0;
      if (*result != 123)
      {
        v30 = memchr(result, 123, a2);
        v3 = a3;
        v16 = 0;
        v21 = 0;
        v15 = 0;
        v22 = 0;
        v23 = 0;
        v26 = 0;
        v31 = v30 - v9;
        if (!v30)
        {
          v31 = -1;
        }

        if (v10 >= v31)
        {
          v24 = v31;
        }

        else
        {
          v24 = v10;
        }

        result = &v9[v24];
        a2 = v10 - v24;
        goto LABEL_37;
      }

      v11 = 1;
      do
      {
        if (a2 == v11)
        {
          v13 = -1;
          if (a2 != -1)
          {
            v13 = a2;
          }

          if (v13 >= 2)
          {
            goto LABEL_32;
          }

LABEL_13:
          v14 = memchr(result, 125, a2);
          v15 = 0;
          v16 = 0;
          v17 = 1;
          v18 = 2;
          if (!v14)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 64;
            v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
            v26 = 0;
            v27 = 1;
            a2 = 0;
            result = 0;
            v3 = a3;
            goto LABEL_38;
          }

          v19 = v14;
          v20 = (v14 - v9);
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 64;
          v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
          v26 = 0;
          v27 = 1;
          a2 = 0;
          result = 0;
          v3 = a3;
          if (v20 == -1)
          {
            goto LABEL_38;
          }

          if (v10 != 1)
          {
            v28 = memchr((v9 + 1), 123, v10 - 1);
            v29 = v28 - v9;
            if (!v28)
            {
              v29 = -1;
            }

            if (v29 < v20)
            {
              v16 = 0;
              v21 = 0;
              v15 = 0;
              v22 = 0;
              v23 = 0;
              v26 = 0;
              if (v10 >= v29)
              {
                v24 = v29;
              }

              else
              {
                v24 = v10;
              }

              result = &v9[v24];
              a2 = v10 - v24;
              v17 = 1;
              v18 = 2;
              v25 = v9;
              v27 = 1;
              v3 = a3;
              goto LABEL_38;
            }
          }

          if (v9 == v19)
          {
            v34 = 1;
          }

          else
          {
            v34 = v20;
          }

          if (v34 >= v10)
          {
            v34 = v10;
          }

          v35 = v34 - 1;
          if (v10 >= (v20 + 1))
          {
            v36 = (v20 + 1);
          }

          else
          {
            v36 = v10;
          }

          v92 = v9 + 1;
          v93 = v35;
          v18 = 2;
          first_not_of = llvm::StringRef::find_first_not_of(&v92, "{}", 2, 0);
          if (first_not_of >= v93)
          {
            v38 = v93;
          }

          else
          {
            v38 = first_not_of;
          }

          v39 = v93 - v38;
          v94 = &v92[v38];
          v95 = v93 - v38;
          last_not_of = llvm::StringRef::find_last_not_of(&v94, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
          if (last_not_of + 1 < v95)
          {
            v41 = last_not_of + 1;
          }

          else
          {
            v41 = v95;
          }

          v42 = v95 - v39 + v41;
          if (v95 < v42)
          {
            v42 = v95;
          }

          v90 = v94;
          v91 = v42;
          v43 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
          if (v43 >= v91)
          {
            v44 = v91;
          }

          else
          {
            v44 = v43;
          }

          v45 = v91 - v44;
          v94 = v90 + v44;
          v95 = v91 - v44;
          v46 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
          if (v46 + 1 < v95)
          {
            v48 = v46 + 1;
          }

          else
          {
            v48 = v95;
          }

          v49 = v95 - v45 + v48;
          if (v95 < v49)
          {
            v49 = v95;
          }

          v90 = v94;
          v91 = v49;
          v94 = 0;
          v50 = llvm::consumeUnsignedInteger(&v90, 0, &v94, v47);
          if (HIDWORD(v94))
          {
            v51 = -1;
          }

          else
          {
            v51 = v94;
          }

          if (v50)
          {
            v23 = -1;
          }

          else
          {
            v23 = v51;
          }

          v52 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
          if (v52 >= v91)
          {
            v53 = v91;
          }

          else
          {
            v53 = v52;
          }

          v54 = v91 - v53;
          v94 = v90 + v53;
          v95 = v91 - v53;
          v55 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
          if (v55 + 1 < v95)
          {
            v57 = v55 + 1;
          }

          else
          {
            v57 = v95;
          }

          v58 = v95 - v54 + v57;
          if (v95 < v58)
          {
            v58 = v95;
          }

          v90 = v94;
          v91 = v58;
          if (!v58)
          {
            v22 = 0;
            v15 = 32;
            goto LABEL_100;
          }

          if (*v94 != 44)
          {
            v22 = 0;
            v15 = 32;
            v18 = 2;
            goto LABEL_100;
          }

          v15 = 32;
          v18 = 2;
          v90 = v94 + 1;
          v91 = v58 - 1;
          if (v58 == 1)
          {
            v22 = 0;
            goto LABEL_100;
          }

          if (v58 == 2)
          {
            goto LABEL_98;
          }

          v59 = v94 + 2;
          v60 = *(v94 + 2);
          switch(v60)
          {
            case '+':
              v18 = 2;
              break;
            case '-':
              v18 = 0;
              break;
            case '=':
              v18 = 1;
              break;
            default:
              v80 = *(v94 + 1);
              switch(v80)
              {
                case '+':
                  v18 = 2;
                  break;
                case '-':
                  v18 = 0;
                  break;
                case '=':
                  v18 = 1;
                  break;
                default:
                  v18 = 2;
                  v94 = 0;
                  if (llvm::consumeUnsignedInteger(&v90, 0, &v94, v56))
                  {
LABEL_142:
                    v17 = 0;
                    v3 = a3;
LABEL_133:
                    v27 = 0;
                    result = &v9[v36];
                    a2 = v10 - v36;
                    LOWORD(v92) = v94;
                    BYTE2(v92) = BYTE2(v94);
                    v26 = 1;
                    goto LABEL_38;
                  }

LABEL_99:
                  v22 = v94;
                  if (HIDWORD(v94))
                  {
                    goto LABEL_142;
                  }

LABEL_100:
                  v62 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
                  if (v62 >= v91)
                  {
                    v63 = v91;
                  }

                  else
                  {
                    v63 = v62;
                  }

                  v64 = v91 - v63;
                  v94 = v90 + v63;
                  v95 = v91 - v63;
                  v65 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  if (v65 + 1 < v95)
                  {
                    v66 = v65 + 1;
                  }

                  else
                  {
                    v66 = v95;
                  }

                  v67 = v95 - v64 + v66;
                  if (v95 < v67)
                  {
                    v67 = v95;
                  }

                  v90 = v94;
                  v91 = v67;
                  if (v67 && *v94 == 58)
                  {
                    v90 = v94 + 1;
                    v91 = v67 - 1;
                    v68 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
                    if (v68 >= v91)
                    {
                      v69 = v91;
                    }

                    else
                    {
                      v69 = v68;
                    }

                    v70 = v91 - v69;
                    v94 = v90 + v69;
                    v95 = v91 - v69;
                    v71 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                    v21 = v94;
                    if (v71 + 1 < v95)
                    {
                      v72 = v71 + 1;
                    }

                    else
                    {
                      v72 = v95;
                    }

                    v73 = v95 - v70 + v72;
                    if (v95 >= v73)
                    {
                      v16 = v73;
                    }

                    else
                    {
                      v16 = v95;
                    }

                    v90 = 0;
                    v91 = 0;
                  }

                  else
                  {
                    v16 = 0;
                    v21 = 0;
                  }

                  v74 = llvm::StringRef::find_first_not_of(&v90, " \t\n\v\f\r", 6, 0);
                  if (v74 >= v91)
                  {
                    v75 = v91;
                  }

                  else
                  {
                    v75 = v74;
                  }

                  v76 = v91 - v75;
                  v94 = v90 + v75;
                  v95 = v91 - v75;
                  v77 = llvm::StringRef::find_last_not_of(&v94, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  v24 = v95;
                  if (v77 + 1 < v95)
                  {
                    v78 = v77 + 1;
                  }

                  else
                  {
                    v78 = v95;
                  }

                  v79 = v95 - v76 + v78;
                  if (v95 < v79)
                  {
                    v79 = v95;
                  }

                  if (v79)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = 1;
                    v25 = v92;
                    v24 = v93;
                  }

                  v3 = a3;
                  goto LABEL_133;
              }

              v61 = -2;
LABEL_97:
              v90 = v59;
              v91 = v61 + v58;
LABEL_98:
              v94 = 0;
              if (llvm::consumeUnsignedInteger(&v90, 0, &v94, v56))
              {
                goto LABEL_142;
              }

              goto LABEL_99;
          }

          v15 = *(v94 + 1);
          v59 = v94 + 3;
          v61 = -3;
          goto LABEL_97;
        }

        v12 = result[v11++];
      }

      while (v12 == 123);
      v13 = v11 - 1;
      if (a2 < v13)
      {
        v13 = a2;
      }

      if (v13 < 2)
      {
        goto LABEL_13;
      }

LABEL_32:
      v16 = 0;
      v21 = 0;
      v15 = 0;
      v22 = 0;
      v23 = 0;
      v26 = 0;
      v24 = v13 >> 1;
      if (a2 < v13 >> 1)
      {
        v24 = a2;
      }

      v32 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < v32)
      {
        v32 = a2;
      }

      result += v32;
      a2 -= v32;
LABEL_37:
      v17 = 1;
      v18 = 2;
      v25 = v9;
      v27 = 1;
LABEL_38:
      LODWORD(v85) = v27;
      *(&v85 + 1) = v25;
      *&v86 = v24;
      *(&v86 + 1) = __PAIR64__(v22, v23);
      LODWORD(v87) = v18;
      BYTE4(v87) = v15;
      *(&v87 + 5) = v92;
      BYTE7(v87) = BYTE2(v92);
      *(&v87 + 1) = v21;
      v88 = v16;
      v89 = v17;
      if (v17)
      {
        if (v23 == -1)
        {
          v33 = v26;
        }

        else
        {
          v33 = 0;
        }

        if (v33 == 1)
        {
          DWORD2(v86) = v83++;
        }

        v4 = *(v3 + 8);
        if (v4 >= *(v3 + 12))
        {
          v81 = a2;
          v82 = result;
          llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(v3, &v85);
          v3 = a3;
          a2 = v81;
          result = v82;
        }

        else
        {
          v5 = *v3 + 56 * v4;
          v6 = v85;
          v7 = v86;
          v8 = v87;
          *(v5 + 48) = v88;
          *(v5 + 16) = v7;
          *(v5 + 32) = v8;
          *v5 = v6;
          ++*(v3 + 8);
        }
      }
    }

    while (a2);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v10 = *a2;
  v11 = v2;
  v12 = a2[2];
  v13 = *(a2 + 6);
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    if (v4 > &v10 || v4 + 56 * v3 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = v4 + 56 * *(a1 + 8);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  *(v5 + 48) = v13;
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  *v5 = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 56 * v5 - 56;
}

void llvm::GlobPattern::create(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v116 = *MEMORY[0x277D85DE8];
  v94 = a1;
  v95 = a2;
  v104 = 0u;
  v105 = v107;
  v106 = 0x100000000;
  first_of = llvm::StringRef::find_first_of(&v94, "?*[{\", 5, 0);
  v9 = v94;
  v10 = v95;
  if (v95 >= first_of)
  {
    v11 = first_of;
  }

  else
  {
    v11 = v95;
  }

  *&v104 = v94;
  *(&v104 + 1) = v11;
  if (first_of != -1)
  {
    v12 = first_of;
    v13 = (v94 + v11);
    v14 = v95 - v11;
    v94 += v11;
    v95 -= v11;
    v101 = v103;
    v102 = 0x100000000;
    if (v9)
    {
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_195;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v109) = v14;
      if (v10 > first_of)
      {
        memmove(&__dst, v13, v14);
      }

      *(&__dst + v14) = 0;
    }

    else
    {
      __dst = 0uLL;
      v109 = 0;
    }

    v112 = v114;
    v113 = 0x200000000;
    llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&v112, &__dst, &v110);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(__dst);
      if ((a4 & 1) == 0)
      {
LABEL_61:
        v111 = 0;
        *&__dst = &v109;
        *(&__dst + 1) = 0x100000000;
        if (!v113)
        {
          goto LABEL_85;
        }

        llvm::SmallVectorImpl<std::string>::operator=(&__dst, &v112);
LABEL_80:
        v41 = v112;
        if (!v113)
        {
          goto LABEL_86;
        }

        v42 = &v112[3 * v113 - 1] + 7;
        v43 = -24 * v113;
        v44 = v42;
        do
        {
          v45 = *v44;
          v44 -= 24;
          if (v45 < 0)
          {
            operator delete(*(v42 - 23));
          }

          v42 = v44;
          v43 += 24;
        }

        while (v43);
LABEL_85:
        v41 = v112;
LABEL_86:
        if (v41 != v114)
        {
          free(v41);
        }

        if (v111)
        {
          v46 = __dst;
          *&__dst = 0;
          if (!v46)
          {
            goto LABEL_102;
          }
        }

        else
        {
          llvm::SmallVectorImpl<std::string>::operator=(&v101, &__dst);
          v46 = __dst;
          if ((v111 & 1) == 0)
          {
            if (DWORD2(__dst))
            {
              v47 = (__dst + 24 * DWORD2(__dst) - 1);
              v48 = -24 * DWORD2(__dst);
              v49 = v47;
              do
              {
                v50 = *v49;
                v49 -= 24;
                if (v50 < 0)
                {
                  operator delete(*(v47 - 23));
                }

                v47 = v49;
                v48 += 24;
              }

              while (v48);
              v46 = __dst;
            }

            if (v46 != &v109)
            {
              free(v46);
            }

            goto LABEL_102;
          }

          *&__dst = 0;
          if (!v46)
          {
LABEL_102:
            if (v102)
            {
              v51 = v101;
              v52 = v101 + 24 * v102;
              while (1)
              {
                v53 = v51[23] >= 0 ? v51[23] : *(v51 + 1);
                llvm::GlobPattern::SubGlobPattern::create(v53, &v112);
                v54 = v115;
                if (v115)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::GlobPattern::SubGlobPattern,false>::push_back(&v105, &v112);
                if (v115)
                {
                  goto LABEL_112;
                }

                if (v114[0] != &v115)
                {
                  free(v114[0]);
                }

                v57 = v112;
                if (v113)
                {
                  v58 = a5;
                  v59 = &v112[10 * v113 - 9];
                  v60 = -80 * v113;
                  do
                  {
                    if (v59 + 2 != *v59)
                    {
                      free(*v59);
                    }

                    v59 -= 10;
                    v60 += 80;
                  }

                  while (v60);
                  v57 = v112;
                  a5 = v58;
                }

                if (v57 == v114)
                {
                  goto LABEL_104;
                }

                free(v57);
                if (v54)
                {
                  goto LABEL_127;
                }

LABEL_105:
                v51 += 24;
                if (v51 == v52)
                {
                  goto LABEL_125;
                }
              }

              v55 = v112;
              v112 = 0;
              *(a5 + 72) |= 1u;
              *a5 = v55;
LABEL_112:
              v56 = v112;
              v112 = 0;
              if (v56)
              {
                (*(*v56 + 8))(v56);
              }

LABEL_104:
              if (v54)
              {
                goto LABEL_127;
              }

              goto LABEL_105;
            }

LABEL_125:
            *(a5 + 72) &= ~1u;
            *a5 = v104;
            *(a5 + 16) = a5 + 32;
            *(a5 + 24) = 0x100000000;
            if (v106)
            {
              llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::operator=(a5 + 16, &v105);
            }

            goto LABEL_127;
          }
        }

        *(a5 + 72) |= 1u;
        *a5 = v46;
LABEL_127:
        v61 = v101;
        if (v102)
        {
          v62 = v101 + 24 * v102 - 1;
          v63 = -24 * v102;
          v64 = v62;
          do
          {
            v65 = *v64;
            v64 -= 24;
            if (v65 < 0)
            {
              operator delete(*(v62 - 23));
            }

            v62 = v64;
            v63 += 24;
          }

          while (v63);
          v61 = v101;
        }

        if (v61 != v103)
        {
          free(v61);
        }

        goto LABEL_135;
      }
    }

    else if ((a4 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v10 <= v12)
    {
      goto LABEL_61;
    }

    v15 = memchr(v13, 123, v14);
    if (!v15 || v15 - v13 == -1)
    {
      goto LABEL_61;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v99 = &v101;
    v100 = 0;
    do
    {
      v19 = v13[v18];
      if (v19 <= 0x5B)
      {
        if (v19 == 44)
        {
          if (v16)
          {
            if (v14 >= v17)
            {
              v29 = v17;
            }

            else
            {
              v29 = v14;
            }

            if (v14 - v29 >= v18 - v17)
            {
              v30 = v18 - v17;
            }

            else
            {
              v30 = v14 - v29;
            }

            v31 = *(v16 + 6);
            if (v31 >= *(v16 + 7))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v32 = (*(v16 + 2) + 16 * v31);
            *v32 = &v13[v29];
            v32[1] = v30;
            ++*(v16 + 6);
            v17 = v18 + 1;
          }
        }

        else if (v19 == 91)
        {
          if (v14 <= v18 + 2 || (v25 = memchr(&v13[v18 + 2], 93, v14 - (v18 + 2))) == 0 || (v18 = v25 - v13, v25 - v13 == -1))
          {
            operator new();
          }
        }
      }

      else if (v19 == 92)
      {
        if (++v18 == v14)
        {
          v98 = 22;
          llvm::make_error<llvm::StringError,char const(&)[32],llvm::errc>();
        }
      }

      else if (v19 == 123)
      {
        if (v16)
        {
          operator new();
        }

        v26 = v100;
        if (v100 >= HIDWORD(v100))
        {
          llvm::SmallVectorTemplateBase<parseBraceExpansions(llvm::StringRef,std::optional<unsigned long>)::BraceExpansion,false>::growAndEmplaceBack<>();
        }

        v27 = v99 + 64 * v100;
        *v27 = 0u;
        *(v27 + 1) = 0u;
        *(v27 + 3) = 0u;
        *(v27 + 2) = 0u;
        *(v27 + 2) = v27 + 32;
        *(v27 + 7) = 2;
        v28 = (v26 + 1);
        LODWORD(v100) = v28;
        v16 = v99 + 64 * v28 - 64;
        *v16 = v18;
        v17 = v18 + 1;
      }

      else if (v19 == 125 && v16)
      {
        v20 = *(v16 + 6);
        if (!v20)
        {
          v98 = 22;
          llvm::make_error<llvm::StringError,char const(&)[32],llvm::errc>();
        }

        v21 = a5;
        if (v14 >= v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = v14;
        }

        if (v14 - v22 >= v18 - v17)
        {
          v23 = v18 - v17;
        }

        else
        {
          v23 = v14 - v22;
        }

        if (v20 >= *(v16 + 7))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v24 = (*(v16 + 2) + 16 * v20);
        *v24 = &v13[v22];
        v24[1] = v23;
        ++*(v16 + 6);
        *(v16 + 1) = v18 - *v16 + 1;
        v16 = 0;
        a5 = v21;
      }

      ++v18;
    }

    while (v18 != v14);
    if (v16)
    {
      operator new();
    }

    if (!v100)
    {
      if (a3)
      {
LABEL_154:
        v111 = 0;
        *&__dst = &v109;
        *(&__dst + 1) = 0x100000000;
        if (v113)
        {
          llvm::SmallVectorImpl<std::string>::operator=(&__dst, &v112);
        }

        v38 = v99;
        if (v100)
        {
          v39 = (v99 + 64 * v100 - 48);
          v40 = -64 * v100;
          do
          {
            if (v39 + 2 != *v39)
            {
              free(*v39);
            }

            v39 -= 8;
            v40 += 64;
          }

          while (v40);
          v38 = v99;
        }

        if (v38 != &v101)
        {
          free(v38);
        }

        goto LABEL_80;
      }

LABEL_158:
      operator new();
    }

    v33 = v99;
    v34 = v99 + 64 * v100;
    v35 = v100 << 6;
    v36 = 1;
    v37 = 24;
    while (is_mul_ok(*(v99 + v37), v36))
    {
      v36 *= *(v99 + v37);
      v37 += 64;
      v35 -= 64;
      if (!v35)
      {
        goto LABEL_157;
      }
    }

    v36 = -1;
LABEL_157:
    if (v36 > a3)
    {
      goto LABEL_158;
    }

    v90 = v99;
    v91 = a5;
    while (1)
    {
      *&__dst = &v109;
      *(&__dst + 1) = 0x200000000;
      llvm::SmallVectorImpl<std::string>::swap(&v112, &__dst);
      v75 = *(v34 - 10);
      v76 = DWORD2(__dst);
      if (!v75)
      {
        break;
      }

      if (DWORD2(__dst))
      {
        v92 = *(v34 - 6) + 16 * v75;
        v93 = *(v34 - 6);
        while (!v76)
        {
LABEL_164:
          v76 = DWORD2(__dst);
          v93 += 16;
          if (v93 == v92)
          {
            goto LABEL_183;
          }
        }

        v77 = *v93;
        v78 = *(v93 + 8);
        v79 = __dst;
        v80 = 24 * v76;
        while (1)
        {
          v81 = *(v79 + 23);
          if (v81 >= 0)
          {
            v82 = v79;
          }

          else
          {
            v82 = *v79;
          }

          if (v81 >= 0)
          {
            v83 = *(v79 + 23);
          }

          else
          {
            v83 = v79[1];
          }

          v96 = v82;
          v97 = v83;
          if (v113 >= HIDWORD(v113))
          {
            llvm::SmallVectorTemplateBase<std::string,false>::growAndEmplaceBack<llvm::StringRef &>();
          }

          if (v83 > 0x7FFFFFFFFFFFFFF7)
          {
            break;
          }

          v84 = &v112[3 * v113];
          if (v83 >= 0x17)
          {
            operator new();
          }

          *(v84 + 23) = v83;
          if (v83)
          {
            memmove(v84, v82, v83);
          }

          *(v84 + v83) = 0;
          LODWORD(v113) = v113 + 1;
          std::string::replace(&v112[3 * v113 - 3], *(v34 - 8), *(v34 - 7), v77, v78);
          v79 += 3;
          v80 -= 24;
          if (!v80)
          {
            goto LABEL_164;
          }
        }

LABEL_195:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v85 = __dst;
      if (__dst != &v109)
      {
        goto LABEL_193;
      }

LABEL_160:
      v34 -= 64;
      if (v34 == v33)
      {
        goto LABEL_154;
      }
    }

LABEL_183:
    v85 = __dst;
    if (v76)
    {
      v86 = (__dst + 24 * v76 - 1);
      v87 = -24 * v76;
      v88 = v86;
      a5 = v91;
      do
      {
        v89 = *v88;
        v88 -= 24;
        if (v89 < 0)
        {
          operator delete(*(v86 - 23));
        }

        v86 = v88;
        v87 += 24;
      }

      while (v87);
      v85 = __dst;
      v33 = v90;
      if (__dst == &v109)
      {
        goto LABEL_160;
      }
    }

    else
    {
      a5 = v91;
      v33 = v90;
      if (__dst == &v109)
      {
        goto LABEL_160;
      }
    }

LABEL_193:
    free(v85);
    goto LABEL_160;
  }

  *(a5 + 72) &= ~1u;
  *a5 = v104;
  *(a5 + 16) = a5 + 32;
  *(a5 + 24) = 0x100000000;
  if (!v106)
  {
    goto LABEL_148;
  }

  llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::operator=(a5 + 16, &v105);
LABEL_135:
  v66 = v105;
  if (!v106)
  {
    goto LABEL_149;
  }

  v67 = (v105 + 40 * v106);
  do
  {
    v69 = (v67 - 3);
    v68 = *(v67 - 3);
    if (v68 != v67)
    {
      free(v68);
    }

    v70 = v67 - 5;
    v71 = *(v67 - 5);
    v72 = *(v67 - 8);
    if (v72)
    {
      v73 = &v71[80 * v72 - 72];
      v74 = -80 * v72;
      do
      {
        if (v73 + 2 != *v73)
        {
          free(*v73);
        }

        v73 -= 10;
        v74 += 80;
      }

      while (v74);
      v71 = *v70;
    }

    if (v71 != v69)
    {
      free(v71);
    }

    v67 = v70;
  }

  while (v70 != v66);
LABEL_148:
  v66 = v105;
LABEL_149:
  if (v66 != v107)
  {
    free(v66);
  }
}

void llvm::GlobPattern::SubGlobPattern::create(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12[20] = *MEMORY[0x277D85DE8];
  v7 = &v9;
  v8 = 0;
  __n = 0;
  v11 = 0;
  v9 = v12;
  if (a1)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  __n = 0;
  *(a2 + 40) &= ~1u;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  if (v8)
  {
    llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(a2, &v7);
  }

  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 40;
  *(a2 + 32) = 0;
  v3 = __n;
  if (!__n || &v7 == a2)
  {
    if (v9 != v12)
    {
      free(v9);
    }
  }

  else
  {
    if (v9 == v12)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(a2 + 16) = v9;
    *(a2 + 24) = v3;
    *(a2 + 32) = v11;
    v9 = v12;
    __n = 0;
    v11 = 0;
  }

  v4 = v7;
  if (v8)
  {
    v5 = (v7 + 80 * v8 - 72);
    v6 = -80 * v8;
    do
    {
      if (v5 + 2 != *v5)
      {
        free(*v5);
      }

      v5 -= 10;
      v6 += 80;
    }

    while (v6);
    v4 = v7;
  }

  if (v4 != &v9)
  {
    free(v4);
  }
}

uint64_t *llvm::SmallVectorTemplateBase<llvm::GlobPattern::SubGlobPattern,false>::push_back(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4 >= *(result + 3))
  {
    if (v5 > a2 || v5 + 40 * v4 <= a2)
    {
      llvm::SmallVectorTemplateBase<llvm::GlobPattern::SubGlobPattern,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::GlobPattern::SubGlobPattern,false>::grow();
  }

  v6 = (v5 + 40 * *(result + 2));
  *v6 = (v6 + 2);
  v6[1] = 0;
  if (*(a2 + 8))
  {
    result = llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(v6, a2);
  }

  v6[2] = (v6 + 5);
  v6[3] = 0;
  v6[4] = 0;
  if (v6 != a2 && *(a2 + 24) != 0)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  ++*(v3 + 2);
  return result;
}

uint64_t expand(uint64_t result, unsigned __int8 *a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v8[0] = &v9;
  v9 = 0u;
  v10 = 0u;
  v8[1] = 0x600000004;
  v11 = 256;
  if (a3 >= 3)
  {
    do
    {
      while (1)
      {
        v3 = *a2;
        if (a2[1] == 45)
        {
          break;
        }

        *(&v9 + ((v3 >> 3) & 0x18)) |= 1 << v3;
        ++a2;
        if (--a3 <= 2)
        {
          goto LABEL_9;
        }
      }

      v4 = a2[2];
      if (v3 > v4)
      {
        operator new();
      }

      v5 = v4 + 1;
      do
      {
        *(&v9 + (v3 >> 6)) |= 1 << v3;
        LODWORD(v3) = v3 + 1;
      }

      while (v5 != v3);
      a2 += 3;
      a3 -= 3;
    }

    while (a3 > 2);
  }

LABEL_9:
  while (a3)
  {
    v6 = *a2++;
    *(&v9 + ((v6 >> 3) & 0x18)) |= 1 << v6;
    --a3;
  }

  *(result + 72) &= ~1u;
  *result = result + 16;
  *(result + 8) = 0x600000000;
  if (v8 != result)
  {
    v7 = v10;
    *(result + 16) = v9;
    *(result + 32) = v7;
    *(result + 8) = 4;
  }

  *(result + 64) = 256;
  return result;
}

BOOL llvm::GlobPattern::match(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (a3 < v3)
  {
    return 0;
  }

  if (v3)
  {
    v6 = a1;
    v7 = a3;
    v8 = memcmp(a2, *a1, v3);
    a3 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      return 0;
    }
  }

  v10 = a3 - v3;
  v11 = *(a1 + 24);
  if (a3 == v3 && v11 == 0)
  {
    return 1;
  }

  if (!v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = 40 * v11 - 40;
  do
  {
    result = llvm::GlobPattern::SubGlobPattern::match(v13, a2 + v3, v10);
    if (result)
    {
      break;
    }

    v13 += 5;
    v15 = v14;
    v14 -= 40;
  }

  while (v15);
  return result;
}

BOOL llvm::GlobPattern::SubGlobPattern::match(void *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = v3;
  if (!a3)
  {
LABEL_40:
    v17[0] = a1[2];
    v17[1] = v4;
    return llvm::StringRef::find_first_not_of(v17, 0x2Au, v5 - v3) == -1;
  }

  v6 = 0;
  v7 = 0;
  v8 = &v3[v4];
  v9 = &a2[a3];
  v5 = a1[2];
  while (2)
  {
    if (v7)
    {
LABEL_6:
      v10 = v6;
      v11 = a2;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v5 == v8)
            {
LABEL_5:
              ++a2;
              v5 = v7;
              if (a2 != v9)
              {
                goto LABEL_6;
              }

              v5 = v7;
              goto LABEL_40;
            }

            v12 = *v5;
            if (v12 != 92)
            {
              break;
            }

            if (v5[1] != *v11)
            {
              goto LABEL_5;
            }

            v5 += 2;
            if (++v11 == v9)
            {
              goto LABEL_40;
            }
          }

          if (v12 != 91)
          {
            break;
          }

          v13 = (*a1 + 80 * v10);
          if (((*(v13[1] + ((*v11 >> 3) & 0x18)) >> *v11) & 1) == 0)
          {
            goto LABEL_5;
          }

          ++v10;
          v5 = &v3[*v13];
          if (++v11 == v9)
          {
            goto LABEL_40;
          }
        }

        if (v12 == 42)
        {
          break;
        }

        if (v12 != 63 && v12 != *v11)
        {
          goto LABEL_5;
        }

        ++v5;
        if (++v11 == v9)
        {
          goto LABEL_40;
        }
      }

      v6 = v10;
      a2 = v11;
LABEL_36:
      v7 = ++v5;
      if (a2 != v9)
      {
        continue;
      }

      goto LABEL_40;
    }

    break;
  }

  while (v5 != v8)
  {
    v14 = *v5;
    switch(v14)
    {
      case '\\':
        if (v5[1] != *a2)
        {
          return 0;
        }

        v5 += 2;
        if (++a2 == v9)
        {
          goto LABEL_40;
        }

        break;
      case '*':
        goto LABEL_36;
      case '[':
        v15 = (*a1 + 80 * v6);
        if (((*(v15[1] + ((*a2 >> 3) & 0x18)) >> *a2) & 1) == 0)
        {
          return 0;
        }

        ++v6;
        v5 = &v3[*v15];
        if (++a2 == v9)
        {
          goto LABEL_40;
        }

        break;
      default:
        if (v14 != 63 && v14 != *a2)
        {
          return 0;
        }

        ++v5;
        if (++a2 == v9)
        {
          goto LABEL_40;
        }

        break;
    }
  }

  return 0;
}