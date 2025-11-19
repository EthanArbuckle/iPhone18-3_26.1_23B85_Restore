void re::registerSerializeSwiftCodableComponent(re *this, const char *a2)
{
  v3 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v3);
  v20 = 0x7F36B44A9D0F5EC6;
  v21 = "AssetBinarySerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x81C6E49267FF3CC8;
  v21 = "AssetBinaryDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x3D2ADDFABE78EB94;
  v21 = "AssetOPACKSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x935762BFD538CE16;
  v21 = "AssetOPACKDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x8EBD744EB006D4;
  v21 = "AssetJSONSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xD414A1634161956;
  v21 = "AssetJSONDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xE1F66B0F30BD1E9ELL;
  v21 = "ECSJSONSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x3373FC80C73C66A0;
  v21 = "ECSJSONDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x88B8E3BC1E0ECD0ALL;
  v21 = "ECSOPACKSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x337AFDA7A6DC2A0CLL;
  v21 = "ECSOPACKDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xD66B7D4190E6B598;
  v21 = "NetworkOPACKSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xDEED4B9BC35C271ALL;
  v21 = "NetworkOPACKDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  re::ecs2::IntrospectedNetworkTypeHelper::registerSwiftComponent(this, v17);
  std::__shared_mutex_base::unlock(v3);
}

void re::registerSerializeFunc<re::AssetBinarySerializer>(const re::StringID *a1, re::TypeRegistry *this, re::StringID *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = re::TypeRegistry::typeID(this, a3, &v14);
  if (v14)
  {
    re::TypeRegistry::typeID(this, a1, buf);
    if (!*buf)
    {
      re::TypeRegistry::declareType(a1, this, 8, 1u, 0, &v13);
      *buf = v13;
    }

    v11 = *buf;
    v12 = v14;
    re::TypeRegistry::addAttribute(this, &v12, -1, &v11, a4, 0);
  }

  else
  {
    v9 = *re::foundationSerializationLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a3 + 1);
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Failed to register serialization function. Type %s not found in type registry.", buf, 0xCu);
    }
  }
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if ((*(*v14 + 8))(v14))
  {
    re::TypeMemberCollection::TypeMemberCollection(v37, *a5, a5[2]);
    re::TypeMemberCollection::operator[](v37, 0, v39);
    re::TypeRegistry::typeInfo(v39[0], *v39[2], &Length);
    re::TypeInfo::TypeInfo(v40, v43);
    re::TypeRegistry::typeInfo(v40[0], v40[2][10], &Length);
    re::TypeInfo::TypeInfo(v41, v43);
    v15 = re::TypeMemberCollection::TypeMemberCollection(&Length, v41[0], v41[2]);
    if (v43[3])
    {
      re::TypeMemberCollection::operator[](v15, 0, v37);
      if (*(v38 + 8) >> 1 != 0x274B0FCFAA8 || (v16 = *(v38 + 16), v16 != "__JSON__") && strcmp(v16, "__JSON__"))
      {
        v17 = re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
        return v17 & 1;
      }
    }
  }

  v18 = (*(*a4 + 40))(a4);
  if ((*(*v18 + 8))(v18))
  {
    v20 = v18[12];
    if (v20)
    {
      v21 = v20(a4, v18, "json");
      if (v21)
      {
        v22 = v21;
        goto LABEL_13;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v22 = re::ecs2::g_encodeComponent(a4, v18, "json");
    if (!v22)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v23, v24, v25, v26, v27, v28, v18[4]);
LABEL_23:
      v17 = 0;
      return v17 & 1;
    }

LABEL_13:
    Length = CFDataGetLength(v22);
    if (Length)
    {
      LODWORD(v37[0]) = 2;
      if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, v37, 0))
      {
        LODWORD(v41[0]) = 2;
        if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, v41, 0))
        {
          if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, &Length, 0))
          {
            BytePtr = CFDataGetBytePtr(v22);
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, BytePtr, 0);
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
          }

          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        }

        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
      }

      CFRelease(v22);
      v17 = *(a1 + 64) ^ 1;
      return v17 & 1;
    }

    re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v29, v30, v31, v32, v33, v34, v18[4]);
    CFRelease(v22);
    goto LABEL_23;
  }

  re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsEmbeddedJSON", 42);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if (!(*(*v14 + 8))(v14) || (re::TypeMemberCollection::TypeMemberCollection(v43, *a5, a5[2]), re::TypeMemberCollection::operator[](v43, 0, v45), re::TypeRegistry::typeInfo(v45[0], *v45[2], &__dst), re::TypeInfo::TypeInfo(v46, v49), re::TypeRegistry::typeInfo(v46[0], v46[2][10], &__dst), re::TypeInfo::TypeInfo(v47, v49), v15 = re::TypeMemberCollection::TypeMemberCollection(&__dst, v47[0], v47[2]), !v49[3]) || (re::TypeMemberCollection::operator[](v15, 0, v43), *(v44 + 8) >> 1 == 0x274B0FCFAA8) && ((v16 = *(v44 + 16), v16 == "__JSON__") || !strcmp(v16, "__JSON__")))
  {
    v18 = (*(*a4 + 40))(a4);
    LODWORD(v43[0]) = 0;
    v17 = re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, v43, 0);
    if (!v17)
    {
      return v17 & 1;
    }

    if (LODWORD(v43[0]) == 2)
    {
      v17 = re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, v43, 0);
      if (!v17)
      {
        return v17 & 1;
      }

      if (LODWORD(v43[0]) == 2)
      {
        __dst = 0;
        v24 = re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, a3, &__dst, 0);
        LOBYTE(v17) = 0;
        if (!v24)
        {
          return v17 & 1;
        }

        if (__dst)
        {
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], __dst);
          if (Mutable)
          {
            v31 = Mutable;
            CFDataIncreaseLength(Mutable, __dst);
            MutableBytePtr = CFDataGetMutableBytePtr(v31);
            re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, MutableBytePtr, 0);
            re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
            re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
            re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
            if ((*(*v18 + 8))(v18))
            {
              v33 = v18[13];
              if (v33)
              {
                if (v33(a4, v18, v31, "json"))
                {
                  CFRelease(v31);
LABEL_25:
                  LOBYTE(v17) = *(a1 + 64) ^ 1;
                  return v17 & 1;
                }
              }
            }

            v36 = re::ecs2::g_decodeComponent(a4, v18, v31, "json");
            CFRelease(v31);
            if (v36)
            {
              goto LABEL_25;
            }

            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.", v37, v38, v39, v40, v41, v18[4]);
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to allocate buffer for JSON data (size = %zu bytes).", v26, v27, v28, v29, v30, __dst);
          }

LABEL_20:
          LOBYTE(v17) = 0;
          return v17 & 1;
        }

        v34 = "JSON data is empty.";
      }

      else
      {
        v34 = "JSON data not found.";
      }
    }

    else
    {
      v34 = "Object not found.";
    }

    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, v34, v19, v20, v21, v22, v23, v42);
    goto LABEL_20;
  }

  LOBYTE(v17) = re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
  return v17 & 1;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if ((*(*v14 + 8))(v14))
  {
    re::TypeMemberCollection::TypeMemberCollection(v37, *a5, a5[2]);
    re::TypeMemberCollection::operator[](v37, 0, v39);
    re::TypeRegistry::typeInfo(v39[0], *v39[2], &Length);
    re::TypeInfo::TypeInfo(v40, v43);
    re::TypeRegistry::typeInfo(v40[0], v40[2][10], &Length);
    re::TypeInfo::TypeInfo(v41, v43);
    v15 = re::TypeMemberCollection::TypeMemberCollection(&Length, v41[0], v41[2]);
    if (v43[3])
    {
      re::TypeMemberCollection::operator[](v15, 0, v37);
      if (*(v38 + 8) >> 1 != 0x274B0FCFAA8 || (v16 = *(v38 + 16), v16 != "__JSON__") && strcmp(v16, "__JSON__"))
      {
        v17 = re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
        return v17 & 1;
      }
    }
  }

  v18 = (*(*a4 + 40))(a4);
  if ((*(*v18 + 8))(v18))
  {
    v20 = v18[12];
    if (v20)
    {
      v21 = v20(a4, v18, "json");
      if (v21)
      {
        v22 = v21;
        goto LABEL_13;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v22 = re::ecs2::g_encodeComponent(a4, v18, "json");
    if (!v22)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v23, v24, v25, v26, v27, v28, v18[4]);
LABEL_23:
      v17 = 0;
      return v17 & 1;
    }

LABEL_13:
    Length = CFDataGetLength(v22);
    if (Length)
    {
      LODWORD(v37[0]) = 2;
      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, v37, 0))
      {
        LODWORD(v41[0]) = 2;
        if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, v41, 0))
        {
          if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, a3, &Length, 0))
          {
            BytePtr = CFDataGetBytePtr(v22);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, BytePtr, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
          }

          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        }

        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
      }

      CFRelease(v22);
      v17 = *(a1 + 64) ^ 1;
      return v17 & 1;
    }

    re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v29, v30, v31, v32, v33, v34, v18[4]);
    CFRelease(v22);
    goto LABEL_23;
  }

  re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsEmbeddedJSON", 42);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if (!(*(*v14 + 8))(v14) || (re::TypeMemberCollection::TypeMemberCollection(v43, *a5, a5[2]), re::TypeMemberCollection::operator[](v43, 0, v45), re::TypeRegistry::typeInfo(v45[0], *v45[2], &v48), re::TypeInfo::TypeInfo(v46, v49), re::TypeRegistry::typeInfo(v46[0], v46[2][10], &v48), re::TypeInfo::TypeInfo(v47, v49), v15 = re::TypeMemberCollection::TypeMemberCollection(&v48, v47[0], v47[2]), !v49[3]) || (re::TypeMemberCollection::operator[](v15, 0, v43), *(v44 + 8) >> 1 == 0x274B0FCFAA8) && ((v16 = *(v44 + 16), v16 == "__JSON__") || !strcmp(v16, "__JSON__")))
  {
    v18 = (*(*a4 + 40))(a4);
    LODWORD(v43[0]) = 0;
    v17 = re::EncoderOPACK<re::SeekableInputStream>::beginPointer(a1 + 24, a2, a3, v43, 0);
    if (!v17)
    {
      return v17 & 1;
    }

    if (LODWORD(v43[0]) == 2)
    {
      v17 = re::EncoderOPACK<re::SeekableInputStream>::beginPointer(a1 + 24, a2, a3, v43, 0);
      if (!v17)
      {
        return v17 & 1;
      }

      if (LODWORD(v43[0]) == 2)
      {
        v48 = 0;
        v24 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, a3, &v48, 0);
        LOBYTE(v17) = 0;
        if (!v24)
        {
          return v17 & 1;
        }

        if (v48)
        {
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v48);
          if (Mutable)
          {
            v31 = Mutable;
            CFDataIncreaseLength(Mutable, v48);
            MutableBytePtr = CFDataGetMutableBytePtr(v31);
            re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, MutableBytePtr, 0);
            re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
            re::EncoderOPACK<re::SeekableInputStream>::endPointer((a1 + 24));
            re::EncoderOPACK<re::SeekableInputStream>::endPointer((a1 + 24));
            if ((*(*v18 + 8))(v18))
            {
              v33 = v18[13];
              if (v33)
              {
                if (v33(a4, v18, v31, "json"))
                {
                  CFRelease(v31);
LABEL_25:
                  LOBYTE(v17) = *(a1 + 64) ^ 1;
                  return v17 & 1;
                }
              }
            }

            v36 = re::ecs2::g_decodeComponent(a4, v18, v31, "json");
            CFRelease(v31);
            if (v36)
            {
              goto LABEL_25;
            }

            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.", v37, v38, v39, v40, v41, v18[4]);
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to allocate buffer for JSON data (size = %zu bytes).", v26, v27, v28, v29, v30, v48);
          }

LABEL_20:
          LOBYTE(v17) = 0;
          return v17 & 1;
        }

        v34 = "JSON data is empty.";
      }

      else
      {
        v34 = "JSON data not found.";
      }
    }

    else
    {
      v34 = "Object not found.";
    }

    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, v34, v19, v20, v21, v22, v23, v42);
    goto LABEL_20;
  }

  LOBYTE(v17) = re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
  return v17 & 1;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 40))(a4);
  if ((*(*v7 + 8))(v7))
  {
    v9 = v7[12];
    if (v9)
    {
      v10 = v9(a4, v7, "json");
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v10 = re::ecs2::g_encodeComponent(a4, v7, "json");
    if (!v10)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v11, v12, v13, v14, v15, v16, v7[4]);
      return 0;
    }

