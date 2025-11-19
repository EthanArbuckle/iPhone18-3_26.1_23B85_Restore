uint64_t anonymous namespace::PropertyBagWriter::writePolymorphicPointer(_anonymous_namespace_::PropertyBagWriter *this, re::PolymorphicData *a2, char *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  __dst = 0;
  v8 = memcpy(&__dst, v6, *(v7 + 20));
  v9 = *(a2 + 2);
  v10 = *v9;
  if (v10)
  {
    v11 = *(v9 + 1) + 24;
    while (*v11 != __dst)
    {
      v11 += 40;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v16 = v15;
    if (v14)
    {
      if (*(*(v11 - 16) + 16) == 8)
      {
        v17 = v15;
        v13 = 1;
LABEL_14:

        return v13;
      }

      v18 = *re::foundationSerializationLogObjects(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "PropertyBagWriter; polymorphic type must be structure.", v20, 2u);
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

LABEL_5:
  v12 = *re::foundationSerializationLogObjects(v8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "PropertyBagWriter; failed to find polymorphic type.", buf, 2u);
  }

  return 0;
}

__n128 std::__function::__func<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18CD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, unsigned int **a2, unsigned int **a3, double a4)
{
  v5 = *a3;
  v6 = *(a1 + 24);
  v10 = v9;
  if (v7)
  {
    v13 = v11;
    if (v12)
    {
      [**(a1 + 8) setObject:v11 forKey:v10];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t anonymous namespace::PropertyBagWriter::writeMember(_anonymous_namespace_::PropertyBagWriter *this, const re::IntrospectionMember *a2, char *a3)
{
  v5 = this;
  v41[3] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 10);
  v7 = *(a2 + 9);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v14 = *re::foundationSerializationLogObjects(this);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v15 = v14;
        re::makePrettyMemberName(*(a2 + 1), &v39);
        if (BYTE8(v39))
        {
          v16 = v40;
        }

        else
        {
          v16 = &v39 + 9;
        }

        *buf = 136315138;
        *&buf[4] = v16;
        v17 = "PropertyBagWriter; unexpected parent for '%s'.";
LABEL_20:
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);

        if (v39 && (BYTE8(v39) & 1) != 0)
        {
          (*(*v39 + 40))();
        }

        goto LABEL_30;
      }

LABEL_15:
      v18 = *re::foundationSerializationLogObjects(this);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v15 = v18;
      re::makePrettyMemberName(*(a2 + 1), &v39);
      if (BYTE8(v39))
      {
        v19 = v40;
      }

      else
      {
        v19 = &v39 + 9;
      }

      *buf = 136315138;
      *&buf[4] = v19;
      v17 = "PropertyBagWriter; unknown member type for '%s'.";
      goto LABEL_20;
    }

    v22 = *&a3[v7];
    if (v22)
    {
      v23 = *(*(*(a2 + 2) + 48) + 64);
      v24 = *v23;
      if (**v23 != 2)
      {
        v25 = (v23 + 1);
        do
        {
          v26 = *v25++;
          v24 = v26;
        }

        while (*v26 != 2);
      }

      v27 = *(a2 + 6);
      *&v39 = &a3[*(a2 + 16)];
      *(&v39 + 1) = v27;
      v40 = *(v24 + 1);
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
      objc_claimAutoreleasedReturnValue();
      v5 = 1;
    }

    v21 = v5 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = *(a2 + 6);
        if (v8)
        {
          v9 = *(a2 + 16);
          __dst = 0;
          v10 = memcpy(&__dst, &a3[v9], *(v8 + 20));
          if (!(__dst >> 31))
          {
            re::IntrospectionCStyleArray::IntrospectionCStyleArray(&v39, *(*(a2 + 2) + 48), __dst);
            ArcSharedObject::ArcSharedObject(buf, 0);
            v33 = 0x800000001;
            v34 = 8;
            v35 = 0;
            v36 = 0;
            v37 = 0xFFFFFFFFLL;
            *buf = &unk_1F5CBD2C0;
            v38[0] = &v39;
            v38[1] = 0;
            LOBYTE(v5) = v28;
            v21 = v28 & 0xFFFFFFFFFFFFFF00;
            *buf = &unk_1F5CBD2C0;
            re::SerializedReference<re::IntrospectionBase const*>::reset(v38);
            *buf = &unk_1F5CCF868;
            objc_destructInstance(&buf[8]);
            *&v39 = &unk_1F5CB0038;
            re::SerializedReference<re::IntrospectionBase const*>::reset(v41);
            *&v39 = &unk_1F5CCF868;
            objc_destructInstance(&v39 + 8);
            return v5 | v21;
          }

          v11 = *re::foundationSerializationLogObjects(v10);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          v12 = *(a2 + 1);
          LODWORD(v39) = 136315138;
          *(&v39 + 4) = v12;
          v13 = "PropertyBagWriter; array too big for member '%s'.";
          goto LABEL_36;
        }

        v11 = *re::foundationSerializationLogObjects(this);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v30 = *(a2 + 1);
          LODWORD(v39) = 136315138;
          *(&v39 + 4) = v30;
          v13 = "PropertyBagWriter; failed to get array length for member '%s'.";
LABEL_36:
          _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v13, &v39, 0xCu);
        }

LABEL_30:
        v21 = 0;
        LOBYTE(v5) = 0;
        return v5 | v21;
      }

      goto LABEL_15;
    }

    LOBYTE(v5) = v20;
    v21 = v20 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | v21;
}

uint64_t anonymous namespace::PropertyBagWriter::writeMemberArray(_anonymous_namespace_::PropertyBagWriter *this, const re::IntrospectionStructure *a2, char *a3, NSMutableArray *a4)
{
  v30[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!*(a2 + 14))
  {
LABEL_22:
    v22 = 1;
    goto LABEL_25;
  }

  v8 = 0;
  v24 = v27;
  v9 = 0x1E696A000uLL;
  while (1)
  {
    v10 = *(*(a2 + 8) + 8 * v8);
    if (*v10 != 1)
    {
      goto LABEL_21;
    }

    if (*(v10 + 40) != 3)
    {
      break;
    }

    {
      goto LABEL_24;
    }

LABEL_21:
    if (++v8 >= *(a2 + 14))
    {
      goto LABEL_22;
    }
  }

  v13 = v12;
  if (v11)
  {
    v14 = *(v9 + 3776);
    re::makePrettyMemberName(*(v10 + 8), &v25);
    if (v26)
    {
      v15 = v28;
    }

    else
    {
      v15 = v24;
    }

    v16 = [v14 stringWithUTF8String:{v15, v24}];
    if (v25 && (v26 & 1) != 0)
    {
      (*(*v25 + 40))();
    }

    v17 = v9;
    v18 = *(v9 + 3776);
    re::getPrettyTypeName(*(v10 + 16), &v25);
    if (v26)
    {
      v19 = v28;
    }

    else
    {
      v19 = v24;
    }

    v20 = [v18 stringWithUTF8String:v19];
    if (v25 && (v26 & 1) != 0)
    {
      (*(*v25 + 40))();
    }

    v29[0] = @"name";
    v29[1] = @"type";
    v30[0] = v16;
    v30[1] = v20;
    v29[2] = @"value";
    v30[2] = v13;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    [(NSMutableArray *)v7 addObject:v21];

    v9 = v17;
    goto LABEL_21;
  }

LABEL_24:
  v22 = 0;
LABEL_25:

  return v22;
}

void serializeJSON(_anonymous_namespace_ *this@<X2>, uint64_t a2@<X0>, const re::TypeInfo *a3@<X1>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a6 + 16) = 0;
  ++*(a6 + 24);
  re::LeakTestAllocator::LeakTestAllocator(v83, "ScratchAllocator", a4);
  v81 = &unk_1F5CBC828;
  v82 = v83;
  v73 = 0;
  v74 = a6;
  v72 = &unk_1F5D0A850;
  v75[0] = &unk_1F5D0A8A8;
  v75[1] = 0;
  v75[2] = &unk_1F5CAC9D0;
  v75[3] = v75;
  v76 = 0;
  v78 = 0;
  v77 = 0;
  v79 = 0x2000;
  v80 = 0;
  *&v84[0].var0 = 0x92C38D6C53AC6124;
  v84[0].var1 = "JSON-SerializerV1";
  v30 = &unk_1F5D18D88;
  v14 = re::StringID::StringID(&v31, v84);
  v42 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37[0] = 0;
  v43 = 15;
  v45 = 1024;
  v44 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CC0, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_1EE1C3CC0);
    if (v14)
    {
      re::Defaults::intValue("maxSerializationDepth", v21, &v26);
      if (v26)
      {
        v22 = SDWORD1(v26);
      }

      else
      {
        v22 = 0;
      }

      _MergedGlobals_558 = v22;
      __cxa_guard_release(&qword_1EE1C3CC0);
    }
  }

  if (_MergedGlobals_558)
  {
    v45 = _MergedGlobals_558;
  }

  v48[4] = 0;
  v49 = 0;
  v46 = 0u;
  v47 = 0u;
  memset(v48, 0, 28);
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v56 = 0x7FFFFFFFLL;
  v30 = &unk_1F5D18D20;
  v57 = 1;
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v60 = 0x7FFFFFFFLL;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v71 = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  if (*&v84[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v30, *a3);
  LOBYTE(v57) = a7;
  v50 = a5;
  v15 = v51;
  if (*(v51 + 6) != v52)
  {
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v30);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v30, v15);
  }

  v32 = &v72;
  v33 = 0;
  v34 = 0;
  v35 = a4;
  v36 = v83;
  *&v84[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v37, v84);
  if (v84[0].var0 == 1 && v84[1].var1 && (*&v84[2].var0 & 1) != 0)
  {
    (*(*v84[1].var1 + 40))();
  }

  v40[0] = v35;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v40, 0x40uLL);
  ++v41;
  *&v84[0].var0 = 0;
  memset(&v84[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v40, v84);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v48[0] = v36;
  re::DynamicArray<char>::setCapacity(v48, 0);
  ++LODWORD(v48[3]);
  v17 = (*(*v35 + 32))(v35, 72, 8);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 512;
  *(v17 + 56) = 324;
  *(v17 + 60) = 2304;
  *(&v46 + 1) = v17;
  *(v17 + 64) = 0x100000001;
  v18 = (*(*v35 + 32))(v35, 48, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v18 + 40) = 256;
  *&v46 = v18;
  v19 = *(&v46 + 1);
  **(&v46 + 1) = v18;
  *(v19 + 60) = 0;
  *(v19 + 32) = *(v19 + 24);
  v30[6](&v30);
  if (isObject)
  {
    if ((v37[0] & 1) == 0)
    {
      (v30[9])(&v30, "object", 0, a2, a3, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v32, "root", 0) & 1) == 0)
    {
      *&v84[0].var0 = v37[0];
      if (v37[0] == 1)
      {
        *&v84[0].var1 = v38;
        re::DynamicString::DynamicString(&v84[1].var1, v39);
      }

      v26 = *&v84[0].var1;
      goto LABEL_27;
    }

    if ((v37[0] & 1) == 0)
    {
      (v30[9])(&v30, "object", 0, a2, a3, this, 0);
    }
  }

  v30[7](&v30);
  if (v37[0] != 1)
  {
    *a8 = 1;
    goto LABEL_31;
  }

  *&v84[0].var0 = v37[0];
  *&v84[0].var1 = v38;
  re::DynamicString::DynamicString(&v84[1].var1, v39);
  v26 = *&v84[0].var1;
LABEL_27:
  re::DynamicString::DynamicString(&v27, &v84[1].var1);
  *a8 = 0;
  *(a8 + 8) = v26;
  *(a8 + 24) = v27;
  *(a8 + 48) = v29;
  *(a8 + 32) = v28;
  v29 = 0;
  v27 = 0;
  v28 = 0uLL;
  if (v84[0].var0 == 1 && v84[1].var1 && (*&v84[2].var0 & 1) != 0)
  {
    (*(*v84[1].var1 + 40))();
  }

LABEL_31:
  v30 = &unk_1F5D18D20;
  if (*(&v68 + 1))
  {
    if (v71)
    {
      (*(**(&v68 + 1) + 40))();
    }

    v71 = 0;
    v69 = 0uLL;
    *(&v68 + 1) = 0;
    ++v70;
  }

  if (*(&v65 + 1))
  {
    if (v68)
    {
      (*(**(&v65 + 1) + 40))();
    }

    *&v68 = 0;
    v66 = 0uLL;
    *(&v65 + 1) = 0;
    ++v67;
  }

  if (v61)
  {
    if (v65)
    {
      (*(*v61 + 40))();
    }

    *&v65 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    ++v64;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v58);
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v30);
  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v72);
  re::LeakTestAllocator::~LeakTestAllocator(v83, v20);
}

uint64_t anonymous namespace::isObject(_anonymous_namespace_ *this, const re::TypeInfo *a2)
{
  if (*(this + 12) != 8)
  {
    return 0;
  }

  v3 = re::TypeInfo::name(this);
  if (*v3 >> 1 == 94623636)
  {
    v4 = v3[1];
    if (v4 == "char*")
    {
      return 0;
    }

    result = strcmp(v4, "char*");
    if (!result)
    {
      return result;
    }
  }

  v6 = re::TypeInfo::name(this);
  if (*v6 >> 1 != 0x134375A94D9F7110)
  {
    goto LABEL_8;
  }

  v7 = v6[1];
  if (v7 == "DynamicString")
  {
    return 0;
  }

  result = strcmp(v7, "DynamicString");
  if (!result)
  {
    return result;
  }

LABEL_8:
  v8 = re::TypeInfo::name(this);
  if (*v8 >> 1 == 0x22C6ED80D0CLL)
  {
    v9 = v8[1];
    if (v9 != "StringID")
    {
      return strcmp(v9, "StringID") != 0;
    }

    return 0;
  }

  return 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(a1[34], (a1 + 1), &v13);
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *__s, int a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    LOBYTE(v8[0]) = 2;
    DWORD1(v8[0]) = a3 | 0x20;
    *(&v8[0] + 1) = __s;
    memset(&v8[1], 0, 32);
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v8);
  }

  return v3 ^ 1u;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18D20;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void deserializeJSON(re::TypeInfo *this@<X2>, re::Allocator *a2@<X4>, const char *a3@<X0>, const re::TypeInfo *a4@<X1>, _anonymous_namespace_ *a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  Instance = re::TypeInfo::createInstance(this, a2, 0);
  deserializeJSONIntoExistingObject(a5, a3, a4, this, a2, a6, Instance, v19);
  if (v19[0] == 1)
  {
    *a7 = v19[0];
    *(a7 + 8) = Instance;
  }

  else
  {
    re::TypeInfo::releaseInstance(this, Instance, a2, 0);
    v15 = v20;
    re::DynamicString::DynamicString(&v16, &v21);
    *a7 = 0;
    *(a7 + 8) = v15;
    *(a7 + 24) = v16;
    *(a7 + 48) = v18;
    *(a7 + 32) = v17;
    if (v21)
    {
      if (v22)
      {
        (*(*v21 + 40))();
      }
    }
  }
}

