unint64_t statistics::Statistics::hash_value(statistics::Statistics *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v2 = statistics::RawQuantitySample::hash_value(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    v128 = *(this + 3);
  }

  else
  {
    v128 = 0;
  }

  v129 = v2;
  if ((v3 & 0x400) == 0)
  {
    v127 = 0.0;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_37:
    v126 = 0.0;
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_38:
    v125 = 0.0;
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_39:
    v124 = 0.0;
    if ((v3 & 0x2000) != 0)
    {
      goto LABEL_17;
    }

LABEL_40:
    v123 = 0.0;
    if ((v3 & 0x4000) != 0)
    {
      goto LABEL_20;
    }

LABEL_41:
    v122 = 0.0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_23;
    }

LABEL_42:
    v121 = 0.0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  v12 = *(this + 19);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  v127 = v12;
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  v4 = *(this + 12);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v126 = v4;
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_38;
  }

LABEL_11:
  v5 = *(this + 13);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v125 = v5;
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_14:
  v6 = *(this + 11);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  v124 = v6;
  if ((v3 & 0x2000) == 0)
  {
    goto LABEL_40;
  }

LABEL_17:
  v7 = *(this + 23);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  v123 = v7;
  if ((v3 & 0x4000) == 0)
  {
    goto LABEL_41;
  }

LABEL_20:
  v8 = *(this + 24);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  v122 = v8;
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_42;
  }

LABEL_23:
  v9 = *(this + 7);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  v121 = v9;
  if ((v3 & 8) != 0)
  {
LABEL_26:
    v120 = *(this + 6);
    if ((v3 & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_44:
    v119 = 0.0;
    if ((v3 & 0x800) != 0)
    {
      goto LABEL_30;
    }

LABEL_45:
    v118 = 0;
    if ((v3 & 0x1000) != 0)
    {
      goto LABEL_31;
    }

LABEL_46:
    v117 = 0.0;
    goto LABEL_47;
  }

LABEL_43:
  v120 = 0;
  if ((v3 & 4) == 0)
  {
    goto LABEL_44;
  }

LABEL_27:
  v10 = *(this + 5);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  v119 = v10;
  if ((v3 & 0x800) == 0)
  {
    goto LABEL_45;
  }

LABEL_30:
  v118 = *(this + 21);
  if ((v3 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

LABEL_31:
  v11 = *(this + 22);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  v117 = v11;
LABEL_47:
  v13 = *(this + 8);
  v14 = *(this + 9);
  if (v13 != v14)
  {
    v15 = 0;
    while (1)
    {
      v16 = *v13;
      if ((*(*v13 + 24) & 2) != 0)
      {
        v17 = *(v16 + 16);
        if (v17 == 0.0)
        {
          v17 = 0.0;
        }

        if (*(*v13 + 24))
        {
LABEL_55:
          v18 = *(v16 + 8);
          if (v18 == 0.0)
          {
            v18 = 0.0;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0.0;
        if (*(*v13 + 24))
        {
          goto LABEL_55;
        }
      }

      v18 = 0.0;
LABEL_57:
      v15 ^= *&v17 ^ *&v18;
      if (++v13 == v14)
      {
        goto LABEL_60;
      }
    }
  }

  v15 = 0;
LABEL_60:
  v19 = *(this + 20);
  if (v19)
  {
    v20 = statistics::RawQuantitySample::hash_value(v19);
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v20 = 0;
    if ((v3 & 0x100) == 0)
    {
LABEL_62:
      v116 = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_63;
      }

LABEL_67:
      v21 = 0;
      if ((v3 & 0x10000) != 0)
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }
  }

  v116 = *(this + 17);
  if ((v3 & 2) == 0)
  {
    goto LABEL_67;
  }

LABEL_63:
  v21 = *(this + 4);
  if ((v3 & 0x10000) != 0)
  {
LABEL_64:
    v22 = *(this + 201);
    goto LABEL_69;
  }

LABEL_68:
  v22 = 0;
LABEL_69:
  v23 = *(this + 15);
  if (v23)
  {
    v24 = statistics::QuantityOverlapProcessorState::hash_value(v23);
    v3 = *(this + 51);
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_71;
    }

LABEL_74:
    v25 = *(this + 200);
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_75;
  }

  v24 = 0;
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_74;
  }

LABEL_71:
  v25 = 0;
  if ((v3 & 0x200) != 0)
  {
LABEL_72:
    v26 = *(this + 18);
    goto LABEL_76;
  }

LABEL_75:
  v26 = 0;
LABEL_76:
  v27 = *(this + 2);
  if (!v27)
  {
    v33 = 0;
    goto LABEL_93;
  }

  v28 = *(v27 + 1);
  if ((v27[23] & 0x80u) == 0)
  {
    v29 = v27[23];
  }

  else
  {
    v27 = *v27;
    v29 = v28;
  }

  if (v29 > 0x20)
  {
    if (v29 > 0x40)
    {
      v59 = 0x9DDFEA08EB382D69;
      v69 = *&v27[v29 - 48];
      v68 = *&v27[v29 - 40];
      v70 = *&v27[v29 - 24];
      v71 = *&v27[v29 - 56];
      v72 = *&v27[v29 - 16];
      v73 = *&v27[v29 - 8];
      v74 = v71 + v72;
      v75 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ (v69 + v29))) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ (v69 + v29))));
      v76 = 0x9DDFEA08EB382D69 * (v75 ^ (v75 >> 47));
      v77 = *&v27[v29 - 64] + v29;
      v78 = v69 + v71 + v77;
      v79 = __ROR8__(v78, 44) + v77;
      v80 = __ROR8__(v77 + v68 + v76, 21);
      v81 = v78 + v68;
      v82 = v79 + v80;
      v83 = v74 + *&v27[v29 - 32] - 0x4B6D499041670D8DLL;
      v84 = v70 + v72 + v83;
      v85 = v84 + v73;
      v86 = __ROR8__(v84, 44) + v83 + __ROR8__(v83 + v68 + v73, 21);
      v88 = *v27;
      v87 = v27 + 32;
      v89 = v88 - 0x4B6D499041670D8DLL * v68;
      v90 = -((v29 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v91 = *(v87 - 3);
        v92 = v89 + v81 + v74 + v91;
        v93 = v87[2];
        v94 = v87[3];
        v95 = v87[1];
        v74 = v95 + v81 - 0x4B6D499041670D8DLL * __ROR8__(v74 + v82 + v93, 42);
        v96 = v76 + v85;
        v97 = *(v87 - 2);
        v98 = *(v87 - 1);
        v99 = *(v87 - 4) - 0x4B6D499041670D8DLL * v82;
        v100 = v99 + v85 + v98;
        v101 = v99 + v91 + v97;
        v81 = v101 + v98;
        v102 = __ROR8__(v101, 44) + v99;
        v103 = (0xB492B66FBE98F273 * __ROR8__(v92, 37)) ^ v86;
        v89 = 0xB492B66FBE98F273 * __ROR8__(v96, 33);
        v82 = v102 + __ROR8__(v100 + v103, 21);
        v104 = v89 + v86 + *v87;
        v85 = v95 + v93 + v104 + v94;
        v86 = __ROR8__(v95 + v93 + v104, 44) + v104 + __ROR8__(v74 + v97 + v104 + v94, 21);
        v87 += 8;
        v76 = v103;
        v90 += 64;
      }

      while (v90);
      v105 = 0x9DDFEA08EB382D69 * (v85 ^ ((0x9DDFEA08EB382D69 * (v85 ^ v81)) >> 47) ^ (0x9DDFEA08EB382D69 * (v85 ^ v81)));
      v106 = v89 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v86 ^ ((0x9DDFEA08EB382D69 * (v86 ^ v82)) >> 47) ^ (0x9DDFEA08EB382D69 * (v86 ^ v82)))) ^ ((0x9DDFEA08EB382D69 * (v86 ^ ((0x9DDFEA08EB382D69 * (v86 ^ v82)) >> 47) ^ (0x9DDFEA08EB382D69 * (v86 ^ v82)))) >> 47));
      v107 = 0x9DDFEA08EB382D69 * (v106 ^ (v103 - 0x4B6D499041670D8DLL * (v74 ^ (v74 >> 47)) - 0x622015F714C7D297 * (v105 ^ (v105 >> 47))));
      v60 = 0x9DDFEA08EB382D69 * (v106 ^ (v107 >> 47) ^ v107);
    }

    else
    {
      v34 = &v27[v29];
      v35 = *&v27[v29 - 16];
      v36 = *&v27[v29 - 8];
      v37 = *(v27 + 1);
      v38 = *v27 - 0x3C5A37A36834CED9 * (v35 + v29);
      v41 = v27 + 16;
      v39 = *(v27 + 2);
      v40 = *(v41 + 1);
      v42 = __ROR8__(v38 + v40, 52);
      v43 = __ROR8__(v38, 37);
      v44 = v38 + v37;
      v45 = __ROR8__(v44, 7);
      v46 = v44 + v39;
      v47 = v45 + v43;
      v48 = *(v34 - 4) + v39;
      v49 = v36 + v40;
      v50 = __ROR8__(v49 + v48, 52);
      v51 = v47 + v42;
      v52 = __ROR8__(v48, 37);
      v53 = *(v34 - 3) + v48;
      v54 = __ROR8__(v53, 7);
      v55 = v51 + __ROR8__(v46, 31);
      v56 = v53 + v35;
      v57 = v56 + v49;
      v58 = v46 + v40 + v52 + v54 + v50 + __ROR8__(v56, 31);
      v59 = 0x9AE16A3B2F90404FLL;
      v60 = v55 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v57 + v55) - 0x651E95C4D06FBFB1 * v58) ^ ((0xC3A5C85C97CB3127 * (v57 + v55) - 0x651E95C4D06FBFB1 * v58) >> 47));
    }

    v33 = (v60 ^ (v60 >> 47)) * v59;
  }

  else
  {
    if (v29 > 0x10)
    {
      v61 = *(v27 + 1);
      v62 = 0xB492B66FBE98F273 * *v27;
      v63 = 0x9AE16A3B2F90404FLL * *&v27[v29 - 8];
      v64 = __ROR8__(v63, 30) + __ROR8__(v62 - v61, 43);
      v65 = v62 + v29 + __ROR8__(v61 ^ 0xC949D7C7509E6557, 20) - v63;
      v66 = 0x9DDFEA08EB382D69 * ((v64 - 0x3C5A37A36834CED9 * *&v27[v29 - 16]) ^ v65);
      v67 = v65 ^ (v66 >> 47) ^ v66;
LABEL_88:
      v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v67) ^ ((0x9DDFEA08EB382D69 * v67) >> 47));
      goto LABEL_93;
    }

    if (v29 >= 9)
    {
      v30 = *v27;
      v31 = *&v27[v29 - 8];
      v32 = __ROR8__(v31 + v29, v29);
      v33 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v32 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v32 ^ v30)))) ^ ((0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v32 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v32 ^ v30)))) >> 47))) ^ v31;
      goto LABEL_93;
    }

    if (v29 >= 4)
    {
      v112 = *v27;
      v113 = *&v27[v29 - 4];
      v114 = 0x9DDFEA08EB382D69 * ((v29 + (8 * v112)) ^ v113);
      v67 = v113 ^ (v114 >> 47) ^ v114;
      goto LABEL_88;
    }

    v33 = 0x9AE16A3B2F90404FLL;
    if (v29)
    {
      v115 = (0xC949D7C7509E6557 * (v29 | (4 * v27[v29 - 1]))) ^ (0x9AE16A3B2F90404FLL * (*v27 | (v27[v29 >> 1] << 8)));
      v33 = 0x9AE16A3B2F90404FLL * (v115 ^ (v115 >> 47));
    }
  }

LABEL_93:
  v108 = *(this + 16);
  if (v108)
  {
    v109 = statistics::Statistics::hash_value(v108);
  }

  else
  {
    v109 = 0;
  }

  v110 = *(this + 1);
  if (v110)
  {
    v110 = statistics::Statistics::hash_value(v110);
  }

  return v128 ^ v129 ^ *&v127 ^ *&v126 ^ *&v125 ^ *&v124 ^ *&v123 ^ *&v122 ^ *&v121 ^ v120 ^ *&v119 ^ v118 ^ *&v117 ^ v15 ^ v20 ^ v116 ^ v21 ^ v22 ^ v24 ^ v25 ^ v26 ^ v33 ^ v109 ^ v110;
}

uint64_t statistics::Statistics::makeMostRecentDatum(uint64_t this)
{
  if (!*(this + 112))
  {
    operator new();
  }

  return this;
}

uint64_t statistics::Statistics::makeUnfinishedDatum(uint64_t this)
{
  if (!*(this + 160))
  {
    operator new();
  }

  return this;
}

uint64_t statistics::Statistics::makeOverlapProcessorState(uint64_t this)
{
  if (!*(this + 120))
  {
    operator new();
  }

  return this;
}

uint64_t statistics::Statistics::makePrimaryStatistics(uint64_t this)
{
  if (!*(this + 128))
  {
    operator new();
  }

  return this;
}

uint64_t statistics::Statistics::makeAuxiliaryStatistics(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<statistics::Interval>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<statistics::Interval>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278612E78, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<statistics::Interval>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x22AAC8590);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<statistics::Interval>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<statistics::Interval>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<statistics::Interval>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

double statistics::StatisticsBucket::StatisticsBucket(statistics::StatisticsBucket *this)
{
  *this = &unk_283BE6258;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 47) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  return result;
}

{
  *this = &unk_283BE6258;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 47) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  return result;
}

void statistics::StatisticsBucket::~StatisticsBucket(statistics::StatisticsBucket *this)
{
  *this = &unk_283BE6258;
  v3 = (this + 160);
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 136);
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 112);
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 80);
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 40);
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

{
  statistics::StatisticsBucket::~StatisticsBucket(this);

  JUMPOUT(0x22AAC8590);
}