LABEL_6:
    v17 = v10;
    if (CFDataGetLength(v10))
    {
      BytePtr = CFDataGetBytePtr(v17);
      Length = CFDataGetLength(v17);
      v32 = a2;
      v26 = *(a1 + 64);
      if ((v26 & 1) == 0)
      {
        v27 = Length;
        if ((*(*(a1 + 152) + 48 * *(a1 + 136) - 44) & 0x20) != 0)
        {
          rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 192), &v32);
        }

        v28 = *(a1 + 192);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v28);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteRawValue(v28, BytePtr, v27);
        v29 = *(a1 + 152) + 48 * *(a1 + 136);
        ++*(v29 - 16);
      }

      v30 = v26 ^ 1u;
    }

    else
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v18, v19, v20, v21, v22, v23, v7[4]);
      v30 = 0;
    }

    CFRelease(v17);
    return v30;
  }

  re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsJSON", 163);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 40))(a4);
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v26 = 256;
  if ((*(a1 + 64) & 1) == 0)
  {
    JSONValue = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue((a1 + 24), a2, 0);
    if (JSONValue)
    {
      v27 = &v23;
      memset(v28, 0, sizeof(v28));
      v29 = 0;
      v30 = 512;
      v31 = 324;
      v32 = 0;
      rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(JSONValue, &v27);
      v9 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v9 - 16);
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v28);
    }
  }

  if ((*(a1 + 64) & 1) != 0 || *(&v24 + 1) == v24)
  {
    goto LABEL_14;
  }

  v10 = *MEMORY[0x1E695E480];
  String = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(&v23);
  v12 = CFDataCreateWithBytesNoCopy(v10, String, *(&v24 + 1) - v24, *MEMORY[0x1E695E498]);
  if ((*(*v7 + 8))(v7))
  {
    v14 = v7[13];
    if (v14)
    {
      if (v14(a4, v7, v12, "json"))
      {
        CFRelease(v12);
LABEL_12:
        v21 = *(a1 + 64) ^ 1;
LABEL_15:
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(&v23);
        return v21 & 1;
      }
    }
  }

  if (re::ecs2::g_decodeComponent)
  {
    v15 = re::ecs2::g_decodeComponent(a4, v7, v12, "json");
    CFRelease(v12);
    if (v15)
    {
      goto LABEL_12;
    }

    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.", v16, v17, v18, v19, v20, v7[4]);
LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Swift Codable Decode Callback not registered", "g_decodeComponent", "serializeComponentAsJSON", 204, v23);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 40))(a4);
  if ((*(*v7 + 8))(v7))
  {
    v9 = v7[12];
    if (v9)
    {
      v10 = v9(a4, v7, "json");
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v10 = re::ecs2::g_encodeComponent(a4, v7, "json");
    if (!v10)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v11, v12, v13, v14, v15, v16, v7[4]);
      return 0;
    }

LABEL_6:
    v17 = v10;
    if (CFDataGetLength(v10))
    {
      BytePtr = CFDataGetBytePtr(v17);
      Length = CFDataGetLength(v17);
      v32 = a2;
      v26 = *(a1 + 64);
      if ((v26 & 1) == 0)
      {
        v27 = Length;
        if ((*(*(a1 + 152) + 48 * *(a1 + 136) - 44) & 0x20) != 0)
        {
          rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 192), &v32);
        }

        v28 = *(a1 + 192);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v28);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteRawValue(v28, BytePtr, v27);
        v29 = *(a1 + 152) + 48 * *(a1 + 136);
        ++*(v29 - 16);
      }

      v30 = v26 ^ 1u;
    }

    else
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v18, v19, v20, v21, v22, v23, v7[4]);
      v30 = 0;
    }

    CFRelease(v17);
    return v30;
  }

  re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsJSON", 163);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if (!(*(*v14 + 8))(v14) || (re::TypeMemberCollection::TypeMemberCollection(v43, *a5, a5[2]), re::TypeMemberCollection::operator[](v43, 0, v45), re::TypeRegistry::typeInfo(v45[0], *v45[2], &v48), re::TypeInfo::TypeInfo(v46, v49), re::TypeRegistry::typeInfo(v46[0], v46[2][10], &v48), re::TypeInfo::TypeInfo(v47, v49), v15 = re::TypeMemberCollection::TypeMemberCollection(&v48, v47[0], v47[2]), !v49[3]) || (re::TypeMemberCollection::operator[](v15, 0, v43), *(v44 + 8) >> 1 == 0x274B0FCFAA8) && ((v16 = *(v44 + 16), v16 == "__JSON__") || !strcmp(v16, "__JSON__")))
  {
    v18 = (*(*a4 + 40))(a4);
    LODWORD(v43[0]) = 0;
    v17 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, a3, v43, 0);
    if (!v17)
    {
      return v17 & 1;
    }

    if (LODWORD(v43[0]) == 2)
    {
      v17 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, a3, v43, 0);
      if (!v17)
      {
        return v17 & 1;
      }

      if (LODWORD(v43[0]) == 2)
      {
        v48 = 0;
        v24 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, &v48, 0);
        LOBYTE(v17) = 0;
        if (!v24)
        {
          return v17 & 1;
        }

        if (v48)
        {
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v48);
          if (Mutable)
          {
            v31 = Mutable;
            CFDataIncreaseLength(Mutable, v48);
            MutableBytePtr = CFDataGetMutableBytePtr(v31);
            re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, MutableBytePtr, 0);
            re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
            re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
            re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
            if ((*(*v18 + 8))(v18))
            {
              v33 = v18[13];
              if (v33)
              {
                if (v33(a4, v18, v31, "json"))
                {
                  CFRelease(v31);
LABEL_25:
                  LOBYTE(v17) = *(a1 + 64) ^ 1;
                  return v17 & 1;
                }
              }
            }

            v36 = re::ecs2::g_decodeComponent(a4, v18, v31, "json");
            CFRelease(v31);
            if (v36)
            {
              goto LABEL_25;
            }

            re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.", v37, v38, v39, v40, v41, v18[4]);
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "Failed to allocate buffer for JSON data (size = %zu bytes).", v26, v27, v28, v29, v30, v48);
          }

LABEL_20:
          LOBYTE(v17) = 0;
          return v17 & 1;
        }

        v34 = "JSON data is empty.";
      }

      else
      {
        v34 = "JSON data not found.";
      }
    }

    else
    {
      v34 = "Object not found.";
    }

    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, v34, v19, v20, v21, v22, v23, v42);
    goto LABEL_20;
  }

  LOBYTE(v17) = re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
  return v17 & 1;
}

double re::registerSerializationFunctions(void)::$_0::__invoke@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v2 = *(*(*(*a1 + 40))(a1) + 56);

    v2();
  }

  else
  {
    *a2 = 0;
    *&result = 0xFFFFFFFFLL;
    a2[1] = 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "w", 3, a4 + 24, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v21[0]) = 1, DWORD1(v21[0]) = 0, *(&v21[0] + 1) = a2, memset(&v21[1], 0, 32), re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "position", 1, a4, a7), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v21[0]) = 1, DWORD1(v21[0]) = 0, *(&v21[0] + 1) = a2, memset(&v21[1], 0, 32), re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "scale", 1, a4, a7), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "translation", 3, a4 + 32, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 != this)
  {
    v14 = re::TypeInfo::enumConstants(this);
    if (!v15)
    {
LABEL_6:
      re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v20);
      re::TypeInfo::TypeInfo(v19, v21);
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v20);
      re::TypeInfo::TypeInfo(v18, v21);
      if (a1[64])
      {
        return 0;
      }

      else
      {
        return (*(*a1 + 72))(a1, a2, a3, a4, v19, v18, a7);
      }
    }

    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  return re::serializeEnum<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, this, a7);
}

uint64_t re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  v10 = 2;
  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "x", 0, a4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "y", 1, a4 + 4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "x", 0, a4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "y", 1, a4 + 4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "z", 2, a4 + 8, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "x", 0, a4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "y", 1, a4 + 4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "z", 2, a4 + 8, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "w", 3, a4 + 12, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3054780, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3085590, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3068150, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "w", 3, a4 + 24, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3054780, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column1", a4 + 8, a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3085590, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3068150, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column3", a4 + 48, a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v21[0]) = 1, DWORD1(v21[0]) = 0, *(&v21[0] + 1) = a2, memset(&v21[1], 0, 32), re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "position", a4, a7), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "orientation", a4 + 16, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v21[0]) = 1, DWORD1(v21[0]) = 0, *(&v21[0] + 1) = a2, memset(&v21[1], 0, 32), re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "scale", a4, a7), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "rotation", a4 + 16, a7), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "translation", a4 + 32, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v25, v27);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v24, v27);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v25, v24, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v19, v20, v21, v22, v23, v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    LOBYTE(v11[0]) = 5;
    DWORD1(v11[0]) = 4;
    *(&v11[0] + 1) = a2;
    v11[1] = xmmword_1E3054780;
    v12 = 0;
    v13 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    LOBYTE(v11[0]) = 5;
    DWORD1(v11[0]) = 4;
    *(&v11[0] + 1) = a2;
    v11[1] = xmmword_1E3085590;
    v12 = 0;
    v13 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    LOBYTE(v11[0]) = 5;
    DWORD1(v11[0]) = 4;
    *(&v11[0] + 1) = a2;
    v11[1] = xmmword_1E3068150;
    v12 = 0;
    v13 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "w", 3, a3 + 12, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "w", 3, a4 + 24, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "translation", 3, a4 + 32, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 != this)
  {
    v14 = re::TypeInfo::enumConstants(this);
    if (!v15)
    {
LABEL_6:
      re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v20);
      re::TypeInfo::TypeInfo(v19, v21);
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v20);
      re::TypeInfo::TypeInfo(v18, v21);
      if (a1[64])
      {
        return 0;
      }

      else
      {
        return (*(*a1 + 72))(a1, a2, a3, a4, v19, v18, a7);
      }
    }

    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  return re::serializeEnum<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, this, a7);
}

