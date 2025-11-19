uint64_t re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CBAD70;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(a1);
}

void re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CBAD70;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *(a1 + 208))
  {
    return re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 140) = 0;
  *(result + 152) = 1024;
  v2 = &unk_1EE186000;
  {
    v8 = result;
    v2 = &unk_1EE186000;
    v6 = v4;
    result = v8;
    if (v6)
    {
      re::Defaults::intValue("maxSerializationDepth", v5, v9);
      v7 = v10;
      if (!v9[0])
      {
        v7 = 0;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &unk_1EE186000;
      result = v8;
    }
  }

  v3 = v2[28];
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

uint64_t re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CBADD8;
  v2 = (a1 + 8);
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 224));
  re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::~Encoder((a1 + 24));
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::deinit(void *a1)
{
  if (a1[26])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
    a1[26] = 0;
  }
}

_BYTE *re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    if ((*(result + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

uint64_t re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>(void *a1, const char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this == a6)
  {
    goto LABEL_19;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 16);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_19;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_19;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
    return 0;
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

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
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
    v30 = re::TypeInfo::name(this);
    v31 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v30, v31))
    {
      v34 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::TypeInfo::name(this);
      re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Type name changed: Serialized type %s version %u, runtime type %s version %u.", v37, v38, v39, v40, v41, v34);
      return 0;
    }

    v32 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    if (v32)
    {
      v33 = *(v32 + 16);
    }

    else
    {
      v33 = -1;
    }

    re::TypeInfo::atVersion(this, v33, v59);
    if ((v59[0] & 1) == 0)
    {
      v36 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Unknown serialized type %s version %u. No matching runtime type found.", v42, v43, v44, v45, v46, v36);
      return 0;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(v60, a1[6], a1[25]);
    }

    if (a1[8] & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, v60, a6, a7), (a1[8]))
    {
      if (Instance)
      {
        re::TypeInfo::releaseInstance(v60, Instance, a1[6], a1[25]);
      }

      return 0;
    }

    if ((a7 & 1) == 0)
    {
      re::TypeInfo::TypeInfo(v54, v60);
      re::internal::upgradeObject(Instance, v54, a4, this, a1[6], a1[25], v55);
      if ((v55[0] & 1) == 0)
      {
        if (v57)
        {
          LOBYTE(v52) = v58[7];
        }

        else
        {
          v52 = v58;
        }

        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "%s", v47, v48, v49, v50, v51, v52);
        if (v55[0] & 1) == 0 && v56 && (v57)
        {
          (*(*v56 + 40))();
        }

        return 0;
      }
    }

    return 1;
  }

LABEL_19:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v23 == 3)
      {

        return re::serializeOptional<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_59;
        }

        return re::serializeArray<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v23 == 1)
    {

      return re::serializeBasic<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_59;
      }

      return re::serializeEnum<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v23 == 5)
    {

      return re::serializeList<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_59;
      }

      return re::serializeDictionary<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v23)
    {
      case 7u:

        return re::serializeUnion<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        v53 = re::TypeInfo::name(this)[1];
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.", v24, v25, v26, v27, v28, v53);
        return 0;
      default:
LABEL_59:
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Invalid type category. Value = %d", a4, this, a6, a7, a8, *(this + 12));
        return 0;
    }
  }
}

uint64_t re::serializeBasic<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  v10 = a3;
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
      return 0;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_24;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 <= 0x303EE88E58CLL)
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:

            return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<long long>(a1 + 24, a2, v10, a4, a7);
          }

          goto LABEL_74;
        }

        goto LABEL_68;
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_74;
          }

          goto LABEL_65;
        }

        goto LABEL_59;
      }

LABEL_53:

      return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, v10, a4, a7);
    }

    if (*v14 >> 1 <= 0x2A8CEB1C43F60843)
    {
      if (v15 != 0x303EE88E58DLL)
      {
        if (v15 != 0x2710786C3AC82DA1)
        {
          goto LABEL_74;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (v15 == 0x2A8CEB1C43F60844)
      {
LABEL_65:

        return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, v10, a4, a7);
      }

      if (v15 == 0x3AFE951B1F1F3391)
      {
LABEL_59:

        return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, v10, a4, a7);
      }

      if (v15 != 0x412A40E9CB79BA35)
      {
        goto LABEL_74;
      }
    }

LABEL_56:

    return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, v10, a4, a7);
  }

  if (*v14 >> 1 <= 0x685847B)
  {
    if (*v14 >> 1 > 0x2E9355)
    {
      if (v15 != 3052374)
      {
        if (v15 != 3327612)
        {
          if (v15 == 97526364)
          {

            return re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1 + 24, a2, v10, a4, a7);
          }

          goto LABEL_74;
        }

        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {

        return re::EncoderOPACK<re::SeekableInputStream>::serializeBool(a1 + 24, a2, v10, a4, a7);
      }

LABEL_74:
      v21 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Unsupported basic type %s.", v22, v23, v24, v25, v26, v21[1]);
      return 0;
    }

LABEL_68:

    return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<int>(a1 + 24, a2, v10, a4, a7);
  }

  if (*v14 >> 1 > 0xB9708BDD)
  {
    if (v15 == 3111160798)
    {
LABEL_62:

      return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v10, a4, a7);
    }

    if (v15 != 3393056694)
    {
      if (v15 != 0x16749D2549)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v15 == 109413500)
  {
LABEL_71:

    return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<short>(a1 + 24, a2, v10, a4, a7);
  }

  if (v15 != 2969009105)
  {
    goto LABEL_74;
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, a2, v10, a4, a7);
}

uint64_t re::serializeEnum<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeOptional<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_11:
  if (a7)
  {
    v24[0] = 0;
    re::EncoderOPACK<re::SeekableInputStream>::beginOptional(a1 + 24, a2, v11, v24, 0);
    if (v24[0] == 1)
    {
      v18 = *(a1 + 208);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v26);
      re::TypeInfo::TypeInfo(v25, &v27);
      re::internal::translateType(v18, v25, v26);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, 0, v26, v26, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v26);
    re::TypeInfo::TypeInfo(v25, &v27);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v26);
    re::TypeInfo::TypeInfo(v24, &v27);
    re::TypeInfo::TypeInfo(v26, a5);
    v23 = (*(v28 + 88))(a4) != 0;
    re::EncoderOPACK<re::SeekableInputStream>::beginOptional(a1 + 24, a2, v11, &v23, 0);
    if (v23)
    {
      Instance = re::TypeInfo::createInstance(v25, *(a1 + 48), *(a1 + 200));
      (*(v28 + 96))(a4, Instance);
      re::TypeInfo::releaseInstance(v25, Instance, *(a1 + 48), *(a1 + 200));
    }

    else
    {
      (*(v28 + 96))(a4, 0);
    }

    if (v23)
    {
      v21 = (*(v28 + 88))(a4);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v21, v25, v24, 0);
      }
    }
  }

  re::EncoderOPACK<re::SeekableInputStream>::endOptional((a1 + 24));
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeArray<re::EncoderOPACK<re::SeekableInputStream>>(void *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a6 + 12) != 4)
  {
    goto LABEL_70;
  }

  v18 = *(a5 + 2);
  v19 = *(a6 + 2);
  v20 = *(v19 + 23) & 0xFFFFFF;
  if ((*(v18 + 23) & 0xFFFFFF) != 0)
  {
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_70:
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_71;
  }

  if (v20 || *(v18 + 24) != *(v19 + 24))
  {
    goto LABEL_70;
  }

LABEL_13:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v72);
    re::TypeInfo::TypeInfo(v69, v73);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v72);
    re::TypeInfo::TypeInfo(v68, v73);
    re::TypeInfo::TypeInfo(&v72, a5);
    v27 = (*(*a1 + 80))(a1, v69);
    if (v27)
    {
      v28 = v27;
      v29 = re::ArrayAccessor::size(&v72, a4);
      v30 = v29;
      v66 = v29;
      if (v70 == 1)
      {
        v65 = v29 * *(v71 + 8);
        if (re::EncoderOPACK<re::SeekableInputStream>::beginBLOB((a1 + 3), a2, v11, &v65, 0))
        {
          v34 = v65;
          v35 = *(v71 + 8);
          {
            if (v34 >= v35)
            {
              v36 = re::ArrayAccessor::elementAt(&v72, a4, 0);
              v37 = (a1 + 3);
              v38 = 0;
LABEL_47:
              re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(v37, v36, v38);
            }

LABEL_48:
            re::EncoderOPACK<re::SeekableInputStream>::endBLOB((a1 + 3));
LABEL_67:
            v57 = *(a1 + 64) ^ 1;
            return v57 & 1;
          }
        }
      }

      else
      {
        v45 = *(*(a5 + 2) + 92) & 0xFFFFFF;
        if (v45)
        {
          v46 = 8;
        }

        else
        {
          v46 = 4;
        }

        {
          v50 = v66;
          if (v45)
          {
            v51 = v66 == 0;
          }

          else
          {
            v51 = 1;
          }

          v52 = v51;
          if (!v51)
          {
            v53 = *a4;
            v64[0] = 0;
            v64[1] = 0xFFFFFFFFLL;
            (*(*a1 + 16))(a1, v53, v64);
            v50 = v66;
          }

          if (v50)
          {
            v54 = 0;
            do
            {
              v55 = re::ArrayAccessor::elementAt(&v72, a4, v54);
              v28(a1, 0, 0, v55, v69, v68, 0);
              ++v54;
            }

            while (v54 < v66);
          }

          if (v52)
          {
            goto LABEL_66;
          }

LABEL_65:
          (*(*a1 + 24))(a1);
LABEL_66:
          re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 3));
          goto LABEL_67;
        }
      }

LABEL_71:
      v57 = 0;
      return v57 & 1;
    }

LABEL_23:
    v39 = re::TypeInfo::name(v69);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_71;
  }

  v21 = a1[26];
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v72);
  re::TypeInfo::TypeInfo(v68, v73);
  re::internal::translateType(v21, v68, v69);
  v22 = (*(*a1 + 80))(a1, v69);
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v22;
  v24 = *(a6 + 2);
  v25 = *(v24 + 23) & 0xFFFFFF;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v24 + 24);
  }

  v72 = v26;
  if (v70 != 1)
  {
    if (v25)
    {
      v58 = 8;
    }

    else
    {
      v58 = 4;
    }

    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray((a1 + 3), a2, v11, &v72, v58))
    {
      v59 = v72;
      if (v25)
      {
        v60 = v72 == 0;
      }

      else
      {
        v60 = 1;
      }

      v61 = v60;
      if (!v60)
      {
        v67[0] = 0;
        v67[1] = 0xFFFFFFFFLL;
        (*(*a1 + 16))(a1, 0, v67);
        v59 = v72;
      }

      if (v59)
      {
        v62 = 0;
        do
        {
          v23(a1, 0, 0, 0, v69, v69, 1);
          ++v62;
        }

        while (v62 < v72);
      }

      if (v61)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_71;
  }

  v68[0] = v26 * *(v71 + 8);
  v56 = re::EncoderOPACK<re::SeekableInputStream>::beginBLOB((a1 + 3), a2, v11, v68, 0);
  v57 = 0;
  if (v56)
  {
    if (v68[0])
    {
      v37 = (a1 + 3);
      v36 = 0;
      v38 = 1;
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  return v57 & 1;
}

uint64_t re::serializeList<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_52;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v64);
    re::TypeInfo::TypeInfo(v61, &v65);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v64);
    re::TypeInfo::TypeInfo(v60, &v65);
    re::TypeInfo::TypeInfo(&v64, a5);
    v25 = (*(*a1 + 80))(a1, v61);
    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = v25;
    v27 = (*(v66 + 88))(a4);
    v28 = v27;
    v59 = v27;
    if (*(a5 + 12) == 5 && (*(*(a5 + 2) + 48) & 8) != 0 && v62 == 1)
    {
      v58[0] = v27 * *(v63 + 8);
      if (re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(a1 + 24, a2, v11, v58, 0))
      {
        v33 = v58[0];
        v34 = *(v63 + 8);
        v35 = v58[0] / v34;
        if (v58[0] / v34 * v34 == v58[0])
        {
          {
            if (v33 < v34)
            {
              goto LABEL_18;
            }

            v23 = (*(v66 + 104))(a4, 0);
            v22 = a1 + 24;
            v24 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "BLOB size mismatch: BLOB is %zu bytes, but list only accomodates %zu bytes (%zu elements * %zu bytes/element)", v29, v35, v30, v31, v32, v58[0]);
        }
      }
    }

    {
      if (*(v66 + 104))
      {
        if (v59)
        {
          for (i = 0; i < v59; ++i)
          {
            v42 = (*(v66 + 104))(a4, i);
            v26(a1, 0, 0, v42, v61, v60, 0);
          }
        }

        goto LABEL_42;
      }

      v46 = *(v66 + 112);
      if (v46 && *(v66 + 120) && *(v66 + 128))
      {
        v47 = v46(a4, *(a1 + 56));
        v48 = (*(v66 + 120))();
        if (v48)
        {
          v49 = v48;
          do
          {
            v26(a1, 0, 0, v49, v61, v60, 0);
            v49 = (*(v66 + 120))(v47);
          }

          while (v49);
        }

        (*(v66 + 128))(v47, *(a1 + 56));
        goto LABEL_42;
      }

      re::TypeInfo::TypeInfo(v58, &v64);
      v57 = re::TypeInfo::name(v58)[1];
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.", v51, v52, v53, v54, v55, v57);
    }

LABEL_52:
    v21 = 0;
    return v21 & 1;
  }

  v18 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v64);
  re::TypeInfo::TypeInfo(v60, &v65);
  re::internal::translateType(v18, v60, v61);
  v19 = (*(*a1 + 80))(a1, v61);
  if (!v19)
  {
LABEL_28:
    v56 = re::TypeInfo::name(v61)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36, v37, v38, v39, v40, v56);
    goto LABEL_52;
  }

  v64 = 0;
  if (v62 != 1)
  {
    v43 = v19;
    v44 = re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, v11, &v64, 0);
    v21 = 0;
    if (!v44)
    {
      return v21 & 1;
    }

    if (v64)
    {
      for (j = 0; j < v64; ++j)
      {
        v43(a1, 0, 0, 0, v61, v61, 1);
      }
    }

LABEL_42:
    re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
    goto LABEL_43;
  }

  v60[0] = 0;
  v20 = re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(a1 + 24, a2, v11, v60, 0);
  v21 = 0;
  if (v20)
  {
    if (!v60[0])
    {
LABEL_18:
      re::EncoderOPACK<re::SeekableInputStream>::endBLOB((a1 + 24));
LABEL_43:
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_17:
    re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(v22, v23, v24);
    goto LABEL_18;
  }

  return v21 & 1;
}

