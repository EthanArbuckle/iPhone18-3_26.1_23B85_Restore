uint64_t anonymous namespace::generateEntityIDLookupTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  if (*a3 == 1)
  {
    v5 = *(a3 + 8) + 1;
    *(a3 + 8) = v5;
  }

  else
  {
    v5 = *(a1 + 312);
  }

  v11 = v5;
  result = re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addNew(a2, &v12, &v11);
  v7 = *(v12 + 344);
  if (v7)
  {
    v8 = *(v12 + 360);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void anonymous namespace::convertToEntityAssetData(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a3 + 24) + 24);
  *(a5 + 8) = 0;
  v10 = (a5 + 8);
  v34 = a1;
  *(a5 + 16) = &str_67;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
  v11 = (a5 + 32);
  *(a5 + 56) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 104) = 0;
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v9, &v34, v12 ^ (v12 >> 31), &v31);
  *a5 = *(*(v9 + 16) + 32 * v31.n128_u32[3] + 16);
  re::StringID::operator=(v10, (v34 + 288));
  v13 = v34;
  *(a5 + 24) = (*(v34 + 304) & 8) != 0;
  v14 = *(v13 + 72);
  *v11 = a2;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v11, 0);
  ++*(a5 + 56);
  if (*(a5 + 40) < v14)
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v11, v14);
  }

  v15 = v34;
  v16 = *(v34 + 72);
  if (v16)
  {
    v17 = *(v34 + 88);
    v18 = 8 * v16;
    do
    {
      v19 = *v17;
      v20 = (*(**v17 + 40))(*v17);
      if ((*(v20 + 40) & 1) == 0)
      {
        v21 = v20;
        v22 = *((*(*v19 + 40))(v19) + 24) >> 1;
        v23 = v21[1];
        if (v23)
        {
          v24 = v23(v19);
          v31.n128_u64[0] = v22;
          v31.n128_u64[1] = v24;
          LOBYTE(v32) = 1;
          re::DynamicArray<re::BufferView>::add(v11, &v31);
        }

        else
        {
          (*(*v21 + 32))(&v33, v21);
          v25 = (*(*v19 + 40))(v19);
          v26 = (*(*v25 + 48))(v25);
          v31 = a2;
          v32 = a3;
          v27 = v33;
          v33 = 0;
          v31.n128_u64[0] = v22;
          v31.n128_u64[1] = v27;
          LOBYTE(v32) = 1;
          re::DynamicArray<re::BufferView>::add(v11, &v31);
          if (v33)
          {
          }
        }
      }

      ++v17;
      v18 -= 8;
    }

    while (v18);
    v15 = v34;
  }

  v28 = *(v15 + 344);
  if (*(a5 + 80) < v28)
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity((a5 + 72), v28);
    v15 = v34;
    v28 = *(v34 + 344);
  }

  if (v28)
  {
    v29 = *(v15 + 360);
    v30 = 8 * v28;
    do
    {
      if (!a4 || (*(v34 + 305) & 0x10) == 0)
      {
        re::DynamicArray<re::ecs2::EntityAssetData>::add(a5 + 72, &v31);
        re::ecs2::EntityAssetData::~EntityAssetData(&v31);
      }

      ++v29;
      v30 -= 8;
    }

    while (v30);
  }
}

uint64_t re::DynamicArray<re::ecs2::EntityAssetData>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::growCapacity(a1, v4 + 1);
    v4 = *(a1 + 16);
  }

  result = re::ecs2::EntityAssetData::EntityAssetData(*(a1 + 32) + 112 * v4, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::ecs2::ECSSerialization::saveEntityHierarchyIntoSceneAssetData(re *a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (*(a1 + 305) & 0x10) == 0)
  {
    v6 = re::globalAllocators(a1);
    v7 = v6[2];
    v8 = re::globalAllocators(v6)[2];
    if (a3)
    {
      v23 = 0;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v22[0] = v9;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v21 = 0x7FFFFFFFLL;
    re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v19, v8, 3);
    v18 = 0;
    v10 = a1;
    v16 = 0u;
    v17 = 0u;
    do
    {
      v11 = v10;
      v10 = *(v10 + 4);
    }

    while (v10);
    v12 = *(v11 + 3);
    v15[0] = 0;
    v15[1] = 0;
    v15[2] = v12;
    v15[3] = v19;
    *(&v17 + 1) = v15;
    re::DynamicArray<re::ecs2::EntityAssetData>::add(a2, v14);
    re::ecs2::EntityAssetData::~EntityAssetData(v14);
    return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v19);
  }

  return result;
}

void anonymous namespace::convertFromEntityAssetData(re::ecs2::EntityFactory *a1, uint64_t a2, AssetService *a3, _anonymous_namespace_ *a4, void **a5)
{
  v34 = *a2;
  v10 = *(a2 + 48);
  v11 = re::ecs2::EntityFactory::instance(a1);
  re::ecs2::EntityFactory::make(v11, v10, a1);
  v12 = *a1;
  re::StringID::operator=(v12 + 36, (a2 + 8));
  re::ecs2::Entity::setSelfEnabled(v12, *(a2 + 24));
  v13 = re::DirectAssetDeserialize::DirectAssetDeserialize(&v39, a3, 0);
  v38 = 0u;
  v37 = 0u;
  v36 = &v39;
  v14 = *(a2 + 48);
  if (v14)
  {
    v15 = 24 * v14;
    v16 = (*(a2 + 64) + 8);
    do
    {
      v17 = re::ecs2::ComponentTypeRegistry::instance(v13);
      v18 = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v17, *(v16 - 1));
      if (v18)
      {
        v19 = *(v18 + 1);
        if (v19)
        {
          v20 = v19(*v16, v18);
          v21 = v20;
          v35 = v20;
          if (v20)
          {
            v22 = (v20 + 8);
          }

          re::ecs2::EntityComponentCollection::add((v12 + 6), &v35, 1);
          if (v35)
          {

            v35 = 0;
          }

          if (v21)
          {
          }
        }

        else
        {
          v24 = re::ecs2::EntityComponentCollection::add((v12 + 6), v18);
          v25 = re::globalAllocators(v24)[2];
          v26 = (*(*v24 + 40))(v24);
          v27 = (*(*v26 + 48))(v26);
          v28 = *v16;
          *buf = v25;
          v46 = 0;
          v47 = &v36;
        }
      }

      else
      {
        v23 = *re::assetTypesLogObjects(0);
        v13 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Unknown component type hash", buf, 2u);
        }
      }

      v16 += 3;
      v15 -= 24;
    }

    while (v15);
  }

  v29 = re::ecs2::EntityComponentCollection::get((v12 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v29)
  {
    re::internal::MeshSortGroupFixupTable::fixupMeshSortGroup(a5, v29);
  }

  re::internal::EntityHandleHookupTable::registerEntity(a4, v12, v34, 0);
  v30 = *(a2 + 88);
  if (v30)
  {
    v31 = *(a2 + 104);
    v32 = 112 * v30;
    do
    {
      v33 = *buf;
      re::ecs2::Entity::setParentInternal(*buf, v12, 0xFFFFFFFFFFFFFFFFLL);
      if (v33)
      {
      }

      v31 += 112;
      v32 -= 112;
    }

    while (v32);
  }

  v39 = &unk_1F5CB95A0;
  if (v40 == 1)
  {
    if (v43)
    {
      if (BYTE8(v43))
      {
        (*(*v43 + 40))();
      }

      v44 = 0u;
      v43 = 0u;
    }

    if (v41)
    {
      if (v42)
      {
        (*(*v41 + 40))();
      }
    }
  }
}

re *re::internal::destroyPersistent<re::internal::EntityHandleHookupTable>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v1 + 11);
    v3.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 5);
    v4 = *v1;
    if (*v1)
    {
      v5 = *(v1 + 4);
      if (v5)
      {
        v6 = *(v1 + 2);
        if (v6)
        {
          v7 = 48 * v6;
          v8 = (v5 + 8);
          do
          {
            v8 = std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::~unique_ptr[abi:nn200100](v8) + 6;
            v7 -= 48;
          }

          while (v7);
          v4 = *v1;
          v5 = *(v1 + 4);
        }

        (*(*v4 + 40))(v4, v5, v3);
      }

      *(v1 + 4) = 0;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0;
      *v1 = 0;
      ++*(v1 + 6);
    }

    v9 = *(*v2 + 40);

    return v9(v2, v1, v3);
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = *(a1 + 272);
  if (*(v8 + 24) != *(a1 + 280))
  {
    re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
    a1 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(v7, v8);
  }

  *(v7 + 24) = a2;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  if (!a3)
  {
  }

  *(v7 + 48) = a3;
  if (!a4)
  {
  }

  *(v7 + 56) = a4;
  v15[0] = 0;
  re::Optional<re::DetailedError>::operator=(v7 + 64, v15);
  if (v15[0] == 1 && *&v17[1] && (v17[3] & 1) != 0)
  {
    (*(**&v17[1] + 40))();
  }

  *(v7 + 120) = *(v7 + 48);
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity((v7 + 120), 0x40uLL);
  ++*(v7 + 144);
  v15[0] = 0;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add((v7 + 120), v15);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  *(v7 + 216) = *(v7 + 56);
  re::DynamicArray<char>::setCapacity((v7 + 216), 0);
  ++*(v7 + 240);
  v10 = (*(**(v7 + 48) + 32))(*(v7 + 48), 64, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 512;
  *(v10 + 56) = 324;
  *(v10 + 60) = 0;
  *(v7 + 192) = v10;
  v11 = (*(**(v7 + 48) + 32))(*(v7 + 48), 48, 8);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v11 + 40) = 256;
  *(v7 + 184) = v11;
  v12 = *(v7 + 192);
  *v12 = v11;
  *(v12 + 60) = 0;
  *(v12 + 32) = *(v12 + 24);
  v13 = *(*v7 + 48);

  return v13(v7);
}

uint64_t re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>@<X0>(char *a1@<X2>, uint64_t a2@<X0>, void **a3@<X1>, int a4@<W3>, uint64_t a5@<X8>)
{
  re::FixedArrayInputStream::FixedArrayInputStream(v9, a1, a4, -1);
  re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>(a2, a3, v9, a5);
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v9);
}