uint64_t re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, int a3, char *a4, char a5)
{
  v10 = 2;
  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "x", 0, a4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "x", 0, a4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "x", 0, a4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 2;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 2)
      {
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 3;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 3)
      {
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 4;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 4)
      {
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "w", 3, a4 + 24, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 2;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 2)
      {
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 2, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 3;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 3)
      {
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 3, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 4;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 4)
      {
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 4, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7);
      re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "translation", 3, a4 + 32, a7);
      re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v25, v27);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v24, v27);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v25, v24, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v19, v20, v21, v22, v23, v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderOPACK<re::SeekableInputStream>>(_anonymous_namespace_ *a1, const char *a2, int a3, char *a4, char a5)
{
  v15 = 2;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 2)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 3;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 3)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 4;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 4;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize quaternion. Expected array length = 4, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "w", 3, a4 + 3, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column3", 3, a4 + 12, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "orientation", 2, a4 + 4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "rotation", 2, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "translation", 3, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, float *a4, char a5)
{
  v10 = 2;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 2;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v25, 4))
    {
      if (v25 == 2)
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7, "double");
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 3;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v25, 4))
    {
      if (v25 == 3)
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7, "double");
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 4;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v25, 4))
    {
      if (v25 == 4)
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "w", 3, a4 + 3, a7, "double");
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 2;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v25, 4))
    {
      if (v25 == 2)
      {
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 2, a7);
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 2, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 3;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v25, 4))
    {
      if (v25 == 3)
      {
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 3, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 4;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v25, 4))
    {
      if (v25 == 4)
      {
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column3", 3, a4 + 12, a7);
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 4, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0) || (re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "position", 1, a4, a7), re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "orientation", 2, a4 + 4, a7), (*(a1 + 64) & 1) != 0))
        {
          v15 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
          v14 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v14 - 16);
          v15 = *(a1 + 64) ^ 1;
        }

        return v15 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0) || (re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "scale", 1, a4, a7), re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "rotation", 2, a4 + 4, a7), re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "translation", 3, a4 + 8, a7), (*(a1 + 64) & 1) != 0))
        {
          v15 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
          v14 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v14 - 16);
          v15 = *(a1 + 64) ^ 1;
        }

        return v15 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, uint64_t a3, float *a4, char a5)
{
  v15 = 2;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 2)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 3;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 3)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 4;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 4;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize quaternion. Expected array length = 4, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "w", 3, a4 + 3, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column3", 3, a4 + 12, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "orientation", 2, a4 + 4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "rotation", 2, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "translation", 3, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, float *a4, char a5)
{
  v10 = 2;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 2;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 2)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 3;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 3)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 4;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 4)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "w", 3, a4 + 24, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 2;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 2)
      {
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 2, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 3;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 3)
      {
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 3, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_4:
    v25 = 4;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v25, 4))
    {
      if (v25 == 4)
      {
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v19 = *(a1 + 64) ^ 1;
        return v19 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 4, actual array length = %zu", v14, v15, v16, v17, v18, v25);
    }

    v19 = 0;
    return v19 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7);
      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "translation", 3, a4 + 32, a7);
      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v25, v27);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v24, v27);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v25, v24, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v19, v20, v21, v22, v23, v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>(_anonymous_namespace_ *a1, const char *a2, int a3, char *a4, char a5)
{
  v15 = 2;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 2)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 3;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 3)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 4;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

{
  v15 = 4;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v15, 4))
  {
    goto LABEL_5;
  }

  if (v15 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize quaternion. Expected array length = 4, actual array length = %zu", v8, v9, v10, v11, v12, v15);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v13 = *(a1 + 40) ^ 1;
  return v13 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3054780, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3085590, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3068150, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "w", 3, a4 + 24, "double", a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3054780, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column1", a4 + 8, a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3085590, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v20[0]) = 5, DWORD1(v20[0]) = 4, *(&v20[0] + 1) = a2, v20[1] = xmmword_1E3068150, v21 = 0, v22 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column3", a4 + 48, a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v21[0]) = 1, DWORD1(v21[0]) = 0, *(&v21[0] + 1) = a2, memset(&v21[1], 0, 32), re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "position", a4, a7), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "orientation", a4 + 16, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
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

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (LOBYTE(v21[0]) = 1, DWORD1(v21[0]) = 0, *(&v21[0] + 1) = a2, memset(&v21[1], 0, 32), re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "scale", a4, a7), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "rotation", a4 + 16, a7), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "translation", a4 + 32, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v25, v27);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v26);
  re::TypeInfo::TypeInfo(v24, v27);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v25, v24, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v19, v20, v21, v22, v23, v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    LOBYTE(v11[0]) = 5;
    DWORD1(v11[0]) = 4;
    *(&v11[0] + 1) = a2;
    v11[1] = xmmword_1E3054780;
    v12 = 0;
    v13 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    LOBYTE(v11[0]) = 5;
    DWORD1(v11[0]) = 4;
    *(&v11[0] + 1) = a2;
    v11[1] = xmmword_1E3085590;
    v12 = 0;
    v13 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    LOBYTE(v11[0]) = 5;
    DWORD1(v11[0]) = 4;
    *(&v11[0] + 1) = a2;
    v11[1] = xmmword_1E3068150;
    v12 = 0;
    v13 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "w", 3, a3 + 12, "float", a4);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

uint64_t re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  re::DynamicString::setCapacity(&v22, 0);
  v21 = &a9;
  re::DynamicString::vassignf(&v22, "Failed to serialize Swift Codable component of type %s.", &a9);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v14);
  if (v15)
  {
    v11 = *&v16[7];
  }

  else
  {
    v11 = v16;
  }

  if (v23)
  {
    v12 = v24;
  }

  else
  {
    v12 = &v23 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v17, "serialize", v11, v12);
  *&v20[0] = 400;
  *(&v20[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v20[1] = v17;
  *(&v20[2] + 1) = v19;
  *(&v20[1] + 8) = v18;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v20);
  if (*&v20[1])
  {
    if (BYTE8(v20[1]))
    {
      (*(**&v20[1] + 40))();
    }

    memset(&v20[1], 0, 32);
  }

  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  result = v22;
  if (v22)
  {
    if (v23)
    {
      return (*(*v22 + 40))();
    }
  }

  return result;
}

char *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteRawValue(char **a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (*(result + 4) - *(result + 3) < a3)
  {
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(result, a3);
    if (!a3)
    {
      return result;
    }
  }

  else if (!a3)
  {
    return result;
  }

  v7 = 0;
  do
  {
    v8 = *(a2 + v7);
    v9 = *(*a1 + 3);
    *(*a1 + 3) = v9 + 1;
    *v9 = v8;
    ++v7;
  }

  while (v7 < a3);
  return result;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 11);
  v5 = v4 & 7;
  if (v5 <= 2)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 1)
      {
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
        v6 = a2;
        v7 = 0;
        goto LABEL_40;
      }

      if (v5 == 2)
      {
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
        v6 = a2;
        v7 = 1;
LABEL_40:

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(v6, v7);
      }

      goto LABEL_32;
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

    return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(a2);
  }

  if (v5 == 3)
  {
    if (rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(a2))
    {
      if (!*a1)
      {
LABEL_29:
        *(a2 + 32) -= 16;

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(a2);
      }

      v11 = *(a1 + 1) + 24;
      while (1)
      {
        v12 = (*(v11 - 2) & 0x1000) != 0 ? v11 - 24 : *(v11 - 16);
        v13 = (*(v11 - 2) & 0x1000) != 0 ? 21 - *(v11 - 3) : *(v11 - 24);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
        if (!rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(a2, v12, v13) || (rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(v11, a2) & 1) == 0)
        {
          break;
        }

        v14 = v11 + 24;
        v11 += 48;
        if (v14 == *(a1 + 1) + 48 * *a1)
        {
          goto LABEL_29;
        }
      }
    }

    return 0;
  }

  if (v5 == 4)
  {
    if (rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(a2))
    {
      if (!*a1)
      {
LABEL_48:
        *(a2 + 32) -= 16;

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(a2);
      }

      v17 = *(a1 + 1);
      while ((rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(v17, a2) & 1) != 0)
      {
        v17 += 24;
        if (v17 == *(a1 + 1) + 24 * *a1)
        {
          goto LABEL_48;
        }
      }
    }

    return 0;
  }

  if (v5 != 5)
  {
LABEL_32:
    if ((*(a1 + 11) & 0x200) != 0)
    {
      v18 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

      return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(a2, v18);
    }

    else if ((v4 & 0x20) != 0)
    {
      v19 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

      return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(a2, v19, v20);
    }

    else if ((v4 & 0x40) != 0)
    {
      v21 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

      return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(a2, v21, v22);
    }

    else
    {
      v15 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
      if ((v4 & 0x80) != 0)
      {

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt64(a2, v15, v16);
      }

      else
      {

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint64(a2, v15, v16);
      }
    }
  }

  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a1 + 1);
  }

  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v9 = 21 - *(a1 + 21);
  }

  else
  {
    v9 = *a1;
  }

  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(a2, v8, v9);
}

unint64_t re::ecs2::AnimationSceneManager::animationService(re::ecs2::AnimationSceneManager *this, const re::ecs2::Scene *a2)
{
  result = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

unint64_t re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 16;
  }
}

void re::ecs2::AnimationSceneManager::updateAnimationsForScene(re::ecs2::AnimationSceneManager *this, const re::ecs2::Scene *a2, float a3)
{
  v4 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *v4;
    if (*(v6 + 29))
    {
      if (*(v6 + 28) || *(v6 + 44))
      {
        re::AnimationManager::update(v6, a3);
        v7 = *v5;

        re::AnimationManager::applyAnimations(v7);
      }
    }
  }
}

uint64_t re::ecs2::AnimationSceneManager::setTaskOptions(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  *(result + 272) = *(a2 + 8);
  *(result + 264) = v2;
  v3 = *(result + 248);
  if (v3)
  {
    v5 = result;
    for (i = 0; i != v3; ++i)
    {
      v7 = re::BucketArray<unsigned long,8ul>::operator[](v5 + 208, i);
      result = re::ecs2::System::setDefaultTaskOptions(*v7, a2);
    }
  }

  return result;
}

void re::ecs2::AnimationSceneManager::registerSystem(re::ecs2::AnimationSceneManager *this, re::ecs2::System *a2)
{
  v4 = *(this + 31);
  v5 = *(this + 27);
  if (v4 + 1 > 8 * v5)
  {
    re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(this + 26, (v4 + 8) >> 3);
    v5 = *(this + 27);
  }

  if (v5 <= v4 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 224))
  {
    v6 = this + 232;
  }

  else
  {
    v6 = *(this + 30);
  }

  v7 = *&v6[8 * (v4 >> 3)];
  ++*(this + 31);
  ++*(this + 64);
  *(v7 + 8 * (v4 & 7)) = a2;
  re::ecs2::System::setDefaultTaskOptions(a2, this + 33);

  re::ecs2::AnimationSceneManager::updateScheduling(this);
}

void re::ecs2::AnimationSceneManager::updateScheduling(re::ecs2::AnimationSceneManager *this)
{
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v2 < 0xB)
  {
    if (v3)
    {
      v5 = (this + 48);
      if (v2)
      {
LABEL_6:
        v6 = 0;
        v7 = 8 * v2;
        do
        {
          v8 = *v5++;
          v6 |= v8;
          v7 -= 8;
        }

        while (v7);
        v9 = v6 != 0;
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(this + 7);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    v9 = 0;
    goto LABEL_19;
  }

  if (v3)
  {
    v4 = (this + 48);
  }

  else
  {
    v4 = *(this + 7);
  }

  v10 = 8 * v2 - 8;
  do
  {
    v11 = *v4++;
    v9 = v11 != 0;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    v10 -= 8;
  }

  while (!v12);
LABEL_19:
  v13 = *(this + 31);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = re::BucketArray<re::ecs2::System *,8ul>::operator[](this + 208, i);
      v16 = *v15;
      v17 = *(*v15 + 200);
      if (v17)
      {
        v18 = *(v16 + 216);
        v19 = 8 * v17;
        do
        {
          v20 = *v18;
          if (v9 != re::ecs2::System::isTaskEnabled(v16, *v18))
          {
            re::ecs2::System::setTaskEnabled(v16, v20, v9);
            if (v9)
            {
              v21 = *(v16 + 40);
              if (v21)
              {
                v22 = (*(*v21 + 104))(v21, v20);
                if (v22)
                {
                  v23 = v22;
                  v24 = re::ecs2::System::taskHandle(v16, v20);
                  if (*(v23 + 5) > v24)
                  {
                    re::Scheduler::resetTaskCurrentTime(v23, v24);
                  }
                }
              }
            }
          }

          ++v18;
          v19 -= 8;
        }

        while (v19);
      }
    }
  }
}

void re::ecs2::AnimationSceneManager::registerScene(re::ecs2::AnimationSceneManager *this, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 512, 8);
  re::AnimationManager::AnimationManager(v5);
  v28 = &v25;
  v24 = v23;
  v25 = &unk_1F5CEBC00;
  v22 = v6;
  v23[0] = &unk_1F5CEBC00;
  std::__function::__value_func<void ()(re::AnimationManager *)>::~__value_func[abi:nn200100](&v25);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v25, this + 160, a2, v7 ^ (v7 >> 31));
  if (HIDWORD(v26) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 160, v26, v25);
    v8[1] = a2;
    v9 = v24;
    v8[2] = v22;
    v10 = (v8 + 2);
    v22 = 0;
    if (v9)
    {
      if (v9 == v23)
      {
        v8[6] = v8 + 3;
        (*(*v9 + 24))(v9);
      }

      else
      {
        v8[6] = v9;
        v24 = 0;
      }
    }

    else
    {
      v8[6] = 0;
    }

    ++*(this + 50);
  }

  else
  {
    v10 = (*(this + 22) + (HIDWORD(v26) << 6) + 16);
  }

  std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](&v22);
  re::AnimationManager::init(*v10, 0, 0);
  v11 = *(this + 36);
  *(this + 36) = 0;
  v12 = *(this + 74);
  if (v12)
  {
    v13 = (this + 304);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(this + 39);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  v14 = 40 * v11;
  do
  {
    v13 = (std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v13) + 40);
    v14 -= 40;
  }

  while (v14);
  v12 = *(this + 74);