void deserializeJSONIntoExistingObject(_anonymous_namespace_ *this@<X3>, const char *a2@<X0>, const re::TypeInfo *a3@<X1>, re::TypeRegistry **a4@<X2>, re::Allocator *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = a3;
  re::LeakTestAllocator::LeakTestAllocator(v76, "ScratchAllocator", a5);
  re::FixedArrayInputStream::FixedArrayInputStream(v75, a2, v12, -1);
  *&v77[0].var0 = 0x3ADDC8B1C9D5BCA6;
  v77[0].var1 = "JSON-DeserializerV1";
  v32 = &unk_1F5D18F98;
  v15 = re::StringID::StringID(&v33, v77);
  v45 = 0;
  v42[1] = 0;
  v43 = 0;
  v42[0] = 0;
  v44 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39[0] = 0;
  v46 = 15;
  v48 = 1024;
  v47 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CD0, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(&qword_1EE1C3CD0);
    if (v15)
    {
      re::Defaults::intValue("maxSerializationDepth", v24, &v28);
      if (v28)
      {
        v25 = SDWORD1(v28);
      }

      else
      {
        v25 = 0;
      }

      qword_1EE1C3CC8 = v25;
      __cxa_guard_release(&qword_1EE1C3CD0);
    }
  }

  if (qword_1EE1C3CC8)
  {
    v48 = qword_1EE1C3CC8;
  }

  v51[4] = 0;
  v52 = 0;
  v49 = 0u;
  v50 = 0u;
  memset(v51, 0, 28);
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v59 = 0x7FFFFFFFLL;
  v32 = &unk_1F5D18F30;
  v60 = 1;
  memset(v61, 0, sizeof(v61));
  v62 = 0;
  v63 = 0x7FFFFFFFLL;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v74 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  if (*&v77[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v32, *a4);
  v53 = a6;
  v16 = v54;
  if (*(v54 + 6) != v55)
  {
    re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v32);
    re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v32, v16);
  }

  v34 = v75;
  v35 = 0;
  v36 = 0;
  v37 = a5;
  v38 = v76;
  *&v77[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v39, v77);
  if (v77[0].var0 == 1 && v77[1].var1 && (*&v77[2].var0 & 1) != 0)
  {
    (*(*v77[1].var1 + 40))(v77[1].var1, v77[2].var1);
  }

  v42[0] = v37;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v42, 0x40uLL);
  ++v44;
  *&v77[0].var0 = 0;
  memset(&v77[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v42, v77);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v51[0] = v38;
  re::DynamicArray<char>::setCapacity(v51, 0);
  ++LODWORD(v51[3]);
  v18 = (*(*v37 + 32))(v37, 72, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v18 + 40) = 256;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 2;
  *(&v50 + 1) = v18;
  v19 = (*(*v37 + 32))(v37, 104, 8);
  *&v50 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(v19, 0, 1024, 0);
  *&v77[0].var0 = v34;
  v77[0].var1 = 0;
  v77[1].var0 = 0;
  v77[1].var1 = 0;
  *&v77[2].var0 = 0;
  v20 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(v50, v77);
  v21 = *(v20 + 88);
  if (v21)
  {
    v22 = v21 > 0x11 ? "Unknown error." : *(off_1E8721C38 + (((v21 << 32) - 0x100000000) >> 29));
    re::DynamicString::format("Failed to deserialize JSON: %s (Offset %zu)", &v28, v22, *(v20 + 96));
    if (v28)
    {
      if (BYTE8(v28))
      {
        (*(*v28 + 40))();
      }
    }
  }

  if (v77[1].var1 < v77[1].var0)
  {
    (*(**&v77[0].var0 + 24))(*&v77[0].var0, (*&v77[1].var0 - LODWORD(v77[1].var1)));
  }

  v32[6](&v32);
  if (isObject)
  {
    if ((v39[0] & 1) == 0)
    {
      (v32[9])(&v32, "object", 0, a7, a4, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v34, "root", 0) & 1) == 0)
    {
      *&v77[0].var0 = v39[0];
      if (v39[0] == 1)
      {
        *&v77[0].var1 = v40;
        re::DynamicString::DynamicString(&v77[1].var1, v41);
      }

      v28 = *&v77[0].var1;
      goto LABEL_36;
    }

    if ((v39[0] & 1) == 0)
    {
      (v32[9])(&v32, "object", 0, a7, a4, this, 0);
      if ((v39[0] & 1) == 0)
      {
        ++*(v45 + 48 * v43 - 16);
      }
    }
  }

  v32[7](&v32);
  if (v39[0] != 1)
  {
    *a8 = 1;
    goto LABEL_40;
  }

  *&v77[0].var0 = v39[0];
  *&v77[0].var1 = v40;
  re::DynamicString::DynamicString(&v77[1].var1, v41);
  v28 = *&v77[0].var1;
LABEL_36:
  re::DynamicString::DynamicString(&v29, &v77[1].var1);
  *a8 = 0;
  *(a8 + 8) = v28;
  *(a8 + 24) = v29;
  *(a8 + 48) = v31;
  *(a8 + 32) = v30;
  v31 = 0;
  v29 = 0;
  v30 = 0uLL;
  if (v77[0].var0 == 1 && v77[1].var1 && (*&v77[2].var0 & 1) != 0)
  {
    (*(*v77[1].var1 + 40))();
  }

LABEL_40:
  v32 = &unk_1F5D18F30;
  if (*(&v71 + 1))
  {
    if (v74)
    {
      (*(**(&v71 + 1) + 40))();
    }

    v74 = 0;
    v72 = 0uLL;
    *(&v71 + 1) = 0;
    ++v73;
  }

  if (*(&v68 + 1))
  {
    if (v71)
    {
      (*(**(&v68 + 1) + 40))();
    }

    *&v71 = 0;
    v69 = 0uLL;
    *(&v68 + 1) = 0;
    ++v70;
  }

  if (v64)
  {
    if (v68)
    {
      (*(*v64 + 40))();
    }

    *&v68 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    ++v67;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v61);
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v32);
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v75);
  re::LeakTestAllocator::~LeakTestAllocator(v76, v23);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(a1[34], (a1 + 1), &v13);
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *a2, int a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v14 = v3;
  v15 = v4;
  if (result)
  {
    if (*(result + 11) == 3)
    {
      LOBYTE(v9) = 2;
      DWORD1(v9) = a3;
      *(&v9 + 1) = a2;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = result;
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v9);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void serializeJSON(uint64_t a1@<X0>, const re::TypeInfo *a2@<X1>, const re::TypeInfo *a3@<X2>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, CFDataRef theData@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if (CFDataGetLength(theData))
  {

    serializeJSON<re::CFDataOutputStream>(a3, a1, a2, a4, a5, theData, a7, a8);
  }

  else
  {

    serializeJSON<re::CFDataBufferedOutputStream>(a3, a1, a2, a4, a5, theData, a7, a8);
  }
}

void serializeJSON<re::CFDataBufferedOutputStream>(_anonymous_namespace_ *this@<X2>, uint64_t a2@<X0>, const re::TypeInfo *a3@<X1>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, __CFData *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v75 = a6;
  re::LeakTestAllocator::LeakTestAllocator(v74, "ScratchAllocator", a4);
  Length = CFDataGetLength(a6);
  re::CFDataBufferedOutputStream::CFDataBufferedOutputStream(v73, &v75, Length);
  *&v76[0].var0 = 0x4C90FC40E60EA890;
  v76[0].var1 = "JSON-SerializerV1-CFData";
  v31 = &unk_1F5D193F8;
  v15 = re::StringID::StringID(&v32, v76);
  v43 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38[0] = 0;
  v44 = 15;
  v46 = 1024;
  v45 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CE0, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(&qword_1EE1C3CE0);
    if (v15)
    {
      re::Defaults::intValue("maxSerializationDepth", v22, &v27);
      if (v27)
      {
        v23 = SDWORD1(v27);
      }

      else
      {
        v23 = 0;
      }

      qword_1EE1C3CD8 = v23;
      __cxa_guard_release(&qword_1EE1C3CE0);
    }
  }

  if (qword_1EE1C3CD8)
  {
    v46 = qword_1EE1C3CD8;
  }

  v49[4] = 0;
  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, 28);
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v57 = 0x7FFFFFFFLL;
  v31 = &unk_1F5D19390;
  v58 = 1;
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v61 = 0x7FFFFFFFLL;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v72 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  if (*&v76[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, *a3);
  LOBYTE(v58) = a7;
  v51 = a5;
  v16 = v52;
  if (*(v52 + 6) != v53)
  {
    re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v31);
    re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, v16);
  }

  v33 = v73;
  v34 = 0;
  v35 = 0;
  v36 = a4;
  v37 = v74;
  *&v76[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v38, v76);
  if (v76[0].var0 == 1 && v76[1].var1 && (*&v76[2].var0 & 1) != 0)
  {
    (*(*v76[1].var1 + 40))(v76[1].var1, v76[2].var1);
  }

  v41[0] = v36;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v41, 0x40uLL);
  ++v42;
  *&v76[0].var0 = 0;
  memset(&v76[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v41, v76);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v49[0] = v37;
  re::DynamicArray<char>::setCapacity(v49, 0);
  ++LODWORD(v49[3]);
  v18 = (*(*v36 + 32))(v36, 64, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 512;
  *(v18 + 56) = 324;
  *(v18 + 60) = 0;
  *(&v47 + 1) = v18;
  v19 = (*(*v36 + 32))(v36, 48, 8);
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 256;
  *&v47 = v19;
  v20 = *(&v47 + 1);
  **(&v47 + 1) = v19;
  *(v20 + 60) = 0;
  *(v20 + 32) = *(v20 + 24);
  v31[6](&v31);
  if (isObject)
  {
    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v33, "root", 0) & 1) == 0)
    {
      *&v76[0].var0 = v38[0];
      if (v38[0] == 1)
      {
        *&v76[0].var1 = v39;
        re::DynamicString::DynamicString(&v76[1].var1, v40);
      }

      v27 = *&v76[0].var1;
      goto LABEL_27;
    }

    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(&v33);
  }

  v31[7](&v31);
  if (v38[0] != 1)
  {
    *a8 = 1;
    goto LABEL_31;
  }

  *&v76[0].var0 = v38[0];
  *&v76[0].var1 = v39;
  re::DynamicString::DynamicString(&v76[1].var1, v40);
  v27 = *&v76[0].var1;
LABEL_27:
  re::DynamicString::DynamicString(&v28, &v76[1].var1);
  *a8 = 0;
  *(a8 + 8) = v27;
  *(a8 + 24) = v28;
  *(a8 + 48) = v30;
  *(a8 + 32) = v29;
  v30 = 0;
  v28 = 0;
  v29 = 0uLL;
  if (v76[0].var0 == 1 && v76[1].var1 && (*&v76[2].var0 & 1) != 0)
  {
    (*(*v76[1].var1 + 40))();
  }

LABEL_31:
  v31 = &unk_1F5D19390;
  if (*(&v69 + 1))
  {
    if (v72)
    {
      (*(**(&v69 + 1) + 40))();
    }

    v72 = 0;
    v70 = 0uLL;
    *(&v69 + 1) = 0;
    ++v71;
  }

  if (*(&v66 + 1))
  {
    if (v69)
    {
      (*(**(&v66 + 1) + 40))();
    }

    *&v69 = 0;
    v67 = 0uLL;
    *(&v66 + 1) = 0;
    ++v68;
  }

  if (v62)
  {
    if (v66)
    {
      (*(*v62 + 40))();
    }

    *&v66 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    ++v65;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v59);
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v31);
  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(v73);
  re::LeakTestAllocator::~LeakTestAllocator(v74, v21);
}

void serializeJSON<re::CFDataOutputStream>(_anonymous_namespace_ *this@<X2>, uint64_t a2@<X0>, const re::TypeInfo *a3@<X1>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, const __CFData *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v82 = a6;
  re::LeakTestAllocator::LeakTestAllocator(v81, "ScratchAllocator", a4);
  Length = CFDataGetLength(a6);
  v74 = 0;
  v75 = &v82;
  v73 = &unk_1F5D0A950;
  v76 = &unk_1F5CAC948;
  MutableBytePtr = CFDataGetMutableBytePtr(a6);
  v78 = Length;
  v79 = Length;
  v80 = 0;
  *&v83[0].var0 = 0x4C90FC40E60EA890;
  v83[0].var1 = "JSON-SerializerV1-CFData";
  v31 = &unk_1F5D19608;
  v15 = re::StringID::StringID(&v32, v83);
  v43 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38[0] = 0;
  v44 = 15;
  v46 = 1024;
  v45 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CF0, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(&qword_1EE1C3CF0);
    if (v15)
    {
      re::Defaults::intValue("maxSerializationDepth", v22, &v27);
      if (v27)
      {
        v23 = SDWORD1(v27);
      }

      else
      {
        v23 = 0;
      }

      qword_1EE1C3CE8 = v23;
      __cxa_guard_release(&qword_1EE1C3CF0);
    }
  }

  if (qword_1EE1C3CE8)
  {
    v46 = qword_1EE1C3CE8;
  }

  v49[4] = 0;
  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, 28);
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v57 = 0x7FFFFFFFLL;
  v31 = &unk_1F5D195A0;
  v58 = 1;
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v61 = 0x7FFFFFFFLL;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v72 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  if (*&v83[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, *a3);
  LOBYTE(v58) = a7;
  v51 = a5;
  v16 = v52;
  if (*(v52 + 6) != v53)
  {
    re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v31);
    re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, v16);
  }

  v33 = &v73;
  v34 = 0;
  v35 = 0;
  v36 = a4;
  v37 = v81;
  *&v83[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v38, v83);
  if (v83[0].var0 == 1 && v83[1].var1 && (*&v83[2].var0 & 1) != 0)
  {
    (*(*v83[1].var1 + 40))(v83[1].var1, v83[2].var1);
  }

  v41[0] = v36;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v41, 0x40uLL);
  ++v42;
  *&v83[0].var0 = 0;
  memset(&v83[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v41, v83);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v49[0] = v37;
  re::DynamicArray<char>::setCapacity(v49, 0);
  ++LODWORD(v49[3]);
  v18 = (*(*v36 + 32))(v36, 64, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 512;
  *(v18 + 56) = 324;
  *(v18 + 60) = 0;
  *(&v47 + 1) = v18;
  v19 = (*(*v36 + 32))(v36, 48, 8);
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 256;
  *&v47 = v19;
  v20 = *(&v47 + 1);
  **(&v47 + 1) = v19;
  *(v20 + 60) = 0;
  *(v20 + 32) = *(v20 + 24);
  v31[6](&v31);
  if (isObject)
  {
    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v33, "root", 0) & 1) == 0)
    {
      *&v83[0].var0 = v38[0];
      if (v38[0] == 1)
      {
        *&v83[0].var1 = v39;
        re::DynamicString::DynamicString(&v83[1].var1, v40);
      }

      v27 = *&v83[0].var1;
      goto LABEL_27;
    }

    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(&v33);
  }

  v31[7](&v31);
  if (v38[0] != 1)
  {
    *a8 = 1;
    goto LABEL_31;
  }

  *&v83[0].var0 = v38[0];
  *&v83[0].var1 = v39;
  re::DynamicString::DynamicString(&v83[1].var1, v40);
  v27 = *&v83[0].var1;
LABEL_27:
  re::DynamicString::DynamicString(&v28, &v83[1].var1);
  *a8 = 0;
  *(a8 + 8) = v27;
  *(a8 + 24) = v28;
  *(a8 + 48) = v30;
  *(a8 + 32) = v29;
  v30 = 0;
  v28 = 0;
  v29 = 0uLL;
  if (v83[0].var0 == 1 && v83[1].var1 && (*&v83[2].var0 & 1) != 0)
  {
    (*(*v83[1].var1 + 40))();
  }

LABEL_31:
  v31 = &unk_1F5D195A0;
  if (*(&v69 + 1))
  {
    if (v72)
    {
      (*(**(&v69 + 1) + 40))();
    }

    v72 = 0;
    v70 = 0uLL;
    *(&v69 + 1) = 0;
    ++v71;
  }

  if (*(&v66 + 1))
  {
    if (v69)
    {
      (*(**(&v66 + 1) + 40))();
    }

    *&v69 = 0;
    v67 = 0uLL;
    *(&v66 + 1) = 0;
    ++v68;
  }

  if (v62)
  {
    if (v66)
    {
      (*(*v62 + 40))();
    }

    *&v66 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    ++v65;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v59);
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v31);
  re::internal::MemoryOutputStream<__CFData *>::~MemoryOutputStream(&v73);
  re::LeakTestAllocator::~LeakTestAllocator(v81, v21);
}

void deserializeJSON(const __CFData *a1@<X0>, const re::TypeInfo *this@<X1>, const re::TypeInfo *a3@<X2>, re::Allocator *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  Instance = re::TypeInfo::createInstance(this, a4, 0);
  deserializeJSONIntoExistingObject(a1, this, a3, a4, a5, Instance, v17);
  if (v17[0] == 1)
  {
    *a6 = v17[0];
    *(a6 + 8) = Instance;
  }

  else
  {
    re::TypeInfo::releaseInstance(this, Instance, a4, 0);
    v13 = v18;
    re::DynamicString::DynamicString(&v14, &v19);
    *a6 = 0;
    *(a6 + 8) = v13;
    *(a6 + 24) = v14;
    *(a6 + 48) = v16;
    *(a6 + 32) = v15;
    if (v19)
    {
      if (v20)
      {
        (*(*v19 + 40))();
      }
    }
  }
}