uint64_t re::serializeDictionary<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
LABEL_37:
    v25 = 0;
    return v25 & 1;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v53);
    re::TypeInfo::TypeInfo(v52, &v53 + 8);
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v53);
    re::TypeInfo::TypeInfo(v51, &v53 + 8);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v53);
    re::TypeInfo::TypeInfo(v50, &v53 + 8);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v53);
    re::TypeInfo::TypeInfo(v49, &v53 + 8);
    re::TypeInfo::TypeInfo(v47, a5);
    v27 = (*(*a1 + 80))(a1, v52);
    if (v27)
    {
      v28 = v27;
      v29 = (*(*a1 + 80))(a1, v51);
      if (v29)
      {
        v30 = v29;
        v46 = (*(v48 + 96))(a4);
        v31 = re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(a1 + 24, a2, v11, &v46, 0);
        v25 = 0;
        if (!v31)
        {
          return v25 & 1;
        }

        v32 = *(a1 + 48);
        v33 = *(v48 + 104);
        re::TypeInfo::TypeInfo(&v53, v47);
        v33(a4, &v53, v32);
        if (v46)
        {
          Instance = re::TypeInfo::createInstance(v52, *(a1 + 48), *(a1 + 200));
          if (v46)
          {
            v35 = 0;
            while (1)
            {
              if ((*(a1 + 64) & 1) == 0)
              {
                LOBYTE(v53) = 7;
                DWORD1(v53) = 0;
                *(&v53 + 1) = "entry";
                v54 = xmmword_1E3054780;
                v55 = 0;
                v56 = 0;
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v53);
              }

              v28(a1, "key", 0, Instance, v52, v50, 0);
              v36 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v37 = (*(v48 + 112))(a4, v47, v36, Instance);
              v30(a1, "value", 0, v37, v51, v49, 0);
              re::EncoderOPACK<re::SeekableInputStream>::endDictionaryEntry((a1 + 24));
              if (++v35 >= v46)
              {
                goto LABEL_31;
              }
            }

            re::TypeInfo::releaseInstance(v52, Instance, v36, *(a1 + 200));
            goto LABEL_37;
          }

LABEL_31:
          re::TypeInfo::releaseInstance(v52, Instance, *(a1 + 48), *(a1 + 200));
        }

LABEL_32:
        re::EncoderOPACK<re::SeekableInputStream>::endDictionary((a1 + 24));
        v25 = *(a1 + 64) ^ 1;
        return v25 & 1;
      }

      goto LABEL_35;
    }

LABEL_33:
    v38 = v52;
LABEL_36:
    v39 = re::TypeInfo::name(v38);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_37;
  }

  v18 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v53);
  re::TypeInfo::TypeInfo(v51, &v53 + 8);
  re::internal::translateType(v18, v51, v52);
  v19 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v53);
  re::TypeInfo::TypeInfo(v50, &v53 + 8);
  re::internal::translateType(v19, v50, v51);
  v20 = (*(*a1 + 80))(a1, v52);
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = v20;
  v22 = (*(*a1 + 80))(a1, v51);
  if (!v22)
  {
LABEL_35:
    v38 = v51;
    goto LABEL_36;
  }

  v23 = v22;
  *v50 = 0;
  v24 = re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(a1 + 24, a2, v11, v50, 0);
  v25 = 0;
  if (v24)
  {
    if (*v50)
    {
      v26 = 0;
      do
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          LOBYTE(v53) = 7;
          DWORD1(v53) = 1;
          *(&v53 + 1) = "entry";
          v54 = xmmword_1E3054780;
          v55 = 0;
          v56 = 0;
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v53);
        }

        v21(a1, "key", 0, 0, v52, v52, 1);
        v23(a1, "value", 0, 0, v51, v51, 1);
        re::EncoderOPACK<re::SeekableInputStream>::endDictionaryEntry((a1 + 24));
        ++v26;
      }

      while (v26 < *v50);
    }

    goto LABEL_32;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      goto LABEL_20;
    }

    v16 = **(a5 + 2);
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
  v14 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, v11, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "tag", 0, &Tag, 0);
      re::UnionAccessor::reset(v23, a4, Tag, *(a1 + 48));
      if (Tag < *(*(a5 + 2) + 96))
      {
        re::TypeInfo::unionMember(a5, Tag, v21);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, a4, v21, v21, 0);
        }
      }

      goto LABEL_13;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  v21[0] = 0;
  re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(a6, v21[0], v23);
    if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
  v15 = *(a1 + 64) ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v25 = *(a1 + 208);
      v49[0] = 0x2686EB529B3EE220;
      v49[1] = "DynamicString";
      re::TypeRegistry::typeInfo(v25, v49, &v43);
      v26 = re::TypeInfo::TypeInfo(v50, v44);
      if (v49[0])
      {
        if (v49[0])
        {
        }
      }

      v27 = v50;
      v28 = v50;
      v29 = a1;
      v30 = a2;
      v31 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v29 = a1;
      v30 = a2;
      v31 = a3;
      v27 = this;
      v28 = this;
    }

    re::serializeDynamicString<re::EncoderOPACK<re::SeekableInputStream>>(v29, v30, v31, 0, v27, v28, 1);
LABEL_36:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 168);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v43 = &unk_1F5CBAE40;
      v44[0] = a1;
      v44[1] = v19;
      v44[2] = v20;
      v45[0] = 0;
      v45[1] = 0;
      v46 = 1;
      v47 = 0;
      v48 = 0;
      v50[0].n128_u64[0] = a2;
      v50[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(v45, v50);
      v18(&v43, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v43 = &unk_1F5CBAE40;
      if (v45[0])
      {
        if ((v46 & 1) == 0)
        {
          (*(*v45[0] + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    v23 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v22 = 0;
    if (!v23)
    {
      return v22 & 1;
    }

    if (this == a6)
    {
      goto LABEL_17;
    }

    if (*this == *a6)
    {
      v33 = **(this + 2);
      v34 = **(a6 + 2);
      if (v33 == v34)
      {
        v36 = WORD1(v33) == WORD1(v34);
        v35 = (v34 ^ v33) & 0xFFFFFF00000000;
        v36 = v36 && v35 == 0;
        if (v36)
        {
          goto LABEL_17;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v24))
    {
LABEL_17:
      re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a4, this, a7);
LABEL_35:
      re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
      goto LABEL_36;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v37 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v38, v39, v40, v41, v42, v37);
    }

    goto LABEL_35;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeBool(uint64_t a1, const char *a2, int a3, _BYTE *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19[5] = v5;
  v19[6] = v6;
  v19[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v19, 0);
  if (result)
  {
    __dst = 0;
    if (*(a1 + 40))
    {
LABEL_5:
      for (i = v19[0]; i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
      }

      result = 1;
      if ((a5 & 2) == 0)
      {
        v13 = *(a1 + 128) + 48 * *(a1 + 112);
        if (*(v13 - 48) != 2)
        {
          ++*(v13 - 16);
        }
      }

      return result;
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      v15 = v14 - 1;
      v16 = *(a1 + v15 + 160);
      __dst = *(a1 + v15 + 160);
      *(a1 + 168) = v15;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Boolean");
        goto LABEL_5;
      }

      v16 = __dst;
    }

    if (v16 == 2)
    {
      if ((a5 & 1) == 0)
      {
        *a4 = 0;
      }
    }

    else
    {
      if (v16 != 1)
      {
        v17 = re::OPACK::toString(v16);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Boolean", v17);
        return 0;
      }

      if ((a5 & 1) == 0)
      {
        *a4 = 1;
      }
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v26, 0);
  if (result)
  {
    __dst = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v13 + 160);
        __dst = *(a1 + v13 + 160);
        *(a1 + 168) = v13;
      }

      else
      {
        if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
        {
LABEL_25:
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Float");
          goto LABEL_26;
        }

        v14 = __dst;
      }

      if (v14 != 53)
      {
        v21 = re::OPACK::toString(v14);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Float", v21);
        return 0;
      }

      if (*(a1 + 40))
      {
        goto LABEL_26;
      }

      v15 = *(a1 + 168);
      if (v15)
      {
        v16 = 4;
        if (v15 < 4)
        {
          v16 = *(a1 + 168);
        }

        v17 = v15 - v16;
        if ((v15 - 1) >= (v15 - v16))
        {
          v18 = *(a1 + 168);
          do
          {
            *a4++ = *(a1 + 159 + v18);
            v19 = v18 - 2;
            --v18;
          }

          while (v19 >= v17);
        }

        *(a1 + 168) = v17;
        if (v15 > 3)
        {
          goto LABEL_26;
        }

        v20 = 4 - v16;
      }

      else
      {
        v20 = 4;
      }

      if (a5)
      {
        v22 = 0;
      }

      else
      {
        v22 = a4;
      }

      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v22, v20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    for (i = v26[0]; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    result = 1;
    if ((a5 & 2) == 0)
    {
      v24 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v24 - 48) != 2)
      {
        ++*(v24 - 16);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v26, 0);
  if (result)
  {
    __dst = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v13 + 160);
        __dst = *(a1 + v13 + 160);
        *(a1 + 168) = v13;
      }

      else
      {
        if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
        {
LABEL_25:
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Double");
          goto LABEL_26;
        }

        v14 = __dst;
      }

      if (v14 != 54)
      {
        v21 = re::OPACK::toString(v14);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Double", v21);
        return 0;
      }

      if (*(a1 + 40))
      {
        goto LABEL_26;
      }

      v15 = *(a1 + 168);
      if (v15)
      {
        v16 = 8;
        if (v15 < 8)
        {
          v16 = *(a1 + 168);
        }

        v17 = v15 - v16;
        if ((v15 - 1) >= (v15 - v16))
        {
          v18 = *(a1 + 168);
          do
          {
            *a4++ = *(a1 + 159 + v18);
            v19 = v18 - 2;
            --v18;
          }

          while (v19 >= v17);
        }

        *(a1 + 168) = v17;
        if (v15 > 7)
        {
          goto LABEL_26;
        }

        v20 = 8 - v16;
      }

      else
      {
        v20 = 8;
      }

      if (a5)
      {
        v22 = 0;
      }

      else
      {
        v22 = a4;
      }

      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v22, v20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    for (i = v26[0]; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    result = 1;
    if ((a5 & 2) == 0)
    {
      v24 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v24 - 48) != 2)
      {
        ++*(v24 - 16);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::advance(uint64_t a1, const char *a2, int a3, void *a4, _DWORD *a5)
{
  v9 = *(*(a1 + 128) + 48 * *(a1 + 112) - 48);
  if (v9 == 2)
  {
    if (re::EncoderOPACK<re::SeekableInputStream>::advance_KeyedContainer(a1, a2, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 == 1 && !re::EncoderOPACK<re::SeekableInputStream>::advance_UnkeyedContainer(a1, a2))
  {
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::evaluateConditional(a1, a2, a5, a4);
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readTag(uint64_t a1, const char *a2, char *__dst, uint64_t a4)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      v7 = v6 - 1;
      *__dst = *(a1 + v7 + 160);
      *(a1 + 168) = v7;
      return 1;
    }

    v4 = 1;
    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 1uLL))
    {
      return v4;
    }

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a4);
  }

  return 0;
}

BOOL re::EncoderOPACK<re::SeekableInputStream>::advance_UnkeyedContainer(uint64_t a1, const char *a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = *(a1 + v6 - 1 + 160);
    *(a1 + 168) = v7;
  }

  else
  {
    __dst = 0;
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Array element or terminator");
      return 0;
    }

    v8 = __dst;
    v7 = *(a1 + 168);
  }

  if (v7 <= 7)
  {
    *(a1 + 168) = v7 + 1;
    *(a1 + v7 + 160) = v8;
  }

  return v8 != 3;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::advance_KeyedContainer(uint64_t a1, const char *a2, int a3)
{
  v3 = *(a1 + 128);
  v4 = *(a1 + 112);
  v5 = v3 + 48 * v4;
  if ((*(v5 - 44) & 0x40) != 0)
  {
    return 1;
  }

  v7 = *(v5 - 16);
  v38 = v7;
  if (v7 == a3)
  {
LABEL_3:
    *(v3 + 48 * v4 - 16) = 0xFFFFFFFF80000000;
    return 1;
  }

  v11 = a1 + 160;
  v12 = a1 + 159;
  while (1)
  {
    if (v7 > a3)
    {
      result = 0;
      *(*(a1 + 128) + 48 * *(a1 + 112) - 16) = v7;
      return result;
    }

    if ((v7 & 0x80000000) == 0)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    __dst = 0;
    if (*(a1 + 40))
    {
      return 0;
    }

    v13 = *(a1 + 168);
    if (v13)
    {
      v14 = v13 - 1;
      v15 = *(v11 + v13 - 1);
      __dst = v15;
      *(a1 + 168) = v14;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        v32 = "Integer (numeric tag)";
        goto LABEL_63;
      }

      v15 = __dst;
    }

    if (v15 == 3)
    {
      break;
    }

    if ((v15 - 7) <= 0x28)
    {
      LODWORD(v16) = v15 - 8;
      goto LABEL_49;
    }

    if (v15 != 50)
    {
      if (v15 != 49)
      {
        if (v15 != 48)
        {
          v34 = *(a1 + 168);
          if (v34 <= 7)
          {
            *(a1 + 168) = v34 + 1;
            *(v11 + v34) = v15;
          }

          return 0;
        }

        v36 = 0;
        if (*(a1 + 40))
        {
          return 0;
        }

        v16 = *(a1 + 168);
        if (v16)
        {
          v17 = v16 - 1;
          LOBYTE(v16) = *(v11 + v16 - 1);
          *(a1 + 168) = v17;
        }

        else
        {
          if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v36, 1uLL))
          {
            v32 = "8-Bit Signed Integer";
            goto LABEL_63;
          }

          LOBYTE(v16) = v36;
        }

        LODWORD(v16) = v16;
        goto LABEL_49;
      }

      v35 = 0;
      if (*(a1 + 40))
      {
        return 0;
      }

      v18 = *(a1 + 168);
      if (!v18)
      {
        v21 = &v35;
        v24 = 2;
        goto LABEL_44;
      }

      if (v18 >= 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = *(a1 + 168);
      }

      v20 = v18 - v19;
      v21 = &v35;
      if ((v18 - 1) >= (v18 - v19))
      {
        v22 = *(a1 + 168);
        do
        {
          *v21++ = *(v12 + v22);
          v23 = v22 - 2;
          --v22;
        }

        while (v23 >= v20);
      }

      *(a1 + 168) = v20;
      if (v18 == 1)
      {
        v24 = 2 - v19;
LABEL_44:
        if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v21, v24) & 1) == 0)
        {
          v32 = "16-Bit Signed Integer";
          goto LABEL_63;
        }
      }

      LODWORD(v16) = v35;
LABEL_49:
      v38 = v16;
      goto LABEL_50;
    }

    if (*(a1 + 40))
    {
      return 0;
    }

    v25 = *(a1 + 168);
    if (v25)
    {
      if (v25 >= 4)
      {
        v26 = 4;
      }

      else
      {
        v26 = *(a1 + 168);
      }

      v27 = v25 - v26;
      v28 = &v38;
      if ((v25 - 1) >= (v25 - v26))
      {
        v29 = *(a1 + 168);
        do
        {
          *v28++ = *(v12 + v29);
          v30 = v29 - 2;
          --v29;
        }

        while (v30 >= v27);
      }

      *(a1 + 168) = v27;
      if (v25 > 3)
      {
        goto LABEL_50;
      }

      v31 = 4 - v26;
    }

    else
    {
      v28 = &v38;
      v31 = 4;
    }

    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v28, v31) & 1) == 0)
    {
      v32 = "32-Bit Signed Integer";
LABEL_63:
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, v32);
      return 0;
    }