LABEL_16:
  *(this + 74) = v12 + 2;
  v15 = *v10;
  v25 = *v10;
  v16 = *(this + 17);
  if (v16)
  {
    v17 = *(*(this + 19) + 8 * v16 - 8);
    v22 = v17;
    *(this + 17) = v16 - 1;
    ++*(this + 36);
    v18 = this + 72;
    v19 = &v22;
  }

  else
  {
    v17 = *(this + 8);
    v21 = v17;
    v22 = 0;
    if (((v17 + 1) & 0x3F) != 0)
    {
      v20 = ((v17 + 1) >> 6) + 1;
    }

    else
    {
      v20 = (v17 + 1) >> 6;
    }

    *(this + 8) = v17 + 1;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 24), v20, &v22);
    v18 = this + 72;
    v19 = &v21;
  }

  re::HashTable<re::AnimationManager *,unsigned long,re::Hash<re::AnimationManager *>,re::EqualTo<re::AnimationManager *>,true,false>::addNew(v18, &v25, v19);
  *(v15 + 5) = this + 8;
  *(v15 + 6) = v17;
  (*(*(this + 1) + 16))(this + 8, *(v15 + 56), v17);
  re::ecs2::AnimationSceneManager::updateScheduling(this);
}

void re::ecs2::AnimationSceneManager::unregisterScene(re::ecs2::AnimationSceneManager *this, unint64_t a2)
{
  v4 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, a2);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = *v4;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v35, this + 72, v6, v8);
  v9 = *(this + 11);
  v10 = *(v9 + 32 * v37 + 16);
  v34 = v10;
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v35, this + 72, v6, v8);
  v11 = v37;
  if (v37 != 0x7FFFFFFF)
  {
    v12 = (v9 + 32 * v37);
    v13 = *v12 & 0x7FFFFFFF;
    if (v38 == 0x7FFFFFFF)
    {
      *(*(this + 10) + 4 * v36) = v13;
    }

    else
    {
      *(v9 + 32 * v38) = *(v9 + 32 * v38) & 0x80000000 | v13;
    }

    *v12 = *(this + 27);
    --*(this + 25);
    v14 = *(this + 28) + 1;
    *(this + 27) = v11;
    *(this + 28) = v14;
  }

  re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 24, v10);
  v15 = re::DynamicArray<unsigned long>::add(this + 15, &v34);
  if (!*(this + 35))
  {
    v21 = *(this + 36);
    re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(this + 35, v21 + 1);
    v22 = *(this + 74) + 2;
    *(this + 74) = v22;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v23 = this + 304;
    goto LABEL_23;
  }

  v16 = *(this + 36);
  v17 = *(this + 74);
  if ((v17 & 1) == 0)
  {
    v18 = *(this + 38);
    if (v16 >= v18)
    {
      v19 = v16 + 1;
      if (v18 < v19)
      {
        v20 = 2 * v18;
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

  v19 = v16 + 1;
  if (v19 < 5)
  {
LABEL_15:
    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v20 = 8;
LABEL_18:
  if (v20 <= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v20;
  }

  re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(this + 35, v24);
  if (*(this + 74))
  {
    goto LABEL_22;
  }

LABEL_16:
  v23 = *(this + 39);
LABEL_23:
  v25 = &v23[40 * *(this + 36)];
  v26 = *v5;
  *v5 = 0;
  *v25 = v26;
  std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100]((v25 + 8), (v5 + 1));
  ++*(this + 36);
  *(this + 74) += 2;
  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v35, this + 160, a2, v27 ^ (v27 >> 31));
  v28 = v37;
  if (v37 != 0x7FFFFFFF)
  {
    v29 = *(this + 22);
    v30 = (v29 + (v37 << 6));
    v31 = *v30 & 0x7FFFFFFF;
    if (v38 == 0x7FFFFFFF)
    {
      *(*(this + 21) + 4 * v36) = v31;
    }

    else
    {
      *(v29 + (v38 << 6)) = *(v29 + (v38 << 6)) & 0x80000000 | v31;
    }

    v32 = *v30;
    if ((*v30 & 0x80000000) != 0)
    {
      *v30 = v32 & 0x7FFFFFFF;
      std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v30 + 2);
      v29 = *(this + 22);
      v32 = *(v29 + (v28 << 6));
    }

    *(v29 + (v28 << 6)) = *(this + 49) | v32 & 0x80000000;
    --*(this + 47);
    v33 = *(this + 50) + 1;
    *(this + 49) = v28;
    *(this + 50) = v33;
  }

  re::ecs2::AnimationSceneManager::updateScheduling(this);
}

uint64_t re::HashTable<re::AnimationManager *,unsigned long,re::Hash<re::AnimationManager *>,re::EqualTo<re::AnimationManager *>,true,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    v8 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v8;
    ++*(a1 + 40);
  }

  return result;
}

void re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::setSchedulingEnabled(re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate *this, int a2, unint64_t a3)
{
  if (a2)
  {
    if (*(this + 3) <= a3 >> 6)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(this + 32))
    {
      v4 = this + 40;
    }

    else
    {
      v4 = *(this + 6);
    }

    *&v4[8 * (a3 >> 6)] |= 1 << a3;
  }

  else
  {
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 16, a3);
  }

  v5 = *(this + 1);

  re::ecs2::AnimationSceneManager::updateScheduling(v5);
}

void re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::~AnimationScenesSchedulingDelegate(re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate *this)
{
  re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::~AnimationScenesSchedulingDelegate(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CEBB28;
  v2 = this + 16;
  re::DynamicArray<unsigned long>::deinit(this + 112);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 8);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
}

void re::ecs2::AnimationSceneManager::~AnimationSceneManager(re::ecs2::AnimationSceneManager *this)
{
  re::ecs2::AnimationSceneManager::~AnimationSceneManager(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CEBB78;
  if (*(this + 35))
  {
    v2 = *(this + 36);
    if (v2)
    {
      if (*(this + 296))
      {
        v3 = (this + 304);
      }

      else
      {
        v3 = *(this + 39);
      }

      v4 = 40 * v2;
      do
      {
        v3 = (std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v3) + 40);
        v4 -= 40;
      }

      while (v4);
    }

    v5 = *(this + 74);
    if ((v5 & 1) == 0)
    {
      (*(**(this + 35) + 40))(*(this + 35), *(this + 39));
      v5 = *(this + 74);
    }

    *(this + 35) = 0;
    *(this + 36) = 0;
    *(this + 74) = (v5 | 1) + 2;
  }

  v6 = *(this + 31);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      re::BucketArray<unsigned long,8ul>::operator[](this + 208, i);
    }
  }

  while (*(this + 27))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 26);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  *(this + 31) = 0;
  ++*(this + 64);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 20);
  re::ecs2::AnimationSceneManager::AnimationScenesSchedulingDelegate::~AnimationScenesSchedulingDelegate((this + 8));
}

uint64_t re::ecs2::AnimationSceneManager::unregisterSystem(uint64_t this, re::ecs2::System *a2)
{
  v2 = *(this + 248);
  if (v2)
  {
    v4 = this;
    v5 = 0;
    while (1)
    {
      this = re::BucketArray<re::ecs2::System *,8ul>::operator[](v4 + 208, v5);
      if (*this == a2)
      {
        break;
      }

      if (v2 == ++v5)
      {
        v5 = v2;
        break;
      }
    }

    v7 = *(v4 + 248);
    if (v5 != v7)
    {
      if (v7 <= v5)
      {
        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 848, v5, v7);
        this = _os_crash();
        __break(1u);
      }

      else
      {
        v8 = v7 - 1;
        if (v7 - 1 > v5)
        {
          v9 = *re::BucketArray<unsigned long,8ul>::operator[](v4 + 208, v8);
          *re::BucketArray<unsigned long,8ul>::operator[](v4 + 208, v5) = v9;
          v8 = *(v4 + 248) - 1;
        }

        this = re::BucketArray<unsigned long,8ul>::operator[](v4 + 208, v8);
        --*(v4 + 248);
        ++*(v4 + 256);
      }
    }
  }

  return this;
}

double re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100]((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + (v6 << 6) + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_16AnimationManagerEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::AnimationManager *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = a1[4];
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
LABEL_4:
    std::__function::__value_func<void ()(re::AnimationManager *)>::~__value_func[abi:nn200100]((a1 + 1));
    return a1;
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(v5);
}

uint64_t re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1);
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 16);
                *(v13 + 16) = 0;
                *(v17 + 16) = v18;
                std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](v17 + 24, v13 + 24);
              }

              v13 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + (v5 << 6));
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + (v5 << 6));
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + (v5 << 6);
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 56) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + (v5 << 6);
}

uint64_t re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,4ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = a1[4];
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = (a1 + 4);
          v17 = 40 * v9;
          v18 = v15;
          do
          {
            v19 = *v15;
            *v18 = 0;
            v18 += 5;
            *(v16 - 8) = v19;
            std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](v16, (v15 + 1));
            std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v15);
            v16 += 40;
            v15 = v18;
            v17 -= 40;
          }

          while (v17);
          result = *a1;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x28uLL))
      {
        v2 = 40 * a2;
        result = (*(*result + 32))(result, 40 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v20 = a1[1];
          if (v20)
          {
            v21 = result + 8;
            v22 = 40 * v20;
            v23 = v13;
            do
            {
              v24 = *v13;
              *v23 = 0;
              v23 += 5;
              *(v21 - 8) = v24;
              std::__function::__value_func<void ()(re::AnimationManager *)>::__value_func[abi:nn200100](v21, (v13 + 1));
              result = std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>::~unique_ptr[abi:nn200100](v13);
              v21 += 40;
              v13 = v23;
              v22 -= 40;
            }

            while (v22);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 40, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::System *,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 8 * (a2 & 7);
}

uint64_t re::MediaDefaults::logEnabled(re::MediaDefaults *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue("media.log.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::MediaDefaults::logEnabled(void)::value = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[352];
}

uint64_t re::MediaDefaults::logLevel(re::MediaDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v11 = v1;
    v12 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v6)
    {
      re::Defaults::intValue("media.log.level", v7, v9);
      v8 = v10;
      if (!v9[0])
      {
        v8 = 0;
      }

      re::MediaDefaults::logLevel(void)::value = v8;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  v4 = *(v3 + 240);
  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t re::MediaDefaults::logSubsampleRate(re::MediaDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v11 = v1;
    v12 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v6)
    {
      re::Defaults::intValue("media.log.subsamplerate", v7, v9);
      v8 = v10;
      if (!v9[0])
      {
        v8 = 90;
      }

      re::MediaDefaults::logSubsampleRate(void)::value = v8;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  v4 = *(v3 + 244);
  if (v4 <= 30)
  {
    return 30;
  }

  else
  {
    return v4;
  }
}

float re::MediaDefaults::billboardAroundPtZ(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("smc.billboardAroundPtZ", v3, &re::MediaDefaults::billboardAroundPtZ(float)::value);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardAroundPtZ(float)::value)
  {
    return *&dword_1ECF1C3E4;
  }

  return result;
}

float re::MediaDefaults::billboardDampingFactor(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("smc.billboardDampingFactor", v3, &re::MediaDefaults::billboardDampingFactor(float)::value);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardDampingFactor(float)::value)
  {
    return *&dword_1ECF1C3F4;
  }

  return result;
}

uint64_t re::MediaDefaults::resizeMeshInVertexShaderEnabled(re::MediaDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("media.resizeMeshInVertexShader", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::MediaDefaults::resizeMeshInVertexShaderEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1024];
}

float re::MediaDefaults::billboardMaxAngle(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("smc.billboardMaxAngle", v3, &re::MediaDefaults::billboardMaxAngle(float)::value);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardMaxAngle(float)::value)
  {
    return *&dword_1ECF1C414;
  }

  return result;
}

float re::MediaDefaults::billboardEaseOutExponent(re::MediaDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("smc.billboardEaseOutExponent", v3, &re::MediaDefaults::billboardEaseOutExponent(float)::value);
      result = v4;
    }
  }

  if (re::MediaDefaults::billboardEaseOutExponent(float)::value)
  {
    return *&dword_1ECF1C424;
  }

  return result;
}