uint64_t statistics::StatisticsBucket::StatisticsBucket(uint64_t this, const statistics::StatisticsBucket *a2)
{
  *this = &unk_283BE6258;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0u;
  *(this + 112) = 0u;
  *(this + 160) = 0u;
  *(this + 188) = 0;
  *(this + 96) = 0u;
  *(this + 128) = 0u;
  *(this + 144) = 0u;
  *(this + 176) = 0;
  v2 = *(a2 + 94);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 188) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 94);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 188) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 94);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v17 = *(a2 + 8);
    v3 |= 0x10u;
    *(this + 188) = v3;
    *(this + 64) = v17;
    v2 = *(a2 + 94);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v18 = *(a2 + 185);
  v3 |= 0x80u;
  *(this + 188) = v3;
  *(this + 185) = v18;
  v2 = *(a2 + 94);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = *(a2 + 187);
  v3 |= 0x200u;
  *(this + 188) = v3;
  *(this + 187) = v19;
  v2 = *(a2 + 94);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20 = *(a2 + 186);
  v3 |= 0x100u;
  *(this + 188) = v3;
  *(this + 186) = v20;
  v2 = *(a2 + 94);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v21 = *(a2 + 184);
  v3 |= 0x40u;
  *(this + 188) = v3;
  *(this + 184) = v21;
  v2 = *(a2 + 94);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v22 = *(a2 + 4);
  v3 |= 8u;
  *(this + 188) = v3;
  *(this + 32) = v22;
  v2 = *(a2 + 94);
  if ((v2 & 4) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_34:
  v23 = *(a2 + 3);
  v3 |= 4u;
  *(this + 188) = v3;
  *(this + 24) = v23;
  if ((*(a2 + 94) & 0x20) != 0)
  {
LABEL_14:
    v6 = *(a2 + 9);
    *(this + 188) = v3 | 0x20;
    *(this + 72) = v6;
  }

LABEL_15:
  v7 = *(a2 + 10);
  if (v7 != *(a2 + 11))
  {
    v8 = *v7;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample const&>();
  }

  if (*(a2 + 13))
  {
    operator new();
  }

  v9 = *(a2 + 20);
  if (v9 != *(a2 + 21))
  {
    v10 = *v9;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics const&>();
  }

  v11 = *(a2 + 14);
  if (v11 != *(a2 + 15))
  {
    v12 = *v11;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics const&>();
  }

  v13 = *(a2 + 17);
  if (v13 != *(a2 + 18))
  {
    v14 = *v13;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics const&>();
  }

  v15 = *(a2 + 5);
  if (v15 != *(a2 + 6))
  {
    v16 = *v15;
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval const&>();
  }

  return this;
}

statistics *statistics::StatisticsBucket::operator=(statistics *a1, const statistics::StatisticsBucket *a2)
{
  if (a1 != a2)
  {
    statistics::StatisticsBucket::StatisticsBucket(v5, a2);
    statistics::swap(a1, v5, v3);
    statistics::StatisticsBucket::~StatisticsBucket(v5);
  }

  return a1;
}

double statistics::swap(statistics *this, statistics::StatisticsBucket *a2, statistics::StatisticsBucket *a3)
{
  v3 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LOBYTE(v3) = *(this + 185);
  *(this + 185) = *(a2 + 185);
  *(a2 + 185) = v3;
  LOBYTE(v3) = *(this + 187);
  *(this + 187) = *(a2 + 187);
  *(a2 + 187) = v3;
  LOBYTE(v3) = *(this + 186);
  *(this + 186) = *(a2 + 186);
  *(a2 + 186) = v3;
  LOBYTE(v3) = *(this + 184);
  *(this + 184) = *(a2 + 184);
  *(a2 + 184) = v3;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  v10 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v11;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  v14 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v14;
  v15 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v15;
  v16 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v16;
  v17 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v17;
  v18 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v19;
  v20 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v20;
  v21 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v21;
  v22 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v22;
  v23 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v23;
  v24 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v24;
  v25 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v25;
  return result;
}

uint64_t statistics::StatisticsBucket::StatisticsBucket(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v4 = (a1 + 40);
  *a1 = &unk_283BE6258;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 80) = 0u;
  v5 = (a1 + 80);
  *(a1 + 176) = 0;
  *(a1 + 188) = *(a2 + 188);
  *(a2 + 188) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 187) = *(a2 + 187);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 72) = *(a2 + 72);
  std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate((a1 + 80));
  *v5 = *(a2 + 80);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v7 = *(a1 + 104);
  *(a1 + 104) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate((a1 + 160));
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate((a1 + 112));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate((a1 + 136));
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate(v4);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return a1;
}

statistics *statistics::StatisticsBucket::operator=(statistics *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    statistics::StatisticsBucket::StatisticsBucket(v5, a2);
    statistics::swap(a1, v5, v3);
    statistics::StatisticsBucket::~StatisticsBucket(v5);
  }

  return a1;
}

uint64_t statistics::StatisticsBucket::formatText(statistics::StatisticsBucket *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 94);
  if (v5)
  {
    PB::TextFormatter::format(a2, "bucketEndTime", *(this + 1));
    v5 = *(this + 94);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "bucketStartTime", *(this + 2));
  v5 = *(this + 94);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "dataEndTime", *(this + 3));
  v5 = *(this + 94);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "dataStartTime", *(this + 4));
  if ((*(this + 94) & 0x40) != 0)
  {
LABEL_6:
    v6 = *(this + 184);
    PB::TextFormatter::format(a2, "inclusiveEndTimeBoundary");
  }

LABEL_7:
  v7 = *(this + 5);
  v8 = *(this + 6);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "maskedIntervals");
  }

  v10 = *(this + 94);
  if ((v10 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "mergeGranularity", *(this + 8));
    v10 = *(this + 94);
  }

  if ((v10 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "mergePoint", *(this + 9));
  }

  v11 = *(this + 10);
  v12 = *(this + 11);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "remainders");
  }

  v14 = *(this + 94);
  if ((v14 & 0x80) != 0)
  {
    v26 = *(this + 185);
    PB::TextFormatter::format(a2, "shouldCombineSources");
    v14 = *(this + 94);
    if ((v14 & 0x100) == 0)
    {
LABEL_17:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*(this + 94) & 0x100) == 0)
  {
    goto LABEL_17;
  }

  v27 = *(this + 186);
  PB::TextFormatter::format(a2, "shouldComputePerBundleIDStatistics");
  if ((*(this + 94) & 0x200) != 0)
  {
LABEL_18:
    v15 = *(this + 187);
    PB::TextFormatter::format(a2, "shouldComputePerSourceIDStatistics");
  }

LABEL_19:
  v16 = *(this + 13);
  if (v16)
  {
    (*(*v16 + 32))(v16, a2, "statistics");
  }

  v17 = *(this + 14);
  v18 = *(this + 15);
  while (v17 != v18)
  {
    v19 = *v17++;
    (*(*v19 + 32))(v19, a2, "statisticsByBundleIdentifier");
  }

  v20 = *(this + 17);
  v21 = *(this + 18);
  while (v20 != v21)
  {
    v22 = *v20++;
    (*(*v22 + 32))(v22, a2, "statisticsByCanonicalSourceID");
  }

  v23 = *(this + 20);
  v24 = *(this + 21);
  while (v23 != v24)
  {
    v25 = *v23++;
    (*(*v25 + 32))(v25, a2, "statisticsBySourceID");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t statistics::StatisticsBucket::readFrom(statistics::StatisticsBucket *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 20)
    {
      if (v22 > 40)
      {
        if (v22 <= 42)
        {
          if (v22 != 41)
          {
            PB::PtrVector<statistics::Statistics>::emplace_back<>();
          }

          PB::PtrVector<statistics::Statistics>::emplace_back<>();
        }

        if (v22 == 43)
        {
          PB::PtrVector<statistics::Statistics>::emplace_back<>();
        }

        if (v22 == 50)
        {
          PB::PtrVector<statistics::Interval>::emplace_back<>();
        }
      }

      else if (v22 > 29)
      {
        if (v22 == 30)
        {
          PB::PtrVector<statistics::RawQuantitySample>::emplace_back<>();
        }

        if (v22 == 40)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 21)
        {
          *(this + 94) |= 4u;
          v35 = *(a2 + 1);
          if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(a2 + 2))
          {
LABEL_68:
            *(a2 + 24) = 1;
            goto LABEL_83;
          }

          *(this + 3) = *(*a2 + v35);
          goto LABEL_82;
        }

        if (v22 == 22)
        {
          *(this + 94) |= 0x20u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_68;
          }

          *(this + 9) = *(*a2 + v24);
          goto LABEL_82;
        }
      }
    }

    else if (v22 > 10)
    {
      if (v22 <= 12)
      {
        if (v22 == 11)
        {
          *(this + 94) |= 0x200u;
          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2))
          {
            v39 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v37 = v36 + 1;
            v38 = *(*a2 + v36);
            *(a2 + 1) = v37;
            v39 = v38 != 0;
          }

          *(this + 187) = v39;
        }

        else
        {
          *(this + 94) |= 0x100u;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2))
          {
            v28 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v26 = v25 + 1;
            v27 = *(*a2 + v25);
            *(a2 + 1) = v26;
            v28 = v27 != 0;
          }

          *(this + 186) = v28;
        }

        goto LABEL_83;
      }

      if (v22 == 13)
      {
        *(this + 94) |= 0x40u;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2))
        {
          v44 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v42 = v41 + 1;
          v43 = *(*a2 + v41);
          *(a2 + 1) = v42;
          v44 = v43 != 0;
        }

        *(this + 184) = v44;
        goto LABEL_83;
      }

      if (v22 == 20)
      {
        *(this + 94) |= 8u;
        v33 = *(a2 + 1);
        if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(a2 + 2))
        {
          goto LABEL_68;
        }

        *(this + 4) = *(*a2 + v33);
        goto LABEL_82;
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 94) |= 0x10u;
        v40 = *(a2 + 1);
        if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
        {
          goto LABEL_68;
        }

        *(this + 8) = *(*a2 + v40);
        goto LABEL_82;
      }

      if (v22 == 10)
      {
        *(this + 94) |= 0x80u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2))
        {
          v32 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v30 = v29 + 1;
          v31 = *(*a2 + v29);
          *(a2 + 1) = v30;
          v32 = v31 != 0;
        }

        *(this + 185) = v32;
        goto LABEL_83;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 94) |= 2u;
        v34 = *(a2 + 1);
        if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(a2 + 2))
        {
          goto LABEL_68;
        }

        *(this + 2) = *(*a2 + v34);
        goto LABEL_82;
      }

      if (v22 == 2)
      {
        *(this + 94) |= 1u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_68;
        }

        *(this + 1) = *(*a2 + v23);
LABEL_82:
        *(a2 + 1) += 8;
        goto LABEL_83;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v46 = 0;
      return v46 & 1;
    }

LABEL_83:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v46 = v4 ^ 1;
  return v46 & 1;
}

uint64_t statistics::StatisticsBucket::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 188);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 188);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 188);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 188);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v21 = *(v3 + 185);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v22 = *(v3 + 187);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v23 = *(v3 + 186);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v24 = *(v3 + 184);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 188);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 188) & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 188);
  if ((v4 & 4) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v4 & 0x20) != 0)
  {
LABEL_11:
    this = PB::Writer::write(a2, *(v3 + 72));
  }

LABEL_12:
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 104);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 160);
  v10 = *(v3 + 168);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(v3 + 112);
  v13 = *(v3 + 120);
  while (v12 != v13)
  {
    v14 = *v12++;
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = *(v3 + 136);
  v16 = *(v3 + 144);
  while (v15 != v16)
  {
    v17 = *v15++;
    this = PB::Writer::writeSubmessage(a2, v17);
  }

  v19 = *(v3 + 40);
  v18 = *(v3 + 48);
  while (v19 != v18)
  {
    v20 = *v19++;
    this = PB::Writer::writeSubmessage(a2, v20);
  }

  return this;
}

BOOL statistics::StatisticsBucket::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 188);
  v5 = *(a2 + 188);
  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  if (v4)
  {
    if ((v5 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 185) != *(a2 + 185))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 188) & 0x200) != 0)
  {
    if ((*(a2 + 188) & 0x200) == 0 || *(a1 + 187) != *(a2 + 187))
    {
      return 0;
    }
  }

  else if ((*(a2 + 188) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 188) & 0x100) != 0)
  {
    if ((*(a2 + 188) & 0x100) == 0 || *(a1 + 186) != *(a2 + 186))
    {
      return 0;
    }
  }

  else if ((*(a2 + 188) & 0x100) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if (!PB::PtrVector<statistics::RawQuantitySample>::operator==((a1 + 80), a2 + 80))
  {
    return 0;
  }

  v6 = *(a1 + 104);
  v7 = *(a2 + 104);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_58;
    }

    return 0;
  }

  if (!v7 || (statistics::Statistics::operator==(v6, v7) & 1) == 0 && *(a1 + 104) | *(a2 + 104))
  {
    return 0;
  }

LABEL_58:
  if (!PB::PtrVector<statistics::Statistics>::operator==((a1 + 160), *(a2 + 160), *(a2 + 168)) || !PB::PtrVector<statistics::Statistics>::operator==((a1 + 112), *(a2 + 112), *(a2 + 120)) || !PB::PtrVector<statistics::Statistics>::operator==((a1 + 136), *(a2 + 136), *(a2 + 144)))
  {
    return 0;
  }

  return PB::PtrVector<statistics::Interval>::operator==((a1 + 40), a2 + 40);
}

BOOL PB::PtrVector<statistics::RawQuantitySample>::operator==(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = statistics::RawQuantitySample::operator==(v5, v7);
  }

  while (result && v3 != v2);
  return result;
}

uint64_t PB::PtrVector<statistics::Statistics>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a3 - a2)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v5 = a2;
  do
  {
    result = statistics::Statistics::operator==(*v4, *v5);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 != a1[1]);
  return result;
}