LABEL_50:
    v7 = v38;
    if (v38 == a3)
    {
      v3 = *(a1 + 128);
      v4 = *(a1 + 112);
      goto LABEL_3;
    }
  }

  v33 = *(a1 + 168);
  if (v33 <= 7)
  {
    *(a1 + 168) = v33 + 1;
    *(v11 + v33) = 3;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::evaluateConditional(uint64_t a1, const char *a2, _DWORD *a3, void *a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  __dst = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __dst = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
LABEL_62:
      v26 = "Array";
      goto LABEL_63;
    }

    v11 = __dst;
  }

  v12 = v11;
  v13 = v11 - 209;
  if (v11 - 223 < 0xFFFFFFF3 || v11 == 209)
  {
    v15 = *(a1 + 168);
    if (v15 <= 7)
    {
      *(a1 + 168) = v15 + 1;
      *(a1 + v15 + 160) = v12;
    }

    return 1;
  }

  v4 = 0;
  v57 = 0;
  if (*(a1 + 40))
  {
    return v4;
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    v18 = v17 - 1;
    v19 = *(a1 + v17 - 1 + 160);
    v57 = v19;
    *(a1 + 168) = v18;
    goto LABEL_21;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v57, 1uLL))
  {
    v19 = v57;
LABEL_21:
    if (v19 != 69)
    {
      v24 = *(a1 + 168);
      if (v24 <= 7)
      {
        v25 = a1 + 160;
        *(a1 + 168) = v24 + 1;
        *(a1 + 160 + v24) = v19;
        goto LABEL_48;
      }

      return 1;
    }

    v56 = 0;
    v55 = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v20 = *(a1 + 168);
      if (!v20)
      {
        v23 = &v55;
        v27 = 5;
        goto LABEL_36;
      }

      v21 = 5;
      if (v20 < 5)
      {
        v21 = *(a1 + 168);
      }

      v22 = v20 - v21;
      if ((v20 - 1) >= (v20 - v21))
      {
        v23 = &v55;
        v28 = *(a1 + 168);
        do
        {
          *v23++ = *(a1 + 159 + v28);
          v29 = v28 - 2;
          --v28;
        }

        while (v29 >= v22);
      }

      else
      {
        v23 = &v55;
      }

      *(a1 + 168) = v22;
      if (v20 <= 4)
      {
        v27 = 5 - v21;
LABEL_36:
        if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v23, v27) & 1) == 0)
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Small String");
        }
      }
    }

    if (v55 == 1852793664 && v56 == 100)
    {
      v38 = 0;
      v39 = v12 - 210;
      v40 = 1;
      while ((*(a1 + 40) & 1) == 0)
      {
        v41 = *(a1 + 168);
        if (v41)
        {
          v42 = v41 - 1;
          v43 = *(a1 + 160 + v41 - 1);
          __dst = v43;
          *(a1 + 168) = v42;
        }

        else
        {
          if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
          {
            goto LABEL_62;
          }

          v43 = __dst;
        }

        if ((v43 - 210) >= 0xD)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v49);
          if (v50)
          {
            v46 = v52;
          }

          else
          {
            v46 = v51;
          }

          re::DynamicString::format("Failed to read version conditional %s. Invalid condition.", &v53, v46);
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v53);
          if (v53)
          {
            if (BYTE8(v53))
            {
              (*(*v53 + 40))();
            }

            v53 = 0u;
            v54 = 0u;
          }

          if (v49 && (v50 & 1) != 0)
          {
            (*(*v49 + 40))();
          }

          return 0;
        }

        v48 = 0;
        v4 = re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<int>(a1, a2, &v48);
        if ((v4 & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v49);
          if (v50)
          {
            v47 = v52;
          }

          else
          {
            v47 = v51;
          }

          re::DynamicString::format("Failed to read version conditional %s. Failed to read version.", &v53, v47);
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v53);
          if (v53)
          {
            if (BYTE8(v53))
            {
              (*(*v53 + 40))();
            }

            v53 = 0u;
            v54 = 0u;
          }

          if (v49 && (v50 & 1) != 0)
          {
            (*(*v49 + 40))();
          }

          return v4;
        }

        if (*(a1 + 136) <= v48 || v39 == v38)
        {
          if (a3)
          {
            *a3 = v48;
          }

          *a4 = v13 + ~v38;
          return v4;
        }

        re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
        v38 = v40;
        if (v13 <= v40++)
        {
          re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "evaluateConditional", 2285);
          _os_crash();
          __break(1u);
          goto LABEL_62;
        }
      }

      return 0;
    }

    v31 = *(a1 + 168);
    if (v31 + 4 <= 7)
    {
      for (i = 4; i != -1; --i)
      {
        v33 = *(&v55 + i);
        v34 = *(a1 + 168);
        *(a1 + 168) = v34 + 1;
        *(a1 + 160 + v34) = v33;
      }

      v31 = *(a1 + 168);
    }

    if (v31 <= 7)
    {
      v35 = v57;
      v25 = a1 + 160;
      *(a1 + 168) = v31 + 1;
      *(a1 + 160 + v31) = v35;
LABEL_48:
      v36 = *(a1 + 168);
      if (v36 <= 7)
      {
        v37 = __dst;
        *(a1 + 168) = v36 + 1;
        *(v25 + v36) = v37;
      }

      return 1;
    }

    return 1;
  }

  v26 = "Small String";
LABEL_63:
  re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, v26);
  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::skipObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __dst = 0;
  v2 = *(result + 168);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(result + v3 + 160);
    __dst = v4;
    *(v1 + 168) = v3;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL))
    {
      v7 = "Member";
      v8 = v1;
      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v8, "unknown", v7);
    }

    v4 = __dst;
  }

  result = re::OPACK::toString(v4);
  v5 = result;
  v6 = __dst;
  if (__dst > 0x31u)
  {
    if (__dst > 0xC0u)
    {
      if (__dst <= 0xC2u)
      {
        if (__dst != 193)
        {
LABEL_34:
          if (*(v1 + 40))
          {
            return result;
          }

          v12 = *(v1 + 168);
          if (!v12)
          {
            v15 = 2;
            goto LABEL_80;
          }

          v10 = 2;
          if (v12 >= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = *(v1 + 168);
          }

          *(v1 + 168) = v12 - v11;
          if (v12 != 1)
          {
            return result;
          }

          goto LABEL_63;
        }

LABEL_50:
        if (*(v1 + 40))
        {
          return result;
        }

        v14 = v1;
        v15 = 1;
        goto LABEL_81;
      }

      if (__dst == 195)
      {
        if (*(v1 + 40))
        {
          return result;
        }

        v18 = *(v1 + 168);
        if (v18)
        {
          v19 = 3;
          if (v18 < 3)
          {
            v19 = *(v1 + 168);
          }

          *(v1 + 168) = v18 - v19;
          if (v18 > 2)
          {
            return result;
          }

          v15 = v19 ^ 3;
        }

        else
        {
          v15 = 3;
        }

        goto LABEL_80;
      }

      if (__dst != 196)
      {
        goto LABEL_52;
      }
    }

    else if (__dst > 0x34u)
    {
      if (__dst != 53)
      {
        if (__dst != 54)
        {
          goto LABEL_52;
        }

        goto LABEL_25;
      }
    }

    else if (__dst != 50)
    {
      if (__dst != 51)
      {
        goto LABEL_52;
      }

      goto LABEL_25;
    }

    if (*(v1 + 40))
    {
      return result;
    }

    v13 = *(v1 + 168);
    if (!v13)
    {
      v15 = 4;
      goto LABEL_80;
    }

    v10 = 4;
    if (v13 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v13 - v11;
    if (v13 > 3)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__dst <= 4u)
  {
    if (__dst - 1 < 4)
    {
      return result;
    }

    goto LABEL_52;
  }

  if (__dst > 0x2Fu)
  {
    if (__dst != 48)
    {
      if (__dst != 49)
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

    goto LABEL_50;
  }

  if (__dst == 5)
  {
    if (*(v1 + 40))
    {
      return result;
    }

    v17 = *(v1 + 168);
    if (!v17)
    {
      v15 = 16;
      goto LABEL_80;
    }

    v10 = 16;
    if (v17 >= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v17 - v11;
    if (v17 > 0xF)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__dst == 6)
  {
LABEL_25:
    if (*(v1 + 40))
    {
      return result;
    }

    v9 = *(v1 + 168);
    if (!v9)
    {
      v15 = 8;
      goto LABEL_80;
    }

    v10 = 8;
    if (v9 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v9 - v11;
    if (v9 > 7)
    {
      return result;
    }

LABEL_63:
    v15 = v10 - v11;
LABEL_80:
    v14 = v1;
LABEL_81:
    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v14, 0, v15);
    if (result)
    {
      return result;
    }

    v8 = v1;
    v7 = v5;
    return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v8, "unknown", v7);
  }

LABEL_52:
  if (__dst - 7 >= 0x29)
  {
    if (__dst - 64 <= 0x24)
    {
      v16 = *(v1 + 168);
      if (v16 <= 7)
      {
        *(v1 + 168) = v16 + 1;
        *(v1 + v16 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::SeekableInputStream>::readStringTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::SeekableInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__dst - 112 <= 0x24)
    {
      v20 = *(v1 + 168);
      if (v20 <= 7)
      {
        *(v1 + 168) = v20 + 1;
        *(v1 + v20 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::SeekableInputStream>::readDataTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::SeekableInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__dst - 160 >= 0x21)
    {
      if (__dst - 208 > 0xE)
      {
        if (__dst == 223)
        {
          result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
          if (result)
          {
            do
            {
              v23 = __dst;
              if (__dst == 3)
              {
                break;
              }

              v24 = *(v1 + 168);
              if (v24 <= 7)
              {
                *(v1 + 168) = v24 + 1;
                *(v1 + 160 + v24) = v23;
              }

              re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
              result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
            }

            while ((result & 1) != 0);
          }
        }

        else if (__dst - 224 > 0xE)
        {
          if (__dst == 239)
          {
            for (result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"); result; result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"))
            {
              v28 = __dst;
              if (__dst == 3)
              {
                break;
              }

              v29 = *(v1 + 168);
              if (v29 <= 7)
              {
                *(v1 + 168) = v29 + 1;
                *(v1 + 160 + v29) = v28;
              }

              v30 = -2;
              do
              {
                re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
                v27 = __CFADD__(v30++, 1);
              }

              while (!v27);
            }
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(v1, 0, &v32);
            if (v33)
            {
              v31 = *&v34[7];
            }

            else
            {
              v31 = v34;
            }

            re::DynamicString::format("Failed to deserialize %s. Found unsupported tag while skipping over data.", &v35, v31);
            __n[0] = 400;
            __n[1] = re::FoundationErrorCategory(void)::instance;
            __n[2] = v35;
            __n[5] = v37;
            *&__n[3] = v36;
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __n);
            if (__n[2])
            {
              if (__n[3])
              {
                (*(*__n[2] + 40))();
              }

              memset(&__n[2], 0, 32);
            }

            result = v32;
            if (v32 && (v33 & 1) != 0)
            {
              return (*(*v32 + 40))();
            }
          }
        }

        else
        {
          v25 = *(v1 + 168);
          if (v25 <= 7)
          {
            *(v1 + 168) = v25 + 1;
            *(v1 + v25 + 160) = v6;
          }

          __n[0] = 0;
          result = re::EncoderOPACK<re::SeekableInputStream>::readDictionaryTag(v1, "unknown", __n);
          if (2 * __n[0])
          {
            v26 = -2 * __n[0];
            do
            {
              result = re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
              v27 = __CFADD__(v26++, 1);
            }

            while (!v27);
          }
        }
      }

      else
      {
        v21 = *(v1 + 168);
        if (v21 <= 7)
        {
          *(v1 + 168) = v21 + 1;
          *(v1 + v21 + 160) = v6;
        }

        __n[0] = 0;
        result = re::EncoderOPACK<re::SeekableInputStream>::readArrayTag(v1, "unknown", __n);
        for (i = __n[0]; i; result = re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1))
        {
          --i;
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readRaw(uint64_t a1, const char *a2, _BYTE *a3, size_t __n, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    if (v10 >= __n)
    {
      v11 = __n;
    }

    else
    {
      v11 = *(a1 + 168);
    }

    v12 = v10 - v11;
    if ((v10 - 1) >= (v10 - v11))
    {
      do
      {
        *a3++ = *(a1 + 159 + v10);
        v13 = v10 - 2;
        --v10;
      }

      while (v13 >= v12);
    }

    *(a1 + 168) = v12;
    __n -= v11;
  }

  if (!__n)
  {
    return 1;
  }

  v14 = (a6 & 1) != 0 ? 0 : a3;
  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v14, __n))
  {
    return 1;
  }

  re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a5);
  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readStringTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dst = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dst = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
      }

      result = __dst;
    }

    if ((result - 64) <= 0x20)
    {
      v8 = result - 64;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 98)
    {
      if (result != 97)
      {
        if (result == 98)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12++ = *(v5 + 159 + v26);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "String", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
    }

    if (result != 99)
    {
      if (result != 100)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16++ = *(v5 + 159 + v28);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22++ = *(v5 + 159 + v30);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readDataTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dst = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dst = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
      }

      result = __dst;
    }

    if ((result - 112) <= 0x20)
    {
      v8 = result - 112;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 146)
    {
      if (result != 145)
      {
        if (result == 146)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12++ = *(v5 + 159 + v26);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "BLOB", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
    }

    if (result != 147)
    {
      if (result != 148)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16++ = *(v5 + 159 + v28);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22++ = *(v5 + 159 + v30);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readArrayTag(uint64_t result, const char *a2, char *__dst)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dsta = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dsta = *(v5 + v7 + 160);
      v5[21] = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dsta, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "Array");
      }

      result = __dsta;
    }

    if ((result + 48) > 0xEu)
    {
      if (result == 223)
      {
        return re::EncoderOPACK<re::SeekableInputStream>::readUint64(v5, a2, __dst);
      }

      else
      {
        v8 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Array", v8);
      }
    }

    else
    {
      *__dst = result - 208;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readDictionaryTag(uint64_t result, const char *a2, char *__dst)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dsta = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dsta = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dsta, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "Dictionary");
      }

      result = __dsta;
    }

    if ((result + 32) <= 0xEu)
    {
      *__dst = result - 224;
      return result;
    }

    if (result != 210)
    {
LABEL_16:
      v10 = re::OPACK::toString(result);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Dictionary", v10);
    }

    result = re::EncoderOPACK<re::SeekableInputStream>::readUint64(v5, a2, __dst);
    if (result && (*(v5 + 40) & 1) == 0)
    {
      v8 = *(v5 + 168);
      if (v8)
      {
        v9 = v8 - 1;
        result = *(v5 + v9 + 160);
        __dsta = *(v5 + v9 + 160);
        *(v5 + 168) = v9;
        goto LABEL_15;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &__dsta, 1uLL))
      {
        result = __dsta;
LABEL_15:
        if (result == 239)
        {
          return result;
        }

        goto LABEL_16;
      }

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "Dictionary");
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readUint64(uint64_t a1, const char *a2, char *__dst)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20[5] = v3;
  v20[6] = v4;
  __dsta = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __dsta = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dsta, 1uLL) & 1) == 0)
    {
LABEL_24:
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "UInt64");
      return 0;
    }

    v11 = __dsta;
  }

  if (v11 == 120)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = 8;
        if (v12 < 8)
        {
          v13 = *(a1 + 168);
        }

        v14 = v12 - v13;
        if ((v12 - 1) >= (v12 - v13))
        {
          v15 = *(a1 + 168);
          do
          {
            *__dst++ = *(a1 + 159 + v15);
            v16 = v15 - 2;
            --v15;
          }

          while (v16 >= v14);
        }

        *(a1 + 168) = v14;
        if (v12 > 7)
        {
          return 1;
        }

        v17 = 8 - v13;
      }

      else
      {
        v17 = 8;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, v17))
      {
        return 1;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18 <= 7)
    {
      *(a1 + 168) = v18 + 1;
      *(a1 + v18 + 160) = v11;
    }

    v20[0] = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, v20, "Int64"))
    {
      *__dst = v20[0];
      return 1;
    }
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readInteger(uint64_t a1, const char *a2, char *__dst, uint64_t a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v44 = v4;
  v45 = v5;
  __dsta = 0;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = *(a1 + v12 + 160);
    __dsta = *(a1 + v12 + 160);
    *(a1 + 168) = v12;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dsta, 1uLL) & 1) == 0)
    {
      v25 = a1;
      v26 = a2;
      v27 = a4;
LABEL_66:
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v25, v26, v27);
      return 0;
    }

    v13 = __dsta;
  }

  if ((v13 - 7) <= 0x28)
  {
    v14 = v13 - 8;
LABEL_9:
    *__dst = v14;
    return 1;
  }

  if (v13 <= 49)
  {
    if (v13 != 48)
    {
      if (v13 == 49)
      {
        result = 0;
        v41 = 0;
        if (*(a1 + 40))
        {
          return result;
        }

        v15 = *(a1 + 168);
        if (v15)
        {
          v16 = 2;
          if (v15 < 2)
          {
            v16 = *(a1 + 168);
          }

          v17 = v15 - v16;
          if ((v15 - 1) >= (v15 - v16))
          {
            v18 = &v41;
            v36 = *(a1 + 168);
            do
            {
              *v18++ = *(a1 + 159 + v36);
              v37 = v36 - 2;
              --v36;
            }

            while (v37 >= v17);
          }

          else
          {
            v18 = &v41;
          }

          *(a1 + 168) = v17;
          if (v15 != 1)
          {
            goto LABEL_55;
          }

          v34 = 2 - v16;
        }

        else
        {
          v18 = &v41;
          v34 = 2;
        }

        if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v18, v34))
        {
LABEL_55:
          v14 = v41;
          goto LABEL_9;
        }

        v27 = "16-Bit Signed Integer";
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    result = 0;
    v42 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      v29 = v14 - 1;
      LOBYTE(v14) = *(a1 + v14 - 1 + 160);
      *(a1 + 168) = v29;
LABEL_48:
      v14 = v14;
      goto LABEL_9;
    }

    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v42, 1uLL))
    {
      LOBYTE(v14) = v42;
      goto LABEL_48;
    }

    v27 = "8-Bit Signed Integer";