re::ecs2::TransformComponent *re::ecs2::TransformComponent::TransformComponent(re::ecs2::TransformComponent *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CEBC90;
  *(v2 + 32) = 0x3F8000003F800000;
  *(v2 + 40) = 1065353216;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0x3F80000000000000;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  re::makeEntityBindNodeForComponent(v2, v9);
  v6[0] = "Transform.transform";
  v6[1] = 19;
  v3 = &unk_1EE187000;
  {
    v3 = &unk_1EE187000;
    if (v5)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v3 = &unk_1EE187000;
    }
  }

  re::BindNode::bindPointWithOverride(v9, v3[248], v6, &v7);
  *(this + 10) = v7;
  re::DynamicArray<re::RigDataValue>::operator=(this + 88, v8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
  re::BindNode::deinit(v9);
  return this;
}

void re::ecs2::TransformComponent::worldMatrix4x4F(float32x4_t *this@<X0>, const re::ecs2::Entity *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = this[1].i64[0];
  if (v5)
  {
    v6 = a2;
    if (re::TransformService::isEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
    }

    if (re::TransformService::isEnabled(void)::isEnabled == 1 && re::TransformService::transformServiceFromEntity(v5, a2))
    {

      re::TransformService::worldMatrix();
    }

    else if (v6)
    {
      if (this[8].i8[0])
      {

        re::ecs2::TransformComponent::anchoredAnimatedWorldTransform(this, a3);
      }

      else
      {

        re::ecs2::TransformComponent::deactivatedAnchoredAnimatedWorldTransform(v5, a3);
      }
    }

    else
    {

      re::ecs2::TransformComponent::anchoredUnanimatedWorldTransform(v5, a3);
    }
  }

  else
  {
    v7 = this[3].f32[0];
    v8 = this[3].f32[1];
    v9 = v7 + v7;
    v10 = v8 + v8;
    v11 = this[3].f32[2];
    v12 = this[3].f32[3];
    v13 = v11 + v11;
    v14 = v7 * (v7 + v7);
    v15 = v8 * (v8 + v8);
    v16 = v11 * (v11 + v11);
    v17 = v9 * v8;
    v18 = v9 * v11;
    v19 = v10 * v11;
    v20 = v9 * v12;
    v21 = v10 * v12;
    v22 = v13 * v12;
    v23.i32[3] = 0;
    v23.f32[0] = 1.0 - (v15 + v16);
    v23.f32[1] = v17 + v22;
    v23.f32[2] = v18 - v21;
    v24.i32[3] = 0;
    v25.i32[3] = 0;
    v25.f32[0] = v17 - v22;
    v25.f32[1] = 1.0 - (v14 + v16);
    v25.f32[2] = v19 + v20;
    v24.f32[0] = v18 + v21;
    v24.f32[1] = v19 - v20;
    v24.f32[2] = 1.0 - (v14 + v15);
    v26 = this[2];
    v27 = vmulq_n_f32(v23, v26.f32[0]);
    v28 = vmulq_laneq_f32(v24, v26, 2);
    v29 = vmulq_n_f32(v25, COERCE_FLOAT(HIDWORD(this[2].i64[0])));
    *a3 = v27;
    a3[1] = v29;
    v30 = this[4];
    v30.i32[3] = 1.0;
    a3[2] = v28;
    a3[3] = v30;
  }
}

void *re::ecs2::TransformComponent::deactivatedAnchoredAnimatedWorldTransform@<X0>(void *result@<X0>, __int128 *a2@<X8>)
{
  v2 = xmmword_1E30474D0;
  v3 = xmmword_1E30476A0;
  v4 = xmmword_1E3047680;
  v5 = xmmword_1E3047670;
  while (result)
  {
    v6 = result[32];
    if (v6)
    {
      v7 = 0;
      v8 = v6[3].f32[0];
      v9 = v6[3].f32[1];
      v10 = v8 + v8;
      v11 = v9 + v9;
      v12 = v6[3].f32[2];
      v13 = v6[3].f32[3];
      v14 = v12 + v12;
      v15 = v8 * (v8 + v8);
      v16 = v9 * (v9 + v9);
      v17 = v12 * (v12 + v12);
      v18 = v10 * v9;
      v19 = v10 * v12;
      v20 = v11 * v12;
      v21 = v10 * v13;
      v22 = v11 * v13;
      v23 = v14 * v13;
      v24.i32[3] = 0;
      v24.f32[0] = 1.0 - (v16 + v17);
      v24.f32[1] = v18 + v23;
      v24.f32[2] = v19 - v22;
      v25.i32[3] = 0;
      v25.f32[0] = v18 - v23;
      v25.f32[1] = 1.0 - (v15 + v17);
      v25.f32[2] = v20 + v21;
      v26.i32[3] = 0;
      v26.f32[0] = v19 + v22;
      v26.f32[1] = v20 - v21;
      v26.f32[2] = 1.0 - (v15 + v16);
      v27 = v6[2];
      v28 = vmulq_n_f32(v24, v27.f32[0]);
      v29 = vmulq_laneq_f32(v26, v27, 2);
      v30 = v6[4];
      v30.i32[3] = 1.0;
      v26.i64[0] = HIDWORD(v6[2].i64[0]);
      v42 = v5;
      v43 = v4;
      v31 = vmulq_n_f32(v25, v26.f32[0]);
      v44 = v3;
      v45 = v2;
      do
      {
        *(&v46 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v42 + v7))), v31, *(&v42 + v7), 1), v29, *(&v42 + v7), 2), v30, *(&v42 + v7), 3);
        v7 += 16;
      }

      while (v7 != 64);
      v5 = v46;
      v4 = v47;
      v3 = v48;
      v2 = v49;
    }

    v32 = result[18];
    if (v32)
    {
      v33 = 0;
      v34 = v32[3];
      v35 = v32[4];
      v36 = v32[5];
      v37 = v32[6];
      v42 = v5;
      v43 = v4;
      v44 = v3;
      v45 = v2;
      do
      {
        *(&v46 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v42 + v33))), v35, *(&v42 + v33), 1), v36, *(&v42 + v33), 2), v37, *(&v42 + v33), 3);
        v33 += 16;
      }

      while (v33 != 64);
      v38 = v47;
      v39 = v48;
      v40 = v49;
      *a2 = v46;
      a2[1] = v38;
      a2[2] = v39;
      a2[3] = v40;
    }

    else
    {
      v41 = result[4];
      if (v41)
      {
        if ((*(v41 + 304) & 0x80) != 0)
        {
          result = 0;
        }

        else
        {
          result = result[4];
        }
      }

      else
      {
        result = 0;
      }
    }

    if (v32)
    {
      return result;
    }
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v3;
  a2[3] = v2;
  return result;
}

float32x4_t re::ecs2::TransformComponent::anchoredAnimatedWorldTransform@<Q0>(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  v4 = re::ecs2::TransformComponent::unanchoredAnimatedWorldTransform(this);
  v5 = this[8].i64[1];
  if (v5)
  {
    v6 = 0;
    result = v5[3];
    v8 = v5[4];
    v9 = v5[5];
    v10 = v5[6];
    v11 = v4[1];
    v12 = v4[2];
    v13 = v4[3];
    v19[0] = *v4;
    v19[1] = v11;
    v19[2] = v12;
    v19[3] = v13;
    do
    {
      v20[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(v19[v6])), v8, *&v19[v6], 1), v9, v19[v6], 2), v10, v19[v6], 3);
      ++v6;
    }

    while (v6 != 4);
    result.i64[0] = *&v20[0];
    v14 = v20[1];
    v15 = v20[2];
    v16 = v20[3];
    *a2 = v20[0];
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v16;
  }

  else
  {
    v17 = v4[1];
    *a2 = *v4;
    a2[1] = v17;
    result = v4[2];
    v18 = v4[3];
    a2[2] = result;
    a2[3] = v18;
  }

  return result;
}

float32x4_t *re::ecs2::TransformComponent::anchoredUnanimatedWorldTransform@<X0>(float32x4_t *this@<X0>, __int128 *a2@<X8>)
{
  v3 = this;
  v5 = xmmword_1E30474D0;
  v6 = xmmword_1E30476A0;
  v7 = xmmword_1E3047680;
  v8 = xmmword_1E3047670;
  while (v3)
  {
    v9 = v3[32];
    if (v9)
    {
      v46 = v6;
      v47 = v5;
      v44 = v8;
      v45 = v7;
      this = re::BindPoint::baseValueUntyped((v9 + 80));
      v10 = 0;
      v11 = this[1].f32[0];
      v12 = this[1].f32[1];
      v13 = v11 + v11;
      v14 = v12 + v12;
      v15 = this[1].f32[2];
      v16 = this[1].f32[3];
      v17 = v15 + v15;
      v18 = v11 * (v11 + v11);
      v19 = v12 * (v12 + v12);
      v20 = v15 * (v15 + v15);
      v21 = v13 * v12;
      v22 = v13 * v15;
      v23 = v14 * v15;
      v24 = v13 * v16;
      v25 = v14 * v16;
      v26 = v17 * v16;
      v27.i32[3] = 0;
      v27.f32[0] = 1.0 - (v19 + v20);
      v27.f32[1] = v21 + v26;
      v27.f32[2] = v22 - v25;
      v28.i32[3] = 0;
      v28.f32[0] = v21 - v26;
      v28.f32[1] = 1.0 - (v18 + v20);
      v28.f32[2] = v23 + v24;
      v29.i32[3] = 0;
      v29.f32[0] = v22 + v25;
      v29.f32[1] = v23 - v24;
      v29.f32[2] = 1.0 - (v18 + v19);
      v30 = vmulq_n_f32(v27, COERCE_FLOAT(*this));
      v31 = vmulq_laneq_f32(v29, *this, 2);
      v32 = this[2];
      v32.i32[3] = 1.0;
      v29.i32[0] = HIDWORD(this->i64[0]);
      v48 = v44;
      v49 = v45;
      v33 = vmulq_n_f32(v28, v29.f32[0]);
      v50 = v46;
      v51 = v47;
      do
      {
        *(&v52 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v48 + v10))), v33, *(&v48 + v10), 1), v31, *(&v48 + v10), 2), v32, *(&v48 + v10), 3);
        v10 += 16;
      }

      while (v10 != 64);
      v8 = v52;
      v7 = v53;
      v6 = v54;
      v5 = v55;
    }

    v34 = v3[18];
    if (v34)
    {
      v35 = 0;
      v36 = v34[3];
      v37 = v34[4];
      v38 = v34[5];
      v39 = v34[6];
      v48 = v8;
      v49 = v7;
      v50 = v6;
      v51 = v5;
      do
      {
        *(&v52 + v35) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v48 + v35))), v37, *(&v48 + v35), 1), v38, *(&v48 + v35), 2), v39, *(&v48 + v35), 3);
        v35 += 16;
      }

      while (v35 != 64);
      v40 = v53;
      v41 = v54;
      v42 = v55;
      *a2 = v52;
      a2[1] = v40;
      a2[2] = v41;
      a2[3] = v42;
    }

    else
    {
      v43 = v3[4];
      if (v43)
      {
        if ((*(v43 + 304) & 0x80) != 0)
        {
          v3 = 0;
        }

        else
        {
          v3 = v3[4];
        }
      }

      else
      {
        v3 = 0;
      }
    }

    if (v34)
    {
      return this;
    }
  }

  *a2 = v8;
  a2[1] = v7;
  a2[2] = v6;
  a2[3] = v5;
  return this;
}