void deserializeJSONIntoExistingObject(const __CFData *a1@<X0>, const re::TypeInfo *a2@<X1>, const re::TypeInfo *this@<X2>, re::Allocator *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v83 = a1;
  re::LeakTestAllocator::LeakTestAllocator(v82, "ScratchAllocator", a4);
  Length = CFDataGetLength(a1);
  v75 = 0;
  v76 = &v83;
  v74 = &unk_1F5D0AA38;
  v77 = &unk_1F5CAC908;
  BytePtr = CFDataGetBytePtr(a1);
  v79 = Length;
  v80 = Length;
  v81 = 0;
  *&v84[0].var0 = 0xD2A3148AB11B6CELL;
  v84[0].var1 = "JSON-DeserializerV1-CFData";
  v31 = &unk_1F5D191C8;
  v14 = re::StringID::StringID(&v32, v84);
  v44 = 0;
  v41[1] = 0;
  v42 = 0;
  v41[0] = 0;
  v43 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38[0] = 0;
  v45 = 15;
  v47 = 1024;
  v46 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3D00, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_1EE1C3D00);
    if (v14)
    {
      re::Defaults::intValue("maxSerializationDepth", v23, &v27);
      if (v27)
      {
        v24 = SDWORD1(v27);
      }

      else
      {
        v24 = 0;
      }

      qword_1EE1C3CF8 = v24;
      __cxa_guard_release(&qword_1EE1C3D00);
    }
  }

  if (qword_1EE1C3CF8)
  {
    v47 = qword_1EE1C3CF8;
  }

  v50[4] = 0;
  v51 = 0;
  v48 = 0u;
  v49 = 0u;
  memset(v50, 0, 28);
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v58 = 0x7FFFFFFFLL;
  v31 = &unk_1F5D19160;
  v59 = 1;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  v62 = 0x7FFFFFFFLL;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v73 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  if (*&v84[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, *a2);
  v52 = a5;
  v15 = v53;
  if (*(v53 + 6) != v54)
  {
    re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v31);
    re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, v15);
  }

  v33 = &v74;
  v34 = 0;
  v35 = 0;
  v36 = a4;
  v37 = v82;
  *&v84[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v38, v84);
  if (v84[0].var0 == 1 && v84[1].var1 && (*&v84[2].var0 & 1) != 0)
  {
    (*(*v84[1].var1 + 40))(v84[1].var1, v84[2].var1);
  }

  v41[0] = v36;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v41, 0x40uLL);
  ++v43;
  *&v84[0].var0 = 0;
  memset(&v84[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v41, v84);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v50[0] = v37;
  re::DynamicArray<char>::setCapacity(v50, 0);
  ++LODWORD(v50[3]);
  v17 = (*(*v36 + 32))(v36, 72, 8);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v17 + 40) = 256;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 2;
  *(&v49 + 1) = v17;
  v18 = (*(*v36 + 32))(v36, 104, 8);
  *&v49 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(v18, 0, 1024, 0);
  *&v84[0].var0 = v33;
  v84[0].var1 = 0;
  v84[1].var0 = 0;
  v84[1].var1 = 0;
  *&v84[2].var0 = 0;
  v19 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(v49, v84);
  v20 = *(v19 + 88);
  if (v20)
  {
    v21 = v20 > 0x11 ? "Unknown error." : *(off_1E8721C38 + (((v20 << 32) - 0x100000000) >> 29));
    re::DynamicString::format("Failed to deserialize JSON: %s (Offset %zu)", &v27, v21, *(v19 + 96));
    if (v27)
    {
      if (BYTE8(v27))
      {
        (*(*v27 + 40))();
      }
    }
  }

  if (v84[1].var1 < v84[1].var0)
  {
    (*(**&v84[0].var0 + 24))(*&v84[0].var0, (*&v84[1].var0 - LODWORD(v84[1].var1)));
  }

  v31[6](&v31);
  if (isObject)
  {
    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a6, a2, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v33, "root", 0) & 1) == 0)
    {
      *&v84[0].var0 = v38[0];
      if (v38[0] == 1)
      {
        *&v84[0].var1 = v39;
        re::DynamicString::DynamicString(&v84[1].var1, v40);
      }

      v27 = *&v84[0].var1;
      goto LABEL_36;
    }

    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a6, a2, this, 0);
      if ((v38[0] & 1) == 0)
      {
        ++*(v44 + 48 * v42 - 16);
      }
    }
  }

  v31[7](&v31);
  if (v38[0] != 1)
  {
    *a7 = 1;
    goto LABEL_40;
  }

  *&v84[0].var0 = v38[0];
  *&v84[0].var1 = v39;
  re::DynamicString::DynamicString(&v84[1].var1, v40);
  v27 = *&v84[0].var1;
LABEL_36:
  re::DynamicString::DynamicString(&v28, &v84[1].var1);
  *a7 = 0;
  *(a7 + 8) = v27;
  *(a7 + 24) = v28;
  *(a7 + 48) = v30;
  *(a7 + 32) = v29;
  v30 = 0;
  v28 = 0;
  v29 = 0uLL;
  if (v84[0].var0 == 1 && v84[1].var1 && (*&v84[2].var0 & 1) != 0)
  {
    (*(*v84[1].var1 + 40))();
  }

LABEL_40:
  v31 = &unk_1F5D19160;
  if (*(&v70 + 1))
  {
    if (v73)
    {
      (*(**(&v70 + 1) + 40))();
    }

    v73 = 0;
    v71 = 0uLL;
    *(&v70 + 1) = 0;
    ++v72;
  }

  if (*(&v67 + 1))
  {
    if (v70)
    {
      (*(**(&v67 + 1) + 40))();
    }

    *&v70 = 0;
    v68 = 0uLL;
    *(&v67 + 1) = 0;
    ++v69;
  }

  if (v63)
  {
    if (v67)
    {
      (*(*v63 + 40))();
    }

    *&v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    ++v66;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v60);
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v31);
  re::internal::MemoryInputStream<__CFData const*>::~MemoryInputStream(&v74);
  re::LeakTestAllocator::~LeakTestAllocator(v82, v22);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(a1[34], (a1 + 1), &v13);
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19160;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D18D88;
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18D20;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v27, &v31);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v25 = *a5;
    *(&v25 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v25);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

void *re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash();
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash();
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, char *__s, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, char *__s, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v218 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    goto LABEL_355;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = -1;
  }

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = -1;
  }

  if (v20 != v22)
  {
    v34 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    LOBYTE(v194) = v34;
    v24 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_88;
  }

LABEL_18:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) <= 2u)
    {
      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_87;
        }

        if (this == a6)
        {
          goto LABEL_251;
        }

        if (*this == *a6)
        {
          v65 = **(this + 2);
          v66 = **(a6 + 2);
          if (v65 == v66 && WORD1(v65) == WORD1(v66) && ((v66 ^ v65) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_122;
          }

          v25 = 2;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_122;
          }

          v25 = *(this + 12);
        }

        if (v25 != *(a6 + 12))
        {
          goto LABEL_355;
        }

        v67 = re::TypeInfo::name(this);
        v68 = re::TypeInfo::name(a6);
        if (!re::StringID::operator==(v67, v68))
        {
          goto LABEL_355;
        }

LABEL_122:
        if (*this != *a6)
        {
          v69 = !re::areSameTranslatedVersion(this, a6, a3);
          goto LABEL_252;
        }

        v147 = **(this + 2);
        v148 = **(a6 + 2);
        if (v147 != v148 || WORD1(v147) != WORD1(v148) || ((v148 ^ v147) & 0xFFFFFF00000000) != 0)
        {
          v69 = 1;
          goto LABEL_252;
        }

LABEL_251:
        v69 = 0;
LABEL_252:
        if (a7)
        {
          __dst.n128_u64[0] = 0;
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), __s, &__dst))
          {
            goto LABEL_356;
          }
        }

        else
        {
          if (*(*(this + 2) + 8) >= 9u)
          {
            v194 = re::TypeInfo::name(this)[1];
            v24 = "Enum type %s has invalid size: %zu bytes";
            goto LABEL_88;
          }

          EnumConstantIndex = re::internal::getEnumConstantIndex(this, a4, a3);
          if ((EnumConstantIndex & 0x80000000) != 0)
          {
            __dst.n128_u64[0] = 0;
            memcpy(&__dst, a4, *(*(this + 2) + 8));
            LOBYTE(v194) = __dst.n128_u8[0];
            re::TypeInfo::name(this);
            v24 = "Value %zu is not a valid enum constant of %s.";
            goto LABEL_88;
          }

          v150 = EnumConstantIndex;
          if (v69)
          {
            v151 = *(*a6 + 856);
            if (!v151 || (v152 = re::internal::TypeTranslationTable::translateRuntimeEnum(v151, this, v150, a6)) == 0)
            {
              v153 = re::TypeInfo::enumConstants(this);
              v155 = v150;
              if (v154 > v150)
              {
                v194 = *(v153 + 24 * v150 + 16);
                re::TypeInfo::name(a6);
                v24 = "Runtime enum constant %s does not exist in serialized type %s.";
                goto LABEL_88;
              }

LABEL_392:
              re::internal::assertLog(6, v154, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v155, v154);
              _os_crash();
              __break(1u);
            }
          }

          else
          {
            v161 = re::TypeInfo::enumConstants(this);
            v163 = v150;
            if (v162 <= v150)
            {
LABEL_391:
              re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v163, v162);
              _os_crash();
              __break(1u);
              goto LABEL_392;
            }

            if (!v161)
            {
              goto LABEL_356;
            }

            v152 = v161 + 24 * v150;
          }

          v164 = *(v152 + 16);
          __dst.n128_u64[0] = strlen(v164);
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), __s, &__dst))
          {
            goto LABEL_356;
          }
        }

        goto LABEL_384;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v91 = **(this + 2);
          v92 = **(a6 + 2);
          if (v91 != v92)
          {
            goto LABEL_355;
          }

          v18 = WORD1(v91) == WORD1(v92);
          v93 = (v92 ^ v91) & 0xFFFFFF00000000;
          if (!v18 || v93 != 0)
          {
            goto LABEL_355;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_355;
        }
      }

      v35 = re::TypeInfo::name(this);
      v36 = *v35 >> 1;
      if (v36 <= 0x16749DFF02)
      {
        if (*v35 >> 1 <= 0x685847B)
        {
          if (*v35 >> 1 > 0x2E9355)
          {
            if (v36 == 3052374)
            {
            }

            if (v36 != 3327612)
            {
              if (v36 == 97526364)
              {

                return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), __s, a4);
              }

              goto LABEL_376;
            }

LABEL_291:
          }

          if (v36 != 104431)
          {
            if (v36 == 3029738)
            {
            }

            goto LABEL_376;
          }

LABEL_313:
        }

        if (*v35 >> 1 <= 0xB9708BDD)
        {
          if (v36 != 109413500)
          {
            if (v36 == 2969009105)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), __s, a4);
            }

            goto LABEL_376;
          }

          goto LABEL_316;
        }

        if (v36 == 3111160798)
        {
        }

        if (v36 != 3393056694)
        {
          if (v36 != 0x16749D2549)
          {
            goto LABEL_376;
          }

LABEL_316:
        }

LABEL_304:
      }

      if (*v35 >> 1 > 0x303EE88E58CLL)
      {
        if (*v35 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v36 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_310;
          }

          if (v36 != 0x3AFE951B1F1F3391)
          {
            if (v36 != 0x412A40E9CB79BA35)
            {
              goto LABEL_376;
            }

            goto LABEL_304;
          }

          goto LABEL_307;
        }

        if (v36 == 0x303EE88E58DLL)
        {
          goto LABEL_304;
        }

        if (v36 == 0x2710786C3AC82DA1)
        {
LABEL_301:
        }
      }

      else
      {
        if (*v35 >> 1 > 0x18E6A9A092)
        {
          if (v36 != 0x18E6A9A093)
          {
            if (v36 != 0x303EE86A734)
            {
              if (v36 != 0x303EE8780EELL)
              {
                goto LABEL_376;
              }

LABEL_310:
            }

LABEL_307:
          }

          goto LABEL_301;
        }

        if (v36 == 0x16749DFF03)
        {
          goto LABEL_313;
        }

        if (v36 == 0x16749F63A2)
        {
          goto LABEL_291;
        }
      }

LABEL_376:
      v194 = re::TypeInfo::name(this)[1];
      v24 = "Unsupported basic type %s.";
      goto LABEL_88;
    }

    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_87;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v70 = **(this + 2);
          v71 = **(a6 + 2);
          if (v70 == v71)
          {
            v18 = WORD1(v70) == WORD1(v71);
            v72 = (v71 ^ v70) & 0xFFFFFF00000000;
            if (v18 && v72 == 0)
            {
              goto LABEL_132;
            }
          }
        }

        else if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_132;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_355;
        }

        v74 = *(this + 2);
        v75 = *(a6 + 2);
        v76 = *(v75 + 92) & 0xFFFFFF;
        if ((*(v74 + 92) & 0xFFFFFF) != 0)
        {
          if (!v76)
          {
            goto LABEL_355;
          }
        }

        else if (v76 || *(v74 + 96) != *(v75 + 96))
        {
          goto LABEL_355;
        }
      }

LABEL_132:
      if (a7)
      {
        v77 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
        re::internal::translateType(v77, v205, &v213);
        v78 = (*(*a1 + 80))(a1, &v213);
        if (!v78)
        {
          goto LABEL_222;
        }

        v79 = v78;
        v80 = *(a6 + 2);
        v81 = *(v80 + 92) & 0xFFFFFF;
        if (v81)
        {
          v82 = 0;
          v83 = 8;
        }

        else
        {
          v82 = *(v80 + 96);
          v83 = 4;
        }

        __dst.n128_u64[0] = v82;
        if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, &__dst, v83))
        {
          goto LABEL_356;
        }

        if (v81)
        {
          v156 = v82 == 0;
        }

        else
        {
          v156 = 1;
        }

        v157 = v156;
        if (!v156)
        {
          v204[0] = 0;
          v204[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v204);
        }

        for (; v82; --v82)
        {
          v79(a1, 0, 0, 0, &v213, &v213, 1);
        }

        if (v157)
        {
          goto LABEL_334;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
        re::TypeInfo::TypeInfo(&__dst, this);
        v84 = (*(*a1 + 80))(a1, &v213);
        if (!v84)
        {
          goto LABEL_222;
        }

        v85 = v84;
        v86 = re::ArrayAccessor::size(&__dst, a4);
        v202[0] = v86;
        v87 = *(*(this + 2) + 92) & 0xFFFFFF;
        if (v87)
        {
          v88 = 8;
        }

        else
        {
          v88 = 4;
        }

        if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, v202, v88))
        {
          goto LABEL_356;
        }

        if (v87)
        {
          v89 = v86 == 0;
        }

        else
        {
          v89 = 1;
        }

        v90 = v89;
        if (v89)
        {
          if (!v86)
          {
            goto LABEL_334;
          }
        }

        else
        {
          v165 = *a4;
          v203[0] = 0;
          v203[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v165, v203);
        }

        v166 = 0;
        do
        {
          v167 = re::ArrayAccessor::elementAt(&__dst, a4, v166);
          v85(a1, 0, 0, v167, &v213, v205, 0);
          ++v166;
        }

        while (v86 != v166);
        if (v90)
        {
          goto LABEL_334;
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_334;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v95 = **(this + 2);
        v96 = **(a6 + 2);
        if (v95 == v96 && WORD1(v95) == WORD1(v96) && ((v96 ^ v95) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_163;
        }

        v38 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_163;
        }

        v38 = *(this + 12);
      }

      if (v38 != *(a6 + 12))
      {
        goto LABEL_355;
      }
    }