LABEL_65:
    v25 = a1;
    v26 = a2;
    goto LABEL_66;
  }

  if (v13 == 50)
  {
    result = 0;
    v40 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v30 = *(a1 + 168);
    if (v30)
    {
      v31 = 4;
      if (v30 < 4)
      {
        v31 = *(a1 + 168);
      }

      v32 = v30 - v31;
      if ((v30 - 1) >= (v30 - v31))
      {
        v33 = &v40;
        v38 = *(a1 + 168);
        do
        {
          *v33++ = *(a1 + 159 + v38);
          v39 = v38 - 2;
          --v38;
        }

        while (v39 >= v32);
      }

      else
      {
        v33 = &v40;
      }

      *(a1 + 168) = v32;
      if (v30 > 3)
      {
        goto LABEL_62;
      }

      v35 = 4 - v31;
    }

    else
    {
      v33 = &v40;
      v35 = 4;
    }

    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v33, v35) & 1) == 0)
    {
      v27 = "32-Bit Signed Integer";
      goto LABEL_65;
    }

LABEL_62:
    v14 = v40;
    goto LABEL_9;
  }

  if (v13 != 51)
  {
LABEL_32:
    v28 = re::OPACK::toString(v13);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, a4, v28);
    return 0;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v19 = *(a1 + 168);
    if (v19)
    {
      v20 = 8;
      if (v19 < 8)
      {
        v20 = *(a1 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = *(a1 + 168);
        do
        {
          *__dst++ = *(a1 + 159 + v22);
          v23 = v22 - 2;
          --v22;
        }

        while (v23 >= v21);
      }

      *(a1 + 168) = v21;
      if (v19 > 7)
      {
        return 1;
      }

      v24 = 8 - v20;
    }

    else
    {
      v24 = 8;
    }

    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, v24))
    {
      return 1;
    }

    v27 = "64-Bit Signed Integer";
    goto LABEL_65;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int32");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "Int32", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<signed char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<signed char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int8");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "Int8", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<short>(uint64_t a1, const char *a2, int a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int16");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "Int16", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<int>(uint64_t a1, const char *a2, int a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<long long>(uint64_t a1, const char *a2, int a3, void *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v13 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v13, 0);
  if (v5)
  {
    if (a5)
    {
      __dst = 0;
      re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int64");
    }

    else
    {
      __dst = 0;
      if (re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int64"))
      {
        *a4 = __dst;
      }
    }

    for (i = v13; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned char>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "UInt8");
  if (result)
  {
    if (__dst > 0xFF)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "UInt8", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned short>(uint64_t a1, const char *a2, int a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "UInt16");
  if (result)
  {
    if (__dst >> 16)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "UInt16", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned int>(uint64_t a1, const char *a2, int a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "UInt32");
  if (result)
  {
    if (HIDWORD(__dst))
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format("Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v11, v7, "UInt32", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::SeekableInputStream>::readUint64(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re::internal *a5, re::internal *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v51, v54);
    re::internal::translateType(v11, v51, &__src);
    if ((*(a1 + 64) & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, 0, &__src, &__src, 1);
    }

    return 0;
  }

  v15 = *a5;
  if (a5 == a6)
  {
    goto LABEL_8;
  }

  v16 = *a6;
  if (v15 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = *(a6 + 2);
    v22 = *v21;
    if (v20 != *v21)
    {
      goto LABEL_21;
    }

    v24 = WORD1(v20) == WORD1(v22);
    v23 = (v22 ^ v20) & 0xFFFFFF00000000;
    v24 = v24 && v23 == 0;
    if (!v24)
    {
      goto LABEL_21;
    }

LABEL_8:
    re::TypeRegistry::typeInfo(v15, *(*(a5 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v51, v54);
    __src = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, &__src, v51, v51, 0);
      if (!result)
      {
        return result;
      }

      if ((re::internal::getEnumConstantIndex(a5, &__src, v17) & 0x80000000) == 0)
      {
        v18 = *(*(a5 + 2) + 8);
        p_src = &__src;
LABEL_12:
        memcpy(a4, p_src, v18);
        return 1;
      }

      v49 = __src;
      re::TypeInfo::name(a5);
      goto LABEL_32;
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    v15 = *a5;
    goto LABEL_8;
  }

  v16 = *a6;
  v21 = *(a6 + 2);
LABEL_21:
  v25 = *(a1 + 208);
  re::TypeRegistry::typeInfo(v16, v21[10], &__src);
  re::TypeInfo::TypeInfo(v50, v54);
  re::internal::translateType(v25, v50, v51);
  if (*(v52 + 8) < 9u)
  {
    v50[0] = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, v50, v51, v51, 0);
      if (!result)
      {
        return result;
      }

      EnumConstantIndex = re::internal::getEnumConstantIndex(a6, v50, v31);
      if ((EnumConstantIndex & 0x80000000) != 0)
      {
        v49 = v50[0];
        re::TypeInfo::name(a6);
LABEL_32:
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.", v36, v37, v38, v39, v40, v49);
        return 0;
      }

      v33 = EnumConstantIndex;
      v34 = *(*a6 + 856);
      if (v34)
      {
        v35 = re::internal::TypeTranslationTable::translateSerializedEnum(v34, a6, v33, a5);
        if (v35)
        {
          p_src = v35;
          v18 = *(*(a5 + 2) + 8);
          goto LABEL_12;
        }
      }

      __src = re::TypeInfo::enumConstants(a6);
      v54[0] = v41;
      v42 = *(re::Slice<re::EnumConstant>::operator[](&__src, v33) + 16);
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Serialized enum constant %s does not exist in runtime type %s.", v43, v44, v45, v46, v47, v42);
    }
  }

  else
  {
    v48 = re::TypeInfo::name(v51)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes.", v26, v27, v28, v29, v30, v48);
  }

  return 0;
}

void re::EncoderOPACK<re::SeekableInputStream>::beginOptional(uint64_t a1, const char *a2, int a3, _BYTE *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v17 = 0;
    if ((re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0) & 1) == 0)
    {
      *a4 = 0;
      LOBYTE(__dst) = 3;
      DWORD1(__dst) = a5;
      *(&__dst + 1) = a2;
      v15 = 0u;
      v16 = 0u;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
      return;
    }

    LOBYTE(__dst) = 0;
    if (*(a1 + 40))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 168);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = *(a1 + v9 - 1 + 160);
      *(a1 + 168) = v10;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Optional");
LABEL_14:
        v13 = *a4;
        LOBYTE(__dst) = 3;
        DWORD1(__dst) = a5;
        *(&__dst + 1) = a2;
        *&v15 = 0;
        v16 = 0uLL;
        *(&v15 + 1) = v13;
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
        *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v17;
        return;
      }

      v11 = __dst;
    }

    if (v11 == 4)
    {
      *a4 = 0;
    }

    else
    {
      *a4 = 1;
      v12 = *(a1 + 168);
      if (v12 <= 7)
      {
        *(a1 + 168) = v12 + 1;
        *(a1 + v12 + 160) = v11;
      }
    }

    goto LABEL_14;
  }
}

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 3);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      if (*(*(v1 + 16) + 48 * *(v1 + 14) - 24) <= 0)
      {
        v6 = "Optional should not have a value.";
      }

      else
      {
        v6 = "Optional requires a value.";
      }

      re::DynamicString::format("Failed to serialize optional type %s. %s", v10, v5, v6);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(uint64_t a1, const char *a2, int a3, uint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readDataTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 4;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
{
  if (*(result + 40))
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 128) + 48 * *(result + 112);
  v6 = *(v5 - 24);
  v7 = *(result + 168);
  if (v7)
  {
    if (v7 >= v6)
    {
      v8 = *(v5 - 24);
    }

    else
    {
      v8 = *(result + 168);
    }

    v9 = v7 - v8;
    if ((v7 - 1) >= (v7 - v8))
    {
      do
      {
        *a2++ = *(result + 159 + v7);
        v10 = v7 - 2;
        --v7;
      }

      while (v10 >= v9);
    }

    *(result + 168) = v9;
    v11 = v6 - v8;
    if (v6 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v11 = *(v5 - 24);
  if (v6)
  {
LABEL_11:
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v11);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v4, 0, "BLOB");
    }
  }

LABEL_15:
  if ((a3 & 2) == 0)
  {
    v12 = *(v4 + 16) + 48 * *(v4 + 14);
    if (*(v12 - 48) != 2)
    {
      *(v12 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 4);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v10, v5, *(v6 - 24), *(v6 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginArray(uint64_t a1, const char *a2, int a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readArrayTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 5;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endArray(_anonymous_namespace_ *result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 14);
  v4 = *(v2 + 48 * v3 - 16);
  if (v4 == *(v2 + 48 * v3 - 24))
  {
    if (v4 < 0xF)
    {
LABEL_22:
      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 5);
      v12 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v12 - 48) != 2)
      {
        ++*(v12 - 16);
      }

      return result;
    }

    LOBYTE(__dst[0]) = 0;
    v5 = *(result + 21);
    if (v5)
    {
      v6 = v5 - 1;
      v7 = *(result + v6 + 160);
      LOBYTE(__dst[0]) = v7;
      *(v1 + 21) = v6;
    }

    else
    {
      if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL))
      {
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v1, 0, "Array");
LABEL_21:
        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
        goto LABEL_22;
      }

      v7 = LOBYTE(__dst[0]);
    }

    if (v7 != 3)
    {
      v10 = re::OPACK::toString(v7);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v1, "Array", v10);
    }

    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v13);
  if (v14)
  {
    v8 = *&v15[7];
  }

  else
  {
    v8 = v15;
  }

  v9 = *(v1 + 16) + 48 * *(v1 + 14);
  re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", __dst, v8, *(v9 - 24), *(v9 - 16));
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __dst);
  if (*&__dst[0])
  {
    if (BYTE8(__dst[0]))
    {
      (*(**&__dst[0] + 40))();
    }

    memset(__dst, 0, sizeof(__dst));
  }

  result = v13;
  if (v13 && (v14 & 1) != 0)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