double re::ecs2::TransformComponent::parentWorldMatrix4x4F@<D0>(re::ecs2::TransformComponent *this@<X0>, const re::ecs2::Entity *a2@<X1>, uint64_t a3@<X8>)
{
  if (this)
  {
    v3 = *(this + 18);
    if (v3)
    {
      v4 = v3[3];
      v5 = v3[4];
      v6 = v3[6];
      *(a3 + 32) = v3[5];
      *(a3 + 48) = v6;
      *a3 = v4;
      *(a3 + 16) = v5;
    }

    else
    {
      v7 = *(this + 4);
      if (v7)
      {
        if ((*(v7 + 304) & 0x80) != 0)
        {
          v8 = 0;
        }

        else
        {
          v8 = *(this + 4);
        }
      }

      else
      {
        v8 = 0;
      }

      *&v4 = re::ecs2::TransformComponent::worldMatrix4x4F(v8, a2, a3).n128_u64[0];
    }
  }

  else
  {
    *a3 = xmmword_1E3047670;
    *(a3 + 16) = xmmword_1E3047680;
    *&v4 = 0;
    *(a3 + 32) = xmmword_1E30476A0;
    *(a3 + 48) = xmmword_1E30474D0;
  }

  return *&v4;
}

void re::ecs2::TransformComponent::worldSRT(float32x4_t **this@<X0>, const re::ecs2::Entity *a2@<X1>, uint64_t a3@<X8>)
{
  re::ecs2::TransformComponent::worldMatrix4x4F(this, a2, &v40);
  v4 = v41;
  v5 = v42;
  v39 = v43;
  v6 = vmulq_f32(v40, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v42, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v41, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v42, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v41, 8uLL)));
  v7 = vaddv_f32(*v6.f32);
  v8 = -1.0;
  v9 = vmulq_f32(v40, v40);
  v10 = vmulq_f32(v4, v4);
  v11 = vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8));
  v13 = vextq_s8(v9, v9, 8uLL);
  *v13.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v13.f32, *&vextq_s8(v10, v10, 8uLL)), v11));
  v12 = vmulq_f32(v5, v5);
  v13.i32[2] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  if ((v6.f32[2] + v7) > 0.0)
  {
    v8 = 1.0;
  }

  v38 = vmulq_n_f32(v13, v8);
  v14 = vdivq_f32(v40, vdupq_lane_s32(*&v38, 0));
  v15 = vdivq_f32(v41, vdupq_lane_s32((v38 >> 32), 0));
  v16 = vdivq_f32(v42, vdupq_laneq_s32(v38, 2));
  v17 = vmulq_f32(v14, v14);
  *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  v19 = vrsqrte_f32(v18);
  v20 = vmul_f32(v19, vrsqrts_f32(v18, vmul_f32(v19, v19)));
  v44.columns[0] = vmulq_n_f32(v14, vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20))).f32[0]);
  v21 = vmulq_f32(v44.columns[0], v15);
  v22 = vmulq_f32(v44.columns[0], v44.columns[0]);
  v23 = vmulq_f32(v44.columns[0], v16);
  *v22.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v23.i8, *v22.i8), vzip2_s32(*v23.i8, *v22.i8)));
  v24 = vsubq_f32(v15, vmulq_n_f32(v44.columns[0], (v21.f32[2] + vaddv_f32(*v21.f32)) / *&v22.i32[1]));
  v25 = vmulq_f32(v24, v24);
  *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
  *v25.f32 = vrsqrte_f32(v26);
  *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
  v44.columns[1] = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
  v27 = vmulq_n_f32(v44.columns[0], *v22.i32 / *&v22.i32[1]);
  v28 = vmulq_f32(v16, v44.columns[1]);
  v29 = vmulq_f32(v44.columns[1], v44.columns[1]);
  *v28.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *&vextq_s8(v29, v29, 8uLL)), vadd_f32(vzip1_s32(*v28.i8, *v29.i8), vzip2_s32(*v28.i8, *v29.i8)));
  v44.columns[3] = vsubq_f32(vsubq_f32(v16, v27), vmulq_n_f32(v44.columns[1], vdiv_f32(*v28.i8, vdup_lane_s32(*v28.i8, 1)).f32[0]));
  v30 = vmulq_f32(v44.columns[3], v44.columns[3]);
  v17.f32[0] = v30.f32[2] + vaddv_f32(*v30.f32);
  *v30.f32 = vrsqrte_f32(v17.u32[0]);
  *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v17.u32[0], vmul_f32(*v30.f32, *v30.f32)));
  v44.columns[2] = vmulq_n_f32(v44.columns[3], vmul_f32(*v30.f32, vrsqrts_f32(v17.u32[0], vmul_f32(*v30.f32, *v30.f32))).f32[0]);
  *v31.i64 = simd_quaternion(v44);
  v32 = v31.i64[1];
  v33 = vextq_s8(v31, v31, 8uLL).u64[0];
  v34 = vmvn_s8(vceq_f32(v33, v33));
  v35 = (v34.i8[0] | v34.i8[4]);
  v36 = (v35 & 1) == 0;
  if (v35)
  {
    v37 = 0;
  }

  else
  {
    v37 = v31.i64[0];
  }

  *a3 = v38;
  if (!v36)
  {
    v32 = 0x3F80000000000000;
  }

  *(a3 + 16) = v37;
  *(a3 + 24) = v32;
  *(a3 + 32) = v39;
}

double re::ecs2::TransformComponent::worldOrientation(float32x4_t **this, const re::ecs2::Entity *a2)
{
  re::ecs2::TransformComponent::worldMatrix4x4F(this, a2, &v17);
  v2 = vmulq_f32(v17, v17);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  v4 = vrsqrte_f32(v3);
  v5 = vmul_f32(v4, vrsqrts_f32(v3, vmul_f32(v4, v4)));
  v20.columns[0] = vmulq_n_f32(v17, vmul_f32(v5, vrsqrts_f32(v3, vmul_f32(v5, v5))).f32[0]);
  v6 = vmulq_f32(v18, v20.columns[0]);
  v7 = vmulq_f32(v20.columns[0], v20.columns[0]);
  v8 = vmulq_f32(v19, v20.columns[0]);
  *v7.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v7.i8), vzip2_s32(*v8.i8, *v7.i8)));
  v9 = vsubq_f32(v18, vmulq_n_f32(v20.columns[0], (v6.f32[2] + vaddv_f32(*v6.f32)) / *&v7.i32[1]));
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v20.columns[1] = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12 = vmulq_n_f32(v20.columns[0], *v7.i32 / *&v7.i32[1]);
  v13 = vmulq_f32(v19, v20.columns[1]);
  v14 = vmulq_f32(v20.columns[1], v20.columns[1]);
  *v13.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v14.i8), vzip2_s32(*v13.i8, *v14.i8)));
  v20.columns[3] = vsubq_f32(vsubq_f32(v19, v12), vmulq_n_f32(v20.columns[1], vdiv_f32(*v13.i8, vdup_lane_s32(*v13.i8, 1)).f32[0]));
  v15 = vmulq_f32(v20.columns[3], v20.columns[3]);
  v2.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
  *v15.f32 = vrsqrte_f32(v2.u32[0]);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v2.u32[0], vmul_f32(*v15.f32, *v15.f32)));
  v20.columns[2] = vmulq_n_f32(v20.columns[3], vmul_f32(*v15.f32, vrsqrts_f32(v2.u32[0], vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  return simd_quaternion(v20);
}

double re::ecs2::TransformComponent::worldScale(float32x4_t **this, const re::ecs2::Entity *a2)
{
  re::ecs2::TransformComponent::worldMatrix4x4F(this, a2, &v11);
  v2 = vmulq_f32(v11, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL))), vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL)));
  v3 = vaddv_f32(*v2.f32);
  v4 = -1.0;
  if ((v2.f32[2] + v3) > 0.0)
  {
    v4 = 1.0;
  }

  v5 = vmulq_f32(v11, v11);
  v6 = vmulq_f32(v12, v12);
  v7 = vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8));
  v8 = vextq_s8(v5, v5, 8uLL);
  *v8.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v8.f32, *&vextq_s8(v6, v6, 8uLL)), v7));
  v9 = vmulq_f32(v13, v13);
  v8.i32[2] = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
  *&result = vmulq_n_f32(v8, v4).u64[0];
  return result;
}

re::ecs2::TransformComponent *re::ecs2::TransformComponent::setWorldSRT(uint64_t a1, float32x4_t *a2, re::ecs2::Entity *a3)
{
  result = *(a1 + 16);
  if (!result)
  {
    v29 = *a2;
    v30 = a2[2];
    *(a1 + 48) = a2[1];
    *(a1 + 64) = v30;
    *(a1 + 32) = v29;
    return result;
  }

  v6 = a3;
  re::ecs2::TransformComponent::parentWorldMatrix4x4F(result, a3, &v52);
  v53 = __invert_f4(v52);
  v7 = v53.columns[0];
  v8 = v53.columns[1];
  v9 = v53.columns[2];
  v46 = v53.columns[3];
  v53.columns[0] = vmulq_f32(v53.columns[0], vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v53.columns[2], v53.columns[2]), v53.columns[2], 0xCuLL), vextq_s8(vextq_s8(v53.columns[1], v53.columns[1], 0xCuLL), v53.columns[1], 8uLL)));
  v53.columns[1].f32[0] = vaddv_f32(*v53.columns[0].f32);
  v10 = -1.0;
  if ((v53.columns[0].f32[2] + v53.columns[1].f32[0]) > 0.0)
  {
    v10 = 1.0;
  }

  v11 = vmulq_f32(v7, v7);
  v12 = vmulq_f32(v8, v8);
  v13 = vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8));
  v14 = vextq_s8(v12, v12, 8uLL);
  *v11.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *v14.f32), v13);
  *v14.f32 = vsqrt_f32(*v11.i8);
  v15 = vmulq_f32(v9, v9);
  v14.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  v48 = *a2;
  v50 = vmulq_n_f32(v14, v10);
  v16 = vrsqrte_f32(v11.u32[0]);
  v17 = vmul_f32(v16, vrsqrts_f32(v11.u32[0], vmul_f32(v16, v16)));
  v44 = v7;
  v45 = v8;
  v54.columns[0] = vmulq_n_f32(v7, vmul_f32(v17, vrsqrts_f32(v11.u32[0], vmul_f32(v17, v17))).f32[0]);
  v18 = vmulq_f32(v8, v54.columns[0]);
  v19 = vmulq_f32(v54.columns[0], v54.columns[0]);
  v20 = vmulq_f32(v9, v54.columns[0]);
  *v19.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v19.i8), vzip2_s32(*v20.i8, *v19.i8)));
  v21 = vsubq_f32(v8, vmulq_n_f32(v54.columns[0], (v18.f32[2] + vaddv_f32(*v18.f32)) / *&v19.i32[1]));
  v22 = vmulq_f32(v21, v21);
  v23 = vaddv_f32(*v22.f32);
  *v22.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23));
  *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23), vmul_f32(*v22.f32, *v22.f32)));
  v54.columns[1] = vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23), vmul_f32(*v22.f32, *v22.f32))).f32[0]);
  v24 = vmulq_f32(v9, v54.columns[1]);
  v25 = vmulq_f32(v54.columns[1], v54.columns[1]);
  *v24.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v47 = v9;
  v26 = vsubq_f32(vsubq_f32(v9, vmulq_n_f32(v54.columns[0], *v19.i32 / *&v19.i32[1])), vmulq_n_f32(v54.columns[1], vdiv_f32(*v24.i8, vdup_lane_s32(*v24.i8, 1)).f32[0]));
  v54.columns[3] = vmulq_f32(v26, v26);
  *&v27 = v54.columns[3].f32[2] + vaddv_f32(*v54.columns[3].f32);
  *v54.columns[3].f32 = vrsqrte_f32(v27);
  *v54.columns[3].f32 = vmul_f32(*v54.columns[3].f32, vrsqrts_f32(v27, vmul_f32(*v54.columns[3].f32, *v54.columns[3].f32)));
  *v54.columns[3].f32 = vmul_f32(*v54.columns[3].f32, vrsqrts_f32(v27, vmul_f32(*v54.columns[3].f32, *v54.columns[3].f32)));
  v54.columns[2] = vmulq_n_f32(v26, v54.columns[3].f32[0]);
  *_Q0.i64 = simd_quaternion(v54);
  v31 = vmulq_f32(v48, v50);
  _Q2 = a2[1];
  v49 = a2[2];
  v51 = v31;
  v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), vnegq_f32(_Q0)), _Q2, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), _Q2, _Q0, 3), _Q0, _Q2, 3);
  _Q2.i32[0] = _Q2.i32[3];
  __asm { FMLA            S1, S2, V0.S[3] }

  v34.i32[3] = _S1;
  v43 = v34;
  re::ecs2::Component::willSet(a1);
  if ((v6 & 1) != 0 || !*(a1 + 16))
  {
    *(a1 + 32) = v51;
    *(a1 + 48) = v43;
    v41 = (a1 + 64);
    goto LABEL_11;
  }

  v40 = re::BindPoint::baseValueUntyped((a1 + 80));
  if (v40)
  {
    *v40 = v51;
    v40[1] = v43;
    v41 = v40 + 2;
LABEL_11:
    v42 = vaddq_f32(v46, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, v49.f32[0]), v45, *v49.f32, 1), v47, v49, 2));
    *v41 = vdivq_f32(v42, vdupq_laneq_s32(v42, 3));
  }

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setWorldPosition(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5.i64[0] = a2;
    v5.i64[1] = a3;
    v7 = v5;
    v6 = re::BindPoint::baseValueUntyped((result + 10));
    re::ecs2::Component::willSet(v3);
    re::ecs2::TransformComponent::parentWorldMatrix4x4F(v4, 0, &v8);
    v9 = __invert_f4(v8);
    v9.columns[0] = vaddq_f32(v9.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9.columns[0], v7.f32[0]), v9.columns[1], *v7.f32, 1), v9.columns[2], v7, 2));
    v6[2] = vdivq_f32(v9.columns[0], vdupq_laneq_s32(v9.columns[0], 3));
    return re::ecs2::Component::didSet(v3);
  }

  else
  {
    result[8] = a2;
    result[9] = a3;
  }

  return result;
}