LABEL_163:
    if (a7)
    {
      __dst.n128_u8[0] = 0;
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), __s, &__dst);
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
      re::TypeInfo::TypeInfo(&__dst, this);
      v97 = (*(v209 + 88))(a4);
      LOBYTE(v204[0]) = v97 != 0;
      v98 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), __s, v204);
      if (v97)
      {
        v99 = (*(v209 + 88))(a4, v98);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, __s, 0, v99, &v213, v205, 0);
        }
      }
    }

    goto LABEL_384;
  }

  if (*(this + 12) > 6u)
  {
    if (v23 == 7)
    {
      if (this != a6)
      {
        if (*this == *a6)
        {
          v100 = **(this + 2);
          v101 = **(a6 + 2);
          if (v100 != v101)
          {
            goto LABEL_355;
          }

          v18 = WORD1(v100) == WORD1(v101);
          v102 = (v101 ^ v100) & 0xFFFFFF00000000;
          if (!v18 || v102 != 0)
          {
            goto LABEL_355;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_355;
        }
      }

      v39 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), __s, 16);
      if (a7)
      {
        if (!v39)
        {
LABEL_356:
          v50 = 0;
          return v50 & 1;
        }

        v213 = 0;
        if (*(*(a6 + 2) + 96))
        {
          re::TypeInfo::unionMember(a6, 0, &__dst);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, 0, &__dst, &__dst, 1);
          }
        }
      }

      else
      {
        if (!v39)
        {
          goto LABEL_356;
        }

        re::TypeInfo::TypeInfo(&__dst, this);
        Tag = re::UnionAccessor::readTag(&__dst, a4);
        *v205 = Tag;
        if (Tag < *(*(this + 2) + 96))
        {
          re::TypeInfo::unionMember(this, Tag, &v213);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, a4, &v213, &v213, 0);
          }
        }
      }

LABEL_383:
      goto LABEL_384;
    }

    if (v23 != 8)
    {
      if (v23 == 9)
      {
        v194 = re::TypeInfo::name(this)[1];
        v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_88:
        goto LABEL_356;
      }

LABEL_87:
      LOBYTE(v194) = *(this + 12);
      v24 = "Invalid type category. Value = %d";
      goto LABEL_88;
    }

    if (!a7)
    {
      goto LABEL_81;
    }

    if (*(*(this + 2) + 49))
    {
      v59 = a1[34];
      *v205 = 0x2686EB529B3EE220;
      *&v205[8] = "DynamicString";
      re::TypeRegistry::typeInfo(v59, v205, &__dst);
      v60 = re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
      if (v205[0])
      {
        if (v205[0])
        {
        }
      }

      v61 = &v213;
      v62 = &v213;
      v63 = a1;
      v64 = __s;
    }

    else
    {
      v41 = re::TypeInfo::name(this);
      if ((*v41 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v43 = v41[1], v43 != "DynamicString") && strcmp(v43, "DynamicString"))
      {
LABEL_81:
        v44 = *(this + 2);
        v45 = *(v44 + 48);
        if ((v45 & 0x10) == 0 && *(this + 12) == 8)
        {
          v46 = *(v44 + 160);
          if (v46)
          {
            v47 = *this;
            v48 = *a6;
            __dst.n128_u64[0] = &unk_1F5D18DF0;
            __dst.n128_u64[1] = a1;
            *&v209 = v47;
            *(&v209 + 1) = v48;
            v210 = 0uLL;
            LODWORD(v211) = 1;
            *(&v211 + 1) = 0;
            *&v212 = 0;
            v213 = __s;
            LODWORD(v214) = a3;
            BYTE4(v214) = 0;
            v46(&__dst, a4, v49);
            v50 = *(a1 + 64) ^ 1;
            __dst.n128_u64[0] = &unk_1F5D18DF0;
            if (v210)
            {
              if ((v211 & 1) == 0)
              {
                (*(*v210 + 40))();
              }
            }

            return v50 & 1;
          }
        }

        if ((v45 & 4) == 0)
        {
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), __s, 0))
          {
            goto LABEL_356;
          }

          v51 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
          if (!v51 || *(v51 + 16) >= 2u)
          {
            v53 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
            if (v53)
            {
              v54 = *(v53 + 16);
            }

            else
            {
              v54 = -1;
            }

            __dst.n128_u32[0] = v54;
          }

          if (this == a6)
          {
            goto LABEL_369;
          }

          if (*this == *a6)
          {
            v180 = **(this + 2);
            v181 = **(a6 + 2);
            if (v180 == v181 && WORD1(v180) == WORD1(v181) && ((v181 ^ v180) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_369;
            }
          }

          else if (re::areSameTranslatedVersion(this, a6, v52))
          {
LABEL_369:
            re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
            goto LABEL_383;
          }

          if (*(this + 12) == *(a6 + 12))
          {
            re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
          }

          else
          {
            v182 = re::TypeInfo::name(this)[1];
            re::TypeInfo::name(a6);
          }

          goto LABEL_383;
        }

        re::TypeMemberCollection::TypeMemberCollection(&__dst, *this, v44);
        re::TypeMemberCollection::operator[](&__dst, 0, v205);
        v112 = *(*&v205[16] + 24);
        re::TypeRegistry::typeInfo(*v205, **&v205[16], &__dst);
        re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
        if (this == a6)
        {
          goto LABEL_195;
        }

        if (*this == *a6)
        {
          v158 = **(this + 2);
          v159 = *(a6 + 2);
          v160 = *v159;
          if (v158 == *v159 && WORD1(v158) == WORD1(v160) && ((v160 ^ v158) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_195;
          }
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, v113))
          {
LABEL_195:
            if (a1[8])
            {
              goto LABEL_356;
            }

            v114 = (*(*a1 + 72))(a1, __s, a3, a4 + v112, v204, v204, a7);
LABEL_363:
            v50 = v114;
            return v50 & 1;
          }

          v159 = *(a6 + 2);
        }

        if (*(v159 + 96) == 1)
        {
          v176 = re::TypeMemberCollection::TypeMemberCollection(&v213, *a6, v159);
          re::TypeMemberCollection::operator[](v176, 0, v202);
          re::TypeRegistry::typeInfo(v202[0], *v202[2], &__dst);
          re::TypeInfo::TypeInfo(v203, &__dst.n128_i64[1]);
          if (a1[8])
          {
            goto LABEL_356;
          }

          v114 = (*(*a1 + 72))(a1, __s, a3, a4 + v112, v204, v203, a7);
          goto LABEL_363;
        }

LABEL_355:
        goto LABEL_356;
      }

      v63 = a1;
      v64 = __s;
      v61 = this;
      v62 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v63, v64, v42, 0, v61, v62, 1);
    goto LABEL_384;
  }

  if (v23 == 5)
  {
    if (this != a6)
    {
      if (*this == *a6)
      {
        v104 = **(this + 2);
        v105 = **(a6 + 2);
        if (v104 != v105 || WORD1(v104) != WORD1(v105) || ((v105 ^ v104) & 0xFFFFFF00000000) != 0)
        {
          v40 = 5;
LABEL_180:
          if (v40 != *(a6 + 12))
          {
            goto LABEL_355;
          }
        }
      }

      else if (!re::areSameTranslatedVersion(this, a6, a3))
      {
        v40 = *(this + 12);
        goto LABEL_180;
      }
    }

    if (a7)
    {
      v106 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
      re::internal::translateType(v106, v205, &v213);
      if ((*(*a1 + 80))(a1, &v213))
      {
        __dst.n128_u64[0] = 0;
        v50 = 0;
        if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, &__dst, 0))
        {
          return v50 & 1;
        }

        goto LABEL_334;
      }

LABEL_222:
      v121 = &v213;
LABEL_223:
      v195 = re::TypeInfo::name(v121)[1];
      goto LABEL_356;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
    re::TypeInfo::TypeInfo(&__dst, this);
    v107 = (*(*a1 + 80))(a1, &v213);
    if (!v107)
    {
      goto LABEL_222;
    }

    v108 = v107;
    v109 = (*(v209 + 88))(a4);
    v203[0] = v109;
    v50 = 0;
    if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, v203, 0))
    {
      return v50 & 1;
    }

    if (*(v209 + 104))
    {
      if (v109)
      {
        for (i = 0; i != v109; ++i)
        {
          v111 = (*(v209 + 104))(a4, i);
          v108(a1, 0, 0, v111, &v213, v205, 0);
        }
      }
    }

    else
    {
      v172 = *(v209 + 112);
      if (!v172 || !*(v209 + 120) || !*(v209 + 128))
      {
        re::TypeInfo::TypeInfo(v204, &__dst);
        v194 = re::TypeInfo::name(v204)[1];
        v24 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_88;
      }

      v173 = v172(a4, a1[7]);
      v174 = (*(v209 + 120))();
      if (v174)
      {
        v175 = v174;
        do
        {
          v108(a1, 0, 0, v175, &v213, v205, 0);
          v175 = (*(v209 + 120))(v173);
        }

        while (v175);
      }

      (*(v209 + 128))(v173, a1[7]);
    }

LABEL_334:
    goto LABEL_384;
  }

  if (v23 != 6)
  {
    goto LABEL_87;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  v26 = re::TypeInfo::TypeInfo(&v213, &__dst.n128_i64[1]);
  v28 = re::TypeInfo::name(v26);
  v29 = BYTE4(v214);
  if (BYTE4(v214) != 1)
  {
LABEL_106:
    if (v29 == 8)
    {
      v56 = *v28 >> 1;
      if (v56 == 0x22C6ED80D0CLL)
      {
        v115 = v28[1];
        v32 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v115 == "StringID")
        {
          goto LABEL_362;
        }

        v116 = strcmp(v115, "StringID");
        v32 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v116)
        {
          goto LABEL_362;
        }
      }

      else if (v56 == 0x134375A94D9F7110)
      {
        v57 = v28[1];
        v32 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v57 == "DynamicString")
        {
          goto LABEL_362;
        }

        v58 = strcmp(v57, "DynamicString");
        v32 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v58)
        {
          goto LABEL_362;
        }
      }
    }

    goto LABEL_209;
  }

  if (!re::TypeInfo::isInteger(&v213))
  {
    v29 = BYTE4(v214);
    goto LABEL_106;
  }

  v30 = *v28 >> 1;
  if (v30 > 0x303EE8780EDLL)
  {
    if (v30 == 0x303EE8780EELL)
    {
      v169 = v28[1];
      v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (v169 == "uint32_t")
      {
        goto LABEL_362;
      }

      v170 = strcmp(v169, "uint32_t");
      v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (!v170)
      {
        goto LABEL_362;
      }

      goto LABEL_341;
    }

    if (v30 != 0x303EE88E58DLL)
    {
      goto LABEL_341;
    }

    v145 = v28[1];
    v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v145 == "uint64_t")
    {
      goto LABEL_362;
    }

    v146 = "uint64_t";
  }

  else
  {
    if (v30 != 3393056694)
    {
      if (v30 == 0x303EE86A734)
      {
        v31 = v28[1];
        v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v31 == "uint16_t")
        {
          goto LABEL_362;
        }

        v33 = strcmp(v31, "uint16_t");
        v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v33)
        {
          goto LABEL_362;
        }
      }

      goto LABEL_341;
    }

    v145 = v28[1];
    v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v145 == "size_t")
    {
      goto LABEL_362;
    }

    v146 = "size_t";
  }

  v168 = strcmp(v145, v146);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
  if (!v168)
  {
    goto LABEL_362;
  }

LABEL_341:
  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v171 = re::StringID::operator==(v28, &__dst);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v171)
  {
    goto LABEL_362;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v28, &__dst))
  {
    v114 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, __s, a3, a4, this, a6, a7);
    goto LABEL_363;
  }

  *v205 = 3327612;
  *&v205[8] = "long";
  v177 = re::StringID::operator==(v28, v205);
  v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v177 || (__dst.n128_u64[0] = 104431, __dst.n128_u64[1] = "int", v178 = re::StringID::operator==(v28, &__dst), v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v178) || (__dst.n128_u64[0] = 109413500, __dst.n128_u64[1] = "short", v179 = re::StringID::operator==(v28, &__dst), v32 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v179))
  {
LABEL_362:
    v114 = v32(a1, __s, a3, a4, this, a6, a7);
    goto LABEL_363;
  }

LABEL_209:
  if (this != a6)
  {
    if (*this == *a6)
    {
      v117 = **(this + 2);
      v118 = **(a6 + 2);
      if (v117 == v118 && WORD1(v117) == WORD1(v118) && ((v118 ^ v117) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_217;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v27))
    {
      goto LABEL_217;
    }

    if (*(this + 12) != *(a6 + 12))
    {
      goto LABEL_355;
    }
  }

LABEL_217:
  if (a7)
  {
    v119 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v205, &__dst.n128_i64[1]);
    re::internal::translateType(v119, v205, &v213);
    v120 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
    re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
    re::internal::translateType(v120, v204, v205);
    if ((*(*a1 + 80))(a1, &v213))
    {
      if ((*(*a1 + 80))(a1, v205))
      {
        __dst.n128_u64[0] = 0;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), __s, &__dst))
        {
          goto LABEL_388;
        }

        goto LABEL_356;
      }

      v121 = v205;
      goto LABEL_223;
    }

    goto LABEL_222;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v204, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v203, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v202, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v200, &__dst.n128_i64[1]);
  re::TypeInfo::TypeInfo(v198, this);
  v127 = (*(*a1 + 80))(a1, v204);
  if (!v127)
  {
    v121 = v204;
    goto LABEL_223;
  }

  v128 = v127;
  v129 = (*(*a1 + 80))(a1, v203);
  if (!v129)
  {
    v121 = v203;
    goto LABEL_223;
  }

  v130 = v129;
  v131 = (*(v199 + 96))(a4);
  v197 = v131;
  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), __s, &v197))
  {
    goto LABEL_356;
  }

  if (!v131)
  {
    goto LABEL_388;
  }

  v132 = *this;
  __dst.n128_u64[0] = 0x449AD97C4B77BED4;
  __dst.n128_u64[1] = "_CompareFunc";
  v133 = re::TypeRegistry::typeID(v132, &__dst, v196);
  if (__dst.n128_u8[0])
  {
    if (__dst.n128_u8[0])
    {
    }
  }

  if (!v196[0] || (v134 = *v204[2], __dst.n128_u64[0] = v196[1], __dst.n128_u64[1] = v134, LODWORD(v209) = -1, (v135 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v204[0] + 768, &__dst)) == 0) || (v136 = *v135) == 0)
  {
    v188 = (*(v199 + 120))(a4, a1[7]);
    (*(v199 + 128))();
    do
    {
      v189 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
      v190 = (*(v199 + 136))(v188, v189);
      v128(a1, "key", 0, v190, v204, v202, 0);
      v191 = (*(v199 + 144))(v188);
      v130(a1, "value", 0, v191, v203, v200, 0);
      (*(v199 + 128))(v188);
      --v131;
    }

    while (v131);
    (*(v199 + 152))(v188, a1[7]);
    goto LABEL_388;
  }

  v217 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v213 = a1[7];
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v213, v131);
  ++v216;
  v137 = (*(v199 + 120))(a4, a1[7]);
  if ((*(v199 + 128))())
  {
    do
    {
      v138 = (*(v199 + 136))(v137);
      v139 = (*(v199 + 144))(v137);
      __dst.n128_u64[0] = v138;
      __dst.n128_u64[1] = v139;
      v140 = re::DynamicArray<re::RigNodeConstraint>::add(&v213, &__dst);
    }

    while (((*(v199 + 128))(v137, v140) & 1) != 0);
  }

  (*(v199 + 152))(v137, a1[7]);
  __dst.n128_u64[0] = v136;
  std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v217, &v217[16 * v215], &__dst);
  v141 = 0;
  for (j = 0; j != v131; ++j)
  {
    v143 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
    if (v215 <= j)
    {
      v201 = 0;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      __dst = 0u;
      v192 = v215;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = j;
      v206 = 2048;
      v207 = v192;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_390:
      v201 = 0;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      __dst = 0u;
      v193 = v144;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = j;
      v206 = 2048;
      v207 = v193;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_391;
    }

    (v128)(a1, "key", 0, *&v217[v141], v204, v202, 0, v143);
    v144 = v215;
    if (v215 <= j)
    {
      goto LABEL_390;
    }

    v130(a1, "value", 0, *&v217[v141 + 8], v203, v200, 0);
    v141 += 16;
  }

  if (v213 && v217)
  {
    (*(*v213 + 40))(v213);
  }