uint64_t re::anonymous namespace::resizeArray<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, void **a2, re::ArrayAccessor *a3, uint64_t a4, const re::TypeInfo *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 == a5)
  {
    return 1;
  }

  v25[10] = v8;
  v25[11] = v9;
  v14 = *(a3 + 2);
  if ((*(v14 + 92) & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(*a3, *(v14 + 80), v24);
    re::TypeInfo::TypeInfo(v22, v25);
    v21 = !is_mul_ok(*(v23 + 8), a5);
    if (is_mul_ok(*(v23 + 8), a5))
    {
      re::ArrayAccessor::reset(a3, a2, *(a1 + 48), a5);
    }

    else
    {
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", v16, v17, v18, v19, v20, *(v23 + 8));
    }

    return !v21;
  }

  else
  {
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid array size. Expected size = %zu, actual size = %zu", a4, a5, a6, a7, a8, a4);
    return 0;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(_anonymous_namespace_ *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  re::DynamicString::setCapacity(&v23, 0);
  v22 = &a9;
  re::DynamicString::vassignf(&v23, a3, &a9);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v15);
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  if (v24)
  {
    v13 = v25;
  }

  else
  {
    v13 = &v24 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v18, "deserialize", v12, v13);
  *&v21[0] = 400;
  *(&v21[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v21[1] = v18;
  *(&v21[2] + 1) = v20;
  *(&v21[1] + 8) = v19;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v21);
  if (*&v21[1])
  {
    if (BYTE8(v21[1]))
    {
      (*(**&v21[1] + 40))();
    }

    memset(&v21[1], 0, 32);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  result = v23;
  if (v23)
  {
    if (v24)
    {
      return (*(*v23 + 40))();
    }
  }

  return result;
}

uint64_t re::anonymous namespace::resizeList<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a4 == a5)
  {
    return 1;
  }

  v23[10] = v5;
  v23[11] = v6;
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v22);
  re::TypeInfo::TypeInfo(v20, v23);
  v17 = !is_mul_ok(*(v21 + 8), a5);
  if (is_mul_ok(*(v21 + 8), a5))
  {
    v18 = *(a1 + 48);
    v19 = *(*(a3 + 16) + 96);
    re::TypeInfo::TypeInfo(v22, a3);
    v19(a2, v22, v18, a5);
  }

  else
  {
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", v12, v13, v14, v15, v16, *(v21 + 8));
  }

  return !v17;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(uint64_t a1, const char *a2, int a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readDictionaryTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 6;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == 2)
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 7);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      if (*(v2 - 48) != 2)
      {
        ++*(v2 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v4);
      if (v5)
      {
        v3 = *&v6[7];
      }

      else
      {
        v3 = v6;
      }

      re::DynamicString::format("Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v7, v3, *(*(v1 + 128) + 48 * *(v1 + 112) - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v7);
      if (*&v7[0])
      {
        if (BYTE8(v7[0]))
        {
          (*(**&v7[0] + 40))();
        }

        memset(v7, 0, sizeof(v7));
      }

      result = v4;
      if (v4 && (v5 & 1) != 0)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endDictionary(_anonymous_namespace_ *result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 14);
  v4 = *(v2 + 48 * v3 - 16);
  if (v4 == *(v2 + 48 * v3 - 24))
  {
    if (v4 < 0xF)
    {
LABEL_22:
      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 6);
      v12 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v12 - 48) != 2)
      {
        ++*(v12 - 16);
      }

      return result;
    }

    LOBYTE(__dst[0]) = 0;
    v5 = *(result + 21);
    if (v5)
    {
      v6 = v5 - 1;
      v7 = *(result + v6 + 160);
      LOBYTE(__dst[0]) = v7;
      *(v1 + 21) = v6;
    }

    else
    {
      if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL))
      {
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v1, 0, "Dictionary");
LABEL_21:
        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
        goto LABEL_22;
      }

      v7 = LOBYTE(__dst[0]);
    }

    if (v7 != 3)
    {
      v10 = re::OPACK::toString(v7);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v1, "Dictionary", v10);
    }

    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v13);
  if (v14)
  {
    v8 = *&v15[7];
  }

  else
  {
    v8 = v15;
  }

  v9 = *(v1 + 16) + 48 * *(v1 + 14);
  re::DynamicString::format("Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", __dst, v8, *(v9 - 24), *(v9 - 16));
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __dst);
  if (*&__dst[0])
  {
    if (BYTE8(__dst[0]))
    {
      (*(**&__dst[0] + 40))();
    }

    memset(__dst, 0, sizeof(__dst));
  }

  result = v13;
  if (v13 && (v14 & 1) != 0)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginObject(uint64_t a1, const char *a2, int a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20[5] = v4;
  v20[6] = v5;
  v20[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v20, 0);
  if (result)
  {
    LOBYTE(__dst) = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v10 = *(a1 + 168);
      if (v10)
      {
        v11 = v10 - 1;
        v12 = *(a1 + v11 + 160);
        LOBYTE(__dst) = *(a1 + v11 + 160);
        *(a1 + 168) = v11;
LABEL_9:
        if (v12 == 223)
        {
          v13 = 1;
          goto LABEL_13;
        }

        if (v12 == 239)
        {
          v13 = 2;
LABEL_13:
          LOBYTE(__dst) = v13;
          DWORD1(__dst) = a4;
          *(&__dst + 1) = a2;
          v16 = 0;
          v17 = 0;
          v18 = 0xFFFFFFFF80000000;
          v19 = 0;
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
          *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v20[0];
          return 1;
        }

        v14 = re::OPACK::toString(v12);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Object", v14);
        return 0;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
      {
        v12 = __dst;
        goto LABEL_9;
      }

      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Object");
    }

    return 0;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::endObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __dst = 0;
  v2 = result + 160;
  while (1)
  {
    v3 = *(v1 + 168);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(v2 + v3 - 1);
      __dst = v5;
      *(v1 + 168) = v4;
      goto LABEL_7;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v1, &__dst, 1uLL);
    if (!result)
    {
      break;
    }

    v5 = __dst;
LABEL_7:
    if (v5 != 3)
    {
      v6 = *(v1 + 168);
      if (v6 <= 7)
      {
        *(v1 + 168) = v6 + 1;
        *(v2 + v6) = v5;
      }

      result = re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      if (*(v1 + 40) != 1)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v1, 0, "Object");
LABEL_13:
  if ((*(v1 + 40) & 1) == 0)
  {
    v7 = *(v1 + 128);
    v8 = *(v1 + 112);
    v9 = *(v7 + 48 * v8 - 32);
    if (v9)
    {
      do
      {
        --v9;
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      while (v9);
      v7 = *(v1 + 128);
      v8 = *(v1 + 112);
    }

    result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, *(v7 + 48 * v8 - 48));
    v10 = *(v1 + 128) + 48 * *(v1 + 112);
    if (*(v10 - 48) != 2)
    {
      ++*(v10 - 16);
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_24;
  }

LABEL_14:
  if (!a7)
  {
    v25 = a4[1];
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v37 = v26;
    v27 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, v9, &v37, 0);
    v21 = 0;
    if (!v27)
    {
      return v21 & 1;
    }

    v28 = v37;
    if (v28 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
    {
      if (!*a4)
      {
        v35 = v37;
        *a4 = *(a1 + 48);
        re::DynamicString::setCapacity(a4, v35 + 1);
      }

      re::DynamicString::resize(a4, v37, 0);
      if (!v37)
      {
        goto LABEL_33;
      }

      if (a4[1])
      {
        v23 = a4[2];
      }

      else
      {
        v23 = a4 + 9;
      }

      v22 = a1 + 24;
      v24 = 0;
      goto LABEL_32;
    }

    v29 = v37;
    (*(**(a1 + 24) + 64))(*(a1 + 24));
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v30, v31, v32, v33, v34, v29);
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  v37 = 0;
  v20 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, v9, &v37, 0);
  v21 = 0;
  if (v20)
  {
    if (!v37)
    {
LABEL_33:
      re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_32:
    re::EncoderOPACK<re::SeekableInputStream>::serializeString(v22, v23, v24);
    goto LABEL_33;
  }

  return v21 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBAE40;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::SeekableInputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v14 = re::TypeMemberCollection::TypeMemberCollection(v29, *a5, a5[2]);
  re::TypeMemberCollection::operator[](v14, 0, &v27);
  v15 = *(v28 + 24);
  re::TypeRegistry::typeInfo(v27, *v28, v29);
  re::TypeInfo::TypeInfo(v26, v30);
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v18 = *a5[2];
    v19 = a6[2];
    v20 = *v19;
    if (v18 != *v19)
    {
      goto LABEL_14;
    }

    v22 = WORD1(v18) == WORD1(v20);
    v21 = (v20 ^ v18) & 0xFFFFFF00000000;
    v22 = v22 && v21 == 0;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v26, a7);
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, v16))
  {
    goto LABEL_4;
  }

  v19 = a6[2];
LABEL_14:
  if (*(v19 + 96) != 1)
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (a1[64])
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginString(uint64_t a1, const char *a2, int a3, uint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v19[5] = v5;
    v19[6] = v6;
    v19[0] = 0;
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v19, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readStringTag(a1, a2, a4);
      v12 = *a4;
      LOBYTE(v14) = 8;
      DWORD1(v14) = a5;
      *(&v14 + 1) = a2;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v19[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeString(uint64_t result, char *a2, char a3)
{
  if (*(result + 40))
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 128) + 48 * *(result + 112);
  v6 = *(v5 - 24);
  v7 = *(result + 168);
  if (v7)
  {
    if (v7 >= v6)
    {
      v8 = *(v5 - 24);
    }

    else
    {
      v8 = *(result + 168);
    }

    v9 = v7 - v8;
    if ((v7 - 1) >= (v7 - v8))
    {
      do
      {
        *a2++ = *(result + 159 + v7);
        v10 = v7 - 2;
        --v7;
      }

      while (v10 >= v9);
    }

    *(result + 168) = v9;
    v11 = v6 - v8;
    if (v6 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v11 = *(v5 - 24);
  if (v6)
  {
LABEL_11:
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v11);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v4, 0, "String");
    }
  }

LABEL_15:
  if ((a3 & 2) == 0)
  {
    v12 = *(v4 + 16) + 48 * *(v4 + 14);
    if (*(v12 - 48) != 2)
    {
      *(v12 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 8);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", v10, v5, *(v6 - 24), *(v6 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBAE40;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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
  *(v3 + 16 * v4 - 8) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 16 * v4 - 16) = a3;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), 0);
  if (v3)
  {
    v5.n128_u64[0] = "";
    v5.n128_u32[2] = 0;
    re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, &v5);
  }

  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::endObject(uint64_t a1)
{
  v1 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v1 + 2;
  return re::EncoderOPACK<re::SeekableInputStream>::endObject(*(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginArray(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::beginArray(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::SeekableInputStream>::endArray((*(a1 + 8) + 24));
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginDictionary(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, (v4 + 16 * *(a1 + 40) - 16));
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), a2, 0);
  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext::beginDictionaryEntry(v1 + 16 * *(a1 + 40) - 16, *(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 16 * *(result + 40);
  *(v2 - 8) = 1;
  *(v2 - 16) = "value";
  return result;
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::SeekableInputStream>::endDictionary((*(a1 + 8) + 24));
    v4 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v4 + 2;
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginData(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginOptional(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::EncoderOPACK<re::SeekableInputStream>::beginOptional(*(a1 + 8) + 24, *(v1 + 16 * *(a1 + 40) - 16), *(v1 + 16 * *(a1 + 40) - 8), &v3, 0);
  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::beginString(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeBool(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, int *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  result = re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v3 + 16 * *(a1 + 40) - 16), *(v3 + 16 * *(a1 + 40) - 8), &v5, 0);
  *a2 = v5;
  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::deserializeString(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    re::EncoderOPACK<re::SeekableInputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  v4 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::SeekableInputStream>::endString(v4);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::deserializeData(uint64_t a1, char *a2)
{
  re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  v3 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::SeekableInputStream>::endBLOB(v3);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderOPACK<re::SeekableInputStream>::beginPointer(*(a1 + 8) + 24, *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
  return re::EncoderOPACK<re::SeekableInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::read(uint64_t a1, uint64_t a2, re **this)
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
        return (*(*result + 72))(result, *(v9 + 16 * *(a1 + 40) - 16), *(v9 + 16 * *(a1 + 40) - 8), a2, v18, &v16, 0);
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

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', reading field '%s'(%d)", v11, *(v12 + 16 * *(a1 + 40) - 16), *(v12 + 16 * *(a1 + 40) - 8));
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

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 16 * *(a1 + 40) - 16), *(v10 + 16 * *(a1 + 40) - 8));
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginPointer(uint64_t a1, const char *a2, int a3, int *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v24[5] = v5;
    v24[6] = v6;
    v24[0] = 0;
    if (!re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v24, 0))
    {
      v7 = 0;
      return v7 & 1;
    }

    LOBYTE(__dst) = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v12 - 1 + 160);
        LOBYTE(__dst) = v14;
        *(a1 + 168) = v13;
        goto LABEL_10;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
      {
        v14 = __dst;
LABEL_10:
        if (v14 == 4)
        {
          *a4 = 0;
        }

        else
        {
          if ((v14 - 7) > 0x2C)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          *a4 = v15;
          v16 = *(a1 + 168);
          if (v16 <= 7)
          {
            *(a1 + 168) = v16 + 1;
            *(a1 + v16 + 160) = v14;
          }
        }

        goto LABEL_18;
      }

      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Optional");
    }

LABEL_18:
    v17 = *a4 != 0;
    LOBYTE(__dst) = 9;
    DWORD1(__dst) = a5;
    *(&__dst + 1) = a2;
    v20 = 0;
    v22 = 0;
    v23 = 0;
    v21 = v17;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__dst);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v24[0];
    v7 = *(a1 + 40) ^ 1;
    return v7 & 1;
  }

  v7 = 0;
  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 9);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v5 = *&v8[7];
      }

      else
      {
        v5 = v8;
      }

      re::DynamicString::format("Failed to deserialize pointer %s. No value was provided.", v9, v5);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      result = v6;
      if (v6 && (v7 & 1) != 0)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
      if (re::EncoderOPACK<re::SeekableInputStream>::beginObject((a1 + 24), "@super", 0, 0))
      {
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, v18, a4);
        re::EncoderOPACK<re::SeekableInputStream>::endObject((a1 + 24));
      }
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v18, *a3, a3[2]);
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v18, i, &v16);
      if (*(v17 + 28) == 1)
      {
        v10 = *(v17 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v17 + 32);
        v12 = *(v17 + 24);
        re::TypeRegistry::typeInfo(v16, *v17, v23);
        re::TypeInfo::TypeInfo(v15, &v24);
        if ((a1[64] & 1) != 0 || (result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v15, v15, a4), (result & 1) == 0))
        {
          result = re::TypeInfo::renamedObjectMembers(a3);
          if (v13)
          {
            v14 = (result + 16);
            while (i != *v14)
            {
              v14 += 6;
              if (!--v13)
              {
                goto LABEL_22;
              }
            }

            if ((a1[64] & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, *(v14 - 1), v11, a2 + v12, v15, v15, a4);
            }
          }
        }
      }

LABEL_22:
      ;
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v60 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v52);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v48);
  if (v48[0] == 1)
  {
    if ((v52[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v49)[1];
      re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v12, v13, v14, v15, v16, v11);
    }

    if (re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, "@super", 0, 0))
    {
      if (v53 == v49)
      {
        v18 = *v55;
        v19 = *v51;
        if (*v55 == *v51)
        {
          v21 = WORD1(v18) == WORD1(v19);
          v20 = (v19 ^ v18) & 0xFFFFFF00000000;
          v21 = v21 && v20 == 0;
          if (v21)
          {
            goto LABEL_6;
          }
        }
      }

      else if (re::areSameTranslatedVersion(&v53, &v49, v10))
      {
LABEL_6:
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, &v53, a5);
LABEL_16:
        re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
        goto LABEL_17;
      }

      if (v54 == v50)
      {
        re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, &v53, &v49, a5);
      }

      else
      {
        v22 = re::TypeInfo::name(&v53)[1];
        re::TypeInfo::name(&v49);
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v23, v24, v25, v26, v27, v22);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  re::TypeMemberCollection::TypeMemberCollection(v47, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v45, *a4, a4[2]);
  if (v46)
  {
    for (i = 0; i < v46; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v45, i, v43);
      if (*(v44 + 28) == 1)
      {
        v29 = *(v44 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v44 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v43), v31 == -1))
        {
          v35 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v57 = v36;
            v58 = 2080;
            v59 = v29;
            _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v37 = *(a1 + 208);
          re::TypeRegistry::typeInfo(v43[0], *v44, buf);
          re::TypeInfo::TypeInfo(v41, &v57 + 4);
          result = re::internal::translateType(v37, v41, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v47, v31, v41);
          v32 = *(v42 + 24);
          re::TypeRegistry::typeInfo(v41[0], *v42, buf);
          re::TypeInfo::TypeInfo(v40, &v57 + 4);
          re::TypeRegistry::typeInfo(v43[0], *v44, buf);
          re::TypeInfo::TypeInfo(v39, &v57 + 4);
          if (*(a1 + 64) == 1 || (result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v40, v39, a5), (result & 1) == 0))
          {
            result = re::TypeInfo::renamedObjectMembers(a4);
            if (v33)
            {
              v34 = (result + 16);
              while (i != *v34)
              {
                v34 += 6;
                if (!--v33)
                {
                  goto LABEL_37;
                }
              }

              v38 = *(v34 - 1);
              re::TypeRegistry::typeInfo(v41[0], *v42, buf);
              re::TypeInfo::TypeInfo(v40, &v57 + 4);
              re::TypeRegistry::typeInfo(v43[0], *v44, buf);
              result = re::TypeInfo::TypeInfo(v39, &v57 + 4);
              if ((*(a1 + 64) & 1) == 0)
              {
                result = (*(*a1 + 72))(a1, v38, v30, a2 + v32, v40, v39, a5);
              }
            }
          }
        }
      }