unint64_t statistics::StatisticsBucket::hash_value(statistics::StatisticsBucket *this)
{
  v2 = *(this + 94);
  if ((v2 & 2) == 0)
  {
    v41 = 0.0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v40 = 0.0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v39 = 0.0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v8 = *(this + 2);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  v41 = v8;
  if ((v2 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v40 = v3;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v4 = *(this + 8);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v39 = v4;
  if ((v2 & 0x80) != 0)
  {
LABEL_9:
    v38 = *(this + 185);
    if ((*(this + 94) & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v38 = 0;
  if ((*(this + 94) & 0x200) != 0)
  {
LABEL_10:
    v37 = *(this + 187);
    if ((*(this + 94) & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v37 = 0;
  if ((*(this + 94) & 0x100) != 0)
  {
LABEL_11:
    v36 = *(this + 186);
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v36 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_12:
    v35 = *(this + 184);
    if ((v2 & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_32:
    v34 = 0.0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_31:
  v35 = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v34 = v5;
  if ((v2 & 4) != 0)
  {
LABEL_16:
    if (*(this + 3) == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(this + 3);
    }

    if ((v2 & 0x20) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_20:
    if (*(this + 9) == 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(this + 9);
    }

    goto LABEL_35;
  }

LABEL_34:
  v7 = 0;
LABEL_35:
  v9 = *(this + 10);
  v10 = *(this + 11);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v9++;
      v11 ^= statistics::RawQuantitySample::hash_value(v12);
    }

    while (v9 != v10);
  }

  v13 = *(this + 13);
  if (v13)
  {
    v14 = statistics::Statistics::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 20);
  v16 = *(this + 21);
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *v15++;
      v17 ^= statistics::Statistics::hash_value(v18);
    }

    while (v15 != v16);
  }

  v19 = *(this + 14);
  v20 = *(this + 15);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = *v19++;
      v21 ^= statistics::Statistics::hash_value(v22);
    }

    while (v19 != v20);
  }

  v23 = *(this + 17);
  v24 = *(this + 18);
  if (v23 == v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = *v23++;
      v25 ^= statistics::Statistics::hash_value(v26);
    }

    while (v23 != v24);
  }

  v27 = *(this + 5);
  v28 = *(this + 6);
  if (v27 != v28)
  {
    v29 = 0;
    while (1)
    {
      v30 = *v27;
      if ((*(*v27 + 24) & 2) != 0)
      {
        v31 = *(v30 + 16);
        if (v31 == 0.0)
        {
          v31 = 0.0;
        }

        if (*(*v27 + 24))
        {
LABEL_66:
          v32 = *(v30 + 8);
          if (v32 == 0.0)
          {
            v32 = 0.0;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v31 = 0.0;
        if (*(*v27 + 24))
        {
          goto LABEL_66;
        }
      }

      v32 = 0.0;
LABEL_68:
      v29 ^= *&v31 ^ *&v32;
      if (++v27 == v28)
      {
        return *&v40 ^ *&v41 ^ *&v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ *&v34 ^ v6 ^ v7 ^ v11 ^ v14 ^ v17 ^ v21 ^ v25 ^ v29;
      }
    }
  }

  v29 = 0;
  return *&v40 ^ *&v41 ^ *&v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ *&v34 ^ v6 ^ v7 ^ v11 ^ v14 ^ v17 ^ v21 ^ v25 ^ v29;
}

uint64_t statistics::StatisticsBucket::makeStatistics(uint64_t this)
{
  if (!*(this + 104))
  {
    operator new();
  }

  return this;
}

uint64_t HDCodableTinkerPairingResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(HDCodableSharingSetupMetadata);
        objc_storeStrong((a1 + 24), v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSharingSetupMetadataReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(HDCodableError);
    objc_storeStrong((a1 + 8), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_228A5F5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A60FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A61410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A61D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE62A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEEclES8_(uint64_t a1, uint64_t a2)
{
  v4 = [**(a1 + 8) transaction];
  v5 = [v4 protectedDatabase];
  v6 = **(a1 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionE_block_invoke;
  v10[3] = &__block_descriptor_48_e26_B24__0__HDSQLiteRow__8__16l;
  v7 = *(a1 + 24);
  v10[4] = a2;
  v10[5] = v7;
  v8 = [v5 executeUncachedSQL:@"SELECT data_id FROM data_series ds INNER JOIN samples s USING (data_id) WHERE data_type = 102" error:v6 bindingHandler:0 enumerationHandler:v10];

  return v8;
}

uint64_t _ZNKSt3__110__function6__funcIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0NS_9allocatorIS2_EEFbRN6health9DataStore16WriteTransactionEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionE_block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = HDSQLiteColumnAsInt64();
  v8.objectType = 0;
  v8.identifier = v2;
  v3 = *(a1 + 32);
  v11 = *(v3 + 32);
  v12 = v3;
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v11, &v8, 0, &v9);
  if (v10 == 1)
  {
    v9.objectType = -1;
    v9.identifier = v2;
    health::DataStore::WriteTransaction::renameObjectWithIdentifier(*(a1 + 32), &v8, &v9);
    v4 = *(a1 + 40);
    v5 = *v4;
    v13[0] = &unk_283BE63E8;
    v13[1] = v4;
    v13[2] = &v9;
    v13[3] = v13;
    health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(v5, &v8, 1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6328;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = a2;
  v11 = a2;
  result = health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::loadHistoryRoot(v5, *(a1 + 8), **(a1 + 16));
  if (result)
  {
    v4 = *(*(a1 + 24) + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v4 + 48))(v4, v5);
  }

  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::_updateHistoryRoot(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 96);
  if (v2 == 56)
  {
    v4 = *(a1 + 56);
    v5 = v3 + 80;

    health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v5, v4, 0x38uLL, a1);
  }

  else
  {
    health::DataStore::WriteTransaction::storeObjectWithIdentifier<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v3, a1, (a1 + 72));
    health::DataStore::ReadTransaction::_pointerForObject(*(a1 + 96), (a1 + 72), v8);
    v7 = health::Optional<health::BlockPointer>::get(v8);
    result = *v7;
    *(a1 + 56) = *v7;
  }

  return result;
}

std::runtime_error *_ZN6health15not_found_errorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_283BE63B0;
  return result;
}

uint64_t health::Optional<health::BlockPointer>::get(uint64_t result)
{
  if ((*(result + 16) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to get the value from an invalid optional.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

void health::_HDAssertImplementation<std::out_of_range>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a1;
  memset(v40, 0, sizeof(v40));
  v12 = backtrace(v40, 20);
  v13 = backtrace_symbols(v40, v12);
  std::ostringstream::basic_ostringstream[abi:ne200100](v39);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Critical Error: ", 16);
  v15 = *(a6 + 23);
  if (v15 >= 0)
  {
    v16 = a6;
  }

  else
  {
    v16 = *a6;
  }

  if (v15 >= 0)
  {
    v17 = *(a6 + 23);
  }

  else
  {
    v17 = *(a6 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Failed assertion '", 18);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "' in '", 6);
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "' at ", 5);
  v30 = *(a4 + 23);
  if (v30 >= 0)
  {
    v31 = a4;
  }

  else
  {
    v31 = *a4;
  }

  if (v30 >= 0)
  {
    v32 = *(a4 + 23);
  }

  else
  {
    v32 = *(a4 + 8);
  }

  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ":", 1);
  v35 = MEMORY[0x22AAC83A0](v34, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\n", 1);
  if (!v12)
  {
    free(v13);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v39, &v38);
    std::logic_error::logic_error(exception, &v38);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v13);
  health::HDDemangleBacktraceLine();
}

void sub_228A625B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void health::FormatString<>(std::string *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<>(a1, a2, 0);
}

void sub_228A62838(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_228A62998(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](v1);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AAC8500](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_228A62AFC(_Unwind_Exception *a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AAC8350](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x22AAC8360](v13);
  return a1;
}

void sub_228A62D6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x22AAC8360](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x228A62D4CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_228A62FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void health::FormatImplementation<>(std::string *a1, std::string *this, std::string::size_type __n)
{
  v17 = a1;
  v5 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v7 = 0;
    v8 = 0;
    v9 = a1;
    do
    {
      if (v5 == 123)
      {
        v10 = v9->__r_.__value_.__s.__data_[1];
        if (v10 != 123)
        {
          if (v10 == 42)
          {
            v17 = &v9->__r_.__value_.__s.__data_[2];
            v11 = v9->__r_.__value_.__s.__data_[2];
            if ((v11 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v12 = 0;
              v13 = &v9->__r_.__value_.__s.__data_[3];
              do
              {
                v17 = v13;
                v12 = (v11 & 0xF) + 10 * v12;
                v14 = *v13++;
                LOBYTE(v11) = v14;
              }

              while ((v14 - 58) >= 0xFFFFFFF6);
              v17 = v13;
              if (*(v13 - 1) == 125)
              {
                health::FormatterParameters<0ul>::formatOptionsAtIndex<>();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(&v16, &v17);
          health::FormatterParameters<0ul>::formatParameterAtIndex<health::FormatterParameters<0ul>>();
        }

        v8 = 1;
        v9 = (v9 + 1);
      }

      v17 = &v9->__r_.__value_.__s.__data_[1];
      v5 = v9->__r_.__value_.__s.__data_[1];
      --v7;
      v9 = (v9 + 1);
    }

    while (v5);
    std::string::resize(this, __n - v7, 0);
    if (v7)
    {

      health::CopyFormatSectionToResult(a1, this, __n, -v7, v8 & 1);
    }
  }

  else
  {

    std::string::resize(this, __n, 0);
  }
}

void health::FormatterParameters<0ul>::formatOptionsAtIndex<>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<0ul>::formatParameterAtIndex<health::FormatterParameters<0ul>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v6 = *(a1 + 16);
  bzero(v15, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v6 + 24), *a1, *(a1 + 8), v15);
  result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, 0, a1, v15, a2, a3);
  if (result >= 2)
  {
    v8 = *(a1 + 16);
    bzero(__src, 0x223uLL);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v8 + 24), *a1, *(a1 + 8), __src);
    memcpy(__dst, __src, sizeof(__dst));
    v9 = *(*(a1 + 16) + 24);
    v10 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v9, 547);
    v12 = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(v9, v10, v11, __dst);
    LOWORD(__src[68]) = 1;
    __src[2] = v10;
    __src[3] = v12;
    BYTE2(__src[68]) = 0;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a1, *(a1 + 8), __src);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(a1, a2, a3);
  }

  return result;
}

double health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (*(a3 + 544))
  {
    v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a3, a4);
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>(a1, (a2 + 1), a3, v12, a4, a5, v15);
    if ((BYTE8(v16) & 1) != 0 || *(a3 + 544) - 1 <= v12)
    {
      v14 = v15[1];
      *a6 = v15[0];
      a6[1] = v14;
      result = *&v16;
      a6[2] = v16;
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>(a1, (a2 + 1), a3, (v12 + 1), a4, a5, a6);
    }
  }

  else
  {
    result = 0.0;
    *(a6 + 25) = 0u;
    *a6 = 0u;
    a6[1] = 0u;
  }

  return result;
}

void health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKeyInChildAtIndex<health::DataStore::ObjectIdentifier>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a3 + 544) <= a4)
  {
    v12 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v23, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v22, "_valueForKeyInChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v20);
    health::_HDAssertImplementation<health::btree_access_error>(v12, v23, v22, v21, 158, &v20);
  }

  if (*(a3 + 546) == 1)
  {
    v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(a1 + 16);
    bzero(v17, 0x222uLL);
    v18 = 0u;
    v19 = 0u;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v16 + 24), v14, v15, v17);
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>(v17, a5, a6, a7);
  }

  else
  {
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(a1, a2, a3, a4, v17);
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>(a1, a2, v17, a5, a6);
  }
}

void sub_228A636EC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

void health::_HDAssertImplementation<health::btree_access_error>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a1;
  memset(v40, 0, sizeof(v40));
  v12 = backtrace(v40, 20);
  v13 = backtrace_symbols(v40, v12);
  std::ostringstream::basic_ostringstream[abi:ne200100](v39);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Critical Error: ", 16);
  v15 = *(a6 + 23);
  if (v15 >= 0)
  {
    v16 = a6;
  }

  else
  {
    v16 = *a6;
  }

  if (v15 >= 0)
  {
    v17 = *(a6 + 23);
  }

  else
  {
    v17 = *(a6 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Failed assertion '", 18);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "' in '", 6);
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "' at ", 5);
  v30 = *(a4 + 23);
  if (v30 >= 0)
  {
    v31 = a4;
  }

  else
  {
    v31 = *a4;
  }

  if (v30 >= 0)
  {
    v32 = *(a4 + 23);
  }

  else
  {
    v32 = *(a4 + 8);
  }

  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ":", 1);
  v35 = MEMORY[0x22AAC83A0](v34, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\n", 1);
  if (!v12)
  {
    free(v13);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v39, &v38);
    std::runtime_error::runtime_error(exception, &v38);
    exception->__vftable = &unk_283BE6650;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v13);
  health::HDDemangleBacktraceLine();
}

void sub_228A639D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);

  _Unwind_Resume(a1);
}

void health::btree_access_error::~btree_access_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

double health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X2>, void *a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  if (!*(a1 + 544))
  {
    goto LABEL_16;
  }

  v7 = health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::indexForKey(a1, a2);
  v9 = HIDWORD(v7);
  if (HIDWORD(v7))
  {
    if (a3 == 2)
    {
      if (v9 == 2)
      {
        v13 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v7);
        v8 = *v13;
        v14 = v13[1];
        *a4 = *v13;
        *(a4 + 16) = v14;
        *(a4 + 32) = 2;
        goto LABEL_4;
      }
    }

    else
    {
      if (a3 == 1)
      {
        if (v9 == 1)
        {
          v12 = v7;
        }

        else
        {
          if (v7 >= *(a1 + 544) - 1)
          {
            goto LABEL_16;
          }

          v12 = v7 + 1;
        }

        v15 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v12);
        v8 = *v15;
        v16 = v15[1];
        *a4 = *v15;
        *(a4 + 16) = v16;
        *(a4 + 32) = 1;
        goto LABEL_4;
      }

      if (a3)
      {
        return *&v8;
      }
    }