_anonymous_namespace_ *re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>(a1, a2, a3);
  (*(*a1 + 56))(a1);
  result = re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close((a1 + 24));
  if (*(a1 + 64) == 1)
  {
    v11 = *re::assetTypesLogObjects(result);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v15 = *(a1 + 72);
        re::DynamicString::DynamicString(&v16, (a1 + 88));
        v12 = (v17 & 1) != 0 ? *&v18[7] : v18;
      }

      else
      {
        v12 = v18;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
      if (v13 == 1 && v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    v14 = *(a1 + 64);
    if (v14 == 1)
    {
      v15 = *(a1 + 72);
      re::DynamicString::DynamicString(&v16, (a1 + 88));
    }

    *buf = v15;
    result = re::DynamicString::DynamicString(&v20, &v16);
    *a5 = 0;
    *(a5 + 8) = *buf;
    *(a5 + 24) = v20;
    *(a5 + 48) = v22;
    *(a5 + 32) = v21;
    v22 = 0;
    v20 = 0;
    v21 = 0uLL;
    if (v14 == 1)
    {
      result = v16;
      if (v16)
      {
        if (v17)
        {
          return (*(*v16 + 40))();
        }
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v41);
    v6 = *(a1 + 272);
    v38[0] = 0xD481AB84CBDDALL;
    v38[1] = "Component*";
    v7 = re::TypeRegistry::typeInfo(v6, v38, v39);
    if (v38[0])
    {
      if (v38[0])
      {
      }
    }

    if (v39[0])
    {
      v13 = (*(*a1 + 80))(a1, v40);
      if (v13)
      {
        v14 = v13;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, "entity", 1, 0))
        {
          v38[0] = *(a2 + 312);
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, "id", 1, v38, 0);
          v15 = *(a2 + 296);
          if (v15)
          {
            v16 = strlen(*(a2 + 296));
          }

          else
          {
            v16 = 0;
          }

          v37 = v16;
          if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, "name", 2, &v37, 0))
          {
            if (v37)
            {
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v15, 0);
            }

            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
          }

          v36 = (*(a2 + 304) & 8) != 0;
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isSelfActive", 10, &v36, 0);
          if ((a3 & 2) != 0)
          {
            v24 = *(a2 + 304);
            LOBYTE(v30) = (v24 & 2) != 0;
            LOBYTE(v29) = (v24 & 0x20) != 0;
            v35 = (v24 & 4) != 0;
            v34 = BYTE1(v24) & 1;
            v33 = (v24 & 0x40) != 0;
            v32 = (v24 & 0x80) != 0;
            v31 = v24 & 1;
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isEnabledInHierarchy", 20, &v30, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isSelfAnchored", 21, &v29, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isAnchoredInHierarchy", 22, &v35, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "selfRequiresAnchoring", 23, &v34, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isGhosted", 24, &v33, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isSceneEntity", 25, &v32, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isActive", 26, &v31, 0);
          }

          v30 = *(a2 + 72);
          if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, "components", 40, &v30, 0))
          {
            if (v30)
            {
              v25 = 0;
              while ((*(a1 + 64) & 1) == 0)
              {
                v29 = *re::ecs2::EntityComponentCollection::operator[](a2 + 48, v25);
                v14(a1, "component", v25++, &v29, v40, v40, 0);
                if (v30 <= v25)
                {
                  goto LABEL_27;
                }
              }

              goto LABEL_13;
            }

LABEL_27:
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
          }

          if (a3)
          {
            v29 = *(a2 + 344);
            if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, "children", 50, &v29, 0))
            {
              if (v29)
              {
                v26 = 0;
                while ((*(a1 + 64) & 1) == 0)
                {
                  v27 = re::ecs2::EntityComponentCollection::operator[](a2 + 320, v26);
                  re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>(a1, *v27, a3);
                  if (++v26 >= v29)
                  {
                    goto LABEL_34;
                  }
                }

                goto LABEL_13;
              }

LABEL_34:
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
            }
          }

          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
        }

LABEL_13:
        re::IntrospectionSharedLock::~IntrospectionSharedLock(&v41);
        return;
      }

      v18 = re::TypeInfo::name(v40);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v19, v20, v21, v22, v23, v18[1]);
      v17 = "Failed to get serialization function for type Component*.";
    }

    else
    {
      v17 = "Type Component* not found in type registry.";
    }

    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, "entity", v17, v8, v9, v10, v11, v12, v28);
    goto LABEL_13;
  }
}

void re::ecs2::serializeComponent<re::ecs2::ECSOPACKSerializer>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 208);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v33);
  v9 = (*(*a2 + 40))(a2);
  (*(*v9 + 56))(&v25);
  re::TypeRegistry::typeInfo(v8, &v25, v31);
  if ((v31[0] & 1) == 0)
  {
    v11 = (*(*a2 + 40))(a2);
    v12 = (*(*v11 + 48))(v11);
    PrettyTypeName = re::getPrettyTypeName(v12, &v25);
    v14 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v26)
      {
        v15 = *(&v26 + 1);
      }

      else
      {
        v15 = &v26 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Serialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v26)
    {
      v16 = *(&v26 + 1);
    }

    else
    {
      v16 = &v26 + 1;
    }

    re::DynamicString::format("Serialization failed. Type info (%s) not found.", buf, v16);
    v17 = *buf;
    v18 = v35;
    v19 = v36;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v17;
    *(a4 + 40) = v18;
    *(a4 + 48) = v19;
    v20 = v25;
    if (!v25 || (v26 & 1) == 0)
    {
      goto LABEL_34;
    }

    v21 = *(&v26 + 1);
LABEL_15:
    (*(*v20 + 40))(v20, v21);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v32, v32, 0);
  }

  (*(*a1 + 56))(a1);
  v22 = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    *a4 = 1;
    goto LABEL_34;
  }

  v23 = *re::assetTypesLogObjects(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v25) = *(a1 + 64);
    if (v25)
    {
      v26 = *(a1 + 72);
      re::DynamicString::DynamicString(&v27, (a1 + 88));
      v24 = (v28 & 1) != 0 ? v30 : v29;
    }

    else
    {
      v24 = v29;
    }

    *buf = 136315138;
    *&buf[4] = v24;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
    if (v25 == 1 && v27 && (v28 & 1) != 0)
    {
      (*(*v27 + 40))();
    }
  }

  LOBYTE(v25) = *(a1 + 64);
  if (v25 == 1)
  {
    v26 = *(a1 + 72);
    re::DynamicString::DynamicString(&v27, (a1 + 88));
  }

  *buf = v26;
  re::DynamicString::DynamicString(&v35, &v27);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = v35;
  *(a4 + 48) = v37;
  *(a4 + 32) = v36;
  v37 = 0;
  v35 = 0;
  v36 = 0uLL;
  if (v25 == 1)
  {
    v20 = v27;
    if (v27)
    {
      if (v28)
      {
        v21 = v30;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v33);
}

uint64_t re::ecs2::deserializeComponent<re::ecs2::ECSOPACKDeserializer>@<X0>(char *a1@<X2>, uint64_t a2@<X0>, void **a3@<X1>, int a4@<W3>, uint64_t a5@<X8>)
{
  re::FixedArrayInputStream::FixedArrayInputStream(v9, a1, a4, -1);
  re::ecs2::deserializeComponent<re::ecs2::ECSOPACKDeserializer>(a2, a3, v9, a5);
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v9);
}

void re::ecs2::deserializeComponent<re::ecs2::ECSOPACKDeserializer>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 208);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v35);
  v9 = (*(*a2 + 5))(a2);
  (*(*v9 + 56))(&v27);
  re::TypeRegistry::typeInfo(v8, &v27, v33);
  if ((v33[0] & 1) == 0)
  {
    v12 = (*(*a2 + 5))(a2);
    v13 = (*(*v12 + 48))(v12);
    PrettyTypeName = re::getPrettyTypeName(v13, &v27);
    v15 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v28)
      {
        v16 = *(&v28 + 1);
      }

      else
      {
        v16 = &v28 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v28)
    {
      v17 = *(&v28 + 1);
    }

    else
    {
      v17 = &v28 + 1;
    }

    re::DynamicString::format("Deserialization failed. Type info (%s) not found.", buf, v17);
    v18 = *buf;
    v19 = *&buf[16];
    v20 = v37;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    *(a4 + 48) = v20;
    v21 = v27;
    if (!v27 || (v28 & 1) == 0)
    {
      goto LABEL_34;
    }

    v22 = *(&v28 + 1);
LABEL_15:
    (*(*v21 + 40))(v21, v22);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v34, v34, 0);
  }

  (*(*a1 + 56))(a1);
  v23 = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    re::ecs2::Component::markDirty(a2);
    *a4 = 1;
    goto LABEL_34;
  }

  v24 = *re::assetTypesLogObjects(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = re::TypeInfo::name(v34)[1];
    LOBYTE(v27) = *(a1 + 64);
    if (v27)
    {
      v28 = *(a1 + 72);
      re::DynamicString::DynamicString(&v29, (a1 + 88));
      v26 = (v30 & 1) != 0 ? v32 : v31;
    }

    else
    {
      v26 = v31;
    }

    *buf = 136315394;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type %s. Message: %s", buf, 0x16u);
    if (v27 == 1 && v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }
  }

  LOBYTE(v27) = *(a1 + 64);
  if (v27 == 1)
  {
    v28 = *(a1 + 72);
    re::DynamicString::DynamicString(&v29, (a1 + 88));
  }

  *buf = v28;
  re::DynamicString::DynamicString(&buf[16], &v29);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = *&buf[16];
  *(a4 + 48) = v38;
  *(a4 + 32) = v37;
  v38 = 0;
  *&buf[16] = 0;
  v37 = 0uLL;
  if (v27 == 1)
  {
    v21 = v29;
    if (v29)
    {
      if (v30)
      {
        v22 = v32;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v35);
}

_anonymous_namespace_ *re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>(a1, a2, a3);
  (*(*a1 + 56))(a1);
  result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close((a1 + 24));
  if (*(a1 + 64) == 1)
  {
    v11 = *re::assetTypesLogObjects(result);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v15 = *(a1 + 72);
        re::DynamicString::DynamicString(&v16, (a1 + 88));
        v12 = (v17 & 1) != 0 ? *&v18[7] : v18;
      }

      else
      {
        v12 = v18;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
      if (v13 == 1 && v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    v14 = *(a1 + 64);
    if (v14 == 1)
    {
      v15 = *(a1 + 72);
      re::DynamicString::DynamicString(&v16, (a1 + 88));
    }

    *buf = v15;
    result = re::DynamicString::DynamicString(&v20, &v16);
    *a5 = 0;
    *(a5 + 8) = *buf;
    *(a5 + 24) = v20;
    *(a5 + 48) = v22;
    *(a5 + 32) = v21;
    v22 = 0;
    v20 = 0;
    v21 = 0uLL;
    if (v14 == 1)
    {
      result = v16;
      if (v16)
      {
        if (v17)
        {
          return (*(*v16 + 40))();
        }
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v41);
    v6 = *(a1 + 208);
    v38[0] = 0xD481AB84CBDDALL;
    v38[1] = "Component*";
    v7 = re::TypeRegistry::typeInfo(v6, v38, v39);
    if (v38[0])
    {
      if (v38[0])
      {
      }
    }

    if (v39[0])
    {
      v13 = (*(*a1 + 80))(a1, v40);
      if (v13)
      {
        v14 = v13;
        if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, "entity", 1, 0))
        {
          v38[0] = *(a2 + 312);
          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "id", 1, v38, 0);
          v15 = *(a2 + 296);
          if (v15)
          {
            v16 = strlen(*(a2 + 296));
          }

          else
          {
            v16 = 0;
          }

          v37 = v16;
          if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, "name", 2, &v37, 0))
          {
            if (v37)
            {
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, v15, 0);
            }

            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
          }

          v36 = (*(a2 + 304) & 8) != 0;
          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "isSelfActive", 10, &v36, 0);
          if ((a3 & 2) != 0)
          {
            v24 = *(a2 + 304);
            LOBYTE(v30) = (v24 & 2) != 0;
            LOBYTE(v29) = (v24 & 0x20) != 0;
            v35 = (v24 & 4) != 0;
            v34 = BYTE1(v24) & 1;
            v33 = (v24 & 0x40) != 0;
            v32 = (v24 & 0x80) != 0;
            v31 = v24 & 1;
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "isEnabledInHierarchy", 20, &v30, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "isSelfAnchored", 21, &v29, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "isAnchoredInHierarchy", 22, &v35, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "selfRequiresAnchoring", 23, &v34, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "isGhosted", 24, &v33, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "isSceneEntity", 25, &v32, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, "isActive", 26, &v31, 0);
          }

          v30 = *(a2 + 72);
          if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, "components", 40, &v30, 0))
          {
            if (v30)
            {
              v25 = 0;
              while ((*(a1 + 64) & 1) == 0)
              {
                v29 = *re::ecs2::EntityComponentCollection::operator[](a2 + 48, v25);
                v14(a1, "component", v25++, &v29, v40, v40, 0);
                if (v30 <= v25)
                {
                  goto LABEL_27;
                }
              }

              goto LABEL_13;
            }

LABEL_27:
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          }

          if (a3)
          {
            v29 = *(a2 + 344);
            if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, "children", 50, &v29, 0))
            {
              if (v29)
              {
                v26 = 0;
                while ((*(a1 + 64) & 1) == 0)
                {
                  v27 = re::ecs2::EntityComponentCollection::operator[](a2 + 320, v26);
                  re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>(a1, *v27, a3);
                  if (++v26 >= v29)
                  {
                    goto LABEL_34;
                  }
                }

                goto LABEL_13;
              }

LABEL_34:
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
            }
          }

          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
        }