LABEL_37:
      ;
    }
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBAFB8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBAFB8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CBB020;
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::close((a1 + 24));
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void *re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::close(void *result)
{
  if (*result)
  {
    v1 = result;
    if (result[21])
    {
      v2 = result[20];
      if (v2)
      {
        String = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(v2);
        v4 = *(v1[20] + 24) - *(v1[20] + 16);
        if (String)
        {
          v5 = String;
          while (1)
          {
            v6 = *(v1 + 4);
            if (v4 <= v6)
            {
              break;
            }

            if (v6 >= 1)
            {
              memcpy(v1[1], v5, v6);
              v7 = *(v1 + 4);
              v5 += v7;
              v4 -= v7;
              v1[1] = 0;
              *(v1 + 4) = 0;
            }

            v8 = (*(**v1 + 16))(*v1, v1 + 1, v1 + 2);
            if ((v8 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          memcpy(v1[1], v5, v4);
LABEL_14:
          v1[1] += v4;
          *(v1 + 4) -= v4;
        }

        else
        {
          do
          {
            v13 = *(v1 + 4);
            if (v4 <= v13)
            {
              bzero(v1[1], v4);
              goto LABEL_14;
            }

            if (v13 >= 1)
            {
              bzero(v1[1], v13);
              v4 -= *(v1 + 4);
              v1[1] = 0;
              *(v1 + 4) = 0;
            }

            v8 = (*(**v1 + 16))(*v1, v1 + 1, v1 + 2);
          }

          while ((v8 & 1) != 0);
LABEL_10:
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, &v14);
          if (v14 && (v15 & 1) != 0)
          {
            (*(*v14 + 40))();
          }
        }

        v9 = v1[20];
        if (v9)
        {
          v10 = v1[3];
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v1[20]);
          (*(*v10 + 40))(v10, v9);
        }

        v1[20] = 0;
        v11 = v1[21];
        if (v11)
        {
          v12 = v1[3];
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v11 + 8);
          (*(*v12 + 40))(v12, v11);
        }

        v1[21] = 0;
        re::DynamicArray<unsigned long>::deinit((v1 + 24));
      }
    }

    if ((v1[5] & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit((v1 + 12));
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      v1[1] = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    v1[3] = 0;
    v1[4] = 0;
  }

  return result;
}

uint64_t rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(void *a1)
{
  v2 = a1[3];
  if ((a1[4] - v2) <= 0)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(a1, 1);
    v2 = a1[3];
  }

  a1[3] = v2 + 1;
  *v2 = 0;
  result = a1[2];
  --a1[3];
  return result;
}

char *rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32) - v4;
    v6 = v5 + ((v5 + 1) >> 1);
    v7 = *a1;
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      v4 = 0;
    }

    else
    {
      v7 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, 1, 0);
      *a1 = v7;
      *(a1 + 8) = v7;
      v4 = *(a1 + 16);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 32) - v4;
  }

  v8 = *(a1 + 24) - v4;
  if (v6 <= v8 + a2)
  {
    v9 = v8 + a2;
  }

  else
  {
    v9 = v6;
  }

  result = re::internal::RapidJSONAllocator::Realloc(v7, v4, v5, v9);
  *(a1 + 16) = result;
  *(a1 + 24) = &result[v8];
  *(a1 + 32) = &result[v9];
  return result;
}

void *re::internal::RapidJSONAllocator::Realloc(re::internal::RapidJSONAllocator *this, void *a2, size_t a3, size_t a4)
{
  if (a3 != a4)
  {
    if (a4)
    {
      v8 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, a4, 0);
      v5 = v8;
      if (a3 && a2 && v8)
      {
        if (a4 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = a4;
        }

        memcpy(v8, a2, v9);
        goto LABEL_13;
      }
    }

    else
    {
      v5 = 0;
    }

    if (!a2)
    {
      return v5;
    }

LABEL_13:
    (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, a2);
    return v5;
  }

  return a2;
}

uint64_t rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance);
  }

  if (*(v1 + 8))
  {
    v2 = *(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40);

    return v2();
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  re::DynamicString::setCapacity(&v23, 0);
  v22 = &a9;
  re::DynamicString::vassignf(&v23, a3, &a9);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels((a1 + 24), a2, &v15);
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  if (v24)
  {
    v13 = v25;
  }

  else
  {
    v13 = &v24 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v18, "serialize", v12, v13);
  *&v21[0] = 400;
  *(&v21[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v21[1] = v18;
  *(&v21[2] + 1) = v20;
  *(&v21[1] + 8) = v19;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, v21);
  if (*&v21[1])
  {
    if (BYTE8(v21[1]))
    {
      (*(**&v21[1] + 40))();
    }

    memset(&v21[1], 0, 32);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  result = v23;
  if (v23)
  {
    if (v24)
    {
      return (*(*v23 + 40))();
    }
  }

  return result;
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v179 = *MEMORY[0x1E69E9840];
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
    goto LABEL_248;
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
    v33 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    LOBYTE(v153) = v33;
    v24 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_79;
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
          goto LABEL_78;
        }

        return re::serializeEnum<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v67 = **(this + 2);
          v68 = **(a6 + 2);
          if (v67 != v68)
          {
            goto LABEL_248;
          }

          v18 = WORD1(v67) == WORD1(v68);
          v69 = (v68 ^ v67) & 0xFFFFFF00000000;
          if (!v18 || v69 != 0)
          {
            goto LABEL_248;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_248;
        }
      }

      v34 = re::TypeInfo::name(this);
      v35 = *v34 >> 1;
      if (v35 <= 0x16749DFF02)
      {
        if (*v34 >> 1 <= 0x685847B)
        {
          if (*v34 >> 1 > 0x2E9355)
          {
            if (v35 == 3052374)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar((a1 + 3), a2, a3, a4, a7);
            }

            if (v35 != 3327612)
            {
              if (v35 == 97526364)
              {

                return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), a2, a3, a4, a7);
              }

              goto LABEL_315;
            }

LABEL_258:

            return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>((a1 + 3), a2, a3, a4, a7);
          }

          if (v35 != 104431)
          {
            if (v35 == 3029738)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool((a1 + 3), a2, a3, a4, a7);
            }

            goto LABEL_315;
          }

LABEL_280:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>((a1 + 3), a2, a3, a4, a7);
        }

        if (*v34 >> 1 <= 0xB9708BDD)
        {
          if (v35 != 109413500)
          {
            if (v35 == 2969009105)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), a2, a3, a4, a7);
            }

LABEL_315:
            v153 = re::TypeInfo::name(this)[1];
            v24 = "Unsupported basic type %s.";
            goto LABEL_79;
          }

LABEL_283:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>((a1 + 3), a2, a3, a4, a7);
        }

        if (v35 == 3111160798)
        {

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>((a1 + 3), a2, a3, a4, a7);
        }

        if (v35 != 3393056694)
        {
          if (v35 != 0x16749D2549)
          {
            goto LABEL_315;
          }

          goto LABEL_283;
        }

LABEL_271:

        return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), a2, a3, a4, a7);
      }

      if (*v34 >> 1 > 0x303EE88E58CLL)
      {
        if (*v34 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v35 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_277;
          }

          if (v35 != 0x3AFE951B1F1F3391)
          {
            if (v35 != 0x412A40E9CB79BA35)
            {
              goto LABEL_315;
            }

            goto LABEL_271;
          }

          goto LABEL_274;
        }

        if (v35 == 0x303EE88E58DLL)
        {
          goto LABEL_271;
        }

        if (v35 != 0x2710786C3AC82DA1)
        {
          goto LABEL_315;
        }
      }

      else
      {
        if (*v34 >> 1 <= 0x18E6A9A092)
        {
          if (v35 != 0x16749DFF03)
          {
            if (v35 != 0x16749F63A2)
            {
              goto LABEL_315;
            }

            goto LABEL_258;
          }

          goto LABEL_280;
        }

        if (v35 != 0x18E6A9A093)
        {
          if (v35 != 0x303EE86A734)
          {
            if (v35 != 0x303EE8780EELL)
            {
              goto LABEL_315;
            }

LABEL_277:

            return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), a2, a3, a4, a7);
          }

LABEL_274:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>((a1 + 3), a2, a3, a4, a7);
        }
      }

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>((a1 + 3), a2, a3, a4, a7);
    }

    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_78;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v43 = **(this + 2);
          v44 = **(a6 + 2);
          if (v43 == v44)
          {
            v18 = WORD1(v43) == WORD1(v44);
            v45 = (v44 ^ v43) & 0xFFFFFF00000000;
            if (v18 && v45 == 0)
            {
              goto LABEL_106;
            }
          }
        }

        else if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_106;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_248;
        }

        v47 = *(this + 2);
        v48 = *(a6 + 2);
        v49 = *(v48 + 23) & 0xFFFFFF;
        if ((*(v47 + 92) & 0xFFFFFF) != 0)
        {
          if (!v49)
          {
            goto LABEL_248;
          }
        }

        else if (v49 || *(v47 + 96) != *(v48 + 24))
        {
          goto LABEL_248;
        }
      }

LABEL_106:
      if (a7)
      {
        v50 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
        re::TypeInfo::TypeInfo(v169, &v174.n128_i64[1]);
        re::internal::translateType(v50, v169, &v155);
        v51 = (*(*a1 + 80))(a1, &v155);
        if (!v51)
        {
          goto LABEL_202;
        }

        v52 = v51;
        v53 = *(a6 + 2);
        v54 = *(v53 + 23) & 0xFFFFFF;
        if (v54)
        {
          v55 = 0;
          v56 = 8;
        }

        else
        {
          v55 = *(v53 + 24);
          v56 = 4;
        }

        v174.n128_u64[0] = v55;
        v37 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, &v174, v56);
        if (!v37)
        {
          return v37 & 1;
        }

        v131 = v174.n128_u64[0];
        if (v54)
        {
          v132 = v174.n128_u64[0] == 0;
        }

        else
        {
          v132 = 1;
        }

        v133 = v132;
        if (!v132)
        {
          v167[0] = 0;
          v167[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v167);
          v131 = v174.n128_u64[0];
        }

        if (v131)
        {
          v134 = 0;
          do
          {
            v52(a1, 0, 0, 0, &v155, &v155, 1);
            ++v134;
          }

          while (v134 < v174.n128_u64[0]);
        }

        if ((v133 & 1) == 0)
        {
          goto LABEL_243;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v174);
        re::TypeInfo::TypeInfo(&v155, &v174.n128_i64[1]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
        re::TypeInfo::TypeInfo(v169, &v174.n128_i64[1]);
        re::TypeInfo::TypeInfo(&v174, this);
        v57 = (*(*a1 + 80))(a1, &v155);
        if (!v57)
        {
          goto LABEL_202;
        }

        v58 = v57;
        v165[0] = re::ArrayAccessor::size(&v174, a4);
        v59 = *(*(this + 2) + 92) & 0xFFFFFF;
        if (v59)
        {
          v60 = 8;
        }

        else
        {
          v60 = 4;
        }

        v37 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, v165, v60);
        if (!v37)
        {
          return v37 & 1;
        }

        v61 = v165[0];
        if (v59)
        {
          v62 = v165[0] == 0;
        }

        else
        {
          v62 = 1;
        }

        v63 = v62;
        if (!v62)
        {
          v64 = *a4;
          v166[0] = 0;
          v166[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v64, v166);
          v61 = v165[0];
        }

        if (v61)
        {
          v65 = 0;
          do
          {
            v66 = re::ArrayAccessor::elementAt(&v174, a4, v65);
            v58(a1, 0, 0, v66, &v155, v169, 0);
            ++v65;
          }

          while (v65 < v165[0]);
        }

        if ((v63 & 1) == 0)
        {
LABEL_243:
          (*(*a1 + 24))(a1);
        }
      }

LABEL_244:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 3));
      goto LABEL_245;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v71 = **(this + 2);
        v72 = **(a6 + 2);
        if (v71 == v72 && WORD1(v71) == WORD1(v72) && ((v72 ^ v71) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_140;
        }

        v36 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_140;
        }

        v36 = *(this + 12);
      }

      if (v36 != *(a6 + 12))
      {
        goto LABEL_248;
      }
    }

LABEL_140:
    if (a7)
    {
      v169[0] = 0;
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, a3, v169, 0);
      if (v169[0] == 1)
      {
        v73 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
        re::TypeInfo::TypeInfo(&v155, &v174.n128_i64[1]);
        re::internal::translateType(v73, &v155, &v174);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, &v174, &v174, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v174);
      re::TypeInfo::TypeInfo(&v155, &v174.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
      re::TypeInfo::TypeInfo(v169, &v174.n128_i64[1]);
      re::TypeInfo::TypeInfo(&v174, this);
      LOBYTE(v167[0]) = (*(v175 + 88))(a4) != 0;
      v74 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, a3, v167, 0);
      if (LOBYTE(v167[0]) == 1)
      {
        v75 = (*(v175 + 88))(a4, v74);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v75, &v155, v169, 0);
        }
      }
    }

    re::EncoderBinary<re::SeekableInputStream>::endOptional((a1 + 3));
    goto LABEL_245;
  }

  if (*(this + 12) <= 6u)
  {
    if (v23 != 5)
    {
      if (v23 != 6)
      {
        goto LABEL_78;
      }

      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v174);
      re::TypeInfo::TypeInfo(&v155, &v174.n128_i64[1]);
      v27 = re::TypeInfo::name(&v155);
      v28 = BYTE4(v156);
      if (BYTE4(v156) == 1)
      {
        if (re::TypeInfo::isInteger(&v155))
        {
          v29 = *v27 >> 1;
          if (v29 > 0x303EE8780EDLL)
          {
            if (v29 == 0x303EE8780EELL)
            {
              v136 = v27[1];
              v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (v136 == "uint32_t")
              {
                goto LABEL_308;
              }

              v137 = strcmp(v136, "uint32_t");
              v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (!v137)
              {
                goto LABEL_308;
              }

              goto LABEL_294;
            }

            if (v29 != 0x303EE88E58DLL)
            {
              goto LABEL_294;
            }

            v129 = v27[1];
            v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v129 == "uint64_t")
            {
              goto LABEL_308;
            }

            v130 = "uint64_t";
          }

          else
          {
            if (v29 != 3393056694)
            {
              if (v29 == 0x303EE86A734)
              {
                v30 = v27[1];
                v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (v30 == "uint16_t")
                {
                  goto LABEL_308;
                }

                v32 = strcmp(v30, "uint16_t");
                v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (!v32)
                {
                  goto LABEL_308;
                }
              }

              goto LABEL_294;
            }

            v129 = v27[1];
            v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v129 == "size_t")
            {
              goto LABEL_308;
            }

            v130 = "size_t";
          }

          v135 = strcmp(v129, v130);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
          if (!v135)
          {
            goto LABEL_308;
          }

LABEL_294:
          v174.n128_u64[0] = 0x18E6A9A093;
          v174.n128_u64[1] = "uint8_t";
          v138 = re::StringID::operator==(v27, &v174);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
          if (v138)
          {
            goto LABEL_308;
          }

          v174.n128_u64[0] = 0x16749F63A2;
          v174.n128_u64[1] = "int64_t";
          if (re::StringID::operator==(v27, &v174))
          {
            LOBYTE(v37) = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, this, a6, a7);
            return v37 & 1;
          }

          *v169 = 3327612;
          *&v169[8] = "long";
          v143 = re::StringID::operator==(v27, v169);
          v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
          if (v143 || (v174.n128_u64[0] = 104431, v174.n128_u64[1] = "int", v144 = re::StringID::operator==(v27, &v174), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v144) || (v174.n128_u64[0] = 109413500, v174.n128_u64[1] = "short", v145 = re::StringID::operator==(v27, &v174), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v145))
          {
LABEL_308:
            LOBYTE(v37) = v31(a1, a2, a3, a4, this, a6, a7);
            return v37 & 1;
          }

LABEL_186:
          if (this != a6)
          {
            if (*this == *a6)
            {
              v94 = **(this + 2);
              v95 = **(a6 + 2);
              if (v94 == v95 && WORD1(v94) == WORD1(v95) && ((v95 ^ v94) & 0xFFFFFF00000000) == 0)
              {
                goto LABEL_194;
              }
            }

            else if (re::areSameTranslatedVersion(this, a6, v26))
            {
              goto LABEL_194;
            }

            if (*(this + 12) != *(a6 + 12))
            {
              goto LABEL_248;
            }
          }