LABEL_388:
LABEL_384:
  v50 = *(a1 + 64) ^ 1;
  return v50 & 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, char *a2, float *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabsf(v6) == INFINITY)
    {
      if (v6 <= 0.0)
      {
        v8 = "-Infinity";
      }

      else
      {
        v8 = "Infinity";
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), v8);
    }

    else
    {
      v9 = v6;
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v9);
    }

    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v10 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, char *a2, double *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabs(v6) == INFINITY)
    {
      if (v6 <= 0.0)
      {
        v8 = "-Infinity";
      }

      else
      {
        v8 = "Infinity";
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), v8);
    }

    else
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v6);
    }

    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    v7 = *a3;
    if (!*a3)
    {
      v8 = *(a1 + 168);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v8);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v8, "", 0);
      v7 = *a3;
    }

    LOBYTE(v10) = 8;
    DWORD1(v10) = 0;
    *(&v10 + 1) = __s;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v7;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v10);
  }

  return v3 ^ 1u;
}

double re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 112) >= *(a1 + 152))
  {
    re::DynamicString::format("State stack overflow (max depth is %zu). Increase user default com.apple.maxSerializationDepth to allow deeper hierarchies.", v6, *(a1 + 152));
    if (*&v6[0])
    {
      if (BYTE8(v6[0]))
      {
        (*(**&v6[0] + 40))();
      }
    }
  }

  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  *&result = re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(a1 + 96, v6).n128_u64[0];
  return result;
}

__n128 re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 48 * v5;
  result = *a2;
  v13 = *(a2 + 32);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 32) = v13;
  *v11 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t a1, char *__s, unsigned __int8 *a3)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    v6 = *a3;
    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 168);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v7);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v7);
      v6 = *a3;
    }

    LOBYTE(v9) = 3;
    DWORD1(v9) = 0;
    *(&v9 + 1) = __s;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = v6;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v9);
  }

  return result;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, char *__s, uint64_t *a3, int a4)
{
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v9 = *a3;
    LOBYTE(v11) = 5;
    DWORD1(v11) = a4 & 0xFFFFFFDF;
    *(&v11 + 1) = __s;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v9;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
  }

  return v4 ^ 1u;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v55 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v49), re::TypeInfo::TypeInfo(v48, &v50), v48[12] != 1) || !re::TypeInfo::isInteger(v48))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v48, &v50);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v47, &v50);
  re::TypeInfo::TypeInfo(v45, this);
  v18 = (*(*a1 + 80))(a1, v48);
  if (!v18)
  {
    v38 = re::TypeInfo::name(v48);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v46 + 96))(a4);
    if (v22)
    {
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v49 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v22);
      ++v52;
      v23 = (*(v46 + 120))(a4, v17);
      if ((*(v46 + 128))())
      {
        do
        {
          v24 = (*(v46 + 136))(v23);
          v25 = (*(v46 + 144))(v23);
          v54[0].n128_u64[0] = v24;
          v54[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v49, v54);
        }

        while (((*(v46 + 128))(v23, v26) & 1) != 0);
      }

      (*(v46 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v51);
      if (v51)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(v53, (v53 + 16 * v51), v29, 1, v27);
      if (v51)
      {
        v31 = v53;
        v32 = v53 + 16 * v51;
        do
        {
          v33 = *(v31 + 8);
          v34 = **v31;
          if (HIDWORD(v34))
          {
            if (v34 <= 0x2540BE3FFLL)
            {
              v36 = v54;
            }

            else
            {
              v36 = std::__itoa::__base_10_u32[abi:nn200100](v54, v34 / 0x2540BE400);
              v34 %= 0x2540BE400uLL;
            }

            v36->n128_u16[0] = std::__itoa::__digits_base_10[v34 / 0x5F5E100];
            v37 = v34 % 0x5F5E100;
            v36->n128_u16[1] = std::__itoa::__digits_base_10[v37 / 0xF4240uLL];
            v37 %= 0xF4240u;
            v36->n128_u16[2] = std::__itoa::__digits_base_10[v37 / 0x2710uLL];
            v37 %= 0x2710u;
            v36->n128_u16[3] = std::__itoa::__digits_base_10[v37 / 0x64u];
            v36->n128_u16[4] = std::__itoa::__digits_base_10[v37 % 0x64u];
            v35 = &v36->n128_i8[10];
          }

          else
          {
            v35 = std::__itoa::__base_10_u32[abi:nn200100](v54, **v31);
          }

          *v35 = 0;
          v19(a1, v54, 0, v33, v48, v47, 0);
          v31 += 16;
        }

        while (v31 != v32);
      }

      if (v49 && v53)
      {
        (*(*v49 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(v50, (v50 + 16 * v48), v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = v50 + 16 * v48;
        do
        {
          v33 = *v31;
          v34 = *(v31 + 8);
          v31 += 16;
          *std::__itoa::__base_10_u32[abi:nn200100](v51, *v33) = 0;
          v19(a1, v51, 0, v34, v45, v44, 0);
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(v50, &v50[v48], v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = &v50[v48];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v51, *v33) = 0;
          v19(a1, v51, 0, v34, v45, v44, 0);
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(v50, &v50[v48], v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = &v50[v48];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v51, *v33) = 0;
          v19(a1, v51, 0, v34, v45, v44, 0);
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v57[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v50, &v52), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
LABEL_42:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_39:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, this);
  v18 = (*(*a1 + 80))(a1, v50);
  if (!v18)
  {
    v40 = re::TypeInfo::name(v50);
    goto LABEL_42;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v48 + 96))(a4);
    if (v22)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v22);
      ++v54;
      v23 = (*(v48 + 120))(a4, v17);
      if ((*(v48 + 128))())
      {
        do
        {
          v24 = (*(v48 + 136))(v23);
          v25 = (*(v48 + 144))(v23);
          v56[0].n128_u64[0] = v24;
          v56[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, v56);
        }

        while (((*(v48 + 128))(v23, v26) & 1) != 0);
      }

      (*(v48 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(v55, (v55 + 16 * v53), v29, 1, v27);
      if (v53)
      {
        v31 = v55;
        v32 = v55 + 16 * v53;
        do
        {
          v33 = **v31;
          if ((v33 & 0x8000000000000000) != 0)
          {
            v56[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v56[0].n128_u64 + 1);
          }

          else
          {
            v34 = v56;
          }

          v35 = *(v31 + 8);
          if (v57 - v34 > 19 || (v36 = (1233 * (64 - __clz(v33 | 1))) >> 12, v37 = v36 - (std::__itoa::__pow10_64[v36] > v33) + 1, v38 = v57, v57 - v34 >= v37))
          {
            if (HIDWORD(v33))
            {
              if (v33 > 0x2540BE3FFLL)
              {
                v34 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33 / 0x2540BE400);
                v33 %= 0x2540BE400uLL;
              }

              v34->n128_u16[0] = std::__itoa::__digits_base_10[v33 / 0x5F5E100];
              v39 = v33 % 0x5F5E100;
              v34->n128_u16[1] = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
              v39 %= 0xF4240u;
              v34->n128_u16[2] = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
              v39 %= 0x2710u;
              v34->n128_u16[3] = std::__itoa::__digits_base_10[v39 / 0x64u];
              v34->n128_u16[4] = std::__itoa::__digits_base_10[v39 % 0x64u];
              v38 = &v34->n128_i8[10];
            }

            else
            {
              v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
            }
          }

          *v38 = 0;
          v19(a1, v56, 0, v35, v50, v49, 0);
          v31 += 16;
        }

        while (v31 != v32);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v30);
      }
    }

    goto LABEL_39;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v56[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v49, &v51), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, this);
  v18 = (*(*a1 + 80))(a1, v49);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v49);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v47 + 96))(a4);
    if (v22)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v22);
      ++v53;
      v23 = (*(v47 + 120))(a4, v17);
      if ((*(v47 + 128))())
      {
        do
        {
          v24 = (*(v47 + 136))(v23);
          v25 = (*(v47 + 144))(v23);
          v55[0].n128_u64[0] = v24;
          v55[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, v55);
        }

        while (((*(v47 + 128))(v23, v26) & 1) != 0);
      }

      (*(v47 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(v54, (v54 + 16 * v52), v29, 1, v27);
      if (v52)
      {
        v31 = v54;
        v32 = v54 + 16 * v52;
        do
        {
          v33 = **v31;
          if ((v33 & 0x80000000) != 0)
          {
            v55[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v55[0].n128_u64 + 1);
          }

          else
          {
            v34 = v55;
          }

          v35 = *(v31 + 8);
          if (v56 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v56, v56 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v55, 0, v35, v49, v48, 0);
          v31 += 16;
        }

        while (v31 != v32);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v56[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v49, &v51), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, this);
  v18 = (*(*a1 + 80))(a1, v49);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v49);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v47 + 96))(a4);
    if (v22)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v22);
      ++v53;
      v23 = (*(v47 + 120))(a4, v17);
      if ((*(v47 + 128))())
      {
        do
        {
          v24 = (*(v47 + 136))(v23);
          v25 = (*(v47 + 144))(v23);
          v55[0].n128_u64[0] = v24;
          v55[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, v55);
        }

        while (((*(v47 + 128))(v23, v26) & 1) != 0);
      }

      (*(v47 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(v54, &v54[v52], v29, 1, v27);
      if (v52)
      {
        v31 = v54;
        v32 = &v54[v52];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x80000000) != 0)
          {
            v55[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v55[0].n128_u64 + 1);
          }

          else
          {
            v34 = v55;
          }

          v35 = v31->n128_u64[1];
          if (v56 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v56, v56 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v55, 0, v35, v49, v48, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v49);
  re::TypeInfo::TypeInfo(v48, &v50);
  v19 = re::TypeInfo::name(v48);
  if (*v19 >> 1 != 0x22C6ED80D0CLL || (v20 = v19[1], v20 != "StringID") && strcmp(v20, "StringID"))
  {
LABEL_35:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_33:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v48, &v50);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v49);
  re::TypeInfo::TypeInfo(v47, &v50);
  re::TypeInfo::TypeInfo(v45, this);
  v22 = (*(*a1 + 80))(a1, v48);
  if (!v22)
  {
    v37 = re::TypeInfo::name(v48);
    goto LABEL_35;
  }

  v23 = v22;
  v24 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v25 = 0;
  if (v24)
  {
    v26 = (*(v46 + 96))(a4);
    if (v26)
    {
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v49 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v26);
      ++v52;
      v27 = (*(v46 + 120))(a4, v21);
      if ((*(v46 + 128))())
      {
        do
        {
          v28 = (*(v46 + 136))(v27);
          v29 = (*(v46 + 144))(v27);
          v44.n128_u64[0] = v28;
          v44.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v49, &v44);
        }

        while (((*(v46 + 128))(v27, v30) & 1) != 0);
      }

      (*(v46 + 152))(v27, v21);
      v31 = 126 - 2 * __clz(v51);
      if (v51)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(v53, &v53[2 * v51], v32, 1);
      if (v51)
      {
        v33 = v53;
        v34 = &v53[2 * v51];
        do
        {
          v35 = *v33;
          if (*(*v33 + 8))
          {
            v36 = *(v35 + 16);
          }

          else
          {
            v36 = v35 + 9;
          }

          v23(a1, v36, 0, v33[1], v48, v47, 0);
          v33 += 2;
        }

        while (v33 != v34);
      }

      if (v49 && v53)
      {
        (*(*v49 + 40))();
      }
    }

    goto LABEL_33;
  }

  return v25 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  v19 = re::TypeInfo::name(v50);
  if (*v19 >> 1 != 0x134375A94D9F7110 || (v20 = v19[1], v20 != "DynamicString") && strcmp(v20, "DynamicString"))
  {
LABEL_32:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_30:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, this);
  v22 = (*(*a1 + 80))(a1, v50);
  if (!v22)
  {
    v39 = re::TypeInfo::name(v50);
    goto LABEL_32;
  }

  v23 = v22;
  v24 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v25 = 0;
  if (v24)
  {
    v26 = (*(v48 + 96))(a4);
    if (v26)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v26);
      ++v54;
      v27 = (*(v48 + 120))(a4, v21);
      if ((*(v48 + 128))())
      {
        do
        {
          v28 = (*(v48 + 136))(v27);
          v29 = (*(v48 + 144))(v27);
          v46.n128_u64[0] = v28;
          v46.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, &v46);
        }

        while (((*(v48 + 128))(v27, v30) & 1) != 0);
      }

      (*(v48 + 152))(v27, v21);
      v32 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(v55, &v55[v53], v33, 1, v31);
      if (v53)
      {
        v35 = v55;
        v36 = &v55[v53];
        do
        {
          v38 = v35->n128_u64[0];
          v37 = v35->n128_u64[1];
          ++v35;
          v23(a1, *(v38 + 8), 0, v37, v50, v49, 0, v34);
        }

        while (v35 != v36);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v34);
      }
    }

    goto LABEL_30;
  }

  return v25 & 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v7 = *a3;
    LOBYTE(v9) = 6;
    DWORD1(v9) = 0;
    *(&v9 + 1) = __s;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = v7;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v9);
  }

  return v3 ^ 1u;
}

double re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t a1, int a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    LOBYTE(v5[0]) = 7;
    DWORD1(v5[0]) = a2 | 0x20;
    *(&v5[0] + 1) = "entry";
    v5[1] = xmmword_1E3054780;
    v6 = 0;
    v7 = 0;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v5);
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x22C6ED80D0CLL || (v18 = v17[1], v18 != "StringID") && strcmp(v18, "StringID"))
  {
    goto LABEL_24;
  }

LABEL_14:
  if (a7)
  {
    v24 = 0;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v24))
    {
LABEL_27:
      v22 = *(a1 + 64) ^ 1;
      return v22 & 1;
    }
  }

  else
  {
    v19 = *(a4 + 8);
    if (v19)
    {
      v20 = v19 >> 1;
    }

    else
    {
      v20 = v19 >> 1;
    }

    v24 = v20;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v24))
    {
      if (v20)
      {
        if (*(a4 + 8))
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4 + 9;
        }
      }

      goto LABEL_27;
    }
  }

LABEL_24:
  v22 = 0;
  return v22 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D18DF0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D18DF0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result[1] + 64) & 1) == 0)
  {
    v10 = result;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    re::DynamicString::setCapacity(&v16, 0);
    v15 = &a9;
    re::DynamicString::vappendf(&v16, a2, &a9);
    v11 = v10[1];
    *&v12 = 400;
    *(&v12 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v13, &v16);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v11 + 24, &v12);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))(v16, v18);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 40 * v4 - 32) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 40 * v4 - 40) = a3;
  return 1;
}

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 40);
  if (*(v3 - 32) || *v4 != 64)
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0);
  }

  v6 = "";
  v7 = 0;
  v8 = 0;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  v2 = *(result + 5) - 1;
  *(result + 5) = v2;
  *(result + 12) = v1 + 2;
  if (v1)
  {
    v3 = result + 56;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = &v3[40 * v2];
  if (*(v4 - 8) || **(v4 - 5) != 64)
  {
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40) - 40;
  if (*(a1 + 48))
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = v8 + 40 * *(a1 + 40);
  v10 = *v7;
  v11 = *(v7 + 16);
  *(v9 + 32) = *(v7 + 32);
  *v9 = v10;
  *(v9 + 16) = v11;
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  v13 = *(a1 + 48);
  *(a1 + 48) = v13 + 2;
  if (v13)
  {
    v14 = a1 + 56;
  }

  else
  {
    v14 = *(a1 + 64);
  }

  v15 = v14 + 40 * v12;
  v16 = *(a1 + 8);
  if (a3)
  {
    *(v15 - 28) = 1;
    v17 = *(v15 - 40);

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0);
  }

  else
  {
    *(v15 - 28) = 0;
    v19 = a2;
    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, *(v15 - 40), &v19);
  }
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  v2 = v1 + 40 * *(a1 + 40);
  if (*(v2 - 28))
  {
    v3 = -1;
  }

  else
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(a1 + 8) + 24, 0);
    v3 = 0;
    *(v2 - 40) = "key";
  }

  *(v2 - 32) = v3;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 28))
  {
    v3 = 0;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 28] & 1) == 0)
  {
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = *(v2 + 40 * *(a1 + 40) - 28);
  v4 = (*(a1 + 8) + 24);
  if (v3 == 1)
  {
  }

  else
  {
  }

  v6 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v6 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v3 + 40 * *(a1 + 40) - 40), &v5);
  return a2;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = (v5 - 27);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = (v5 - 27);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    else
    {
      v8 = (v5 - 27);
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    v11 = a2;
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }
  }

  return result;
}

