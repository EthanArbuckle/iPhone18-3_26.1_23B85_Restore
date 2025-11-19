void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::find<char const*>(void *a1, char **a2)
{
  v4 = CStringAlnumCaseHash::operator()(a1, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (CStringAlnumCaseEqual::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
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

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = CStringAlnumCaseHash::operator()(a1, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (CStringAlnumCaseEqual::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
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

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__erase_unique<char const*>(void *a1, char **a2)
{
  result = std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::find<char const*>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
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

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void EncodingNameAliasToEncoding()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    unk_1EB6E7F38 = 0u;
    xmmword_1EB6E7F28 = 0u;
    dword_1EB6E7F48 = 1065353216;
    __cxa_atexit(std::unordered_map<char const*,Encoding,CStringAlnumCaseHash,CStringAlnumCaseEqual,std::allocator<std::pair<char const* const,Encoding>>>::~unordered_map[abi:ne200100], &xmmword_1EB6E7F28, &dword_1B0389000);

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

{
  dispatch_once(&GetEncodingMap(void)::onceToken, &__block_literal_global_61);
}

const char *LanguageName(unsigned int a1)
{
  if (a1 > 0xA0)
  {
    return "invalid_language";
  }

  else
  {
    return kLanguageInfoTable[4 * a1];
  }
}

const char *LanguageCode(unsigned int a1)
{
  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = &kLanguageInfoTable[4 * a1];
    result = v3[1];
    if (!result)
    {
      result = v3[2];
      if (!result)
      {
        v4 = v3[3];
        if (v4)
        {
          return v4;
        }

        else
        {
          return " invalid_language_code";
        }
      }
    }
  }

  return result;
}

const char *LanguageCodeISO639_1(unsigned int a1)
{
  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = kLanguageInfoTable[4 * a1 + 1];
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

const char *LanguageCodeISO639_2(unsigned int a1)
{
  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = kLanguageInfoTable[4 * a1 + 2];
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

const char *LanguageCodeWithDialects(unsigned int a1)
{
  if (a1 == 16)
  {
    return "zh-CN";
  }

  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = &kLanguageInfoTable[4 * a1];
    result = v3[1];
    if (!result)
    {
      result = v3[2];
      if (!result)
      {
        v4 = v3[3];
        if (v4)
        {
          return v4;
        }

        else
        {
          return " invalid_language_code";
        }
      }
    }
  }

  return result;
}

uint64_t LanguageFromCode(uint64_t result, _DWORD *a2)
{
  *a2 = 26;
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = &qword_1E7AB5B28;
    while (1)
    {
      v6 = *(v5 - 2);
      if (v6)
      {
        if (!strcasecmp(v3, v6))
        {
          break;
        }
      }

      v7 = *(v5 - 1);
      if (v7)
      {
        if (!strcasecmp(v3, v7))
        {
          break;
        }
      }

      if (*v5 && !strcasecmp(v3, *v5))
      {
        break;
      }

      ++v4;
      v5 += 4;
      if (v4 == 161)
      {
        if (!strcasecmp(v3, "zh-cn") || !strcasecmp(v3, "zh_cn"))
        {
          LODWORD(v4) = 16;
        }

        else if (!strcasecmp(v3, "zh-tw") || !strcasecmp(v3, "zh_tw"))
        {
          LODWORD(v4) = 69;
        }

        else if (!strcasecmp(v3, "sr-me") || !strcasecmp(v3, "sr_me"))
        {
          LODWORD(v4) = 160;
        }

        else if (!strcasecmp(v3, "he"))
        {
          LODWORD(v4) = 6;
        }

        else if (!strcasecmp(v3, "in"))
        {
          LODWORD(v4) = 38;
        }

        else if (!strcasecmp(v3, "ji"))
        {
          LODWORD(v4) = 91;
        }

        else
        {
          if (strcasecmp(v3, "fil"))
          {
            return 0;
          }

          LODWORD(v4) = 32;
        }

        break;
      }
    }

    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t StateWithTasks.InSyncMailbox.name.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t StateWithTasks.InSyncMailbox.name.setter(uint64_t a1, int a2)
{
  v5 = *v2;

  *v2 = a1;
  *(v2 + 2) = a2;
  return result;
}

uint64_t StateWithTasks.InSyncMailbox.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t StateWithTasks.InSyncMailbox.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t StateWithTasks.InSyncMailbox.serverUnreadCount.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t StateWithTasks.InSyncMailbox.serverUnreadCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1B0A8F560(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s13IMAP2Behavior14StateWithTasksV13InSyncMailboxV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_1B0A8F5AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 6);
  v7 = *(a1 + 168);
  if (v7 < 2)
  {
    v8 = a1[20];
  }

  else
  {
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7 > 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

void *variable initialization expression of StateWithTasks.mailboxesToSelectLoggingHelper()
{
  _s30MailboxesToSelectLoggingHelperCMa();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t _s13IMAP2Behavior14StateWithTasksV13InSyncMailboxV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, char *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (*(result + 24) != *(a2 + 3))
    {
      return 0;
    }

    v9 = result;
    if ((sub_1B04520BC(*(result + 16), *(a2 + 2)) & 1) == 0)
    {
      return 0;
    }

    v10 = a2[40];
    if (*(v9 + 40))
    {
      if ((a2[40] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v9 + 32) != *(a2 + 4))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A8F7A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3DE0, &unk_1B0EC0F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A8F814(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0A8F964()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1B0E44B88();
}

uint64_t sub_1B0A8F9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  return sub_1B0E46A88();
}

uint64_t sub_1B0A8F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + *(a3 + 36));
  v7 = *v5;
  v6 = v5[1];
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
  v11 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v11;
}

uint64_t sub_1B0A8FB38@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v44 = a5;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = type metadata accessor for ClientCommand(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1B0E45D88();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v39 = AssociatedTypeWitness;
  v38 = *(AssociatedTypeWitness - 8);
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v37 = &v35 - v19;
  sub_1B0A8F9DC(a2, a3, a4);
  v20 = *(v10 + 64);
  v42 = v5;
  v40 = v9;
  v20();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
  {
    (*(v35 + 8))(v16, v36);
    v21 = 1;
    v22 = v44;
  }

  else
  {
    v23 = *(TupleTypeMetadata2 + 48);
    v24 = v37;
    v25 = v38;
    v26 = v39;
    (*(v38 + 32))(v37, v16, v39);
    v27 = &v16[v23];
    v28 = v44;
    sub_1B0A90A00(v27, v44);
    v29 = *(a4 + 36);
    v30 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v45 = v26;
    v46 = v30;
    v47 = AssociatedConformanceWitness;
    v48 = v32;
    v33 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_1B0BB2B34(v41, v24, v33);
    (*(v25 + 8))(v24, v26);
    v21 = 0;
    v22 = v28;
  }

  return (*(*(v43 - 8) + 56))(v22, v21, 1);
}

unint64_t sub_1B0A8FEAC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1B0E45D88();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v33 = AssociatedTypeWitness;
  v32 = *(AssociatedTypeWitness - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v28 - v17;
  sub_1B0A8F9DC(a2, a3, a4);
  v18 = *(v8 + 72);
  v34 = v7;
  v18();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
  {
    (*(v29 + 8))(v14, v30);
    return 0xF000000000000007;
  }

  else
  {
    v30 = *&v14[*(TupleTypeMetadata2 + 48)];
    v21 = v31;
    v20 = v32;
    v22 = v33;
    (*(v32 + 32))(v31, v14, v33);
    v23 = *(a4 + 36);
    v24 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = swift_getAssociatedConformanceWitness();
    v36 = v24;
    v37 = v22;
    v38 = AssociatedConformanceWitness;
    v39 = v26;
    v27 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_1B0BB2CD4(v35, v21, v27);
    (*(v20 + 8))(v21, v22);
    return v30;
  }
}

uint64_t sub_1B0A901CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B0A8F9DC(a2, a3, a4);
  (*(*(a4 + 24) + 80))(a1, v6, v7, v8, v9, *(a4 + 16));
}

uint64_t sub_1B0A90280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B0A8F9DC(a2, a3, a4);
  (*(*(a4 + 24) + 88))(a1, v6, v7, v8, v9, *(a4 + 16));
}

uint64_t sub_1B0A90334(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v37 = a5;
  v38 = a7;
  v41 = a6;
  v42 = a1;
  v35 = a3;
  v36 = a4;
  v11 = *(a8 + 16);
  v10 = *(a8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1B0E45D88();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v40 = *(AssociatedTypeWitness - 8);
  v17 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v32 - v19;
  v20 = *(a8 + 36);
  v39 = v8;
  v21 = (v8 + v20);
  v22 = *v21;
  v23 = v21[1];
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = AssociatedConformanceWitness;
  v28 = v40;
  sub_1B0BB2E6C(v42, v22, AssociatedTypeWitness, v24, v27, v26, v16);
  if ((*(v28 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v32 + 8))(v16, v33);
    type metadata accessor for AuthenticatedTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v29 = v42;
    *(v29 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v31 = v34;
    (*(v28 + 32))(v34, v16, AssociatedTypeWitness);
    (*(v10 + 96))(v31, v35, v36, v37, v41, v38, v11, v10);
    return (*(v28 + 8))(v31, AssociatedTypeWitness);
  }
}

uint64_t sub_1B0A906B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0A906EC(int a1, uint64_t a2)
{
  v30 = a1;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B0E45D88();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v26 = &v25 - v14;
  v15 = *(a2 + 36);
  v29 = v2;
  v16 = (v2 + v15);
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  sub_1B0BB3114(v30, v18, v19, AssociatedTypeWitness, AssociatedConformanceWitness, v21, v10);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v27 + 8))(v10, v28);
    type metadata accessor for AuthenticatedTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v22 = v30;
    *(v22 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v24 = v26;
    (*(v11 + 32))(v26, v10, AssociatedTypeWitness);
    (*(v4 + 104))(v24, v5, v4);
    return (*(v11 + 8))(v24, AssociatedTypeWitness);
  }
}

uint64_t sub_1B0A90A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A90A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A90AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0A90B04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0A90B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0A90B9C(uint64_t a1, _DWORD *a2)
{
  v2 = a2 + 2;
  if (*a2 != *a1)
  {
    return 0;
  }

  v3 = *(a1 + 152);
  v73 = *(a1 + 136);
  v74 = v3;
  v75 = *(a1 + 168);
  v76 = *(a1 + 184);
  v4 = *(a1 + 88);
  v69 = *(a1 + 72);
  v70 = v4;
  v5 = *(a1 + 120);
  v71 = *(a1 + 104);
  v72 = v5;
  v6 = *(a1 + 24);
  v65 = *(a1 + 8);
  v66 = v6;
  v7 = *(a1 + 56);
  v67 = *(a1 + 40);
  v68 = v7;
  if (sub_1B075FACC(&v65) != 1)
  {
    v14 = *(v2 + 9);
    v61 = *(v2 + 8);
    v62 = v14;
    v63 = *(v2 + 10);
    v64 = *(v2 + 176);
    v15 = *(v2 + 5);
    v57 = *(v2 + 4);
    v58 = v15;
    v16 = *(v2 + 7);
    v59 = *(v2 + 6);
    v60 = v16;
    v17 = *(v2 + 1);
    v53 = *v2;
    v54 = v17;
    v18 = *(v2 + 3);
    v55 = *(v2 + 2);
    v56 = v18;
    if (sub_1B075FACC(&v53) == 1)
    {
      return 0;
    }

    v51[8] = v73;
    v51[9] = v74;
    v51[10] = v75;
    v52 = v76;
    v51[4] = v69;
    v51[5] = v70;
    v51[6] = v71;
    v51[7] = v72;
    v51[0] = v65;
    v51[1] = v66;
    v51[2] = v67;
    v51[3] = v68;
    if (sub_1B0717014(v51) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v51);
      v20 = v19[5];
      v81 = v19[4];
      v82 = v20;
      v83 = v19[6];
      *&v84 = *(v19 + 14);
      v21 = v19[1];
      v77 = *v19;
      v78 = v21;
      v22 = v19[3];
      v79 = v19[2];
      v80 = v22;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      if (sub_1B0717014(&v39) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
        v24 = v23[5];
        v92 = v23[4];
        v93 = v24;
        v94 = v23[6];
        *&v95 = *(v23 + 14);
        v25 = v23[1];
        v88 = *v23;
        v89 = v25;
        v26 = v23[3];
        v90 = v23[2];
        v91 = v26;
        return static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v77, &v88);
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v51);
      v28 = v27[9];
      v85 = v27[8];
      v86 = v28;
      v87 = v27[10];
      v29 = v27[5];
      v81 = v27[4];
      v82 = v29;
      v30 = v27[7];
      v83 = v27[6];
      v84 = v30;
      v31 = v27[1];
      v77 = *v27;
      v78 = v31;
      v32 = v27[3];
      v79 = v27[2];
      v80 = v32;
      v50 = v64;
      v48 = v62;
      v49 = v63;
      v46 = v60;
      v47 = v61;
      v44 = v58;
      v45 = v59;
      v42 = v56;
      v43 = v57;
      v40 = v54;
      v41 = v55;
      v39 = v53;
      if (sub_1B0717014(&v39) != 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
        v34 = v33[9];
        v96 = v33[8];
        v97 = v34;
        v98 = v33[10];
        v35 = v33[5];
        v92 = v33[4];
        v93 = v35;
        v36 = v33[7];
        v94 = v33[6];
        v95 = v36;
        v37 = v33[1];
        v88 = *v33;
        v89 = v37;
        v38 = v33[3];
        v90 = v33[2];
        v91 = v38;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v77, &v88);
      }
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
    return 0;
  }

  v8 = *(v2 + 9);
  v61 = *(v2 + 8);
  v62 = v8;
  v63 = *(v2 + 10);
  v64 = *(v2 + 176);
  v9 = *(v2 + 5);
  v57 = *(v2 + 4);
  v58 = v9;
  v10 = *(v2 + 7);
  v59 = *(v2 + 6);
  v60 = v10;
  v11 = *(v2 + 1);
  v53 = *v2;
  v54 = v11;
  v12 = *(v2 + 3);
  v55 = *(v2 + 2);
  v56 = v12;
  result = sub_1B075FACC(&v53);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

BOOL sub_1B0A90EC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1B03D3FBC(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_1B0A90F18(uint64_t a1)
{
  v5 = *v1;
  v6 = *(*v1 + 16);
  if (v6)
  {
    v3 = 0;
    v2 = 32;
    while (*a1 != *&v5[v2])
    {
      ++v3;
      v2 += 192;
      if (v6 == v3)
      {
        goto LABEL_5;
      }
    }

    sub_1B0A912A8(a1, v21);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_5:
  if (qword_1EB6DDA50 != -1)
  {
    swift_once();
  }

  if (v6 >= qword_1EB737D88)
  {
    v20 = *(v5 + 2);
    if (v20)
    {
      v2 = v1;
      v1 = sub_1B0441754(v20);
      sub_1B0A912A8(a1, v21);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    v5 = sub_1B0B8C888(v5);
    if ((v1 & 0x8000000000000000) == 0)
    {
LABEL_16:
      if (v1 < *(v5 + 2))
      {
        result = sub_1B0A912E0(a1, &v5[192 * v1 + 32]);
        *v2 = v5;
        return result;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1B0B8C888(v5);
    v5 = result;
LABEL_19:
    if (v3 >= *(v5 + 2))
    {
      __break(1u);
    }

    else
    {
      result = sub_1B0A912E0(a1, &v5[v2]);
      *v1 = v5;
    }

    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B0AFF434(0, *(v5 + 2) + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1B0AFF434((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[192 * v8];
  v10 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 48);
  *(v9 + 4) = *(a1 + 32);
  *(v9 + 5) = v12;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 112);
  *(v9 + 8) = *(a1 + 96);
  *(v9 + 9) = v15;
  *(v9 + 6) = v13;
  *(v9 + 7) = v14;
  v16 = *(a1 + 128);
  v17 = *(a1 + 144);
  v18 = *(a1 + 160);
  *(v9 + 201) = *(a1 + 169);
  *(v9 + 11) = v17;
  *(v9 + 12) = v18;
  *(v9 + 10) = v16;
  *v1 = v5;
  return sub_1B0A912A8(a1, v21);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO21LocationAndExtensionsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO16LanguageLocationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216MessageAttributeO13BodyStructureO(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B0A911D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 185))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 184);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A91224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1B0A91328@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Command();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ClientCommand(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0A91630(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v15 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0) + 48) + 8];
    }

    sub_1B0A90A00(v7, v12);
    sub_1B0A90A00(v12, a1);
    v14 = 0;
  }

  else
  {
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      sub_1B0A91694(v7);
    }

    v14 = 1;
  }

  return (*(v9 + 56))(a1, v14, 1, v8);
}

uint64_t Command.Affinity.connection.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t Command.Affinity.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1B0A91598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0A915E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0A91630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A91694(uint64_t a1)
{
  v2 = type metadata accessor for Command();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0A916F0(uint64_t (*a1)(void))
{
  v1 = a1();
  v4 = ResponseText.debugDescription.getter(v1, v2, v3);
  sub_1B0447F00(v1);

  return v4;
}

unint64_t sub_1B0A9174C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (a5)
  {
    v6 = a5;
    if (a5 == 1)
    {
      v9 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v58 = *v9;
      v59 = *(v9 + 8);
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v56 = *(v9 + 40);
      if ((v11 & 0x8000000000000000) == 0)
      {
        v54 = *(v9 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B04420D8(a2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0E43988();
        v14 = sub_1B0E458E8();
        sub_1B0447F00(a2);

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v64 = v52;
          *v15 = 68158466;
          *(v15 + 4) = 2;
          *(v15 + 8) = 256;
          *(v15 + 10) = v58;
          *(v15 + 11) = 2082;
          log = v14;
          v60 = v6;
          v16 = sub_1B0399D64(v59, v10, &v64);
          sub_1B0A92018(v58, v59, v10, v54);
          *(v15 + 13) = v16;
          *(v15 + 21) = 2082;
          v17 = ResponseText.debugDescription.getter(a2, a3, a4);
          v19 = sub_1B0399D64(v17, v18, &v64);
          v6 = v60;

          *(v15 + 23) = v19;
          v20 = "[%.*hhx-%{public}s] Received 'NO %{public}s'";
LABEL_9:
          _os_log_impl(&dword_1B0389000, v13, log, v20, v15, 0x1Fu);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v52, -1, -1);
          MEMORY[0x1B272C230](v15, -1, -1);

LABEL_17:
          sub_1B0A91F7C();
          swift_allocError();
          *v48 = a2;
          *(v48 + 8) = a3;
          *(v48 + 16) = a4;
          *(v48 + 24) = v6;
          swift_willThrow();
          sub_1B0A91FD0(a2, a3, a4, v6);
          return a2;
        }

        goto LABEL_10;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = sub_1B0E43988();
      v30 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      v55 = v30;
      if (os_log_type_enabled(v29, v30))
      {
        loga = v29;
        v31 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v66 = v53;
        *v31 = 68159491;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        *(v31 + 10) = v58;
        *(v31 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v62 = v6;
        v32 = sub_1B0399D64(v59, v10, &v66);

        *(v31 + 13) = v32;
        *(v31 + 21) = 1040;
        *(v31 + 23) = 2;
        *(v31 + 27) = 512;

        *(v31 + 29) = v11;

        *(v31 + 31) = 2160;
        *(v31 + 33) = 0x786F626C69616DLL;
        *(v31 + 41) = 2085;

        v64 = v12;
        v65 = v56;
        v33 = sub_1B0E44BA8();
        v35 = sub_1B0399D64(v33, v34, &v66);

        *(v31 + 43) = v35;
        *(v31 + 51) = 2082;
        v36 = ResponseText.debugDescription.getter(a2, a3, a4);
        v38 = sub_1B0399D64(v36, v37, &v66);
        v6 = v62;

        *(v31 + 53) = v38;
        v39 = "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'NO %{public}s'";
LABEL_15:
        _os_log_impl(&dword_1B0389000, loga, v55, v39, v31, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v53, -1, -1);
        MEMORY[0x1B272C230](v31, -1, -1);

        goto LABEL_17;
      }
    }

    else
    {
      v21 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v58 = *v21;
      v59 = *(v21 + 8);
      v10 = *(v21 + 16);
      v22 = *(v21 + 24);
      v23 = *(v21 + 32);
      v57 = *(v21 + 40);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v54 = *(v21 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B04420D8(a2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0E43988();
        v24 = sub_1B0E458E8();
        sub_1B0447F00(a2);

        if (os_log_type_enabled(v13, v24))
        {
          v15 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v64 = v52;
          *v15 = 68158466;
          *(v15 + 4) = 2;
          *(v15 + 8) = 256;
          *(v15 + 10) = v58;
          *(v15 + 11) = 2082;
          log = v24;
          v61 = v6;
          v25 = sub_1B0399D64(v59, v10, &v64);
          sub_1B0A92018(v58, v59, v10, v22);
          *(v15 + 13) = v25;
          *(v15 + 21) = 2082;
          v26 = ResponseText.debugDescription.getter(a2, a3, a4);
          v28 = sub_1B0399D64(v26, v27, &v64);
          v6 = v61;

          *(v15 + 23) = v28;
          v20 = "[%.*hhx-%{public}s] Received 'BAD %{public}s'";
          goto LABEL_9;
        }

LABEL_10:

        sub_1B0A92018(v58, v59, v10, v54);
        goto LABEL_17;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = sub_1B0E43988();
      v40 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      v55 = v40;
      if (os_log_type_enabled(v29, v40))
      {
        loga = v29;
        v31 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v66 = v53;
        *v31 = 68159491;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        *(v31 + 10) = v58;
        *(v31 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v63 = v6;
        v41 = sub_1B0399D64(v59, v10, &v66);

        *(v31 + 13) = v41;
        *(v31 + 21) = 1040;
        *(v31 + 23) = 2;
        *(v31 + 27) = 512;

        *(v31 + 29) = v22;

        *(v31 + 31) = 2160;
        *(v31 + 33) = 0x786F626C69616DLL;
        *(v31 + 41) = 2085;

        v64 = v23;
        v65 = v57;
        v42 = sub_1B0E44BA8();
        v44 = sub_1B0399D64(v42, v43, &v66);

        *(v31 + 43) = v44;
        *(v31 + 51) = 2082;
        v45 = ResponseText.debugDescription.getter(a2, a3, a4);
        v47 = sub_1B0399D64(v45, v46, &v66);
        v6 = v63;

        *(v31 + 53) = v47;
        v39 = "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'BAD %{public}s'";
        goto LABEL_15;
      }
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_17;
  }

  return a2;
}

unint64_t sub_1B0A91F7C()
{
  result = qword_1EB6E3E70;
  if (!qword_1EB6E3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E70);
  }

  return result;
}

unint64_t sub_1B0A91FD0(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    sub_1B04420D8(result);

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0A92018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (a4 < 0)
  {
  }

  return result;
}

unint64_t sub_1B0A92068(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5)
{
  v62 = a3;
  v9 = type metadata accessor for MailboxTaskLogger(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  v63 = a5;
  if (a5)
  {
    v23 = v20;
    if (a5 == 1)
    {
      sub_1B0A92638(a1, &v60 - v21);
      sub_1B0A92638(a1, v18);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      v24 = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = sub_1B0E43988();
      v26 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v66 = v61;
        *v27 = 68159491;
        *(v27 + 4) = 2;
        *(v27 + 8) = 256;
        v28 = v23;
        v29 = &v18[*(v23 + 20)];
        *(v27 + 10) = *v29;
        *(v27 + 11) = 2082;
        v30 = &v22[*(v28 + 20)];
        *(v27 + 13) = sub_1B0399D64(*(v30 + 1), *(v30 + 2), &v66);
        *(v27 + 21) = 1040;
        *(v27 + 23) = 2;
        *(v27 + 27) = 512;
        LOWORD(v29) = *(v29 + 12);
        sub_1B0A9269C(v18);
        *(v27 + 29) = v29;
        *(v27 + 31) = 2160;
        *(v27 + 33) = 0x786F626C69616DLL;
        *(v27 + 41) = 2085;
        v31 = *(v30 + 4);
        v32 = *(v30 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v22);
        v64 = v31;
        v65 = v32;
        v33 = sub_1B0E44BA8();
        v35 = sub_1B0399D64(v33, v34, &v66);

        *(v27 + 43) = v35;
        *(v27 + 51) = 2082;
        v36 = v62;
        v37 = ResponseText.debugDescription.getter(a2, v62, v24);
        v39 = sub_1B0399D64(v37, v38, &v66);

        *(v27 + 53) = v39;
        _os_log_impl(&dword_1B0389000, v25, v26, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'NO %{public}s'", v27, 0x3Du);
        v40 = v61;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v40, -1, -1);
        v41 = v27;
LABEL_7:
        MEMORY[0x1B272C230](v41, -1, -1);

        v56 = v63;
LABEL_11:
        sub_1B0A926F8();
        swift_allocError();
        *v58 = a2;
        *(v58 + 8) = v36;
        *(v58 + 16) = v24;
        *(v58 + 24) = v56;
        swift_willThrow();
        sub_1B0A91FD0(a2, v36, v24, v56);
        return a2;
      }

      sub_1B0A9269C(v18);

      v57 = v22;
    }

    else
    {
      sub_1B0A92638(a1, v15);
      sub_1B0A92638(a1, v12);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      v24 = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = sub_1B0E43988();
      v42 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      if (os_log_type_enabled(v25, v42))
      {
        v43 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v66 = v61;
        *v43 = 68159491;
        *(v43 + 4) = 2;
        *(v43 + 8) = 256;
        v44 = v23;
        v45 = &v12[*(v23 + 20)];
        *(v43 + 10) = *v45;
        *(v43 + 11) = 2082;
        v46 = &v15[*(v44 + 20)];
        *(v43 + 13) = sub_1B0399D64(*(v46 + 1), *(v46 + 2), &v66);
        *(v43 + 21) = 1040;
        *(v43 + 23) = 2;
        *(v43 + 27) = 512;
        LOWORD(v45) = *(v45 + 12);
        sub_1B0A9269C(v12);
        *(v43 + 29) = v45;
        *(v43 + 31) = 2160;
        *(v43 + 33) = 0x786F626C69616DLL;
        *(v43 + 41) = 2085;
        v47 = *(v46 + 4);
        LODWORD(v46) = *(v46 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v15);
        v64 = v47;
        v65 = v46;
        v48 = sub_1B0E44BA8();
        v50 = sub_1B0399D64(v48, v49, &v66);

        *(v43 + 43) = v50;
        *(v43 + 51) = 2082;
        v51 = v62;
        v52 = ResponseText.debugDescription.getter(a2, v62, v24);
        v54 = sub_1B0399D64(v52, v53, &v66);

        *(v43 + 53) = v54;
        v36 = v51;
        _os_log_impl(&dword_1B0389000, v25, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'BAD %{public}s'", v43, 0x3Du);
        v55 = v61;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v55, -1, -1);
        v41 = v43;
        goto LABEL_7;
      }

      sub_1B0A9269C(v12);

      v57 = v15;
    }

    sub_1B0A9269C(v57);
    v56 = v63;
    v36 = v62;
    goto LABEL_11;
  }

  return a2;
}

uint64_t sub_1B0A92638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailboxTaskLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A9269C(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0A926F8()
{
  result = qword_1EB6E3E78;
  if (!qword_1EB6E3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E78);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B0A9277C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A927C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0A92834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    goto LABEL_11;
  }

  v4 = *(a3 + 40);
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v5 = sub_1B0E46CB8();
  v6 = -1 << *(a3 + 32);
  v7 = v5 & ~v6;
  if ((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = (*(a3 + 48) + 16 * v7);
      v10 = *v9;
      v11 = v9[1];
      v12 = sub_1B0E44BB8();
      v14 = v13;
      if (v12 == sub_1B0E44BB8() && v14 == v15)
      {
        break;
      }

      v17 = sub_1B0E46A78();

      if ((v17 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
LABEL_11:
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_1B0A9299C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v3);
  v5 = sub_1B0E46CB8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1B0A92A68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 16) || (v6 = *(a3 + 40), sub_1B0E46C28(), sub_1B0E42F48(), v7 = sub_1B0E46CB8(), v8 = a3 + 56, v9 = -1 << *(a3 + 32), v10 = v7 & ~v9, ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_142:
    result = 0;
LABEL_145:
    v69 = *MEMORY[0x1E69E9840];
    return result;
  }

  v11 = ~v9;
  v12 = a2 >> 62;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v80 = v14;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v78 = v15;
  v76 = (a1 >> 32) - a1;
  v77 = a1 >> 32;
  v79 = v11;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a2 >> 62 != 3;
      if (((v22 | v80) & 1) == 0)
      {
        goto LABEL_144;
      }

LABEL_37:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_148;
      }

      if (v12 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_147;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_34:
        v27 = BYTE6(a2);
        if (v12)
        {
          v27 = HIDWORD(a1) - a1;
          if (v78)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_144;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_146;
    }

LABEL_40:
    if (v23 != v27)
    {
      goto LABEL_14;
    }

    if (v23 < 1)
    {
      goto LABEL_144;
    }

    if (v19 > 1)
    {
      break;
    }

    if (!v19)
    {
      *__s1 = v18;
      *&__s1[8] = v17;
      __s1[10] = BYTE2(v17);
      __s1[11] = BYTE3(v17);
      __s1[12] = BYTE4(v17);
      __s1[13] = BYTE5(v17);
      if (!v12)
      {
        goto LABEL_93;
      }

      if (v12 != 1)
      {
        v50 = *(a1 + 16);
        v73 = *(a1 + 24);
        sub_1B03B2000(v18, v17);
        v45 = sub_1B0E42A98();
        if (v45)
        {
          v51 = sub_1B0E42AC8();
          if (__OFSUB__(v50, v51))
          {
            goto LABEL_163;
          }

          v45 += v50 - v51;
        }

        v26 = __OFSUB__(v73, v50);
        v47 = v73 - v50;
        if (v26)
        {
          goto LABEL_155;
        }

        v48 = sub_1B0E42AB8();
        if (!v45)
        {
          goto LABEL_170;
        }

LABEL_100:
        if (v48 >= v47)
        {
          v43 = v47;
        }

        else
        {
          v43 = v48;
        }

        result = __s1;
        v52 = v45;
        goto LABEL_136;
      }

      if (v77 < a1)
      {
        goto LABEL_152;
      }

      sub_1B03B2000(v18, v17);
      v30 = sub_1B0E42A98();
      if (!v30)
      {
        goto LABEL_173;
      }

      v31 = v30;
      v32 = sub_1B0E42AC8();
      if (__OFSUB__(a1, v32))
      {
        goto LABEL_158;
      }

      v33 = (a1 - v32 + v31);
      result = sub_1B0E42AB8();
      if (!v33)
      {
        goto LABEL_174;
      }

LABEL_108:
      if (result >= v76)
      {
        v56 = (a1 >> 32) - a1;
      }

      else
      {
        v56 = result;
      }

      v57 = __s1;
      v58 = v33;
      goto LABEL_139;
    }

    if (v18 > v18 >> 32)
    {
      goto LABEL_149;
    }

    sub_1B03B2000(v18, v17);
    v36 = sub_1B0E42A98();
    if (v36)
    {
      v41 = sub_1B0E42AC8();
      if (__OFSUB__(v18, v41))
      {
        goto LABEL_151;
      }

      v36 += v18 - v41;
    }

    sub_1B0E42AB8();
    v8 = a3 + 56;
    if (v12 == 2)
    {
      v71 = v36;
      v64 = *(a1 + 16);
      v75 = *(a1 + 24);
      v38 = sub_1B0E42A98();
      if (v38)
      {
        v65 = sub_1B0E42AC8();
        if (__OFSUB__(v64, v65))
        {
          goto LABEL_166;
        }

        v38 += v64 - v65;
      }

      v26 = __OFSUB__(v75, v64);
      v66 = v75 - v64;
      if (v26)
      {
        goto LABEL_161;
      }

      v67 = sub_1B0E42AB8();
      if (v67 >= v66)
      {
        v63 = v66;
      }

      else
      {
        v63 = v67;
      }

      result = v71;
      if (!v71)
      {
        goto LABEL_181;
      }

      if (!v38)
      {
        goto LABEL_180;
      }

LABEL_133:
      if (result == v38)
      {
LABEL_143:
        sub_1B0391D50(v18, v17);
LABEL_144:
        result = 1;
        goto LABEL_145;
      }

      v43 = v63;
      goto LABEL_135;
    }

    if (v12 == 1)
    {
      if (v77 < a1)
      {
        goto LABEL_160;
      }

      v38 = sub_1B0E42A98();
      if (v38)
      {
        v42 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v42))
        {
          goto LABEL_167;
        }

        v38 += a1 - v42;
      }

      result = sub_1B0E42AB8();
      v40 = (a1 >> 32) - a1;
      if (result < v76)
      {
        v40 = result;
      }

      if (!v36)
      {
        goto LABEL_183;
      }

      if (!v38)
      {
        goto LABEL_182;
      }

LABEL_83:
      if (v36 == v38)
      {
        goto LABEL_143;
      }

      v43 = v40;
      result = v36;
LABEL_135:
      v52 = v38;
LABEL_136:
      v68 = memcmp(result, v52, v43);
      sub_1B0391D50(v18, v17);
      v8 = a3 + 56;
      goto LABEL_140;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v36)
    {
      goto LABEL_172;
    }

LABEL_138:
    v58 = __s1;
    v57 = v36;
    v56 = BYTE6(a2);
LABEL_139:
    v68 = memcmp(v57, v58, v56);
    sub_1B0391D50(v18, v17);
LABEL_140:
    v11 = v79;
    if (!v68)
    {
      goto LABEL_144;
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_142;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_1B03B2000(v18, v17);
    v36 = sub_1B0E42A98();
    if (v36)
    {
      v37 = sub_1B0E42AC8();
      if (__OFSUB__(v35, v37))
      {
        goto LABEL_150;
      }

      v36 += v35 - v37;
    }

    result = sub_1B0E42AB8();
    v8 = a3 + 56;
    if (v12 == 2)
    {
      v70 = v36;
      v59 = *(a1 + 16);
      v74 = *(a1 + 24);
      v38 = sub_1B0E42A98();
      if (v38)
      {
        v60 = sub_1B0E42AC8();
        if (__OFSUB__(v59, v60))
        {
          goto LABEL_164;
        }

        v38 += v59 - v60;
      }

      v26 = __OFSUB__(v74, v59);
      v61 = v74 - v59;
      if (v26)
      {
        goto LABEL_159;
      }

      v62 = sub_1B0E42AB8();
      if (v62 >= v61)
      {
        v63 = v61;
      }

      else
      {
        v63 = v62;
      }

      result = v70;
      if (!v70)
      {
        goto LABEL_179;
      }

      if (!v38)
      {
        goto LABEL_178;
      }

      goto LABEL_133;
    }

    if (v12 == 1)
    {
      if (v77 < a1)
      {
        goto LABEL_154;
      }

      v38 = sub_1B0E42A98();
      if (v38)
      {
        v39 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v39))
        {
          goto LABEL_165;
        }

        v38 += a1 - v39;
      }

      result = sub_1B0E42AB8();
      v40 = (a1 >> 32) - a1;
      if (result < v76)
      {
        v40 = result;
      }

      if (!v36)
      {
        goto LABEL_177;
      }

      if (!v38)
      {
        goto LABEL_176;
      }

      goto LABEL_83;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v36)
    {
      goto LABEL_175;
    }

    goto LABEL_138;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_93:
    __s2 = a1;
    v82 = a2;
    v83 = BYTE2(a2);
    v84 = BYTE3(a2);
    v85 = BYTE4(a2);
    v86 = BYTE5(a2);
    v49 = memcmp(__s1, &__s2, BYTE6(a2));
    v11 = v79;
    if (!v49)
    {
      goto LABEL_144;
    }

    goto LABEL_14;
  }

  if (v12 == 2)
  {
    v44 = *(a1 + 16);
    v72 = *(a1 + 24);
    sub_1B03B2000(v18, v17);
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = sub_1B0E42AC8();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v72, v44);
    v47 = v72 - v44;
    if (v26)
    {
      goto LABEL_156;
    }

    v48 = sub_1B0E42AB8();
    if (!v45)
    {
      goto LABEL_171;
    }

    goto LABEL_100;
  }

  if (v77 < a1)
  {
    goto LABEL_153;
  }

  sub_1B03B2000(v18, v17);
  v53 = sub_1B0E42A98();
  if (v53)
  {
    v54 = v53;
    v55 = sub_1B0E42AC8();
    if (__OFSUB__(a1, v55))
    {
      goto LABEL_157;
    }

    v33 = (a1 - v55 + v54);
    result = sub_1B0E42AB8();
    if (!v33)
    {
      goto LABEL_169;
    }

    goto LABEL_108;
  }

  sub_1B0E42AB8();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  result = sub_1B0E42AB8();
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

uint64_t sub_1B0A93330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *(a3 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2);
    v7 = sub_1B0E46CB8();
    v8 = -1 << *(a3 + 32);
    v9 = v7 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      do
      {
        v11 = (*(a3 + 48) + 16 * v9);
        if (v11[1] == a2)
        {
          v12 = *v11;
          v13 = *(*v11 + 16);
          if (v13 == *(a1 + 16))
          {
            if (!v13 || v12 == a1)
            {
              return 1;
            }

            v14 = (v12 + 32);
            for (i = (a1 + 32); *v14 == *i; ++i)
            {
              ++v14;
              if (!--v13)
              {
                return 1;
              }
            }
          }
        }

        v9 = (v9 + 1) & v10;
      }

      while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }
  }

  return 0;
}

IMAP2Behavior::ConnectionLimits __swiftcall ConnectionLimits.init(maximumConstrainedConnectionCount:maximumConnectionCount:closeWhenIdle:)(Swift::Int maximumConstrainedConnectionCount, Swift::Int maximumConnectionCount, Swift::Bool closeWhenIdle)
{
  if (maximumConnectionCount < maximumConstrainedConnectionCount)
  {
    maximumConstrainedConnectionCount = maximumConnectionCount;
  }

  v3 = closeWhenIdle;
  result.maximumConnectionCount = maximumConnectionCount;
  result.maximumConstrainedConnectionCount = maximumConstrainedConnectionCount;
  result.closeWhenIdle = v3;
  return result;
}

uint64_t sub_1B0A93490(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ConnectionIDsGroupedByState.connections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ConnectionIDsGroupedByState.Connection.State.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A9362C()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A93674()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t ConnectionIDsGroupedByState.Connection.hash(into:)(uint64_t a1, unint64_t a2)
{
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](HIDWORD(a2) & 1);
  return MEMORY[0x1B2728D70]((a2 >> 40) & 1);
}

uint64_t ConnectionIDsGroupedByState.Connection.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](HIDWORD(a1) & 1);
  MEMORY[0x1B2728D70]((a1 >> 40) & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A93788()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A937F8()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2);
  return MEMORY[0x1B2728D70](v3);
}

uint64_t sub_1B0A93844()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t ConnectionLimitsAndUsage.limits.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t ConnectionLimitsAndUsage.limits.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t ConnectionLimitsAndUsage.usage.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0452640(v2);
  return v1;
}

unint64_t ConnectionLimitsAndUsage.usage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  result = sub_1B03C81E4(*(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ConnectionLimitsAndUsage.init(limits:usage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

char *sub_1B0A93A4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = (a1 + 37);
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*v3 == 1)
    {
      v6 = *(v3 - 5);
      v7 = *(v3 - 1);
      v8 = ConnectionUsage.usage(_:)(v6, *(v1 + 24), *(v1 + 32));
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1B03DA284(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1B03DA284((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v5 = &v4[24 * v12];
      *(v5 + 8) = v6;
      v5[36] = v7;
      *(v5 + 5) = v8;
      v5[48] = v10;
      v5[49] = HIBYTE(v10) & 1;
    }

    v3 += 8;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t sub_1B0A93B60(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x100000000;
  if (*(a1 + 4))
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a2 + 4))
  {
    v2 = 0;
  }

  return sub_1B0A93FB0(v3 | *a1, *(a1 + 1), *(a1 + 16) | (*(a1 + 17) << 8), v2 | *a2, *(a2 + 1), *(a2 + 16) | (*(a2 + 17) << 8));
}

uint64_t sub_1B0A93BBC(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B04543AC(0, a2 & ~(a2 >> 63), 0);
  result = v12;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = 0;
        v8 = *(a1 + 4 * i);
        v9 = *(result + 16);
        while (v9 != v7)
        {
          v10 = result + 4 * v7++;
          if (v8 == *(v10 + 32))
          {

            return i;
          }
        }

        v13 = result;
        v11 = *(result + 24);
        if (v9 >= v11 >> 1)
        {
          sub_1B04543AC((v11 > 1), v9 + 1, 1);
          result = v13;
        }

        *(result + 16) = v9 + 1;
        *(result + 4 * v9 + 32) = v8;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1B0A93CE4(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = *(v5 + 4 * i);
      v9 = *a3;
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      sub_1B0E434F8();
      while (1)
      {
        v10 = sub_1B0E43528();
        if (v11)
        {
          break;
        }

        if (*(v5 + 4 * v10) == *(v5 + 4 * i))
        {
          return 0;
        }

        sub_1B0E43548();
      }

      result = sub_1B0E43538();
      if (v7 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A93E4C(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
LABEL_6:
  while (v8)
  {
    v11 = v8;
LABEL_12:
    v8 = (v11 - 1) & v11;
    if (*(a2 + 16))
    {
      v13 = *(*(v3 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v11)))));
      v14 = *(a2 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v15 = -1 << *(a2 + 32);
      v16 = result & ~v15;
      if ((*(v10 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (v13 != *(*(a2 + 48) + 4 * v16))
        {
          v16 = (v16 + 1) & v17;
          if (((*(v10 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v12);
    ++v4;
    if (v11)
    {
      v4 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A93FB0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, __int16 a6)
{
  result = 0;
  if (a1 == a4 && (BYTE4(a1) & 1) == (BYTE4(a4) & 1))
  {
    if ((a3 & 0x100) != 0)
    {
      if ((a6 & 0x100) != 0)
      {
        return 1;
      }
    }

    else if ((a6 & 0x100) == 0)
    {
      if (a3)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if ((a6 & 1) == 0 || a5 != 1)
            {
              return 0;
            }
          }

          else if ((a6 & 1) == 0 || a5 <= 1)
          {
            return 0;
          }
        }

        else if ((a6 & 1) == 0 || a5)
        {
          return 0;
        }
      }

      else if ((a6 & 1) != 0 || a2 != a5)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0A94034(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  while (v5 < v4)
  {
    v8 = *(v6 + 4 * v5);
    v10 = *v3;
    v9 = v3[1];
    v11 = (v9 + 32);
    if (*v3)
    {
      v12 = *(v10 + 16);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v13 = 1 << *(v10 + 16);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        goto LABEL_19;
      }

      v20 = v15 & result;
      sub_1B0E434F8();
      result = sub_1B0E43528();
      v7 = v20;
      if ((v16 & 1) == 0)
      {
        while (v11[result] != v8)
        {
          sub_1B0E43548();
          v7 = v20;
          result = sub_1B0E43528();
          if (v17)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v18 = *(v9 + 16);
      if (v18)
      {
        do
        {
          v19 = *v11++;
          if (v19 == v8)
          {
            goto LABEL_6;
          }
        }

        while (--v18);
      }

      v7 = 0;
    }

LABEL_5:
    result = sub_1B0BC9E7C(v8, v7);
LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1B0A941C4()
{
  result = qword_1EB6E3E80;
  if (!qword_1EB6E3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E80);
  }

  return result;
}

unint64_t sub_1B0A9421C()
{
  result = qword_1EB6E3E88;
  if (!qword_1EB6E3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionLimits(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionLimits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionIDsGroupedByState.Connection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionIDsGroupedByState.Connection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Environment.AppState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Environment.AppState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0A94524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0A9456C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionLimitsAndUsage.ConnectionWithUsage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionLimitsAndUsage.ConnectionWithUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0A94690()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A946D4()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A94714()
{
  result = sub_1B03D0770(&unk_1F2710618);
  qword_1EB737D80 = result;
  return result;
}

uint64_t sub_1B0A9473C()
{
  v1 = *(v0 + 104);
  if (v1 < 2 || *(v0 + 122) == 1 && ((*(v0 + 120) & 1) != 0 || *(v0 + 112) > 2843))
  {
    return 0;
  }

  v4 = v1 - 1;
  v5 = 1;
  v3 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v5, &v4, &type metadata for UID, v3, &v6);
  return v6;
}

void sub_1B0A947D0(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = sub_1B0A9473C();
  if (v17)
  {
    sub_1B0A96394(a1, v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(a1, v6, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v18 = sub_1B0E43988();
    v19 = sub_1B0E45908();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51 = v21;
      *v20 = 68159235;
      *(v20 + 4) = 2;
      *(v20 + 8) = 256;
      v22 = &v6[*(v3 + 20)];
      *(v20 + 10) = *v22;
      *(v20 + 11) = 2082;
      v23 = &v9[*(v3 + 20)];
      *(v20 + 13) = sub_1B0399D64(*(v23 + 1), *(v23 + 2), &v51);
      *(v20 + 21) = 1040;
      *(v20 + 23) = 2;
      *(v20 + 27) = 512;
      v24 = *(v22 + 12);
      sub_1B0A9269C(v6);
      *(v20 + 29) = v24;
      *(v20 + 31) = 2160;
      *(v20 + 33) = 0x786F626C69616DLL;
      *(v20 + 41) = 2085;
      v25 = *(v23 + 4);
      v26 = *(v23 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v9);
      v54 = v25;
      v55 = v26;
      v27 = sub_1B0E44BA8();
      v29 = sub_1B0399D64(v27, v28, &v51);

      *(v20 + 43) = v29;
      _os_log_impl(&dword_1B0389000, v18, v19, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Not querying server.", v20, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v21, -1, -1);
      MEMORY[0x1B272C230](v20, -1, -1);

      return;
    }

    sub_1B0A9269C(v6);

    v48 = v9;
    goto LABEL_11;
  }

  v30 = v16;
  sub_1B0A96394(a1, v15, type metadata accessor for MailboxTaskLogger);
  sub_1B0A96394(a1, v12, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0A96130(v1, &v54);
  v31 = sub_1B0E43988();
  v32 = sub_1B0E45908();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_1B0A96168(&v54);
    sub_1B0A9269C(v12);

    v48 = v15;
LABEL_11:
    sub_1B0A9269C(v48);
    return;
  }

  v33 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v53 = v50;
  *v33 = 68159747;
  *(v33 + 4) = 2;
  *(v33 + 8) = 256;
  v34 = &v12[*(v3 + 20)];
  *(v33 + 10) = *v34;
  *(v33 + 11) = 2082;
  v35 = &v15[*(v3 + 20)];
  *(v33 + 13) = sub_1B0399D64(*(v35 + 1), *(v35 + 2), &v53);
  *(v33 + 21) = 1040;
  *(v33 + 23) = 2;
  *(v33 + 27) = 512;
  v36 = *(v34 + 12);
  sub_1B0A9269C(v12);
  *(v33 + 29) = v36;
  *(v33 + 31) = 2160;
  *(v33 + 33) = 0x786F626C69616DLL;
  *(v33 + 41) = 2085;
  v37 = *(v35 + 4);
  v38 = *(v35 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v15);
  v51 = v37;
  v52 = v38;
  v39 = sub_1B0E44BA8();
  v41 = sub_1B0399D64(v39, v40, &v53);

  *(v33 + 43) = v41;
  *(v33 + 51) = 2082;
  v51 = v30;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v43 = MessageIdentifierRange.debugDescription.getter(v42);
  v45 = sub_1B0399D64(v43, v44, &v53);

  *(v33 + 53) = v45;
  *(v33 + 61) = 2048;
  if (v57)
  {
    v46 = 0;
  }

  else
  {
    v46 = v56;
  }

  sub_1B0A96168(&v54);
  *(v33 + 63) = v46;
  _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task querying in UIDs %{public}s. Server unread count %ld", v33, 0x47u);
  v47 = v50;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v47, -1, -1);
  MEMORY[0x1B272C230](v33, -1, -1);
}

uint64_t sub_1B0A94D30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *(v3 + 104);
  if (v5 < 2 || (v6 = *(v3 + 122), v6 == 1) && ((*(v3 + 120) & 1) != 0 || *(v3 + 112) > 2843) || (LODWORD(v25) = 1, v26 = v5 - 1, v9 = sub_1B041C1E8(), static MessageIdentifier.... infix(_:_:)(&v25, &v26, &type metadata for UID, v9, &v27), v10 = v27, (sub_1B0B70898(a1, a2) & 1) != 0))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA0, &unk_1B0EC2000);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B0EC1E50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    v15 = swift_allocBox();
    v17 = v16;
    v27 = v10;
    v25 = Range<>.init<A>(_:)(&v27, &type metadata for UID, v9);
    sub_1B03D06F8();
    sub_1B0E46F08();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    *(v14 + 32) = v15 | 0xA000000000000000;
    *(v14 + 40) = xmmword_1B0EC1E60;
    *(v13 + 16) = v14;
    v19 = v13 | 0xC000000000000000;
    if (v6)
    {
      *a3 = v19;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      v20 = *(type metadata accessor for SearchReturnOption() - 8);
      v21 = *(v20 + 72);
      v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1B0EC1E70;
      swift_storeEnumTagMultiPayload();
      *a3 = v19;
      a3[1] = v23;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA0, &unk_1B0EC2000);
    return (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
  }
}

unint64_t sub_1B0A95070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1B0A9E3DC(a2, a4))
  {
    return 0xF000000000000007;
  }

  v9 = sub_1B0A9473C();
  if (v10)
  {
    v11 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v11 + 16) = *(v4 + 16);
    *(v11 + 24) = v12;
    v13 = *(v4 + 104) == 1;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 32) = v13;
    *(v11 + 56) = 256;
LABEL_10:
    v8 = v11 | 0x3000000000000006;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v8;
  }

  v14 = v9;
  if (sub_1B0A98DEC(a1, a2, a3))
  {
    v15 = *(v4 + 136);
    if (v15)
    {
      v16 = 0;
      v14 = 0;
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v16 = *(v4 + 128);
      v17 = *(v4 + 112);
      v18 = *(v4 + 120);
    }

    v11 = swift_allocObject();
    v19 = *(v4 + 24);
    *(v11 + 16) = *(v4 + 16);
    *(v11 + 24) = v19;
    *(v11 + 32) = v16;
    *(v11 + 40) = v14;
    *(v11 + 48) = v17;
    *(v11 + 56) = v18;
    *(v11 + 57) = v15;
    goto LABEL_10;
  }

  return 0xF000000000000007;
}

void sub_1B0A95188(void *a1, uint64_t a2)
{
  v97 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v94 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v94 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94 - v26;
  sub_1B0B861D8(*(v2 + 40), *(v2 + 48), a1);
  v96 = *(v2 + 128);
  LOBYTE(a1) = *(v2 + 136);
  v28 = sub_1B0A9473C();
  if ((a1 & 1) == 0)
  {
    if (v29)
    {
      sub_1B0A96394(a2, v21, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(a2, v18, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0A96130(v2, v101);
      v31 = sub_1B0E43988();
      v45 = sub_1B0E45908();
      if (os_log_type_enabled(v31, v45))
      {
        v33 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v100 = v46;
        *v33 = 68159747;
        *(v33 + 4) = 2;
        *(v33 + 8) = 256;
        v47 = v97;
        v48 = &v18[*(v97 + 20)];
        *(v33 + 10) = *v48;
        *(v33 + 11) = 2082;
        v49 = &v21[*(v47 + 20)];
        *(v33 + 13) = sub_1B0399D64(*(v49 + 1), *(v49 + 2), &v100);
        *(v33 + 21) = 1040;
        *(v33 + 23) = 2;
        *(v33 + 27) = 512;
        v50 = *(v48 + 12);
        sub_1B0A9269C(v18);
        *(v33 + 29) = v50;
        *(v33 + 31) = 2160;
        *(v33 + 33) = 0x786F626C69616DLL;
        *(v33 + 41) = 2085;
        v51 = *(v49 + 4);
        v52 = *(v49 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v21);
        v98 = v51;
        v99 = v52;
        v53 = sub_1B0E44BA8();
        v55 = sub_1B0399D64(v53, v54, &v100);

        *(v33 + 43) = v55;
        *(v33 + 51) = 2048;
        *(v33 + 53) = v96;
        *(v33 + 61) = 2048;
        if (v103)
        {
          v56 = 0;
        }

        else
        {
          v56 = v102;
        }

        sub_1B0A96168(v101);
        *(v33 + 63) = v56;
        _os_log_impl(&dword_1B0389000, v31, v45, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld unread messages. Server unread count %ld.", v33, 0x47u);
        swift_arrayDestroy();
        v44 = v46;
        goto LABEL_14;
      }

      sub_1B0A96168(v101);
      sub_1B0A9269C(v18);

      v93 = v21;
      goto LABEL_31;
    }

    v76 = v28;
    sub_1B0A96394(a2, v27, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(a2, v24, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A96130(v2, v101);
    v58 = sub_1B0E43988();
    v77 = sub_1B0E45908();
    if (!os_log_type_enabled(v58, v77))
    {
      sub_1B0A96168(v101);
      sub_1B0A9269C(v24);

      v93 = v27;
      goto LABEL_31;
    }

    v60 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v100 = v78;
    *v60 = 68160003;
    *(v60 + 4) = 2;
    *(v60 + 8) = 256;
    v79 = v97;
    v80 = &v24[*(v97 + 20)];
    *(v60 + 10) = *v80;
    *(v60 + 11) = 2082;
    v81 = &v27[*(v79 + 20)];
    *(v60 + 13) = sub_1B0399D64(*(v81 + 1), *(v81 + 2), &v100);
    *(v60 + 21) = 1040;
    *(v60 + 23) = 2;
    *(v60 + 27) = 512;
    v82 = *(v80 + 12);
    sub_1B0A9269C(v24);
    *(v60 + 29) = v82;
    *(v60 + 31) = 2160;
    *(v60 + 33) = 0x786F626C69616DLL;
    *(v60 + 41) = 2085;
    v83 = *(v81 + 4);
    v84 = *(v81 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v27);
    v98 = v83;
    v99 = v84;
    v85 = sub_1B0E44BA8();
    v87 = sub_1B0399D64(v85, v86, &v100);

    *(v60 + 43) = v87;
    *(v60 + 51) = 2048;
    *(v60 + 53) = v96;
    *(v60 + 61) = 2082;
    v98 = v76;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v89 = MessageIdentifierRange.debugDescription.getter(v88);
    v91 = sub_1B0399D64(v89, v90, &v100);

    *(v60 + 63) = v91;
    *(v60 + 71) = 2048;
    if (v103)
    {
      v92 = 0;
    }

    else
    {
      v92 = v102;
    }

    sub_1B0A96168(v101);
    *(v60 + 73) = v92;
    _os_log_impl(&dword_1B0389000, v58, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld unread messages in UIDs %{public}s. Server unread count %ld.", v60, 0x51u);
    swift_arrayDestroy();
    v75 = v78;
LABEL_25:
    MEMORY[0x1B272C230](v75, -1, -1);
    MEMORY[0x1B272C230](v60, -1, -1);

    return;
  }

  if (v29)
  {
    v15 = v9;
    sub_1B0A96394(a2, v9, type metadata accessor for MailboxTaskLogger);
    v30 = v95;
    sub_1B0A96394(a2, v95, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A96130(v2, v101);
    v31 = sub_1B0E43988();
    v32 = sub_1B0E45908();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v100 = v34;
      *v33 = 68159491;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v35 = v97;
      v36 = v30 + *(v97 + 20);
      *(v33 + 10) = *v36;
      *(v33 + 11) = 2082;
      v37 = &v15[*(v35 + 20)];
      *(v33 + 13) = sub_1B0399D64(*(v37 + 1), *(v37 + 2), &v100);
      *(v33 + 21) = 1040;
      *(v33 + 23) = 2;
      *(v33 + 27) = 512;
      v38 = *(v36 + 24);
      sub_1B0A9269C(v30);
      *(v33 + 29) = v38;
      *(v33 + 31) = 2160;
      *(v33 + 33) = 0x786F626C69616DLL;
      *(v33 + 41) = 2085;
      v39 = *(v37 + 4);
      LODWORD(v36) = *(v37 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v15);
      v98 = v39;
      v99 = v36;
      v40 = sub_1B0E44BA8();
      v42 = sub_1B0399D64(v40, v41, &v100);

      *(v33 + 43) = v42;
      *(v33 + 51) = 2048;
      if (v103)
      {
        v43 = 0;
      }

      else
      {
        v43 = v102;
      }

      sub_1B0A96168(v101);
      *(v33 + 53) = v43;
      _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not search for unread messages. Server unread count %ld.", v33, 0x3Du);
      swift_arrayDestroy();
      v44 = v34;
LABEL_14:
      MEMORY[0x1B272C230](v44, -1, -1);
      MEMORY[0x1B272C230](v33, -1, -1);

      return;
    }

    sub_1B0A96168(v101);
    sub_1B0A9269C(v30);

    goto LABEL_29;
  }

  v57 = v28;
  sub_1B0A96394(a2, v15, type metadata accessor for MailboxTaskLogger);
  sub_1B0A96394(a2, v12, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0A96130(v2, v101);
  v58 = sub_1B0E43988();
  v59 = sub_1B0E45908();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v100 = v61;
    *v60 = 68159747;
    *(v60 + 4) = 2;
    *(v60 + 8) = 256;
    v62 = v97;
    v63 = &v12[*(v97 + 20)];
    *(v60 + 10) = *v63;
    *(v60 + 11) = 2082;
    v64 = &v15[*(v62 + 20)];
    *(v60 + 13) = sub_1B0399D64(*(v64 + 1), *(v64 + 2), &v100);
    *(v60 + 21) = 1040;
    *(v60 + 23) = 2;
    *(v60 + 27) = 512;
    v65 = *(v63 + 12);
    sub_1B0A9269C(v12);
    *(v60 + 29) = v65;
    *(v60 + 31) = 2160;
    *(v60 + 33) = 0x786F626C69616DLL;
    *(v60 + 41) = 2085;
    v66 = *(v64 + 4);
    LODWORD(v63) = *(v64 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v15);
    v98 = v66;
    v99 = v63;
    v67 = sub_1B0E44BA8();
    v69 = sub_1B0399D64(v67, v68, &v100);

    *(v60 + 43) = v69;
    *(v60 + 51) = 2082;
    v98 = v57;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v71 = MessageIdentifierRange.debugDescription.getter(v70);
    v73 = sub_1B0399D64(v71, v72, &v100);

    *(v60 + 53) = v73;
    *(v60 + 61) = 2048;
    if (v103)
    {
      v74 = 0;
    }

    else
    {
      v74 = v102;
    }

    sub_1B0A96168(v101);
    *(v60 + 63) = v74;
    _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to find unread messages (UIDs %{public}s). Server unread count %ld.", v60, 0x47u);
    swift_arrayDestroy();
    v75 = v61;
    goto LABEL_25;
  }

  sub_1B0A96168(v101);
  sub_1B0A9269C(v12);

LABEL_29:
  v93 = v15;
LABEL_31:
  sub_1B0A9269C(v93);
}

uint64_t sub_1B0A95C78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0A95CCC()
{
  if (qword_1EB6DDA38 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0A95D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_1B0A95070(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void sub_1B0A95D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    *(v5 + 128) = 0;
    *(v5 + 136) = 1;
  }
}

uint64_t sub_1B0A95DA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v1);
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A95E04()
{
  v1 = v0[1];
  MEMORY[0x1B2728DB0](*v0);
  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0A95E40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v1);
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0A95EC8()
{
  result = qword_1EB6E3E90;
  if (!qword_1EB6E3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E90);
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0A95F50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0A95F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0A9600C()
{
  result = qword_1EB6DDA30;
  if (!qword_1EB6DDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA30);
  }

  return result;
}

unint64_t sub_1B0A96060()
{
  result = qword_1EB6DDA28;
  if (!qword_1EB6DDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA28);
  }

  return result;
}

unint64_t sub_1B0A960B4(uint64_t a1)
{
  result = sub_1B0A960DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0A960DC()
{
  result = qword_1EB6DDA20;
  if (!qword_1EB6DDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA20);
  }

  return result;
}

uint64_t sub_1B0A96198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E98, &qword_1B0EC1FF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  result = sub_1B0AD44DC(a2, a3, a4);
  if (result)
  {
    v14 = *(v4 + 122);
    v15 = &v12[*(v9 + 48)];
    *v12 = v14;
    sub_1B0A96394(a1, v15, type metadata accessor for UntaggedResponse);
    type metadata accessor for UntaggedResponse(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (v14 == 1)
    {
      if (EnumCaseMultiPayload == 11)
      {
        v17 = *(*v15 + 16);

        *(v4 + 128) = v17;
        *(v4 + 136) = 0;
        return result;
      }
    }

    else if (EnumCaseMultiPayload == 12)
    {
      v18 = v15[1];
      v23[0] = *v15;
      v23[1] = v18;
      v23[2] = v15[2];
      v19 = v4;
      v20 = ExtendedSearchResponse.count.getter();
      v22 = v21;
      result = sub_1B0A96464(v23);
      *(v19 + 128) = v20;
      *(v19 + 136) = v22 & 1;
      return result;
    }

    return sub_1B0A963FC(v12);
  }

  return result;
}

int64_t sub_1B0A96304(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MailboxSyncState() + 76));
  result = static MonotonicTime.now()();
  v3 = v1[1];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v1[1] = v5;
    v7 = *v1;
    v8 = exp2((v5 - 1));
    result = MonotonicTime.init(seconds:since:)(v7, fmin(v8 + v8, 37.0));
    if (v6 >= result)
    {
      v1[1] = 0;
    }

    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B0A96394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0A963FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E98, &qword_1B0EC1FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathAttribute(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PathAttribute(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B0A965C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0A96608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0A966F0(uint64_t a1)
{
  v78 = type metadata accessor for Task.Logger(0);
  v3 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v76 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  v21 = *(v1 + 64);
  if (*(v21 + 16) == 1 && sub_1B0B86910(*(v1 + 64)))
  {
    v24 = v22;
    v77 = v23;

    sub_1B03B1B00(a1, v20, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a1, v17, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = sub_1B0E43988();
    v26 = sub_1B0E45908();

    if (os_log_type_enabled(v25, v26))
    {
      v76 = v24;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 68158723;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v29 = v78;
      v30 = *&v17[*(v78 + 20)];
      sub_1B03B1CA0(v17, type metadata accessor for Task.Logger);
      *(v27 + 10) = v30;
      *(v27 + 11) = 2082;
      v31 = &v20[*(v29 + 20)];
      v32 = *(v31 + 1);
      v33 = *(v31 + 2);
      v34 = *(v31 + 3);
      v35 = *(v31 + 4);
      v36 = *(v31 + 10);
      sub_1B0A982D8(*v31, v32, v33, v34);
      sub_1B03B1CA0(v20, type metadata accessor for Task.Logger);
      if (v34 < 0)
      {
      }

      v37 = sub_1B0399D64(v32, v33, &v79);

      *(v27 + 13) = v37;
      *(v27 + 21) = 2160;
      *(v27 + 23) = 0x786F626C69616DLL;
      *(v27 + 31) = 2085;
      v82 = v76;
      v83 = v77;
      v38 = sub_1B0E44BA8();
      v40 = sub_1B0399D64(v38, v39, &v79);

      *(v27 + 33) = v40;
      _os_log_impl(&dword_1B0389000, v25, v26, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v27, 0x29u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v28, -1, -1);
      v41 = v27;
LABEL_16:
      MEMORY[0x1B272C230](v41, -1, -1);

      return;
    }

    sub_1B03B1CA0(v17, type metadata accessor for Task.Logger);

    v75 = v20;
  }

  else if (sub_1B0B86910(v21))
  {
    v44 = v42;
    v45 = v43;

    sub_1B03B1B00(a1, v14, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a1, v11, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A98D84(v1, &v82);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = sub_1B0E43988();
    v46 = sub_1B0E45908();

    if (os_log_type_enabled(v25, v46))
    {
      v77 = v45;
      v47 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v81 = v76;
      *v47 = 68158979;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v48 = v78;
      v49 = *&v11[*(v78 + 20)];
      sub_1B03B1CA0(v11, type metadata accessor for Task.Logger);
      *(v47 + 10) = v49;
      *(v47 + 11) = 2082;
      v50 = &v14[*(v48 + 20)];
      v51 = *(v50 + 1);
      v52 = *(v50 + 2);
      v53 = *(v50 + 3);
      v54 = *(v50 + 4);
      v55 = *(v50 + 10);
      sub_1B0A982D8(*v50, v51, v52, v53);
      sub_1B03B1CA0(v14, type metadata accessor for Task.Logger);
      if (v53 < 0)
      {
      }

      v56 = sub_1B0399D64(v51, v52, &v81);

      *(v47 + 13) = v56;
      *(v47 + 21) = 2048;
      v57 = *(v84 + 16);
      sub_1B0A98DBC(&v82);
      *(v47 + 23) = v57;
      *(v47 + 31) = 2160;
      *(v47 + 33) = 0x786F626C69616DLL;
      *(v47 + 41) = 2085;
      v79 = v44;
      v80 = v77;
      v58 = sub_1B0E44BA8();
      v60 = sub_1B0399D64(v58, v59, &v81);

      *(v47 + 43) = v60;
      _os_log_impl(&dword_1B0389000, v25, v46, "[%.*hhx-%{public}s] Created task for %ld mailboxes, first: '%{sensitive,mask.mailbox}s'.", v47, 0x33u);
      v61 = v76;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v61, -1, -1);
      v41 = v47;
      goto LABEL_16;
    }

    sub_1B0A98DBC(&v82);
    sub_1B03B1CA0(v11, type metadata accessor for Task.Logger);

    v75 = v14;
  }

  else
  {
    sub_1B03B1B00(a1, v8, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a1, v5, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A98D84(v1, &v82);
    v25 = sub_1B0E43988();
    v62 = sub_1B0E45908();
    if (os_log_type_enabled(v25, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v79 = v64;
      *v63 = 68158466;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      v65 = v78;
      v66 = *&v5[*(v78 + 20)];
      sub_1B03B1CA0(v5, type metadata accessor for Task.Logger);
      *(v63 + 10) = v66;
      *(v63 + 11) = 2082;
      v67 = &v8[*(v65 + 20)];
      v68 = *(v67 + 1);
      v69 = *(v67 + 2);
      v70 = *(v67 + 3);
      v71 = *(v67 + 4);
      v72 = *(v67 + 10);
      sub_1B0A982D8(*v67, v68, v69, v70);
      sub_1B03B1CA0(v8, type metadata accessor for Task.Logger);
      if (v70 < 0)
      {
      }

      v73 = sub_1B0399D64(v68, v69, &v79);

      *(v63 + 13) = v73;
      *(v63 + 21) = 2048;
      v74 = *(v84 + 16);
      sub_1B0A98DBC(&v82);
      *(v63 + 23) = v74;
      _os_log_impl(&dword_1B0389000, v25, v62, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v63, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x1B272C230](v64, -1, -1);
      v41 = v63;
      goto LABEL_16;
    }

    sub_1B0A98DBC(&v82);
    sub_1B03B1CA0(v5, type metadata accessor for Task.Logger);

    v75 = v8;
  }

  sub_1B03B1CA0(v75, type metadata accessor for Task.Logger);
}

uint64_t sub_1B0A96F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 64);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = *(v8 + 56) + ((v16 << 10) | (16 * __clz(__rbit64(v12))));
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_bridgeObjectRetain_n();
      if ((sub_1B0B70394(v18, v19, a2, a3) & 1) == 0)
      {
        break;
      }

      v12 &= v12 - 1;
      result = swift_bridgeObjectRelease_n();
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE8, &qword_1B0EC21B8);
    v40 = a4 + *(v39 + 48);
    *a4 = v18;
    *(a4 + 8) = v19;
    *(a4 + 12) = 0;
    *v40 = v18;
    *(v40 + 8) = v19;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v35 = *(*(v39 - 8) + 56);
    v37 = a4;
    v38 = 0;
    v36 = v39;
LABEL_26:

    return v35(v37, v38, 1, v36);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v16 >= v13)
      {
        break;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    v41 = a4;

    v20 = 1 << *(v8 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v8 + 64);
    v23 = (v20 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v24 = 0;
    while (v22)
    {
LABEL_20:
      v26 = *(v8 + 56) + ((v24 << 10) | (16 * __clz(__rbit64(v22))));
      v27 = *v26;
      v28 = *(v26 + 8);
      swift_bridgeObjectRetain_n();
      v29 = sub_1B0A98328(v27, v28, a1, a2, a3);

      if (v29)
      {
        v30 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v31 = sub_1B0B70394(v30, v28 | 0x100000000, a2, a3);

        if ((v31 & 1) == 0)
        {

          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE8, &qword_1B0EC21B8);
          v33 = v41 + *(v32 + 48);
          *v41 = v27;
          *(v41 + 8) = v28;
          *(v41 + 12) = 1;
          *v33 = 0;
          *(v33 + 8) = 0;
          *(v33 + 16) = v27;
          *(v33 + 24) = v28;
          *(v33 + 32) = MEMORY[0x1E69E7CC0];
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v32 - 8) + 56))(v41, 0, 1, v32);

          return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }
      }

      v22 &= v22 - 1;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE8, &qword_1B0EC21B8);
        v35 = *(*(v34 - 8) + 56);
        v36 = v34;
        v37 = v41;
        v38 = 1;
        goto LABEL_26;
      }

      v22 = *(v9 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_20;
      }
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_1B0A97328(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6, uint64_t a7)
{
  v58 = a1;
  v14 = type metadata accessor for Task.Logger(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v57 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    sub_1B0A9174C(a7, a3, a4, a5, a6);
    if (v7)
    {
    }
  }

  else
  {
    v54 = v19;
    sub_1B0A9174C(a7, a3, a4, a5, a6);
    if (v7)
    {
    }

    v56 = 0;
    v55 = v21;
    sub_1B03B1B00(a7, v21, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a7, v17, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(a3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a6)
    {
      v22 = 20302;
      if (a6 != 1)
      {
        v22 = 4473154;
      }

      v53 = v22;
      if (a6 == 1)
      {
        v23 = 0xE200000000000000;
      }

      else
      {
        v23 = 0xE300000000000000;
      }
    }

    else
    {
      v23 = 0xE200000000000000;
      v53 = 19279;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B04420D8(a3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    j___s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();

    sub_1B0447F00(a3);

    j__swift_bridgeObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v49 = v25;
      v50 = v24;
      v51 = a4;
      v52 = a5;
      v26 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v61 = v48;
      *v26 = 68159235;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v54;
      v28 = *&v17[*(v54 + 20)];
      sub_1B03B1CA0(v17, type metadata accessor for Task.Logger);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = v55;
      v30 = &v55[*(v27 + 20)];
      v31 = *(v30 + 1);
      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      v34 = *(v30 + 4);
      v35 = *(v30 + 10);
      sub_1B0A982D8(*v30, v31, v33, v32);
      sub_1B03B1CA0(v29, type metadata accessor for Task.Logger);
      if (v32 < 0)
      {
      }

      v36 = sub_1B0399D64(v31, v33, &v61);

      *(v26 + 13) = v36;
      *(v26 + 21) = 2082;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = sub_1B0399D64(v53, v23, &v61);

      *(v26 + 23) = v37;
      *(v26 + 31) = 2082;

      v38 = ResponseText.debugDescription.getter(a3, v51, v52);
      v40 = v39;
      sub_1B0447F00(a3);

      v41 = sub_1B0399D64(v38, v40, &v61);

      *(v26 + 33) = v41;
      *(v26 + 41) = 2160;
      *(v26 + 43) = 0x786F626C69616DLL;
      *(v26 + 51) = 2085;
      v59 = v58;
      v60 = v57;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = sub_1B0E44BA8();
      v44 = sub_1B0399D64(v42, v43, &v61);

      *(v26 + 53) = v44;
      v45 = v50;
      _os_log_impl(&dword_1B0389000, v50, v49, "[%.*hhx-%{public}s] Received '%{public}s %{public}s' for '%{sensitive,mask.mailbox}s'.", v26, 0x3Du);
      v46 = v48;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v46, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);
    }

    else
    {
      sub_1B03B1CA0(v17, type metadata accessor for Task.Logger);

      sub_1B0447F00(a3);

      sub_1B03B1CA0(v55, type metadata accessor for Task.Logger);
    }
  }
}

uint64_t sub_1B0A977F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 64);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_10:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = (*(v6 + 48) + v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v6 + 56) + v14;
    v19 = *v18;
    v20 = *(v18 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((sub_1B0A98328(v21, v20, a1, a2, a3) & 1) != 0 && (sub_1B0A98328(v19, v20 | 0x100000000, a1, a2, a3) & 1) != 0 && (sub_1B03B5DDC(v19, v20, *(v24 + 72)) & 1) == 0 && (sub_1B0A9D194(v16, v17, a2, a4) & 1) == 0)
    {

      v22 = swift_allocObject();
      *(v22 + 16) = v16;
      *(v22 + 24) = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return v16;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0A979E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = a1;
  v80 = type metadata accessor for Task.Logger(0);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v17 = *(v3 + 64);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v3 + 64) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v88 = *(v3 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = 0;
  *&v26 = 68158723;
  v79 = v26;
  v84 = v13;
  v85 = v3;
  v81 = a2;
  v78 = v7;
  v86 = v16;
  v87 = v10;
  v83 = v24;
  while (v23)
  {
LABEL_10:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = *(v88 + 56) + ((v25 << 10) | (16 * v28));
    v30 = *v29;
    v31 = *(v3 + 72);
    v32 = *v29;
    v89 = *(v29 + 8);
    if (sub_1B03B5DDC(v32, v89, v31))
    {
      sub_1B03B1B00(a2, v16, type metadata accessor for Task.Logger);
      sub_1B03B1B00(a2, v13, type metadata accessor for Task.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v33 = v13;
      v34 = v16;
      v35 = sub_1B0E43988();
      v36 = sub_1B0E45908();

      if (os_log_type_enabled(v35, v36))
      {
        LODWORD(v77) = v36;
        v82 = v35;
        v37 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v92[0] = v76;
        *v37 = v79;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        v38 = v34;
        v39 = v80;
        v40 = *(v33 + *(v80 + 20));
        sub_1B03B1CA0(v33, type metadata accessor for Task.Logger);
        *(v37 + 10) = v40;
        *(v37 + 11) = 2082;
        v41 = v38 + *(v39 + 20);
        v42 = *(v41 + 8);
        v44 = *(v41 + 16);
        v43 = *(v41 + 24);
        v45 = *(v41 + 32);
        v46 = *(v41 + 40);
        sub_1B0A982D8(*v41, v42, v44, v43);
        sub_1B03B1CA0(v86, type metadata accessor for Task.Logger);
        if (v43 < 0)
        {
        }

        v47 = sub_1B0399D64(v42, v44, v92);

        *(v37 + 13) = v47;
        *(v37 + 21) = 2160;
        *(v37 + 23) = 0x786F626C69616DLL;
        *(v37 + 31) = 2085;
        v90 = v30;
        v91 = v89;
        v48 = sub_1B0E44BA8();
        v50 = sub_1B0399D64(v48, v49, v92);

        *(v37 + 33) = v50;
        v51 = v77;
        v52 = v82;
        v53 = v82;
        v54 = "[%.*hhx-%{public}s] Did create '%{sensitive,mask.mailbox}s'.";
        goto LABEL_19;
      }

      sub_1B03B1CA0(v33, type metadata accessor for Task.Logger);

      sub_1B03B1CA0(v34, type metadata accessor for Task.Logger);
      v16 = v34;
      v10 = v87;
      v13 = v33;
      v24 = v83;
    }

    else
    {
      sub_1B03B1B00(a2, v10, type metadata accessor for Task.Logger);
      v55 = v78;
      sub_1B03B1B00(a2, v78, type metadata accessor for Task.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v56 = sub_1B0E43988();
      v57 = sub_1B0E458E8();

      LODWORD(v82) = v57;
      if (os_log_type_enabled(v56, v57))
      {
        v77 = v56;
        v37 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v92[0] = v76;
        *v37 = v79;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        v58 = v10;
        v59 = v80;
        v60 = v55;
        v61 = *(v55 + *(v80 + 20));
        sub_1B03B1CA0(v60, type metadata accessor for Task.Logger);
        *(v37 + 10) = v61;
        *(v37 + 11) = 2082;
        v62 = &v58[*(v59 + 20)];
        v63 = *(v62 + 1);
        v65 = *(v62 + 2);
        v64 = *(v62 + 3);
        v66 = *(v62 + 4);
        v67 = *(v62 + 10);
        sub_1B0A982D8(*v62, v63, v65, v64);
        sub_1B03B1CA0(v87, type metadata accessor for Task.Logger);
        if (v64 < 0)
        {
        }

        v68 = sub_1B0399D64(v63, v65, v92);

        *(v37 + 13) = v68;
        *(v37 + 21) = 2160;
        *(v37 + 23) = 0x786F626C69616DLL;
        *(v37 + 31) = 2085;
        v90 = v30;
        v91 = v89;
        v69 = sub_1B0E44BA8();
        v71 = sub_1B0399D64(v69, v70, v92);

        *(v37 + 33) = v71;
        v51 = v82;
        v52 = v77;
        v53 = v77;
        v54 = "[%.*hhx-%{public}s] Failed to create '%{sensitive,mask.mailbox}s'.";
LABEL_19:
        _os_log_impl(&dword_1B0389000, v53, v51, v54, v37, 0x29u);
        v72 = v76;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v72, -1, -1);
        MEMORY[0x1B272C230](v37, -1, -1);

        v13 = v84;
        v3 = v85;
        a2 = v81;
        v16 = v86;
        v10 = v87;
        v24 = v83;
      }

      else
      {
        sub_1B03B1CA0(v55, type metadata accessor for Task.Logger);

        sub_1B03B1CA0(v10, type metadata accessor for Task.Logger);
        v13 = v84;
        v3 = v85;
        v16 = v86;
      }
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      v73 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v74 = v75;
      sub_1B0B6E6B8(v73);

      *(v74 + 137) = 1;
      return;
    }

    v23 = *(v19 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1B0A980A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0A977F8(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

uint64_t sub_1B0A9812C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

unint64_t sub_1B0A98160()
{
  result = qword_1EB6E3EC0;
  if (!qword_1EB6E3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EC0);
  }

  return result;
}

unint64_t sub_1B0A981B8()
{
  result = qword_1EB6E3EC8;
  if (!qword_1EB6E3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EC8);
  }

  return result;
}

unint64_t sub_1B0A9820C(uint64_t a1)
{
  result = sub_1B0A98234();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0A98234()
{
  result = qword_1EB6E3ED0;
  if (!qword_1EB6E3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3ED0);
  }

  return result;
}

BOOL sub_1B0A98288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0 || a2 != a4)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0 || a2 != a4)
  {
    return 0;
  }

  return (sub_1B04520BC(a1, a3) & 1) != 0;
}

uint64_t sub_1B0A982D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0A98328(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v35 = a3;
  v42 = type metadata accessor for TaskHistory.Running(0);
  v34 = *(v42 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v34 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  result = sub_1B0B70260(a1, a2 | ((HIDWORD(a2) & 1) << 32), a5);
  v38 = *(result + 16);
  if (!v38)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  v21 = 0;
  v36 = result + 32;
  v39 = result;
  while (1)
  {
    if (v21 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v22 = *(v40 + 16);
    if (v22)
    {
      break;
    }

LABEL_3:
    ++v21;
    result = v39;
    if (v21 == v38)
    {
      goto LABEL_19;
    }
  }

  v23 = *(v36 + 4 * v21);
  v24 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v25 = *(v37 + 72);
  while (1)
  {
    sub_1B03B1B00(v24, v19, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v19, v16, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v16, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v24 += v25;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

  v26 = *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v16, type metadata accessor for ClientCommand);
  if (v26 != v23)
  {
    goto LABEL_8;
  }

  v27 = *(v35 + 16);
  if (v27)
  {
    v28 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    do
    {
      v30 = v41;
      sub_1B03B1B00(v28, v41, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v30, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v10, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v31 = *(v10 + 2);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v10[*(v32 + 64)], type metadata accessor for ClientCommand);
        if (v31 == v23)
        {
          goto LABEL_3;
        }
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v33 = 1;
LABEL_20:

  return v33;
}

uint64_t sub_1B0A986FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v34 = a2;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  result = sub_1B0B6FE60(a1 & 1, a4);
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 32;
  v38 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v40 = v20;
    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    v20 = v40 + 1;
    result = v38;
    if (v40 + 1 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + 4 * v40);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_1B03B1B00(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v18, v15, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v15, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v15, type metadata accessor for ClientCommand);
  if (v25 != v22)
  {
    goto LABEL_8;
  }

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v28 = *(v33 + 72);
    do
    {
      sub_1B03B1B00(v27, v11, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v11, v8, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v8, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v29 = *(v8 + 2);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v8[*(v30 + 64)], type metadata accessor for ClientCommand);
        if (v29 == v22)
        {
          goto LABEL_3;
        }
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

uint64_t sub_1B0A98AC4(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B1B00(a1, v6, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    return sub_1B03B1CA0(v6, type metadata accessor for UntaggedResponse);
  }

  v7 = 0;
  v8 = *v6;
  v9 = *(v6 + 1);
  v10 = *(v6 + 4);
  v11 = *(v6 + 3);
  v12 = *(v6 + 4);
  result = *(v6 + 5);
  v14 = *(v1 + 64);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  while (1)
  {
LABEL_5:
    if (!v17)
    {
      while (1)
      {
        v18 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v18 >= ((v15 + 63) >> 6))
        {
        }

        v17 = *(v14 + 64 + 8 * v18);
        ++v7;
        if (v17)
        {
          v7 = v18;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_10:
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = (*(v14 + 56) + ((v7 << 10) | (16 * v19)));
    if ((v20[2] | (v20[2] << 32)) == (v10 | (v10 << 32)))
    {
      v21 = *v20;
      v22 = *(*v20 + 16);
      if (v22 == *(v9 + 16))
      {
        break;
      }
    }
  }

  if (v22)
  {
    v23 = v21 == v9;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
LABEL_20:
    v26 = *(v6 + 5);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB2E0(v27, v9, v10);
  }

  v24 = (v21 + 32);
  v25 = (v9 + 32);
  while (v22)
  {
    if (*v24 != *v25)
    {
      goto LABEL_5;
    }

    ++v24;
    ++v25;
    if (!--v22)
    {
      goto LABEL_20;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0A98D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0A98E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v34 = a2;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  result = sub_1B0B708B0(a1, a4);
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 32;
  v38 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v40 = v20;
    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    v20 = v40 + 1;
    result = v38;
    if (v40 + 1 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + 4 * v40);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_1B03B1B00(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v18, v15, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v15, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v15, type metadata accessor for ClientCommand);
  if (v25 != v22)
  {
    goto LABEL_8;
  }

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v28 = *(v33 + 72);
    do
    {
      sub_1B03B1B00(v27, v11, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v11, v8, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v8, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v29 = *(v8 + 2);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v8[*(v30 + 64)], type metadata accessor for ClientCommand);
        if (v29 == v22)
        {
          goto LABEL_3;
        }
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

uint64_t sub_1B0A991E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v40 = a2;
  v35 = a1;
  v42 = type metadata accessor for TaskHistory.Running(0);
  v34 = *(v42 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  result = a4(a3, v17);
  v38 = *(result + 16);
  if (!v38)
  {
LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  v21 = 0;
  v36 = result + 32;
  v39 = result;
  while (1)
  {
    if (v21 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v41 = v21;
    v22 = *(v40 + 16);
    if (v22)
    {
      break;
    }

LABEL_3:
    v21 = v41 + 1;
    result = v39;
    if (v41 + 1 == v38)
    {
      goto LABEL_19;
    }
  }

  v23 = *(v36 + 4 * v41);
  v24 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v25 = *(v37 + 72);
  while (1)
  {
    sub_1B03B1B00(v24, v19, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v19, v15, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v15, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v24 += v25;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

  v26 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v15, type metadata accessor for ClientCommand);
  if (v26 != v23)
  {
    goto LABEL_8;
  }

  v27 = *(v35 + 16);
  if (v27)
  {
    v28 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    do
    {
      sub_1B03B1B00(v28, v11, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v11, v8, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v8, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v30 = *(v8 + 2);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v8[*(v31 + 64)], type metadata accessor for ClientCommand);
        if (v30 == v23)
        {
          goto LABEL_3;
        }
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v32 = 1;
LABEL_20:

  return v32;
}

uint64_t sub_1B0A995C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v36 = a3;
  v43 = type metadata accessor for TaskHistory.Running(0);
  v35 = *(v43 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for TaskHistory.Previous(0);
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  result = sub_1B0B71364(a1, a2, a5);
  v39 = *(result + 16);
  if (!v39)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  v22 = 0;
  v37 = result + 32;
  v40 = result;
  while (1)
  {
    if (v22 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v42 = v22;
    v23 = *(v41 + 16);
    if (v23)
    {
      break;
    }

LABEL_3:
    v22 = v42 + 1;
    result = v40;
    if (v42 + 1 == v39)
    {
      goto LABEL_19;
    }
  }

  v24 = *(v37 + 4 * v42);
  v25 = v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v26 = *(v38 + 72);
  while (1)
  {
    sub_1B03B1B00(v25, v20, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v20, v17, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v17, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v25 += v26;
    if (!--v23)
    {
      goto LABEL_3;
    }
  }

  v27 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v17, type metadata accessor for ClientCommand);
  if (v27 != v24)
  {
    goto LABEL_8;
  }

  v28 = *(v36 + 16);
  if (v28)
  {
    v29 = v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v30 = *(v35 + 72);
    do
    {
      sub_1B03B1B00(v29, v13, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v13, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v10, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v31 = *(v10 + 2);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v10[*(v32 + 64)], type metadata accessor for ClientCommand);
        if (v31 == v24)
        {
          goto LABEL_3;
        }
      }

      v29 += v30;
      --v28;
    }

    while (v28);
  }

  v33 = 1;
LABEL_20:

  return v33;
}

uint64_t sub_1B0A99994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v34 = a2;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  result = sub_1B0B716F0(a1, a4);
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 32;
  v38 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v40 = v20;
    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    v20 = v40 + 1;
    result = v38;
    if (v40 + 1 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + 4 * v40);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_1B03B1B00(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v18, v15, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v15, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v15, type metadata accessor for ClientCommand);
  if (v25 != v22)
  {
    goto LABEL_8;
  }

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v28 = *(v33 + 72);
    do
    {
      sub_1B03B1B00(v27, v11, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v11, v8, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v8, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v29 = *(v8 + 2);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v8[*(v30 + 64)], type metadata accessor for ClientCommand);
        if (v29 == v22)
        {
          goto LABEL_3;
        }
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_1B0A99D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A99DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0A99E38(char *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(a2 + 48) + ((v10 << 10) | (16 * v11));
      result = sub_1B0A9ACF4(*v12, *(v12 + 8));
      if (result)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v25 = v13;
    v26 = result;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1B0AFF450(0, *(a1 + 2) + 1, 1, a1);
    }

    v16 = *(a1 + 2);
    v15 = *(a1 + 3);
    v17 = v16 + 1;
    v18 = v26;
    v19 = v25;
    if (v16 >= v15 >> 1)
    {
      v24 = v16 + 1;
      v21 = a1;
      v22 = *(a1 + 2);
      v23 = sub_1B0AFF450((v15 > 1), v16 + 1, 1, v21);
      v16 = v22;
      v17 = v24;
      v19 = v25;
      a1 = v23;
      v18 = v26;
    }

    *(a1 + 2) = v17;
    v20 = &a1[16 * v16];
    *(v20 + 4) = v18;
    *(v20 + 5) = v19;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1B0A9A02C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!v4)
  {
    return v5 == 0;
  }

  return v5 && a1[1] == a2[1] && (sub_1B04520BC(v4, v5) & 1) != 0;
}

uint64_t sub_1B0A9A08C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B0BAB9A0(MEMORY[0x1E69E7CC0]);
  a2[7] = v4;
  v29 = a2;
  a2[9] = MEMORY[0x1E69E7CD0];
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  while (v7)
  {
LABEL_11:
    v12 = *(a1 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
    v13 = *v12;
    v14 = *(v12 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1B03AB888(v13, v14);
    v18 = v4[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (v4[3] < v21)
    {
      sub_1B0B2FCCC(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1B03AB888(v13, v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v16;
    sub_1B0B8D68C();
    v16 = v27;
    if (v22)
    {
LABEL_4:
      v10 = v16;

      *(v4[7] + v10) = 0;
      goto LABEL_5;
    }

LABEL_17:
    v4[(v16 >> 6) + 8] |= 1 << v16;
    v24 = v4[6] + 16 * v16;
    *v24 = v13;
    *(v24 + 8) = v14;
    *(v4[7] + v16) = 0;
    v25 = v4[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_24;
    }

    v4[2] = v26;
LABEL_5:
    v7 &= v7 - 1;
    v29[7] = v4;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v29[6] = sub_1B0A9A2FC(a1);
      v29[8] = a1;
      *v29 = &type metadata for DeleteMailboxes;
      return sub_1B0E461E8();
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0A9A2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1B0B09EE4(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v9;
  v30 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = *v12;
    v33 = v12[1];
    v14 = *(v3 + 56) + 16 * v7;
    v15 = v3;
    v16 = *v14;
    v32 = *(v14 + 8);
    v17 = *(v34 + 16);
    v18 = *(v34 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v17 >= v18 >> 1)
    {
      result = sub_1B0B09EE4((v18 > 1), v17 + 1, 1);
    }

    *(v34 + 16) = v17 + 1;
    v19 = v34 + 32 * v17;
    *(v19 + 32) = v13;
    *(v19 + 40) = v33;
    *(v19 + 48) = v16;
    *(v19 + 56) = v32;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v15;
    v4 = v30;
    v20 = *(v30 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v29;
    if (v29 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v27 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1B0425168(v7, v29, 0);
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v29, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v10;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1B0A9A570(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = *(v1 + 56);
  if (*(v16 + 16) == 1 && (v17 = sub_1B0B86998(v16)) != 0)
  {
    v19 = v17;
    v20 = v18;
    sub_1B03B1B68(a1, v15, type metadata accessor for Task.Logger);
    sub_1B03B1B68(a1, v12, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = sub_1B0E43988();
    v22 = sub_1B0E45908();

    if (os_log_type_enabled(v21, v22))
    {
      v52 = v20;
      v23 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53 = v51;
      *v23 = 68158723;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v24 = *&v12[*(v3 + 20)];
      sub_1B03B1D00(v12, type metadata accessor for Task.Logger);
      *(v23 + 10) = v24;
      *(v23 + 11) = 2082;
      v25 = &v15[*(v3 + 20)];
      v26 = *(v25 + 1);
      v27 = *(v25 + 2);
      v28 = *(v25 + 3);
      v29 = *(v25 + 4);
      v30 = *(v25 + 10);
      sub_1B0A982D8(*v25, v26, v27, v28);
      sub_1B03B1D00(v15, type metadata accessor for Task.Logger);
      if (v28 < 0)
      {
      }

      v31 = sub_1B0399D64(v26, v27, &v53);

      *(v23 + 13) = v31;
      *(v23 + 21) = 2160;
      *(v23 + 23) = 0x786F626C69616DLL;
      *(v23 + 31) = 2085;
      v54 = v19;
      v55 = v52;
      v32 = sub_1B0E44BA8();
      v34 = sub_1B0399D64(v32, v33, &v53);

      *(v23 + 33) = v34;
      _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v23, 0x29u);
      v35 = v51;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v35, -1, -1);
      v36 = v23;
LABEL_11:
      MEMORY[0x1B272C230](v36, -1, -1);

      return;
    }

    sub_1B03B1D00(v12, type metadata accessor for Task.Logger);

    v49 = v15;
  }

  else
  {
    sub_1B03B1B68(a1, v9, type metadata accessor for Task.Logger);
    sub_1B03B1B68(a1, v6, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AA0088(v1, &v54);
    v21 = sub_1B0E43988();
    v37 = sub_1B0E45908();
    if (os_log_type_enabled(v21, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = 68158466;
      *(v38 + 4) = 2;
      *(v38 + 8) = 256;
      v40 = *&v6[*(v3 + 20)];
      sub_1B03B1D00(v6, type metadata accessor for Task.Logger);
      *(v38 + 10) = v40;
      *(v38 + 11) = 2082;
      v41 = &v9[*(v3 + 20)];
      v42 = *(v41 + 1);
      v43 = *(v41 + 2);
      v44 = *(v41 + 3);
      v45 = *(v41 + 4);
      v46 = *(v41 + 10);
      sub_1B0A982D8(*v41, v42, v43, v44);
      sub_1B03B1D00(v9, type metadata accessor for Task.Logger);
      if (v44 < 0)
      {
      }

      v47 = sub_1B0399D64(v42, v43, &v53);

      *(v38 + 13) = v47;
      *(v38 + 21) = 2048;
      v48 = *(v56 + 16);
      sub_1B0AA00C0(&v54);
      *(v38 + 23) = v48;
      _os_log_impl(&dword_1B0389000, v21, v37, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v38, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B272C230](v39, -1, -1);
      v36 = v38;
      goto LABEL_11;
    }

    sub_1B0AA00C0(&v54);
    sub_1B03B1D00(v6, type metadata accessor for Task.Logger);

    v49 = v9;
  }

  sub_1B03B1D00(v49, type metadata accessor for Task.Logger);
}

uint64_t sub_1B0A9AAAC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClientCommand(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 72);
  if (*(v7 + 16))
  {
    v8 = -1 << *(v7 + 32);
    v9 = sub_1B0E460B8();
    v10 = sub_1B0B6FBCC(v9, *(v7 + 36));
    v12 = v11;
    *v6 = v10;
    *(v6 + 2) = v11;
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3F10, &qword_1B0EC23D0);
    v14 = *(v13 + 48);
    *a1 = v10;
    *(a1 + 8) = v12;
    sub_1B0AA0164(v6, a1 + v14, type metadata accessor for ClientCommand);
    (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3F10, &qword_1B0EC23D0);
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }
}

uint64_t sub_1B0A9AC70()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = -1 << *(v1 + 32);
  v3 = sub_1B0E460B8();
  return sub_1B0A9C83C(&v5, v3, *(v1 + 36));
}

uint64_t sub_1B0A9ACF4(uint64_t result, unsigned int a2)
{
  v3 = *(v2 + 48);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = v3 + 32;
  while (1)
  {
    v7 = (v6 + 32 * v5);
    if ((*(v7 + 6) | (*(v7 + 6) << 32)) == (a2 | (a2 << 32)))
    {
      v8 = v7[2];
      v9 = *(v8 + 16);
      if (v9 == *(result + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  if (v9)
  {
    v10 = v8 == result;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_14:
    v13 = *v7;
    v14 = v7[1];
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v11 = (v8 + 32);
    v12 = (result + 32);
    while (v9)
    {
      if (*v11 != *v12)
      {
        goto LABEL_3;
      }

      ++v11;
      ++v12;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A9ADBC(uint64_t a1, uint64_t a2)
{
  v117 = a1;
  v121 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v112 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v112 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v112 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v112 - v20;
  v21 = *(v2 + 56);
  v22 = *(v21 + 64);
  v128 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = v15;
  v28 = 0;
  *&v29 = 68158723;
  v118 = v29;
  v123 = v9;
  v124 = v21;
  v122 = a2;
  v119 = v12;
  v120 = v6;
  v127 = v15;
  v113 = v18;
  v126 = v26;
  while (v25)
  {
    v30 = v129;
LABEL_12:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v28 << 6);
    v34 = *(v21 + 56);
    v35 = *(v21 + 48) + 16 * v33;
    v130 = *v35;
    v18 = *(v35 + 8);
    v36 = *(v34 + v33);
    if (v36 > 1)
    {
      if (v36 == 2)
      {
LABEL_19:
        sub_1B03B1B68(a2, v9, type metadata accessor for Task.Logger);
        sub_1B03B1B68(a2, v6, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v57 = a2;
        v58 = sub_1B0E43988();
        v59 = sub_1B0E45908();

        if (os_log_type_enabled(v58, v59))
        {
          LODWORD(v115) = v59;
          v116 = v58;
          v125 = v18;
          v40 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v133[0] = v114;
          *v40 = v118;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          v60 = v121;
          v61 = *&v6[*(v121 + 20)];
          sub_1B03B1D00(v6, type metadata accessor for Task.Logger);
          *(v40 + 10) = v61;
          *(v40 + 11) = 2082;
          v62 = &v9[*(v60 + 20)];
          v63 = *(v62 + 1);
          v64 = *(v62 + 2);
          v18 = *(v62 + 3);
          v65 = *(v62 + 4);
          v66 = *(v62 + 10);
          sub_1B0A982D8(*v62, v63, v64, v18);
          sub_1B03B1D00(v9, type metadata accessor for Task.Logger);
          if (v18 < 0)
          {
          }

          v67 = sub_1B0399D64(v63, v64, v133);

          *(v40 + 13) = v67;
          *(v40 + 21) = 2160;
          *(v40 + 23) = 0x786F626C69616DLL;
          *(v40 + 31) = 2085;
          v131 = v130;
          LODWORD(v132) = v125;
          v68 = sub_1B0E44BA8();
          v70 = sub_1B0399D64(v68, v69, v133);

          *(v40 + 33) = v70;
          v55 = v116;
          _os_log_impl(&dword_1B0389000, v116, v115, "[%.*hhx-%{public}s] Failed to delete '%{sensitive,mask.mailbox}s'.", v40, 0x29u);
          v71 = v114;
          swift_arrayDestroy();
          v56 = v71;
          goto LABEL_27;
        }

        sub_1B03B1D00(v6, type metadata accessor for Task.Logger);

        sub_1B03B1D00(v9, type metadata accessor for Task.Logger);
        v26 = v126;
        v27 = v127;
        a2 = v57;
        v21 = v124;
      }

      else
      {
        sub_1B03B1B68(a2, v27, type metadata accessor for Task.Logger);
        v72 = v12;
        sub_1B03B1B68(a2, v12, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v73 = sub_1B0E43988();
        v74 = sub_1B0E45908();

        if (os_log_type_enabled(v73, v74))
        {
          LODWORD(v115) = v74;
          v116 = v73;
          v125 = v18;
          v40 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v133[0] = v75;
          *v40 = v118;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          v76 = v127;
          v77 = v121;
          v78 = *(v72 + *(v121 + 20));
          sub_1B03B1D00(v72, type metadata accessor for Task.Logger);
          *(v40 + 10) = v78;
          *(v40 + 11) = 2082;
          v79 = v76 + *(v77 + 20);
          v80 = *(v79 + 8);
          v81 = *(v79 + 16);
          v18 = *(v79 + 24);
          v82 = *(v79 + 32);
          v83 = *(v79 + 40);
          sub_1B0A982D8(*v79, v80, v81, v18);
          sub_1B03B1D00(v76, type metadata accessor for Task.Logger);
          if (v18 < 0)
          {
          }

          v84 = sub_1B0399D64(v80, v81, v133);

          *(v40 + 13) = v84;
          *(v40 + 21) = 2160;
          *(v40 + 23) = 0x786F626C69616DLL;
          *(v40 + 31) = 2085;
          v131 = v130;
          LODWORD(v132) = v125;
          v85 = sub_1B0E44BA8();
          v87 = sub_1B0399D64(v85, v86, v133);

          *(v40 + 33) = v87;
          v55 = v116;
          _os_log_impl(&dword_1B0389000, v116, v115, "[%.*hhx-%{public}s] Did delete '%{sensitive,mask.mailbox}s'.", v40, 0x29u);
          swift_arrayDestroy();
          v56 = v75;
LABEL_27:
          MEMORY[0x1B272C230](v56, -1, -1);
          MEMORY[0x1B272C230](v40, -1, -1);

          v9 = v123;
          v21 = v124;
          a2 = v122;
          v12 = v119;
          v6 = v120;
          v26 = v126;
          v27 = v127;
        }

        else
        {
          sub_1B03B1D00(v72, type metadata accessor for Task.Logger);

          v88 = v127;
          sub_1B03B1D00(v127, type metadata accessor for Task.Logger);
          v26 = v126;
          v12 = v72;
          v9 = v123;
          v27 = v88;
        }
      }
    }

    else
    {
      if (!v36)
      {
        goto LABEL_19;
      }

      v125 = *(v35 + 8);
      sub_1B03B1B68(a2, v30, type metadata accessor for Task.Logger);
      v37 = v113;
      sub_1B03B1B68(a2, v113, type metadata accessor for Task.Logger);
      v18 = v130;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = sub_1B0E43988();
      v39 = sub_1B0E45908();

      if (os_log_type_enabled(v38, v39))
      {
        LODWORD(v116) = v39;
        v115 = v38;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v133[0] = v41;
        *v40 = v118;
        *(v40 + 4) = 2;
        *(v40 + 8) = 256;
        v42 = v121;
        v43 = *(v37 + *(v121 + 20));
        v18 = type metadata accessor for Task.Logger;
        sub_1B03B1D00(v37, type metadata accessor for Task.Logger);
        *(v40 + 10) = v43;
        *(v40 + 11) = 2082;
        v44 = v129;
        v45 = v129 + *(v42 + 20);
        v46 = *(v45 + 8);
        v47 = *(v45 + 16);
        v48 = *(v45 + 24);
        v49 = *(v45 + 32);
        v50 = *(v45 + 40);
        sub_1B0A982D8(*v45, v46, v47, v48);
        sub_1B03B1D00(v44, type metadata accessor for Task.Logger);
        if (v48 < 0)
        {
        }

        v51 = sub_1B0399D64(v46, v47, v133);

        *(v40 + 13) = v51;
        *(v40 + 21) = 2160;
        *(v40 + 23) = 0x786F626C69616DLL;
        *(v40 + 31) = 2085;
        v131 = v130;
        LODWORD(v132) = v125;
        v52 = sub_1B0E44BA8();
        v54 = sub_1B0399D64(v52, v53, v133);

        *(v40 + 33) = v54;
        v55 = v115;
        _os_log_impl(&dword_1B0389000, v115, v116, "[%.*hhx-%{public}s] Skipped deleting '%{sensitive,mask.mailbox}s' because it's in use.", v40, 0x29u);
        swift_arrayDestroy();
        v56 = v41;
        goto LABEL_27;
      }

      sub_1B03B1D00(v37, type metadata accessor for Task.Logger);

      sub_1B03B1D00(v129, type metadata accessor for Task.Logger);
      v26 = v126;
      v27 = v127;
      v9 = v123;
    }
  }

  v30 = v129;
  while (1)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v31 >= v26)
    {
      break;
    }

    v25 = *(v128 + 8 * v31);
    ++v28;
    if (v25)
    {
      v28 = v31;
      goto LABEL_12;
    }
  }

  v89 = sub_1B0A9C924(v21, sub_1B0A9CB80, sub_1B0A9CB80);
  v90 = v89;
  v91 = *(v89 + 16);
  if (!v91)
  {
    goto LABEL_33;
  }

  v30 = sub_1B0B890E4(*(v89 + 16), 0);
  v92 = sub_1B0B8C230(&v131, v30 + 32, v91, v90);
  sub_1B03D91F8();
  v93 = v92 == v91;
  v18 = v117;
  if (!v93)
  {
    __break(1u);
LABEL_33:

    v30 = MEMORY[0x1E69E7CC0];
    v18 = v117;
  }

  sub_1B0A9BA24(v30);
  v95 = (v18 + 176);
  v94 = *(v18 + 176);
  if (*(v18 + 192) != 1)
  {

    goto LABEL_46;
  }

  v97 = *(v18 + 184);
  v131 = *(v18 + 168);
  v96 = v131;

  sub_1B03B9A2C(v96, v94, v97, 1);
  v18 = sub_1B0A9DBD4(&v131, v30);

  v98 = v131;
  v99 = *(v131 + 16);
  if (v18 > v99)
  {
    goto LABEL_63;
  }

  if (v18 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    result = sub_1B0AFF420(0, *(v30 + 16) + 1, 1, v30);
    v30 = result;
    goto LABEL_57;
  }

  if (__OFADD__(v99, v18 - v99))
  {
    goto LABEL_65;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v18 > *(v98 + 3) >> 1)
  {
    if (v99 <= v18)
    {
      v101 = v18;
    }

    else
    {
      v101 = v99;
    }

    v98 = sub_1B03D9FC4(isUniquelyReferenced_nonNull_native, v101, 1, v98);
    v131 = v98;
  }

  sub_1B0BAB6F0(v18, v99, 0);

  v30 = 1;
  result = sub_1B03BB638(v96, v94, v97, 1);
  v18 = v117;
  *(v117 + 168) = v98;
  *v95 = 0;
  v95[1] = 0;
  *(v18 + 192) = 1;
  v21 = v124;
LABEL_46:
  v103 = 0;
  *(v18 + 137) = 1;
  v104 = 1 << *(v21 + 32);
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  v106 = v105 & *(v21 + 64);
  v107 = (v104 + 63) >> 6;
  do
  {
    if (!v106)
    {
      while (1)
      {
        v108 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_62;
        }

        if (v108 >= v107)
        {
          return result;
        }

        v106 = *(v128 + 8 * v108);
        ++v103;
        if (v106)
        {
          v103 = v108;
          goto LABEL_55;
        }
      }
    }

    v108 = v103;
LABEL_55:
    v109 = __clz(__rbit64(v106));
    v106 &= v106 - 1;
  }

  while (*(*(v21 + 56) + (v109 | (v108 << 6))) != 1);
  v30 = *(v18 + 248);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_57:
  v111 = *(v30 + 16);
  v110 = *(v30 + 24);
  if (v111 >= v110 >> 1)
  {
    result = sub_1B0AFF420((v110 > 1), v111 + 1, 1, v30);
    v30 = result;
  }

  *(v30 + 16) = v111 + 1;
  *(v30 + v111 + 32) = 3;
  *(v18 + 248) = v30;
  return result;
}

unint64_t sub_1B0A9BA24(unint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (result + 40);
    do
    {
      if (*(v3 + 48))
      {
        result = sub_1B03AB888(*(v4 - 1), *v4);
        if (v7)
        {
          v8 = result;
          v9 = *(v3 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v11 = *(v3 + 48);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B8D330();
          }

          v5 = *(*(v11 + 48) + 16 * v8);

          v6 = *(*(v11 + 56) + 72 * v8);

          result = sub_1B0B900C4(v8, v11);
          *(v3 + 48) = v11;
        }
      }

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1B0A9BAF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_1B0A9D5CC(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

unint64_t sub_1B0A9BB2C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_1B0A9174C(a6, a2, a3, a4, a5);
  if (v7)
  {
  }

  v10 = *(v6 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + 56);
  result = sub_1B0A9C100(3, v8, v9, isUniquelyReferenced_nonNull_native);
  *(v6 + 56) = v13;
  return result;
}

unint64_t sub_1B0A9BBD4(unint64_t result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  v6 = a5[7] + 72 * result;
  *(v6 + 64) = *(a4 + 64);
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_1B0A9BC3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B0A9BC84(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  result = sub_1B0AA0164(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MoveAndCopyMessages.CommandID);
  *(a4[7] + a1) = a3 & 1;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1B0A9BD3C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1B0A9BD80(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1B0A9BDC4(unint64_t result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B0A9BE10(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6] + 16 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B074BA2C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1B0A9BEB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B074BA2C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1B0A9BF5C(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B03AB888(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B0B2F69C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B03AB888(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B0B8D330();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 72 * v11;

    return sub_1B0A9FCD8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = v22[6] + 16 * v11;
  *v25 = a2;
  *(v25 + 8) = a3;
  v26 = v22[7] + 72 * v11;
  *v26 = *a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 32);
  v29 = *(a1 + 48);
  *(v26 + 64) = *(a1 + 64);
  *(v26 + 32) = v28;
  *(v26 + 48) = v29;
  *(v26 + 16) = v27;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0A9C100(char a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B03AB888(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B0B2FCCC(v16, a4 & 1);
      v20 = *v5;
      result = sub_1B03AB888(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B0B8D68C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = v22[6] + 16 * result;
  *v23 = a2;
  *(v23 + 8) = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0A9C268(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B0ADFFE8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1B0B8DA00();
    result = v19;
    goto LABEL_8;
  }

  sub_1B0B30620(v16, a4 & 1);
  v20 = *v5;
  result = sub_1B0ADFFE8(a3);
  if ((v17 & 1) == (v21 & 1))
  {
LABEL_8:
    v22 = *v5;
    if (v17)
    {
      v23 = v22[7] + 12 * result;
      *v23 = a1;
      *(v23 + 8) = a2 & 1;
      return result;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v24 = v22[7] + 12 * result;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
    v25 = v22[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v22[2] = v26;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

unint64_t sub_1B0A9C3B8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B03FE284(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B0B30248(v14, a3 & 1);
      v18 = *v4;
      result = sub_1B03FE284(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1B0B8D810();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    v22 = v20[7] + 184 * result;
    v23 = *a1;
    v24 = a1[1];
    v25 = a1[3];
    *(v22 + 32) = a1[2];
    *(v22 + 48) = v25;
    *v22 = v23;
    *(v22 + 16) = v24;
    v26 = a1[4];
    v27 = a1[5];
    v28 = a1[7];
    *(v22 + 96) = a1[6];
    *(v22 + 112) = v28;
    *(v22 + 64) = v26;
    *(v22 + 80) = v27;
    v29 = a1[8];
    v30 = a1[9];
    v31 = a1[10];
    *(v22 + 176) = *(a1 + 176);
    *(v22 + 144) = v30;
    *(v22 + 160) = v31;
    *(v22 + 128) = v29;
    v32 = v20[2];
    v13 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v13)
    {
      v20[2] = v33;
      return result;
    }

    goto LABEL_15;
  }

  v21 = (v20[7] + 184 * result);

  return sub_1B075DEC8(a1, v21);
}

unint64_t sub_1B0A9C540(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1B03FE284(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B0B31A64(v18, a5 & 1);
      v22 = *v6;
      result = sub_1B03FE284(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1B0B8E628();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 4 * result) = a4;
    v27 = v24[7] + 24 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
    v28 = v24[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v24[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7] + 24 * result;
  v26 = *(v25 + 8);
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3 & 1;
}

uint64_t sub_1B0A9C6C4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B0AE0058(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1B0B8E7A4();
    goto LABEL_7;
  }

  sub_1B0B31D20(result, a3 & 1);
  v21 = *v4;
  result = sub_1B0AE0058(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B03B1B68(a2, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1B0A9BC84(v14, v11, a1 & 1, v20);
}

uint64_t sub_1B0A9C83C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1B0B8D048();
    *v4 = v10;
  }

  if (a2 < 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = (*(v10 + 48) + 16 * a2);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v10 + 56) + 16 * a2;
    v15 = *v14;
    LODWORD(v14) = *(v14 + 8);
    *a1 = v15;
    *(a1 + 8) = v14;
    sub_1B0B8FF20(a2, v10);
    *v4 = v10;
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B0A9C924(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1B0A9CC6C(v13, v7, v5, a3);
  result = MEMORY[0x1B272C230](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *sub_1B0A9CA94(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 3)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1B0B21F40(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1B0B21F40(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B0A9CB80(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) != 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1B0B21F40(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1B0B21F40(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0A9CC6C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1B0A9CCF4(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A9CD58(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(a5 + 56) + 16 * a2;
    v9 = *v8;
    LODWORD(v8) = *(v8 + 8);
    *result = v9;
    *(result + 8) = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

_BYTE *sub_1B0A9CDFC(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 48) + 16 * a2;
    v6 = *v5;
    v7 = *(v5 + 8);
    *result = *(*(a5 + 56) + a2);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B0A9CE80(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(a5 + 56) + 32 * a2;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    LODWORD(v8) = *(v8 + 24);
    *result = v9;
    *(result + 8) = v10;
    *(result + 16) = v11;
    *(result + 24) = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_1B0A9CF38(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (!v4)
  {
    return v5 == 0;
  }

  return v5 && *(a1 + 16) == a2[1] && (sub_1B04520BC(v4, v5) & 1) != 0;
}

BOOL sub_1B0A9CFA8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 & 0x3000000000000000;
  v9 = (v5 >> 60) & 3;
  if (!v9)
  {
    if (!v8)
    {
      return sub_1B0AB8858(v4, v5, v6, v7) & 1;
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_1B0AB8858(v4, v5, v6, v7) & 1;
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

uint64_t sub_1B0A9D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B150F4(sub_1B0AA00F0, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09DC4(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09DC4((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

unint64_t sub_1B0A9D194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  result = sub_1B0A9D06C(a1, a2, a4);
  v15 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v16 = 0;
    v23 = result + 32;
    while (v16 < *(v15 + 16))
    {
      v17 = *(v26 + 16);
      if (v17)
      {
        v18 = *(v23 + 4 * v16);
        v19 = v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v20 = *(v24 + 72);
        do
        {
          sub_1B03B1B68(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_1B03E1BE8(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v10, type metadata accessor for TaskHistory.Previous);
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      if (++v16 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v22 = 0;
LABEL_13:

    return v22;
  }

  return result;
}

unint64_t sub_1B0A9D3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t))
{
  v30 = a3;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  result = sub_1B0A9F1C0(a1, a2, a4, a5, a6);
  v19 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v20 = 0;
    v27 = result + 32;
    while (v20 < *(v19 + 16))
    {
      v21 = *(v30 + 16);
      if (v21)
      {
        v22 = *(v27 + 4 * v20);
        v23 = v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v24 = *(v28 + 72);
        do
        {
          sub_1B03B1B68(v23, v17, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v17, v14, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v25 = *(v14 + 2);
            result = sub_1B03E1BE8(*v14);
            if (v25 == v22)
            {
              v26 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v14, type metadata accessor for TaskHistory.Previous);
          }

          v23 += v24;
          --v21;
        }

        while (v21);
      }

      if (++v20 == v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v26 = 0;
LABEL_13:

    return v26;
  }

  return result;
}

uint64_t sub_1B0A9D5CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B0A9AC70();
  if (v5)
  {
    v8 = v6;
    v9 = v7;
    v10 = v5;
    v11 = swift_allocObject();
    result = v10;
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    *(v11 + 32) = 1;
    return result;
  }

  if (!*(v2[8] + 16) && !*(v2[9] + 16) && (sub_1B0A9D3A8(0, 0, a1, a2, sub_1B0AA0068, sub_1B0B14F6C) & 1) == 0)
  {
    v13 = sub_1B0A9C924(v2[7], sub_1B0A9CA94, sub_1B0A9CA94);
    v14 = sub_1B0A99E38(MEMORY[0x1E69E7CC0], v13);

    if (*(v14 + 16))
    {
      v15 = swift_allocObject();
      result = 0;
      *(v15 + 16) = v14;
      return result;
    }
  }

  return 1;
}

unint64_t sub_1B0A9D784(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v24 = a1;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9FB38(a2, a3);
  v13 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v14 = 0;
    v21 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v24 + 16);
      if (v15)
      {
        v16 = *(v21 + 4 * v14);
        v17 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v18 = *(v22 + 72);
        do
        {
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

unint64_t sub_1B0A9D990(unint64_t result)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0x12)
  {
    if (*(*(v1 + 56) + 16))
    {
      v2 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v5 = v1;
      v6 = *(v1 + 56);
      result = sub_1B03AB888(v2, v3);
      if (v7)
      {
        if (*(v4 + 16))
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v8 = *(v5 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v10 = *(v5 + 56);
          sub_1B0A9C100(1, v2, v3, isUniquelyReferenced_nonNull_native);

          *(v5 + 56) = v10;
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v10, v2, v3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B0A9DA88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 32); ; i += 11)
  {
    v6 = i[9];
    v17[8] = i[8];
    v17[9] = v6;
    v17[10] = i[10];
    v7 = i[5];
    v17[4] = i[4];
    v17[5] = v7;
    v8 = i[7];
    v17[6] = i[6];
    v17[7] = v8;
    v9 = i[1];
    v17[0] = *i;
    v17[1] = v9;
    v10 = i[3];
    v17[2] = i[2];
    v17[3] = v10;
    v16 = DWORD2(v9);
    v15 = v9;
    MEMORY[0x1EEE9AC00](a1);
    v13[2] = &v15;
    sub_1B03A35B8(v17, &v14);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B0B38150(sub_1B0AA02B0, v13, a2);

    a1 = sub_1B03A3614(v17);
    if (v11)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B0A9DBD4(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_1B0A9DA88(*a1, a2);
  v115 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = (v6 + 16);
    v10 = *(v6 + 16);
    if (v9 == v10)
    {
      return v2;
    }

    v77 = a1;
    v78 = a2;
    v12 = 176 * result + 208;
    while (v9 < v10)
    {
      v79 = v6;
      v13 = (v6 + v12);
      v14 = *(v6 + v12);
      v15 = *(v6 + v12 + 32);
      v105 = *(v6 + v12 + 16);
      v106 = v15;
      v104 = v14;
      v16 = *(v6 + v12 + 48);
      v17 = *(v6 + v12 + 64);
      v18 = *(v6 + v12 + 96);
      v109 = *(v6 + v12 + 80);
      v110 = v18;
      v107 = v16;
      v108 = v17;
      v19 = *(v6 + v12 + 112);
      v20 = *(v6 + v12 + 128);
      v21 = *(v6 + v12 + 160);
      v113 = *(v6 + v12 + 144);
      v114 = v21;
      v111 = v19;
      v112 = v20;
      DWORD2(v82) = DWORD2(v105);
      *&v82 = v105;
      MEMORY[0x1EEE9AC00](result);
      v76[2] = &v82;
      sub_1B03A35B8(&v104, &v93);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = v115;
      v23 = sub_1B0B38150(sub_1B0AA0018, v76, v78);
      v115 = v22;

      result = sub_1B03A3614(&v104);
      if (v23)
      {
        v6 = v79;
      }

      else
      {
        if (v9 == v2)
        {
          v6 = v79;
        }

        else
        {
          v6 = v79;
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          v24 = *v11;
          if (v2 >= *v11)
          {
            goto LABEL_25;
          }

          v25 = (v79 + 32 + 176 * v2);
          v26 = *v25;
          v27 = v25[2];
          v83 = v25[1];
          v84 = v27;
          v82 = v26;
          v28 = v25[3];
          v29 = v25[4];
          v30 = v25[6];
          v87 = v25[5];
          v88 = v30;
          v85 = v28;
          v86 = v29;
          v31 = v25[7];
          v32 = v25[8];
          v33 = v25[10];
          v91 = v25[9];
          v92 = v33;
          v89 = v31;
          v90 = v32;
          if (v9 >= v24)
          {
            goto LABEL_26;
          }

          v34 = *v13;
          v35 = v13[2];
          v94 = v13[1];
          v95 = v35;
          v93 = v34;
          v36 = v13[3];
          v37 = v13[4];
          v38 = v13[6];
          v98 = v13[5];
          v99 = v38;
          v96 = v36;
          v97 = v37;
          v39 = v13[7];
          v40 = v13[8];
          v41 = v13[10];
          v102 = v13[9];
          v103 = v41;
          v100 = v39;
          v101 = v40;
          sub_1B03A35B8(&v82, v81);
          sub_1B03A35B8(&v93, v81);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B03D0E54(v6);
            v6 = result;
          }

          if (v2 >= *(v6 + 16))
          {
            goto LABEL_27;
          }

          v42 = (v6 + 176 * v2);
          v43 = v42[2];
          v44 = v42[4];
          v80[1] = v42[3];
          v80[2] = v44;
          v80[0] = v43;
          v45 = v42[5];
          v46 = v42[6];
          v47 = v42[8];
          v80[5] = v42[7];
          v80[6] = v47;
          v80[3] = v45;
          v80[4] = v46;
          v48 = v42[9];
          v49 = v42[10];
          v50 = v42[12];
          v80[9] = v42[11];
          v80[10] = v50;
          v80[7] = v48;
          v80[8] = v49;
          v51 = v93;
          v52 = v95;
          v42[3] = v94;
          v42[4] = v52;
          v42[2] = v51;
          v53 = v96;
          v54 = v97;
          v55 = v99;
          v42[7] = v98;
          v42[8] = v55;
          v42[5] = v53;
          v42[6] = v54;
          v56 = v100;
          v57 = v101;
          v58 = v103;
          v42[11] = v102;
          v42[12] = v58;
          v42[9] = v56;
          v42[10] = v57;
          result = sub_1B03A3614(v80);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_28;
          }

          v59 = (v6 + v12);
          v60 = *(v6 + v12);
          v61 = *(v6 + v12 + 32);
          v81[1] = *(v6 + v12 + 16);
          v81[2] = v61;
          v81[0] = v60;
          v62 = *(v6 + v12 + 48);
          v63 = *(v6 + v12 + 64);
          v64 = *(v6 + v12 + 96);
          v81[5] = *(v6 + v12 + 80);
          v81[6] = v64;
          v81[3] = v62;
          v81[4] = v63;
          v65 = *(v6 + v12 + 112);
          v66 = *(v6 + v12 + 128);
          v67 = *(v6 + v12 + 160);
          v81[9] = *(v6 + v12 + 144);
          v81[10] = v67;
          v81[7] = v65;
          v81[8] = v66;
          v68 = v82;
          v69 = v84;
          v59[1] = v83;
          v59[2] = v69;
          *v59 = v68;
          v70 = v85;
          v71 = v86;
          v72 = v88;
          v59[5] = v87;
          v59[6] = v72;
          v59[3] = v70;
          v59[4] = v71;
          v73 = v89;
          v74 = v90;
          v75 = v92;
          v59[9] = v91;
          v59[10] = v75;
          v59[7] = v73;
          v59[8] = v74;
          result = sub_1B03A3614(v81);
          *v77 = v6;
        }

        ++v2;
      }

      ++v9;
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      v12 += 176;
      if (v9 == v10)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}