LABEL_194:
          if (!a7)
          {
            re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v174);
            re::TypeInfo::TypeInfo(v167, &v174.n128_i64[1]);
            re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v174);
            re::TypeInfo::TypeInfo(v166, &v174.n128_i64[1]);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
            re::TypeInfo::TypeInfo(v165, &v174.n128_i64[1]);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v174);
            re::TypeInfo::TypeInfo(v164, &v174.n128_i64[1]);
            re::TypeInfo::TypeInfo(v162, this);
            v111 = (*(*a1 + 80))(a1, v167);
            if (v111)
            {
              v112 = v111;
              v113 = (*(*a1 + 80))(a1, v166);
              if (v113)
              {
                v114 = v113;
                v161 = (*(v163 + 96))(a4);
                v115 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, a3, &v161, 0);
                LOBYTE(v37) = 0;
                if (!v115)
                {
                  return v37 & 1;
                }

                if (v161)
                {
                  v116 = *this;
                  v174.n128_u64[0] = 0x449AD97C4B77BED4;
                  v174.n128_u64[1] = "_CompareFunc";
                  v117 = re::TypeRegistry::typeID(v116, &v174, v160);
                  if (v174.n128_u8[0])
                  {
                    if (v174.n128_u8[0])
                    {
                    }
                  }

                  if (v160[0] && (v118 = *v167[2], v174.n128_u64[0] = v160[1], v174.n128_u64[1] = v118, LODWORD(v175) = -1, (v119 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v167[0] + 768, &v174)) != 0) && (v120 = *v119) != 0)
                  {
                    v159 = 0;
                    v156 = 0;
                    v157 = 0;
                    v158 = 0;
                    v155 = a1[7];
                    re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v155, v161);
                    ++v158;
                    v121 = (*(v163 + 120))(a4, a1[7]);
                    if ((*(v163 + 128))())
                    {
                      do
                      {
                        v122 = (*(v163 + 136))(v121);
                        v123 = (*(v163 + 144))(v121);
                        v174.n128_u64[0] = v122;
                        v174.n128_u64[1] = v123;
                        v124 = re::DynamicArray<re::RigNodeConstraint>::add(&v155, &v174);
                      }

                      while (((*(v163 + 128))(v121, v124) & 1) != 0);
                    }

                    (*(v163 + 152))(v121, a1[7]);
                    v174.n128_u64[0] = v120;
                    std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v159, &v159[16 * v157], &v174);
                    if (v161)
                    {
                      v125 = 0;
                      for (i = 0; i < v161; ++i)
                      {
                        v127 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
                        if (v157 <= i)
                        {
                          v168 = 0;
                          v177 = 0u;
                          v178 = 0u;
                          v175 = 0u;
                          v176 = 0u;
                          v174 = 0u;
                          v151 = v157;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v169 = 136315906;
                          *&v169[4] = "operator[]";
                          *&v169[12] = 1024;
                          *&v169[14] = 789;
                          v170 = 2048;
                          v171 = i;
                          v172 = 2048;
                          v173 = v151;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_322:
                          v168 = 0;
                          v177 = 0u;
                          v178 = 0u;
                          v175 = 0u;
                          v176 = 0u;
                          v174 = 0u;
                          v152 = v128;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v169 = 136315906;
                          *&v169[4] = "operator[]";
                          *&v169[12] = 1024;
                          *&v169[14] = 789;
                          v170 = 2048;
                          v171 = i;
                          v172 = 2048;
                          v173 = v152;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
                        }

                        (v112)(a1, "key", 0, *&v159[v125], v167, v165, 0, v127);
                        v128 = v157;
                        if (v157 <= i)
                        {
                          goto LABEL_322;
                        }

                        v114(a1, "value", 0, *&v159[v125 + 8], v166, v164, 0);
                        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
                        v125 += 16;
                      }
                    }

                    if (v155 && v159)
                    {
                      (*(*v155 + 40))();
                    }
                  }

                  else
                  {
                    v146 = (*(v163 + 120))(a4, a1[7]);
                    (*(v163 + 128))();
                    if (v161)
                    {
                      for (j = 0; j < v161; ++j)
                      {
                        v148 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
                        v149 = (*(v163 + 136))(v146, v148);
                        v112(a1, "key", 0, v149, v167, v165, 0);
                        v150 = (*(v163 + 144))(v146);
                        v114(a1, "value", 0, v150, v166, v164, 0);
                        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
                        (*(v163 + 128))(v146);
                      }
                    }

                    (*(v163 + 152))(v146, a1[7]);
                  }
                }

                goto LABEL_320;
              }

              v105 = v166;
            }

            else
            {
              v105 = v167;
            }

LABEL_203:
            v154 = re::TypeInfo::name(v105)[1];
            re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v106, v107, v108, v109, v110, v154);
            goto LABEL_249;
          }

          v96 = a1[34];
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
          re::TypeInfo::TypeInfo(v169, &v174.n128_i64[1]);
          re::internal::translateType(v96, v169, &v155);
          v97 = a1[34];
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v174);
          re::TypeInfo::TypeInfo(v167, &v174.n128_i64[1]);
          re::internal::translateType(v97, v167, v169);
          v98 = (*(*a1 + 80))(a1, &v155);
          if (v98)
          {
            v99 = v98;
            v100 = (*(*a1 + 80))(a1, v169);
            if (v100)
            {
              v101 = v100;
              v174.n128_u64[0] = 0;
              v102 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, a3, &v174, 0);
              LOBYTE(v37) = 0;
              if (!v102)
              {
                return v37 & 1;
              }

              if (v174.n128_u64[0])
              {
                v103 = 0;
                do
                {
                  v104 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 1);
                  v99(a1, "key", 0, 0, &v155, &v155, 1, v104);
                  v101(a1, "value", 0, 0, v169, v169, 1);
                  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
                  ++v103;
                }

                while (v103 < v174.n128_u64[0]);
              }

LABEL_320:
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary((a1 + 3));
              goto LABEL_245;
            }

            v105 = v169;
            goto LABEL_203;
          }

LABEL_202:
          v105 = &v155;
          goto LABEL_203;
        }

        v28 = BYTE4(v156);
      }

      if (v28 == 8)
      {
        v40 = *v27 >> 1;
        if (v40 == 0x22C6ED80D0CLL)
        {
          v92 = v27[1];
          v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v92 == "StringID")
          {
            goto LABEL_308;
          }

          v93 = strcmp(v92, "StringID");
          v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v93)
          {
            goto LABEL_308;
          }
        }

        else if (v40 == 0x134375A94D9F7110)
        {
          v41 = v27[1];
          v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v41 == "DynamicString")
          {
            goto LABEL_308;
          }

          v42 = strcmp(v41, "DynamicString");
          v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v42)
          {
            goto LABEL_308;
          }
        }
      }

      goto LABEL_186;
    }

    if (this == a6)
    {
      goto LABEL_160;
    }

    if (*this == *a6)
    {
      v80 = **(this + 2);
      v81 = **(a6 + 2);
      if (v80 == v81 && WORD1(v80) == WORD1(v81) && ((v81 ^ v80) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_160;
      }

      v38 = 5;
    }

    else
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_160;
      }

      v38 = *(this + 12);
    }

    if (v38 != *(a6 + 12))
    {
      goto LABEL_248;
    }

LABEL_160:
    if (a7)
    {
      v82 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
      re::TypeInfo::TypeInfo(v169, &v174.n128_i64[1]);
      re::internal::translateType(v82, v169, &v155);
      v83 = (*(*a1 + 80))(a1, &v155);
      if (!v83)
      {
        goto LABEL_202;
      }

      v84 = v83;
      v174.n128_u64[0] = 0;
      v85 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, &v174, 0);
      LOBYTE(v37) = 0;
      if (!v85)
      {
        return v37 & 1;
      }

      if (v174.n128_u64[0])
      {
        v86 = 0;
        do
        {
          v84(a1, 0, 0, 0, &v155, &v155, 1);
          ++v86;
        }

        while (v86 < v174.n128_u64[0]);
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v174);
      re::TypeInfo::TypeInfo(&v155, &v174.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v174);
      re::TypeInfo::TypeInfo(v169, &v174.n128_i64[1]);
      re::TypeInfo::TypeInfo(&v174, this);
      v87 = (*(*a1 + 80))(a1, &v155);
      if (!v87)
      {
        goto LABEL_202;
      }

      v88 = v87;
      v166[0] = (*(v175 + 88))(a4);
      v89 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, v166, 0);
      LOBYTE(v37) = 0;
      if (!v89)
      {
        return v37 & 1;
      }

      if (*(v175 + 104))
      {
        if (v166[0])
        {
          v90 = 0;
          do
          {
            v91 = (*(v175 + 104))(a4, v90);
            v88(a1, 0, 0, v91, &v155, v169, 0);
            ++v90;
          }

          while (v90 < v166[0]);
        }
      }

      else
      {
        v139 = *(v175 + 112);
        if (!v139 || !*(v175 + 120) || !*(v175 + 128))
        {
          re::TypeInfo::TypeInfo(v167, &v174);
          v153 = re::TypeInfo::name(v167)[1];
          v24 = "List type %s does not provide an indexer or iterator.";
          goto LABEL_79;
        }

        v140 = v139(a4, a1[7]);
        v141 = (*(v175 + 120))();
        if (v141)
        {
          v142 = v141;
          do
          {
            v88(a1, 0, 0, v142, &v155, v169, 0);
            v142 = (*(v175 + 120))(v140);
          }

          while (v142);
        }

        (*(v175 + 128))(v140, a1[7]);
      }
    }

    goto LABEL_244;
  }

  if (v23 == 7)
  {
    if (this == a6)
    {
      goto LABEL_66;
    }

    if (*this == *a6)
    {
      v76 = **(this + 2);
      v77 = **(a6 + 2);
      if (v76 == v77)
      {
        v18 = WORD1(v76) == WORD1(v77);
        v78 = (v77 ^ v76) & 0xFFFFFF00000000;
        if (v18 && v78 == 0)
        {
LABEL_66:
          v37 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, a3, 16);
          if (a7)
          {
            if (v37)
            {
              v155 = 0;
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", 0, &v155, 0);
              if (v155 < *(*(a6 + 2) + 96))
              {
                re::TypeInfo::unionMember(a6, v155, &v174);
                if ((a1[8] & 1) == 0)
                {
                  (*(*a1 + 72))(a1, "value", 0, 0, &v174, &v174, 1);
                }
              }

LABEL_90:
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 3));
LABEL_245:
              LOBYTE(v37) = *(a1 + 64) ^ 1;
            }
          }

          else if (v37)
          {
            v39 = re::TypeInfo::TypeInfo(&v174, this);
            *v169 = re::UnionAccessor::readTag(v39, a4);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", 0, v169, 0);
            if (*v169 < *(*(this + 2) + 96))
            {
              re::TypeInfo::unionMember(this, *v169, &v155);
              if ((a1[8] & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, a4, &v155, &v155, 0);
              }
            }

            goto LABEL_90;
          }

          return v37 & 1;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_66;
    }

LABEL_248:
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
    goto LABEL_249;
  }

  if (v23 != 8)
  {
    if (v23 == 9)
    {
      v153 = re::TypeInfo::name(this)[1];
      v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_79:
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, v24, a4, this, a6, a7, a8, v153);
LABEL_249:
      LOBYTE(v37) = 0;
      return v37 & 1;
    }

LABEL_78:
    LOBYTE(v153) = *(this + 12);
    v24 = "Invalid type category. Value = %d";
    goto LABEL_79;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  re::TypeInfo::name(a4);
  return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Type mismatch. Runtime type %s and serialized type %s are different.", v8, v9, v10, v11, v12, v7);
}

uint64_t re::serializeEnum<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t **this, uint64_t a6, uint64_t a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (*(this[2] + 49))
    {
      v28 = *(a1 + 272);
      v44[0] = 0x2686EB529B3EE220;
      v44[1] = "DynamicString";
      re::TypeRegistry::typeInfo(v28, v44, &v45);
      v29 = re::TypeInfo::TypeInfo(&v51, v46);
      if (v44[0])
      {
        if (v44[0])
        {
        }
      }

      v30 = &v51;
      v31 = &v51;
      v32 = a1;
      v33 = a2;
      v34 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v32 = a1;
      v33 = a2;
      v34 = a3;
      v30 = this;
      v31 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v32, v33, v34, 0, v30, v31, 1);
LABEL_40:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = this[2];
  v17 = *(v16 + 12);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = v16[20];
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v45 = &unk_1F5CBB088;
      v46[0] = a1;
      v46[1] = v19;
      v46[2] = v20;
      v47[0] = 0;
      v47[1] = 0;
      v48 = 1;
      v49 = 0;
      v50 = 0;
      v51 = a2;
      v52 = a3;
      v53 = 0;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(v47, &v51);
      v18(&v45, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v45 = &unk_1F5CBB088;
      if (v47[0])
      {
        if ((v48 & 1) == 0)
        {
          (*(*v47[0] + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    v23 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v22 = 0;
    if (!v23)
    {
      return v22 & 1;
    }

    v24 = re::DataArray<re::TextureAtlasTile>::tryGet((*this + 12), *this[2]);
    if (!v24 || *(v24 + 16) >= 2u)
    {
      v26 = re::DataArray<re::TextureAtlasTile>::tryGet((*this + 12), *this[2]);
      if (v26)
      {
        v27 = *(v26 + 16);
      }

      else
      {
        v27 = -1;
      }

      LODWORD(v45) = v27;
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, "@version", 0, &v45, 0);
    }

    if (this == a6)
    {
      goto LABEL_32;
    }

    if (*this == *a6)
    {
      v36 = *this[2];
      v37 = **(a6 + 16);
      if (v36 == v37 && WORD1(v36) == WORD1(v37) && ((v37 ^ v36) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v25))
    {
LABEL_32:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
LABEL_39:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      goto LABEL_40;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
    }

    else
    {
      v38 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v39, v40, v41, v42, v43, v38);
    }

    goto LABEL_39;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 *a4, char a5)
{
  v13 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v13);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(v9, v10);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v11 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v12);
    }

    v9 = *(a1 + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v9, a4, 1u);
    if ((a5 & 2) == 0)
    {
      v10 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v10 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(char *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a1);

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(a1, v3, v4);
}

char *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(char *result)
{
  v1 = *(result + 4);
  if (v1 == *(result + 3))
  {
    result[60] = 1;
  }

  else
  {
    v2 = *(v1 - 16);
    if (v2)
    {
      v3 = *result;
      if (*(v1 - 8) == 1)
      {
        v4 = *(v3 + 24);
        if ((*(v3 + 32) - v4) <= 0)
        {
          result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
          v4 = *(v3 + 24);
        }

        *(v3 + 24) = v4 + 1;
        *v4 = 44;
      }

      else
      {
        if (v2)
        {
          v5 = 58;
        }

        else
        {
          v5 = 44;
        }

        v6 = *(v3 + 24);
        if ((*(v3 + 32) - v6) <= 0)
        {
          result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
          v6 = *(v3 + 24);
        }

        *(v3 + 24) = v6 + 1;
        *v6 = v5;
      }
    }

    ++*(v1 - 16);
  }

  return result;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v7 = 6 * a3 + 2;
  v8 = *(v6 + 24);
  if (*(v6 + 32) - v8 < v7)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v6, v7);
    v6 = *a1;
    v8 = *(*a1 + 24);
  }

  *(v6 + 24) = v8 + 1;
  *v8 = 34;
  if (a3)
  {
    v9 = 0;
    do
    {
      v10 = *(a2 + v9);
      v11 = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(char const*,unsigned int)::escape[v10];
      v12 = *(*a1 + 24);
      *(*a1 + 24) = v12 + 1;
      if (v11)
      {
        *v12 = 92;
        v13 = *(*a1 + 24);
        *(*a1 + 24) = v13 + 1;
        *v13 = v11;
        if (v11 == 117)
        {
          v14 = *(*a1 + 24);
          *(*a1 + 24) = v14 + 1;
          *v14 = 48;
          v15 = *(*a1 + 24);
          *(*a1 + 24) = v15 + 1;
          *v15 = 48;
          LOBYTE(v15) = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(char const*,unsigned int)::hexDigits[v10 >> 4];
          v16 = *(*a1 + 24);
          *(*a1 + 24) = v16 + 1;
          *v16 = v15;
          v17 = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(char const*,unsigned int)::hexDigits[v10 & 0xF];
          v18 = *(*a1 + 24);
          *(*a1 + 24) = v18 + 1;
          *v18 = v17;
        }
      }

      else
      {
        *v12 = v10;
      }

      ++v9;
    }

    while (v9 < a3);
  }

  v19 = *(*a1 + 24);
  *(*a1 + 24) = v19 + 1;
  *v19 = 34;
  return 1;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = *(v3 + 24);
  v5 = *(v3 + 32) - v4;
  if (a2)
  {
    if (v5 <= 3)
    {
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v3, 4);
      v3 = *a1;
      v4 = *(*a1 + 24);
    }

    *(v3 + 24) = v4 + 1;
    *v4 = 116;
    v6 = 117;
    v7 = 114;
  }

  else
  {
    if (v5 <= 4)
    {
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(v3, 5);
      v3 = *a1;
      v4 = *(*a1 + 24);
    }

    *(v3 + 24) = v4 + 1;
    *v4 = 102;
    v8 = *(*a1 + 24);
    *(*a1 + 24) = v8 + 1;
    *v8 = 97;
    v6 = 115;
    v7 = 108;
  }

  v9 = *(*a1 + 24);
  *(*a1 + 24) = v9 + 1;
  *v9 = v7;
  v10 = *(*a1 + 24);
  *(*a1 + 24) = v10 + 1;
  *v10 = v6;
  v11 = *(*a1 + 24);
  *(*a1 + 24) = v11 + 1;
  *v11 = 101;
  return 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(uint64_t *a1, rapidjson::internal *this, char *a3)
{
  v3 = this;
  *&v12[10] = *MEMORY[0x1E69E9840];
  if ((this & 0x80000000) != 0)
  {
    v5 = v12;
    v11 = 45;
    v3 = -v3;
  }

  else
  {
    v5 = &v11;
  }

  v6 = rapidjson::internal::u32toa(v3, v5, a3);
  if (*(*a1 + 32) - *(*a1 + 24) < v6 - &v11)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, v6 - &v11);
  }

  if (&v11 != v6)
  {
    v7 = &v11;
    do
    {
      v8 = *v7++;
      v9 = *(*a1 + 24);
      *(*a1 + 24) = v9 + 1;
      *v9 = v8;
    }

    while (v7 != v6);
  }

  return 1;
}