void *re::ecs2::TransformComponent::setWorldOrientation(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5.i64[0] = a2;
    v5.i64[1] = a3;
    v28 = v5;
    v6 = re::BindPoint::baseValueUntyped((result + 10));
    re::ecs2::Component::willSet(v3);
    re::ecs2::TransformComponent::parentWorldMatrix4x4F(v4, 0, &v29);
    v30 = __invert_f4(v29);
    v30.columns[3] = vmulq_f32(v30.columns[0], v30.columns[0]);
    *&v7 = v30.columns[3].f32[2] + vaddv_f32(*v30.columns[3].f32);
    v8 = vrsqrte_f32(v7);
    v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
    v30.columns[0] = vmulq_n_f32(v30.columns[0], vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]);
    v10 = vmulq_f32(v30.columns[1], v30.columns[0]);
    v11 = vmulq_f32(v30.columns[0], v30.columns[0]);
    v12 = vmulq_f32(v30.columns[2], v30.columns[0]);
    *v11.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v12.i8, *v11.i8), vzip2_s32(*v12.i8, *v11.i8)));
    v30.columns[1] = vsubq_f32(v30.columns[1], vmulq_n_f32(v30.columns[0], (v10.f32[2] + vaddv_f32(*v10.f32)) / *&v11.i32[1]));
    v13 = vmulq_f32(v30.columns[1], v30.columns[1]);
    *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
    *v13.f32 = vrsqrte_f32(v14);
    *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
    v30.columns[1] = vmulq_n_f32(v30.columns[1], vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
    v15 = vmulq_n_f32(v30.columns[0], *v11.i32 / *&v11.i32[1]);
    v16 = vmulq_f32(v30.columns[2], v30.columns[1]);
    v17 = vmulq_f32(v30.columns[1], v30.columns[1]);
    *v16.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8)));
    v30.columns[2] = vsubq_f32(vsubq_f32(v30.columns[2], v15), vmulq_n_f32(v30.columns[1], vdiv_f32(*v16.i8, vdup_lane_s32(*v16.i8, 1)).f32[0]));
    v18 = vmulq_f32(v30.columns[2], v30.columns[2]);
    v30.columns[3].f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v30.columns[3].u32[0]);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v30.columns[3].u32[0], vmul_f32(*v18.f32, *v18.f32)));
    *v30.columns[3].f32 = vmul_f32(*v18.f32, vrsqrts_f32(v30.columns[3].u32[0], vmul_f32(*v18.f32, *v18.f32)));
    v30.columns[2] = vmulq_n_f32(v30.columns[2], v30.columns[3].f32[0]);
    *_Q0.i64 = simd_quaternion(v30);
    _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), vnegq_f32(_Q0)), v28, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    v21 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v28, _Q0, 3);
    _Q2.i32[0] = v28.i32[3];
    v22 = vmlaq_laneq_f32(v21, _Q0, v28, 3);
    __asm { FMLA            S3, S2, V0.S[3] }

    v22.i32[3] = _S3;
    *(v6 + 16) = v22;
    return re::ecs2::Component::didSet(v3);
  }

  else
  {
    result[6] = a2;
    result[7] = a3;
  }

  return result;
}

void *re::ecs2::TransformComponent::setWorldScale(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5.i64[0] = a2;
    v5.i64[1] = a3;
    v10 = v5;
    v6 = re::BindPoint::baseValueUntyped((result + 10));
    re::ecs2::Component::willSet(v3);
    re::ecs2::TransformComponent::parentWorldMatrix4x4F(v4, 0, &v11);
    v8 = __invert_f4(v11);
    v8.columns[3] = vmulq_f32(v8.columns[0], vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v8.columns[2], v8.columns[2], 0xCuLL), v8.columns[2], 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8.columns[1], v8.columns[1]), v8.columns[1], 0xCuLL))), vextq_s8(vuzp1q_s32(v8.columns[2], v8.columns[2]), v8.columns[2], 0xCuLL), vextq_s8(vextq_s8(v8.columns[1], v8.columns[1], 0xCuLL), v8.columns[1], 8uLL)));
    v7 = vaddv_f32(*v8.columns[3].f32);
    v8.columns[3].i32[0] = -1.0;
    if ((v8.columns[3].f32[2] + v7) > 0.0)
    {
      v8.columns[3].f32[0] = 1.0;
    }

    v8.columns[0] = vmulq_f32(v8.columns[0], v8.columns[0]);
    v8.columns[1] = vmulq_f32(v8.columns[1], v8.columns[1]);
    v9 = vadd_f32(vzip1_s32(*v8.columns[0].f32, *v8.columns[1].f32), vzip2_s32(*v8.columns[0].f32, *v8.columns[1].f32));
    v8.columns[0] = vextq_s8(v8.columns[0], v8.columns[0], 8uLL);
    *v8.columns[0].f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v8.columns[0].f32, *&vextq_s8(v8.columns[1], v8.columns[1], 8uLL)), v9));
    v8.columns[1] = vmulq_f32(v8.columns[2], v8.columns[2]);
    v8.columns[0].i32[2] = sqrtf(v8.columns[1].f32[2] + vaddv_f32(*v8.columns[1].f32));
    *v6 = vmulq_f32(vmulq_n_f32(v8.columns[0], v8.columns[3].f32[0]), v10);
    return re::ecs2::Component::didSet(v3);
  }

  else
  {
    result[4] = a2;
    result[5] = a3;
  }

  return result;
}

void *re::ecs2::TransformComponent::setLocalSRT(void *a1, __int128 *a2, char a3)
{
  re::ecs2::Component::willSet(a1);
  if ((a3 & 1) != 0 || !a1[2])
  {
    v6 = a1 + 4;
  }

  else
  {
    v6 = re::BindPoint::baseValueUntyped((a1 + 10));
  }

  v7 = *a2;
  v8 = a2[2];
  v6[1] = a2[1];
  v6[2] = v8;
  *v6 = v7;

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setLocalPosition(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  re::ecs2::Component::willSet(a1);
  if ((a4 & 1) != 0 || !a1[2])
  {
    v8 = a1 + 8;
  }

  else
  {
    v8 = (re::BindPoint::baseValueUntyped((a1 + 10)) + 32);
  }

  *v8 = a2;
  v8[1] = a3;

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setLocalOrientation(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  re::ecs2::Component::willSet(a1);
  if ((a4 & 1) != 0 || !a1[2])
  {
    v8 = a1 + 6;
  }

  else
  {
    v8 = (re::BindPoint::baseValueUntyped((a1 + 10)) + 16);
  }

  *v8 = a2;
  v8[1] = a3;

  return re::ecs2::Component::didSet(a1);
}

void *re::ecs2::TransformComponent::setLocalScale(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  re::ecs2::Component::willSet(a1);
  if ((a4 & 1) != 0 || !a1[2])
  {
    v8 = a1 + 4;
  }

  else
  {
    v8 = re::BindPoint::baseValueUntyped((a1 + 10));
  }

  *v8 = a2;
  v8[1] = a3;

  return re::ecs2::Component::didSet(a1);
}

__n128 re::ecs2::TransformComponent::worldMatrix4x4F@<Q0>(float32x4_t **this@<X0>, const re::ecs2::Entity *a2@<X1>, float32x4_t *a3@<X8>)
{
  if (this)
  {
    while (1)
    {
      if (this[32])
      {
        re::ecs2::TransformComponent::worldMatrix4x4F(this[32], a2, a3);
        return result;
      }

      v3 = this[18];
      if (v3)
      {
        break;
      }

      this = this[4];
      if (!this || (this[38] & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }

    result = v3[3];
    v5 = v3[4];
    v6 = v3[6];
    a3[2] = v3[5];
    a3[3] = v6;
    *a3 = result;
    a3[1] = v5;
  }

  else
  {
LABEL_6:
    *a3 = xmmword_1E3047670;
    a3[1] = xmmword_1E3047680;
    result.n128_u64[0] = 0;
    a3[2] = xmmword_1E30476A0;
    a3[3] = xmmword_1E30474D0;
  }

  return result;
}

uint64_t re::ecs2::TransformComponent::makeSyncInfo(re::ecs2::TransformComponent *this)
{
  v1 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetDebugName();
  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  RESyncSyncableTypeInfoSetReadPayloadDeltaCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
  RESyncSyncableTypeInfoSetWritePayloadDeltaCb();
  return v1;
}

uint64_t ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (RESyncObjectReadContextIsLocalSession())
  {
    v5 = RESyncBitReaderDataPtr();
    v6 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a3, v5, v6);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::read(a2, a3);
  }
}

uint64_t ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (RESyncObjectReadContextIsLocalSession())
  {
    v7 = RESyncBitReaderDataPtr();
    v8 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a4, v7, v8);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::readDelta(a2, a3, a4);
  }
}

BOOL ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::write(a2, a3);
}

BOOL ___ZN2re4ecs218TransformComponent12makeSyncInfoEv_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::writeDelta(a2, a3, a4);
}