LABEL_16:
    *&v8 = 0;
    *(a4 + 25) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return *&v8;
  }

  v10 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v7);
  v8 = *v10;
  v11 = v10[1];
  *a4 = *v10;
  *(a4 + 16) = v11;
  *(a4 + 32) = 0;
LABEL_4:
  *(a4 + 40) = 1;
  return *&v8;
}

void *health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  if (*(a3 + 544) <= a4)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v34, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v33, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v31);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v34, v33, v32, 137, &v31);
  }

  if (a2 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v30, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v29, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v28, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v30, v29, v28, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = *(a1 + 16);
  bzero(a5, 0x223uLL);
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v14 + 24), v12, v13, a5);
  if (*(a5 + 272))
  {
    result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
    if (*a5 <= *result && (*a5 < *result || a5[1] < result[1]))
    {
      v16 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v26, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v25, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v24, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v23);
      health::_HDAssertImplementation<health::btree_access_error>(v16, v26, v25, v24, 144, &v23);
    }

    if (*(a3 + 544) - 1 > a4)
    {
      v17 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, *(a5 + 272) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4 + 1);
      if (*v17 >= *result && (*v17 > *result || v17[1] >= result[1]))
      {
        v18 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v22, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v21, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v19);
        health::_HDAssertImplementation<health::btree_access_error>(v18, v22, v21, v20, 146, &v19);
      }
    }
  }

  return result;
}

void sub_228A64060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __n128 *a5, __n128 *a6)
{
  if (*(a4 + 544))
  {
    v10 = a2 + 1;
    if (*(a4 + 546) == 1)
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithLeafChildren(a1, v10, a3, a4, a5, a6);
    }

    else
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithInteriorChildren(a1, v10, a3, a4, a5, a6);
    }
  }

  else
  {
    memset(&v18[2], 0, 512);
    v12 = *(a1 + 16);
    v20 = *v12;
    v21 = *v12;
    v19 = 1;
    v13 = *a6;
    v18[0] = *a5;
    v18[1] = v13;
    v14 = *(v12 + 3);
    v15 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v14, 578);
    v17 = v16;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(v14, v15, v16, v18);
    *a4 = *a5;
    *(a4 + 16) = v15;
    *(a4 + 24) = v17;
    *(a4 + 544) = 1;
    *(a4 + 546) = 1;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithLeafChildren(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __n128 *a5, __n128 *a6)
{
  v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a4, a5);
  v57 = *(health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 16);
  v13 = *(a1 + 16);
  bzero(v53, 0x222uLL);
  v55 = 0u;
  v56 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v13 + 24), v57, *(&v57 + 1), v53);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, (a2 + 1), &v57, v53, a5, a6);
  v15 = v14;
  if (v14 > 1)
  {
    v17 = *(a4 + 544);
    if (v17 == 17)
    {
      if (v14 == 4)
      {
        v18 = 4;
      }

      else
      {
        v18 = 2;
      }

      if (v14 == 3)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      if (v12)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      if (v12 == 16)
      {
        return v18;
      }

      else
      {
        return v20;
      }
    }

    else if (v14 == 4 && v17 - 1 == v12)
    {
      memset(&v49[2], 0, 512);
      v50 = 1;
      v21 = *a6;
      v49[0] = *a5;
      v49[1] = v21;
      v51 = v57;
      v52 = v56;
      v22 = *(*(a1 + 16) + 24);
      v23 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v22, 578);
      v25 = v24;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(v22, v23, v24, v49);
      *&v56 = v23;
      *(&v56 + 1) = v25;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v57, *(&v57 + 1), v53);
      v26 = *(a1 + 16);
      v27 = v52;
      if (v52 != *v26)
      {
        bzero(&v44, 0x222uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v26 + 24), v27, *(&v27 + 1), &v44);
        *&v47 = v23;
        *(&v47 + 1) = v25;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v52, *(&v52 + 1), &v44);
      }

      v28 = *(a4 + 544);
      v29 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v28);
      *(v29 + 16) = v23;
      *(v29 + 24) = v25;
      *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v28) = *a5;
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      return 0;
    }

    else
    {
      v41 = a3;
      v43 = v57;
      bzero(v49, 0x222uLL);
      v51 = v57;
      v52 = v56;
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(v49, 0, v53, v54 - 8, 8);
      v54 -= 8;
      v50 = 8;
      v30 = *(*(a1 + 16) + 24);
      v31 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v30, 578);
      v33 = v32;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(v30, v31, v32, v49);
      *&v42 = v31;
      *(&v42 + 1) = v33;
      v56 = v42;
      v34 = *(a1 + 16);
      v35 = v52;
      if (v52 != *v34)
      {
        v40 = *(&v52 + 1);
        bzero(&v44, 0x222uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(v34 + 24), v35, v40, &v44);
        v47 = v42;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v52, *(&v52 + 1), &v44);
      }

      v44 = v49[0];
      v45 = v31;
      v46 = v33;
      health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v44, v12 + 1);
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v43, *(&v43 + 1), v53);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *v41, *(v41 + 8), a4);
      if (a5->n128_u64[0] > *&v49[0] || a5->n128_u64[0] >= *&v49[0] && a5->n128_u64[1] > *(&v49[0] + 1))
      {
        v36 = (a2 + 1);
        v37 = &v42;
        v38 = v49;
      }

      else
      {
        v36 = (a2 + 1);
        v37 = &v43;
        v38 = v53;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, v36, v37, v38, a5, a6);
    }
  }

  else
  {
    v16 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12);
    if (a5->n128_u64[0] < *v16 || a5->n128_u64[0] <= *v16 && a5->n128_u64[1] < v16[1])
    {
      *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) = *a5;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKeyWithInteriorChildren(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(a4, a5);
  v13 = v12;
  v36 = *(health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 16);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_interiorChildAtIndex(a1, a2, a4, v12, v33);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, (a2 + 1), &v36, v33, a5, a6);
  if (v14 > 1)
  {
    if (*(a4 + 544) == 17)
    {
      return 2;
    }

    else
    {
      v32 = v36;
      bzero(&v29, 0x223uLL);
      v31 = v35;
      health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(&v29, 0, v33, v34 - 8, 8);
      v34 -= 8;
      v30 = 8;
      v17 = *(*(a1 + 16) + 24);
      v18 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v17, 547);
      v20 = v19;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(v17, v18, v19, &v29);
      v28[0] = v18;
      v28[1] = v20;
      v25 = v29;
      v26 = v18;
      v27 = v20;
      health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v25, v13 + 1);
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v32, *(&v32 + 1), v33);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      if (*a5 > v29.n128_i64[0] || *a5 >= v29.n128_i64[0] && a5[1] > v29.n128_u64[1])
      {
        v21 = (a2 + 1);
        v22 = v28;
        v23 = &v29;
      }

      else
      {
        v21 = (a2 + 1);
        v22 = &v32;
        v23 = v33;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(a1, v21, v22, v23, a5, a6);
    }
  }

  else
  {
    v15 = v14;
    v16 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13);
    if (*a5 < *v16 || *a5 <= *v16 && a5[1] < v16[1])
    {
      *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13) = *a5;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_setValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, __n128 *a6)
{
  v11 = health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::indexForKey(a4, a5);
  if (HIDWORD(v11))
  {
    if (*(a4 + 544) == 17)
    {
      v13 = a5->n128_u64[0];
      if (a5->n128_u64[0] < *a4 || a5->n128_u64[0] <= *a4 && a5->n128_u64[1] < *(a4 + 8))
      {
        return 3;
      }

      else
      {
        v16 = *(a4 + 512);
        if (v13 > v16 || v13 >= v16 && a5->n128_u64[1] > *(a4 + 520))
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      if (HIDWORD(v11) == 2)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11;
      }

      v15 = *a6;
      v17[0] = *a5;
      v17[1] = v15;
      health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, v17, v14);
      ++*(a4 + 544);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      return 0;
    }
  }

  else
  {
    *(health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) + 16) = *a6;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    return 1;
  }
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 547;
  v11[0] = v12;
  v11[1] = v12;
  v11[2] = 547;
  health::SerializeValues<health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>,unsigned short,BOOL>(v11, a4, (a4 + 544), (a4 + 546));
  if (v14 <= 0x3FF)
  {
    v7 = v12;
  }

  else
  {
    v7 = v13;
  }

  health::RawBuffer::RawBuffer(v10, v7, v14);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v10);
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228A64D00(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::SerializeValues<health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>,unsigned short,BOOL>(uint64_t a1, uint64_t a2, _WORD *a3, _BYTE *a4)
{
  for (i = 0; i != 17; ++i)
  {
    v9 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, i);
    v11 = *v9;
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v11);
    v11 = v9[1];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v11);
    v11 = v9[2];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v11);
    v11 = v9[3];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v11);
  }

  LOWORD(v11) = *a3;
  health::SerializationBuffer::appendRaw<unsigned short>(a1, &v11);
  LOBYTE(v11) = *a4;
  return health::SerializationBuffer::appendRaw<unsigned char>(a1, &v11);
}

void health::not_found_error::~not_found_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_NS_9allocatorISB_EEFbSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE63E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_NS_9allocatorISB_EEFbSA_EEclESA_(uint64_t a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  v5[0] = &unk_283BE64F8;
  v5[1] = a2;
  v5[3] = v5;
  v4 = 0;
  operator new();
}

void sub_228A65070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_NS_9allocatorISB_EEFbSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_EUlRNS1_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6468;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::operator()(uint64_t a1, health::DataStore::ReadTransaction *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = a2;
  v4 = *(a1 + 8);
  health::DataStore::ReadTransaction::_pointerForObject(a2, v4, v20);
  if (v20[16] == 1)
  {
    v5 = *(a2 + 3);
    v6 = health::Optional<health::BlockPointer>::get(v20);
    v7 = *v6;
    v8 = v6[1];
    v26 = 0;
    v27 = 56;
    v21 = v25;
    v22 = 56;
    health::BlockAccessFile::ReadTransaction::retrieveBlock(v5, v7, v8, &v21);
    if (v27 <= 0x3FF)
    {
      v9 = v25;
    }

    else
    {
      v9 = v26;
    }

    v21 = v9;
    v22 = v9;
    v23 = 56;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    v13[0] = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    v13[1] = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *&v14 = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *(&v14 + 1) = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *&v15 = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v21, &v24);
    *(&v15 + 1) = v24;
    v24 = 0;
    health::DeserializationBuffer::extractRaw<long long>(&v21, &v24);
    v16 = v24;
    v10 = v26;
    v26 = 0;
    if (v10)
    {
      MEMORY[0x22AAC8570](v10, 0x1000C8077774924);
    }

    v18 = *v4;
    v17 = *health::Optional<health::BlockPointer>::get(v20);
    v11 = *(*(a1 + 16) + 24);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v11 + 48))(v11, v13);
    **(a1 + 24) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_228A653A4(_Unwind_Exception *a1)
{
  v2 = STACK[0x498];
  STACK[0x498] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZNKSt3__110__function6__funcIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_EUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_NS_9allocatorISH_EEFvSG_EE7__cloneEPNS0_6__baseISK_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE64F8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_EUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_NS_9allocatorISH_EEFvSG_EEclESG_(uint64_t a1, void *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v10[0] = &unk_283BE6578;
  v10[1] = v2;
  v10[3] = v10;
  if (a2[6])
  {
    v3 = *(a2[11] + 24);
    v8[0] = 0;
    v8[1] = 0;
    v8[2] = v3;
    v4 = a2[3];
    v7[0] = a2[2];
    v7[1] = v4;
    v7[2] = v8;
    v11[3] = v11;
    v11[0] = &unk_283BE6578;
    v11[1] = v2;
    memset(v9, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v3, v7[0], v4, v9);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV0>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>)::{lambda(double const&,_HDRawLocationDatumV0 const&)#1}>(v7, 0, v9, v11);
    std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v11);
  }

  result = std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v10);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228A6567C(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v1 - 56);
  std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](v1 - 88);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_EUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_NS_9allocatorISH_EEFvSG_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS1_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clES7_EUlRKNS1_13SampleHistoryI25LocationHistoryBehaviorV0EEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV0>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>)::{lambda(double const&,_HDRawLocationDatumV0 const&)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 408))
  {
    v6 = result;
    if (*(a3 + 410) == 1)
    {
      v7 = *(a3 + 8);
      v8 = *(a3 + 16);
      v38 = result;
      v9 = *(result + 16);
      bzero(__p, 0x222uLL);
      v41 = 0u;
      v42 = 0u;
      result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>>(*(v9 + 16), v7, v8, __p);
      if (v40)
      {
        v10 = 0;
        v11 = MEMORY[0x277CCC2A0];
        v12 = 0.0;
        while (1)
        {
          v13 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__p, v10);
          v14 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__p, v10);
          if (v10)
          {
            v15.n128_u64[0] = *v13;
            if (*v13 <= v12)
            {
              v16 = *v11;
              std::string::basic_string[abi:ne200100]<0>(v58, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v57, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v56, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v55);
              health::_HDAssertImplementation<health::btree_access_error>(v16, v58, v57, &v56, 382, &v55);
            }
          }

          v17 = *(a4 + 24);
          if (!v17)
          {
LABEL_35:
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v12 = *v13;
          result = (*(*v17 + 48))(v17, v13, v14 + 8, v15);
          if ((result & 1) == 0)
          {
            break;
          }

          if (++v10 >= v40)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v12 = 0.0;
LABEL_23:
        v27 = v42;
        v28 = MEMORY[0x277CCC2A0];
        v29 = *(&v42 + 1);
        while (1)
        {
          v30 = *(v38 + 16);
          if (v27 == *v30 && v29 == *(v30 + 8))
          {
            break;
          }

          bzero(v44, 0x222uLL);
          v46 = 0u;
          v47 = 0u;
          health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>>(*(v30 + 16), v27, v29, v44);
          if (!v45)
          {
            v31 = *v28;
            std::string::basic_string[abi:ne200100]<0>(v54, "leaf.valueCount > 0");
            std::string::basic_string[abi:ne200100]<0>(v53, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(&v52, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Empty leaf encountered during enumeration.", &v51);
            health::_HDAssertImplementation<health::btree_access_error>(v31, v54, v53, &v52, 392, &v51);
          }

          for (i = 0; i < v45; ++i)
          {
            v33 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v44, i);
            v34 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v44, i);
            if (*v33 <= v12)
            {
              v36 = *v28;
              std::string::basic_string[abi:ne200100]<0>(v50, "key > lastKey");
              std::string::basic_string[abi:ne200100]<0>(v49, "_enumerateLeaves");
              std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
              health::FormatString<>("Out of order keys during btree enumeration.", &v43);
              health::_HDAssertImplementation<health::btree_access_error>(v36, v50, v49, &v48, 396, &v43);
            }

            v37 = *(a4 + 24);
            if (!v37)
            {
              goto LABEL_35;
            }

            v12 = *v33;
            v35.n128_f64[0] = *v33;
            result = (*(*v37 + 48))(v37, v33, v34 + 8, v35);
            if ((result & 1) == 0)
            {
              return result;
            }
          }

          v29 = *(&v47 + 1);
          v27 = v47;
        }
      }
    }

    else
    {
      if (a2 >= 64)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(__p, "depth < kMaximumRecursionDepth");
        std::string::basic_string[abi:ne200100]<0>(v58, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v57, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Maximum recursion depth reached.", &v56);
        health::_HDAssertImplementation<health::btree_access_error>(v19, __p, v58, v57, 138, &v56);
      }

      v20 = *(a3 + 8);
      v21 = *(a3 + 16);
      v22 = *(result + 16);
      memset(v44, 0, 411);
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v22 + 16), v20, v21, v44);
      if (WORD4(v44[25]))
      {
        v23.n128_u64[0] = *&v44[0];
        if (*v44 < *a3)
        {
          v24 = *MEMORY[0x277CCC2A0];
          std::string::basic_string[abi:ne200100]<0>(&v55, "child.children[0].key >= node.children[index].key");
          std::string::basic_string[abi:ne200100]<0>(v54, "_interiorChildAtIndex");
          std::string::basic_string[abi:ne200100]<0>(v53, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Child node's smallest key is < parent's key", &v52);
          health::_HDAssertImplementation<health::btree_access_error>(v24, &v55, v54, v53, 144, &v52);
        }

        if (*(a3 + 408) >= 2u)
        {
          v25 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v44, WORD4(v44[25]) - 1);
          v23.n128_u64[0] = *v25;
          if (*v25 >= *(a3 + 24))
          {
            v26 = *MEMORY[0x277CCC2A0];
            std::string::basic_string[abi:ne200100]<0>(&v51, "child.children[child.childCount - 1].key < node.children[index + 1].key");
            std::string::basic_string[abi:ne200100]<0>(v50, "_interiorChildAtIndex");
            std::string::basic_string[abi:ne200100]<0>(v49, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Child node's largest key is >= parent's next key", &v48);
            health::_HDAssertImplementation<health::btree_access_error>(v26, &v51, v50, v49, 146, &v48);
          }
        }
      }

      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV0>>::_enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>)::{lambda(double const&,_HDRawLocationDatumV0 const&)#1}>(v6, (a2 + 1), v44, a4, v23);
    }
  }

  return result;
}