{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__to_chars_itoa[abi:nn200100]<long long>((v5 - 27), (v5 - 3), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v2 = a2;
  v11 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v13 = a3;
  v6 = *(result + 12);
  if (v6)
  {
    v7 = result + 56;
  }

  else
  {
    v7 = *(result + 8);
  }

  v8 = *(result + 5);
  v9 = &v7[40 * v8];
  if (*(v9 - 28) == 1 && (*(v9 - 8) & 0x80000000) != 0)
  {
    *(v9 - 5) = a2;
  }

  else
  {
    if (v6)
    {
      v10 = result + 56;
    }

    else
    {
      v10 = *(result + 8);
    }

    v11 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(*(result + 1) + 24, *&v10[40 * v8 - 40], &v13);
    if (a3 && v11)
    {
    }

    v12 = (*(v5 + 1) + 24);
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (*(a1 + 48))
  {
    v7 = a1 + 56;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  v8 = *(v6 + 64);
  if ((v8 & 1) == 0)
  {
    v9 = *(v7 + 40 * *(a1 + 40) - 40);
    if ((*(*(v6 + 152) + 48 * *(v6 + 136) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(v6 + 192), v9);
    }

    if (!a3)
    {
      v10 = *(v6 + 192);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v10);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v10);
    }

    LOBYTE(v22) = 4;
    DWORD1(v22) = 0;
    *(&v22 + 1) = v9;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v24 = a3;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v6 + 24, &v22);
    v6 = *(a1 + 8);
    v8 = *(v6 + 64);
    if ((v8 & 1) == 0)
    {
      v12 = *(*(v6 + 152) + 48 * *(v6 + 136) - 24);
      *(&v22 + 1) = 0;
      v23 = 0;
      v24 = 0;
      re::DynamicString::setCapacity(&v22, 0);
      *&v22 = *(v6 + 56);
      re::DynamicString::setCapacity(&v22, ((2863311531u * v12) >> 31) & 0x1FFFFFFFCLL);
      re::EncoderHelper::encodeBase64(a2, v12, &v22);
      v13 = *(v6 + 192);
      if (BYTE8(v22))
      {
        v14 = v23;
      }

      else
      {
        v14 = &v22 + 9;
      }

      if (BYTE8(v22))
      {
        v15 = *(&v22 + 1) >> 1;
      }

      else
      {
        v15 = BYTE8(v22) >> 1;
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(v6 + 192));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v13, v14, v15);
      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v16 = *(v6 + 152) + 48 * *(v6 + 136);
      *(v16 - 16) += v12;
      v6 = *(a1 + 8);
      v8 = *(v6 + 64);
    }
  }

  if ((v8 & 1) == 0)
  {
    v17 = *(v6 + 152);
    v18 = *(v6 + 136);
    if (*(v17 + 48 * v18 - 16) == *(v17 + 48 * v18 - 24))
    {
      *(v6 + 232) = 0;
      ++*(v6 + 240);
      v19 = *(v6 + 152) + 48 * *(v6 + 136);
      ++*(v19 - 16);
    }

    else
    {
      if (v28)
      {
        v20 = *&v29[7];
      }

      else
      {
        v20 = v29;
      }

      v21 = *(v6 + 152) + 48 * *(v6 + 136);
      re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", &v22, v20, *(v21 - 24), *(v21 - 16));
      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      if (v27)
      {
        if (v28)
        {
          (*(*v27 + 40))();
        }
      }
    }
  }
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * (a2 != 0);
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), &v8);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
{
  v17[0] = 0;
  v5 = *(a1 + 16);
  if (this[4] == v5)
  {
    re::TypeRegistry::typeInfo(v5, this + 4, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
  }

  else
  {
    re::getPrettyTypeName(this, &v13);
    re::TypeRegistry::typeInfo(*(a1 + 16), &v13, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  if (v17[0])
  {
    v6 = *(a1 + 16);
    v7 = re::TypeInfo::name(v18);
    re::TypeRegistry::typeInfo(v6, v7, v15);
    if (v15[0])
    {
      result = *(a1 + 8);
      if (*(a1 + 48))
      {
        v9 = a1 + 56;
      }

      else
      {
        v9 = *(a1 + 64);
      }

      if ((result[64] & 1) == 0)
      {
        return (*(*result + 72))(result, *(v9 + 40 * *(a1 + 40) - 40), *(v9 + 40 * *(a1 + 40) - 32), a2, v18, &v16, 0);
      }
    }

    else
    {
      v11 = re::TypeInfo::name(v18)[1];
      if (*(a1 + 48))
      {
        v12 = a1 + 56;
      }

      else
      {
        v12 = *(a1 + 64);
      }

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = a1 + 56;
    }

    else
    {
      v10 = *(a1 + 64);
    }

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 40 * *(a1 + 40) - 40), *(v10 + 40 * *(a1 + 40) - 32));
  }

  return result;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, char *__s, int *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    return v3 ^ 1u;
  }

  if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
  {
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
  }

  v7 = *a3;
  if ((*a3 - 1) < 2)
  {
LABEL_7:
    LOBYTE(v10) = 9;
    DWORD1(v10) = 0;
    *(&v10 + 1) = __s;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v7 != 0;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v10);
    return v3 ^ 1u;
  }

  if (!v7)
  {
    v8 = *(a1 + 168);
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v8);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v8);
    v7 = *a3;
    goto LABEL_7;
  }

  re::internal::assertLog(4, __s, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 1054);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v16, *a3, a3[2]);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v16, i, &v14);
      if (*(v15 + 28) == 1)
      {
        v10 = *(v15 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v15 + 32);
        v12 = *(v15 + 24);
        re::TypeRegistry::typeInfo(v14, *v15, v21);
        result = re::TypeInfo::TypeInfo(v13, &v22);
        if ((a1[64] & 1) == 0)
        {
          result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v13, v13, a4);
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v49);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v45);
  if (v45[0] == 1)
  {
    if ((v49[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v46)[1];
      re::TypeInfo::name(a3);
    }

    if (v50 == v46)
    {
      v18 = *v52;
      v19 = *v48;
      if (*v52 == *v48)
      {
        v21 = WORD1(v18) == WORD1(v19);
        v20 = (v19 ^ v18) & 0xFFFFFF00000000;
        v21 = v21 && v20 == 0;
        if (v21)
        {
          goto LABEL_5;
        }
      }
    }

    else if (re::areSameTranslatedVersion(&v50, &v46, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, a5);
      goto LABEL_15;
    }

    if (v51 == v47)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, &v46, a5);
    }

    else
    {
      v22 = re::TypeInfo::name(&v50)[1];
      re::TypeInfo::name(&v46);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v44, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v42, *a4, a4[2]);
  if (v43)
  {
    for (i = 0; i < v43; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v42, i, v40);
      if (*(v41 + 28) == 1)
      {
        v29 = *(v41 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v41 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v40), v31 == -1))
        {
          v33 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v54 = v34;
            v55 = 2080;
            v56 = v29;
            _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v35 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v40[0], *v41, buf);
          re::TypeInfo::TypeInfo(v38, &v54 + 4);
          result = re::internal::translateType(v35, v38, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v44, v31, v38);
          v32 = *(v39 + 24);
          re::TypeRegistry::typeInfo(v38[0], *v39, buf);
          re::TypeInfo::TypeInfo(v37, &v54 + 4);
          re::TypeRegistry::typeInfo(v40[0], *v41, buf);
          result = re::TypeInfo::TypeInfo(v36, &v54 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v37, v36, a5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeChar<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, v13);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, v13);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      goto LABEL_19;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (a7)
  {
    LODWORD(v22) = 0;
    v13 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, __s, &v22);
    v14 = 0;
    if (!v13)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  v15 = *a4;
  v23 = 2 * (*a4 != 0);
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, __s, &v23))
  {
    if (v15)
    {
      if (*a4)
      {
        v16 = strlen(*a4);
        v22 = v16;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
        {
          if (v16)
          {
          }

          goto LABEL_21;
        }
      }

      else
      {
        v22 = 0;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
        {
LABEL_21:
        }
      }
    }

LABEL_22:
    v14 = *(a1 + 64) ^ 1;
    return v14 & 1;
  }

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x134375A94D9F7110 || (v18 = v17[1], v18 != "DynamicString") && strcmp(v18, "DynamicString"))
  {
    goto LABEL_21;
  }

LABEL_14:
  if (!a7)
  {
    v19 = strlen(*(a4 + 8));
    v22 = v19;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
    {
      if (v19)
      {
      }

      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    return v20 & 1;
  }

  v22 = 0;
  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
  {
    goto LABEL_21;
  }

LABEL_20:
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, unint64_t **this, unint64_t **a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_16:
      goto LABEL_17;
    }

    v18 = *this[2];
    v19 = *a6[2];
    if (v18 != v19)
    {
      goto LABEL_16;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if (!a7)
  {
    v14 = *this;
    v15 = *this[2];
    v37[0] = 0x258C98EAAF29A10ALL;
    v37[1] = "CallbackSerializerAttribute";
    v16 = re::TypeRegistry::typeID(v14, v37, v38);
    if (v38[0] && (v33 = v38[1], v34 = v15, LODWORD(v35) = -1, (v16 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v14 + 768, &v33)) != 0))
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    if (v37[0])
    {
      if (v37[0])
      {
      }
    }

    v23 = *v17;
    v24 = *(a1 + 264);
    v25 = *(a1 + 56);
    v35 = 0;
    v36 = 0;
    v33 = v25;
    v34 = 0;
    re::DynamicString::setCapacity(&v33, 0);
    if ((*(v23 + 72))(v24, v23, a4, &v33))
    {
      if (v34)
      {
        v26 = (v34 >> 1);
      }

      else
      {
        v26 = (v34 >> 1);
      }

      v38[0] = v26;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, v38))
      {
        if (v26)
        {
          if (v34)
          {
            v27 = v35;
          }

          else
          {
            v27 = &v34 + 1;
          }
        }

        if (v33 && (v34 & 1) != 0)
        {
          (*(*v33 + 40))();
        }

        goto LABEL_7;
      }
    }

    else
    {
      re::TypeInfo::name(this);
    }

    if (v33 && (v34 & 1) != 0)
    {
      (*(*v33 + 40))();
    }

LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  v33 = 0;
  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v33))
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = *(a1 + 64) ^ 1;
  return v13 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, char *__s, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
LABEL_20:
      v20 = 0;
      return v20 & 1;
    }

    v16 = **(this + 2);
    v17 = **(a6 + 2);
    if (v16 != v17)
    {
      goto LABEL_19;
    }

    v19 = WORD1(v16) == WORD1(v17);
    v18 = (v17 ^ v16) & 0xFFFFFF00000000;
    v19 = v19 && v18 == 0;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if (*a4)
  {
    if (a1[336] == 1 && (v25 = *a4, (v11 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v25)) != 0))
    {
      v12 = *v11;
      v24 = 1;
      LODWORD(v25) = v12;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), __s, &v24))
      {
        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v25);
LABEL_22:
LABEL_23:
        v20 = a1[64] ^ 1;
        return v20 & 1;
      }
    }

    else
    {
      v24 = 2;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), __s, &v24))
      {
        v13 = strlen(*a4);
        v25 = v13;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), __s, &v25))
        {
          if (v13)
          {
          }

          v14 = *a4;
          v15 = **(this + 2);
          *&v23 = *this;
          *(&v23 + 1) = v15;
          re::internal::SharedObjectGraph::addObject((a1 + 336), v14, &v23);
          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  LODWORD(v25) = 0;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), __s, &v25);
  v20 = 0;
  if (v21)
  {
    goto LABEL_22;
  }

  return v20 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v27 = **(this + 2);
    v28 = **(a6 + 2);
    if (v27 == v28)
    {
      v30 = WORD1(v27) == WORD1(v28);
      v29 = (v28 ^ v27) & 0xFFFFFF00000000;
      v30 = v30 && v29 == 0;
      if (v30)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v31 = re::TypeInfo::name(this), v32 = re::TypeInfo::name(a6), !re::StringID::operator==(v31, v32))))
  {
    goto LABEL_30;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v39, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v22 = *v39[2];
    *&v37 = v39[0];
    *(&v37 + 1) = v22;
    if (!v39[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(a4, this, &v37);
    if (!v37)
    {
LABEL_8:
      v16 = re::TypeInfo::name(this);
LABEL_30:
      v26 = 0;
      return v26 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v37, &v40);
  re::TypeInfo::TypeInfo(v36, v41);
  if ((a7 & 1) == 0)
  {
    v23 = *a4;
    if (*a4)
    {
      if (*(a1 + 336) == 1)
      {
        v40 = *a4;
        v24 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 344, &v40);
        if (v24)
        {
          LODWORD(v40) = *v24;
          v35 = 1;
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v35))
          {
            goto LABEL_30;
          }

          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v40);
          goto LABEL_17;
        }

        v23 = *a4;
      }

      v34 = v37;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v23, &v34);
      LODWORD(v40) = 2;
      if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v40))
      {
        goto LABEL_30;
      }

      if (isPointerToPolymorphicType)
      {
        re::internal::serializePolymorphicObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, *a4, v36, v38, v15);
      }

      else if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, *a4, v39, v38, 0);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_18;
    }
  }

  LODWORD(v40) = 0;
  v25 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v40);
  v26 = 0;
  if (v25)
  {
LABEL_17:
LABEL_18:
    v26 = *(a1 + 64) ^ 1;
  }

  return v26 & 1;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, unsigned int *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0);
    if (result)
    {
    }
  }

  return result;
}

_anonymous_namespace_ *re::internal::serializePolymorphicObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, char *a2, uint64_t a3, re::TypeInfo *a4, re::TypeRegistry **a5, int a6)
{
  re::TypeInfo::TypeInfo(v24, a4);
  if (a6)
  {
    v12 = *a5;
    v13 = re::TypeInfo::name(a4);
    re::TypeRegistry::typeInfo(v12, v13, v22);
    if (v22[0] != 1)
    {
      v16 = re::TypeInfo::name(a4);
    }

    re::TypeInfo::operator=(v24, &v23);
  }

  result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, 0);
  if (result)
  {
    v15 = re::TypeInfo::polymorphicObjectName(v24);
    if ((a1[64] & 1) == 0)
    {
      (*(*a1 + 72))(a1, v15[1], 0, a3, a4, v24, 0);
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D18F98;
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 336), *(a1 + 48), *(a1 + 264));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v27, &v31);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v25 = *a5;
    *(&v25 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v25);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

void *re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash();
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash();
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

unsigned int *(*re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

unsigned int *re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v10 = this;
  v257 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(v10 + 12) != *(a6 + 12))
  {
    goto LABEL_356;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*v10 + 96, **(v10 + 16));
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = -1;
  }

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = -1;
  }

  if (v20 != v22)
  {
    v33 = re::TypeInfo::name(v10);
    v34 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v33, v34))
    {
      v52 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      re::TypeInfo::name(v10);
      re::DataArray<re::TextureAtlasTile>::tryGet(*v10 + 96, **(v10 + 16));
      LOBYTE(v234) = v52;
      v24 = "Type name changed: Serialized type %s version %u, runtime type %s version %u.";
      goto LABEL_224;
    }

    v35 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v35)
    {
      v36 = *(v35 + 16);
    }

    else
    {
      v36 = -1;
    }

    re::TypeInfo::atVersion(v10, v36, &v237);
    if ((v237 & 1) == 0)
    {
      v62 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      LOBYTE(v234) = v62;
      v24 = "Unknown serialized type %s version %u. No matching runtime type found.";
      goto LABEL_224;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(&v238, *(a1 + 48), *(a1 + 264));
    }

    if (*(a1 + 64) & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, &v238, a6, a7), (*(a1 + 64)))
    {
      if (!Instance)
      {
        goto LABEL_357;
      }

      v125 = *(a1 + 48);
      v126 = *(a1 + 264);
      v127 = &v238;
      v128 = Instance;
      goto LABEL_213;
    }

    if (a7 & 1) != 0 || (re::TypeInfo::TypeInfo(&Tag, &v238), re::internal::upgradeObject(Instance, &Tag, a4, v10, *(a1 + 48), *(a1 + 264), buf), (buf[0]))
    {
      LOBYTE(v10) = 1;
      return (v10 & 1);
    }

    if (v252)
    {
      LOBYTE(v201) = v253;
    }

    else
    {
      v201 = &v252 + 1;
    }

    if ((buf[0] & 1) != 0 || !v251 || (v252 & 1) == 0)
    {
      goto LABEL_357;
    }

    v173 = *(*v251 + 40);