LABEL_13:
        re::IntrospectionSharedLock::~IntrospectionSharedLock(&v41);
        return;
      }

      v18 = re::TypeInfo::name(v40);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v19, v20, v21, v22, v23, v18[1]);
      v17 = "Failed to get serialization function for type Component*.";
    }

    else
    {
      v17 = "Type Component* not found in type registry.";
    }

    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, "entity", v17, v8, v9, v10, v11, v12, v28);
    goto LABEL_13;
  }
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CC4710;
  v2 = (a1 + 8);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::~Encoder((a1 + 24));
  re::StringID::destroyString(v2);
  return a1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
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

void re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 272);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v26, &v30);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 272);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 288, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v20, v21, v22, v23, v24, v19[1]);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 == 94623636)
  {
    v6 = v4[1];
    v7 = re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString;
    if (v6 == "char*")
    {
      return v7;
    }

    v8 = strcmp(v6, "char*");
    v7 = re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString;
    if (!v8)
    {
      return v7;
    }
  }

  if (*(this + 12) != 9)
  {
    goto LABEL_9;
  }

  v9 = *(*(this + 2) + 88);
  v7 = re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
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
LABEL_9:
    if (*this == *(a1 + 272))
    {
      LODWORD(v12) = **(this + 2);
      HIDWORD(v12) = -1;
      v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, &v12);
      v7 = re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (v10)
      {
        return *v10;
      }
    }

    else
    {
      return re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *(a1 + 272))
  {
    return re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  }
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_6, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 6;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

_BYTE *re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doClose(result);
    if ((*(v1 + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 0);
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

void *re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doClose(void *result)
{
  if (result[21])
  {
    v1 = result;
    result = result[20];
    if (result)
    {
      String = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(result);
      v3 = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v1, String, *(v1[20] + 24) - *(v1[20] + 16));
      if ((v3 & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, &v8);
        if (v8)
        {
          if (v9)
          {
            (*(*v8 + 40))();
          }
        }
      }

      v4 = v1[20];
      if (v4)
      {
        v5 = v1[3];
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v1[20]);
        (*(*v5 + 40))(v5, v4);
      }

      v1[20] = 0;
      v6 = v1[21];
      if (v6)
      {
        v7 = v1[3];
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v6 + 8);
        (*(*v7 + 40))(v7, v6);
      }

      v1[21] = 0;
      return re::DynamicArray<unsigned long>::deinit((v1 + 24));
    }
  }

  return result;
}

uint64_t re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
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
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
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
    v30 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.", v31, v32, v33, v34, v35, v30);
    return 0;
  }

LABEL_19:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v23 == 3)
      {

        return re::serializeOptional<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_57;
        }

        return re::serializeArray<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v23 == 1)
    {

      return re::serializeBasic<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_57;
      }

      return re::serializeEnum<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v23 == 5)
    {

      return re::serializeList<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_57;
      }

      return re::serializeDictionary<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v23)
    {
      case 7u:

        return re::serializeUnion<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        v36 = re::TypeInfo::name(this)[1];
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.", v24, v25, v26, v27, v28, v36);
        return 0;
      default:
LABEL_57:
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Invalid type category. Value = %d", a4, this, a6, a7, a8, *(this + 12));
        return 0;
    }
  }
}

uint64_t re::serializeBasic<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
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
    if (*v14 >> 1 > 0x303EE88E58CLL)
    {
      if (*v14 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v15 == 0x2A8CEB1C43F60844)
        {
          goto LABEL_62;
        }

        if (v15 != 0x3AFE951B1F1F3391)
        {
          if (v15 != 0x412A40E9CB79BA35)
          {
            goto LABEL_77;
          }

          goto LABEL_56;
        }

        goto LABEL_59;
      }

      if (v15 == 0x303EE88E58DLL)
      {
        goto LABEL_56;
      }

      if (v15 != 0x2710786C3AC82DA1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:

            return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, a3, a4, a7);
          }

          goto LABEL_77;
        }

        goto LABEL_65;
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_77;
          }

LABEL_62:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, a3, a4, a7);
        }

LABEL_59:

        return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, a3, a4, a7);
      }
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, a3, a4, a7);
  }

  if (*v14 >> 1 > 0x685847B)
  {
    if (*v14 >> 1 <= 0xB9708BDD)
    {
      if (v15 != 109413500)
      {
        if (v15 == 2969009105)
        {

          return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a3, a4, a7);
        }

LABEL_77:
        v21 = re::TypeInfo::name(this);
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Unsupported basic type %s.", v22, v23, v24, v25, v26, v21[1]);
        return 0;
      }

LABEL_68:

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, a3, a4, a7);
    }

    if (v15 == 3111160798)
    {

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, a3, a4, a7);
    }

    if (v15 != 3393056694)
    {
      if (v15 != 0x16749D2549)
      {
        goto LABEL_77;
      }

      goto LABEL_68;
    }

LABEL_56:

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, a3, a4, a7);
  }

  if (*v14 >> 1 <= 0x2E9355)
  {
    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {

        return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, a3, a4, a7);
      }

      goto LABEL_77;
    }

LABEL_65:

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, a3, a4, a7);
  }

  if (v15 != 3052374)
  {
    if (v15 != 3327612)
    {
      if (v15 == 97526364)
      {

        return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a3, a4, a7);
      }

      goto LABEL_77;
    }

    goto LABEL_43;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeOptional<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    v21 = 0;
    return v21 & 1;
  }

LABEL_11:
  if (a7)
  {
    v24[0] = 0;
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, a3, v24, 0);
    if (v24[0] == 1)
    {
      v18 = *(a1 + 272);
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
    v19 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, a3, &v23, 0);
    if (v23)
    {
      v20 = (*(v28 + 88))(a4, v19);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v20, v25, v24, 0);
      }
    }
  }

  re::EncoderBinary<re::SeekableInputStream>::endOptional((a1 + 24));
  v21 = *(a1 + 64) ^ 1;
  return v21 & 1;
}

uint64_t re::serializeArray<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
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
    goto LABEL_54;
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

LABEL_54:
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    goto LABEL_55;
  }

  if (v20 || *(v18 + 24) != *(v19 + 24))
  {
    goto LABEL_54;
  }

LABEL_13:
  if (a7)
  {
    v21 = *(a1 + 34);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v55);
    re::TypeInfo::TypeInfo(v53, v56);
    re::internal::translateType(v21, v53, v54);
    v22 = (*(*a1 + 80))(a1, v54);
    if (v22)
    {
      v23 = v22;
      v24 = *(a6 + 2);
      v25 = *(v24 + 23) & 0xFFFFFF;
      if (v25)
      {
        v26 = 0;
        v27 = 8;
      }

      else
      {
        v26 = *(v24 + 24);
        v27 = 4;
      }

      v55 = v26;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v55, v27))
      {
        v45 = v55;
        if (v25)
        {
          v46 = v55 == 0;
        }

        else
        {
          v46 = 1;
        }

        v47 = v46;
        if (!v46)
        {
          v52[0] = 0;
          v52[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v52);
          v45 = v55;
        }

        if (v45)
        {
          v48 = 0;
          do
          {
            v23(a1, 0, 0, 0, v54, v54, 1);
            ++v48;
          }

          while (v48 < v55);
        }

        if (v47)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_55:
      v38 = 0;
      return v38 & 1;
    }

LABEL_36:
    v39 = re::TypeInfo::name(v54);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_55;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v55);
  re::TypeInfo::TypeInfo(v54, v56);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v55);
  re::TypeInfo::TypeInfo(v53, v56);
  re::TypeInfo::TypeInfo(&v55, a5);
  v28 = (*(*a1 + 80))(a1, v54);
  if (!v28)
  {
    goto LABEL_36;
  }

  v29 = v28;
  v51 = re::ArrayAccessor::size(&v55, a4);
  v30 = *(*(a5 + 2) + 92) & 0xFFFFFF;
  if (v30)
  {
    v31 = 8;
  }

  else
  {
    v31 = 4;
  }

  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v51, v31))
  {
    goto LABEL_55;
  }

  v32 = v51;
  if (v30)
  {
    v33 = v51 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;
  if (!v33)
  {
    v35 = *a4;
    v50[0] = 0;
    v50[1] = 0xFFFFFFFFLL;
    (*(*a1 + 16))(a1, v35, v50);
    v32 = v51;
  }

  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = re::ArrayAccessor::elementAt(&v55, a4, v36);
      v29(a1, 0, 0, v37, v54, v53, 0);
      ++v36;
    }

    while (v36 < v51);
  }

  if (v34)
  {
    goto LABEL_35;
  }

LABEL_34:
  (*(*a1 + 24))(a1);
LABEL_35:
  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
  v38 = a1[64] ^ 1;
  return v38 & 1;
}