void sub_228A65DD8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  _Unwind_Resume(a1);
}

uint64_t health::DeserializeValue<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 17; ++i)
  {
    v5 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, i);
    v7 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a2, &v7);
    *v5 = v7;
    v7 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a2, &v7);
    v5[1] = v7;
    v7 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a2, &v7);
    v5[2] = v7;
  }

  LOWORD(v7) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(a2, &v7);
  *(a1 + 408) = v7;
  LOBYTE(v7) = 0;
  result = health::DeserializationBuffer::extractRaw<unsigned char>(a2, &v7);
  *(a1 + 410) = v7 != 0;
  return result;
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 578;
  health::RawBuffer::RawBuffer(v13, v15, 578);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v13);
  v8 = 0;
  v9 = v15;
  if (v17 > 0x3FF)
  {
    v9 = v16;
  }

  v13[0] = v9;
  v13[1] = v9;
  v13[2] = 578;
  do
  {
    v10 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a4, v8);
    v14 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v13, &v14);
    *v10 = v14;
    v14 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v13, &v14);
    *(v10 + 8) = v14;
    v14 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v13, &v14);
    *(v10 + 16) = v14;
    LODWORD(v14) = 0;
    health::DeserializationBuffer::extractRaw<int>(v13, &v14);
    *(v10 + 24) = v14;
    LODWORD(v14) = 0;
    health::DeserializationBuffer::extractRaw<int>(v13, &v14);
    *(v10 + 28) = v14;
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v14) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(v13, &v14);
  *(a4 + 544) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 552) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 560) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 568) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 576) = v14;
  result = v16;
  v16 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228A662D0(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV0,health::BlockPointer,17>::ValueEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 50, &__p);
  }

  return a1 + 32 * a2;
}

{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 32 * a2;
}

void sub_228A663EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_228A66538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_ENKUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESG_EUldRK21_HDRawLocationDatumV0E_NS_9allocatorISL_EEFbRKdSK_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6578;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_ENKUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESG_EUldRK21_HDRawLocationDatumV0E_NS_9allocatorISL_EEFbRKdSK_EEclESP_SK_(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v8 = *a2;
  v4 = *a3;
  v5 = *(a3 + 2);
  v6 = 3212836864;
  v7 = 0;
  health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::insertSample(*(a1 + 8), &v8, &v4);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS4_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clESA_ENKUlRKNS4_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESG_EUldRK21_HDRawLocationDatumV0E_NS_9allocatorISL_EEFbRKdSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZZ69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError__EUb_ENK3__0clERN6health9DataStore16WriteTransactionEEUb_ENKUlRNS1_20MutableSampleHistoryI25LocationHistoryBehaviorV1EEE_clES7_ENKUlRKNS1_13SampleHistoryI25LocationHistoryBehaviorV0EEE_clESD_EUldRK21_HDRawLocationDatumV0E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  if (*(a4 + 408))
  {
    v11 = a2 + 1;
    if (*(a4 + 410) == 1)
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithLeafChildren(a1, v11, a3, a4, a5, a6);
    }

    else
    {

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithInteriorChildren(a1, v11, a3, a4, a5, a6);
    }
  }

  else
  {
    bzero(v23, 0x300uLL);
    v13 = *(a1 + 16);
    v24 = *v13;
    v25 = *v13;
    v19 = *a5;
    v14 = *(a6 + 16);
    v20 = *a6;
    v21 = v14;
    v23[384] = 1;
    v22 = *(a6 + 32);
    v15 = *(v13 + 3);
    v16 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v15, 782);
    v18 = v17;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v15, v16, v17, &v19);
    *a4 = *a5;
    *(a4 + 8) = v16;
    *(a4 + 16) = v18;
    *(a4 + 408) = 1;
    *(a4 + 410) = 1;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithLeafChildren(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  v12 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
  v61 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 8);
  v13 = *(a1 + 16);
  bzero(v57, 0x332uLL);
  v59 = 0u;
  v60 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v13 + 24), v61, *(&v61 + 1), v57);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, (a2 + 1), &v61, v57, a5, a6);
  v15 = v14;
  if (v14 > 1)
  {
    v18 = *(a4 + 408);
    if (v18 == 17)
    {
      if (v14 == 4)
      {
        v19 = 4;
      }

      else
      {
        v19 = 2;
      }

      if (v14 == 3)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      if (v12)
      {
        v21 = 2;
      }

      else
      {
        v21 = v20;
      }

      if (v12 == 16)
      {
        return v19;
      }

      else
      {
        return v21;
      }
    }

    else if (v14 == 4 && v18 - 1 == v12)
    {
      bzero(&v53, 0x300uLL);
      v49 = *a5;
      v22 = *a6;
      v51 = *(a6 + 16);
      v54 = 1;
      v52 = *(a6 + 32);
      v50 = v22;
      v55 = v61;
      v56 = v60;
      v23 = *(*(a1 + 16) + 24);
      v24 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v23, 782);
      v26 = v25;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v23, v24, v25, &v49);
      *&v60 = v24;
      *(&v60 + 1) = v26;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v61, *(&v61 + 1), v57);
      v27 = *(a1 + 16);
      v28 = v56;
      if (v56 != *v27)
      {
        bzero(&v45, 0x332uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v27 + 24), v28, *(&v28 + 1), &v45);
        *&v47 = v24;
        *(&v47 + 1) = v26;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v56, *(&v56 + 1), &v45);
      }

      v29 = *(a4 + 408);
      v30 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v29);
      *(v30 + 8) = v24;
      *(v30 + 16) = v26;
      v31 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v29) = v31;
      ++*(a4 + 408);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      return 0;
    }

    else
    {
      v42 = a3;
      v44 = v61;
      bzero(&v49, 0x332uLL);
      v55 = v61;
      v56 = v60;
      health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(&v49, 0, v57, v58 - 8, 8);
      v58 -= 8;
      v54 = 8;
      v32 = *(*(a1 + 16) + 24);
      v33 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v32, 782);
      v35 = v34;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v32, v33, v34, &v49);
      *&v43 = v33;
      *(&v43 + 1) = v35;
      v60 = v43;
      v36 = *(a1 + 16);
      v37 = v56;
      if (v56 != *v36)
      {
        v41 = *(&v56 + 1);
        bzero(&v45, 0x332uLL);
        v47 = 0u;
        v48 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v36 + 24), v37, v41, &v45);
        v47 = v43;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v56, *(&v56 + 1), &v45);
      }

      v45.n128_f64[0] = v49;
      v45.n128_u64[1] = v33;
      v46 = v35;
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v45, v12 + 1);
      ++*(a4 + 408);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v44, *(&v44 + 1), v57);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *v42, *(v42 + 8), a4);
      if (*a5 <= v49)
      {
        v38 = &v44;
        v39 = v57;
      }

      else
      {
        v38 = &v43;
        v39 = &v49;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, (a2 + 1), v38, v39, a5, a6);
    }
  }

  else
  {
    v16 = *a5;
    if (v16 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12))
    {
      v17 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) = v17;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKeyWithInteriorChildren(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  v12 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
  v13 = v12;
  v33 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v12) + 8);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_interiorChildAtIndex(a1, a2, a4, v12, v30);
  v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, (a2 + 1), &v33, v30, a5, a6);
  if (v14 > 1)
  {
    if (*(a4 + 408) == 17)
    {
      return 2;
    }

    else
    {
      v29 = v33;
      memset(v28, 0, 411);
      BYTE10(v28[25]) = v32;
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::copyElementsFromArrayToIndex(v28, 0, v30, v31 - 8, 8);
      v31 -= 8;
      WORD4(v28[25]) = 8;
      v18 = *(*(a1 + 16) + 24);
      v19 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v18, 411);
      v21 = v20;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v18, v19, v20, v28);
      v27[0] = v19;
      v27[1] = v21;
      v25.n128_u64[0] = *&v28[0];
      v25.n128_u64[1] = v19;
      v26 = v21;
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &v25, v13 + 1);
      ++*(a4 + 408);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v29, *(&v29 + 1), v30);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      if (*a5 <= *v28)
      {
        v22 = &v29;
        v23 = v30;
      }

      else
      {
        v22 = v27;
        v23 = v28;
      }

      return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, (a2 + 1), v22, v23, a5, a6);
    }
  }

  else
  {
    v15 = v14;
    v16 = *a5;
    if (v16 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13))
    {
      v17 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v13) = v17;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    }
  }

  return v15;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, __int128 *a6)
{
  v11 = health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::indexForKey(a4, a5);
  if (HIDWORD(v11))
  {
    if (*(a4 + 816) == 17)
    {
      if (*a5 >= *a4)
      {
        if (*a5 <= *(a4 + 768))
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      if (HIDWORD(v11) == 2)
      {
        v16 = v11 + 1;
      }

      else
      {
        v16 = v11;
      }

      v17 = *a5;
      v18 = a6[1];
      v20 = *a6;
      v21 = v18;
      v22 = *(a6 + 4);
      v19 = v17;
      health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::insertElementAtIndex(a4, &v19, v16);
      ++*(a4 + 816);
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      return 0;
    }
  }

  else
  {
    v12 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a4, v11);
    v13 = *(a6 + 4);
    v14 = a6[1];
    *(v12 + 8) = *a6;
    *(v12 + 24) = v14;
    *(v12 + 40) = v13;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    return 1;
  }
}

double *health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_interiorChildAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  if (*(a3 + 408) <= a4)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v35, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v34, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v32);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v35, v34, v33, 137, &v32);
  }

  if (a2 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v31, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v30, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v31, v30, v29, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(a1 + 16);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  *(a5 + 272) = 0u;
  *(a5 + 288) = 0u;
  *(a5 + 304) = 0u;
  *(a5 + 320) = 0u;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  *(a5 + 368) = 0u;
  *(a5 + 384) = 0u;
  *(a5 + 395) = 0u;
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v14 + 24), v12, v13, a5);
  if (*(a5 + 408))
  {
    v16 = *a5;
    result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
    if (v16 < *result)
    {
      v17 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v26, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v24);
      health::_HDAssertImplementation<health::btree_access_error>(v17, v27, v26, v25, 144, &v24);
    }

    if (*(a3 + 408) - 1 > a4)
    {
      v18 = *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, *(a5 + 408) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4 + 1);
      if (v18 >= *result)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v23, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v22, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v20);
        health::_HDAssertImplementation<health::btree_access_error>(v19, v23, v22, v21, 146, &v20);
      }
    }
  }

  return result;
}