LABEL_339:
    v173();
    goto LABEL_357;
  }

LABEL_18:
  v23 = *(v10 + 12);
  if (v23 > 4)
  {
    if (*(v10 + 12) > 6u)
    {
      if (v23 == 7)
      {
        if (v10 != a6)
        {
          if (*v10 == *a6)
          {
            v108 = **(v10 + 16);
            v109 = **(a6 + 2);
            if (v108 != v109)
            {
              goto LABEL_356;
            }

            v18 = WORD1(v108) == WORD1(v109);
            v110 = (v109 ^ v108) & 0xFFFFFF00000000;
            if (!v18 || v110 != 0)
            {
              goto LABEL_356;
            }
          }

          else if (!re::areSameTranslatedVersion(v10, a6, a3))
          {
            goto LABEL_356;
          }
        }

        v41 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 16);
        if (a7)
        {
          if (v41)
          {
            v237 = 0;
            if (v237 < *(*(a6 + 2) + 96))
            {
              re::TypeInfo::unionMember(a6, v237, buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, 0, buf, buf, 1);
              }
            }

            goto LABEL_438;
          }
        }

        else if (v41)
        {
          re::TypeInfo::TypeInfo(buf, v10);
          Tag = re::UnionAccessor::readTag(buf, a4);
          v60 = Tag;
          re::UnionAccessor::reset(buf, a4, Tag, *(a1 + 48));
          if (v60 < *(*(v10 + 16) + 96))
          {
            re::TypeInfo::unionMember(v10, v60, &v237);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "value", 0, a4, &v237, &v237, 0);
            }
          }

          goto LABEL_438;
        }

        goto LABEL_357;
      }

      if (v23 != 8)
      {
        if (v23 == 9)
        {
          v234 = re::TypeInfo::name(v10)[1];
          v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_224:
          v129 = a1;
          v130 = a2;
LABEL_255:
          goto LABEL_357;
        }

LABEL_89:
        LOBYTE(v234) = *(v10 + 12);
        v24 = "Invalid type category. Value = %d";
        goto LABEL_224;
      }

      if (!a7)
      {
        goto LABEL_83;
      }

      if (*(*(v10 + 16) + 49))
      {
        v66 = *(a1 + 272);
        Tag = 0x2686EB529B3EE220;
        v248 = "DynamicString";
        re::TypeRegistry::typeInfo(v66, &Tag, buf);
        v67 = re::TypeInfo::TypeInfo(&v237, &buf[8]);
        if (Tag)
        {
          if (Tag)
          {
          }
        }

        v68 = &v237;
        v69 = &v237;
        v70 = a1;
        v71 = a2;
      }

      else
      {
        v43 = re::TypeInfo::name(v10);
        if ((*v43 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v45 = v43[1], v45 != "DynamicString") && strcmp(v45, "DynamicString"))
        {
LABEL_83:
          v46 = *(v10 + 16);
          v47 = *(v46 + 48);
          if ((v47 & 0x10) == 0 && *(v10 + 12) == 8)
          {
            v48 = *(v46 + 168);
            if (v48)
            {
              v49 = *v10;
              v50 = *a6;
              *buf = &unk_1F5D19000;
              *&buf[8] = a1;
              *&buf[16] = v49;
              v251 = v50;
              v252 = 0;
              v253 = 0;
              v254 = 1;
              v255 = 0;
              v256 = 0;
              v237 = a2;
              LODWORD(v238) = a3;
              v239 = 0;
              v240 = 0;
              v241 = 0;
              v48(buf, a4, v51);
              LOBYTE(v10) = *(a1 + 64) ^ 1;
              *buf = &unk_1F5D19000;
              if (v252)
              {
                if ((v254 & 1) == 0)
                {
                  (*(*v252 + 40))();
                }
              }

              return (v10 & 1);
            }
          }

          if ((v47 & 4) == 0)
          {
            if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
            {
              v53 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
              if (v53 && *(v53 + 22) == 3 && *v53 && (v54 = *(v53 + 8), (*(v54 + 46) & 0x40) != 0) && ((*(v54 + 22) & 0x1000) != 0 ? (v55 = *(v53 + 8)) : (v55 = *(v54 + 8)), !strcmp(v55, "@version")))
              {
                v56 = *(v54 + 24);
              }

              else
              {
                v56 = 1;
              }

              v57 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
              if (v57)
              {
                v59 = *(v57 + 16);
              }

              else
              {
                v59 = -1;
              }

              if (v56 == v59)
              {
                if (v10 != a6)
                {
                  if (*v10 == *a6)
                  {
                    v207 = **(v10 + 16);
                    v208 = **(a6 + 2);
                    if (v207 == v208 && WORD1(v207) == WORD1(v208) && ((v208 ^ v207) & 0xFFFFFF00000000) == 0)
                    {
                      goto LABEL_364;
                    }
                  }

                  else if (re::areSameTranslatedVersion(v10, a6, v58))
                  {
                    goto LABEL_364;
                  }

                  if (*(v10 + 12) == *(a6 + 12))
                  {
                    re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v10, a6, a7);
                  }

                  else
                  {
                    v209 = re::TypeInfo::name(v10)[1];
                    re::TypeInfo::name(a6);
                  }

                  goto LABEL_438;
                }

LABEL_364:
                re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v10, a7);
LABEL_438:
                if (*(a1 + 64))
                {
                  goto LABEL_357;
                }

                v215 = *(a1 + 152) + 48 * *(a1 + 136);
                ++*(v215 - 16);
                goto LABEL_440;
              }

              if (*v10 == *a6 && (v178 = **(v10 + 16), v179 = **(a6 + 2), v178 == v179) && WORD1(v178) == WORD1(v179) && ((v179 ^ v178) & 0xFFFFFF00000000) == 0)
              {
                re::TypeInfo::atVersion(v10, v56, &v237);
                if (v237)
                {
                  if (a7)
                  {
                    v225 = 0;
                  }

                  else
                  {
                    v225 = re::TypeInfo::createInstance(&v238, *(a1 + 48), *(a1 + 264));
                  }

                  re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, v225, &v238, a7);
                  v227 = *(a1 + 64);
                  if (v227 == 1)
                  {
                    if (v225)
                    {
                      re::TypeInfo::releaseInstance(&v238, v225, *(a1 + 48), *(a1 + 264));
                    }
                  }

                  else if ((a7 & 1) == 0)
                  {
                    re::TypeInfo::TypeInfo(&Tag, &v238);
                    re::internal::upgradeObject(v225, &Tag, a4, v10, *(a1 + 48), *(a1 + 264), buf);
                    if ((buf[0] & 1) == 0)
                    {
                      if (v252)
                      {
                        LOBYTE(v233) = v253;
                      }

                      else
                      {
                        v233 = &v252 + 1;
                      }

                      if (buf[0] & 1) == 0 && v251 && (v252)
                      {
                        (*(*v251 + 40))();
                      }
                    }
                  }

                  LOBYTE(v10) = v227 ^ 1;
                  return (v10 & 1);
                }

                v234 = re::TypeInfo::name(v10)[1];
                v24 = "Unknown serialized type %s version %u. No matching runtime type found.";
              }

              else
              {
                v180 = re::TypeInfo::name(a6)[1];
                re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
                LOBYTE(v234) = v180;
                v24 = "Type %s version %u expected in JSON. Actual version found in JSON: %u";
              }

LABEL_254:
              v129 = a1;
              v130 = 0;
              goto LABEL_255;
            }

LABEL_357:
            LOBYTE(v10) = 0;
            return (v10 & 1);
          }

          re::TypeMemberCollection::TypeMemberCollection(buf, *v10, v46);
          re::TypeMemberCollection::operator[](buf, 0, &Tag);
          v122 = *(v249 + 24);
          re::TypeRegistry::typeInfo(Tag, *v249, buf);
          re::TypeInfo::TypeInfo(v246, &buf[8]);
          if (v10 == a6)
          {
            goto LABEL_204;
          }

          if (*v10 == *a6)
          {
            v168 = **(v10 + 16);
            v169 = *(a6 + 2);
            v170 = *v169;
            if (v168 == *v169 && WORD1(v168) == WORD1(v170) && ((v170 ^ v168) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_204;
            }
          }

          else
          {
            if (re::areSameTranslatedVersion(v10, a6, v123))
            {
LABEL_204:
              if (*(a1 + 64))
              {
                goto LABEL_357;
              }

              v124 = (*(*a1 + 72))(a1, a2, a3, a4 + v122, v246, v246, a7);
LABEL_374:
              LOBYTE(v10) = v124;
              return (v10 & 1);
            }

            v169 = *(a6 + 2);
          }

          if (*(v169 + 96) == 1)
          {
            re::TypeMemberCollection::TypeMemberCollection(&v237, *a6, v169);
            re::TypeMemberCollection::operator[](&v237, 0, v242);
            re::TypeRegistry::typeInfo(v242[0], *v243, buf);
            re::TypeInfo::TypeInfo(v244, &buf[8]);
            if (*(a1 + 64))
            {
              goto LABEL_357;
            }

            v124 = (*(*a1 + 72))(a1, a2, a3, a4 + v122, v246, v244, a7);
            goto LABEL_374;
          }

LABEL_356:
          goto LABEL_357;
        }

        v70 = a1;
        v71 = a2;
        v68 = v10;
        v69 = v10;
      }

      re::serializeDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v70, v71, v44, 0, v68, v69, 1);
      goto LABEL_440;
    }

    if (v23 != 5)
    {
      if (v23 != 6)
      {
        goto LABEL_89;
      }

      re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v237, &buf[8]);
      v27 = re::TypeInfo::name(&v237);
      v28 = BYTE4(v238);
      if (BYTE4(v238) == 1)
      {
        if (re::TypeInfo::isInteger(&v237))
        {
          v29 = *v27 >> 1;
          if (v29 > 0x303EE8780EDLL)
          {
            if (v29 == 0x303EE8780EELL)
            {
              v175 = v27[1];
              v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (v175 == "uint32_t")
              {
                goto LABEL_373;
              }

              v176 = strcmp(v175, "uint32_t");
              v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (!v176)
              {
                goto LABEL_373;
              }

              goto LABEL_349;
            }

            if (v29 != 0x303EE88E58DLL)
            {
              goto LABEL_349;
            }

            v148 = v27[1];
            v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v148 == "uint64_t")
            {
              goto LABEL_373;
            }

            v149 = "uint64_t";
          }

          else
          {
            if (v29 != 3393056694)
            {
              if (v29 == 0x303EE86A734)
              {
                v30 = v27[1];
                v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (v30 == "uint16_t")
                {
                  goto LABEL_373;
                }

                v32 = strcmp(v30, "uint16_t");
                v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (!v32)
                {
                  goto LABEL_373;
                }
              }

              goto LABEL_349;
            }

            v148 = v27[1];
            v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v148 == "size_t")
            {
              goto LABEL_373;
            }

            v149 = "size_t";
          }

          v174 = strcmp(v148, v149);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
          if (!v174)
          {
            goto LABEL_373;
          }

LABEL_349:
          *buf = 0x18E6A9A093;
          *&buf[8] = "uint8_t";
          v177 = re::StringID::operator==(v27, buf);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
          if (v177)
          {
            goto LABEL_373;
          }

          *buf = 0x16749F63A2;
          *&buf[8] = "int64_t";
          if (re::StringID::operator==(v27, buf))
          {
            v124 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, v10, a6, a7);
            goto LABEL_374;
          }

          Tag = 3327612;
          v248 = "long";
          v181 = re::StringID::operator==(v27, &Tag);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
          if (v181 || (*buf = 104431, *&buf[8] = "int", v182 = re::StringID::operator==(v27, buf), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v182) || (*buf = 109413500, *&buf[8] = "short", v183 = re::StringID::operator==(v27, buf), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v183))
          {
LABEL_373:
            v124 = v31(a1, a2, a3, a4, v10, a6, a7);
            goto LABEL_374;
          }

LABEL_227:
          if (v10 == a6)
          {
            goto LABEL_235;
          }

          if (*v10 == *a6)
          {
            v133 = **(v10 + 16);
            v134 = **(a6 + 2);
            if (v133 == v134 && WORD1(v133) == WORD1(v134) && ((v134 ^ v133) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_235;
            }
          }

          else if (re::areSameTranslatedVersion(v10, a6, v26))
          {
            goto LABEL_235;
          }

          if (*(v10 + 12) != *(a6 + 12))
          {
            goto LABEL_356;
          }

LABEL_235:
          if (a7)
          {
            v135 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
            re::TypeInfo::TypeInfo(&Tag, &buf[8]);
            re::internal::translateType(v135, &Tag, &v237);
            v136 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
            re::TypeInfo::TypeInfo(v246, &buf[8]);
            re::internal::translateType(v136, v246, &Tag);
            v137 = (*(*a1 + 80))(a1, &v237);
            if (v137)
            {
              v138 = v137;
              v10 = (*(*a1 + 80))(a1, &Tag);
              if (v10)
              {
                *buf = 0;
                if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, buf))
                {
                  goto LABEL_357;
                }

                for (i = *buf; i; --i)
                {
                  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 1);
                  v138(a1, "key", 0, 0, &v237, &v237, 1);
                  (v10)(a1, "value", 0, 0, &Tag, &Tag, 1);
                }

LABEL_251:
                goto LABEL_440;
              }

              p_Tag = &Tag;
              goto LABEL_332;
            }

            goto LABEL_242;
          }

          re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
          re::TypeInfo::TypeInfo(&v237, &buf[8]);
          re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 88), buf);
          re::TypeInfo::TypeInfo(&Tag, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
          re::TypeInfo::TypeInfo(v246, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
          re::TypeInfo::TypeInfo(v244, &buf[8]);
          re::TypeInfo::TypeInfo(v242, v10);
          v10 = (*(*a1 + 80))(a1, &v237);
          if (!v10)
          {
            p_Tag = &v237;
LABEL_332:
            v162 = re::TypeInfo::name(p_Tag);
            return (v10 & 1);
          }

          v141 = (*(*a1 + 80))(a1, &Tag);
          if (v141)
          {
            v142 = v141;
            v235[0] = (*(v243 + 96))(a4);
            if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, v235))
            {
              goto LABEL_357;
            }

            v143 = *(a1 + 48);
            v144 = *(v243 + 104);
            re::TypeInfo::TypeInfo(buf, v242);
            v144(a4, buf, v143);
            v145 = v235[0];
            if (!v235[0])
            {
              goto LABEL_251;
            }

            v146 = re::TypeInfo::createInstance(&v237, *(a1 + 48), *(a1 + 264));
            while (1)
            {
              re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
              (v10)(a1, "key", 0, v146, &v237, v246, 0);
              v125 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v147 = (*(v243 + 112))(a4, v242, v125, v146);
              v142(a1, "value", 0, v147, &Tag, v244, 0);
              if (!--v145)
              {
                re::TypeInfo::releaseInstance(&v237, v146, *(a1 + 48), *(a1 + 264));
                goto LABEL_251;
              }
            }

            v126 = *(a1 + 264);
            v127 = &v237;
            v128 = v146;
LABEL_213:
            re::TypeInfo::releaseInstance(v127, v128, v125, v126);
            goto LABEL_357;
          }