_BYTE *rapidjson::internal::u32toa(rapidjson::internal *this, _BYTE *a2, char *a3)
{
  if (this >> 4 <= 0x270)
  {
    if (this < 0x3E8)
    {
      if (this < 0x64)
      {
        if (this < 0xA)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this / 0x64u));
    }

    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this / 0x64u) + 1);
LABEL_9:
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x64u));
LABEL_10:
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (this % 0x64u)) + 1);
    return a2 + 1;
  }

  if (this < 0x5F5E100)
  {
    v3 = (this / 0x7A120uLL) & 0x3FFE;
    if (this < 0x989680)
    {
      if (this < 0xF4240)
      {
        if (this >> 5 < 0xC35)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3);
    }

    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3 + 1);
LABEL_15:
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * ((this / 0x2710) % 0x64u));
LABEL_16:
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * ((this / 0x2710) % 0x64u)) + 1);
    a2[1] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64));
    a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64) + 1);
    a2[3] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 % 0x64));
    a2[4] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (this % 0x2710 % 0x64)) + 1);
    return a2 + 5;
  }

  v5 = this / 0x5F5E100;
  v6 = this % 0x5F5E100;
  if (this < 0x3B9ACA00)
  {
    *a2 = v5 | 0x30;
    v7 = a2 + 1;
  }

  else
  {
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v5);
    v7 = a2 + 2;
  }

  v8 = v7;
  *v7 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + ((v6 / 0x7A120uLL) & 0x3FFE));
  *(v7 + 1) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v6 / 0x2710) % 0x64u);
  *(v7 + 2) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v6 % 0x2710 / 0x64);
  v7[6] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v6 % 0x2710 % 0x64));
  v4 = v7 + 8;
  v8[7] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v6 % 0x2710 % 0x64)) + 1);
  return v4;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(uint64_t a1, const char *a2, uint64_t a3, __int16 *a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(uint64_t a1, const char *a2, uint64_t a3, unsigned int *a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(uint64_t a1, const char *a2, uint64_t a3, unint64_t *a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt64(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt64(uint64_t *a1, unint64_t this, char *a3)
{
  v3 = this;
  *&v12[20] = *MEMORY[0x1E69E9840];
  if ((this & 0x8000000000000000) != 0)
  {
    v5 = v12;
    v11 = 45;
    v3 = -v3;
  }

  else
  {
    v5 = &v11;
  }

  v6 = rapidjson::internal::u64toa(v3, v5, a3);
  if (*(*a1 + 32) - *(*a1 + 24) < v6 - &v11)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, v6 - &v11);
  }

  if (&v11 != v6)
  {
    v7 = &v11;
    do
    {
      v8 = *v7++;
      v9 = *(*a1 + 24);
      *(*a1 + 24) = v9 + 1;
      *v9 = v8;
    }

    while (v7 != v6);
  }

  return 1;
}

_BYTE *rapidjson::internal::u64toa(unint64_t this, _BYTE *a2, char *a3)
{
  if (this >= 0x5F5E100)
  {
    if (this < 0x2386F26FC10000)
    {
      v4 = this % 0x5F5E100;
      v5 = this / 0x5F5E100;
      v6 = (v5 / 0x7A120uLL) & 0x3FFE;
      v7 = 2 * ((v5 / 0x2710) % 0x64u);
      v8 = 2 * (v5 % 0x2710 / 0x64);
      v9 = 2 * (v5 % 0x2710 % 0x64);
      v10 = v4 % 0x2710;
      v11 = (v4 / 0x7A120uLL) & 0x3FFE;
      v12 = 2 * ((v4 / 0x2710) % 0x64u);
      if (this < 0x38D7EA4C68000)
      {
        if (this < 0x5AF3107A4000)
        {
          if (this < 0x9184E72A000)
          {
            if (this < 0xE8D4A51000)
            {
              if (this < 0x174876E800)
              {
                if (this < 0x2540BE400)
                {
                  if (this < 0x3B9ACA00)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v8 + 1);
LABEL_22:
                *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v9);
LABEL_23:
                *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v9 + 1);
                a2[1] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v11);
                a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v11 + 1);
                a2[3] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v12);
                a2[4] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v12 + 1);
                a2[5] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v10 / 0x64u));
                a2[6] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v10 / 0x64u) + 1);
                a2[7] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v10 % 0x64u));
                a2[8] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v10 % 0x64u)) + 1);
                return a2 + 9;
              }

LABEL_20:
              *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v8);
              goto LABEL_21;
            }

LABEL_19:
            *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v7 + 1);
            goto LABEL_20;
          }

LABEL_18:
          *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v7);
          goto LABEL_19;
        }
      }

      else
      {
        *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v6);
      }

      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v6 + 1);
      goto LABEL_18;
    }

    v14 = this / 0x2386F26FC10000;
    v15 = this % 0x2386F26FC10000;
    if (this > 0x16345785D89FFFFLL)
    {
      if (this > 0xDE0B6B3A763FFFFLL)
      {
        v22 = (1311 * v14) >> 17;
        if (this > 0x8AC7230489E7FFFFLL)
        {
          v23 = 2 * (v14 - 100 * v22);
          *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v22);
          a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v23);
          v24 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v23 & 0xFFFE) + 1);
          v18 = a2 + 4;
          a2[3] = v24;
        }

        else
        {
          *a2 = v22 + 48;
          *(a2 + 1) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v14 - 100 * v22));
          v18 = a2 + 3;
        }

        goto LABEL_31;
      }

      *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v14);
      v16 = a2 + 2;
    }

    else
    {
      *a2 = v14 | 0x30;
      v16 = a2 + 1;
    }

    v18 = v16;
LABEL_31:
    v19 = v15 % 0x5F5E100;
    v20 = v15 / 0x5F5E100;
    *v18 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + ((v20 / 0x7A120uLL) & 0x3FFE));
    *(v18 + 1) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v20 / 0x2710) % 0x64u);
    *(v18 + 2) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v20 % 0x2710 / 0x64);
    v18[6] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v20 % 0x2710 % 0x64));
    v18[7] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v20 % 0x2710 % 0x64)) + 1);
    *(v18 + 4) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + ((v19 / 0x7A120uLL) & 0x3FFE));
    *(v18 + 5) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v19 / 0x2710) % 0x64u);
    *(v18 + 6) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v19 % 0x2710 / 0x64);
    v18[14] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v19 % 0x2710 % 0x64));
    v17 = v18 + 16;
    v18[15] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v19 % 0x2710 % 0x64)) + 1);
    return v17;
  }

  if (this >> 4 > 0x270)
  {
    v13 = (this / 0x7A120uLL) & 0x3FFE;
    if (this < 0x989680)
    {
      if (this < 0xF4240)
      {
        if (this >> 5 < 0xC35)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v13);
    }

    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v13 + 1);
LABEL_26:
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * ((this / 0x2710) % 0x64u));
LABEL_27:
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * ((this / 0x2710) % 0x64u)) + 1);
    a2[1] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64));
    a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64) + 1);
    a2[3] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 % 0x64));
    a2[4] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (this % 0x2710 % 0x64)) + 1);
    return a2 + 5;
  }

  v3 = 2 * (this / 0x64uLL);
  if (this < 0x3E8)
  {
    if (this < 0x64)
    {
      if (this < 0xA)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3);
  }

  *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3 + 1);
LABEL_14:
  *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x64));
LABEL_15:
  *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x64) + 1);
  return a2 + 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 *a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(uint64_t *a1, rapidjson::internal *this, char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = rapidjson::internal::u32toa(this, v9, a3);
  if (*(*a1 + 32) - *(*a1 + 24) < v4 - v9)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, v4 - v9);
  }

  if (v9 != v4)
  {
    v5 = v9;
    do
    {
      v6 = *v5++;
      v7 = *(*a1 + 24);
      *(*a1 + 24) = v7 + 1;
      *v7 = v6;
    }

    while (v5 != v4);
  }

  return 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(uint64_t a1, const char *a2, uint64_t a3, unsigned __int16 *a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(uint64_t a1, const char *a2, uint64_t a3, unsigned int *a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(uint64_t a1, const char *a2, uint64_t a3, rapidjson::internal **a4, char a5)
{
  v14 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v14);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint64(v9, v10, v11);
    if ((a5 & 2) == 0)
    {
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint64(uint64_t *a1, rapidjson::internal *this, char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = rapidjson::internal::u64toa(this, v9, a3);
  if (*(*a1 + 32) - *(*a1 + 24) < v4 - v9)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, v4 - v9);
  }

  if (v9 != v4)
  {
    v5 = v9;
    do
    {
      v6 = *v5++;
      v7 = *(*a1 + 24);
      *(*a1 + 24) = v7 + 1;
      *v7 = v6;
    }

    while (v5 != v4);
  }

  return 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, const char *a2, uint64_t a3, float *a4, char a5)
{
  v16 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v16);
    }

    v9 = *a4;
    v10 = *(a1 + 168);
    if (fabsf(v9) != INFINITY)
    {
      v14 = v9;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v10, v14);
      if ((a5 & 2) != 0)
      {
        return v5 ^ 1u;
      }

      goto LABEL_8;
    }

    v11 = "-Infinity";
    if (v9 > 0.0)
    {
      v11 = "Infinity";
    }

    v15 = v11;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v10, &v15);
    if ((a5 & 2) == 0)
    {
LABEL_8:
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

BOOL rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(uint64_t a1, double a2)
{
  v42[3] = *MEMORY[0x1E69E9840];
  v2 = *&a2;
  v3 = *&a2 & 0x7FF0000000000000;
  if ((*&a2 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    if (a2 == 0.0)
    {
      v5 = &v41;
      if ((*&a2 & 0x8000000000000000) != 0)
      {
        v5 = v42;
        v41 = 45;
      }

      *v5 = 11824;
      v5[2] = 48;
      v6 = v5 + 3;
    }

    else
    {
      v7 = *(a1 + 56);
      v8 = &v41;
      if (a2 < 0.0)
      {
        v8 = v42;
        v41 = 45;
        v2 = *&a2 ^ 0x8000000000000000;
      }

      v30 = 0;
      if (((v2 >> 52) & 0x7FF) != 0)
      {
        v9 = v2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
      }

      else
      {
        v9 = v2 & 0xFFFFFFFFFFFFFLL;
      }

      if (((v2 >> 52) & 0x7FF) != 0)
      {
        v10 = ((v2 >> 52) & 0x7FF) - 1075;
      }

      else
      {
        v10 = -1074;
      }

      v39 = (2 * (v9 & 0x1FFFFFFFFFFFFFLL)) | 1;
      v40 = v10 - 1;
      v11 = rapidjson::internal::DiyFp::NormalizeBoundary(&v39);
      v13 = 2 * v9 - 1;
      if (v9 == 0x10000000000000)
      {
        v14 = -2;
      }

      else
      {
        v14 = -1;
      }

      if (v9 == 0x10000000000000)
      {
        v13 = 0x3FFFFFFFFFFFFFLL;
      }

      v37 = v11;
      v38 = v12;
      v39 = v13 << (v14 + v10 - v12);
      v40 = v12;
      v15 = (-61 - v12) * 0.301029996 + 347.0;
      v16 = v15;
      if (v15 > v15)
      {
        ++v16;
      }

      v17 = (v16 >> 3) + 1;
      v18 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_F[v17];
      v29 = 348 - 8 * v17;
      v19 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_E[v17];
      v35 = v18;
      v36 = v19;
      v20 = __clz(v9);
      v31 = v9 << v20;
      v32 = v10 - v20;
      v33 = rapidjson::internal::DiyFp::operator*(&v31, &v35);
      v34 = v21;
      v22 = rapidjson::internal::DiyFp::operator*(&v37, &v35);
      v32 = v23;
      v24 = rapidjson::internal::DiyFp::operator*(&v39, &v35);
      v31 = v22 - 1;
      rapidjson::internal::DigitGen(&v33, &v31, v22 - 1 + ~v24, v8, &v30, &v29);
      v6 = rapidjson::internal::Prettify(v8, v30, v29, v7);
    }

    if (*(*a1 + 32) - *(*a1 + 24) < v6 - &v41)
    {
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*a1, v6 - &v41);
    }

    if (&v41 != v6)
    {
      v25 = &v41;
      do
      {
        v26 = *v25++;
        v27 = *(*a1 + 24);
        *(*a1 + 24) = v27 + 1;
        *v27 = v26;
      }

      while (v25 != v6);
    }
  }

  return v3 != 0x7FF0000000000000;
}