void sub_228A67460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::copyElementsFromArrayToIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 + a2) >= 0x12)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v15, "destinationIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v14, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow destination.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v5, v15, v14, v13, 79, &__p);
  }

  if ((a5 + a4) >= 0x12)
  {
    v6 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "sourceIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v10, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow source.", &v8);
    health::_HDAssertImplementation<std::out_of_range>(v6, v11, v10, v9, 80, &v8);
  }

  return memcpy((a1 + 24 * a2), (a3 + 24 * a4), 24 * a5);
}

void sub_228A677AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV0 const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV0> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_228A67C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A67E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableNanoSyncActivationRestoreReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v29 = PBReaderReadData();
          v30 = 32;
          goto LABEL_46;
        }

        if (v13 != 2)
        {
LABEL_47:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v35 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v35 & 0x7F) << v15;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_56:
        *(a1 + 8) = v21;
      }

      else
      {
        if (v13 == 3)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v36 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v36 & 0x7F) << v22;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_52:
          *(a1 + 40) = v28;
          goto LABEL_57;
        }

        if (v13 == 4)
        {
          v29 = PBReaderReadString();
          v30 = 16;
LABEL_46:
          v31 = *(a1 + v30);
          *(a1 + v30) = v29;

          goto LABEL_57;
        }

        if (v13 != 6)
        {
          goto LABEL_47;
        }

        v14 = PBReaderReadData();
        if (v14)
        {
          [a1 addObliteratedHealthPairingUUIDs:v14];
        }
      }

LABEL_57:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDDatabaseCurrentSchemaVersion(uint64_t a1, int a2)
{
  v2 = 100003;
  if (a1 == 2)
  {
    v2 = 100030;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 19102;
  }
}

uint64_t HDCodableRoutineLocationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableRoutineLocation);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableRoutineLocationReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228A6ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);

  _Block_object_dispose((v70 - 240), 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  v72 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v72;
    operator delete(v72);
  }

  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose((v70 - 192), 8);

  _Block_object_dispose(&STACK[0x320], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__323(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  a1[3].n128_u8[4] = *(a2 + 52);
  a1[3].n128_u32[0] = v2;
  a1[4].n128_u64[0] = 0;
  a1[4].n128_u64[1] = 0;
  a1[3].n128_u64[1] = 0;
  *(a1 + 56) = *(a2 + 56);
  a1[4].n128_u64[1] = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = *(a2 + 80);
  a1[5] = result;
  return result;
}

void __Block_byref_object_dispose__324(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

double _overlappingSampleDistanceForInterval(void *a1, double *a2, BOOL *a3)
{
  v5 = a1;
  v6 = [v5 startDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v5 endDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if (a3)
  {
    *a3 = v13 < v11;
  }

  v15 = v14 / (v13 - v12);
  if (v11 < v13)
  {
    v13 = v11;
  }

  if (v8 >= v12)
  {
    v12 = v8;
  }

  v16 = v15 * fmax(v13 - v12, 0.0);

  return v16;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __cxx_global_array_dtor()
{
  v0 = &off_27D864688;
  v1 = -168;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

void sub_228A729CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A72DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id unimplementedError()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v1 = *MEMORY[0x277CCBDB0];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Unimplemented";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 errorWithDomain:v1 code:100 userInfo:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_228A752B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_228A75584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A76214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_228A768E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_228A794D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A7D134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A7EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A7F9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDPauseRingsScheduleEntityPredicateForCacheIndexRange(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v5 = [v3 predicateWithProperty:@"start_date_index" value:v4 comparisonType:4];

  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v8 = [v6 predicateWithProperty:@"end_date_index" value:v7 comparisonType:6];

  v9 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:v8];

  return v9;
}

void sub_228A85808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableSharingSetupMetadataReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadData();
            v15 = 32;
            goto LABEL_34;
          case 5:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_34;
          case 0x64:
            v16 = objc_alloc_init(HDCodableSharingSetupInvitationToken);
            [a1 addInvitationToken:v16];
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !HDCodableSharingSetupInvitationTokenReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_34;
          case 2:
            v14 = PBReaderReadData();
            v15 = 24;
            goto LABEL_34;
          case 3:
            v14 = PBReaderReadData();
            v15 = 40;
LABEL_34:
            v16 = *&a1[v15];
            *&a1[v15] = v14;
LABEL_35:

            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228A88E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableStartWorkoutAppResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(HDCodableError);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDBackgroundObservationSupportedForDataTypeCode(uint64_t a1)
{
  result = 0;
  if (a1 <= 174)
  {
    v3 = a1 - 64;
    if (v3 <= 0x27 && ((1 << v3) & 0x9001730007) != 0)
    {
      return result;
    }

    return 1;
  }

  if ((a1 - 175) >= 3 && a1 != 218 && a1 != 257)
  {
    return 1;
  }

  return result;
}

void sub_228A8A8C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void *health::TransactionalFile::ReadTransaction::ReadTransaction(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_283BE68F8;
  result[1] = a3;
  result[2] = a2;
  result[3] = a4;
  return result;
}

{
  *result = &unk_283BE68F8;
  result[1] = a3;
  result[2] = a2;
  result[3] = a4;
  return result;
}

void health::TransactionalFile::_readBufferAtOffset(uint64_t a1, unint64_t a2, health::RawBuffer *a3, uint64_t a4)
{
  std::mutex::lock((a1 + 416));
  v8 = *(a3 + 1);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 360) + a4;
    do
    {
      health::TransactionalFile::_cacheMutex_pageForOffset(a1, a2, v10, 0, &v14);
      if (v14 - v10 + v15 >= v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v14 - v10 + v15;
      }

      health::RawBuffer::slice(a3, v9, v11, v13);
      health::FilePage::slice(&v14, v10, v11, v12);
      health::RawBuffer::copyFrom(v13, v12);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v9 += v11;
      v10 += v11;
      v8 -= v11;
    }

    while (v8);
  }

  std::mutex::unlock((a1 + 416));
}

uint64_t health::TransactionalFile::ReadTransaction::size(health::TransactionalFile::ReadTransaction *this)
{
  v2 = (*(**(*(this + 2) + 328) + 48))(*(*(this + 2) + 328));
  v3 = health::WriteAheadLog::maximumCommittedSizeForTransaction((*(this + 2) + 16), *(this + 1));
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return (v4 - *(this + 3)) & ~((v4 - *(this + 3)) >> 63);
}

health::TransactionalFile::WriteTransaction *health::TransactionalFile::WriteTransaction::WriteTransaction(health::TransactionalFile::WriteTransaction *this, health::TransactionalFile *a2, uint64_t a3, uint64_t a4)
{
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 3) = a4;
  *(this + 4) = a2;
  *this = &unk_283BE6920;
  *(this + 5) = health::TransactionalFile::ReadTransaction::size(this) + a4;
  return this;
}

{
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 3) = a4;
  *(this + 4) = a2;
  *this = &unk_283BE6920;
  *(this + 5) = health::TransactionalFile::ReadTransaction::size(this) + a4;
  return this;
}

void health::TransactionalFile::_writeBufferAtOffset(health::TransactionalFile *this, unint64_t a2, const health::RawBuffer *a3, uint64_t a4)
{
  v8 = *(this + 90);
  v9 = *(a3 + 1);
  std::mutex::lock((this + 416));
  if (v9)
  {
    v10 = 0;
    v11 = v8 + a4;
    v12 = MEMORY[0x277CCC2A0];
    do
    {
      health::TransactionalFile::_cacheMutex_pageForOffset(this, a2, v11, 1, &v21);
      if (v24)
      {
        v13 = *v12;
        std::string::basic_string[abi:ne200100]<0>(v20, "!page.is_mapped()");
        std::string::basic_string[abi:ne200100]<0>(v19, "_writeBufferAtOffset");
        std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
        health::FormatString<>("Attempt to write to a mapped page.", &__p);
        health::_HDAssertImplementation<std::logic_error>(v13, v20, v19, v18, 465, &__p);
      }

      if (v21 - v11 + v22 >= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = v21 - v11 + v22;
      }

      if (v14 + v10 > *(a3 + 1))
      {
        v15 = *v12;
        std::string::basic_string[abi:ne200100]<0>(v29, "(start + length) <= _length");
        std::string::basic_string[abi:ne200100]<0>(v28, "slice");
        std::string::basic_string[abi:ne200100]<0>(v27, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDRawBuffer.h");
        health::FormatString<>("Slice extends beyond end of buffer.", &v26);
        health::_HDAssertImplementation<std::out_of_range>(v15, v29, v28, v27, 67, &v26);
      }

      health::RawBuffer::RawBuffer(v16, (*a3 + v10), v14);
      health::FilePage::slice(&v21, v11, v14, v29);
      health::RawBuffer::copyFrom(v29, v16);
      health::TransactionalFile::_cacheMutex_writePage(this, a2, &v21);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v11 += v14;
      v10 += v14;
      v9 -= v14;
    }

    while (v9);
  }

  std::mutex::unlock((this + 416));
}

void sub_228A8C548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 113) < 0)
  {
    operator delete(*(v48 - 136));
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  health::FilePage::~FilePage(&a36);
  std::mutex::unlock((v47 + 416));
  _Unwind_Resume(a1);
}

uint64_t health::TransactionalFile::TransactionalFile(uint64_t a1, __int128 *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return health::TransactionalFile::TransactionalFile(a1, a2, v3);
}

{
  v3[0] = 0;
  v3[1] = 0;
  return health::TransactionalFile::TransactionalFile(a1, a2, v3);
}

uint64_t health::TransactionalFile::TransactionalFile(uint64_t a1, __int128 *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    operator new();
  }

  *a1 = *a3;
  v5 = a3[1];
  *(a1 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = __p;
  std::string::basic_string[abi:ne200100](__p, v6 + 4);
  if (v17 < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "-wal");
  v9 = *(a1 + 8);
  v14[0] = *a1;
  v14[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  health::WriteAheadLog::WriteAheadLog(a1 + 16, __p, v14);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 304), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 320) = *(a2 + 2);
    *(a1 + 304) = v10;
  }

  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 352) = 0x1484B5446;
  *(a1 + 360) = 1024;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0u;
  v11 = getpagesize();
  *(a1 + 392) = v11;
  *(a1 + 400) = -v11;
  *(a1 + 408) = 1;
  *(a1 + 416) = 850045863;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = 16 * v11;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1065353216;
  *(a1 + 576) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 584) = 850045863;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 648) = 1018212795;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = a1 + 704;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 768) = a1 + 776;
  v15[0] = &unk_283BE6970;
  v15[1] = a1;
  v15[3] = v15;
  v18 = __p;
  __p[0] = &unk_283BE6970;
  __p[1] = a1;
  if (__p != (a1 + 552))
  {
    *(a1 + 552) = &unk_283BE6970;
    *(a1 + 560) = a1;
    v18 = 0;
    *(a1 + 576) = a1 + 552;
  }

  std::__function::__value_func<BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::~__value_func[abi:ne200100](__p);
  std::__function::__value_func<BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::~__value_func[abi:ne200100](v15);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_228A8C984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  health::WriteAheadLog::~WriteAheadLog((v21 + 16));
  v23 = *(v21 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t health::TransactionalFile::open(uint64_t *a1, int a2)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a1[41])
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v42, "!isOpen()");
    std::string::basic_string[abi:ne200100]<0>(v41, "open");
    std::string::basic_string[abi:ne200100]<0>(v40, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("File is already open.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v4, v42, v41, v40, 101, &__p);
  }

  v5 = 0;
  v6 = 0;
  v7 = a1 + 41;
  v8 = *a1;
  *&v51[0].__padding_ = 0x100000000;
  LODWORD(p_token) = 2;
  do
  {
    padding = v51[v6].__padding_;
    if (padding >= 4)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
    }

    v5 |= 1 << padding;
    ++v6;
  }

  while (v6 != 3);
  (*(*v8 + 16))(&__token);
  v10 = *&__token.__r_.__value_.__l.__data_;
  *&__token.__r_.__value_.__l.__data_ = 0uLL;
  v11 = a1[42];
  *v7 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (__token.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__token.__r_.__value_.__l.__size_);
    }

    if (!*v7)
    {
LABEL_12:
      v12 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v38, "isOpen()");
      std::string::basic_string[abi:ne200100]<0>(v37, "open");
      std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
      health::FormatString<>("File failed to open as expected.", &v35);
      health::_HDAssertImplementation<health::transaction_error>(v12, v38, v37, v36, 106, &v35);
    }
  }

  else if (!v10)
  {
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    *(a1 + 102) = 0;
  }

  if ((*(**v7 + 48))())
  {
    v13 = a1[41];
    v45 = 0;
    v46 = 36;
    *&v51[0].__padding_ = &__token;
    p_token = &__token;
    v53 = 36;
    v14 = (*(*v13 + 32))(v13, 0, &__token, 36);
    LODWORD(v43) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(v51, &v43);
    *(a1 + 88) = v43;
    LODWORD(v43) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(v51, &v43);
    *(a1 + 89) = v43;
    LODWORD(v43) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(v51, &v43);
    *(a1 + 90) = v43;
    v43 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v51, &v43);
    a1[46] = v43;
    v43 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v51, &v43);
    a1[47] = v43;
    v43 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v51, &v43);
    a1[48] = v43;
    v15 = v45;
    v45 = 0;
    if (v15)
    {
      MEMORY[0x22AAC8570](v15, 0x1000C8077774924);
    }

    if (v14 != 36)
    {
      v16 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v34, "headerBytes == _header.serializedSize()");
      std::string::basic_string[abi:ne200100]<0>(v33, "open");
      std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
      health::FormatString<>("Failed to read full file header.", &v31);
      health::_HDAssertImplementation<health::file_access_error>(v16, v34, v33, v32, 118, &v31);
    }

    if (*(a1 + 89) == 1)
    {
      if (*(a1 + 88) == 1212896326)
      {
        health::WriteAheadLog::open((a1 + 2), a1[47]);
        v17 = a1[48];
        v18 = a1[49];
        if (v17 == v18)
        {
          if (a2 == 1)
          {
LABEL_37:
            __token.__r_.__value_.__s.__data_[0] = 0;
            v28 = a1[47];
            v50[0] = &unk_283BE6A40;
            v50[3] = v50;
            v49[0] = &unk_283BE6AD0;
            v49[1] = a1;
            v49[2] = &__token;
            v49[3] = v49;
            v48[0] = &unk_283BE6B60;
            v48[1] = a1;
            v48[3] = v48;
            health::WriteAheadLog::checkpoint((a1 + 2), v28, v50, v49, v48);
            std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v48);
            std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](v49);
            std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v50);
            if (__token.__r_.__value_.__s.__data_[0])
            {
              result = 2;
            }

            else
            {
              result = 1;
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (a2 != 2 || !v17)
          {
            a1[48] = v18;
            goto LABEL_37;
          }

          health::TransactionalFile::_configurePageSize(a1, v17);
        }

        result = 3;
        goto LABEL_40;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Transactional file header has incorrect magic word.");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid header version for transactional file.");
    }

    exception->__vftable = &unk_283BE6EE8;
  }

  health::WriteAheadLog::discardLog((a1 + 2));
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(v51, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v19 = arc4random();
  v20 = 1;
  v21 = v19;
  do
  {
    v21 = v20 + 0x5851F42D4C957F2DLL * (v21 ^ (v21 >> 62));
    __token.__r_.__value_.__r.__words[v20++] = v21;
  }

  while (v20 != 312);
  v22 = __token.__r_.__value_.__r.__words[1] & 0x7FFFFFFE | (v19 & 0x80000000);
  v23 = 0xB5026F5AA96619E9;
  if ((__token.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    v23 = 0;
  }

  v24 = ((v23 ^ v47 ^ (v22 >> 1)) >> 29) & 0x5555555555555555 ^ v23 ^ v47 ^ (v22 >> 1);
  v25 = (((v24 << 17) & 0x71D67FFFEDA60000 ^ v24) << 37) & 0xFFF7EEE000000000 ^ (v24 << 17) & 0x71D67FFFEDA60000 ^ v24;
  v26 = a1[49];
  a1[47] = v25 ^ (v25 >> 43);
  a1[48] = v26;
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(a1[41], (a1 + 44));
  (*(**v7 + 16))();
  health::WriteAheadLog::open((a1 + 2), a1[47]);
  std::random_device::~random_device(v51);
  result = 0;
LABEL_40:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228A8D128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v4 - 176);
    std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](v4 - 144);
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v4 - 112);
    __cxa_begin_catch(a1);
    v6 = *(v2 + 336);
    *v3 = 0;
    v3[1] = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    health::WriteAheadLog::reset((v2 + 16));
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_228A8D330(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void health::_HDAssertImplementation<health::transaction_error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = *(a6 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = *(a4 + 8);
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_283BE6F28;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8D5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void health::_HDAssertImplementation<health::file_access_error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = *(a6 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = *(a4 + 8);
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_283BE6A18;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8D9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void health::TransactionalFile::_configurePageSize(health::TransactionalFile *this, unint64_t a2)
{
  if (a2 < 2 || (v4 = vcnt_s8(a2), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] >= 2uLL))
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v10, "pageSize > 1 && !(pageSize & (pageSize - 1))");
    std::string::basic_string[abi:ne200100]<0>(v9, "_configurePageSize");
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("pageSize must be a power of 2", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v5, v10, v9, v8, 408, &__p);
  }

  if (*(this + 49) != a2)
  {
    std::mutex::lock((this + 416));
    v6 = *(this + 60);
    *(this + 60) = 0;
    health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(this + 60, 0, 0);
    *(this + 60) = v6;
    *(this + 49) = a2;
    *(this + 50) = -a2;
    std::mutex::unlock((this + 416));
  }
}