uint64_t re::serializeList<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
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
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    goto LABEL_28;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v50);
    re::TypeInfo::TypeInfo(v49, &v51);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50);
    re::TypeInfo::TypeInfo(v48, &v51);
    re::TypeInfo::TypeInfo(&v50, a5);
    v24 = (*(*a1 + 80))(a1, v49);
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = v24;
    v47 = (*(v52 + 88))(a4);
    v26 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v47, 0);
    v22 = 0;
    if (!v26)
    {
      return v22 & 1;
    }

    if (*(v52 + 104))
    {
      if (v47)
      {
        for (i = 0; i < v47; ++i)
        {
          v28 = (*(v52 + 104))(a4, i);
          v25(a1, 0, 0, v28, v49, v48, 0);
        }
      }

      goto LABEL_24;
    }

    v35 = *(v52 + 112);
    if (v35 && *(v52 + 120) && *(v52 + 128))
    {
      v36 = v35(a4, *(a1 + 56));
      v37 = (*(v52 + 120))();
      if (v37)
      {
        v38 = v37;
        do
        {
          v25(a1, 0, 0, v38, v49, v48, 0);
          v38 = (*(v52 + 120))(v36);
        }

        while (v38);
      }

      (*(v52 + 128))(v36, *(a1 + 56));
      goto LABEL_24;
    }

    re::TypeInfo::TypeInfo(v46, &v50);
    v45 = re::TypeInfo::name(v46)[1];
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.", v39, v40, v41, v42, v43, v45);
LABEL_28:
    v22 = 0;
    return v22 & 1;
  }

  v18 = *(a1 + 272);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::internal::translateType(v18, v48, v49);
  v19 = (*(*a1 + 80))(a1, v49);
  if (!v19)
  {
LABEL_25:
    v44 = re::TypeInfo::name(v49)[1];
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v29, v30, v31, v32, v33, v44);
    goto LABEL_28;
  }

  v20 = v19;
  v50 = 0;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v50, 0);
  v22 = 0;
  if (v21)
  {
    if (v50)
    {
      for (j = 0; j < v50; ++j)
      {
        v20(a1, 0, 0, 0, v49, v49, 1);
      }
    }

LABEL_24:
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
    v22 = *(a1 + 64) ^ 1;
  }

  return v22 & 1;
}

uint64_t re::serializeDictionary<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  v107 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v102);
  re::TypeInfo::TypeInfo(&v83, &v102.n128_i64[1]);
  v15 = re::TypeInfo::name(&v83);
  v16 = BYTE4(v84);
  if (BYTE4(v84) != 1)
  {
LABEL_10:
    if (v16 == 8)
    {
      v21 = *v15 >> 1;
      if (v21 == 0x22C6ED80D0CLL)
      {
        v24 = v15[1];
        v19 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v24 == "StringID")
        {
          goto LABEL_79;
        }

        v25 = strcmp(v24, "StringID");
        v19 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v25)
        {
          goto LABEL_79;
        }
      }

      else if (v21 == 0x134375A94D9F7110)
      {
        v22 = v15[1];
        v19 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v22 == "DynamicString")
        {
          goto LABEL_79;
        }

        v23 = strcmp(v22, "DynamicString");
        v19 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v23)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_18;
  }

  if (!re::TypeInfo::isInteger(&v83))
  {
    v16 = BYTE4(v84);
    goto LABEL_10;
  }

  v17 = *v15 >> 1;
  if (v17 <= 0x303EE8780EDLL)
  {
    if (v17 != 3393056694)
    {
      if (v17 == 0x303EE86A734)
      {
        v18 = v15[1];
        v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v18 == "uint16_t")
        {
          goto LABEL_79;
        }

        v20 = strcmp(v18, "uint16_t");
        v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v20)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_73;
    }

    v59 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v59 == "size_t")
    {
      goto LABEL_79;
    }

    v60 = "size_t";
    goto LABEL_69;
  }

  if (v17 == 0x303EE8780EELL)
  {
    v69 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
    if (v69 == "uint32_t")
    {
      goto LABEL_79;
    }

    v70 = strcmp(v69, "uint32_t");
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
    if (!v70)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  if (v17 == 0x303EE88E58DLL)
  {
    v59 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v59 == "uint64_t")
    {
      goto LABEL_79;
    }

    v60 = "uint64_t";
LABEL_69:
    v68 = strcmp(v59, v60);
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (!v68)
    {
      goto LABEL_79;
    }
  }

LABEL_73:
  v102.n128_u64[0] = 0x18E6A9A093;
  v102.n128_u64[1] = "uint8_t";
  v71 = re::StringID::operator==(v15, &v102);
  v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v71)
  {
    goto LABEL_79;
  }

  v102.n128_u64[0] = 0x16749F63A2;
  v102.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v15, &v102))
  {
    v37 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, a5, a6, a7);
    return v37 & 1;
  }

  *v97 = 3327612;
  *&v97[8] = "long";
  v72 = re::StringID::operator==(v15, v97);
  v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v72 || (v102.n128_u64[0] = 104431, v102.n128_u64[1] = "int", v73 = re::StringID::operator==(v15, &v102), v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v73) || (v102.n128_u64[0] = 109413500, v102.n128_u64[1] = "short", v74 = re::StringID::operator==(v15, &v102), v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v74))
  {
LABEL_79:
    v37 = v19(a1, a2, a3, a4, a5, a6, a7);
    return v37 & 1;
  }

LABEL_18:
  if (a5 == a6)
  {
    goto LABEL_28;
  }

  if (*a5 == *a6)
  {
    v26 = **(a5 + 2);
    v27 = **(a6 + 2);
    if (v26 == v27)
    {
      v29 = WORD1(v26) == WORD1(v27);
      v28 = (v27 ^ v26) & 0xFFFFFF00000000;
      v29 = v29 && v28 == 0;
      if (v29)
      {
        goto LABEL_28;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, v14))
  {
    goto LABEL_28;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_66:
    v37 = 0;
    return v37 & 1;
  }

LABEL_28:
  if (a7)
  {
    v30 = *(a1 + 272);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v102);
    re::TypeInfo::TypeInfo(v97, &v102.n128_i64[1]);
    re::internal::translateType(v30, v97, &v83);
    v31 = *(a1 + 272);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v102);
    re::TypeInfo::TypeInfo(v95, &v102.n128_i64[1]);
    re::internal::translateType(v31, v95, v97);
    v32 = (*(*a1 + 80))(a1, &v83);
    if (v32)
    {
      v33 = v32;
      v34 = (*(*a1 + 80))(a1, v97);
      if (v34)
      {
        v35 = v34;
        v102.n128_u64[0] = 0;
        v36 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, a3, &v102, 0);
        v37 = 0;
        if (v36)
        {
          if (v102.n128_u64[0])
          {
            v38 = 0;
            do
            {
              v39 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 1);
              v33(a1, "key", 0, 0, &v83, &v83, 1, v39);
              v35(a1, "value", 0, 0, v97, v97, 1);
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 24));
              ++v38;
            }

            while (v38 < v102.n128_u64[0]);
          }

LABEL_85:
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary((a1 + 24));
          v37 = *(a1 + 64) ^ 1;
          return v37 & 1;
        }

        return v37 & 1;
      }

      v61 = v97;
    }

    else
    {
      v61 = &v83;
    }

    goto LABEL_65;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v102);
  re::TypeInfo::TypeInfo(v95, &v102.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v102);
  re::TypeInfo::TypeInfo(v94, &v102.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v102);
  re::TypeInfo::TypeInfo(v93, &v102.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v102);
  re::TypeInfo::TypeInfo(v92, &v102.n128_i64[1]);
  re::TypeInfo::TypeInfo(v90, a5);
  v40 = (*(*a1 + 80))(a1, v95);
  if (!v40)
  {
    v61 = v95;
LABEL_65:
    v62 = re::TypeInfo::name(v61);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v63, v64, v65, v66, v67, v62[1]);
    goto LABEL_66;
  }

  v41 = v40;
  v42 = (*(*a1 + 80))(a1, v94);
  if (!v42)
  {
    v61 = v94;
    goto LABEL_65;
  }

  v43 = v42;
  v89 = (*(v91 + 96))(a4);
  v44 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, a3, &v89, 0);
  v37 = 0;
  if (v44)
  {
    if (v89)
    {
      v45 = *a5;
      v102.n128_u64[0] = 0x449AD97C4B77BED4;
      v102.n128_u64[1] = "_CompareFunc";
      v46 = re::TypeRegistry::typeID(v45, &v102, v88);
      if (v102.n128_u8[0])
      {
        if (v102.n128_u8[0])
        {
        }
      }

      if (v88[0] && (v47 = *v95[2], v102.n128_u64[0] = v88[1], v102.n128_u64[1] = v47, LODWORD(v103) = -1, (v48 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v95[0] + 768, &v102)) != 0) && (v49 = *v48) != 0)
      {
        v87 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v83 = *(a1 + 56);
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v83, v89);
        ++v86;
        v50 = (*(v91 + 120))(a4, *(a1 + 56));
        if ((*(v91 + 128))())
        {
          do
          {
            v51 = (*(v91 + 136))(v50);
            v52 = (*(v91 + 144))(v50);
            v102.n128_u64[0] = v51;
            v102.n128_u64[1] = v52;
            v53 = re::DynamicArray<re::RigNodeConstraint>::add(&v83, &v102);
          }

          while (((*(v91 + 128))(v50, v53) & 1) != 0);
        }

        v54.n128_f64[0] = (*(v91 + 152))(v50, *(a1 + 56));
        v102.n128_u64[0] = v49;
        std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v87, &v87[2 * v85], &v102, v54);
        if (v89)
        {
          v55 = 0;
          for (i = 0; i < v89; ++i)
          {
            v57 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
            if (v85 <= i)
            {
              v96 = 0;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v102 = 0u;
              v81 = v85;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v97 = 136315906;
              *&v97[4] = "operator[]";
              *&v97[12] = 1024;
              *&v97[14] = 789;
              v98 = 2048;
              v99 = i;
              v100 = 2048;
              v101 = v81;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_87:
              v96 = 0;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v102 = 0u;
              v82 = v58;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v97 = 136315906;
              *&v97[4] = "operator[]";
              *&v97[12] = 1024;
              *&v97[14] = 789;
              v98 = 2048;
              v99 = i;
              v100 = 2048;
              v101 = v82;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v41(a1, "key", 0, v87[v55], v95, v93, 0, v57);
            v58 = v85;
            if (v85 <= i)
            {
              goto LABEL_87;
            }

            v43(a1, "value", 0, v87[v55 + 1], v94, v92, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 24));
            v55 += 2;
          }
        }

        if (v83 && v87)
        {
          (*(*v83 + 40))();
        }
      }

      else
      {
        v76 = (*(v91 + 120))(a4, *(a1 + 56));
        (*(v91 + 128))();
        if (v89)
        {
          for (j = 0; j < v89; ++j)
          {
            v78 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
            v79 = (*(v91 + 136))(v76, v78);
            (v41)(a1, "key", 0, v79, v95, v93, 0);
            v80 = (*(v91 + 144))(v76);
            v43(a1, "value", 0, v80, v94, v92, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 24));
            (*(v91 + 128))(v76);
          }
        }

        (*(v91 + 152))(v76, *(a1 + 56));
      }
    }

    goto LABEL_85;
  }

  return v37 & 1;
}