uint64_t re::ecs2::TransformComponent::rootAnchorComponent(uint64_t a1)
{
  if (re::TransformService::isEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
  }

  if (re::TransformService::isEnabled(void)::isEnabled != 1)
  {
    v3 = *(a1 + 256);
    if (v3)
    {
      return *(v3 + 136);
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    result = *(a1 + 144);
    if (result)
    {
      break;
    }

    a1 = *(a1 + 32);
    if (!a1 || (*(a1 + 304) & 0x80) != 0)
    {
      return 0;
    }
  }

  return result;
}

float32x4_t *re::ecs2::TransformComponent::unanchoredAnimatedWorldTransform(float32x4_t *this)
{
  if (this[8].i8[0] == 1)
  {
    v2 = this[3].f32[0];
    v3 = this[3].f32[1];
    v4 = v2 + v2;
    v5 = v3 + v3;
    v6 = this[3].f32[2];
    v7 = this[3].f32[3];
    v8 = v6 + v6;
    v9 = v2 * (v2 + v2);
    v10 = v3 * (v3 + v3);
    v11 = v6 * (v6 + v6);
    v12 = v4 * v3;
    v13 = v4 * v6;
    v14 = v5 * v6;
    v15 = v4 * v7;
    v16 = v5 * v7;
    v17 = v8 * v7;
    v18.i32[3] = 0;
    v18.f32[0] = 1.0 - (v10 + v11);
    v19.i32[3] = 0;
    v18.f32[1] = v12 + v17;
    v18.f32[2] = v13 - v16;
    v20.i32[3] = 0;
    v20.f32[0] = v12 - v17;
    v20.f32[1] = 1.0 - (v9 + v11);
    v20.f32[2] = v14 + v15;
    v19.f32[0] = v13 + v16;
    v19.f32[1] = v14 - v15;
    v19.f32[2] = 1.0 - (v9 + v10);
    v21 = this[2];
    v22 = vmulq_n_f32(v18, v21.f32[0]);
    v23 = vmulq_laneq_f32(v19, v21, 2);
    v24 = vmulq_n_f32(v20, COERCE_FLOAT(HIDWORD(this[2].i64[0])));
    v25 = this[4];
    v25.i32[3] = 1.0;
    this[9] = v22;
    this[10] = v24;
    this[11] = v23;
    this[12] = v25;
    v26 = this[1].i64[0];
    while (!*(v26 + 144))
    {
      v26 = *(v26 + 32);
      if (!v26 || (*(v26 + 304) & 0x80) != 0)
      {
        break;
      }

      v27 = *(v26 + 256);
      if (v27)
      {
        v28 = re::ecs2::TransformComponent::unanchoredAnimatedWorldTransform(v27);
        v29 = 0;
        v30 = *v28;
        v31 = v28[1];
        v32 = v28[2];
        v33 = v28[3];
        v34 = this[10];
        v35 = this[11];
        v36 = this[12];
        v41[0] = this[9];
        v41[1] = v34;
        v41[2] = v35;
        v41[3] = v36;
        do
        {
          v42[v29] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(v41[v29])), v31, *&v41[v29], 1), v32, v41[v29], 2), v33, v41[v29], 3);
          ++v29;
        }

        while (v29 != 4);
        v37 = v42[1];
        v38 = v42[2];
        v39 = v42[3];
        this[9] = v42[0];
        this[10] = v37;
        this[11] = v38;
        this[12] = v39;
        break;
      }
    }

    this[8].i8[0] = 2;
  }

  return this + 9;
}

__n128 re::ecs2::AnimatedTransformComponentOp::calculateTransform@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  v4 = v2 + v2;
  v5 = v3 + v3;
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = v6 + v6;
  v9 = v2 * (v2 + v2);
  v10 = v3 * (v3 + v3);
  v11 = v6 * (v6 + v6);
  v12 = v4 * v3;
  v13 = v4 * v6;
  v14 = v5 * v6;
  v15 = v4 * v7;
  v16 = v5 * v7;
  v17 = v8 * v7;
  v18.i32[3] = 0;
  v18.f32[0] = 1.0 - (v10 + v11);
  v18.f32[1] = v12 + v17;
  v18.f32[2] = v13 - v16;
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v20.f32[0] = v12 - v17;
  v20.f32[1] = 1.0 - (v9 + v11);
  v20.f32[2] = v14 + v15;
  v19.f32[0] = v13 + v16;
  v19.f32[1] = v14 - v15;
  v19.f32[2] = 1.0 - (v9 + v10);
  v21 = *(a1 + 32);
  v22 = vmulq_n_f32(v18, v21.f32[0]);
  v23 = vmulq_laneq_f32(v19, v21, 2);
  v24 = vmulq_n_f32(v20, COERCE_FLOAT(HIDWORD(*(a1 + 32))));
  *a2 = v22;
  *(a2 + 16) = v24;
  result = *(a1 + 64);
  result.n128_u32[3] = 1.0;
  *(a2 + 32) = v23;
  *(a2 + 48) = result;
  return result;
}

re *re::ecs2::AnimatedTransformComponentOp::willAddSceneToTransformService(re::ecs2::AnimatedTransformComponentOp *this, re::TransformService *a2, re::EventBus **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = re::TransformOp::willAddSceneToTransformService(this, a2, a3);
  v7 = a3[36];
  if (v7)
  {
    v8 = re::globalAllocators(result)[2];
    v17[2] = a2;
    v18 = v8;
    v17[0] = &unk_1F5CEBF38;
    v17[1] = this;
    v19 = v17;
    v9 = re::TransformOp::subscriptionsArrayForScene(this, a3);
    v15 = v18;
    v16 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>(v14, v17);
    v10 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v7, v14, re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v12 = v11;
    v13 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v9);
    *v13 = v10;
    v13[1] = v12;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v14);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v17);
  }

  return result;
}

__n128 re::ecs2::UnanimatedTransformComponentOp::calculateTransform@<Q0>(float32x4_t *a1@<X2>, uint64_t a2@<X8>)
{
  if (a1[1].i64[0])
  {
    v3 = re::BindPoint::baseValueUntyped(&a1[5]);
  }

  else
  {
    v3 = a1 + 2;
  }

  v4 = v3[1].f32[0];
  v5 = v3[1].f32[1];
  v6 = v4 + v4;
  v7 = v5 + v5;
  v8 = v3[1].f32[2];
  v9 = v3[1].f32[3];
  v10 = v8 + v8;
  v11 = v4 * (v4 + v4);
  v12 = v5 * (v5 + v5);
  v13 = v8 * (v8 + v8);
  v14 = v6 * v5;
  v15 = v6 * v8;
  v16 = v7 * v8;
  v17 = v6 * v9;
  v18 = v7 * v9;
  v19 = v10 * v9;
  v20.i32[3] = 0;
  v20.f32[0] = 1.0 - (v12 + v13);
  v20.f32[1] = v14 + v19;
  v20.f32[2] = v15 - v18;
  v21.i32[3] = 0;
  v22.i32[3] = 0;
  v22.f32[0] = v14 - v19;
  v22.f32[1] = 1.0 - (v11 + v13);
  v22.f32[2] = v16 + v17;
  v21.f32[0] = v15 + v18;
  v21.f32[1] = v16 - v17;
  v21.f32[2] = 1.0 - (v11 + v12);
  v23 = vmulq_laneq_f32(v21, *v3, 2);
  v24 = vmulq_n_f32(v22, COERCE_FLOAT(HIDWORD(v3->i64[0])));
  *a2 = vmulq_n_f32(v20, COERCE_FLOAT(*v3));
  *(a2 + 16) = v24;
  result = v3[2];
  result.n128_u32[3] = 1.0;
  *(a2 + 32) = v23;
  *(a2 + 48) = result;
  return result;
}

void re::ecs2::TransformSystem::willAddSceneToECSService(re::ecs2::TransformSystem *this, re::EventBus **a2)
{
  v66[8] = *MEMORY[0x1E69E9840];
  v61 = a2;
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::service<re::TransformService>(v4);
  re::TransformService::willAddSceneToECSService(v5, a2);
  v8 = a2[36];
  if (v8)
  {
    v9 = a2[13];
    v10 = *(v9 + 43);
    if (v10)
    {
      v11 = *(v9 + 45);
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        v6 = re::ecs2::TransformSystem::activateEntityHierarchyTransformState(v13, 0, v7);
        v12 -= 8;
      }

      while (v12);
    }

    if (re::TransformService::isEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
    }

    if ((re::TransformService::isEnabled(void)::isEnabled & 1) == 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v56 = 1;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v60 = 0;
      v14 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v8, 0, re::ecs2::TransformSystem::newAnchorComponentHandler, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v16 = v15;
      v17 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v17 = v14;
      v17[1] = v16;
      v18 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v8, 0, re::ecs2::TransformSystem::removedAnchorComponentHandler, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v20 = v19;
      v21 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v21 = v18;
      v21[1] = v20;
      v22 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v8, 0, re::ecs2::TransformSystem::newTransformComponentHandler, re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v24 = v23;
      v25 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v25 = v22;
      v25[1] = v24;
      Type = re::EventBus::getTypeId<RESceneEntityDidAddEvent>();
      EventInfo = re::EventBus::addOrGetEventInfo(v8, Type);
      v28 = re::globalAllocators(EventInfo)[2];
      v62 = &unk_1F5CEC040;
      v63 = re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidAddEvent>;
      v64 = v28;
      v65 = &v62;
      re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(&v62, 0, v66);
      v29 = re::EventBus::EventInfo::addSubscription(EventInfo, v66, 0, 0);
      v31 = v30;
      re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v66);
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(&v62);
      v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v32 = v29;
      v32[1] = v31;
      v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v8, 0, re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidReparentEvent>, 0, 0);
      v35 = v34;
      v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v36 = v33;
      v36[1] = v35;
      v37 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v8, 0, re::ecs2::TransformSystem::invalidateEntityUnanchoredTransformHierarchy<REComponentDidChangeEvent>, re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v39 = v38;
      v40 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v40 = v37;
      v40[1] = v39;
      v41 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v8, 0, re::ecs2::TransformSystem::invalidateEntityUnanchoredTransformHierarchy<REComponentDidChangeEvent>, re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v43 = v42;
      v44 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v44 = v41;
      v44[1] = v43;
      v45 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v8, 0, re::ecs2::TransformSystem::invalidateEntityUnanchoredTransformHierarchy<REComponentWillRemoveEvent>, re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v47 = v46;
      v48 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v48 = v45;
      v48[1] = v47;
      v49 = re::EventBus::getTypeId<RESceneEntityWillRemoveEvent>();
      v50 = re::EventBus::addOrGetEventInfo(v8, v49);
      v64 = re::globalAllocators(v50)[2];
      v65 = &v62;
      v62 = &unk_1F5CEC0F0;
      v63 = re::ecs2::TransformSystem::removeSceneEntityHandler;
      re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(&v62, 0, v66);
      v51 = re::EventBus::EventInfo::addSubscription(v50, v66, 0, 0);
      v53 = v52;
      re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v66);
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v62);
      v54 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v55);
      *v54 = v51;
      v54[1] = v53;
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 224, &v61, v55);
      re::BucketArray<RESubscriptionHandle,8ul>::deinit(v55);
      if (v55[0])
      {
        if ((v56 & 1) == 0)
        {
          (*(*v55[0] + 40))();
        }
      }
    }
  }
}

void *re::ecs2::TransformSystem::activateEntityHierarchyTransformState(void *result, re::ecs2::Entity *a2, const re::ecs2::AnchorComponent *a3)
{
  if (result[18])
  {
    a2 = result[18];
  }

  v4 = result[32];
  if (v4)
  {
    *(v4 + 136) = a2;
    *(v4 + 128) = 1;
  }

  v5 = result[43];
  if (v5)
  {
    v6 = result[45];
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = re::ecs2::TransformSystem::activateEntityHierarchyTransformState(v8, a2, a3);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t re::ecs2::TransformSystem::removedAnchorComponentHandler(void *a1, uint64_t a2, const re::ecs2::AnchorComponent *a3)
{
  for (i = a1[4]; i; i = *(i + 32))
  {
    if ((*(i + 304) & 0x80) != 0)
    {
      break;
    }

    v4 = *(i + 144);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(a1, v4, a3);
  return 0;
}

uint64_t re::ecs2::TransformSystem::newTransformComponentHandler(void *a1)
{
  if (a1)
  {
    v1 = a1;
    while (1)
    {
      v2 = v1[18];
      if (v2)
      {
        break;
      }

      v1 = v1[4];
      if (!v1 || (v1[38] & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v2 = 0;
  }

  v3 = a1[32];
  *(v3 + 136) = v2;
  *(v3 + 128) = 1;
  v4 = a1[43];
  if (v4)
  {
    v5 = a1[45];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      re::ecs2::TransformSystem::updateEntityHierarchyTransformDirtyState(v7);
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}