void sub_228A8DC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void health::TransactionalFile::invalidate(health::TransactionalFile *this)
{
  __lk.__m_ = (this + 584);
  __lk.__owns_ = 1;
  std::mutex::lock((this + 584));
  v2 = pthread_self();
  v3 = std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(this + 696, v2);
  v4 = MEMORY[0x277CCC2A0];
  if ((this + 704) != v3)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v16, "_activeReadTransactions.find(threadID) == _activeReadTransactions.end()");
    std::string::basic_string[abi:ne200100]<0>(v15, "invalidate");
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Attempt to invalidate the transactional file from within a read transaction.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v5, v16, v15, v14, 183, &__p);
  }

  if ((this + 776) != std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(this + 768, v2))
  {
    v6 = *v4;
    std::string::basic_string[abi:ne200100]<0>(v12, "_activeWriteTransactions.find(threadID) == _activeWriteTransactions.end()");
    std::string::basic_string[abi:ne200100]<0>(v11, "invalidate");
    std::string::basic_string[abi:ne200100]<0>(v10, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Attempt to invalidate the transactional file from within a write transaction.", &v9);
    health::_HDAssertImplementation<std::logic_error>(v6, v12, v11, v10, 184, &v9);
  }

  if ((*(this + 344) & 1) == 0)
  {
    *(this + 344) = 1;
    while (*(this + 89) || *(this + 98))
    {
      std::condition_variable::wait((this + 648), &__lk);
    }

    v7 = *(this + 41);
    if (v7)
    {
      (*(*v7 + 64))(v7);
      v8 = *(this + 42);
      *(this + 41) = 0;
      *(this + 42) = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      health::WriteAheadLog::reset((this + 16));
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_228A8DF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::mutex::unlock(v44);
  _Unwind_Resume(a1);
}

void health::_HDAssertImplementation<std::logic_error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = *(a6 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = *(a4 + 8);
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::logic_error::logic_error(exception, &v37);
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8E26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void health::TransactionalFile::setCacheSize(health::TransactionalFile *this, unint64_t a2)
{
  std::mutex::lock((this + 416));
  if (!a2)
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v13, "maxSize > 0");
    std::string::basic_string[abi:ne200100]<0>(v12, "setMaxSize");
    std::string::basic_string[abi:ne200100]<0>(v11, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDTransactionalCache.hpp");
    health::FormatString<>("Cache max size must be greater than 0.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v4, v13, v12, v11, 30, &__p);
  }

  *(this + 60) = a2;
  v5 = *(this + 68);
  if (v5)
  {
    do
    {
      v6 = *(this + 61);
      if (v6 <= a2)
      {
        break;
      }

      v7 = *(v5 + 88);
      if (!*v5)
      {
        *(this + 61) = v6 - *(v5 + 16);
        v8 = *(v5 + 80);
        if (v8)
        {
          *(v8 + 88) = v7;
        }

        if (v7)
        {
          *(v7 + 80) = v8;
        }

        if (*(this + 68) == v5)
        {
          *(this + 68) = v7;
        }

        if (*(this + 67) == v5)
        {
          *(this + 67) = *(v5 + 80);
        }

        v14[0] = *(v5 + 24);
        v14[1] = v14;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 62, v14[0]);
        health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(v9 + 3, v5);
        if (v9[4] == v9[3])
        {
          std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(this + 62, v14[0]);
        }
      }

      v5 = v7;
    }

    while (v7);
  }

  health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(this + 60, 0, 0);

  std::mutex::unlock((this + 416));
}

void sub_228A8E5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::mutex::unlock((v32 + 416));
  _Unwind_Resume(a1);
}

uint64_t health::TransactionalFile::readTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v4 = pthread_self();
  v23[3] = v4;
  std::mutex::lock((a1 + 584));
  if (*(a1 + 344) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Read transaction attempted after file was closed.");
    exception->__vftable = &unk_283BE6F28;
  }

  if (!*(a1 + 328))
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v23, "isOpen()");
    std::string::basic_string[abi:ne200100]<0>(v22, "readTransactionWithLambda");
    std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("File has not yet been opened.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v5, v23, v22, v21, 220, &__p);
  }

  v6 = std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(a1 + 696, v4);
  if (a1 + 704 == v6)
  {
    v10 = *(a1 + 776);
    if (!v10)
    {
      goto LABEL_23;
    }

    v7 = a1 + 776;
    do
    {
      v11 = v4 != 0;
      v12 = *(v10 + 32);
      v13 = v12 != v4;
      if (v12)
      {
        v11 = v12 < v4;
      }

      v14 = !v13 || !v11;
      if (v13 && v11)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v7 = v10;
      }

      v10 = *(v10 + v15);
    }

    while (v10);
    if (v7 == a1 + 776)
    {
      goto LABEL_23;
    }

    v16 = *(v7 + 32);
    v17 = v16 != 0;
    if (v4)
    {
      v17 = v16 > v4;
    }

    if (v16 != v4 && v17)
    {
LABEL_23:
      std::mutex::unlock((a1 + 584));
      operator new();
    }

    std::mutex::unlock((a1 + 584));
    v8 = *(a2 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    v7 = v6;
    std::mutex::unlock((a1 + 584));
    v8 = *(a2 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  result = (*(*v8 + 48))(v8, *(v7 + 40));
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    health::TransactionalFile::_transactionMutex_waitForAvailableWriteTransaction(v2, v3);
  }
}

void health::TransactionalFile::_transactionMutex_waitForAvailableWriteTransaction(uint64_t a1, std::unique_lock<std::mutex> *a2)
{
  v4 = pthread_self();
  v5 = *(a1 + 728);
  v6 = *(a1 + 736);
  v7 = *(a1 + 728);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v6 - v7) << 6) - 1;
  }

  v9 = *(a1 + 752);
  v10 = *(a1 + 760);
  v11 = v10 + v9;
  if (v8 == v10 + v9)
  {
    v12 = v9 >= 0x200;
    v13 = v9 - 512;
    if (!v12)
    {
      v14 = *(a1 + 744);
      v15 = *(a1 + 720);
      if (v6 - v7 < (v14 - v15))
      {
        operator new();
      }

      if (v14 == v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v14 - v15) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v16);
    }

    *(a1 + 752) = v13;
    v18 = *v7;
    *(a1 + 728) = v7 + 8;
    std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>((a1 + 720), &v18);
    v10 = *(a1 + 760);
    v7 = *(a1 + 728);
    v9 = *(a1 + 752);
    v11 = v9 + v10;
  }

  *(*&v7[(v11 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v11 & 0x1FF)) = v4;
  v17 = v10 + 1;
  *(a1 + 760) = v17;
  if ((*(a1 + 344) & 1) == 0 && (*(a1 + 784) || v17 && *(*(*(a1 + 728) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) != v4))
  {
    do
    {
      if (!*(a1 + 784) && (!*(a1 + 760) || *(*(*(a1 + 728) + ((*(a1 + 752) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 752) & 0x1FFLL)) == v4))
      {
        break;
      }

      std::condition_variable::wait((a1 + 648), a2);
    }

    while (*(a1 + 344) != 1);
  }
}

void sub_228A8EF50(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void health::TransactionalFile::configurePageSize(health::TransactionalFile *this, unint64_t a2)
{
  if (*(this + 41))
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v6, "!isOpen()");
    std::string::basic_string[abi:ne200100]<0>(v5, "configurePageSize");
    std::string::basic_string[abi:ne200100]<0>(v4, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Page size must be configured before the file is opened.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v2, v6, v5, v4, 423, &__p);
  }

  health::TransactionalFile::_configurePageSize(this, a2);
}

void sub_228A8F0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void health::TransactionalFile::_cacheMutex_writePage(health::TransactionalFile *this, unint64_t a2, health::FilePage *a3)
{
  v12 = *a3;
  v7 = *a3;
  v3 = *(a3 + 3);
  v8 = *(a3 + 2);
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a3 + 4);
  v5 = *(a3 + 5);
  v10 = v4;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a3 + 4);
  }

  if (v4)
  {
    v6 = 48;
  }

  else
  {
    v6 = *(a3 + 1);
  }

  health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey(this + 60, a2, &v12, &v7, v6, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void health::FilePage::~FilePage(health::FilePage *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void health::TransactionalFile::_cacheMutex_pageForOffset(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = -*(a1 + 392) & a3;
  v51 = v9;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 496), v9);
  if (v10)
  {
    v11 = v10[4];
    do
    {
      if (v11 == v10[3])
      {
        goto LABEL_11;
      }

      v13 = *(v11 - 8);
      v11 -= 8;
      v12 = v13;
    }

    while (*(v13 + 8) > a2);
    health::TransactionalCache<unsigned long long,health::FilePage>::_touchCacheEntry(a1 + 480, v12);
    v14 = *(v12 + 8);
    v47 = *(v12 + 32);
    v16 = *(v12 + 48);
    v15 = *(v12 + 56);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v12 + 64);
    v17 = *(v12 + 72);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    *(v50 + 8) = v47;
    *&v50[0] = v14;
    *(&v50[1] + 1) = v16;
    *&v50[2] = v15;
    *(&v50[2] + 1) = v18;
    *&v50[3] = v17;
    BYTE8(v50[3]) = 1;
    v19 = health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v50);
    if (*&v50[0] == a2)
    {
      health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v19);
      health::TransactionalFile::_sanitizedPageForTransaction(v50 + 1, a4, a5);
      goto LABEL_41;
    }

    v9 = v51;
  }

  else
  {
LABEL_11:
    memset(v50, 0, 57);
  }

  health::WriteAheadLog::pageAtOffset((a1 + 16), a2, v9, &v47);
  v20 = v49;
  if (v48 | v49)
  {
    v44[0] = v47;
    v21 = *(&v48 + 1);
    v44[1] = v48;
    if (*(&v48 + 1))
    {
      atomic_fetch_add_explicit((*(&v48 + 1) + 8), 1uLL, memory_order_relaxed);
      v20 = v49;
    }

    v22 = *(&v49 + 1);
    v45 = v20;
    v46 = *(&v49 + 1);
    if (*(&v49 + 1))
    {
      atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
      v20 = v49;
    }

    if (v20)
    {
      v23 = 48;
    }

    else
    {
      v23 = *(&v47 + 1);
    }

    health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey((a1 + 480), a2, &v51, v44, v23, 0);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v24 = v48;
    *a5 = v47;
    *(a5 + 16) = v24;
    v48 = 0uLL;
    *(a5 + 32) = v49;
    v49 = 0uLL;
  }

  else
  {
    if (BYTE8(v50[3]) != 1)
    {
      v25 = *(a1 + 392);
      if (a4)
      {
        v26 = v51;
      }

      else
      {
        v29 = (*(**(a1 + 328) + 48))(*(a1 + 328));
        v26 = v51;
        if (v29 >= v51 + v25)
        {
          (*(**(a1 + 328) + 40))(&v42);
          v31 = v42;
          v30 = v43;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *a5 = *(v31 + 8);
          *(a5 + 16) = 0;
          *(a5 + 24) = 0;
          *(a5 + 32) = v31;
          *(a5 + 40) = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            v33 = *(a5 + 16);
            v32 = *(a5 + 24);
            v37 = *a5;
            v38 = v33;
            v39 = v32;
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v37 = *a5;
            v38 = 0;
            v39 = 0;
          }

          v34 = *(a5 + 32);
          v35 = *(a5 + 40);
          v40 = v34;
          v41 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            v34 = *(a5 + 32);
          }

          if (v34)
          {
            v36 = 48;
          }

          else
          {
            v36 = *(a5 + 8);
          }

          health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey((a1 + 480), a2, &v51, &v37, v36, 0);
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          goto LABEL_37;
        }
      }

      *a5 = v26;
      *(a5 + 8) = v25;
      operator new[]();
    }

    if (a4 == 1)
    {
      health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v50);
      health::FilePage::copy(a5, v50 + 1);
    }

    health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(v50);
    *a5 = *(v50 + 8);
    v27 = *&v50[2];
    *(a5 + 16) = *(&v50[1] + 1);
    *(a5 + 24) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *&v50[3];
    *(a5 + 32) = *(&v50[2] + 1);
    *(a5 + 40) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }
  }