uint64_t re::serializeUnion<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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
  v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 24), "tag", 0, &Tag, 0);
      if (Tag < *(*(a5 + 2) + 96))
      {
        re::TypeInfo::unionMember(a5, Tag, v21);
        if ((a1[64] & 1) == 0)
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
  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 24), "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(a6, v21[0], v23);
    if ((a1[64] & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
  v15 = a1[64] ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t **this, uint64_t a6, uint64_t a7)
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

    re::serializeDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v32, v33, v34, 0, v30, v31, 1);
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
      v45 = &unk_1F5CC4778;
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
      v45 = &unk_1F5CC4778;
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
LABEL_39:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      goto LABEL_40;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
    }

    else
    {
      v38 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v39, v40, v41, v42, v43, v38);
    }

    goto LABEL_39;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, const char *a2, uint64_t a3, float *a4, char a5)
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

uint64_t re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, const char *a2, uint64_t a3, double *a4, char a5)
{
  v15 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v15);
    }

    v9 = *a4;
    v10 = *(a1 + 168);
    if (fabs(v9) != INFINITY)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v10, v9);
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

    v14 = v11;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v10, &v14);
    if ((a5 & 2) == 0)
    {
LABEL_8:
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v56 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50), re::TypeInfo::TypeInfo(v49, &v51), v49[12] != 1) || !re::TypeInfo::isInteger(v49))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, a5);
  v19 = (*(*a1 + 80))(a1, v49);
  if (!v19)
  {
    v39 = re::TypeInfo::name(v49);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v47 + 96))(a4);
    if (v23)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v23);
      ++v53;
      v24 = (*(v47 + 120))(a4, v18);
      if ((*(v47 + 128))())
      {
        do
        {
          v25 = (*(v47 + 136))(v24);
          v26 = (*(v47 + 144))(v24);
          v55[0].n128_u64[0] = v25;
          v55[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, v55);
        }

        while (((*(v47 + 128))(v24, v27) & 1) != 0);
      }

      (*(v47 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(v54, &v54[2 * v52], v55, v30, 1, v28);
      if (v52)
      {
        v32 = v54;
        v33 = &v54[2 * v52];
        do
        {
          v34 = v32[1];
          v35 = **v32;
          if (HIDWORD(v35))
          {
            if (v35 <= 0x2540BE3FFLL)
            {
              v37 = v55;
            }

            else
            {
              v37 = std::__itoa::__base_10_u32[abi:nn200100](v55, v35 / 0x2540BE400);
              v35 %= 0x2540BE400uLL;
            }

            v37->n128_u16[0] = std::__itoa::__digits_base_10[v35 / 0x5F5E100];
            v38 = v35 % 0x5F5E100;
            v37->n128_u16[1] = std::__itoa::__digits_base_10[v38 / 0xF4240uLL];
            v38 %= 0xF4240u;
            v37->n128_u16[2] = std::__itoa::__digits_base_10[v38 / 0x2710uLL];
            v38 %= 0x2710u;
            v37->n128_u16[3] = std::__itoa::__digits_base_10[v38 / 0x64u];
            v37->n128_u16[4] = std::__itoa::__digits_base_10[v38 % 0x64u];
            v36 = &v37->n128_i8[10];
          }

          else
          {
            v36 = std::__itoa::__base_10_u32[abi:nn200100](v55, **v32);
          }

          *v36 = 0;
          v20(a1, v55, 0, v34, v49, v48, 0);
          v32 += 2;
        }

        while (v32 != v33);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47), re::TypeInfo::TypeInfo(v46, &v48), v46[12] != 1) || !re::TypeInfo::isInteger(v46))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, &v48);
  re::TypeInfo::TypeInfo(v43, a5);
  v19 = (*(*a1 + 80))(a1, v46);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v46);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v44 + 96))(a4);
    if (v23)
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v47 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v47, v23);
      ++v50;
      v24 = (*(v44 + 120))(a4, v18);
      if ((*(v44 + 128))())
      {
        do
        {
          v25 = (*(v44 + 136))(v24);
          v26 = (*(v44 + 144))(v24);
          v52[0].n128_u64[0] = v25;
          v52[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v47, v52);
        }

        while (((*(v44 + 128))(v24, v27) & 1) != 0);
      }

      (*(v44 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v49);
      if (v49)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(v51, &v51[2 * v49], v52, v30, 1, v28);
      if (v49)
      {
        v32 = v51;
        v33 = &v51[2 * v49];
        do
        {
          v34 = *v32;
          v35 = v32[1];
          v32 += 2;
          *std::__itoa::__base_10_u32[abi:nn200100](v52, *v34) = 0;
          v20(a1, v52, 0, v35, v46, v45, 0);
        }

        while (v32 != v33);
      }

      if (v47 && v51)
      {
        (*(*v47 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47), re::TypeInfo::TypeInfo(v46, &v48), v46[12] != 1) || !re::TypeInfo::isInteger(v46))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, &v48);
  re::TypeInfo::TypeInfo(v43, a5);
  v19 = (*(*a1 + 80))(a1, v46);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v46);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v44 + 96))(a4);
    if (v23)
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v47 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v47, v23);
      ++v50;
      v24 = (*(v44 + 120))(a4, v18);
      if ((*(v44 + 128))())
      {
        do
        {
          v25 = (*(v44 + 136))(v24);
          v26 = (*(v44 + 144))(v24);
          v52[0].n128_u64[0] = v25;
          v52[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v47, v52);
        }

        while (((*(v44 + 128))(v24, v27) & 1) != 0);
      }

      (*(v44 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v49);
      if (v49)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(v51, &v51[v49], v52, v30, 1, v28);
      if (v49)
      {
        v32 = v51;
        v33 = &v51[v49];
        do
        {
          v34 = v32->n128_u64[0];
          v35 = v32->n128_u64[1];
          ++v32;
          *std::__itoa::__base_10_u32[abi:nn200100](v52, *v34) = 0;
          v20(a1, v52, 0, v35, v46, v45, 0);
        }

        while (v32 != v33);
      }

      if (v47 && v51)
      {
        (*(*v47 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47), re::TypeInfo::TypeInfo(v46, &v48), v46[12] != 1) || !re::TypeInfo::isInteger(v46))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, &v48);
  re::TypeInfo::TypeInfo(v43, a5);
  v19 = (*(*a1 + 80))(a1, v46);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v46);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v44 + 96))(a4);
    if (v23)
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v47 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v47, v23);
      ++v50;
      v24 = (*(v44 + 120))(a4, v18);
      if ((*(v44 + 128))())
      {
        do
        {
          v25 = (*(v44 + 136))(v24);
          v26 = (*(v44 + 144))(v24);
          v52[0].n128_u64[0] = v25;
          v52[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v47, v52);
        }

        while (((*(v44 + 128))(v24, v27) & 1) != 0);
      }

      (*(v44 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v49);
      if (v49)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(v51, &v51[v49], v52, v30, 1, v28);
      if (v49)
      {
        v32 = v51;
        v33 = &v51[v49];
        do
        {
          v34 = v32->n128_u64[0];
          v35 = v32->n128_u64[1];
          ++v32;
          *std::__itoa::__base_10_u32[abi:nn200100](v52, *v34) = 0;
          v20(a1, v52, 0, v35, v46, v45, 0);
        }

        while (v32 != v33);
      }

      if (v47 && v51)
      {
        (*(*v47 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v58[0] = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v52), re::TypeInfo::TypeInfo(v51, &v53), v51[12] != 1) || !re::TypeInfo::isInteger(v51))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_42:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_39:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v51, &v53);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v52);
  re::TypeInfo::TypeInfo(v50, &v53);
  re::TypeInfo::TypeInfo(v48, a5);
  v19 = (*(*a1 + 80))(a1, v51);
  if (!v19)
  {
    v41 = re::TypeInfo::name(v51);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v42, v43, v44, v45, v46, v41[1]);
    goto LABEL_42;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v49 + 96))(a4);
    if (v23)
    {
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v52 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v52, v23);
      ++v55;
      v24 = (*(v49 + 120))(a4, v18);
      if ((*(v49 + 128))())
      {
        do
        {
          v25 = (*(v49 + 136))(v24);
          v26 = (*(v49 + 144))(v24);
          v57[0].n128_u64[0] = v25;
          v57[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v52, v57);
        }

        while (((*(v49 + 128))(v24, v27) & 1) != 0);
      }

      (*(v49 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v54);
      if (v54)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(v56, &v56[2 * v54], v57, v30, 1, v28);
      if (v54)
      {
        v32 = v56;
        v33 = &v56[2 * v54];
        do
        {
          v34 = **v32;
          if ((v34 & 0x8000000000000000) != 0)
          {
            v57[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v57[0].n128_u64 + 1);
          }

          else
          {
            v35 = v57;
          }

          v36 = v32[1];
          if (v58 - v35 > 19 || (v37 = (1233 * (64 - __clz(v34 | 1))) >> 12, v38 = v37 - (std::__itoa::__pow10_64[v37] > v34) + 1, v39 = v58, v58 - v35 >= v38))
          {
            if (HIDWORD(v34))
            {
              if (v34 > 0x2540BE3FFLL)
              {
                v35 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34 / 0x2540BE400);
                v34 %= 0x2540BE400uLL;
              }

              v35->n128_u16[0] = std::__itoa::__digits_base_10[v34 / 0x5F5E100];
              v40 = v34 % 0x5F5E100;
              v35->n128_u16[1] = std::__itoa::__digits_base_10[v40 / 0xF4240uLL];
              v40 %= 0xF4240u;
              v35->n128_u16[2] = std::__itoa::__digits_base_10[v40 / 0x2710uLL];
              v40 %= 0x2710u;
              v35->n128_u16[3] = std::__itoa::__digits_base_10[v40 / 0x64u];
              v35->n128_u16[4] = std::__itoa::__digits_base_10[v40 % 0x64u];
              v39 = &v35->n128_i8[10];
            }

            else
            {
              v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
            }
          }

          *v39 = 0;
          v20(a1, v57, 0, v36, v51, v50, 0);
          v32 += 2;
        }

        while (v32 != v33);
      }

      if (v52 && v56)
      {
        (*(*v52 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_39;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v57[0] = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v50, &v52), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, a5);
  v19 = (*(*a1 + 80))(a1, v50);
  if (!v19)
  {
    v40 = re::TypeInfo::name(v50);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v41, v42, v43, v44, v45, v40[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v48 + 96))(a4);
    if (v23)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v23);
      ++v54;
      v24 = (*(v48 + 120))(a4, v18);
      if ((*(v48 + 128))())
      {
        do
        {
          v25 = (*(v48 + 136))(v24);
          v26 = (*(v48 + 144))(v24);
          v56[0].n128_u64[0] = v25;
          v56[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, v56);
        }

        while (((*(v48 + 128))(v24, v27) & 1) != 0);
      }

      (*(v48 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(v55, &v55[2 * v53], v56, v30, 1, v28);
      if (v53)
      {
        v32 = v55;
        v33 = &v55[2 * v53];
        do
        {
          v34 = **v32;
          if ((v34 & 0x80000000) != 0)
          {
            v56[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v56[0].n128_u64 + 1);
          }

          else
          {
            v35 = v56;
          }

          v36 = v32[1];
          if (v57 - v35 > 9 || (v37 = (1233 * (32 - __clz(v34 | 1))) >> 12, v38 = (((__PAIR64__(v37, v34) - std::__itoa::__pow10_32[v37]) >> 32) + 1), v39 = v57, v57 - v35 >= v38))
          {
            v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
          }

          *v39 = 0;
          v20(a1, v56, 0, v36, v50, v49, 0);
          v32 += 2;
        }

        while (v32 != v33);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v57[0] = *MEMORY[0x1E69E9840];
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

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v51), re::TypeInfo::TypeInfo(v50, &v52), v50[12] != 1) || !re::TypeInfo::isInteger(v50))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, a5);
  v19 = (*(*a1 + 80))(a1, v50);
  if (!v19)
  {
    v40 = re::TypeInfo::name(v50);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v41, v42, v43, v44, v45, v40[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v48 + 96))(a4);
    if (v23)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v23);
      ++v54;
      v24 = (*(v48 + 120))(a4, v18);
      if ((*(v48 + 128))())
      {
        do
        {
          v25 = (*(v48 + 136))(v24);
          v26 = (*(v48 + 144))(v24);
          v56[0].n128_u64[0] = v25;
          v56[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, v56);
        }

        while (((*(v48 + 128))(v24, v27) & 1) != 0);
      }

      (*(v48 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(v55, &v55[v53], v56, v30, 1, v28);
      if (v53)
      {
        v32 = v55;
        v33 = &v55[v53];
        do
        {
          v34 = *v32->n128_u64[0];
          if ((v34 & 0x80000000) != 0)
          {
            v56[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v56[0].n128_u64 + 1);
          }

          else
          {
            v35 = v56;
          }

          v36 = v32->n128_u64[1];
          if (v57 - v35 > 9 || (v37 = (1233 * (32 - __clz(v34 | 1))) >> 12, v38 = (((__PAIR64__(v37, v34) - std::__itoa::__pow10_32[v37]) >> 32) + 1), v39 = v57, v57 - v35 >= v38))
          {
            v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
          }

          *v39 = 0;
          v20(a1, v56, 0, v36, v50, v49, 0);
          ++v32;
        }

        while (v32 != v33);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  v14 = *a6;
  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v15 = *(a6 + 2);
    v17 = *v15;
    if (v16 == *v15)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_14;
    }

    v14 = *a6;
    v15 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v14, v15[10], &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  v20 = re::TypeInfo::name(v49);
  if (*v20 >> 1 != 0x22C6ED80D0CLL || (v21 = v20[1], v21 != "StringID") && strcmp(v21, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_35:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_33:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v49, &v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v50);
  re::TypeInfo::TypeInfo(v48, &v51);
  re::TypeInfo::TypeInfo(v46, a5);
  v23 = (*(*a1 + 80))(a1, v49);
  if (!v23)
  {
    v38 = re::TypeInfo::name(v49);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39, v40, v41, v42, v43, v38[1]);
    goto LABEL_35;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v26 = 0;
  if (v25)
  {
    v27 = (*(v47 + 96))(a4);
    if (v27)
    {
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = v22;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v50, v27);
      ++v53;
      v28 = (*(v47 + 120))(a4, v22);
      if ((*(v47 + 128))())
      {
        do
        {
          v29 = (*(v47 + 136))(v28);
          v30 = (*(v47 + 144))(v28);
          v45.n128_u64[0] = v29;
          v45.n128_u64[1] = v30;
          v31 = re::DynamicArray<re::RigNodeConstraint>::add(&v50, &v45);
        }

        while (((*(v47 + 128))(v28, v31) & 1) != 0);
      }

      (*(v47 + 152))(v28, v22);
      v32 = 126 - 2 * __clz(v52);
      if (v52)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(v54, &v54[2 * v52], &v45, v33, 1);
      if (v52)
      {
        v34 = v54;
        v35 = &v54[2 * v52];
        do
        {
          v36 = *v34;
          if (*(*v34 + 8))
          {
            v37 = *(v36 + 16);
          }

          else
          {
            v37 = v36 + 9;
          }

          v24(a1, v37, 0, v34[1], v49, v48, 0);
          v34 += 2;
        }

        while (v34 != v35);
      }

      if (v50 && v54)
      {
        (*(*v50 + 40))();
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_33;
  }

  return v26 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  v14 = *a6;
  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v15 = *(a6 + 2);
    v17 = *v15;
    if (v16 == *v15)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_14;
    }

    v14 = *a6;
    v15 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v14, v15[10], &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  v20 = re::TypeInfo::name(v50);
  if (*v20 >> 1 != 0x134375A94D9F7110 || (v21 = v20[1], v21 != "DynamicString") && strcmp(v21, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_30:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v50, &v52);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v51);
  re::TypeInfo::TypeInfo(v49, &v52);
  re::TypeInfo::TypeInfo(v47, a5);
  v23 = (*(*a1 + 80))(a1, v50);
  if (!v23)
  {
    v39 = re::TypeInfo::name(v50);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40, v41, v42, v43, v44, v39[1]);
    goto LABEL_32;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v26 = 0;
  if (v25)
  {
    v27 = (*(v48 + 96))(a4);
    if (v27)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v51 = v22;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v51, v27);
      ++v54;
      v28 = (*(v48 + 120))(a4, v22);
      if ((*(v48 + 128))())
      {
        do
        {
          v29 = (*(v48 + 136))(v28);
          v30 = (*(v48 + 144))(v28);
          v46.n128_u64[0] = v29;
          v46.n128_u64[1] = v30;
          v31 = re::DynamicArray<re::RigNodeConstraint>::add(&v51, &v46);
        }

        while (((*(v48 + 128))(v28, v31) & 1) != 0);
      }

      (*(v48 + 152))(v28, v22);
      v33 = 126 - 2 * __clz(v53);
      if (v53)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(v55, &v55[v53], &v46, v34, 1, v32);
      if (v53)
      {
        v35 = v55;
        v36 = &v55[v53];
        do
        {
          v38 = v35->n128_u64[0];
          v37 = v35->n128_u64[1];
          ++v35;
          v24(a1, *(v38 + 8), 0, v37, v50, v49, 0);
        }

        while (v35 != v36);
      }

      if (v51 && v55)
      {
        (*(*v51 + 40))();
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_30;
  }

  return v26 & 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(unint64_t **a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u64[0];
        v44 = a2 - 1;
        if (*v48 >= **v12)
        {
          return result;
        }

LABEL_77:
        v72 = *v12;
        *v12 = *v44;
        result = v72;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 2);
      v45 = a2[-1].n128_u64[0];
      v44 = a2 - 1;
      v46 = *v12[2];
      v47 = *v45;
      if (v46 < **v12)
      {
        if (v47 < v46)
        {
          goto LABEL_77;
        }

        v71 = *v12;
        *v12 = *v43;
        result = v71;
        *v43 = v71;
        if (*v44->n128_u64[0] >= *v12[2])
        {
          return result;
        }

        result = *v43;
        *v43 = *v44;
LABEL_78:
        *v44 = result;
        return result;
      }

      if (v47 >= v46)
      {
        return result;
      }

      result = *v43;
      *v43 = *v44;
      *v44 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,0>(v12, v12 + 1, v12 + 4, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,re::Pair<unsigned long long const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = v16;
    v18 = **v9;
    if (v15 >= 0x81)
    {
      v19 = **v16;
      if (v19 >= **v12)
      {
        if (v18 < v19)
        {
          v56 = *v16;
          *v16 = *v9;
          *v9 = v56;
          if (**v16 < **v12)
          {
            v57 = *v12;
            *v12 = *v16;
            *v16 = v57;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v60 = *v12;
          *v12 = *v16;
          *v16 = v60;
          if (**v9 >= **v16)
          {
            goto LABEL_28;
          }

          v54 = *v16;
          *v16 = *v9;
        }

        else
        {
          v54 = *v12;
          *v12 = *v9;
        }

        *v9 = v54;
      }

LABEL_28:
      v21 = (v12 + 2);
      v22 = (v16 - 2);
      v23 = **(v16 - 2);
      v24 = *v10->n128_u64[0];
      if (v23 >= *v12[2])
      {
        if (v24 < v23)
        {
          v61 = *v22;
          *v22 = *v10;
          *v10 = v61;
          if (*v22->n128_u64[0] < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10->n128_u64[0] >= *v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v63 = *v22;
          *v22 = *v10;
          v25 = v63;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 4);
      v30 = v16[2];
      v29 = v16 + 2;
      v31 = *v30;
      v32 = *v11->n128_u64[0];
      if (*v30 >= *v12[4])
      {
        if (v32 < v31)
        {
          v64 = *v29;
          *v29 = *v11;
          *v11 = v64;
          if (**v29 < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11->n128_u64[0] >= **v29)
          {
            goto LABEL_49;
          }

          v65 = *v29;
          *v29 = *v11;
          v33 = v65;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = **v17;
      v37 = **v29;
      if (v36 >= *v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v67 = *v17;
          *v17 = *v29;
          *v29 = v67;
          if (**v17 < *v22->n128_u64[0])
          {
            v68 = *v22;
            *v22 = *v17;
            *v17 = v68;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v69 = *v22;
        *v22 = *v17;
        *v17 = v69;
        if (**v29 >= **v17)
        {
LABEL_58:
          v70 = *v12;
          *v12 = *v17;
          *v17 = v70;
          goto LABEL_59;
        }

        v66 = *v17;
        *v17 = *v29;
      }

      else
      {
        v66 = *v22;
        *v22 = *v29;
      }

      *v29 = v66;
      goto LABEL_58;
    }

    v20 = **v12;
    if (v20 >= **v17)
    {
      if (v18 < v20)
      {
        v58 = *v12;
        *v12 = *v9;
        *v9 = v58;
        if (**v12 < **v17)
        {
          v59 = *v17;
          *v17 = *v12;
          *v12 = v59;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v55 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v55;
        goto LABEL_59;
      }

      v62 = *v17;
      *v17 = *v12;
      *v12 = v62;
      if (**v9 < **v12)
      {
        v55 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && **(v12 - 2) >= **v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v12, v38, v39);
    v12 = v38 + 2;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>((v38 + 2), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = v38 + 2;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 2);
  v49 = (v12 + 4);
  v50 = v12[4];
  v51 = *v12[2];
  v52 = *v50;
  if (v51 >= **v12)
  {
    if (v52 < v51)
    {
      result = *v43;
      *v43 = *v49;
      *v49 = result;
      if (*v12[2] < **v12)
      {
        v74 = *v12;
        *v12 = *v43;
        result = v74;
        *v43 = v74;
      }
    }
  }

  else
  {
    if (v52 < v51)
    {
      v73 = *v12;
      *v12 = *v49;
      result = v73;
      goto LABEL_100;
    }

    v75 = *v12;
    *v12 = *v43;
    result = v75;
    *v43 = v75;
    if (*v50 < *v12[2])
    {
      result = *v43;
      *v43 = *v49;
LABEL_100:
      *v49 = result;
    }
  }

  if (**v9 >= *v49->n128_u64[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (*v49->n128_u64[0] >= *v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v49;
  *v49 = result;
LABEL_104:
  if (*v12[2] < **v12)
  {
    v76 = *v12;
    *v12 = *v43;
    result = v76;
    *v43 = v76;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*v4 < **result)
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 32);
          v6 -= 16;
        }

        while (*v4 < *v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unint64_t **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(unint64_t **a1, unint64_t **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unint64_t **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(unint64_t **a1, unint64_t **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = **(a1 + 16);
      v9 = *v7;
      if (v8 < **a1)
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= **(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (**(a1 + 16) < **a1)
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    v22 = **(a1 + 16);
    v23 = *v19;
    if (v22 >= **a1)
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= **(a1 + 16))
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= **a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *a1;
  v15 = **(a1 + 16);
  v16 = *v12;
  if (v15 >= **a1)
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= **(a1 + 16))
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_i64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1 + v37 + 16);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

unint64_t **std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,re::Pair<unsigned long long const*,void *,true>*>(unint64_t **a1, unint64_t **a2, unint64_t **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(a1, (v17 + 2), a4, ((v17 + 2) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(unsigned int **a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u64[0];
        v44 = a2 - 1;
        if (*v48 >= **v12)
        {
          return result;
        }

LABEL_77:
        v72 = *v12;
        *v12 = *v44;
        result = v72;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 2);
      v45 = a2[-1].n128_u64[0];
      v44 = a2 - 1;
      v46 = *v12[2];
      v47 = *v45;
      if (v46 < **v12)
      {
        if (v47 < v46)
        {
          goto LABEL_77;
        }

        v71 = *v12;
        *v12 = *v43;
        result = v71;
        *v43 = v71;
        if (*v44->n128_u64[0] >= *v12[2])
        {
          return result;
        }

        result = *v43;
        *v43 = *v44;
LABEL_78:
        *v44 = result;
        return result;
      }

      if (v47 >= v46)
      {
        return result;
      }

      result = *v43;
      *v43 = *v44;
      *v44 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,0>(v12, v12 + 1, v12 + 4, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,re::Pair<unsigned int const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = v16;
    v18 = **v9;
    if (v15 >= 0x81)
    {
      v19 = **v16;
      if (v19 >= **v12)
      {
        if (v18 < v19)
        {
          v56 = *v16;
          *v16 = *v9;
          *v9 = v56;
          if (**v16 < **v12)
          {
            v57 = *v12;
            *v12 = *v16;
            *v16 = v57;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v60 = *v12;
          *v12 = *v16;
          *v16 = v60;
          if (**v9 >= **v16)
          {
            goto LABEL_28;
          }

          v54 = *v16;
          *v16 = *v9;
        }

        else
        {
          v54 = *v12;
          *v12 = *v9;
        }

        *v9 = v54;
      }

LABEL_28:
      v21 = (v12 + 2);
      v22 = (v16 - 2);
      v23 = **(v16 - 2);
      v24 = *v10->n128_u64[0];
      if (v23 >= *v12[2])
      {
        if (v24 < v23)
        {
          v61 = *v22;
          *v22 = *v10;
          *v10 = v61;
          if (*v22->n128_u64[0] < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10->n128_u64[0] >= *v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v63 = *v22;
          *v22 = *v10;
          v25 = v63;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 4);
      v30 = v16[2];
      v29 = v16 + 2;
      v31 = *v30;
      v32 = *v11->n128_u64[0];
      if (*v30 >= *v12[4])
      {
        if (v32 < v31)
        {
          v64 = *v29;
          *v29 = *v11;
          *v11 = v64;
          if (**v29 < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11->n128_u64[0] >= **v29)
          {
            goto LABEL_49;
          }

          v65 = *v29;
          *v29 = *v11;
          v33 = v65;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = **v17;
      v37 = **v29;
      if (v36 >= *v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v67 = *v17;
          *v17 = *v29;
          *v29 = v67;
          if (**v17 < *v22->n128_u64[0])
          {
            v68 = *v22;
            *v22 = *v17;
            *v17 = v68;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v69 = *v22;
        *v22 = *v17;
        *v17 = v69;
        if (**v29 >= **v17)
        {
LABEL_58:
          v70 = *v12;
          *v12 = *v17;
          *v17 = v70;
          goto LABEL_59;
        }

        v66 = *v17;
        *v17 = *v29;
      }

      else
      {
        v66 = *v22;
        *v22 = *v29;
      }

      *v29 = v66;
      goto LABEL_58;
    }

    v20 = **v12;
    if (v20 >= **v17)
    {
      if (v18 < v20)
      {
        v58 = *v12;
        *v12 = *v9;
        *v9 = v58;
        if (**v12 < **v17)
        {
          v59 = *v17;
          *v17 = *v12;
          *v12 = v59;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v55 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v55;
        goto LABEL_59;
      }

      v62 = *v17;
      *v17 = *v12;
      *v12 = v62;
      if (**v9 < **v12)
      {
        v55 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && **(v12 - 2) >= **v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v12, v38, v39);
    v12 = v38 + 2;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>((v38 + 2), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = v38 + 2;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 2);
  v49 = (v12 + 4);
  v50 = v12[4];
  v51 = *v12[2];
  v52 = *v50;
  if (v51 >= **v12)
  {
    if (v52 < v51)
    {
      result = *v43;
      *v43 = *v49;
      *v49 = result;
      if (*v12[2] < **v12)
      {
        v74 = *v12;
        *v12 = *v43;
        result = v74;
        *v43 = v74;
      }
    }
  }

  else
  {
    if (v52 < v51)
    {
      v73 = *v12;
      *v12 = *v49;
      result = v73;
      goto LABEL_100;
    }

    v75 = *v12;
    *v12 = *v43;
    result = v75;
    *v43 = v75;
    if (*v50 < *v12[2])
    {
      result = *v43;
      *v43 = *v49;
LABEL_100:
      *v49 = result;
    }
  }

  if (**v9 >= *v49->n128_u64[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (*v49->n128_u64[0] >= *v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v49;
  *v49 = result;
LABEL_104:
  if (*v12[2] < **v12)
  {
    v76 = *v12;
    *v12 = *v43;
    result = v76;
    *v43 = v76;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*v4 < **result)
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 32);
          v6 -= 16;
        }

        while (*v4 < *v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unsigned int **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(unsigned int **a1, unsigned int **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unsigned int **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(unsigned int **a1, unsigned int **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = **(a1 + 16);
      v9 = *v7;
      if (v8 < **a1)
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= **(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (**(a1 + 16) < **a1)
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    v22 = **(a1 + 16);
    v23 = *v19;
    if (v22 >= **a1)
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= **(a1 + 16))
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= **a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *a1;
  v15 = **(a1 + 16);
  v16 = *v12;
  if (v15 >= **a1)
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= **(a1 + 16))
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_i64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1 + v37 + 16);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

unsigned int **std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,re::Pair<unsigned int const*,void *,true>*>(unsigned int **a1, unsigned int **a2, unsigned int **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(a1, (v17 + 2), a4, ((v17 + 2) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(__n128 *a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 2);
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = *(a2 - 2);
        v44 = (a2 - 2);
        if (*v48 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v72 = *v12;
        *v12 = *v44;
        result = v72;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = v12 + 1;
      v45 = *(a2 - 2);
      v44 = (a2 - 2);
      v46 = *v12[1].n128_u64[0];
      v47 = *v45;
      if (v46 < *v12->n128_u64[0])
      {
        if (v47 < v46)
        {
          goto LABEL_77;
        }

        v71 = *v12;
        *v12 = *v43;
        result = v71;
        *v43 = v71;
        if (*v44->n128_u64[0] >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v43;
        *v43 = *v44;
LABEL_78:
        *v44 = result;
        return result;
      }

      if (v47 >= v46)
      {
        return result;
      }

      result = *v43;
      *v43 = *v44;
      *v44 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,re::Pair<unsigned short const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v56 = *v16;
          *v16 = *v9;
          *v9 = v56;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v57 = *v12;
            *v12 = *v16;
            *v16 = v57;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v60 = *v12;
          *v12 = *v16;
          *v16 = v60;
          if (*v9->n128_u64[0] >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v54 = *v16;
          *v16 = *v9;
        }

        else
        {
          v54 = *v12;
          *v12 = *v9;
        }

        *v9 = v54;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = &v16[-1];
      v23 = *v16[-1].n128_u64[0];
      v24 = **v10;
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v61 = *v22;
          *v22 = *v10;
          *v10 = v61;
          if (**v22 < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (**v10 >= **v22)
          {
            goto LABEL_40;
          }

          v63 = *v22;
          *v22 = *v10;
          v25 = v63;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = **v11;
      if (v31 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v64 = *v29;
          *v29 = *v11;
          *v11 = v64;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (**v11 >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v65 = *v29;
          *v29 = *v11;
          v33 = v65;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= **v22)
      {
        if (v37 < v36)
        {
          v67 = *v17;
          *v17 = *v29;
          *v29 = v67;
          if (*v17->n128_u64[0] < **v22)
          {
            v68 = *v22;
            *v22 = *v17;
            *v17 = v68;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v69 = *v22;
        *v22 = *v17;
        *v17 = v69;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v70 = *v12;
          *v12 = *v17;
          *v17 = v70;
          goto LABEL_59;
        }

        v66 = *v17;
        *v17 = *v29;
      }

      else
      {
        v66 = *v22;
        *v22 = *v29;
      }

      *v29 = v66;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v58 = *v12;
        *v12 = *v9;
        *v9 = v58;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v59 = *v17;
          *v17 = *v12;
          *v12 = v59;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v55 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v55;
        goto LABEL_59;
      }

      v62 = *v17;
      *v17 = *v12;
      *v12 = v62;
      if (*v9->n128_u64[0] < *v12->n128_u64[0])
      {
        v55 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v12, v38, v39);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v38 + 1, a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = v12 + 1;
  v49 = v12 + 2;
  v50 = v12[2].n128_u64[0];
  v51 = *v12[1].n128_u64[0];
  v52 = *v50;
  if (v51 >= *v12->n128_u64[0])
  {
    if (v52 < v51)
    {
      result = *v43;
      *v43 = *v49;
      *v49 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v74 = *v12;
        *v12 = *v43;
        result = v74;
        *v43 = v74;
      }
    }
  }

  else
  {
    if (v52 < v51)
    {
      v73 = *v12;
      *v12 = *v49;
      result = v73;
      goto LABEL_100;
    }

    v75 = *v12;
    *v12 = *v43;
    result = v75;
    *v43 = v75;
    if (*v50 < *v12[1].n128_u64[0])
    {
      result = *v43;
      *v43 = *v49;
LABEL_100:
      *v49 = result;
    }
  }

  if (*v9->n128_u64[0] >= *v49->n128_u64[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (*v49->n128_u64[0] >= *v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v49;
  *v49 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v76 = *v12;
    *v12 = *v43;
    result = v76;
    *v43 = v76;
  }

  return result;
}

unsigned __int16 **std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(unsigned __int16 **result, unsigned __int16 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 **std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(unsigned __int16 **result, unsigned __int16 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[2];
      if (*v4 < **result)
      {
        v5 = result[3];
        v6 = v3;
        do
        {
          *v6 = *(v6 - 1);
          v7 = *(v6 - 4);
          v6 -= 2;
        }

        while (*v4 < *v7);
        *v6 = v4;
        v6[1] = v5;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unsigned __int16 **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(unsigned __int16 **a1, unsigned __int16 **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unsigned __int16 **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(unsigned __int16 **a1, unsigned __int16 **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = &a1[3];
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    if (**v32 < *v11->n128_u64[0])
    {
      v36 = v32[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

unsigned __int16 **std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,re::Pair<unsigned short const*,void *,true>*>(unsigned __int16 **a1, unsigned __int16 **a2, unsigned __int16 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(a1, (v17 + 2), a4, ((v17 + 2) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(__n128 *a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 2);
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = *(a2 - 2);
        v44 = (a2 - 2);
        if (*v48 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v72 = *v12;
        *v12 = *v44;
        result = v72;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = v12 + 1;
      v45 = *(a2 - 2);
      v44 = (a2 - 2);
      v46 = *v12[1].n128_u64[0];
      v47 = *v45;
      if (v46 < *v12->n128_u64[0])
      {
        if (v47 < v46)
        {
          goto LABEL_77;
        }

        v71 = *v12;
        *v12 = *v43;
        result = v71;
        *v43 = v71;
        if (*v44->n128_u64[0] >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v43;
        *v43 = *v44;
LABEL_78:
        *v44 = result;
        return result;
      }

      if (v47 >= v46)
      {
        return result;
      }

      result = *v43;
      *v43 = *v44;
      *v44 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,re::Pair<unsigned char const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v56 = *v16;
          *v16 = *v9;
          *v9 = v56;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v57 = *v12;
            *v12 = *v16;
            *v16 = v57;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v60 = *v12;
          *v12 = *v16;
          *v16 = v60;
          if (*v9->n128_u64[0] >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v54 = *v16;
          *v16 = *v9;
        }

        else
        {
          v54 = *v12;
          *v12 = *v9;
        }

        *v9 = v54;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = &v16[-1];
      v23 = *v16[-1].n128_u64[0];
      v24 = **v10;
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v61 = *v22;
          *v22 = *v10;
          *v10 = v61;
          if (**v22 < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (**v10 >= **v22)
          {
            goto LABEL_40;
          }

          v63 = *v22;
          *v22 = *v10;
          v25 = v63;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = **v11;
      if (v31 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v64 = *v29;
          *v29 = *v11;
          *v11 = v64;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (**v11 >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v65 = *v29;
          *v29 = *v11;
          v33 = v65;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= **v22)
      {
        if (v37 < v36)
        {
          v67 = *v17;
          *v17 = *v29;
          *v29 = v67;
          if (*v17->n128_u64[0] < **v22)
          {
            v68 = *v22;
            *v22 = *v17;
            *v17 = v68;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v69 = *v22;
        *v22 = *v17;
        *v17 = v69;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v70 = *v12;
          *v12 = *v17;
          *v17 = v70;
          goto LABEL_59;
        }

        v66 = *v17;
        *v17 = *v29;
      }

      else
      {
        v66 = *v22;
        *v22 = *v29;
      }

      *v29 = v66;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v58 = *v12;
        *v12 = *v9;
        *v9 = v58;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v59 = *v17;
          *v17 = *v12;
          *v12 = v59;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v55 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v55;
        goto LABEL_59;
      }

      v62 = *v17;
      *v17 = *v12;
      *v12 = v62;
      if (*v9->n128_u64[0] < *v12->n128_u64[0])
      {
        v55 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v12, v38, v39);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v38 + 1, a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = v12 + 1;
  v49 = v12 + 2;
  v50 = v12[2].n128_u64[0];
  v51 = *v12[1].n128_u64[0];
  v52 = *v50;
  if (v51 >= *v12->n128_u64[0])
  {
    if (v52 < v51)
    {
      result = *v43;
      *v43 = *v49;
      *v49 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v74 = *v12;
        *v12 = *v43;
        result = v74;
        *v43 = v74;
      }
    }
  }

  else
  {
    if (v52 < v51)
    {
      v73 = *v12;
      *v12 = *v49;
      result = v73;
      goto LABEL_100;
    }

    v75 = *v12;
    *v12 = *v43;
    result = v75;
    *v43 = v75;
    if (*v50 < *v12[1].n128_u64[0])
    {
      result = *v43;
      *v43 = *v49;
LABEL_100:
      *v49 = result;
    }
  }

  if (*v9->n128_u64[0] >= *v49->n128_u64[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (*v49->n128_u64[0] >= *v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v49;
  *v49 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v76 = *v12;
    *v12 = *v43;
    result = v76;
    *v43 = v76;
  }

  return result;
}

unsigned __int8 **std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned __int8 **std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[2];
      if (*v4 < **result)
      {
        v5 = result[3];
        v6 = v3;
        do
        {
          *v6 = *(v6 - 1);
          v7 = *(v6 - 4);
          v6 -= 2;
        }

        while (*v4 < *v7);
        *v6 = v4;
        v6[1] = v5;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unsigned __int8 **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unsigned __int8 **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = &a1[3];
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    if (**v32 < *v11->n128_u64[0])
    {
      v36 = v32[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

unsigned __int8 **std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,re::Pair<unsigned char const*,void *,true>*>(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(a1, (v17 + 2), a4, ((v17 + 2) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(uint64_t **a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u64[0];
        v44 = a2 - 1;
        if (*v48 >= **v12)
        {
          return result;
        }

LABEL_77:
        v72 = *v12;
        *v12 = *v44;
        result = v72;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 2);
      v45 = a2[-1].n128_u64[0];
      v44 = a2 - 1;
      v46 = *v12[2];
      v47 = *v45;
      if (v46 < **v12)
      {
        if (v47 < v46)
        {
          goto LABEL_77;
        }

        v71 = *v12;
        *v12 = *v43;
        result = v71;
        *v43 = v71;
        if (*v44->n128_u64[0] >= *v12[2])
        {
          return result;
        }

        result = *v43;
        *v43 = *v44;
LABEL_78:
        *v44 = result;
        return result;
      }

      if (v47 >= v46)
      {
        return result;
      }

      result = *v43;
      *v43 = *v44;
      *v44 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,0>(v12, v12 + 1, v12 + 4, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,re::Pair<long long const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = v16;
    v18 = **v9;
    if (v15 >= 0x81)
    {
      v19 = **v16;
      if (v19 >= **v12)
      {
        if (v18 < v19)
        {
          v56 = *v16;
          *v16 = *v9;
          *v9 = v56;
          if (**v16 < **v12)
          {
            v57 = *v12;
            *v12 = *v16;
            *v16 = v57;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v60 = *v12;
          *v12 = *v16;
          *v16 = v60;
          if (**v9 >= **v16)
          {
            goto LABEL_28;
          }

          v54 = *v16;
          *v16 = *v9;
        }

        else
        {
          v54 = *v12;
          *v12 = *v9;
        }

        *v9 = v54;
      }

LABEL_28:
      v21 = (v12 + 2);
      v22 = (v16 - 2);
      v23 = **(v16 - 2);
      v24 = *v10->n128_u64[0];
      if (v23 >= *v12[2])
      {
        if (v24 < v23)
        {
          v61 = *v22;
          *v22 = *v10;
          *v10 = v61;
          if (*v22->n128_u64[0] < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10->n128_u64[0] >= *v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v63 = *v22;
          *v22 = *v10;
          v25 = v63;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 4);
      v30 = v16[2];
      v29 = v16 + 2;
      v31 = *v30;
      v32 = *v11->n128_u64[0];
      if (*v30 >= *v12[4])
      {
        if (v32 < v31)
        {
          v64 = *v29;
          *v29 = *v11;
          *v11 = v64;
          if (**v29 < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11->n128_u64[0] >= **v29)
          {
            goto LABEL_49;
          }

          v65 = *v29;
          *v29 = *v11;
          v33 = v65;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = **v17;
      v37 = **v29;
      if (v36 >= *v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v67 = *v17;
          *v17 = *v29;
          *v29 = v67;
          if (**v17 < *v22->n128_u64[0])
          {
            v68 = *v22;
            *v22 = *v17;
            *v17 = v68;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v69 = *v22;
        *v22 = *v17;
        *v17 = v69;
        if (**v29 >= **v17)
        {
LABEL_58:
          v70 = *v12;
          *v12 = *v17;
          *v17 = v70;
          goto LABEL_59;
        }

        v66 = *v17;
        *v17 = *v29;
      }

      else
      {
        v66 = *v22;
        *v22 = *v29;
      }

      *v29 = v66;
      goto LABEL_58;
    }

    v20 = **v12;
    if (v20 >= **v17)
    {
      if (v18 < v20)
      {
        v58 = *v12;
        *v12 = *v9;
        *v9 = v58;
        if (**v12 < **v17)
        {
          v59 = *v17;
          *v17 = *v12;
          *v12 = v59;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v55 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v55;
        goto LABEL_59;
      }

      v62 = *v17;
      *v17 = *v12;
      *v12 = v62;
      if (**v9 < **v12)
      {
        v55 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && **(v12 - 2) >= **v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v12, v38, v39);
    v12 = v38 + 2;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>((v38 + 2), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = v38 + 2;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 2);
  v49 = (v12 + 4);
  v50 = v12[4];
  v51 = *v12[2];
  v52 = *v50;
  if (v51 >= **v12)
  {
    if (v52 < v51)
    {
      result = *v43;
      *v43 = *v49;
      *v49 = result;
      if (*v12[2] < **v12)
      {
        v74 = *v12;
        *v12 = *v43;
        result = v74;
        *v43 = v74;
      }
    }
  }

  else
  {
    if (v52 < v51)
    {
      v73 = *v12;
      *v12 = *v49;
      result = v73;
      goto LABEL_100;
    }

    v75 = *v12;
    *v12 = *v43;
    result = v75;
    *v43 = v75;
    if (*v50 < *v12[2])
    {
      result = *v43;
      *v43 = *v49;
LABEL_100:
      *v49 = result;
    }
  }

  if (**v9 >= *v49->n128_u64[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (*v49->n128_u64[0] >= *v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v49;
  *v49 = result;
LABEL_104:
  if (*v12[2] < **v12)
  {
    v76 = *v12;
    *v12 = *v43;
    result = v76;
    *v43 = v76;
  }

  return result;
}