LABEL_252:
          v140 = &Tag;
          goto LABEL_253;
        }

        v28 = BYTE4(v238);
      }

      if (v28 == 8)
      {
        v63 = *v27 >> 1;
        if (v63 == 0x22C6ED80D0CLL)
        {
          v131 = v27[1];
          v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v131 == "StringID")
          {
            goto LABEL_373;
          }

          v132 = strcmp(v131, "StringID");
          v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v132)
          {
            goto LABEL_373;
          }
        }

        else if (v63 == 0x134375A94D9F7110)
        {
          v64 = v27[1];
          v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v64 == "DynamicString")
          {
            goto LABEL_373;
          }

          v65 = strcmp(v64, "DynamicString");
          v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v65)
          {
            goto LABEL_373;
          }
        }
      }

      goto LABEL_227;
    }

    if (v10 != a6)
    {
      if (*v10 == *a6)
      {
        v112 = **(v10 + 16);
        v113 = **(a6 + 2);
        if (v112 == v113 && WORD1(v112) == WORD1(v113) && ((v113 ^ v112) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_190;
        }

        v42 = 5;
      }

      else
      {
        if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_190;
        }

        v42 = *(v10 + 12);
      }

      if (v42 != *(a6 + 12))
      {
        goto LABEL_356;
      }
    }

LABEL_190:
    if (a7)
    {
      v114 = *(a1 + 272);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::internal::translateType(v114, &Tag, &v237);
      v115 = (*(*a1 + 80))(a1, &v237);
      if (v115)
      {
        v116 = v115;
        *buf = 0;
        LOBYTE(v10) = 0;
        if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, 0))
        {
          for (j = *buf; j; --j)
          {
            v116(a1, 0, 0, 0, &v237, &v237, 1);
          }

          goto LABEL_430;
        }

        return (v10 & 1);
      }

LABEL_242:
      v140 = &v237;
LABEL_253:
      v234 = re::TypeInfo::name(v140)[1];
      v24 = "Failed to resolve serialize function for type %s";
      goto LABEL_254;
    }

    re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
    re::TypeInfo::TypeInfo(&Tag, &buf[8]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
    re::TypeInfo::TypeInfo(v246, &buf[8]);
    re::TypeInfo::TypeInfo(v244, v10);
    v118 = (*(*a1 + 80))(a1, &Tag);
    if (!v118)
    {
      goto LABEL_252;
    }

    v119 = v118;
    v120 = (*(v245 + 88))(a4);
    v242[0] = v120;
    LOBYTE(v10) = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, v242, 0))
    {
      return (v10 & 1);
    }

    v121 = v242[0];
    if (v120 != v242[0])
    {
      re::TypeRegistry::typeInfo(v244[0], *(v245 + 80), buf);
      re::TypeInfo::TypeInfo(&v237, &buf[8]);
      v97 = *(v239 + 8);
      if (!is_mul_ok(v97, v121))
      {
LABEL_200:
        LOBYTE(v234) = v97;
        v24 = "Size overflow during deserialization. Element size = %zu, count = %zu";
        goto LABEL_254;
      }

      v184 = *(a1 + 48);
      v185 = *(v245 + 96);
      re::TypeInfo::TypeInfo(buf, v244);
      v185(a4, buf, v184, v121);
    }

    if (*(v245 + 104))
    {
      if (v121)
      {
        for (k = 0; k != v121; k = (k + 1))
        {
          v187 = (*(v245 + 104))(a4, k);
          v119(a1, 0, 0, v187, &Tag, v246, 0);
        }
      }
    }

    else
    {
      v188 = *(v245 + 112);
      if (!v188 || !*(v245 + 120) || !*(v245 + 128))
      {
        re::TypeInfo::TypeInfo(buf, v244);
        v234 = re::TypeInfo::name(buf)[1];
        v24 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_224;
      }

      v189 = v188(a4, *(a1 + 56));
      v190 = (*(v245 + 120))();
      if (v190)
      {
        v191 = v190;
        do
        {
          v119(a1, 0, 0, v191, &Tag, v246, 0);
          v191 = (*(v245 + 120))(v189);
        }

        while (v191);
      }

      (*(v245 + 128))(v189, *(a1 + 56));
    }

    goto LABEL_430;
  }

  if (*(v10 + 12) > 2u)
  {
    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_89;
      }

      if (v10 != a6)
      {
        if (*v10 == *a6)
        {
          v77 = **(v10 + 16);
          v78 = **(a6 + 2);
          if (v77 == v78)
          {
            v18 = WORD1(v77) == WORD1(v78);
            v79 = (v78 ^ v77) & 0xFFFFFF00000000;
            if (v18 && v79 == 0)
            {
              goto LABEL_146;
            }
          }
        }

        else if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_146;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_356;
        }

        v81 = *(v10 + 16);
        v82 = *(a6 + 2);
        v83 = *(v82 + 92) & 0xFFFFFF;
        if ((*(v81 + 92) & 0xFFFFFF) != 0)
        {
          if (!v83)
          {
            goto LABEL_356;
          }
        }

        else if (v83 || *(v81 + 96) != *(v82 + 96))
        {
          goto LABEL_356;
        }
      }

LABEL_146:
      if (a7)
      {
        v84 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::internal::translateType(v84, &Tag, &v237);
        v85 = (*(*a1 + 80))(a1, &v237);
        if (!v85)
        {
          goto LABEL_242;
        }

        v86 = v85;
        v87 = *(a6 + 2);
        v88 = *(v87 + 92) & 0xFFFFFF;
        if (v88)
        {
          v89 = 0;
          v90 = 8;
        }

        else
        {
          v89 = *(v87 + 96);
          v90 = 4;
        }

        *buf = v89;
        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, v90))
        {
          goto LABEL_357;
        }

        v159 = *buf;
        if (v88)
        {
          v160 = *buf == 0;
        }

        else
        {
          v160 = 1;
        }

        v161 = v160;
        if (v160)
        {
          if (!*buf)
          {
            goto LABEL_430;
          }
        }

        else
        {
          v242[0] = 0;
          v242[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v242);
        }

        do
        {
          v86(a1, 0, 0, 0, &v237, &v237, 1);
          --v159;
        }

        while (v159);
        if (v161)
        {
          goto LABEL_430;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(v246, &buf[8]);
        re::TypeInfo::TypeInfo(v244, v10);
        v91 = (*(*a1 + 80))(a1, &Tag);
        if (!v91)
        {
          goto LABEL_252;
        }

        v92 = v91;
        v93 = re::ArrayAccessor::size(v244, a4);
        v236 = v93;
        v94 = *(*(v10 + 16) + 92) & 0xFFFFFF;
        if (v94)
        {
          v95 = 8;
        }

        else
        {
          v95 = 4;
        }

        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, &v236, v95))
        {
          goto LABEL_357;
        }

        v96 = v236;
        if (v93 != v236)
        {
          if ((*(v245 + 92) & 0xFFFFFF) == 0)
          {
            LOBYTE(v234) = v93;
            v24 = "Invalid array size. Expected size = %zu, actual size = %zu";
            goto LABEL_254;
          }

          re::TypeRegistry::typeInfo(v244[0], *(v245 + 80), buf);
          re::TypeInfo::TypeInfo(&v237, &buf[8]);
          v97 = *(v239 + 8);
          if (!is_mul_ok(v97, v96))
          {
            goto LABEL_200;
          }

          re::ArrayAccessor::reset(v244, a4, *(a1 + 48), v96);
          v93 = v96;
        }

        if (v94)
        {
          v202 = v93 == 0;
        }

        else
        {
          v202 = 1;
        }

        v203 = v202;
        if (!v202)
        {
          v204 = *a4;
          v235[0] = 0;
          v235[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v204, v235);
          v93 = v96;
        }

        if (v93)
        {
          v205 = 0;
          if (v96 <= 1)
          {
            v96 = 1;
          }

          do
          {
            v206 = re::ArrayAccessor::elementAt(v244, a4, v205);
            v92(a1, 0, 0, v206, &Tag, v246, 0);
            ++v205;
          }

          while (v96 != v205);
        }

        if (v203)
        {
          goto LABEL_430;
        }
      }

      (*(*a1 + 24))(a1);
LABEL_430:
      goto LABEL_440;
    }

    if (v10 != a6)
    {
      if (*v10 == *a6)
      {
        v102 = **(v10 + 16);
        v103 = **(a6 + 2);
        if (v102 == v103 && WORD1(v102) == WORD1(v103) && ((v103 ^ v102) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_171;
        }

        v40 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_171;
        }

        v40 = *(v10 + 12);
      }

      if (v40 != *(a6 + 12))
      {
        goto LABEL_356;
      }
    }

LABEL_171:
    if (a7)
    {
      LOBYTE(Tag) = 0;
      re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, &Tag);
      if (Tag == 1)
      {
        v104 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&v237, &buf[8]);
        re::internal::translateType(v104, &v237, buf);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, buf, buf, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v237, &buf[8]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::TypeInfo::TypeInfo(buf, v10);
      v246[0] = (*(*&buf[16] + 88))(a4) != 0;
      v105 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, v246);
      if (v246[0])
      {
        v106 = re::TypeInfo::createInstance(&v237, *(a1 + 48), *(a1 + 264));
        (*(*&buf[16] + 96))(a4, v106);
        re::TypeInfo::releaseInstance(&v237, v106, *(a1 + 48), *(a1 + 264));
        v107 = (*(*&buf[16] + 88))(a4);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v107, &v237, &Tag, 0);
        }
      }

      else
      {
        (*(*&buf[16] + 96))(a4, 0, v105);
      }
    }

    goto LABEL_440;
  }

  if (v23 != 1)
  {
    if (v23 != 2)
    {
      goto LABEL_89;
    }

    if (v10 == a6)
    {
      goto LABEL_264;
    }

    if (*v10 == *a6)
    {
      v72 = **(v10 + 16);
      v73 = **(a6 + 2);
      if (v72 == v73 && WORD1(v72) == WORD1(v73) && ((v73 ^ v72) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_136;
      }

      v25 = 2;
    }

    else
    {
      if (re::areSameTranslatedVersion(v10, a6, a3))
      {
        goto LABEL_136;
      }

      v25 = *(v10 + 12);
    }

    if (v25 != *(a6 + 12))
    {
      goto LABEL_356;
    }

    v74 = re::TypeInfo::name(v10);
    v75 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v74, v75))
    {
      goto LABEL_356;
    }

LABEL_136:
    if (*v10 != *a6)
    {
      v76 = re::areSameTranslatedVersion(v10, a6, a3);
      goto LABEL_265;
    }

    v150 = **(v10 + 16);
    v151 = **(a6 + 2);
    if (v150 != v151 || WORD1(v150) != WORD1(v151) || ((v151 ^ v150) & 0xFFFFFF00000000) != 0)
    {
      v76 = 0;
      goto LABEL_265;
    }

LABEL_264:
    v76 = 1;
LABEL_265:
    if (a7)
    {
      *buf = 0;
      if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, buf))
      {
        goto LABEL_357;
      }

      if (*buf)
      {
      }

LABEL_440:
      LOBYTE(v10) = *(a1 + 64) ^ 1;
      return (v10 & 1);
    }

    Tag = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &Tag))
    {
      goto LABEL_357;
    }

    v152 = Tag;
    if (!Tag)
    {
      v24 = "Failed to read enum constant. String is empty.";
      goto LABEL_254;
    }

    if (Tag >= 0x401)
    {
      LOBYTE(v234) = Tag;
      v24 = "Failed to read enum constant. String is too long. Length: %zu";
      goto LABEL_254;
    }

    v171 = (*(**(a1 + 56) + 32))(*(a1 + 56), Tag + 1, 0);
    v171[v152] = 0;
    if (*(a1 + 64) == 1)
    {
      goto LABEL_338;
    }

    v192 = *v171;
    if (*v171)
    {
      v193 = v171[1];
      if (v193)
      {
        v194 = (v171 + 2);
        do
        {
          v192 = 31 * v192 + v193;
          v195 = *v194++;
          v193 = v195;
        }

        while (v195);
      }
    }

    *buf = 2 * v192;
    *&buf[8] = v171;
    EnumConstantIndex = re::internal::getEnumConstantIndex(a6, buf, v172);
    v197 = EnumConstantIndex;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    if ((v197 & 0x80000000) != 0)
    {
      v216 = *re::foundationSerializationLogObjects(EnumConstantIndex);
      if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
      {
        v217 = re::TypeInfo::name(a6)[1];
        *buf = 136315394;
        *&buf[4] = v171;
        *&buf[12] = 2080;
        *&buf[14] = v217;
        _os_log_impl(&dword_1E1C61000, v216, OS_LOG_TYPE_INFO, "String %s is not a valid enum constant of type %s - skipping.", buf, 0x16u);
      }

      v218 = 0;
    }

    else if (v76)
    {
      *buf = re::TypeInfo::enumConstants(v10);
      *&buf[8] = v198;
      v199 = v197 - v198;
      if (v197 >= v198)
      {
        v237 = re::TypeInfo::renamedEnumConstants(v10);
        v238 = v226;
        v200 = re::Slice<re::EnumConstant>::operator[](&v237, v199);
      }

      else
      {
        v200 = re::Slice<re::EnumConstant>::operator[](buf, v197);
      }

      v218 = v200;
    }

    else
    {
      v219 = *(*a6 + 856);
      if (!v219 || (v218 = re::internal::TypeTranslationTable::translateSerializedEnum(v219, a6, v197, v10)) == 0)
      {
        re::TypeInfo::name(v10);
LABEL_338:
        v173 = *(**(a1 + 56) + 40);
        goto LABEL_339;
      }
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), v171);
    if (v218)
    {
      memcpy(a4, v218, *(*(v10 + 16) + 8));
    }

    goto LABEL_440;
  }

  if (v10 != a6)
  {
    if (*v10 == *a6)
    {
      v98 = **(v10 + 16);
      v99 = **(a6 + 2);
      if (v98 != v99)
      {
        goto LABEL_356;
      }

      v18 = WORD1(v98) == WORD1(v99);
      v100 = (v99 ^ v98) & 0xFFFFFF00000000;
      if (!v18 || v100 != 0)
      {
        goto LABEL_356;
      }
    }

    else if (!re::areSameTranslatedVersion(v10, a6, a3))
    {
      goto LABEL_356;
    }
  }

  v37 = re::TypeInfo::name(v10);
  v38 = *v37 >> 1;
  if (v38 > 0x16749DFF02)
  {
    if (*v37 >> 1 > 0x303EE88E58CLL)
    {
      if (*v37 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v38 == 0x2A8CEB1C43F60844)
        {
LABEL_322:
        }

        if (v38 != 0x3AFE951B1F1F3391)
        {
          if (v38 != 0x412A40E9CB79BA35)
          {
            goto LABEL_394;
          }

          goto LABEL_316;
        }

LABEL_319:
      }

      if (v38 == 0x303EE88E58DLL)
      {
        goto LABEL_316;
      }

      if (v38 != 0x2710786C3AC82DA1)
      {
        goto LABEL_394;
      }
    }

    else
    {
      if (*v37 >> 1 <= 0x18E6A9A092)
      {
        if (v38 != 0x16749DFF03)
        {
          if (v38 != 0x16749F63A2)
          {
            goto LABEL_394;
          }

LABEL_303:
        }

        goto LABEL_325;
      }

      if (v38 != 0x18E6A9A093)
      {
        if (v38 != 0x303EE86A734)
        {
          if (v38 != 0x303EE8780EELL)
          {
            goto LABEL_394;
          }

          goto LABEL_322;
        }

        goto LABEL_319;
      }
    }
  }

  if (*v37 >> 1 > 0x685847B)
  {
    if (*v37 >> 1 <= 0xB9708BDD)
    {
      if (v38 != 109413500)
      {
        if (v38 != 2969009105)
        {
          goto LABEL_394;
        }

        return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
      }

LABEL_328:
    }

    if (v38 == 3111160798)
    {
    }

    if (v38 != 3393056694)
    {
      if (v38 != 0x16749D2549)
      {
        goto LABEL_394;
      }

      goto LABEL_328;
    }

LABEL_316:
  }

  if (*v37 >> 1 <= 0x2E9355)
  {
    if (v38 != 104431)
    {
      if (v38 != 3029738)
      {
        goto LABEL_394;
      }
    }

LABEL_325:
  }

  if (v38 != 3052374)
  {
    if (v38 != 3327612)
    {
      if (v38 == 97526364)
      {

        return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
      }

LABEL_394:
      v234 = re::TypeInfo::name(v10)[1];
      v24 = "Unsupported basic type %s.";
      goto LABEL_224;
    }

    goto LABEL_303;
  }
}