LABEL_37:
  if (*(&v49 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49 + 1));
  }

  if (*(&v48 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v48 + 1));
  }

LABEL_41:
  if (*&v50[3])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v50[3]);
  }

  if (*&v50[2])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v50[2]);
  }
}

void sub_228A8F6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  health::FilePage::~FilePage(&a9);
  health::FilePage::~FilePage(v23);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  health::FilePage::~FilePage(&a23);
  health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::~Optional(v24 - 144);
  _Unwind_Resume(a1);
}

void health::TransactionalFile::_sanitizedPageForTransaction(void *a1@<X1>, int a2@<W2>, health::FilePage *a3@<X8>)
{
  v3 = a1[2];
  v4 = a1[4];
  if (v3 | v4)
  {
    if (a2 == 1 && v4)
    {
      health::FilePage::copy(a3, a1);
    }

    *a3 = *a1;
    v7 = a1[3];
    *(a3 + 2) = v3;
    *(a3 + 3) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[4];
    }

    v8 = a1[5];
    *(a3 + 4) = v4;
    *(a3 + 5) = v8;
    if (v8)
    {
      v9 = (v8 + 8);
LABEL_14:
      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = *a1;
    v5 = a1[3];
    *(a3 + 2) = 0;
    *(a3 + 3) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v6 = a1[4];
    }

    else
    {
      v6 = 0;
    }

    v10 = a1[5];
    *(a3 + 4) = v6;
    *(a3 + 5) = v10;
    if (v10)
    {
      v9 = (v10 + 8);
      goto LABEL_14;
    }
  }
}

uint64_t health::TransactionalFile::_finishCheckpoint(health::TransactionalFile *this)
{
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(this + 41), this + 352);
  v2 = *(**(this + 41) + 16);

  return v2();
}

void health::_HDAssertImplementation<std::out_of_range>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = *(a6 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = *(a4 + 8);
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::logic_error::logic_error(exception, &v37);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228A8FAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
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

uint64_t std::deque<std::__thread_id>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::__thread_id *>::~__split_buffer(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x22AAC8590);
  }

  return result;
}

void health::data_corruption_error::~data_corruption_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

void health::transaction_error::~transaction_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_228A9005C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x22AAC8570](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void std::__shared_ptr_pointer<unsigned char  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__shared_ptr_pointer<unsigned char  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::~Optional(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__function::__func<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0,std::allocator<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0>,BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6970;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0,std::allocator<health::TransactionalFile::TransactionalFile(std::string const&,std::shared_ptr<health::VirtualFilesystem>)::$_0>,BOOL ()(unsigned long long,unsigned long long const&,health::FilePage const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void health::file_access_error::~file_access_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_0,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1>,void ()(unsigned long long,health::FilePage const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6AD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1>,void ()(unsigned long long,health::FilePage const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(*(a1 + 8) + 328);
  v6 = *a3;
  v7 = a3[2];
  if (!v7)
  {
    v7 = (*(*a3[4] + 16))(a3[4]);
  }

  result = (*(*v5 + 24))(v5, v6, v7, a3[1]);
  **(a1 + 16) = 1;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_1>,void ()(unsigned long long,health::FilePage const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6B60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2>,void ()(unsigned long long)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(v1 + 328), v1 + 352);
  v2 = *(**(v1 + 328) + 16);

  return v2();
}

uint64_t std::__function::__func<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2,std::allocator<health::TransactionalFile::open(health::TransactionalFile::OpenMethod)::$_2>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = v2;
  do
  {
    v6 = a2 != 0;
    v7 = *(v3 + 32);
    v8 = v7 != a2;
    if (v7)
    {
      v6 = v7 < a2;
    }

    v9 = !v8 || !v6;
    if (v8 && v6)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v5 = v3;
    }

    v3 = *(v3 + v10);
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v11 = *(v5 + 32);
  v12 = v11 != 0;
  if (a2)
  {
    v12 = v11 > a2;
  }

  if (v11 != a2 && v12)
  {
    return v2;
  }

  return v5;
}

void health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(void *a1, int a2, unint64_t a3)
{
  if (*a1 >= a3)
  {
    v3 = *a1 - a3;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[8];
  while (v4)
  {
    while (1)
    {
      v7 = a1[1];
      if (v7 <= v3)
      {
        return;
      }

      v8 = v4;
      v4 = *(v4 + 88);
      if (*v8)
      {
        break;
      }

      v10 = v4;
LABEL_12:
      a1[1] = v7 - *(v8 + 16);
      v11 = *(v8 + 80);
      if (v11)
      {
        *(v11 + 88) = v10;
      }

      if (v10)
      {
        *(v10 + 80) = v11;
      }

      if (a1[8] == v8)
      {
        a1[8] = v10;
      }

      if (a1[7] == v8)
      {
        a1[7] = *(v8 + 80);
      }

      v13 = *(v8 + 24);
      v14 = &v13;
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 2, v13);
      health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(v12 + 3, v8);
      if (v12[4] != v12[3])
      {
        goto LABEL_21;
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(a1 + 2, v13);
      if (!v4)
      {
        return;
      }
    }

    if (a2 != 1)
    {
      v9 = a1[12];
      v10 = v4;
      if (!v9)
      {
        goto LABEL_12;
      }

      v14 = *(v8 + 8);
      if ((*(*v9 + 48))(v9, &v14, v8 + 24, v8 + 32))
      {
        v7 = a1[1];
        v10 = *(v8 + 88);
        goto LABEL_12;
      }
    }

LABEL_21:
    ;
  }
}

uint64_t *health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        return result;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 1;
      if (v3 + 1 != v4)
      {
        do
        {
          v7 = *v6;
          if (*v6 != a2)
          {
            *v6 = 0;
            result = std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](v3++, v7);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = v2[1];
      }
    }
  }

  if (v3 != v4)
  {
    while (v4 != v3)
    {
      result = std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](--v4, 0);
    }

    v2[1] = v3;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = a1[1];
    v6 = *v3;
    v7 = v3[1];
    v8 = vcnt_s8(v5);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      if (v7 >= *&v5)
      {
        v7 %= *&v5;
      }
    }

    else
    {
      v7 &= *&v5 - 1;
    }

    v9 = *(*a1 + 8 * v7);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v3);
    if (v10 == a1 + 2)
    {
      goto LABEL_19;
    }

    v11 = v10[1];
    if (v8.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
LABEL_19:
      if (v6)
      {
        v12 = v6[1];
        if (v8.u32[0] > 1uLL)
        {
          v13 = v6[1];
          if (v12 >= *&v5)
          {
            v13 = v12 % *&v5;
          }
        }

        else
        {
          v13 = v12 & (*&v5 - 1);
        }

        if (v13 == v7)
        {
          goto LABEL_23;
        }
      }

      *(*a1 + 8 * v7) = 0;
      v6 = *v3;
    }

    if (!v6)
    {
LABEL_29:
      *v10 = v6;
      *v3 = 0;
      --a1[3];
      v14 = v3 + 3;
      std::vector<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::__destroy_vector::operator()[abi:ne200100](&v14);
      operator delete(v4);
      return;
    }

    v12 = v6[1];
LABEL_23:
    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }
    }

    else
    {
      v12 &= *&v5 - 1;
    }

    if (v12 != v7)
    {
      *(*a1 + 8 * v12) = v10;
      v6 = *v3;
    }

    goto LABEL_29;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
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

__n128 std::__function::__func<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0,std::allocator<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6BE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0,std::allocator<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0>,void ()(unsigned long long)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a1[1];
  v17 = (v4 + 584);
  v18 = 1;
  std::mutex::lock((v4 + 584));
  v5 = *(v4 + 360);
  v16[0] = &unk_283BE68F8;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(v4 + 704);
  if (!v8)
  {
LABEL_20:
    operator new();
  }

  v9 = *v6;
  while (1)
  {
    while (1)
    {
      v10 = v8;
      v11 = v8[4];
      v12 = v11 != 0;
      if (v9)
      {
        v12 = v11 > v9;
      }

      if (v11 == v9 || !v12)
      {
        break;
      }

      v8 = *v10;
      if (!*v10)
      {
        goto LABEL_20;
      }
    }

    v14 = v9 != 0;
    if (v11)
    {
      v14 = v11 < v9;
    }

    if (v11 == v9 || !v14)
    {
      break;
    }

    v8 = v10[1];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  v10[5] = v16;
  std::mutex::unlock(v17);
  v18 = 0;
  v15 = *(v7 + 24);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v15 + 48))(v15, v16);
  std::unique_lock<std::mutex>::lock[abi:ne200100](&v17);
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>((v4 + 696), *v6);
  std::condition_variable::notify_all((v4 + 648));
  if (v18)
  {
    std::mutex::unlock(v17);
  }
}

uint64_t std::__function::__func<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0,std::allocator<health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::TransactionalFile::readTransactionWithLambda(std::function<void ()(health::TransactionalFile::ReadTransaction const&)>)::$_0::operator() const(unsigned long long)::{lambda(void)#2}::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::unique_lock<std::mutex>::lock[abi:ne200100](*a1);
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>((v2 + 696), **(a1 + 16));

  std::condition_variable::notify_all((v2 + 648));
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>();
}

void std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>(void *a1, unint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);

    operator delete(v4);
  }
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_1::operator()(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if ((*(v2 + 8) & 1) == 0)
  {
    std::unique_lock<std::mutex>::lock[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::__erase_unique<std::__thread_id>((v3 + 768), **(a1 + 16));

  std::condition_variable::notify_all((v3 + 648));
}

__n128 std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6C60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 360);
  v27 = *a2;
  v28 = v3;
  v29 = v4;
  v30 = v3;
  v26 = &unk_283BE6920;
  v5 = (*(**(v3 + 328) + 48))(*(v3 + 328));
  v6 = health::WriteAheadLog::maximumCommittedSizeForTransaction((v3 + 16), v27);
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v31 = ((v7 - v29) & ~((v7 - v29) >> 63)) + v4;
  v8 = *(v3 + 776);
  if (!v8)
  {
LABEL_20:
    operator new();
  }

  v9 = **(a1 + 16);
  while (1)
  {
    while (1)
    {
      v10 = v8;
      v11 = v8[4];
      v12 = v11 != 0;
      if (v9)
      {
        v12 = v11 > v9;
      }

      if (v11 == v9 || !v12)
      {
        break;
      }

      v8 = *v10;
      if (!*v10)
      {
        goto LABEL_20;
      }
    }

    v14 = v9 != 0;
    if (v11)
    {
      v14 = v11 < v9;
    }

    if (v11 == v9 || !v14)
    {
      break;
    }

    v8 = v10[1];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  v10[5] = &v26;
  v15 = *(*(*(v3 + 728) + ((*(v3 + 752) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v3 + 752) & 0x1FFLL));
  if (pthread_self() != v15)
  {
    v16 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v25, "_waitingWriterThreads.front() == std::this_thread::get_id()");
    std::string::basic_string[abi:ne200100]<0>(v24, "operator()");
    std::string::basic_string[abi:ne200100]<0>(v23, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("Improper thread at write transaction start.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v16, v25, v24, v23, 309, &__p);
  }

  v17 = vaddq_s64(*(v3 + 752), xmmword_229166A20);
  *(v3 + 752) = v17;
  if (v17.i64[0] >= 0x400uLL)
  {
    operator delete(**(v3 + 728));
    *(v3 + 728) += 8;
    *(v3 + 752) -= 512;
  }

  std::unique_lock<std::mutex>::unlock[abi:ne200100](*(a1 + 24));
  v18 = *(*(a1 + 32) + 24);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v19 = (*(*v18 + 48))(v18, &v26);
  if (v19)
  {
    std::mutex::lock((v3 + 416));
    for (i = *(v3 + 536); i; i = *(i + 80))
    {
      if (*i == 1)
      {
        health::WriteAheadLog::updatedPage((v3 + 16), *(i + 8), (i + 32));
        *i = 0;
      }
    }
  }

  else
  {
    std::mutex::lock((v3 + 416));
    health::TransactionalCache<unsigned long long,health::FilePage>::discardEntriesForTransaction((v3 + 480), v27);
  }

  std::mutex::unlock((v3 + 416));
  return v19;
}