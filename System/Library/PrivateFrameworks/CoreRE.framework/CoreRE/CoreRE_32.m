void re::internal::PushLoadManager::updateAssetWithPayload(uint64_t a1, char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  re::AssetManager::assetHandle(*(a1 + 72), a2, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = *(v11 + 24);
    os_unfair_lock_lock((v11 + 512));
    re::AssetManager::processUpdatedResourcePayload_entryStateLocked(v7, v6, a3, v8);
    os_unfair_lock_unlock(v6 + 128);
  }

  else
  {
    v9 = *re::assetsLogObjects(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Attempted to update asset with payload for asset path '%s', but asset handle is null", buf, 0xCu);
    }
  }

  re::AssetHandle::~AssetHandle(&v10);
}

void re::internal::PushLoadManager::pushLoadAssetWithPayload(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, unint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v63[6] = *MEMORY[0x1E69E9840];
  if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
  {
    v16 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "PushLoadManager: received push load asset with payload for '%llu'", buf, 0xCu);
    }
  }

  v17 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 24, a2);
  if (v17)
  {
    v18 = *(v17 + 8);
    if (v18)
    {
      v18 = re::internal::AssetEntry::fromPeerID(v18, buf);
    }

    v19 = *re::assetsLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "PushLoadManager: received push load asset with payload for '%llu', but asset already exists in pushLoadedAssets", buf, 0xCu);
    }
  }

  else
  {
    v20 = re::internal::AssetTypeRegistry::assetTypeWithName(*(*(a1 + 72) + 1808), a3);
    if (v20)
    {
      v21 = v20;
      memset(buf, 0, sizeof(buf));
      v22 = re::DynamicString::setCapacity(buf, 0);
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0;
      v62 = 0;
      memset(v63, 0, 40);
      v23 = re::DynamicString::setCapacity(&v63[1], 0);
      v24 = *v21;
      re::NetworkAssetLoadDescriptor::init(buf, a2, v53);
      if (*&v53[0])
      {
        if (BYTE8(v53[0]))
        {
          (*(**&v53[0] + 40))();
        }

        memset(v53, 0, sizeof(v53));
      }

      v25 = *(a1 + 72);
      os_unfair_lock_lock(v25 + 32);
      re::AssetManager::assetHandle_assetTablesLocked(v25, buf, a2);
      os_unfair_lock_unlock(v25 + 32);
      v26 = v52;
      os_unfair_lock_lock(v52 + 128);
      re::internal::AssetEntry::setOwnerPeerID(v52, a4);
      re::internal::AssetEntry::setFromPeerID(v52, a5);
      atomic_store(a6, v52 + 204);
      if (a8)
      {
        *(v52 + 272) = 1;
      }

      v49 = 0uLL;
      v50 = 0;
      re::AssetHandle::operator=(&v49, &v51);
      memset(v54, 0, 24);
      v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      v28 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v54, a1 + 24, a2, v27 ^ (v27 >> 31));
      if (*&v54[12] == 0x7FFFFFFF)
      {
        v28 = re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 24, *&v54[8], *v54);
        *(v28 + 8) = a2;
        *(v28 + 16) = v49;
        v49 = 0uLL;
        *(v28 + 32) = v50;
        v50 = 0;
        ++*(a1 + 64);
      }

      if (atomic_load(v52 + 224))
      {
        v30 = *re::assetsLogObjects(v28);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = atomic_load(v52 + 224);
          *v54 = 134218240;
          *&v54[4] = a2;
          *&v54[12] = 1024;
          *&v54[14] = v31;
          _os_log_debug_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEBUG, "PushLoadManager: received push load asset with payload for '%llu', but load state is not unloaded (%d).", v54, 0x12u);
        }
      }

      else
      {
        v34 = *(a1 + 80);
        v48 = 0;
        if (v34)
        {
          if (*(v52 + 136))
          {
            v35 = *(v52 + 18);
          }

          else
          {
            v35 = v52 + 137;
          }

          (*(*v34 + 80))(&v47, v34, a5, v54);
          v37 = v47;
          v47 = 0;
          v48 = v37;
          re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v47);
          if (*v54 && (v54[8] & 1) != 0)
          {
            (*(**v54 + 40))();
          }
        }

        else
        {
          v36 = *re::assetsLogObjects(v28);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v54 = 0;
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "PushLoadManager: m_resourceFetchService is null in pushLoadAssetWithPayload!", v54, 2u);
          }

          v37 = 0;
        }

        v38 = v52;
        v39 = *(v52 + 3);
        v45[0] = *a7;
        v46 = *(a7 + 8);
        v44 = v37;
        if (v37)
        {
          v40 = (v37 + 2);
          if (!atomic_load(v37 + 2))
          {
            v43 = atomic_load(v40);
            re::internal::refCountCheckFailHandler(1, v37, v43);
          }

          add_explicit = atomic_fetch_add_explicit(v40, 1u, memory_order_relaxed);
          if (add_explicit - 0x100000 <= 0xFFEFFFFE)
          {
            re::internal::refCountCheckFailHandler(1, v37, (add_explicit + 1));
          }
        }

        re::AssetManager::loadAssetFromPayload_entryStateLocked(v39, v38, v45, &v44);
        re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v44);

        re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v48);
      }

      re::AssetHandle::~AssetHandle(&v49);
      os_unfair_lock_unlock(v26 + 128);
      re::AssetHandle::~AssetHandle(&v51);
      if (v63[1])
      {
        if (v63[2])
        {
          (*(*v63[1] + 40))();
        }

        memset(&v63[1], 0, 32);
      }

      if (*(&v60 + 1))
      {
        if (v63[0])
        {
          (*(**(&v60 + 1) + 40))();
        }

        v63[0] = 0;
        v61 = 0uLL;
        *(&v60 + 1) = 0;
        ++v62;
      }

      if (v56)
      {
        if (v60)
        {
          (*(*v56 + 40))();
        }

        *&v60 = 0;
        v57 = 0;
        v58 = 0;
        v56 = 0;
        ++v59;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }
    }

    else
    {
      v32 = *re::assetsLogObjects(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = a3;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Could not find asset type named '%s' in the type registry. Aborting push-load for asset %llu.", buf, 0x16u);
      }

      v33 = *(a1 + 80);
      if (v33)
      {
        (*(*v33 + 128))(v33, a2, a5, 3, 0, 200);
      }
    }
  }
}

atomic_uint **re::SharedPtr<re::ResourceRequest>::~SharedPtr(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    v4 = (add - 1);
    if (add - 1048578 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(0, v2, v4);
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else if (add != 1)
    {
LABEL_5:
      *a1 = 0;
      return a1;
    }

    (*(*v2 + 16))(v2);
    goto LABEL_5;
  }

  return a1;
}

void re::internal::PushLoadManager::releaseAsset(re::internal::PushLoadManager *this, unint64_t a2)
{
  v4 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 24, a2);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      re::internal::AssetEntry::fromPeerID(v5, &v6);
    }

    re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 24, a2);
  }
}

void re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 48 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 48 * v13) = *(v5 + 48 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      *v6 = v8 & 0x7FFFFFFF;
      re::AssetHandle::~AssetHandle((v6 + 4));
      v5 = *(a1 + 16);
      v8 = *(v5 + 48 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 48 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

uint64_t re::internal::PushLoadManager::onPeerDisconnected(re::internal::PushLoadManager *this, uint64_t a2)
{
  v22 = 0;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  v21 = 0;
  v4 = *(this + 14);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 5);
    while (1)
    {
      v7 = *v6;
      v6 += 12;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(this + 14);
    do
    {
      v9 = *(this + 5) + 48 * v5;
      v10 = *(v9 + 24);
      if (v10)
      {
        re::internal::AssetEntry::fromPeerID(v10, v17);
        if (v17[0] == 1 && v18 == a2)
        {
          re::DynamicArray<re::TransitionCondition *>::add(v19, (v9 + 8));
        }

        v8 = *(this + 14);
      }

      if (v8 <= v5 + 1)
      {
        v12 = v5 + 1;
      }

      else
      {
        v12 = v8;
      }

      while (v12 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 5) + 48 * v5) & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v5) = v12;
LABEL_24:
      ;
    }

    while (v5 != v4);
    if (v20)
    {
      v13 = v22;
      v14 = 8 * v20;
      do
      {
        v15 = *v13++;
        re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 24, v15);
        v14 -= 8;
      }

      while (v14);
    }
  }

  result = v19[0];
  if (v19[0])
  {
    if (v22)
    {
      return (*(*v19[0] + 40))();
    }
  }

  return result;
}

void re::internal::PushLoadManager::~PushLoadManager(re::internal::PushLoadManager *this)
{
  *this = &unk_1F5CB9520;
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9520;
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::AssetHandle::~AssetHandle((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 48;
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

uint64_t re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[2] % *(a1 + 24));
                v19 = *(v17 - 2);
                v18[3] = 0;
                v18[4] = 0;
                v18[1] = v19;
                v18[2] = 0;
                v18[3] = *v17;
                *v17 = 0;
                v20 = v18[2];
                v18[2] = 0;
                v18[2] = *(v17 - 1);
                *(v17 - 1) = v20;
                v21 = v18[4];
                v18[4] = v17[1];
                v17[1] = v21;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 48 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 48 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 48 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 40) = a3;
  ++*(a1 + 28);
  return v22 + 48 * v5;
}

uint64_t re::AssetSerializationScheme::storedCodingKey(re::AssetSerializationScheme *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::AssetHandle::serializationString(a2, &v8);
  if (v9)
  {
    v5 = v9 >> 1;
  }

  else
  {
    v5 = v9 >> 1;
  }

  if (v5)
  {
    re::DynamicString::operator=(this, &v8);
  }

  else
  {
    if (*(a2 + 1))
    {
      v6 = 0;
      goto LABEL_9;
    }

    v10[0] = "";
    v10[1] = 0;
    re::DynamicString::operator=(this, v10);
  }

  v6 = 1;
LABEL_9:
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return v6;
}

os_unfair_lock_s *re::AssetSerializationScheme::deviceCodingKey(re::DynamicString *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (!v4)
  {
    return 0;
  }

  result = *(v4 + 24);
  if (result)
  {
    re::AssetManager::deviceAssetPath(result, a4, a2, a3, v7);
    if (v7[0])
    {
      re::DynamicString::operator=(a1, &v8);
      if (v7[0] & 1) != 0 && v8 && (v9)
      {
        (*(*v8 + 40))();
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::AssetSerializationScheme::relativeCodingKey(re::DynamicString *a1, re::AssetHandle *this, unsigned __int8 *a3)
{
  v3 = *a3;
  if (v3 == 1)
  {
    v6 = re::AssetHandle::legacy_assetPath(this);
    re::AssetPath::makeRelativeAssetPath((a3 + 8), v6, &v8);
    re::DynamicString::operator=(a1, &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  return v3;
}

uint64_t re::AssetSerializationScheme::commonCodingKey(re::AssetSerializationScheme *a1, re::DynamicString *a2, const re::AssetHandle *a3, unsigned __int8 *a4)
{
  re::Optional<re::AssetPath>::Optional(v8, a4);
  re::AssetSerializationScheme::commonCodingKeyInternal(a1, a2, a3, v8);
  if (v8[0] == 1)
  {
    if (v11)
    {
      if (BYTE8(v11))
      {
        (*(*v11 + 40))();
      }

      v11 = 0u;
      v12 = 0u;
    }

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  return 1;
}

uint64_t re::AssetSerializationScheme::commonCodingKeyInternal(re::AssetSerializationScheme *a1, re::DynamicString *a2, const re::AssetHandle *a3, unsigned __int8 *a4)
{
  if (re::AssetSerializationScheme::storedCodingKey(a1, a2, a3))
  {
    return 1;
  }

  if (re::AssetSerializationScheme::deviceCodingKey(a1, 0, a3, a2))
  {
    return 2;
  }

  re::Optional<re::AssetPath>::Optional(v13, a4);
  v9 = re::AssetSerializationScheme::relativeCodingKey(a1, a2, v13);
  if (v13[0] == 1)
  {
    if (v16)
    {
      if (BYTE8(v16))
      {
        (*(*v16 + 40))();
      }

      v16 = 0u;
      v17 = 0u;
    }

    if (v14)
    {
      if (BYTE8(v14))
      {
        (*(*v14 + 40))();
      }

      v14 = 0u;
      v15 = 0u;
    }
  }

  if (v9)
  {
    return 3;
  }

  v10 = re::AssetHandle::assetInfo(a2);
  if (*(v10 + 13))
  {
    v11 = *(v10 + 14);
  }

  else
  {
    v11 = v10 + 105;
  }

  v12 = strlen(v11);
  v18[0] = v11;
  v18[1] = v12;
  re::DynamicString::operator=(a1, v18);
  return 4;
}

uint64_t re::Optional<re::AssetPath>::Optional(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    *(a1 + 8) = *(a2 + 2);
    re::DynamicString::DynamicString((a1 + 16), (a2 + 16));
    re::DynamicString::DynamicString((a1 + 48), (a2 + 48));
    *(a1 + 80) = *(a2 + 10);
  }

  return a1;
}

void re::AssetSerializationScheme::relativeHandle(uint64_t *a1, re::AssetManager *this, char *a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    re::AssetManager::assetHandleWithParentAssetPath(this, a3, (a4 + 8), 1, a1);
  }

  else
  {
    re::AssetManager::assetHandle(this, a3, 1, a1);
  }
}

re::DefaultAssetSerialize *re::DefaultAssetSerialize::DefaultAssetSerialize(re::DefaultAssetSerialize *this, const re::AssetHandle *a2)
{
  *this = &unk_1F5CB98A0;
  *(this + 8) = 0;
  v3 = this + 8;
  if (a2)
  {
    v4 = re::AssetHandle::legacy_assetPath(a2);
    v6[0] = 1;
    v7 = *v4;
    re::DynamicString::DynamicString(&v8, (v4 + 1));
    re::DynamicString::DynamicString(v10, (v4 + 5));
    v10[4] = v4[9];
  }

  else
  {
    v6[0] = 0;
  }

  re::Optional<re::AssetPath>::operator=(v3, v6);
  if (v6[0] == 1)
  {
    if (v10[0])
    {
      if (v10[1])
      {
        (*(*v10[0] + 40))();
      }

      memset(v10, 0, 32);
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }

  return this;
}

uint64_t re::Optional<re::AssetPath>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::DynamicString::deinit((a1 + 48));
      re::DynamicString::deinit((a1 + 16));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 8);
    re::DynamicString::operator=((a1 + 16), (a2 + 16));
    re::DynamicString::operator=((a1 + 48), (a2 + 48));
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    v5 = *(a2 + 32);
    *(a2 + 40) = 0;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 72) = *(a2 + 72);
    v8 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = 0;
    v9 = *(a2 + 64);
    *(a2 + 72) = 0;
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a2 + 56) = v11;
    *(a2 + 64) = v10;
LABEL_6:
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t re::DefaultAssetSerialize::fromHandle(re::DefaultAssetSerialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::Optional<re::AssetPath>::Optional(v6, this + 8);
  re::AssetSerializationScheme::commonCodingKey(a2, a3, 0xF, v6);
  if (v6[0] == 1)
  {
    if (v9)
    {
      if (BYTE8(v9))
      {
        (*(*v9 + 40))();
      }

      v9 = 0u;
      v10 = 0u;
    }

    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return 1;
}

void re::DefaultAssetSerialize::toHandle(re::DefaultAssetSerialize *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Cannot deserialize using DefaultAssetSerialize class", "!Unreachable code", "toHandle", 152);
  _os_crash();
  __break(1u);
}

re::DirectAssetDeserialize *re::DirectAssetDeserialize::DirectAssetDeserialize(re::DirectAssetDeserialize *this, AssetService *a2, const re::AssetPath *a3)
{
  *this = &unk_1F5CB95A0;
  *(this + 8) = 0;
  v4 = this + 8;
  *(this + 12) = a2;
  if (a3)
  {
    v7[0] = 1;
    v8 = *a3;
    re::DynamicString::DynamicString(&v9, (a3 + 8));
    re::DynamicString::DynamicString(v11, (a3 + 40));
    v11[4] = *(a3 + 9);
  }

  else
  {
    v7[0] = 0;
  }

  re::Optional<re::AssetPath>::operator=(v4, v7);
  if (v7[0] == 1)
  {
    if (v11[0])
    {
      if (v11[1])
      {
        (*(*v11[0] + 40))();
      }

      memset(v11, 0, 32);
    }

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  return this;
}

BOOL re::DirectAssetDeserialize::toHandle(re::DirectAssetDeserialize *this, re::AssetHandle *a2, char *a3, re::Allocator *a4)
{
  v6 = *(this + 12);
  re::Optional<re::AssetPath>::Optional(v10, this + 8);
  re::AssetSerializationScheme::relativeHandle(&v15, v6, a3, v10);
  v7 = *a2;
  *a2 = v15;
  v15 = v7;
  v8 = *(a2 + 2);
  *(a2 + 2) = v16;
  v16 = v8;
  re::AssetHandle::~AssetHandle(&v15);
  if (v10[0] == 1)
  {
    if (v13)
    {
      if (BYTE8(v13))
      {
        (*(*v13 + 40))();
      }

      v13 = 0u;
      v14 = 0u;
    }

    if (v11 && (v12 & 1) != 0)
    {
      (*(*v11 + 40))();
    }
  }

  return *(a2 + 1) != 0;
}

void re::DirectAssetDeserialize::fromHandle(re::DirectAssetDeserialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot serialize using DirectAssetDeserialize class", "!Unreachable code", "fromHandle", 177);
  _os_crash();
  __break(1u);
}

void re::DeferredAssetDeserialize::fromHandle(re::DeferredAssetDeserialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot serialize using DeferredAssetDeserialize class", "!Unreachable code", "fromHandle", 184);
  _os_crash();
  __break(1u);
}

re::RemappedAssetSerialize *re::RemappedAssetSerialize::RemappedAssetSerialize(re::RemappedAssetSerialize *this, const re::AssetPath *a2, const re::AssetPathMapping *a3)
{
  *this = &unk_1F5CB95D0;
  *(this + 8) = 0;
  v5 = this + 8;
  if (a2)
  {
    v8[0] = 1;
    v9 = *a2;
    re::DynamicString::DynamicString(&v10, (a2 + 8));
    re::DynamicString::DynamicString(v12, (a2 + 40));
    v12[4] = *(a2 + 9);
  }

  else
  {
    v8[0] = 0;
  }

  re::Optional<re::AssetPath>::operator=(v5, v8);
  if (v8[0] == 1)
  {
    if (v12[0])
    {
      if (v12[1])
      {
        (*(*v12[0] + 40))();
      }

      memset(v12, 0, 32);
    }

    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }
  }

  *(this + 12) = a3;
  return this;
}

uint64_t re::RemappedAssetSerialize::fromHandle(re::RemappedAssetSerialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  v6 = *(this + 12);
  if (!v6 || (re::AssetPathMapping::lookupString(v6, a2, a3) & 1) == 0)
  {
    re::Optional<re::AssetPath>::Optional(v8, this + 8);
    re::AssetSerializationScheme::commonCodingKey(a2, a3, 0xF, v8);
    if (v8[0] == 1)
    {
      if (v11)
      {
        if (BYTE8(v11))
        {
          (*(*v11 + 40))();
        }

        v11 = 0u;
        v12 = 0u;
      }

      if (v9 && (v10 & 1) != 0)
      {
        (*(*v9 + 40))();
      }
    }
  }

  return 1;
}

void re::RemappedAssetSerialize::toHandle(re::RemappedAssetSerialize *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Cannot deserialize using RemappedAssetSerialize class", "!Unreachable code", "toHandle", 212);
  _os_crash();
  __break(1u);
}

uint64_t re::RealityFileAssetSerialize::fromHandle(re::RealityFileAssetSerialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(this + 12);
  if (!v6)
  {
    re::AssetHandle::getLegacyAppPath(a3, v23);
    if (v23[0] == 1)
    {
      goto LABEL_30;
    }

    goto LABEL_8;
  }

  if (!re::AssetPathMapping::lookupString(v6, a2, a3))
  {
    re::AssetHandle::getLegacyAppPath(a3, v23);
    if (v23[0])
    {
      goto LABEL_30;
    }

LABEL_8:
    re::Optional<re::AssetPath>::Optional(v18, this + 8);
    v9 = re::AssetSerializationScheme::commonCodingKeyInternal(a2, a3, 0xF, v18);
    if (v18[0] == 1)
    {
      if (v21)
      {
        if (BYTE8(v21))
        {
          (*(*v21 + 40))();
        }

        v21 = 0u;
        v22 = 0u;
      }

      if (v19)
      {
        if (BYTE8(v19))
        {
          (*(*v19 + 40))();
        }

        v19 = 0u;
        v20 = 0u;
      }
    }

    v10 = *(this + 104);
    v8 = 1;
    if ((v10 & 1) == 0 && v9 == 3)
    {
      if ((atomic_load_explicit(&qword_1EE191F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F20))
      {
        _MergedGlobals_42 = 1;
        __cxa_guard_release(&qword_1EE191F20);
      }

      if (*(a2 + 1))
      {
        v11 = *(a2 + 2);
      }

      else
      {
        v11 = a2 + 9;
      }

      if (_MergedGlobals_42)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v13 = strncmp(v11, "assetId:", v12);
      if (!v13)
      {
        v14 = *re::assetsLogObjects(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          if (*(a2 + 1))
          {
            v17 = *(a2 + 2);
          }

          else
          {
            v17 = a2 + 9;
          }

          *buf = 136315138;
          v27 = v17;
          _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "RealityFileAssetSerialize generated an AssetId-based serialization string: '%s'.", buf, 0xCu);
        }

        v8 = 0;
      }
    }

    goto LABEL_31;
  }

  if (re::AssetPath::pathIsAppBased(a2))
  {
    re::Defaults::BOOLValue("AllowAppBasedAssetPaths", v7, v23);
    v8 = v23[0] & v23[1];
    return v8 & 1;
  }

  re::AssetHandle::getLegacyAppPath(a3, v23);
  if ((v23[0] & 1) == 0)
  {
    v8 = 1;
    goto LABEL_31;
  }

LABEL_30:
  re::DynamicString::operator=(a2, &v24);
  re::Defaults::BOOLValue("AllowAppBasedAssetPaths", v15, buf);
  v8 = buf[0] & buf[1];
LABEL_31:
  if (v23[0] == 1 && v24 && (v25 & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  return v8 & 1;
}

void re::RealityFileAssetSerialize::toHandle(re::RealityFileAssetSerialize *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Cannot deserialize using RealityFileAssetSerialize class", "!Unreachable code", "toHandle", 266);
  _os_crash();
  __break(1u);
}

void re::RealityFileAssetDeserialization::fromHandle(re::RealityFileAssetDeserialization *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot serialize using RealityFileAssetDeserialization class", "!Unreachable code", "fromHandle", 278);
  _os_crash();
  __break(1u);
}

uint64_t re::RealityFileAssetDeserialization::toHandle(re::RealityFileAssetDeserialization *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  if (!re::AssetPath::pathIsAppBased(&v11) || (re::Defaults::BOOLValue("AllowAppBasedAssetPaths", v8, v13), v9 = 0, v13[0] == 1) && (v13[1] & 1) != 0)
  {
    v9 = (*(**(this + 1) + 24))(*(this + 1), a2, a3, a4);
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  return v9;
}

uint64_t re::NetworkAssetSerialization::fromHandle(re::NetworkAssetSerialization *this, re::DynamicString *a2, os_unfair_lock_s **a3)
{
  if (a3[1])
  {
    v6 = re::AssetHandle::assetInfo(a3);
    if (v6[10] == -1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = v6[10];
    }

    v9 = a3[1];
    if (v9 && (v10 = *&v9[70]._os_unfair_lock_opaque) != 0)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    re::AssetSignpost::fireImpulse(0x80A, v8, v11, v7);
  }

  if ((re::AssetSerializationScheme::storedCodingKey(a2, a3, a3) & 1) == 0 && (re::AssetSerializationScheme::deviceCodingKey(a2, 1, 15, a3) & 1) == 0)
  {
    v12 = a3[1];
    if (v12 && (os_unfair_lock_lock(v12 + 128), os_unfair_lock_opaque = v12[137]._os_unfair_lock_opaque, os_unfair_lock_unlock(v12 + 128), os_unfair_lock_opaque == 2))
    {
      v17 = "nosync";
      v18 = 6;
      re::DynamicString::operator=(a2, &v17);
    }

    else
    {
      v14 = re::AssetHandle::legacy_assetPath(a3);
      if (*(this + 112))
      {
        v15 = *(this + 15);
      }

      else
      {
        v15 = this + 113;
      }

      re::AssetPath::assetPathForNetwork(v14, v15, &v17);
      re::DynamicString::operator=(a2, &v17);
      if (v17 && (v18 & 1) != 0)
      {
        (*(*v17 + 40))();
      }
    }
  }

  return 1;
}

uint64_t re::NetworkAssetSerialization::toHandle(re::NetworkAssetSerialization *this, re::AssetHandle *a2, char *__s1, re::Allocator *a4)
{
  v69[6] = *MEMORY[0x1E69E9840];
  if (!strcmp(__s1, "nosync"))
  {
    return 1;
  }

  v7 = v50;
  if (*(this + 8))
  {
    v8 = (this + 16);
  }

  else
  {
    v8 = 0;
  }

  re::StackScratchAllocator::StackScratchAllocator(v55);
  v9 = re::AssetManager::parseAssetPath(*(this + 17), v55, __s1, v8, 1, v47);
  if (v47[0])
  {
    if (v48 != 8)
    {
LABEL_13:
      v13 = *(this + 17);
      re::Optional<re::AssetPath>::Optional(v41, this + 8);
      re::AssetSerializationScheme::relativeHandle(v61, v13, __s1, v41);
      v14 = *a2;
      *a2 = *v61;
      *v61 = v14;
      v15 = *(a2 + 2);
      *(a2 + 2) = *&v61[16];
      *&v61[16] = v15;
      re::AssetHandle::~AssetHandle(v61);
      if (v41[0] == 1)
      {
        if (v44)
        {
          if (BYTE8(v44))
          {
            (*(*v44 + 40))();
          }

          v44 = 0u;
          v45 = 0u;
        }

        if (v42)
        {
          if (BYTE8(v42))
          {
            (*(*v42 + 40))();
          }

          v42 = 0u;
          v43 = 0u;
        }
      }

      if (*(re::AssetHandle::assetInfo(a2) + 22) == 4)
      {
        v16 = re::AssetHandle::legacy_assetPath(a2);
        v17 = (v16[2] & 1) != 0 ? v16[3] : v16 + 17;
        if ((*(*this + 32))(this, v17))
        {
          v18 = *(this + 17);
          v19 = re::AssetHandle::legacy_assetPath(a2);
          if (v19[48])
          {
            v20 = *(v19 + 7);
          }

          else
          {
            v20 = v19 + 49;
          }

          v21 = *(a2 + 1);
          if (v21)
          {
            v22 = *(v21 + 280);
          }

          else
          {
            v22 = 0;
          }

          re::AssetManager::assetHandleMemoryPath(v18, v20, v22);
          v31 = *a2;
          *a2 = *v61;
          *v61 = v31;
          v32 = *(a2 + 2);
          *(a2 + 2) = *&v61[16];
          *&v61[16] = v32;
          re::AssetHandle::~AssetHandle(v61);
        }
      }

      if (*(a2 + 1))
      {
        v33 = re::AssetHandle::assetInfo(a2);
        if (v33[10] == -1)
        {
          LODWORD(v35) = 0;
        }

        else
        {
          v35 = v33[10];
        }

        v36 = *(a2 + 1);
        if (v36 && (v37 = *(v36 + 280)) != 0)
        {
          v38 = *v37;
        }

        else
        {
          v38 = 0;
        }

        re::AssetSignpost::fireImpulse(0x80B, v35, v38, v34);
      }

      v23 = 1;
      goto LABEL_73;
    }

    v46 = 0;
    if (BYTE8(v52))
    {
      v10 = v53;
    }

    else
    {
      v10 = &v52 + 9;
    }

    v11 = sscanf(v10, "%llu", &v46);
    if (v11 == 1)
    {
      v12 = *(this + 17);
      os_unfair_lock_lock(v12 + 32);
      *v61 = v46;
      if (!re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v12[46], v61))
      {
        memset(v61, 0, sizeof(v61));
        v27 = re::DynamicString::setCapacity(v61, 0);
        v62 = 0;
        v63 = 0;
        v65 = 0;
        v64 = 0;
        v66 = 0u;
        v67 = 0u;
        v68 = 0;
        memset(v69, 0, 40);
        v28 = re::DynamicString::setCapacity(&v69[1], 0);
        v29 = v46;
        v30 = *v54;
        re::NetworkAssetLoadDescriptor::init(v61, v29, v56);
        if (*&v56[0])
        {
          if (BYTE8(v56[0]))
          {
            (*(**&v56[0] + 40))();
          }

          memset(v56, 0, sizeof(v56));
        }

        v60 = 0;
        v58 = 0;
        buf = 0uLL;
        v59 = 0;
        re::DynamicArray<re::AssetLoadDescriptor>::add(&buf, v61);
        re::internal::AssetIdLoadDescriptorTable::addNewImmutable(&v12[46], v46, &buf);
        re::DynamicArray<re::AssetLoadDescriptor>::deinit(&buf);
        if (v69[1])
        {
          if (v69[2])
          {
            (*(*v69[1] + 40))();
          }

          memset(&v69[1], 0, 32);
        }

        if (*(&v66 + 1))
        {
          if (v69[0])
          {
            (*(**(&v66 + 1) + 40))();
          }

          v69[0] = 0;
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

        if (*v61 && (v61[8] & 1) != 0)
        {
          (*(**v61 + 40))();
        }
      }

      os_unfair_lock_unlock(v12 + 32);
      goto LABEL_13;
    }

    v25 = *re::assetsLogObjects(v11);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      re::AssetPath::fullAssetPath(&v48, v61);
      v26 = (v61[8] & 1) != 0 ? *&v61[16] : &v61[9];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v26;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "invalid asset path asset Id: %s", &buf, 0xCu);
      if (*v61)
      {
        if (v61[8])
        {
          (*(**v61 + 40))();
        }
      }
    }
  }

  else
  {
    v24 = *re::assetsLogObjects(v9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (v50[8])
      {
        v40 = *&v51[7];
      }

      else
      {
        v40 = v51;
      }

      *v61 = 136315394;
      *&v61[4] = __s1;
      *&v61[12] = 2080;
      *&v61[14] = v40;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "asset string '%s' parse failed: %s", v61, 0x16u);
    }
  }

  v23 = 0;
LABEL_73:
  if (v47[0] == 1)
  {
    v7 = &v49;
    if (v52)
    {
      if (BYTE8(v52))
      {
        (*(*v52 + 40))();
      }

      v52 = 0u;
      v53 = 0u;
    }
  }

  re::DynamicString::deinit(v7);
  re::StackScratchAllocator::~StackScratchAllocator(v55);
  return v23;
}

uint64_t re::PassthroughAssetSerialization::fromHandle(re::PassthroughAssetSerialization *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::AssetHandle::serializationString(a3, &v5);
  re::DynamicString::operator=(a2, &v5);
  if (v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  return 1;
}

void re::PeanutToAlmondAssetSerialization::fromHandle(re::PeanutToAlmondAssetSerialization *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected asset serialization, PeanutToAlmond not supported!", "!Unreachable code", "fromHandle", 464);
  _os_crash();
  __break(1u);
}

BOOL re::PeanutToAlmondAssetSerialization::toHandle(re::PeanutToAlmondAssetSerialization *this, re::AssetHandle *a2, char *__s, re::Allocator *a4)
{
  v5 = __s;
  v31 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strncmp("reality:", v5, 8uLL);
  if (v9)
  {
    *&buf[8] = 0;
    *&buf[16] = 0;
    v30 = 0;
    re::DynamicString::setCapacity(buf, 0);
    v10 = re::AssetPath::removingCompiledExtension(v5, __s2);
    if (__s2[0] == 1)
    {
      v25 = 0;
      v26 = 0;
      if (v28)
      {
        v11 = v28 + 1;
      }

      else
      {
        v11 = 0;
      }

      *(&v24 + 1) = 0;
      re::DynamicString::setCapacity(&v24, v11);
      re::DynamicString::operator=(&v24, &__s2[8]);
      re::DynamicString::operator=(buf, &v24);
      if (v24 && (BYTE8(v24) & 1) != 0)
      {
        (*(*v24 + 40))();
      }

      if (buf[8])
      {
        v5 = *&buf[16];
      }

      else
      {
        v5 = &buf[9];
      }
    }

    re::AssetHandle::setSerializationString(a2, v5, a4);
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    return 1;
  }

  else
  {
    strcpy(__s2, ".reality/");
    v12 = strstr(v5 + 8, __s2);
    v13 = v12 != 0;
    if (v12)
    {
      v14 = v12;
      strcpy(v23, "assets/");
      v15 = strstr(v5 + 8, v23);
      if (v15)
      {
        re::AssetManager::tryGetImmutableRealityFileAsset(*(this + 1), (v5 + 8), v14 - v5, (v15 + 7), &v5[v8] - (v15 + 7), buf);
        if (buf[0])
        {
          v17 = re::AssetHandle::legacy_assetPath(&buf[8]);
          v18 = *(v17 + 1);
          v25 = 0;
          v26 = 0;
          v24 = v18;
          re::DynamicString::setCapacity(&v24, 0);
          re::AssetPath::fullAssetPath(v17, &v24);
          if (BYTE8(v24))
          {
            v19 = v25;
          }

          else
          {
            v19 = (&v24 + 9);
          }

          re::AssetHandle::setSerializationString(a2, v19, a4);
          if (v24 && (BYTE8(v24) & 1) != 0)
          {
            (*(*v24 + 40))();
          }
        }

        else
        {
          v22 = *re::assetsLogObjects(v16);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v24) = 136315138;
            *(&v24 + 4) = v5;
            _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "PeanutToAlmond Asset Deserialization: No existing asset found for %s", &v24, 0xCu);
          }
        }

        if (buf[0] == 1)
        {
          re::AssetHandle::~AssetHandle(&buf[8]);
        }
      }
    }

    else
    {
      v21 = *re::assetsLogObjects(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = __s2;
        *&buf[12] = 2080;
        *&buf[14] = v5;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "PeanutToAlmond Asset Deserialization failure: Invalid AssetHandle: No %s extension found in legacy reality file path '%s'", buf, 0x16u);
      }
    }
  }

  return v13;
}

uint64_t re::AlmondToPeanutAssetSerialization::fromHandle(re::AlmondToPeanutAssetSerialization *this, re::AssetPath **a2, const re::AssetHandle *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  if (!v6 || ((*(*v6 + 16))(v6, a2, a3) & 1) == 0)
  {
    re::AssetHandle::serializationString(a3, &v34);
    re::DynamicString::operator=(a2, &v34);
    if (v34)
    {
      if (v35[0])
      {
        (*(*v34 + 40))();
      }
    }
  }

  if (a2[1])
  {
    v8 = a2[2];
  }

  else
  {
    v8 = (a2 + 9);
  }

  AssetTypeFromFilePath = re::AssetPath::getAssetTypeFromFilePath(v8, *(*(this + 1) + 1808), v7);
  v10 = re::AssetPath::updateWithCompiledExtension(a2, AssetTypeFromFilePath);
  LODWORD(v34) = 0;
  memset(v35, 0, sizeof(v35));
  v11 = re::DynamicString::setCapacity(v35, 0);
  v37 = 0u;
  v36 = 0u;
  re::DynamicString::setCapacity(&v36, 0);
  v38 = 0;
  if (a2[1])
  {
    v12 = a2[2];
  }

  else
  {
    v12 = a2 + 9;
  }

  v13 = re::AssetPath::parse(&v34, v12, 0, *(*(this + 1) + 1808), *(*(this + 1) + 1904), v31);
  if ((v31[0] & 1) == 0 && v32)
  {
    if (BYTE8(v32))
    {
      (*(*v32 + 40))(v13);
    }

    v33 = 0u;
    v32 = 0u;
  }

  v30 = 0;
  if (v34 == 8 && ((BYTE8(v36) & 1) != 0 ? (v14 = v37) : (v14 = &v36 + 9), sscanf(v14, "%llu", &v30) == 1))
  {
    v15 = v30;
  }

  else
  {
    v16 = re::AssetHandle::assetInfo(a3);
    v15 = v16[10];
    if ((v15 + 1) < 2)
    {
      goto LABEL_40;
    }

    v30 = v16[10];
  }

  re::AssetManager::loadDescriptorsFromAssetId(*(this + 1), v15, v28);
  if (v28[0] == 1 && v29[2])
  {
    re::AssetManager::convertToAssetPath(*(this + 1), v29[4], &v23);
    if (v23 == 1)
    {
      if (v25)
      {
        v18 = v27;
      }

      else
      {
        v18 = v26;
      }

      v19 = strlen(v18);
      *&buf = v18;
      *(&buf + 1) = v19;
    }

    else
    {
      v20 = *re::assetsLogObjects(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (v25)
        {
          v22 = v27;
        }

        else
        {
          v22 = v26;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "AlmondToPeanut AssetHandle Serialization Error: %s", &buf, 0xCu);
      }

      *&buf = "";
      *(&buf + 1) = 0;
    }

    re::DynamicString::operator=(a2, &buf);
    if (v24 && (v25 & 1) != 0)
    {
      (*(*v24 + 40))();
    }
  }

  else
  {
    v23 = "";
    v24 = 0;
    re::DynamicString::operator=(a2, &v23);
  }

  if (v28[0] == 1)
  {
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(v29);
  }

LABEL_40:
  if (v36)
  {
    if (BYTE8(v36))
    {
      (*(*v36 + 40))();
    }

    v37 = 0u;
    v36 = 0u;
  }

  if (v35[0] && (v35[1] & 1) != 0)
  {
    (*(*v35[0] + 40))();
  }

  return 1;
}

void re::AlmondToPeanutAssetSerialization::toHandle(re::AlmondToPeanutAssetSerialization *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Unexpected asset deserialization, AlmondToPeanut not supported!", "!Unreachable code", "toHandle", 579);
  _os_crash();
  __break(1u);
}

void re::DefaultAssetSerialize::~DefaultAssetSerialize(re::DefaultAssetSerialize *this)
{
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

void re::DirectAssetDeserialize::~DirectAssetDeserialize(re::DirectAssetDeserialize *this)
{
  *this = &unk_1F5CB95A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB95A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

void re::RemappedAssetSerialize::~RemappedAssetSerialize(re::RemappedAssetSerialize *this)
{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

void re::RealityFileAssetSerialize::~RealityFileAssetSerialize(re::RealityFileAssetSerialize *this)
{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::directMeshConnectionId(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    [v1 auditToken];
  }

  else
  {
    memset(&v3, 0, sizeof(v3));
  }

  atoken = v3;
  return audit_token_to_pid(&atoken);
}

void re::ResourceFetchManager::xpcInterface(void *a1@<X8>)
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5D43AC0];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:sel_associateConnectionWithPeerID_clientPorts_ argumentIndex:1 ofReply:0];

  v5 = v3;
  *a1 = v5;
}

void re::ResourceFetchManager::~ResourceFetchManager(void **this)
{
  re::ResourceFetchManager::deinit(this);

  v2 = this[50];
  if (v2)
  {

    this[50] = 0;
  }

  v3 = this[49];
  if (v3)
  {

    this[49] = 0;
  }

  v4 = this[48];
  if (v4)
  {

    this[48] = 0;
  }

  re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::deinit((this + 22));
  re::DynamicArray<re::ResourceFetchManager::Connection>::deinit((this + 17));
}

{
  re::ResourceFetchManager::~ResourceFetchManager(this);

  JUMPOUT(0x1E6906510);
}

void **re::ResourceFetchManager::deinit(void **this)
{
  if (*(this + 8) == 1)
  {
    v41[9] = v1;
    v41[10] = v2;
    v3 = this;
    MEMORY[0x1E6901C30](5, 0, re::ResourceFetchManager::renderServerContextDidCommit, this);
    [v3[3] invalidate];
    os_unfair_lock_lock(v3 + 32);
    v4 = v3[19];
    if (v4)
    {
      v5 = v3[21];
      v6 = &v5[8 * v4];
      do
      {
        v7 = v3[50];
        v8 = v7[15];
        if (v8)
        {
          v9 = 48 * v8;
          v10 = (v7[17] + 40);
          do
          {
            v11 = [v5[1] pid];
            v12 = v5[1];
            if (v12)
            {
              [v12 auditToken];
              v12 = v5[1];
            }

            else
            {
              v38 = 0u;
              v39 = 0u;
            }

            v13 = [v12 peerID];
            v40 = v11;
            v41[0] = v13;
            v14 = *v10;
            v10 += 6;
            (*(*v14 + 16))(v14, &v40, &v38, v41);
            v9 -= 48;
          }

          while (v9);
        }

        v5 += 8;
      }

      while (v5 != v6);
    }

    os_unfair_lock_unlock(v3 + 32);
    os_unfair_lock_lock(v3 + 32);
    [v3[2] invalidate];
    v15 = v3[19];
    if (v15)
    {
      v16 = v3[21];
      v17 = &v16[64 * v15];
      do
      {
        v18 = *(v16 + 12);
        if (v18)
        {
          v19 = 0;
          v20 = *(v16 + 4);
          while (1)
          {
            v21 = *v20;
            v20 += 22;
            if (v21 < 0)
            {
              break;
            }

            if (v18 == ++v19)
            {
              LODWORD(v19) = *(v16 + 12);
              break;
            }
          }
        }

        else
        {
          LODWORD(v19) = 0;
        }

        if (v19 != v18)
        {
          v22 = *(v16 + 4);
          do
          {
            v23 = v22 + 88 * v19;
            v24 = *(v23 + 56);
            if (v24)
            {
              v25 = *(v23 + 72);
              v26 = 8 * v24;
              do
              {
                v27 = *v25++;
                *(v27 + 16) = 0;
                v26 -= 8;
              }

              while (v26);
            }

            if (v18 <= v19 + 1)
            {
              v28 = v19 + 1;
            }

            else
            {
              v28 = v18;
            }

            while (v28 - 1 != v19)
            {
              LODWORD(v19) = v19 + 1;
              if ((*(v22 + 88 * v19) & 0x80000000) != 0)
              {
                goto LABEL_31;
              }
            }

            LODWORD(v19) = v28;
LABEL_31:
            ;
          }

          while (v19 != v18);
        }

        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear((v16 + 16));
        v29 = [*(v16 + 1) peerID];
        v30 = re::PeerIDValidator::instance(v29);
        re::PeerIDValidator::remove_impl(v30, v29);
        [*v16 invalidate];
        [*(v16 + 1) invalidate];
        re::ObjCObject::operator=(v16, 0);
        v31 = *(v16 + 1);
        *(v16 + 1) = 0;

        v16 += 64;
      }

      while (v16 != v17);
    }

    v32 = v3[24];
    if (v32)
    {
      v33 = v3[26];
      v34 = 8 * v32;
      do
      {
        v35 = *v33;
        if (*(*v33 + 96))
        {
          re::makeResourceSharingError(0x191, 0, v41);
          v36 = v41[0];
          v41[0] = 0;
          LOBYTE(v38) = 0;
          *(&v38 + 1) = v36;
          (*(**(v35 + 96) + 16))(*(v35 + 96), &v38);
        }

        v33 += 8;
        v34 -= 8;
      }

      while (v34);
    }

    re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::deinit((v3 + 22));
    re::DynamicArray<re::ResourceFetchManager::Connection>::deinit((v3 + 17));
    os_unfair_lock_unlock(v3 + 32);
    re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(v3[50] + 64);
    re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(v3[50] + 104);
    v37 = v3[50];
    if (v37)
    {

      v3[50] = 0;
    }

    re::ObjCObject::operator=(v3 + 4, 0);
    re::ObjCObject::operator=(v3 + 3, 0);
    this = re::ObjCObject::operator=(v3 + 2, 0);
    *(v3 + 8) = 0;
  }

  return this;
}

void re::ResourceFetchManager::renderServerContextDidCommit(re::ResourceFetchManager *this, void *a2, void *a3, void *a4)
{
  v5 = voucher_copy();

  if (v5)
  {
    CARenderContextGetAuditToken();
    memset(&atoken, 0, sizeof(atoken));
    v6 = audit_token_to_pid(&atoken);
    v7 = v5;
    os_unfair_lock_lock(a2 + 32);
    v8 = *(a2 + 19);
    if (v8)
    {
      v9 = v8 << 6;
      v10 = (*(a2 + 21) + 8);
      do
      {
        if (*v10 && [*v10 pid] == v6)
        {
          if (*v10)
          {
            [*v10 auditToken];
          }

          else
          {
            memset(&atoken, 0, sizeof(atoken));
          }

          if (*atoken.val)
          {
            v11 = 0;
          }

          else
          {
            v11 = *&atoken.val[2] == 0;
          }

          if (v11 && *&atoken.val[4] == 0 && *&atoken.val[6] == 0)
          {
            v14 = v7;
            os_unfair_lock_lock(a2 + 64);
            re::ObjCObject::operator=(a2 + 33, v14);
            os_unfair_lock_unlock(a2 + 64);

            [*v10 setVoucher:v14];
          }
        }

        v10 += 8;
        v9 -= 64;
      }

      while (v9);
    }

    os_unfair_lock_unlock(a2 + 32);
  }
}

void re::ResourceFetchManager::init(re::ResourceFetchManager *this, id *a2)
{
  re::ObjCObject::operator=(this + 6, a2);
  v3 = [[REResourceFetchServer alloc] initWithResourceFetchManager:this];
  re::ObjCObject::operator=(this + 2, v3);

  re::xpc::Listener::makeAnonymous(&v19);
  v4 = (this + 24);
  if ((this + 24) != &v19)
  {
    v5 = v19;
    v19 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  re::xpc::Listener::setDelegate(this + 3, this + 2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

  v9 = dispatch_queue_create("com.apple.CoreRE.ResourceFetchManager-service-queue", v8);
  re::ObjCObject::operator=(this + 4, v9);

  re::xpc::Connection::setQueue(this + 3, (this + 32));
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

  v12 = dispatch_queue_create("com.apple.CoreRE.ResourceFetchManager-decode-queue", v11);
  re::ObjCObject::operator=(this + 5, v12);

  os_unfair_lock_lock(this + 32);
  re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(this + 17, 8uLL);
  ++*(this + 40);
  re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity(this + 22, 0x40uLL);
  ++*(this + 50);
  os_unfair_lock_unlock(this + 32);
  v15 = re::globalAllocators(v14);
  v16 = (*(*v15[2] + 32))(v15[2], 144, 8);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v16, 0);
  *v16 = &unk_1F5CB9AD8;
  *(v16 + 48) = re::globalAllocators(v17)[2];
  *(v16 + 136) = 0;
  *(v16 + 88) = 0;
  *(v16 + 72) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 128) = 0;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  v18 = *(this + 50);
  *(this + 50) = v16;
  if (v18)
  {
  }

  [*(this + 3) resume];
  CARenderNotificationAddObserver();
  *(this + 8) = 1;
}

uint64_t re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        v6 = v3 + 8;
        do
        {
          re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v6);
          v6 += 48;
          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

BOOL re::ResourceFetchManager::hasPendingRequestedResources(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 32);
  v2 = *&this[48]._os_unfair_lock_opaque != 0;
  os_unfair_lock_unlock(this + 32);
  return v2;
}

uint64_t re::ResourceFetchManager::hasConnectionToPeer(os_unfair_lock_s *this, const char *a2)
{
  v3 = strtoull_l(a2, 0, 10, 0);
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = v4 << 6;
    v6 = (*&this[42]._os_unfair_lock_opaque + 8);
    while (!*v6 || [*v6 peerID] != v3)
    {
      v6 += 8;
      v5 -= 64;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v7 = 1;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v7;
}

uint64_t re::ResourceFetchManager::getDirectResourceConnectionIDForPeer(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = (*&this[42]._os_unfair_lock_opaque + 8);
    v6 = v4 << 6;
    while (!*v5 || [*v5 peerID] != a2)
    {
      v5 += 8;
      v6 -= 64;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = *v5;
    v10 = v8;
    v7 = re::directMeshConnectionId(&v10);
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v7;
}

void re::ResourceFetchManager::fetchResource(re::AssetPath *this@<X2>, uint64_t a2@<X0>, const char *a3@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v98 = *MEMORY[0x1E69E9840];
  *v70 = 0;
  re::AssetPath::getAssetId(this, v70);
  if (*(this + 6))
  {
    v11 = *(this + 7);
  }

  else
  {
    v11 = (this + 49);
  }

  AssetTypeNameFromPath = re::AssetPath::getAssetTypeNameFromPath(v11, v10);
  re::AssetSignpost::fireImpulse(0x80C, v70[0], AssetTypeNameFromPath, v13);
  v14 = strtoull_l(a3, 0, 10, 0);
  v69 = v14;
  v15 = *this;
  v16 = *this == 8 || v15 == 4;
  if (!v16)
  {
    if (v15)
    {
      v31 = re::resourceSharingLogObjects(v14)[1];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v57) = 0;
        _os_log_fault_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_FAULT, "Only peer asset paths can be fetched from another process", &v57, 2u);
      }

      re::makeResourceSharingError(0x1F4, 0, &v57);
      v32 = v57;
      v57 = 0;
      v65[0] = 0;
      v66 = v32;
      (*(**(a4 + 32) + 16))(*(a4 + 32), v65);
      v25 = v66;
    }

    else
    {
      v23 = re::resourceSharingLogObjects(v14)[1];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v57) = 0;
        _os_log_fault_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_FAULT, "Invalid resource fetch request for empty asset path", &v57, 2u);
      }

      re::makeResourceSharingError(0x1F4, 0, &v57);
      v24 = v57;
      v57 = 0;
      v67[0] = 0;
      v68 = v24;
      (*(**(a4 + 32) + 16))(*(a4 + 32), v67);
      v25 = v68;
    }

    *a5 = 0;
    return;
  }

  v17 = v14;
  v63 = 0u;
  v64 = 0u;
  v18 = re::DynamicString::setCapacity(&v63, 0);
  if (*this == 4)
  {
    LODWORD(v57) = 0;
    v58 = 0u;
    v59 = 0u;
    v19 = re::DynamicString::setCapacity(&v58, 0);
    v61 = 0u;
    v60 = 0u;
    re::DynamicString::setCapacity(&v60, 0);
    v62 = 0;
    if (*(this + 6))
    {
      v20 = *(this + 7);
    }

    else
    {
      v20 = this + 49;
    }

    re::AssetPath::initMemoryAssetPath(&v57, v20, *(this + 9));
    v81 = 0;
    v82 = 0;
    v79 = v58;
    v80 = 0;
    re::DynamicString::setCapacity(&v79, 0);
    re::AssetPath::fullAssetPath(&v57, &v79);
    re::DynamicString::operator=(&v63, &v79);
    if (v79 && (v80 & 1) != 0)
    {
      (*(*v79 + 40))(v79);
    }

    if (v60)
    {
      if (BYTE8(v60))
      {
        (*(*v60 + 40))(v60);
      }

      v61 = 0u;
      v60 = 0u;
    }

    v21 = v58;
    if (!v58 || (BYTE8(v58) & 1) == 0)
    {
      goto LABEL_31;
    }

    v22 = v59;
  }

  else
  {
    v26 = *(this + 1);
    *&v59 = 0;
    v57 = v26;
    v58 = 0uLL;
    re::DynamicString::setCapacity(&v57, 0);
    re::AssetPath::fullAssetPath(this, &v57);
    re::DynamicString::operator=(&v63, &v57);
    v21 = v57;
    if (!v57 || (v58 & 1) == 0)
    {
      goto LABEL_31;
    }

    v22 = *(&v58 + 1);
  }

  (*(*v21 + 40))(v21, v22);
LABEL_31:
  os_unfair_lock_lock((a2 + 128));
  v57 = 0;
  *&v58 = &v57;
  *(&v58 + 1) = 0x3812000000;
  *&v59 = __Block_byref_object_copy_;
  *(&v59 + 1) = __Block_byref_object_dispose_;
  *&v60 = "";
  *(&v60 + 1) = 0;
  v28 = *(a2 + 152);
  if (v28)
  {
    v29 = *(a2 + 168) + 16;
    v30 = v28 << 6;
    while (1)
    {
      v27 = *(v29 - 8);
      if (v27)
      {
        v27 = [(re *)v27 peerID];
        if (v27 == v17)
        {
          break;
        }
      }

      v29 += 64;
      v30 -= 64;
      if (!v30)
      {
        goto LABEL_65;
      }
    }

    v33 = *(v29 - 8);
    re::DynamicString::DynamicString(v86, &v63);
    v96 = *(a4 + 24);
    v97 = 0;
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(v95, a4);
    re::ResourceFetchManager::Request::create(&v79, a2, v33, v86, v95);
    v34 = *(v58 + 48);
    *(v58 + 48) = v79;
    v79 = v34;
    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v79);
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(v95);
    v35 = *&v86[0];
    if (*&v86[0])
    {
      if (BYTE8(v86[0]))
      {
        v35 = (*(**&v86[0] + 40))();
      }

      memset(v86, 0, sizeof(v86));
    }

    v36 = (v29 - 16);
    v37 = v58;
    v38 = *(a2 + 184);
    v39 = *(a2 + 192);
    if (v39 >= v38)
    {
      v40 = v39 + 1;
      if (v38 < v39 + 1)
      {
        if (*(a2 + 176))
        {
          v41 = 2 * v38;
          v16 = v38 == 0;
          v42 = 8;
          if (!v16)
          {
            v42 = v41;
          }

          if (v42 <= v40)
          {
            v43 = v40;
          }

          else
          {
            v43 = v42;
          }

          re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity((a2 + 176), v43);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity((a2 + 176), v40);
          ++*(a2 + 200);
        }
      }

      v39 = *(a2 + 192);
    }

    re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr((*(a2 + 208) + 8 * v39), *(v37 + 48));
    ++*(a2 + 192);
    ++*(a2 + 200);
    v44 = *(v58 + 48);
    v45 = re::Hash<re::DynamicString>::operator()(&v79, v44 + 32);
    re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v79, v29, v44 + 32, v45);
    if (HIDWORD(v80) == 0x7FFFFFFF)
    {
      *&block = *(v58 + 48);
      v46 = block;
      p_block = &block;
      v74 = 1;
      re::DynamicArray<re::ResourceFetchManager::Request *>::DynamicArray(&v79, &p_block);
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v29, (v46 + 32), &v79);
      if (v79 && v83)
      {
        (*(*v79 + 40))();
      }
    }

    else
    {
      v47 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v29, *(v58 + 48) + 32);
      v79 = *(v58 + 48);
      re::DynamicArray<re::TransitionCondition *>::add(v47, &v79);
    }

    if (BYTE8(v63))
    {
      v48 = v64;
    }

    else
    {
      v48 = &v63 | 9;
    }

    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v48];
    v79 = MEMORY[0x1E69E9820];
    v80 = 3221225472;
    v81 = ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke;
    v82 = &unk_1E871AB08;
    v83 = v49;
    v84 = &v57;
    v85 = a2;
    v50 = v49;
    re::xpc::Connection::remoteObjectProxyWithErrorHandler(v36, &v79, &p_block);
    v51 = p_block;

    p_block = MEMORY[0x1E69E9820];
    v74 = 3221225472;
    v75 = ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_190;
    v76 = &unk_1E871AB30;
    v77 = &v57;
    v78 = a2;
    [v51 fetchResourceAtAssetPath:v50 withReply:&p_block];
  }

LABEL_65:
  v52 = *(v58 + 48);
  if (!v52)
  {
    v53 = re::resourceSharingLogObjects(v27)[1];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      LODWORD(block) = 134217984;
      *(&block + 4) = v69;
      _os_log_fault_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_FAULT, "No resource fetch connection exists for peer '%llu'", &block, 0xCu);
    }

    re::DynamicString::DynamicString(v71, &v63);
    v93 = *(a4 + 24);
    v94 = 0;
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(v92, a4);
    re::ResourceFetchManager::Request::create(&v72, a2, 0, v71, v92);
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(v92);
    if (*&v71[0])
    {
      if (BYTE8(v71[0]))
      {
        (*(**&v71[0] + 40))();
      }

      memset(v71, 0, sizeof(v71));
    }

    v54 = v72;
    *(v72 + 104) = 1;
    v55 = *(a2 + 48);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3321888768;
    v88 = ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_192;
    v89 = &__block_descriptor_48_a8_40c55_ZTSN2re9SharedPtrINS_20ResourceFetchManager7RequestEEE_e5_v8__0l;
    v90 = &v69;
    v56 = v55;
    re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(v91, v54);
    dispatch_async(v56, &block);

    re::SharedPtr<re::ResourceRequest>::~SharedPtr(v91);
    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v72);
    v52 = *(v58 + 48);
  }

  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v72, v52);
  _Block_object_dispose(&v57, 8);
  re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v60 + 1);
  os_unfair_lock_unlock((a2 + 128));
  *a5 = v72;
  v72 = 0;
  re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v72);
  if (v63 && (BYTE8(v63) & 1) != 0)
  {
    (*(*v63 + 40))();
  }
}

void re::ResourceFetchManager::setRequestOptions(uint64_t a1, uint64_t a2, void **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 128));
  if (*(a2 + 16))
  {
    if (*(a2 + 104) == 1)
    {
      v7 = re::resourceSharingLogObjects(v6)[1];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 40))
        {
          v8 = *(a2 + 48);
        }

        else
        {
          v8 = a2 + 41;
        }

        v25 = 136315138;
        v26 = v8;
        v22 = "Resource request for '%s' is cancelled, ignoring set-options request";
        v23 = v7;
        v24 = 12;
LABEL_23:
        _os_log_debug_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEBUG, v22, &v25, v24);
      }
    }

    else
    {
      v12 = *(a1 + 152);
      if (v12)
      {
        v6 = *(a1 + 168);
        v13 = v12 << 6;
        while (*(v6 + 1) != *(a2 + 24))
        {
          v6 = (v6 + 64);
          v13 -= 64;
          if (!v13)
          {
            goto LABEL_13;
          }
        }

        v16 = re::ResourceFetchManager::Connection::remoteObjectProxy(v6);
        v17 = *a3;
        v18 = MEMORY[0x1E696AEC0];
        if (*(a2 + 40))
        {
          v19 = *(a2 + 48);
        }

        else
        {
          v19 = a2 + 41;
        }

        v20 = v17;
        v21 = [v18 stringWithUTF8String:v19];
        [v16 setSubscriptionOptions:v20 forResourceAtAssetPath:v21];
      }

      else
      {
LABEL_13:
        v14 = re::resourceSharingLogObjects(v6)[1];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v15 = *(a2 + 24);
          v25 = 138412290;
          v26 = v15;
          _os_log_fault_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_FAULT, "No resource fetch connection exists for client %@", &v25, 0xCu);
        }
      }
    }
  }

  else
  {
    v9 = re::resourceSharingLogObjects(v6)[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a2 + 24);
      if (*(a2 + 40))
      {
        v11 = *(a2 + 48);
      }

      else
      {
        v11 = a2 + 41;
      }

      v25 = 138412546;
      v26 = v10;
      v27 = 2080;
      v28 = v11;
      v22 = "Resource connection %@ is closed, ignoring set-options request for '%s'";
      v23 = v9;
      v24 = 22;
      goto LABEL_23;
    }
  }

  os_unfair_lock_unlock((a1 + 128));
}

void re::ResourceFetchManager::cancelRequest(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 128));
  if (*(a2 + 16))
  {
    if (*(a2 + 104) != 1)
    {
      *(a2 + 104) = 1;
      v10 = *(a1 + 152);
      if (v10)
      {
        v11 = *(a1 + 168);
        v12 = v10 << 6;
        while (*(v11 + 8) != *(a2 + 24))
        {
          v11 += 64;
          v12 -= 64;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v14 = re::Hash<re::DynamicString>::operator()(buf, a2 + 32);
        v15 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v11 + 16, a2 + 32, v14);
        if (HIDWORD(buf[0]) != 0x7FFFFFFF)
        {
          v17 = *(v11 + 32) + 88 * HIDWORD(buf[0]);
          v18 = *(v17 + 72);
          v19 = *(v17 + 56);
          v20 = v18;
          if (v19)
          {
            v21 = 8 * v19;
            v20 = *(v17 + 72);
            while (*v20 != a2)
            {
              v20 += 8;
              v21 -= 8;
              if (!v21)
              {
                goto LABEL_29;
              }
            }
          }

          v22 = &v18[8 * v19];
          if (v20 == v22)
          {
LABEL_29:
            v26 = re::resourceSharingLogObjects(v15)[1];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              if (*(a2 + 40))
              {
                v41 = *(a2 + 48);
              }

              else
              {
                v41 = a2 + 41;
              }

              LODWORD(buf[0]) = 134218242;
              *(buf + 4) = a2;
              WORD6(buf[0]) = 2080;
              *(buf + 14) = v41;
              _os_log_fault_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_FAULT, "Request %p for '%s' is not registered with the resource fetch manager", buf, 0x16u);
            }

            v25 = *(v17 + 56);
          }

          else
          {
            v23 = (v20 - v18);
            v24 = (v20 - v18) >> 3;
            if (v19 <= v24)
            {
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v25 = v19 - 1;
            if (v19 - 1 > v24)
            {
              *&v23[v18] = *(v22 - 1);
            }

            *(v17 + 56) = v25;
            ++*(v17 + 64);
          }

          if (!v25)
          {
            v27 = re::ResourceFetchManager::Connection::remoteObjectProxy(v11);
            v28 = (*(a2 + 40) & 1) != 0 ? *(a2 + 48) : a2 + 41;
            v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
            [v27 unsubscribeFromResourceAtAssetPath:v34];

            v35 = re::Hash<re::DynamicString>::operator()(buf, a2 + 32);
            re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v11 + 16, a2 + 32, v35);
            v36 = HIDWORD(buf[0]);
            if (HIDWORD(buf[0]) != 0x7FFFFFFF)
            {
              v37 = *(v11 + 32);
              v38 = (v37 + 88 * HIDWORD(buf[0]));
              v39 = *v38 & 0x7FFFFFFF;
              if (LODWORD(buf[1]) == 0x7FFFFFFF)
              {
                *(*(v11 + 24) + 4 * DWORD2(buf[0])) = v39;
              }

              else
              {
                *(v37 + 88 * LODWORD(buf[1])) = *(v37 + 88 * LODWORD(buf[1])) & 0x80000000 | v39;
              }

              re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v38);
              *(*(v11 + 32) + 88 * v36) = *(*(v11 + 32) + 88 * v36) & 0x80000000 | *(v11 + 52);
              --*(v11 + 44);
              v40 = *(v11 + 56) + 1;
              *(v11 + 52) = v36;
              *(v11 + 56) = v40;
            }
          }

          goto LABEL_14;
        }

        v13 = re::resourceSharingLogObjects(v15)[1];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_14;
        }

        if (*(a2 + 40))
        {
          v16 = *(a2 + 48);
        }

        else
        {
          v16 = a2 + 41;
        }

        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v16;
        v30 = "No request for '%s' is registered with the resource fetch manager";
      }

      else
      {
LABEL_13:
        v13 = re::resourceSharingLogObjects(v4)[1];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_14;
        }

        v29 = *(a2 + 24);
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v29;
        v30 = "No resource fetch connection exists for client %@";
      }

      _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, v30, buf, 0xCu);
      goto LABEL_14;
    }

    v5 = re::resourceSharingLogObjects(v4)[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 40))
      {
        v6 = *(a2 + 48);
      }

      else
      {
        v6 = a2 + 41;
      }

      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v6;
      v31 = "Resource request for '%s' was already cancelled";
      v32 = v5;
      v33 = 12;
LABEL_44:
      _os_log_debug_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEBUG, v31, buf, v33);
    }
  }

  else
  {
    v7 = re::resourceSharingLogObjects(v4)[1];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 24);
      if (*(a2 + 40))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = a2 + 41;
      }

      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = v8;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v9;
      v31 = "Resource connection %@ is closed, ignoring cancellation of request for '%s'";
      v32 = v7;
      v33 = 22;
      goto LABEL_44;
    }
  }

LABEL_14:
  os_unfair_lock_unlock((a1 + 128));
}

void re::ResourceFetchManager::executeWithMostRecentTransportVoucher(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 256));
  v7 = *(a1 + 264);
  os_unfair_lock_unlock((a1 + 256));
  if (v7)
  {
    v4 = v7;
    v5 = voucher_adopt();

    (*(**(a2 + 32) + 16))(*(a2 + 32));
    v6 = v5;
  }

  else
  {
    (*(**(a2 + 32) + 16))(*(a2 + 32));
  }
}

void re::ResourceFetchManager::executeWithMostRecentTransportVoucherForPeerID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 128));
  v6 = *(a1 + 152);
  if (!v6)
  {
LABEL_6:
    os_unfair_lock_unlock((a1 + 128));
LABEL_7:
    (*(**(a3 + 32) + 16))(*(a3 + 32));
    v9 = 0;
    goto LABEL_8;
  }

  v7 = (*(a1 + 168) + 8);
  v8 = v6 << 6;
  while (!*v7 || [*v7 peerID] != a2)
  {
    v7 += 8;
    v8 -= 64;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v10 = [*v7 voucher];

  os_unfair_lock_unlock((a1 + 128));
  if (!v10)
  {
    goto LABEL_7;
  }

  v13 = v10;
  v11 = voucher_adopt();

  (*(**(a3 + 32) + 16))(*(a3 + 32));
  v12 = v11;

  v9 = v13;
LABEL_8:
}

void re::ResourceFetchManager::setPushLoadHandler(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 384);
  if (v3 != *a2)
  {
    if (v2)
    {
      v5 = (v2 + 8);
      v3 = *(a1 + 384);
    }

    if (v3)
    {
    }

    *(a1 + 384) = v2;
  }
}

void re::ResourceFetchManager::reportLoadState(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 32);
  v12 = *&this[38]._os_unfair_lock_opaque;
  if (v12)
  {
    v13 = *&this[42]._os_unfair_lock_opaque;
    v14 = v12 << 6;
    while (1)
    {
      v15 = *(v13 + 8);
      if (v15)
      {
        if ([v15 peerID] == a3)
        {
          break;
        }
      }

      v13 += 64;
      v14 -= 64;
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v18 = re::ResourceFetchManager::Connection::remoteObjectProxy(v13);
    [v18 reportLoadState:a4 forAssetId:a2 assetSize:a5 errorCode:a6];

    os_unfair_lock_unlock(this + 32);
  }

  else
  {
LABEL_6:
    os_unfair_lock_unlock(this + 32);
    v17 = re::resourceSharingLogObjects(v16)[1];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v19 = 134218240;
      v20 = a3;
      v21 = 2048;
      v22 = a2;
      _os_log_fault_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_FAULT, "No resource fetch connection exists for peer '%llu'. Cannot report load state for asset '%llu'.", &v19, 0x16u);
    }
  }
}

void ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::resourceSharingLogObjects(a1)[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Resource connection with client %@ was interrupted", buf, 0xCu);
  }

  v4 = [a1[4] resourceFetchManager];
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    v7 = v6;
    re::ResourceFetchManager::connectionInterruptedOrInvalidated(v5, &v7);
  }
}

void re::ResourceFetchManager::connectionInterruptedOrInvalidated(uint64_t a1, id *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = *(a1 + 400);
  v5 = *(v4 + 120);
  if (v5)
  {
    v6 = 48 * v5;
    v7 = (*(v4 + 136) + 40);
    do
    {
      v8 = *a2;
      v9 = [v8 pid];
      v10 = *a2;
      v11 = v10;
      if (v10)
      {
        [v10 auditToken];
      }

      else
      {
        *buf = 0u;
        v71 = 0u;
      }

      v12 = *a2;
      v13 = [v12 peerID];
      LODWORD(v62) = v9;
      *v63 = v13;
      v14 = *v7;
      v7 += 6;
      (*(*v14 + 16))(v14, &v62, buf, v63);

      v6 -= 48;
    }

    while (v6);
  }

  os_unfair_lock_lock((a1 + 128));
  v16 = *(a1 + 152);
  if (!v16)
  {
LABEL_11:
    v21 = re::resourceSharingLogObjects(v15)[1];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a2;
      *buf = 138412290;
      *&buf[4] = v22;
      v23 = v22;
      v24 = v21;
      _os_log_debug_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEBUG, "Resource fetch connection with client %@ interrupted/invalidated: not found in connection list", buf, 0xCu);
    }

    goto LABEL_54;
  }

  v17 = 0;
  v18 = 0;
  v19 = *(a1 + 168);
  while (1)
  {
    v20 = v19 + v17;
    if (*(v19 + v17 + 8) == *a2)
    {
      break;
    }

    ++v18;
    v17 += 64;
    if (v16 == v18)
    {
      goto LABEL_11;
    }
  }

  v25 = *(v20 + 48);
  if (v25)
  {
    v26 = 0;
    v27 = *(v19 + v17 + 32);
    while (1)
    {
      v28 = *v27;
      v27 += 22;
      if (v28 < 0)
      {
        break;
      }

      if (v25 == ++v26)
      {
        LODWORD(v26) = *(v20 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v26 != v25)
  {
    v29 = *(v19 + v17 + 32);
    do
    {
      v30 = v29 + 88 * v26;
      v31 = *(v30 + 56);
      if (v31)
      {
        v32 = *(v30 + 72);
        v33 = 8 * v31;
        do
        {
          v34 = *v32++;
          *(v34 + 16) = 0;
          v33 -= 8;
        }

        while (v33);
      }

      if (v25 <= v26 + 1)
      {
        v35 = v26 + 1;
      }

      else
      {
        v35 = v25;
      }

      while (v35 - 1 != v26)
      {
        LODWORD(v26) = v26 + 1;
        if ((*(v29 + 88 * v26) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v26) = v35;
LABEL_31:
      ;
    }

    while (v26 != v25);
  }

  re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v20 + 16);
  v36 = *(a1 + 392);
  if (v36)
  {
    v37 = re::directMeshConnectionId(a2);
    (*(*v36 + 40))(v36, v37);
  }

  v38 = *(a1 + 384);
  if (v38)
  {
    v39 = (v38 + 8);
    v40 = *a2;
    (*(*v38 + 56))(v38, [v40 peerID]);
  }

  v41 = [*a2 peerID];
  v42 = re::PeerIDValidator::instance(v41);
  re::PeerIDValidator::remove_impl(v42, v41);
  v43 = *(a1 + 152);
  if (v43 <= v18)
  {
    v62 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 789;
    v66 = 2048;
    v67 = v18;
    v68 = 2048;
    v69 = v43;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  [*(*(a1 + 168) + v17) invalidate];
  v43 = *(a1 + 152);
  if (v43 <= v18)
  {
LABEL_58:
    v62 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 789;
    v66 = 2048;
    v67 = v18;
    v68 = 2048;
    v69 = v43;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v62 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "removeAt";
    v64 = 1024;
    v65 = 931;
    v66 = 2048;
    v67 = v18;
    v68 = 2048;
    v69 = v43;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  [*(*(a1 + 168) + v17 + 8) invalidate];
  v43 = *(a1 + 152);
  if (v43 <= v18)
  {
    goto LABEL_59;
  }

  if (v43 - 1 > v18)
  {
    v44 = *(a1 + 168);
    v45 = v44 + (v43 << 6);
    v46 = (v43 << 6) - 64;
    if (v46 != v17)
    {
      v47 = *(v45 - 64);
      *(v45 - 64) = 0;
      v48 = *(v44 + v17);
      *(v44 + v17) = v47;
    }

    v49 = *(v45 - 56);
    *(v45 - 56) = 0;
    v50 = v44 + v17;
    v51 = *(v44 + v17 + 8);
    *(v44 + v17 + 8) = v49;

    if (v46 != v17)
    {
      v52 = (v45 - 48);
      v53 = *(v50 + 16);
      if (!v53 || v53 == *v52)
      {
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v50 + 16), (v45 - 48));
      }

      else
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v50 + 16);
        if (*v52)
        {
          v54 = v44 + v17;
          v55 = *(v45 - 20);
          if (*(v54 + 40) < v55)
          {
            re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(v50 + 16, v55);
          }

          re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(v50 + 16, v45 - 48);
          ++*(v54 + 56);
        }
      }
    }

    v43 = *(a1 + 152);
  }

  v56 = *(a1 + 168) + (v43 << 6);
  re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v56 - 48));

  --*(a1 + 152);
  ++*(a1 + 160);
  v58 = re::resourceSharingLogObjects(v57)[1];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v59 = *a2;
    *buf = 138412290;
    *&buf[4] = v59;
    v60 = v59;
    v61 = v58;
    _os_log_debug_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEBUG, "Resource fetch connection with client %@ interrupted/invalidated: removed from connection list", buf, 0xCu);

    if (!v38)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v38)
  {
LABEL_53:
  }

LABEL_54:
  os_unfair_lock_unlock((a1 + 128));
}

void ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke_68(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::resourceSharingLogObjects(a1)[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Resource connection with client %@ was invalidated", buf, 0xCu);
  }

  v4 = [a1[4] resourceFetchManager];
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    v7 = v6;
    re::ResourceFetchManager::connectionInterruptedOrInvalidated(v5, &v7);
  }
}

void re::ResourceFetchManager::connectedPeers(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    re::DynamicArray<float *>::setCapacity(a2, v4);
    v5 = *&this[38]._os_unfair_lock_opaque;
    if (v5)
    {
      v6 = v5 << 6;
      v7 = (*&this[42]._os_unfair_lock_opaque + 8);
      do
      {
        if (*v7 && [*v7 peerID])
        {
          v8 = [*v7 peerID];
          re::DynamicArray<re::TransitionCondition *>::add(a2, &v8);
        }

        v7 += 8;
        v6 -= 64;
      }

      while (v6);
    }
  }

  os_unfair_lock_unlock(this + 32);
}

void re::ResourceFetchManager::assetPathsFetchedFromPeerId(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  os_unfair_lock_lock(this + 32);
  v6 = *&this[38]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = *&this[42]._os_unfair_lock_opaque;
    v8 = v7 + (v6 << 6);
    do
    {
      v9 = *(v7 + 8);
      if (v9 && [v9 peerID] && objc_msgSend(*(v7 + 8), "peerID") == a2)
      {
        v10 = *(v7 + 44);
        if (*(a3 + 8) < v10)
        {
          re::DynamicArray<re::DynamicString>::setCapacity(a3, v10);
        }

        v11 = *(v7 + 48);
        if (v11)
        {
          v12 = 0;
          v13 = *(v7 + 32);
          while (1)
          {
            v14 = *v13;
            v13 += 22;
            if (v14 < 0)
            {
              break;
            }

            if (v11 == ++v12)
            {
              LODWORD(v12) = *(v7 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v12) = 0;
        }

LABEL_20:
        while (v12 != v11)
        {
          re::DynamicArray<re::DynamicString>::add(a3, (*(v7 + 32) + 88 * v12 + 8));
          v15 = *(v7 + 48);
          if (v15 <= v12 + 1)
          {
            v15 = v12 + 1;
          }

          while (v15 - 1 != v12)
          {
            LODWORD(v12) = v12 + 1;
            if ((*(*(v7 + 32) + 88 * v12) & 0x80000000) != 0)
            {
              goto LABEL_20;
            }
          }

          LODWORD(v12) = v15;
        }
      }

      v7 += 64;
    }

    while (v7 != v8);
  }

  os_unfair_lock_unlock(this + 32);
}

uint64_t re::ResourceFetchManager::taskIdentifierPortForPeerID(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = v4 << 6;
    v6 = (*&this[42]._os_unfair_lock_opaque + 8);
    while (!*v6 || ![*v6 peerID] || objc_msgSend(*v6, "peerID") != a2)
    {
      v6 += 8;
      v5 -= 64;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v9 = [*v6 clientPorts];
    v10 = v9;
    if (v9)
    {
      v7 = [v9 taskIdentifierToken];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v7;
}

void re::ResourceFetchManager::updateResourceWithPayloadAndAssetId(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v48[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  if ([*a2 peerID])
  {
    v40 = 0;
    v41 = 0;
    v42 = 1;
    v43 = 0;
    v44 = 0;
    os_unfair_lock_lock((a1 + 128));
    v8 = *(a1 + 152);
    if (v8)
    {
      v9 = *a2;
      v10 = *(a1 + 168) + 16;
      v11 = v8 << 6;
      while (*(v10 - 8) != v9)
      {
        v10 += 64;
        v11 -= 64;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v16 = re::Hash<re::DynamicString>::operator()(buf, a3);
      re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v10, a3, v16);
      if (*&v46[4] != 0x7FFFFFFF)
      {
        v17 = *(v10 + 16) + 88 * *&v46[4];
        v18 = *(v17 + 56);
        if (v18)
        {
          v19 = *(v17 + 72);
          v20 = 8 * v18;
          while (1)
          {
            v21 = *v19;
            if (*(*v19 + 12))
            {
              break;
            }

LABEL_29:
            ++v19;
            v20 -= 8;
            if (!v20)
            {
              goto LABEL_30;
            }
          }

          re::details::retain<re::ResourceFetchManager::Request const>(*v19);
          if (v40)
          {
            v23 = v42;
            if (v42)
            {
              v24 = v41 + 1;
              if (v41 + 1 >= 2)
              {
                v25 = 2;
                goto LABEL_22;
              }
            }

            else if (v41 >= v43)
            {
              v24 = v41 + 1;
              if (v43 < v41 + 1)
              {
                v25 = 2 * v43;
LABEL_22:
                if (v25 <= v24)
                {
                  v26 = v24;
                }

                else
                {
                  v26 = v25;
                }

                re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&v40, v26);
                v23 = v42;
              }
            }
          }

          else
          {
            re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&v40, v41 + 1);
            v23 = v42 + 2;
            v42 += 2;
          }

          v27 = (v23 & 1) == 0;
          v28 = v44;
          v29 = v41;
          if (!v27)
          {
            v28 = &v43;
          }

          v28[v41] = v21;
          v41 = v29 + 1;
          v42 += 2;
          goto LABEL_29;
        }
      }

LABEL_30:
      os_unfair_lock_unlock((a1 + 128));
      if (*(a3 + 8))
      {
        v30 = *(a3 + 16);
      }

      else
      {
        v30 = a3 + 9;
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
      v32 = *(a1 + 48);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3321888768;
      v35[2] = ___ZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE_block_invoke;
      v35[3] = &__block_descriptor_104_a8_32c171_ZTSKZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEE3__1_e5_v8__0l;
      *buf = a1;
      *v46 = v31;
      v46[8] = *a4;
      v33 = v31;
      v34 = v32;
      v47 = *(a4 + 8);
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(v48, &v40);
      v35[4] = *buf;
      v36 = *v46;
      v37 = v46[8];
      v38 = v47;
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(v39, v48);
      dispatch_async(v34, v35);
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(v48);

      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(v39);
    }

    else
    {
LABEL_6:
      os_unfair_lock_unlock((a1 + 128));
    }

    re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(&v40);
  }

  else
  {
    v12 = re::resourceSharingLogObjects(0)[1];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a2;
      v14 = [v13 pid];
      if (*(a3 + 8))
      {
        v15 = *(a3 + 16);
      }

      else
      {
        v15 = a3 + 9;
      }

      *buf = 67109378;
      *&buf[4] = v14;
      *v46 = 2080;
      *&v46[2] = v15;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Client (pid %d) attempted to update asset %s without registering a peerID.  Update resource request will be ignored.", buf, 0x12u);
    }
  }
}

void ___ZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    if (*(a1 + 80))
    {
      v3 = (a1 + 88);
    }

    else
    {
      v3 = *(a1 + 96);
    }

    v7 = 8 * v2;
    do
    {
      v8 = *v3;
      if (*v3)
      {
        re::details::retain<re::ResourceFetchManager::Request const>(*v3);
      }

      v9[0] = *(a1 + 48);
      v10 = *(a1 + 56);
      (*(**(v8 + 12) + 16))(*(v8 + 12), v9);

      re::details::release<re::ResourceRequest>(v8);
      ++v3;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v4 = *(*(a1 + 32) + 384);
    if (v4)
    {
      v5 = (v4 + 8);
      v6 = [*(a1 + 40) UTF8String];
      v9[0] = *(a1 + 48);
      v10 = *(a1 + 56);
      (*(*v4 + 40))(v4, v6, v9);
    }
  }
}

uint64_t __copy_helper_block_a8_32c171_ZTSKZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEE3__1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(a1 + 64, (a2 + 64));
}

void __destroy_helper_block_a8_32c171_ZTSKZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEE3__1(uint64_t a1)
{
  re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit((a1 + 64));

  v2 = *(a1 + 40);
}

atomic_uint **re::ResourceFetchManager::createResourceRequest@<X0>(os_unfair_lock_s *this@<X0>, const re::DynamicString *a2@<X2>, uint64_t a3@<X1>, atomic_uint **a4@<X8>)
{
  v23[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 32);
  v8 = *&this[38]._os_unfair_lock_opaque;
  if (v8)
  {
    v9 = *&this[42]._os_unfair_lock_opaque + 16;
    v10 = v8 << 6;
    while (1)
    {
      v11 = *(v9 - 8);
      if (v11)
      {
        if ([v11 peerID] == a3)
        {
          break;
        }
      }

      v9 += 64;
      v10 -= 64;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v14 = *(v9 - 8);
    re::DynamicString::DynamicString(v22, a2);
    re::ResourceFetchManager::Request::create(&v19, this, v14, v22);
    v12 = v19;
    v17 = v19;
    v19 = 0;
    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v19);
    if (*&v22[0])
    {
      if (BYTE8(v22[0]))
      {
        (*(**&v22[0] + 40))();
      }

      memset(v22, 0, sizeof(v22));
    }

    v15 = re::Hash<re::DynamicString>::operator()(&v19, (v12 + 8));
    re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v19, v9, (v12 + 8), v15);
    if (v20 == 0x7FFFFFFF)
    {
      v23[0] = v12;
      v18[0] = v23;
      v18[1] = 1;
      re::DynamicArray<re::ResourceFetchManager::Request *>::DynamicArray(&v19, v18);
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v9, (v12 + 8), &v19);
      if (v19 && v21)
      {
        (*(*v19 + 40))();
      }

      v12 = v17;
    }

    else
    {
      v16 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v9, (v12 + 8));
      v19 = v12;
      re::DynamicArray<re::TransitionCondition *>::add(v16, &v19);
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  *a4 = v12;
  v17 = 0;
  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v17);
}

atomic_uint **re::ResourceFetchManager::receiveFetchResponse(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = *(a1 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseE_block_invoke;
  block[3] = &__block_descriptor_64_a8_32c80_ZTSKZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseEE3__0_e5_v8__0l;
  v7 = a1;
  v5 = v4;
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v8, *a2);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  block[4] = v7;
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v12, v8);
  v13 = v9;
  v14 = v10;
  dispatch_async(v5, block);

  re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v8);
  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v12);
}

void ___ZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseE_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v3 + 96))
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = v4;
      v20[0] = 0;
    }

    else
    {
      v8 = *(a1 + 48);
      if (!v8)
      {
        v18 = re::resourceSharingLogObjects(0)[1];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_FAULT, "Invalid resource fetch response, both payload and error are nil", buf, 2u);
        }

        re::makeResourceSharingError(0x1F5, 0, buf);
        v19 = *buf;
        *buf = 0;
        v20[0] = 0;
        v21 = v19;
        (*(**(v3 + 96) + 16))(*(v3 + 96), v20);

        v9 = *buf;
        goto LABEL_10;
      }

      [v8 setClientObject:*(v3 + 24)];
      v5 = *(a1 + 48);
      v20[0] = 1;
    }

    v21 = v5;
    (*(**(v3 + 96) + 16))(*(v3 + 96), v20);
    v9 = v21;
LABEL_10:

    goto LABEL_11;
  }

  v6 = re::resourceSharingLogObjects(a1)[1];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    if (*(v3 + 40))
    {
      v7 = *(v3 + 48);
    }

    else
    {
      v7 = v3 + 41;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_fault_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_FAULT, "Received fetch response for a request '%s' that should never get it! This request was not initiated by fetchRequest", buf, 0xCu);
  }

LABEL_11:
  os_unfair_lock_lock((v2 + 128));
  v10 = *(v2 + 208);
  v11 = *(v2 + 192);
  v12 = v10;
  if (v11)
  {
    v13 = 8 * v11;
    v12 = *(v2 + 208);
    while (*v12 != *(a1 + 40))
    {
      v12 += 8;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_21;
      }
    }
  }

  v14 = &v10[8 * v11];
  if (v12 != v14)
  {
    v15 = v12 - v10;
    v16 = v15 >> 3;
    if (v11 <= v15 >> 3)
    {
      v22 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "removeAt";
      v25 = 1024;
      v26 = 931;
      v27 = 2048;
      v28 = v16;
      v29 = 2048;
      v30 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v11 - 1 > v16)
    {
      v17 = *&v10[v15];
      *&v10[v15] = *(v14 - 1);
      *(v14 - 1) = v17;
      v10 = *(v2 + 208);
    }

    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v10[8 * v11 - 8]);
    --*(v2 + 192);
    ++*(v2 + 200);
  }

LABEL_21:
  os_unfair_lock_unlock((v2 + 128));
}

id __copy_helper_block_a8_32c80_ZTSKZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseEE3__0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 32) = v5;
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr((a1 + 40), v4);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

atomic_uint **__destroy_helper_block_a8_32c80_ZTSKZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseEE3__0(uint64_t a1)
{

  return re::SharedPtr<re::ResourceRequest>::~SharedPtr((a1 + 40));
}

void re::ResourceFetchManager::setDirectMeshHandler(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 392);
  if (v3 != *a2)
  {
    if (v2)
    {
      v5 = (v2 + 8);
      v3 = *(a1 + 392);
    }

    if (v3)
    {
    }

    *(a1 + 392) = v2;
  }
}

uint64_t (***re::ResourceFetchManager::setTrackableResourceHandler(re *a1, uint64_t a2))(void)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v11[0] = &unk_1F5CB9B20;
  v11[1] = a2;
  v11[3] = v4;
  v12 = v11;
  v5 = *(a1 + 50);
  v6 = (v5 + 3);
  if (v5 + 3 != v11)
  {
    re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable((v5 + 3));
    if (v12)
    {
      v7 = (*(*v12 + 40))(v12);
      if (v7 >= 0x19)
      {
        v8 = v7;
        v9 = v5[6];
        if (v9)
        {
          v6 = (*(*v9 + 32))(v9, v8, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      v5[7] = v6;
      (*(*v12 + 24))(v12, v6);
    }
  }

  return re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(v11);
}

uint64_t re::ResourceFetchManager::addOnConnectionAddedHandler(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 408);
  *(a1 + 408) = v3 + 1;
  v17 = *(a2 + 24);
  v18 = 0;
  v4 = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v16, a2);
  v5 = *(a1 + 400);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  if (v7 >= v6)
  {
    v8 = v7 + 1;
    if (v6 < v7 + 1)
    {
      if (*(v5 + 64))
      {
        v9 = 2 * v6;
        v10 = v6 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 64), v12);
      }

      else
      {
        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 64), v8);
        ++*(v5 + 88);
      }
    }

    v7 = *(v5 + 80);
  }

  v13 = (*(v5 + 96) + 48 * v7);
  v14 = v17;
  *v13 = v3;
  v13[4] = v14;
  v13[5] = 0;
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v13 + 1), v16);
  ++*(v5 + 80);
  ++*(v5 + 88);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v16);
  return v3;
}

uint64_t re::ResourceFetchManager::removeOnConnectionAddedHandler(uint64_t this, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 400);
  if (*(v2 + 80))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = 48 * v5;
      while (1)
      {
        v7 = (*(v2 + 96) + v6);
        v13 = *v7;
        v14[3] = v7[4];
        v14[4] = 0;
        re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v14, (v7 + 1));
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v14);
        if (v13 != a2)
        {
          break;
        }

        ++v5;
        v8 = *(v2 + 80);
        v6 += 48;
        if (v5 >= v8)
        {
          goto LABEL_10;
        }
      }

      if (v4 != v5)
      {
        v9 = *(v2 + 96);
        v10 = (v9 + 48 * v4);
        *v10 = *(v9 + v6);
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v10 + 1), v9 + v6 + 8);
      }

      ++v5;
      ++v4;
      v8 = *(v2 + 80);
    }

    while (v5 < v8);
LABEL_10:
    if (v4 != v8)
    {
      v11 = 48 * v8 - 48 * v4;
      v12 = *(v2 + 96) + 48 * v4 + 8;
      do
      {
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
      *(v2 + 80) = v4;
      ++*(v2 + 88);
    }
  }

  return this;
}

uint64_t re::ResourceFetchManager::addOnConnectionInterruptedOrInvalidatedHandler(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 408);
  *(a1 + 408) = v3 + 1;
  v17 = *(a2 + 24);
  v18 = 0;
  v4 = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v16, a2);
  v5 = *(a1 + 400);
  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  if (v7 >= v6)
  {
    v8 = v7 + 1;
    if (v6 < v7 + 1)
    {
      if (*(v5 + 104))
      {
        v9 = 2 * v6;
        v10 = v6 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 104), v12);
      }

      else
      {
        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 104), v8);
        ++*(v5 + 128);
      }
    }

    v7 = *(v5 + 120);
  }

  v13 = (*(v5 + 136) + 48 * v7);
  v14 = v17;
  *v13 = v3;
  v13[4] = v14;
  v13[5] = 0;
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v13 + 1), v16);
  ++*(v5 + 120);
  ++*(v5 + 128);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v16);
  return v3;
}

uint64_t re::ResourceFetchManager::removeOnConnectionInterruptedOrInvalidatedHandler(uint64_t this, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 400);
  if (*(v2 + 120))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = 48 * v5;
      while (1)
      {
        v7 = (*(v2 + 136) + v6);
        v13 = *v7;
        v14[3] = v7[4];
        v14[4] = 0;
        re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v14, (v7 + 1));
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v14);
        if (v13 != a2)
        {
          break;
        }

        ++v5;
        v8 = *(v2 + 120);
        v6 += 48;
        if (v5 >= v8)
        {
          goto LABEL_10;
        }
      }

      if (v4 != v5)
      {
        v9 = *(v2 + 136);
        v10 = (v9 + 48 * v4);
        *v10 = *(v9 + v6);
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v10 + 1), v9 + v6 + 8);
      }

      ++v5;
      ++v4;
      v8 = *(v2 + 120);
    }

    while (v5 < v8);
LABEL_10:
    if (v4 != v8)
    {
      v11 = 48 * v8 - 48 * v4;
      v12 = *(v2 + 136) + 48 * v4 + 8;
      do
      {
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
      *(v2 + 120) = v4;
      ++*(v2 + 128);
    }
  }

  return this;
}

void re::ResourceFetchManager::setShaderGraphLoader(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 424);
  *(a1 + 424) = v3;
}

void re::ResourceFetchManager::tryGetShaderGraph(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v23 = a4;
  os_unfair_lock_lock((a1 + 128));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = (*(a1 + 168) + 8);
    v9 = v7 << 6;
    while ([*v8 hash] != a2)
    {
      v8 += 8;
      v9 -= 64;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = *v8;
    os_unfair_lock_unlock((a1 + 128));
    if (v10)
    {
      v11 = v10;
      objc_sync_enter(v11);
      v12 = [v11 pendingShaderGraphs];
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      v14 = v13 ^ (v13 >> 31);
      re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, v12, a3, v14);
      if (v26 != 0x7FFFFFFF)
      {
        v23[2](v23, *(*(v12 + 16) + 32 * v26 + 16));
        v15 = [v11 pendingShaderGraphs];
        re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, v15, a3, v14);
        v16 = v26;
        if (v26 != 0x7FFFFFFF)
        {
          v17 = *(v15 + 16);
          v18 = (v17 + 32 * v26);
          v19 = *v18 & 0x7FFFFFFF;
          if (v27 == 0x7FFFFFFF)
          {
            *(*(v15 + 8) + 4 * v25) = v19;
          }

          else
          {
            *(v17 + 32 * v27) = *(v17 + 32 * v27) & 0x80000000 | v19;
          }

          v20 = *v18;
          if (*v18 < 0)
          {
            v20 &= ~0x80000000;
            *v18 = v20;
            v21 = *(v18 + 2);
            if (v21)
            {

              *(v18 + 2) = 0;
              v17 = *(v15 + 16);
              v20 = *(v17 + 32 * v16);
            }
          }

          *(v17 + 32 * v16) = *(v15 + 36) | v20 & 0x80000000;
          --*(v15 + 28);
          v22 = *(v15 + 40) + 1;
          *(v15 + 36) = v16;
          *(v15 + 40) = v22;
        }
      }

      objc_sync_exit(v11);
    }
  }

  else
  {
LABEL_5:
    os_unfair_lock_unlock((a1 + 128));
  }
}

void re::ResourceFetchManager::Request::create(uint64_t *a1, uint64_t a2, void *a3, re::DynamicString *a4)
{
  v7 = a3;
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 112, 8);
  *(v9 + 8) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0;
  *(v9 + 8) = 1;
  *v9 = &unk_1F5CB9A30;
  *(v9 + 48) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  v10 = re::DynamicString::setCapacity((v9 + 32), 0);
  *(v9 + 88) = re::globalAllocators(v10)[2];
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *a1 = v9;
  v11 = *(v9 + 24);
  *(v9 + 16) = a2;
  *(v9 + 24) = v7;
  v12 = v7;

  re::DynamicString::operator=((v9 + 32), a4);
}

uint64_t re::ResourceFetchManager::Request::create(uint64_t *a1, uint64_t a2, void *a3, const re::DynamicString *a4, uint64_t a5)
{
  v9 = a3;
  re::DynamicString::DynamicString(v11, a4);
  re::ResourceFetchManager::Request::create(a1, a2, v9, v11);

  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  return re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(*a1 + 64, a5);
}

uint64_t re::ResourceFetchManager::Request::dispose(_BOOL8 this)
{
  v1 = this;
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 16))
  {
    if ((*(this + 104) & 1) == 0)
    {
      v2 = re::resourceSharingLogObjects(this)[1];
      this = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
      if (this)
      {
        if (*(v1 + 40))
        {
          v5 = *(v1 + 6);
        }

        else
        {
          v5 = v1 + 41;
        }

        v6 = 136315138;
        v7 = v5;
        _os_log_fault_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_FAULT, "Resource request for '%s' was not cancelled before being released", &v6, 0xCu);
      }
    }
  }

  v3 = re::globalAllocators(this)[2];
  re::ResourceFetchManager::Request::~Request(v1);
  return (*(*v3 + 40))(v3, v1);
}

void re::ResourceFetchManager::Request::~Request(id *this)
{
  re::ResourceFetchManager::Request::~Request(this);

  JUMPOUT(0x1E6906520);
}

{
  re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable((this + 8));
  re::DynamicString::deinit((this + 4));
}

void *re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *(v8 + 1) = 0;
          *v11 = v12;
          *(v11 + 2) = 0u;
          *(v11 + 12) = 0;
          *(v11 + 1) = 0u;
          *(v11 + 52) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 2, v8 + 2);
          re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v8 + 2);

          v13 = *v8;
          v8 += 4;

          v11 += 8;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 8));
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

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t result)
{
  if ((*result & 0x80000000) != 0)
  {
    v1 = result;
    *result &= ~0x80000000;
    v2 = re::DynamicString::deinit((result + 8));
    result = *(v1 + 40);
    if (result)
    {
      if (*(v1 + 72))
      {
        result = (*(*result + 40))(result, v2);
      }

      *(v1 + 72) = 0;
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
      *(v1 + 40) = 0;
      ++*(v1 + 64);
    }
  }

  return result;
}

void *re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 8 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11++ = *v8;
          *v12++ = 0;
          re::SharedPtr<re::ResourceRequest>::~SharedPtr(v8);
          v8 = v12;
          v10 -= 8;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(*(a1 + 16) + v3);
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 8 * v4;
        do
        {
          re::SharedPtr<re::ResourceRequest>::~SharedPtr(v3++);
          v5 -= 8;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::ResourceFetchManager::Connection>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = (v3 + 16);
        v6 = v4 << 6;
        do
        {
          re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v5);

          v5 += 8;
          v6 -= 64;
        }

        while (v6);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

__int128 *re::PeerIDValidator::instance(re::PeerIDValidator *this)
{
  {
    re::PeerIDValidator::instance(void)::instance = 0u;
    unk_1ECEF56C8 = 0u;
    dword_1ECEF56D8 = 1065353216;
  }

  return &re::PeerIDValidator::instance(void)::instance;
}

void re::PeerIDValidator::remove_impl(re::PeerIDValidator *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this, &v8);
  if (v3)
  {
    v4 = *(v3 + 17) - 1;
    *(v3 + 17) = v4;
    v5 = *re::resourceSharingLogObjects(v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        *buf = 134217984;
        v10 = v8;
        _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Decrementing count for Entry with PeerID %llu.", buf, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 134217984;
        v10 = v8;
        _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Removing Entry with PeerID %llu.", buf, 0xCu);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__erase_unique<unsigned long long>(this, &v8);
    }
  }

  else
  {
    v7 = *re::resourceSharingLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "PeerIDValidator: Error removing Entry for PeerID %llu -- not found.", buf, 0xCu);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  result = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v12, a1, a2, v6);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    result = re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 72) = 0;
    *(v8 + 64) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 40) = 0;
    v9 = *(a3 + 8);
    *(v8 + 40) = *a3;
    *(v8 + 48) = v9;
    *a3 = 0;
    *(a3 + 8) = 0;
    v10 = *(v8 + 56);
    *(v8 + 56) = *(a3 + 16);
    *(a3 + 16) = v10;
    v11 = *(v8 + 72);
    *(v8 + 72) = *(a3 + 32);
    *(a3 + 32) = v11;
    ++*(a3 + 24);
    ++*(v8 + 64);
    ++*(a1 + 40);
  }

  return result;
}

atomic_uint **___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[6];
  v5 = re::resourceSharingLogObjects(v3)[1];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Encountered an error communicating with the remote object proxy, which will cause a load failure for asset '%@'. If the error domain is NSCocoaErrorDomain and the code is 4101 (NSXPCConnectionReplyInvalid), then the underlying issue might have been been logged from Foundation (see NSXPCConnection.m) with subsystem com.apple.Foundation and category xpc.exceptions. The error is: %@", buf, 0x16u);
  }

  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v9, *(*(a1[5] + 8) + 48));
  v10 = 0;
  v11 = v3;
  v7 = v3;
  re::ResourceFetchManager::receiveFetchResponse(v4, &v9);

  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v9);
}

unsigned int **re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(unsigned int **a1, unsigned int *a2)
{
  *a1 = a2;
  if (a2)
  {
    v4 = a2 + 2;
    if (!atomic_load(a2 + 2))
    {
      v8 = atomic_load(v4);
      re::internal::refCountCheckFailHandler(1, a2, v8);
    }

    add_explicit = atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    if (add_explicit - 0x100000 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(1, a2, (add_explicit + 1));
    }
  }

  return a1;
}

atomic_uint **___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v11, *(*(*(a1 + 32) + 8) + 48));
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  re::ResourceFetchManager::receiveFetchResponse(v7, &v11);

  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v11);
}

uint64_t ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_192(uint64_t a1)
{
  re::DynamicString::format("No resource fetch connection exists for peer '%llu'", &v9, **(a1 + 32));
  v2 = *(a1 + 40);
  if (v10)
  {
    v3 = *&v11[7];
  }

  else
  {
    v3 = v11;
  }

  re::makeResourceSharingErrorWithDescription(0x1F4, v3, &v6);
  v4 = v6;
  v6 = 0;
  v7[0] = 0;
  v8 = v4;
  (*(**(v2 + 96) + 16))(*(v2 + 96), v7);

  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 88 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 80) = a3;
  ++*(a1 + 28);
  return v7 + 88 * v5;
}

void re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 40;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 40) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 40) % *(v4 + 24));
        v8 = *(a2 + 16) + v6;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v8 - 8);
        v9 = *(v8 - 24);
        *(result + 8) = *(v8 - 32);
        *(v8 - 32) = 0;
        v10 = *(v8 - 16);
        *(v8 - 8) = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 - 24) = v12;
        *(v8 - 16) = v11;
        v13 = *(a2 + 16) + v6;
        *(result + 72) = 0;
        *(result + 64) = 0;
        *(result + 48) = 0;
        *(result + 56) = 0;
        *(result + 40) = 0;
        v14 = *(v13 + 8);
        *(result + 40) = *v13;
        *(result + 48) = v14;
        *v13 = 0;
        *(v13 + 8) = 0;
        v15 = *(result + 56);
        *(result + 56) = *(v13 + 16);
        *(v13 + 16) = v15;
        v16 = *(result + 72);
        *(result + 72) = *(v13 + 32);
        *(v13 + 32) = v16;
        ++*(v13 + 24);
        ++*(result + 64);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 88;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::DynamicArray<re::ResourceFetchManager::Request *>::DynamicArray(uint64_t a1, const void **a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = a2[1];
  if (v3)
  {
    re::DynamicArray<float *>::setCapacity(a1, v3);
    ++*(a1 + 24);
    v5 = a2[1];
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6 == -1)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v7 = *a2;
      if (v6 >= v5)
      {
        memmove(*(a1 + 32), *a2, 8 * v5);
      }

      else
      {
        re::DynamicArray<float *>::growCapacity(a1, a2[1]);
        v8 = *(a1 + 16);
        if (v8)
        {
          memmove(*(a1 + 32), v7, 8 * v8);
          v9 = *(a1 + 16);
        }

        else
        {
          v9 = 0;
        }

        memcpy((*(a1 + 32) + 8 * v9), &v7[8 * v8], 8 * (v5 - v8));
        *(a1 + 16) = v5;
      }

      ++*(a1 + 24);
    }
  }

  return a1;
}

id re::ResourceFetchManager::Connection::remoteObjectProxy(id *this)
{
  re::xpc::Connection::remoteObjectProxy(this, &v3);
  v1 = v3;

  return v1;
}

uint64_t re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        v14 = a1[4];
        if (v9)
        {
          if (v7)
          {
            v15 = a1 + 3;
          }

          else
          {
            v15 = a1[4];
          }

          a1[3] = *v15;
          *v15 = 0;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        result = (*(*result + 32))(result, 8 * a2, 8);
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

          v16 = a1[1];
          if (v16)
          {
            v17 = 8 * v16;
            v18 = result;
            do
            {
              *v18++ = *v13;
              *v13++ = 0;
              v17 -= 8;
            }

            while (v17);
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

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void re::details::retain<re::ResourceFetchManager::Request const>(unsigned int *a1)
{
  v2 = a1 + 2;
  if (!atomic_load(a1 + 2))
  {
    v5 = atomic_load(v2);
    re::internal::refCountCheckFailHandler(1, a1, v5);
  }

  add_explicit = atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  if (add_explicit - 0x100000 <= 0xFFEFFFFE)
  {

    re::internal::refCountCheckFailHandler(1, a1, (add_explicit + 1));
  }
}

uint64_t (***re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::PeerIDValidator::validateOrAdd_impl(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (*(a2 + 8) != *(v4 + 8))
    {
      v17 = *re::resourceSharingLogObjects(v4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = v5[3];
        v22 = *(a2 + 8);
        v23 = *(v5 + 8);
        *v26 = 134218496;
        *&v26[4] = v21;
        *&v26[12] = 1024;
        *&v26[14] = v22;
        *&v26[18] = 1024;
        *&v26[20] = v23;
        v11 = "PeerIDValidator: Attempting to add Entry with invalid pid for PeerID %llu: %u != %u.";
        v12 = v17;
        v13 = 24;
        goto LABEL_25;
      }

LABEL_19:
      v16 = 0;
      return v16 & 1;
    }

    if (*(v4 + 36) != *(a2 + 12) || *(v4 + 44) != *(a2 + 20) || *(v4 + 52) != *(a2 + 28) || *(v4 + 60) != *(a2 + 36))
    {
      v9 = *re::resourceSharingLogObjects(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v5[3];
        *v26 = 134217984;
        *&v26[4] = v10;
        v11 = "PeerIDValidator: Attempting to add Entry with invalid auditToken for PeerID: %llu.";
        v12 = v9;
        v13 = 12;
LABEL_25:
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, v26, v13);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    ++*(v4 + 17);
    v19 = *re::resourceSharingLogObjects(v4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v24 = v5[3];
      v25 = *(v5 + 17);
      *v26 = 134218240;
      *&v26[4] = v24;
      *&v26[12] = 1024;
      *&v26[14] = v25;
      _os_log_debug_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Incrementing count for Entry with PeerID %llu to %u.", v26, 0x12u);
    }

    v16 = 1;
  }

  else
  {
    *(a2 + 44) = 1;
    v14 = *re::resourceSharingLogObjects(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a2;
      *v26 = 134217984;
      *&v26[4] = v20;
      _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Adding new Entry with PeerID %llu.", v26, 0xCu);
    }

    *v26 = *a2;
    v15 = *(a2 + 16);
    *&v26[8] = *a2;
    v27 = v15;
    v28 = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,re::PeerIDValidator::Entry>>(a1, v26);
  }

  return v16 & 1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,re::PeerIDValidator::Entry>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void re::ResourceFetchManager::ConnectionEventHandlers::~ConnectionEventHandlers(re::ResourceFetchManager::ConnectionEventHandlers *this)
{
  *this = &unk_1F5CB9AD8;
  v2 = this + 24;
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 104);
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 64);
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9AD8;
  v2 = this + 24;
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 104);
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 64);
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (a1[2])
      {
        v3 = (a1 + 3);
      }

      else
      {
        v3 = a1[4];
      }

      v4 = 8 * v2;
      do
      {
        if (*v3)
        {
          re::details::release<re::ResourceRequest>(*v3);
          *v3 = 0;
        }

        ++v3;
        v4 -= 8;
      }

      while (v4);
    }

    v5 = *(a1 + 4);
    if ((v5 & 1) == 0)
    {
      (*(**a1 + 40))(*a1, a1[4]);
      v5 = *(a1 + 4);
    }

    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = (v5 | 1) + 2;
  }
}

uint64_t re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  *(a1 + 32) = 0;
  v4 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    *a1 = v4;
    re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, v6);
    v7 = *(a1 + 16);
    LOBYTE(v8) = v7 + 2;
    *(a1 + 16) = v7 + 2;
    v9 = a2[1];
    if (v9 >= *(a1 + 8))
    {
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, a2[1]);
      if (a2[2])
      {
        v17 = (a2 + 3);
      }

      else
      {
        v17 = a2[4];
      }

      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = v3;
      if ((v19 & 1) == 0)
      {
        v20 = *(a1 + 32);
      }

      if (v18)
      {
        v21 = 8 * v18;
        do
        {
          v22 = *v17++;
          re::SharedPtr<re::ResourceFetchManager::Request const>::reset(v20++, v22);
          v21 -= 8;
        }

        while (v21);
        v19 = *(a1 + 16);
      }

      if ((v19 & 1) == 0)
      {
        v3 = *(a1 + 32);
      }

      v23 = *(a1 + 8);
      v24 = a2[4];
      if (a2[2])
      {
        v24 = a2 + 3;
      }

      if (v23 != v9)
      {
        v25 = &v24[v23];
        v26 = &v3[v23];
        v27 = 8 * v9 - 8 * v23;
        do
        {
          v28 = *v25;
          *v26 = *v25;
          if (v28)
          {
            re::details::retain<re::ResourceFetchManager::Request const>(v28);
          }

          ++v25;
          ++v26;
          v27 -= 8;
        }

        while (v27);
      }
    }

    else
    {
      if (a2[2])
      {
        v10 = (a2 + 3);
      }

      else
      {
        v10 = a2[4];
      }

      v11 = v3;
      if ((v7 & 1) == 0)
      {
        v11 = *(a1 + 32);
      }

      if (v9)
      {
        v12 = 8 * v9;
        do
        {
          v13 = *v10++;
          re::SharedPtr<re::ResourceFetchManager::Request const>::reset(v11++, v13);
          v12 -= 8;
        }

        while (v12);
        v8 = *(a1 + 16);
      }

      if ((v8 & 1) == 0)
      {
        v3 = *(a1 + 32);
      }

      v14 = *(a1 + 8);
      if (v9 != v14)
      {
        v15 = &v3[v9];
        v16 = 8 * v14 - 8 * v9;
        do
        {
          if (*v15)
          {
            re::details::release<re::ResourceRequest>(*v15);
            *v15 = 0;
          }

          ++v15;
          v16 -= 8;
        }

        while (v16);
      }
    }

    *(a1 + 8) = v9;
  }

  return a1;
}

void re::SharedPtr<re::ResourceFetchManager::Request const>::reset(atomic_uint **a1, unsigned int *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    if (a2)
    {
      re::details::retain<re::ResourceFetchManager::Request const>(a2);
      v3 = *a1;
    }

    if (v3)
    {
      re::details::release<re::ResourceRequest>(v3);
    }

    *a1 = a2;
  }
}

void *re::internal::CallableRef<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F5CB9B88;
  a2[4] = *(v3 + 24);
  a2[5] = 0;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator=<24ul>((a2 + 1), v3);
  return a2;
}

void re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator()(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  (*(**(a1 + 32) + 16))(*(a1 + 32), &v6, &v5);
}

void *re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB9B88;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB9B88;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB9B88;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::moveInto(void *a1, void *a2)
{
  *a2 = &unk_1F5CB9B88;
  a2[4] = a1[4];
  a2[5] = 0;
  if (a2 != a1)
  {
    v4 = (a1 + 1);
    v5 = (a2 + 1);
    re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable((a2 + 1));
    v6 = a1[5];
    if (a2[4] != a1[4] || v6 == v4)
    {
      if (v6)
      {
        v8 = (*(*v6 + 40))(v6);
        if (v8 >= 0x19)
        {
          v9 = v8;
          v10 = a2[4];
          if (v10)
          {
            v5 = (*(*v10 + 32))(v10, v9, 0);
          }

          else
          {
            v5 = 0;
          }
        }

        a2[5] = v5;
        (*(*a1[5] + 32))(a1[5], v5);
        re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(v4);
      }
    }

    else
    {
      a2[5] = v6;
      a1[5] = 0;
    }
  }

  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 48 * v9;
        v11 = (v7 + 1);
        v12 = v8 + 8;
        do
        {
          *(v11 - 8) = *(v12 - 8);
          *(v11 + 24) = *(v12 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v11, v12);
          re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
          v11 += 48;
          v13 = v12 + 40;
          v12 += 48;
        }

        while (v13 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 32 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = v19;
                *v17 = 0;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void *re::allocInfo_PrereleaseVersionInfo(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192300, "PrereleaseVersionInfo");
    __cxa_guard_release(&qword_1EE191F30);
  }

  return &unk_1EE192300;
}

void re::initInfo_PrereleaseVersionInfo(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x1EE93697053F1DC4;
  v15[1] = "PrereleaseVersionInfo";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE191F38, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191F38);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "id";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE192078 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "frameworkVersion";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE192080 = v13;
      __cxa_guard_release(&qword_1EE191F38);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE192078;
  *(this + 9) = re::internal::defaultConstruct<re::PrereleaseVersionInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PrereleaseVersionInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::PrereleaseVersionInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::PrereleaseVersionInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::PrereleaseVersionInfo>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v5 = (a3 + 32);

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::PrereleaseVersionInfo>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::PrereleaseVersionInfo>(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  a1[2] = 0u;
  a1[3] = 0u;
  v3 = a1 + 2;

  return re::DynamicString::setCapacity(v3, 0);
}

double re::internal::defaultDestructV2<re::PrereleaseVersionInfo>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_PrereleaseSchemaVersion(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192390, "PrereleaseSchemaVersion");
    __cxa_guard_release(&qword_1EE191F48);
  }

  return &unk_1EE192390;
}

void re::initInfo_PrereleaseSchemaVersion(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xC639F5DA5C92FC66;
  v15[1] = "PrereleaseSchemaVersion";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE191F50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191F50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "id";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE192088 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_int(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "sdk";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE192090 = v13;
      __cxa_guard_release(&qword_1EE191F50);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE192088;
  *(this + 9) = re::internal::defaultConstruct<re::PrereleaseSchemaVersion>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PrereleaseSchemaVersion>;
  *(this + 13) = re::internal::defaultConstructV2<re::PrereleaseSchemaVersion>;
  *(this + 14) = re::internal::defaultDestructV2<re::PrereleaseSchemaVersion>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::PrereleaseSchemaVersion>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::PrereleaseSchemaVersion>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

void *re::allocInfo_PrereleaseHeader(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192420, "PrereleaseHeader");
    __cxa_guard_release(&qword_1EE191F60);
  }

  return &unk_1EE192420;
}

void re::initInfo_PrereleaseHeader(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xDD9D25828C678FA2;
  v21[1] = "PrereleaseHeader";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE191F68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191F68);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE191F58;
      if (!qword_1EE191F58)
      {
        v8 = re::allocInfo_PrereleaseSchemaVersion(v6);
        qword_1EE191F58 = v8;
        re::initInfo_PrereleaseSchemaVersion(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "schemaVersion";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x1800000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1920B8 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = v11;
      v13 = qword_1EE191F40;
      if (!qword_1EE191F40)
      {
        v13 = re::allocInfo_PrereleaseVersionInfo(v11);
        qword_1EE191F40 = v13;
        re::initInfo_PrereleaseVersionInfo(v13, v14);
      }

      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "versionInfo";
      *(v15 + 16) = v13;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x4000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1920C0 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::IntrospectionInfo<re::DynamicString>::get(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "identifier";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x8000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1920C8 = v19;
      __cxa_guard_release(&qword_1EE191F68);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1920B8;
  *(this + 9) = re::internal::defaultConstruct<re::PrereleaseHeader>;
  *(this + 10) = re::internal::defaultDestruct<re::PrereleaseHeader>;
  *(this + 11) = re::internal::defaultRetain<re::PrereleaseHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::PrereleaseHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::PrereleaseHeader>;
  *(this + 14) = re::internal::defaultDestructV2<re::PrereleaseHeader>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void *re::allocInfo_SceneCompatibilityVariant(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1924B0, "SceneCompatibilityVariant");
    __cxa_guard_release(&qword_1EE191F78);
  }

  return &unk_1EE1924B0;
}

void re::initInfo_SceneCompatibilityVariant(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x181C570854B9A702;
  v15[1] = "SceneCompatibilityVariant";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE191F80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191F80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_int(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "version";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE192098 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "fileName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1920A0 = v13;
      __cxa_guard_release(&qword_1EE191F80);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE192098;
  *(this + 9) = re::internal::defaultConstruct<re::SceneCompatibilityVariant>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SceneCompatibilityVariant>;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneCompatibilityVariant>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneCompatibilityVariant>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::SceneCompatibilityVariant>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0u;
  v3 = (a3 + 8);
  *(a3 + 24) = 0u;

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::SceneCompatibilityVariant>(uint64_t a1)
{
  *(a1 + 8) = 0u;
  v1 = (a1 + 8);
  *(a1 + 24) = 0u;

  return re::DynamicString::setCapacity(v1, 0);
}

void *re::allocInfo_SceneDescriptor(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192540, "SceneDescriptor");
    __cxa_guard_release(&qword_1EE191F90);
  }

  return &unk_1EE192540;
}

void re::initInfo_SceneDescriptor(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xABFCACCDD6C081F6;
  v21[1] = "SceneDescriptor";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE191F98, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191F98);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "fileName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x1800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1920E8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "sceneName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1920F0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "sceneIdentifier";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1920F8 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<re::SceneCompatibilityVariant>>::get(v18);
      v19 = (*(*v18 + 32))(v18, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "sceneCompatibilityVariants";
      *(v19 + 16) = &qword_1EE1921B8;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xA000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE192100 = v19;
      __cxa_guard_release(&qword_1EE191F98);
    }
  }

  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1920E8;
  *(this + 9) = re::internal::defaultConstruct<re::SceneDescriptor>;
  *(this + 10) = re::internal::defaultDestruct<re::SceneDescriptor>;
  *(this + 11) = re::internal::defaultRetain<re::SceneDescriptor>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::SceneDescriptor>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<re::DynamicString>::IntrospectionOptional(&re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  if ((re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info, 0);
    qword_1EE186690 = 0x280000000DLL;
    dword_1EE186698 = v8;
    word_1EE18669C = 0;
    *&xmmword_1EE1866A0 = 0;
    *(&xmmword_1EE1866A0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1866B0 = v7;
    unk_1EE1866B8 = 0;
    re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info = &unk_1F5CB9DA8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE1866A0 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::SceneCompatibilityVariant>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192058, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192058);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1921B8);
      qword_1EE1921B8 = &unk_1F5CB9E28;
      __cxa_guard_release(&qword_1EE192058);
    }
  }

  if ((byte_1EE191F29 & 1) == 0)
  {
    v1 = qword_1EE191F88;
    if (qword_1EE191F88 || (v1 = re::allocInfo_SceneCompatibilityVariant(a1), qword_1EE191F88 = v1, re::initInfo_SceneCompatibilityVariant(v1, v2), (byte_1EE191F29 & 1) == 0))
    {
      byte_1EE191F29 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1921B8, 0);
      qword_1EE1921C8 = 0x2800000003;
      dword_1EE1921D0 = v3;
      word_1EE1921D4 = 0;
      *&xmmword_1EE1921D8 = 0;
      *(&xmmword_1EE1921D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1921E8 = v1;
      qword_1EE1921F0 = 0;
      qword_1EE1921B8 = &unk_1F5CB9E28;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1921B8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1921D8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

re::SceneDescriptor *re::internal::defaultConstruct<re::SceneDescriptor>(int a1, int a2, re::SceneDescriptor *this)
{
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::SceneDescriptor::SceneDescriptor(this);
}

re::SceneDescriptor *re::internal::defaultConstructV2<re::SceneDescriptor>(re::SceneDescriptor *this)
{
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::SceneDescriptor::SceneDescriptor(this);
}

void *re::allocInfo_AssetMapAssetDescriptor(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1925D0, "AssetMapAssetDescriptor");
    __cxa_guard_release(&qword_1EE191FA8);
  }

  return &unk_1EE1925D0;
}

void re::initInfo_AssetMapAssetDescriptor(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xF2989CE2313F00E6;
  v23[1] = "AssetMapAssetDescriptor";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE191FB0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191FB0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "fileNames";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE192108 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "internalDependencies";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE192110 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "label";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE192118 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "metadata";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x7800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE192120 = v21;
      __cxa_guard_release(&qword_1EE191FB0);
    }
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE192108;
  *(this + 9) = re::internal::defaultConstruct<re::AssetMapAssetDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AssetMapAssetDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::AssetMapAssetDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssetMapAssetDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info) = &unk_1F5CB9EC0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info, 0);
    qword_1EE186BD8 = 0x2800000003;
    dword_1EE186BE0 = v8;
    word_1EE186BE4 = 0;
    *&xmmword_1EE186BE8 = 0;
    *(&xmmword_1EE186BE8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186BF8 = v7;
    unk_1EE186C00 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info = &unk_1F5CB9EC0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186BE8 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info) = &unk_1F5CB9F58;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info, 0);
    qword_1EE1862C8 = 0x3000000007;
    dword_1EE1862D0 = v10;
    word_1EE1862D4 = 0;
    *&xmmword_1EE1862D8 = 0;
    *(&xmmword_1EE1862D8 + 1) = 0xFFFFFFFFLL;
    qword_1EE1862E8 = v6;
    unk_1EE1862F0 = 0;
    qword_1EE1862F8 = v9;
    unk_1EE186300 = 0;
    re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info = &unk_1F5CB9F58;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info, &v19);
    if (BYTE8(v19))
    {
      v13 = v20;
    }

    else
    {
      v13 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v14 = v6[2];
    v18 = *(v9 + 32);
    v19 = v14;
    xmmword_1EE1862D8 = v17;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v15 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::unlock(v15);
  }

  return &re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::AssetMapAssetDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 156) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestruct<re::AssetMapAssetDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a3 + 120));
  if (*(a3 + 80) == 1)
  {
    re::DynamicString::deinit((a3 + 88));
  }

  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<re::DynamicString>::deinit(a3);
}

double re::internal::defaultConstructV2<re::AssetMapAssetDescriptor>(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 156) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::AssetMapAssetDescriptor>(uint64_t a1)
{
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 120));
  if (*(a1 + 80) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<re::DynamicString>::deinit(a1);
}

void *re::allocInfo_RealityFileConfigurationEntryDescriptor(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192660, "RealityFileConfigurationEntryDescriptor");
    __cxa_guard_release(&qword_1EE191FC0);
  }

  return &unk_1EE192660;
}

void re::initInfo_RealityFileConfigurationEntryDescriptor(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x45B4E41531619F2ELL;
  v15[1] = "RealityFileConfigurationEntryDescriptor";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE191FC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191FC8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "assetIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1920A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "configurations";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1920B0 = v13;
      __cxa_guard_release(&qword_1EE191FC8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1920A8;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info) = &unk_1F5CB9FF8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info, 0);
    qword_1EE186EF0 = 0x1800000004;
    dword_1EE186EF8 = v8;
    word_1EE186EFC = 0;
    *&xmmword_1EE186F00 = 0;
    *(&xmmword_1EE186F00 + 1) = 0xFFFFFFFFLL;
    qword_1EE186F10 = v7;
    unk_1EE186F18 = 0;
    re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info = &unk_1F5CB9FF8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186F00 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::RealityFileConfigurationEntryDescriptor>(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
}

void *re::internal::defaultConstructV2<re::RealityFileConfigurationEntryDescriptor>(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *re::allocInfo_AssetMap(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1926F0, "AssetMap");
    __cxa_guard_release(&qword_1EE191FD8);
  }

  return &unk_1EE1926F0;
}

void re::initInfo_AssetMap(re *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x371DB3700D8;
  v25[1] = "AssetMap";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE191FE0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191FE0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::SceneDescriptor>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "scenes";
      *(v7 + 16) = &qword_1EE1921F8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0x1800000001;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE192150 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::DynamicArray<re::AssetMapAssetDescriptor>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "assets";
      *(v9 + 16) = &qword_1EE192238;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x4000000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE192158 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "certifiedFreeOfChangeSceneActions";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x6800000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE192160 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "configurationSetNames";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x7000000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE192168 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::FixedArray<re::RealityFileConfigurationEntryDescriptor>>::get(v18);
      v19 = (*(*v18 + 32))(v18, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "configurationEntryDescriptors";
      *(v19 + 16) = &qword_1EE192278;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xA000000005;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE192170 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "defaultConfigurationNames";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x8800000006;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE192178 = v23;
      __cxa_guard_release(&qword_1EE191FE0);
    }
  }

  *(this + 2) = 0x1B800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE192150;
  *(this + 9) = re::internal::defaultConstruct<re::AssetMap>;
  *(this + 10) = re::internal::defaultDestruct<re::AssetMap>;
  *(this + 11) = re::internal::defaultRetain<re::AssetMap>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::AssetMap>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::AssetMap>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssetMap>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void re::IntrospectionInfo<re::DynamicArray<re::SceneDescriptor>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192060, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192060);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1921F8);
      qword_1EE1921F8 = &unk_1F5CBA090;
      __cxa_guard_release(&qword_1EE192060);
    }
  }

  if ((byte_1EE191F2A & 1) == 0)
  {
    v1 = qword_1EE191FA0;
    if (qword_1EE191FA0 || (v1 = re::allocInfo_SceneDescriptor(a1), qword_1EE191FA0 = v1, re::initInfo_SceneDescriptor(v1, v2), (byte_1EE191F2A & 1) == 0))
    {
      byte_1EE191F2A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1921F8, 0);
      qword_1EE192208 = 0x2800000003;
      dword_1EE192210 = v3;
      word_1EE192214 = 0;
      *&xmmword_1EE192218 = 0;
      *(&xmmword_1EE192218 + 1) = 0xFFFFFFFFLL;
      qword_1EE192228 = v1;
      qword_1EE192230 = 0;
      qword_1EE1921F8 = &unk_1F5CBA090;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1921F8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE192218 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::AssetMapAssetDescriptor>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192068, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192068);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE192238);
      qword_1EE192238 = &unk_1F5CBA128;
      __cxa_guard_release(&qword_1EE192068);
    }
  }

  if ((byte_1EE191F2B & 1) == 0)
  {
    v1 = qword_1EE191FB8;
    if (qword_1EE191FB8 || (v1 = re::allocInfo_AssetMapAssetDescriptor(a1), qword_1EE191FB8 = v1, re::initInfo_AssetMapAssetDescriptor(v1, v2), (byte_1EE191F2B & 1) == 0))
    {
      byte_1EE191F2B = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE192238, 0);
      qword_1EE192248 = 0x2800000003;
      dword_1EE192250 = v3;
      word_1EE192254 = 0;
      *&xmmword_1EE192258 = 0;
      *(&xmmword_1EE192258 + 1) = 0xFFFFFFFFLL;
      qword_1EE192268 = v1;
      qword_1EE192270 = 0;
      qword_1EE192238 = &unk_1F5CBA128;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE192238, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE192258 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::FixedArray<re::RealityFileConfigurationEntryDescriptor>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192070, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192070);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE192278);
      qword_1EE192278 = &unk_1F5CBA1C0;
      __cxa_guard_release(&qword_1EE192070);
    }
  }

  if ((byte_1EE191F2C & 1) == 0)
  {
    v1 = qword_1EE191FD0;
    if (qword_1EE191FD0 || (v1 = re::allocInfo_RealityFileConfigurationEntryDescriptor(a1), qword_1EE191FD0 = v1, re::initInfo_RealityFileConfigurationEntryDescriptor(v1, v2), (byte_1EE191F2C & 1) == 0))
    {
      byte_1EE191F2C = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE192278, 0);
      qword_1EE192288 = 0x1800000004;
      dword_1EE192290 = v3;
      word_1EE192294 = 0;
      *&xmmword_1EE192298 = 0;
      *(&xmmword_1EE192298 + 1) = 0xFFFFFFFFLL;
      qword_1EE1922A8 = v1;
      qword_1EE1922B0 = 0;
      qword_1EE192278 = &unk_1F5CBA1C0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE192278, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x18uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE192298 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RealityFileVersionInfo(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192780, "RealityFileVersionInfo");
    __cxa_guard_release(&qword_1EE191FF0);
  }

  return &unk_1EE192780;
}

void re::initInfo_RealityFileVersionInfo(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x3B095B3399DAFC74;
  v18[1] = "RealityFileVersionInfo";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE191FF8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191FF8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "id";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1920D0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "frameworkVersion";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1920D8 = v13;
      v14 = re::introspectionAllocator(v13);
      re::introspect_RealityFilePlatform(v14, v15);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "originPlatform";
      *(v16 + 16) = &qword_1EE1922B8;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x4000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1920E0 = v16;
      __cxa_guard_release(&qword_1EE191FF8);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1920D0;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileVersionInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileVersionInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileVersionInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileVersionInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void *re::internal::defaultConstruct<re::RealityFileVersionInfo>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[2] = 0u;
  v3[3] = 0u;
  v3 += 2;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 8) = 2;
  return result;
}

double re::internal::defaultDestruct<re::RealityFileVersionInfo>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::RealityFileVersionInfo>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 8) = 2;
  return result;
}

double re::internal::defaultDestructV2<re::RealityFileVersionInfo>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void re::introspect_RealityFilePlatform(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE192008, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE192010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192010))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1922B8, "RealityFilePlatform", 4, 4, 1, 1);
      qword_1EE1922B8 = &unk_1F5D0C658;
      qword_1EE1922F8 = &re::introspect_RealityFilePlatform(BOOL)::enumTable;
      dword_1EE1922C8 = 9;
      __cxa_guard_release(&qword_1EE192010);
    }

    if (_MergedGlobals_43)
    {
      break;
    }

    _MergedGlobals_43 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1922B8, a2);
    v43 = 0xCED4E9B28AD038BELL;
    v44 = "RealityFilePlatform";
    v47 = 0x607DD0F01DCLL;
    v48 = "uint32_t";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1922F8;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1922D8 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE192008);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "RealityFilePlatformNone";
      qword_1EE192180 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "RealityFilePlatformAll";
      qword_1EE192188 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "RealityFilePlatformIOS";
      qword_1EE192190 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "RealityFilePlatformMacOS";
      qword_1EE192198 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "RealityFilePlatformVisionOS";
      qword_1EE1921A0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 2;
      *(v40 + 1) = 4;
      *(v40 + 2) = "RealityFilePlatformXROS";
      qword_1EE1921A8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 8) = 5;
      *(v42 + 16) = "RealityFilePlatformTVOS";
      qword_1EE1921B0 = v42;
      __cxa_guard_release(&qword_1EE192008);
    }
  }
}

void *re::allocInfo_RealityFileHeader(re *this)
{
  if ((atomic_load_explicit(&qword_1EE192018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192018))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192810, "RealityFileHeader");
    __cxa_guard_release(&qword_1EE192018);
  }

  return &unk_1EE192810;
}

void re::initInfo_RealityFileHeader(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0x6061B851532742F2;
  v27[1] = "RealityFileHeader";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE192020, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE192020);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE192000;
      if (!qword_1EE192000)
      {
        v8 = re::allocInfo_RealityFileVersionInfo(v6);
        qword_1EE192000 = v8;
        re::initInfo_RealityFileVersionInfo(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "versionInfo";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x1800000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE192128 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_int(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "minVersion";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x6000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE192130 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "metadata";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x6800000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE192138 = v18;
      v19 = re::introspectionAllocator(v18);
      re::introspect_RealityFilePlatform(v19, v20);
      v21 = (*(*v19 + 32))(v19, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "targetPlatform";
      *(v21 + 16) = &qword_1EE1922B8;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x9800000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE192140 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_int(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "restrictedSeedVersion";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x6400000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE192148 = v25;
      __cxa_guard_release(&qword_1EE192020);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE192128;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileHeader>;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileHeader>;
  *(this + 11) = re::internal::defaultRetain<re::RealityFileHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::RealityFileHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileHeader>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileHeader>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void *re::allocInfo_DeduplicationInformation(re *this)
{
  if ((atomic_load_explicit(&qword_1EE192030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192030))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1928A0, "DeduplicationInformation");
    __cxa_guard_release(&qword_1EE192030);
  }

  return &unk_1EE1928A0;
}

void re::initInfo_DeduplicationInformation(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x60185639ABC815FELL;
  v11[1] = "DeduplicationInformation";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE192040, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE192040);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "originalAssetToDuplicates";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE192038 = v9;
      __cxa_guard_release(&qword_1EE192040);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE192038;
  *(this + 9) = re::internal::defaultConstruct<re::DeduplicationInformation>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DeduplicationInformation>;
  *(this + 13) = re::internal::defaultConstructV2<re::DeduplicationInformation>;
  *(this + 14) = re::internal::defaultDestructV2<re::DeduplicationInformation>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info) = &unk_1F5CBA258;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  v8 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, 0);
    qword_1EE186378 = 0x3000000007;
    dword_1EE186380 = v10;
    word_1EE186384 = 0;
    *&xmmword_1EE186388 = 0;
    *(&xmmword_1EE186388 + 1) = 0xFFFFFFFFLL;
    qword_1EE186398 = v6;
    unk_1EE1863A0 = 0;
    qword_1EE1863A8 = v9;
    unk_1EE1863B0 = 0;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info = &unk_1F5CBA258;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, &v19);
    if (BYTE8(v19))
    {
      v13 = v20;
    }

    else
    {
      v13 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v14 = v6[2];
    v18 = *(v9 + 32);
    v19 = v14;
    xmmword_1EE186388 = v17;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v15 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::unlock(v15);
  }

  return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::DeduplicationInformation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 36) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::DeduplicationInformation>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 36) = 0x7FFFFFFFLL;
  return result;
}

re::RealityFile *re::RealityFile::RealityFile(re::RealityFile *this, re *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9BE0;
  re::filePathWithURL(a2, (this + 24));
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  re::DynamicString::setCapacity(this + 7, 0);
  *(this + 11) = 0;
  *(this + 24) = 1;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  v5 = *(this + 4);
  if (v5)
  {
    v6 = v5 >> 1;
  }

  else
  {
    v6 = v5 >> 1;
  }

  if (!v6)
  {
    re::DynamicString::format("Failed to create a file path from URL %s.", &v8, a2);
    re::DynamicString::operator=((this + 56), &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  return this;
}

re::RealityFile *re::RealityFile::RealityFile(re::RealityFile *this, id *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9BE0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v5 = re::DynamicString::setCapacity(this + 3, 0);
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  re::DynamicString::setCapacity(this + 7, 0);
  *(this + 11) = *a2;
  *(this + 24) = 2;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return this;
}

void re::RealityFile::~RealityFile(re::RealityFile *this)
{
  *this = &unk_1F5CB9BE0;
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  v3 = *(this + 15);
  if (v3)
  {

    *(this + 15) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {

    *(this + 14) = 0;
  }

  v5 = *(this + 13);
  if (v5)
  {

    *(this + 13) = 0;
  }

  re::DynamicString::deinit((this + 56));
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityFile::~RealityFile(this);

  JUMPOUT(0x1E6906520);
}

void re::RealityFile::makeByOpeningFileAtURL(re::RealityFile *this@<X0>, uint64_t a2@<X8>)
{
  v14 = this;
  if (this)
  {
    re::make::shared::object<re::RealityFile,char const*&>(&v14, &v13);
    re::RealityFile::init(v13, v4, &v9);
    if (v9 == 1)
    {
      v5 = v13;
      if (v13)
      {
        v6 = v13 + 8;
      }

      *a2 = 1;
      *(a2 + 8) = v5;
    }

    else
    {
      v8 = v10;
      *a2 = 0;
      *(a2 + 8) = v8;
    }

    if (v13)
    {
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    re::DynamicString::setCapacity(&v9, 0);
    v7 = v13;
    v13 = 0;
    *a2 = 0;
    *(a2 + 8) = v7;

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }
}

uint64_t re::RealityFile::init@<X0>(re::RealityFile *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = this;
  v234 = *MEMORY[0x1E69E9840];
  v9 = *(this + 24);
  if (v9 == 1)
  {
    v11 = *(this + 4);
    v12 = v11 >> 1;
    if ((v11 & 1) == 0)
    {
      v12 = v11 >> 1;
    }

    if (!v12)
    {
      if (*(this + 64))
      {
        v14 = *(this + 9);
      }

      else
      {
        v14 = this + 65;
      }

      v18 = values;
      values = 0;
      v204[0] = 0;
      v205 = v18;

      if (keys[0] && (keys[1] & 1) != 0)
      {
        (*(*keys[0] + 40))();
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v13 = *(this + 5);
    }

    else
    {
      v13 = (this + 33);
    }

    v10 = (v7 + 15);
    re::RealityArchive::makeByOpeningFileAtPath(v13, v7[15], keys);
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_366;
    }

    v10 = (this + 120);
    re::RealityArchive::makeByReadingBuffer(this + 11, *(this + 15), keys);
  }

  if (LOBYTE(keys[0]) != 1)
  {
    v18 = values;
    values = 0;
    v204[0] = 0;
    v205 = v18;

    re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
LABEL_24:
    v19 = v18;
    *a3 = 0;
    a3[1] = v19;
    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v204);
  }

  if (!v7[16])
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7 + 16, keys[1]);
  }

  if (!*v10)
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, *(keys[1] + 4));
  }

  v6 = keys[1];
  keys[1] = 0;
  v204[0] = 1;
  v205 = v6;
  v15 = re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
  v5 = &v216;
  v216 = 0;
  valuePtr = 0;
  memset(v210, 0, sizeof(v210));
  re::DynamicString::setCapacity(v210, 0);
  re::RealityArchive::newDataByLoadingEntryWithName(v6, "header.json", v227);
  if ((v227[0] & 1) == 0)
  {
    v20 = keys[0];
    keys[0] = 0;

    v21 = 0;
    goto LABEL_83;
  }

  v4 = *&v227[8];
  v3 = &unk_1EE187000;
  {
    goto LABEL_369;
  }

  while (1)
  {
    *v208 = *(*(v3 + 1688) + 32);
    if (!*v208)
    {
      v22 = *(v5 + 192);
      v23 = keys[2];
      v24 = keys[3];
      LOBYTE(v226[0]) = 0;
      *(v5 + 104) = v22;
      v226[3] = v23;
      v226[4] = v24;
LABEL_47:
      v28 = re::DynamicString::operator=(v210, &v226[1]);
      v34 = 2;
LABEL_49:
      v35 = *&v227[8];
      if ((atomic_load_explicit(&qword_1EE192050, memory_order_acquire) & 1) == 0)
      {
        v28 = __cxa_guard_acquire(&qword_1EE192050);
        if (v28)
        {
          qword_1EE192048 = re::internal::getOrCreateInfo("PrereleaseHeader", re::allocInfo_PrereleaseHeader, re::initInfo_PrereleaseHeader, &unk_1EE191F70, 0);
          __cxa_guard_release(&qword_1EE192050);
        }
      }

      *v208 = *(qword_1EE192048 + 32);
      if (*v208)
      {
        re::IntrospectionSharedLock::IntrospectionSharedLock(&v207);
        re::TypeRegistry::typeInfo(*v208, v208, keys);
        v36 = re::TypeInfo::TypeInfo(&v212, &keys[1]);
        if (keys[0])
        {
          v37 = keys[1];
          re::IntrospectionSharedLock::~IntrospectionSharedLock(&v207);
          if (v37)
          {
            v38 = v37 + 1;
          }

          v39 = v37[4];
          if (v39)
          {
            v40 = v39 >> 1;
          }

          else
          {
            v40 = v39 >> 1;
          }

          if (v40)
          {
            v41 = v37[17];
            if ((v41 & 1) != 0 ? v41 >> 1 : v41 >> 1)
            {
              valuePtr = 0;
              v34 = 8;
            }
          }

          goto LABEL_72;
        }

        v46 = *(v5 + 216);
        v47 = *(&v231 + 1);
        v48 = v232;
        *(v5 + 40) = *&keys[1];
        *(v5 + 56) = v46;
        v224 = v47;
        v225 = v48;
        LOBYTE(values) = 0;
        re::DynamicString::DynamicString(keys, &v222);
        v43 = keys[1];
        v44 = keys[2];
        v45 = keys[0];
        if (v222 && (v223 & 1) != 0)
        {
          (*(*v222 + 40))();
        }

        re::IntrospectionSharedLock::~IntrospectionSharedLock(&v207);
        if (!v45)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v43 = keys[1];
        v44 = keys[2];
        v45 = keys[0];
        if (!keys[0])
        {
LABEL_72:
          CFRelease(*&v227[8]);
          if (v34 != 21 && v34 != 8)
          {
            if (BYTE8(v210[0]))
            {
              v58 = *&v210[1];
            }

            else
            {
              v58 = (v210 | 9);
            }

            v59 = v34;
            goto LABEL_104;
          }

          keys[0] = @"RERealityFileUnsupportedVersionKey";
          values = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          v50 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFRelease(values);
          re::WrappedError::make(@"RERealityFileErrorDomain", v34, v50, &v212);
          v20 = v212;
          v212 = 0;

LABEL_75:
          v21 = 0;
          goto LABEL_76;
        }
      }

      if (v43)
      {
        (*(*v45 + 40))(v45, v44);
      }

      goto LABEL_72;
    }

    re::IntrospectionSharedLock::IntrospectionSharedLock(&v207);
    re::TypeRegistry::typeInfo(*v208, v208, keys);
    v17 = re::TypeInfo::TypeInfo(&v212, &keys[1]);
    if (LOBYTE(keys[0]) == 1)
    {
      v220 = keys[1];
      LOBYTE(v226[0]) = 1;
      v226[1] = keys[1];
    }

    else
    {
      v25 = *(v5 + 216);
      v26 = *(&v231 + 1);
      v27 = v232;
      *(v5 + 40) = *&keys[1];
      *(v5 + 56) = v25;
      v224 = v26;
      v225 = v27;
      LOBYTE(values) = 0;
      re::DynamicString::DynamicString(keys, &v222);
      LOBYTE(v226[0]) = 0;
      v226[1] = keys[0];
      v226[4] = keys[3];
      *(v5 + 112) = *(v5 + 200);
      if (v222 && (v223 & 1) != 0)
      {
        (*(*v222 + 40))();
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v207);
    if ((v226[0] & 1) == 0)
    {
      goto LABEL_47;
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v216, v226[1]);
    v20 = v216;
    v29 = *(v216 + 32);
    if (v29)
    {
      v30 = v29 >> 1;
    }

    else
    {
      v30 = v29 >> 1;
    }

    if (!v30 || ((v31 = *(v216 + 64), (v31 & 1) != 0) ? (v32 = v31 >> 1) : (v32 = v31 >> 1), !v32 || !*(v216 + 88) || (v33 = *(v216 + 96), v33 < 1)))
    {
      v34 = 3;
      goto LABEL_49;
    }

    if (v33 >= 0x10)
    {
      valuePtr = *(v216 + 96);
      v34 = 8;
      goto LABEL_49;
    }

    if (*(v216 + 100))
    {
      valuePtr = *(v216 + 100);
      v34 = 21;
      goto LABEL_49;
    }

    CFRelease(*&v227[8]);
    v153 = v20[38] - 3;
    if (v153 < 3)
    {
      re::DynamicString::format("Cannot load reality file using OS '%s' because the reality file may only be opened on platform '%s'.", keys, "iOS", off_1E871AB50[v153]);
      v59 = 15;
LABEL_104:
      v20 = values;
      values = 0;

      if (keys[0] && (keys[1] & 1) != 0)
      {
        (*(*keys[0] + 40))();
      }

      goto LABEL_75;
    }

    v193 = v20 + 2;
    v21 = 1;
LABEL_76:
    if (LOBYTE(v226[0]) == 1)
    {
      if (v226[1])
      {

        v226[1] = 0;
      }
    }

    else if (v226[1])
    {
      if (v226[2])
      {
        (*(*v226[1] + 40))();
      }

      memset(&v226[1], 0, 32);
    }

LABEL_83:
    if (v227[0] & 1) == 0 && *&v227[8] && (v227[16])
    {
      (*(**&v227[8] + 40))();
    }

    if (*&v210[0] && (BYTE8(v210[0]) & 1) != 0)
    {
      (*(**&v210[0] + 40))();
    }

    if (v216)
    {
    }

    if (!v21)
    {
      v55 = v20;
      *a3 = 0;
      a3[1] = v55;

      return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v204);
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7 + 13, v20);
    re::RealityArchive::newDataByLoadingEntryWithName(v6, "assetMap.json", &v212);
    if ((v212 & 1) == 0)
    {
      v56 = keys[0];
      keys[0] = 0;

      v57 = 0;
      goto LABEL_256;
    }

    v52 = cf;
    {
      if (v51)
      {
        re::introspect<re::AssetMap>(BOOL)::info = re::internal::getOrCreateInfo("AssetMap", re::allocInfo_AssetMap, re::initInfo_AssetMap, &unk_1EE191FE8, 0);
      }
    }

    *(v5 + 96) = *(re::introspect<re::AssetMap>(BOOL)::info + 2);
    if (!v226[0])
    {
      v60 = *(v5 + 192);
      LOBYTE(v210[0]) = 0;
      *(v210 + 8) = v60;
      *(&v210[1] + 1) = keys[2];
      v211 = keys[3];
      CFRelease(cf);
LABEL_249:
      v56 = keys[0];
      keys[0] = 0;

      v57 = 0;
      goto LABEL_250;
    }

    re::IntrospectionSharedLock::IntrospectionSharedLock(v208);
    re::TypeRegistry::typeInfo(v226[0], v226, keys);
    v53 = re::TypeInfo::TypeInfo(v227, &keys[1]);
    v4 = LOBYTE(keys[0]);
    if (LOBYTE(keys[0]) == 1)
    {
      v54 = keys[1];
      v220 = keys[1];
      LOBYTE(v210[0]) = 1;
      *(&v210[0] + 1) = keys[1];
    }

    else
    {
      v61 = *(v5 + 216);
      v62 = *(&v231 + 1);
      v63 = v232;
      *(v5 + 40) = *&keys[1];
      *(v5 + 56) = v61;
      v224 = v62;
      v225 = v63;
      LOBYTE(values) = 0;
      re::DynamicString::DynamicString(keys, &v222);
      LOBYTE(v210[0]) = 0;
      v54 = keys[0];
      *(&v210[0] + 1) = keys[0];
      v211 = keys[3];
      v210[1] = *(v5 + 200);
      if (v222 && (v223 & 1) != 0)
      {
        (*(*v222 + 40))();
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(v208);
    CFRelease(cf);
    if ((v4 & 1) == 0)
    {
      goto LABEL_249;
    }

    v201 = v6;
    v197 = v20;
    v198 = a3;
    v223 = 0;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 68) = 0x7FFFFFFFLL;
    *v208 = 0;
    if (*(v54 + 25))
    {
      v4 = 0;
      v65 = 0x7FFFFFFFLL;
      while (1)
      {
        v66 = *(*(v54 + 27) + 8 * v4);
        v67 = (*(*v66 + 40))(v66);
        v68 = re::Hash<re::DynamicString>::operator()(v227, keys);
        v69 = v68;
        if (!v222)
        {
          break;
        }

        v6 = v68 % v222;
        v70 = v220[v6];
        if (v70 == 0x7FFFFFFF)
        {
          goto LABEL_121;
        }

        a3 = v221;
        while (!re::DynamicString::operator==(&a3[6 * v70 + 2], keys))
        {
          v70 = a3[6 * v70 + 1] & 0x7FFFFFFF;
          if (v70 == 0x7FFFFFFF)
          {
            goto LABEL_121;
          }
        }

LABEL_122:
        if (keys[0] && (keys[1] & 1) != 0)
        {
          (*(*keys[0] + 40))();
        }

        v5 = *(v54 + 25);
        if (v5 <= v4)
        {
LABEL_360:
          v226[0] = 0;
          v232 = 0u;
          v233 = 0u;
          v231 = 0u;
          memset(keys, 0, sizeof(keys));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v227 = 136315906;
          *&v227[4] = "operator[]";
          *&v227[12] = 1024;
          *&v227[14] = 789;
          *&v227[18] = 2048;
          *&v227[20] = v4;
          v228 = 2048;
          *v229 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_361:
          v226[0] = 0;
          v232 = 0u;
          v233 = 0u;
          v231 = 0u;
          memset(keys, 0, sizeof(keys));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v227 = 136315906;
          *&v227[4] = "operator[]";
          *&v227[12] = 1024;
          *&v227[14] = 789;
          *&v227[18] = 2048;
          *&v227[20] = v4;
          v228 = 2048;
          *v229 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_362:
          *v208 = 0;
          v7 = &v216;
          v232 = 0u;
          v233 = 0u;
          v231 = 0u;
          memset(keys, 0, sizeof(keys));
          v3 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v226[0]) = 136315906;
          *(v226 + 4) = "operator[]";
          WORD2(v226[1]) = 1024;
          *(&v226[1] + 6) = 468;
          WORD1(v226[2]) = 2048;
          *(&v226[2] + 4) = v4;
          WORD2(v226[3]) = 2048;
          *(&v226[3] + 6) = v65;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_363:
          re::internal::assertLog(6, v142, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v3);
          _os_crash();
          __break(1u);
          goto LABEL_364;
        }

        v71 = *(*(v54 + 27) + 8 * v4);
        keys[0] = (*(*v71 + 40))(v71);
        re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 224, keys, v208);
        v5 = *(v54 + 25);
        if (v5 <= v4)
        {
          goto LABEL_361;
        }

        v72 = *(*(v54 + 27) + 8 * v4);
        keys[0] = (*(*v72 + 32))(v72);
        v64 = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 272, keys, v208);
        *v208 = ++v4;
        if (v4 >= *(v54 + 25))
        {
          goto LABEL_128;
        }
      }

      v6 = 0;
LABEL_121:
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(&values, v6, v69, keys, keys);
      LODWORD(v224) = v224 + 1;
      goto LABEL_122;
    }

LABEL_128:
    v73 = *(v54 + 5);
    v6 = v201;
    if (v73)
    {
      v74 = *(v54 + 7);
      v4 = &v74[25 * v73];
      do
      {
        v75 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, (v74 + 3));
        v76 = v74[22];
        if (v76)
        {
          v77 = 40 * v76;
          v5 = v74[24] + 8;
          do
          {
            v75 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, v5);
            v5 += 40;
            v77 -= 40;
          }

          while (v77);
        }

        v78 = re::globalAllocators(v75);
        v79 = (*(*v78[2] + 32))(v78[2], 200, 8);
        keys[0] = re::SceneDescriptor::SceneDescriptor(v79, v74);
        re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v54 + 23, keys);
        if (keys[0])
        {
        }

        v80 = *(*(v54 + 27) + 8 * *(v54 + 25) - 8);
        keys[0] = (*(*v80 + 40))(v80);
        *v227 = *(v54 + 25) - 1;
        re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 224, keys, v227);
        v81 = *(*(v54 + 27) + 8 * *(v54 + 25) - 8);
        keys[0] = (*(*v81 + 32))(v81);
        *v227 = *(v54 + 25) - 1;
        v64 = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 272, keys, v227);
        v74 += 25;
      }

      while (v74 != v4);
    }

    v82 = *(v54 + 10);
    if (v82)
    {
      break;
    }

LABEL_158:
    v94 = re::RealityArchive::entryNames(v201, keys);
    *&v229[2] = 0;
    memset(v227, 0, sizeof(v227));
    if (keys[2])
    {
      v4 = 32 * keys[2];
      v95 = (v231 + 16);
      v5 = 1702064993;
      v6 = 796095589;
      do
      {
        v96 = *(v95 - 1);
        v97 = v96 >> 1;
        if ((v96 & 1) == 0)
        {
          v97 = v96 >> 1;
        }

        if (v97 >= 7)
        {
          v98 = (v96 & 1) != 0 ? *v95 : (v95 - 7);
          v99 = *v98 == 1702064993 && *(v98 + 3) == 796095589;
          v100 = !v99;
          v101 = v97 - 7;
          if (v97 != 7 && !v100)
          {
            re::DynamicArray<re::DynamicString>::add(v227, v226);
            v94 = v226[0];
            if (v226[0])
            {
              if (v226[1])
              {
                v94 = (*(*v226[0] + 40))();
              }
            }
          }
        }

        v95 += 4;
        v4 -= 32;
      }

      while (v4);
    }

    v103 = re::DynamicArray<re::DynamicString>::deinit(keys);
    if (*&v227[16])
    {
      a3 = *&v229[2];
      v4 = 32 * *&v227[16];
      do
      {
        v103 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&values, a3);
        if ((v103 & 1) == 0)
        {
          keys[0] = a3;
          keys[1] = 1;
          v104 = re::globalAllocators(v103);
          v105 = (*(*v104[2] + 32))(v104[2], 112, 8);
          v226[0] = re::AssetDescriptor::AssetDescriptor(v105, keys, 0);
          re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v54 + 23, v226);
          if (v226[0])
          {
          }

          v106 = *(*(v54 + 27) + 8 * *(v54 + 25) - 8);
          keys[0] = (*(*v106 + 40))(v106);
          v226[0] = (*(v54 + 25) - 1);
          re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 224, keys, v226);
          v107 = *(*(v54 + 27) + 8 * *(v54 + 25) - 8);
          keys[0] = (*(*v107 + 32))(v107);
          v226[0] = (*(v54 + 25) - 1);
          re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 272, keys, v226);
          v103 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, a3);
        }

        a3 += 4;
        v4 -= 32;
      }

      while (v4);
    }

    v108 = *(v54 + 10);
    if (v108)
    {
      v109 = *(v54 + 12);
      v195 = &v109[21 * v108];
      while (1)
      {
        if (!v109[2])
        {
          goto LABEL_357;
        }

        *&v231 = 0;
        memset(keys, 0, 28);
        v110 = v109[7];
        if (v110)
        {
          v4 = v109[9];
          v111 = 8 * v110;
          while (1)
          {
            re::AssetMap::assetDescriptorFromAssetsIndex(v226, v54, *v4);
            if (LOBYTE(v226[0]) != 1)
            {
              break;
            }

            v113 = keys[2];
            if (keys[2] >= keys[1])
            {
              a3 = (keys[2] + 1);
              if (keys[1] < keys[2] + 1)
              {
                if (keys[0])
                {
                  v114 = 2 * keys[1];
                  if (!keys[1])
                  {
                    v114 = 8;
                  }

                  if (v114 <= a3)
                  {
                    v115 = keys[2] + 1;
                  }

                  else
                  {
                    v115 = v114;
                  }

                  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(keys, v115);
                }

                else
                {
                  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(keys, a3);
                  ++LODWORD(keys[3]);
                }
              }

              v113 = keys[2];
            }

            v116 = v226[1];
            *(v231 + 8 * v113) = v226[1];
            if (v116)
            {
              v117 = v116 + 8;
              v113 = keys[2];
            }

            keys[2] = v113 + 1;
            ++LODWORD(keys[3]);
            re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v226);
            v4 += 8;
            v111 -= 8;
            if (!v111)
            {
              goto LABEL_208;
            }
          }

          re::DynamicString::DynamicString(&v216, &v226[1]);
          v208[0] = 0;
          *&v208[8] = v216;
          v209 = v218;
          *&v208[16] = v217;
          re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v226);
          re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(keys);
LABEL_276:
          v20 = v197;
          a3 = v198;
LABEL_346:
          re::DynamicArray<re::DynamicString>::deinit(v227);
          goto LABEL_347;
        }

LABEL_208:
        v199 = v109;
        v118 = v109[2];
        if (v118)
        {
          break;
        }

LABEL_241:
        v103 = re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(keys);
        v109 = v199 + 21;
        v5 = 8;
        if (v199 + 21 == v195)
        {
          goto LABEL_242;
        }
      }

      a3 = v109[4];
      v4 = &a3[4 * v118];
      v202 = v4;
      while (1)
      {
        v119 = re::Hash<re::DynamicString>::operator()(v226, a3);
        v120 = v119;
        if (*(v54 + 40))
        {
          v121 = v119 % *(v54 + 86);
          v122 = *(*(v54 + 41) + 4 * v121);
          if (v122 != 0x7FFFFFFF)
          {
            v6 = *(v54 + 42);
            while (!re::DynamicString::operator==(v6 + 88 * v122 + 8, a3))
            {
              v123 = *(v6 + 88 * v122);
              v122 = v123 & 0x7FFFFFFF;
              if ((v123 & 0x7FFFFFFF) == 0x7FFFFFFF)
              {
                goto LABEL_217;
              }
            }

            goto LABEL_240;
          }
        }

        else
        {
          LODWORD(v121) = 0;
        }

LABEL_217:
        v124 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v54 + 320, v121, v120);
        re::DynamicString::DynamicString((v124 + 8), a3);
        *(v124 + 40) = 0;
        v6 = v124 + 40;
        *(v124 + 72) = 0;
        *(v124 + 48) = 0;
        *(v124 + 56) = 0;
        *(v124 + 64) = 0;
        if (keys[0])
        {
          v125 = keys[2];
          *(v124 + 40) = keys[0];
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v124 + 40), v125);
          ++*(v124 + 64);
          v126 = keys[2];
          v127 = *(v124 + 56);
          if (keys[2] >= v127)
          {
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v124 + 40), keys[2]);
            v133 = v231;
            v134 = *(v124 + 56);
            v6 = *(v124 + 72);
            if (v134)
            {
              v135 = 8 * v134;
              do
              {
                v136 = *v133++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v6, v136);
                v6 += 8;
                v135 -= 8;
              }

              while (v135);
              v6 = *(v124 + 72);
              v134 = *(v124 + 56);
              v133 = v231;
            }

            if (v134 != v126)
            {
              v137 = &v133[v134];
              v6 += 8 * v134;
              v138 = 8 * v126 - 8 * v134;
              do
              {
                v139 = *v137;
                *v6 = *v137;
                if (v139)
                {
                  v140 = (v139 + 8);
                }

                ++v137;
                v6 += 8;
                v138 -= 8;
              }

              while (v138);
            }
          }

          else
          {
            v6 = *(v124 + 72);
            if (keys[2])
            {
              v128 = v231;
              v129 = 8 * keys[2];
              do
              {
                v130 = *v128++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v6, v130);
                v6 += 8;
                v129 -= 8;
              }

              while (v129);
              v6 = *(v124 + 72);
              v127 = *(v124 + 56);
            }

            if (v126 != v127)
            {
              v131 = v6 + 8 * v126;
              v132 = 8 * v127 - 8 * v126;
              do
              {
                if (*v131)
                {

                  *v131 = 0;
                }

                v131 += 8;
                v132 -= 8;
              }

              while (v132);
            }
          }

          *(v124 + 56) = v126;
          v4 = v202;
        }

        ++*(v54 + 90);
LABEL_240:
        a3 += 4;
        if (a3 == v4)
        {
          goto LABEL_241;
        }
      }
    }

LABEL_242:
    v3 = *(v54 + 15);
    v196 = 3 * v3;
    if (v3)
    {
      if (v3 >= 0x555555555555556)
      {
        goto LABEL_363;
      }

      if (!v143)
      {
LABEL_364:
        re::internal::assertLog(4, v144, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
        re::internal::assertLog(6, v194, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v3);
        _os_crash();
        __break(1u);
        goto LABEL_365;
      }

      v6 = v143;
      v145 = v3 - 1;
      if (v3 == 1)
      {
        v147 = (v143 + 36);
        v146 = v143;
      }

      else
      {
        v146 = v143;
        do
        {
          *(v146 + 16) = 0uLL;
          *(v146 + 32) = 0uLL;
          *v146 = 0uLL;
          *(v146 + 36) = 0x7FFFFFFF;
          v146 += 48;
          --v145;
        }

        while (v145);
        v147 = (v146 + 36);
      }

      *(v146 + 16) = 0u;
      *(v146 + 32) = 0u;
      *v146 = 0u;
      v4 = 0x7FFFFFFFLL;
      *v147 = 0x7FFFFFFF;
      v154 = v143;
      a3 = v3;
      do
      {
        v231 = 0u;
        memset(keys, 0, sizeof(keys));
        DWORD1(v231) = 0x7FFFFFFF;
        if (v154 != keys)
        {
          if (*v154)
          {
            re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v154);
          }

          else
          {
            v155 = *(v154 + 8);
            *(v154 + 8) = 0;
            keys[1] = v155;
            v156 = *(v154 + 16);
            *(v154 + 16) = keys[2];
            keys[2] = v156;
            LODWORD(v156) = *(v154 + 24);
            *(v154 + 24) = keys[3];
            LODWORD(keys[3]) = v156;
            LODWORD(v156) = *(v154 + 28);
            *(v154 + 28) = HIDWORD(keys[3]);
            HIDWORD(keys[3]) = v156;
            LODWORD(v156) = *(v154 + 32);
            *(v154 + 32) = v231;
            LODWORD(v231) = v156;
            LODWORD(v156) = *(v154 + 36);
            *(v154 + 36) = DWORD1(v231);
            DWORD1(v231) = v156;
          }
        }

        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(keys);
        v154 += 48;
        a3 = (a3 - 1);
      }

      while (a3);
    }

    else
    {
      v6 = 0;
    }

    v157 = *(v54 + 21);
    v200 = v3;
    v203 = v6;
    if (v157)
    {
      v158 = *(v54 + 22);
      a3 = (v158 + 32 * v157);
      if (v3 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3;
      }

      v159 = v3;
      while (!v159)
      {
LABEL_302:
        v158 += 32;
        if (v158 == a3)
        {
          goto LABEL_303;
        }
      }

      v160 = 0;
      v4 = 0;
      v161 = v6;
      while (1)
      {
        v162 = *(v158 + 16);
        if (v162 <= v4)
        {
          break;
        }

        v141 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v161, (*(v158 + 24) + v160));
        ++v4;
        v160 += 32;
        v161 += 48;
        if (v5 == v4)
        {
          v3 = v200;
          v6 = v203;
          v159 = v200;
          goto LABEL_302;
        }
      }

      *v208 = 0;
      v232 = 0u;
      v233 = 0u;
      v231 = 0u;
      memset(keys, 0, sizeof(keys));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v226[0]) = 136315906;
      *(v226 + 4) = "operator[]";
      WORD2(v226[1]) = 1024;
      *(&v226[1] + 6) = 476;
      WORD1(v226[2]) = 2048;
      *(&v226[2] + 4) = v4;
      WORD2(v226[3]) = 2048;
      *(&v226[3] + 6) = v162;
      _os_log_send_and_compose_impl();
      v103 = _os_crash_msg();
      __break(1u);
LABEL_357:
      v208[0] = 0;
      *&v208[8] = *keys;
      *&v208[24] = keys[2];
      v209 = keys[3];
      goto LABEL_276;
    }

LABEL_303:
    *(v54 + 53) = v3;
    if (!v3)
    {
LABEL_328:
      v173 = *(v54 + 21);
      if (v173)
      {
        v174 = *(v54 + 22);
        v175 = v174 + 32 * v173;
        v176 = v174 + 8;
        v177 = 0xBF58476D1CE4E5B9;
        v178 = 0x94D049BB133111EBLL;
        while (1)
        {
          v179 = v176 - 8;
          re::AssetMap::assetDescriptorFromAssetsIndex(keys, v54, *(v176 - 8));
          if (LOBYTE(keys[0]) != 1)
          {
            break;
          }

          v226[0] = keys[1];
          if (keys[1])
          {
            v180 = keys[1] + 8;
          }

          re::FixedArray<re::DynamicString>::FixedArray(&v226[1], v176);
          v181 = *(v176 + 8);
          *v208 = *(v176 + 16);
          *&v208[8] = v181;
          v216 = re::Hash<re::Slice<re::DynamicString>>::operator()(&valuePtr, v208);
          memset(v208, 0, 24);
          v182 = (((v216 ^ (v216 >> 30)) * v177) ^ (((v216 ^ (v216 >> 30)) * v177) >> 27)) * v178;
          re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v54 + 368, &v216, v182 ^ (v182 >> 31), v208);
          if (*&v208[12] == 0x7FFFFFFF)
          {
            v183 = v178;
            v184 = v177;
            v185 = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v54 + 368, *&v208[8], *v208);
            v186 = v226[0];
            v185[1] = v216;
            v185[2] = v186;
            if (v186)
            {
              v187 = v186 + 8;
            }

            re::FixedArray<re::DynamicString>::FixedArray((v185 + 3), &v226[1]);
            ++*(v54 + 102);
            v177 = v184;
            v178 = v183;
          }

          re::FixedArray<re::DynamicString>::deinit(&v226[1]);
          if (v226[0])
          {
          }

          re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
          v176 += 32;
          if (v179 + 32 == v175)
          {
            goto LABEL_340;
          }
        }

        re::DynamicString::DynamicString(v226, &keys[1]);
        v208[0] = 0;
        *&v208[8] = v226[0];
        v209 = v226[3];
        *&v208[16] = *&v226[1];
        re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
      }

      else
      {
LABEL_340:
        v208[0] = 1;
      }

      v20 = v197;
      a3 = v198;
      if (v3)
      {
        v188 = 16 * v196;
        v189 = v203;
        do
        {
          v190 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v189);
          v189 += 6;
          v188 -= 48;
        }

        while (v188);
      }

      goto LABEL_346;
    }

    *(v54 + 54) = v163;
    if (v163)
    {
      v5 = v163;
      if (v3 != 1)
      {
        v165 = 8 * v196 - 24;
        bzero(v163, v165);
        v5 += v165;
      }

      v4 = 0;
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      while (1)
      {
        v65 = *(v54 + 53);
        if (v65 <= v4)
        {
          goto LABEL_362;
        }

        v166 = (*(v54 + 54) + 24 * v4);
        a3 = (v6 + 48 * v4);
        v167 = *(a3 + 7);
        v5 = *(a3 + 8);
        if (v5)
        {
          v6 = 0;
          v168 = (a3[2] + 8);
          while (1)
          {
            v169 = *v168;
            v168 += 12;
            if (v169 < 0)
            {
              break;
            }

            if (v5 == ++v6)
            {
              v6 = *(a3 + 8);
              break;
            }
          }
        }

        else
        {
          v6 = 0;
        }

        if (v6 != v5)
        {
          v65 = 0;
          while (1)
          {
            v170 = *(v54 + 53);
            if (v170 <= v4)
            {
              break;
            }

            v171 = *(v54 + 54) + 24 * v4;
            v170 = *(v171 + 8);
            if (v170 <= v65)
            {
              goto LABEL_359;
            }

            v163 = re::DynamicString::operator=((*(v171 + 16) + 32 * v65), (a3[2] + 48 * v6 + 16));
            LODWORD(v172) = *(a3 + 8);
            if (v172 <= v6 + 1)
            {
              v172 = (v6 + 1);
            }

            else
            {
              v172 = v172;
            }

            while (v172 - 1 != v6)
            {
              v6 = (v6 + 1);
              if ((*(a3[2] + 48 * v6 + 8) & 0x80000000) != 0)
              {
                goto LABEL_326;
              }
            }

            v6 = v172;
LABEL_326:
            ++v65;
            if (v6 == v5)
            {
              goto LABEL_327;
            }
          }

          *v208 = 0;
          v65 = &v216;
          v232 = 0u;
          v233 = 0u;
          v231 = 0u;
          memset(keys, 0, sizeof(keys));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v226[0]) = 136315906;
          *(v226 + 4) = "operator[]";
          WORD2(v226[1]) = 1024;
          *(&v226[1] + 6) = 468;
          WORD1(v226[2]) = 2048;
          *(&v226[2] + 4) = v4;
          WORD2(v226[3]) = 2048;
          *(&v226[3] + 6) = v170;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_359:
          *v208 = 0;
          v4 = &v216;
          v232 = 0u;
          v233 = 0u;
          v231 = 0u;
          memset(keys, 0, sizeof(keys));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v226[0]) = 136315906;
          *(v226 + 4) = "operator[]";
          WORD2(v226[1]) = 1024;
          *(&v226[1] + 6) = 468;
          WORD1(v226[2]) = 2048;
          *(&v226[2] + 4) = v65;
          WORD2(v226[3]) = 2048;
          *(&v226[3] + 6) = v170;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_360;
        }

LABEL_327:
        ++v4;
        v3 = v200;
        v6 = v203;
        if (v4 == v200)
        {
          goto LABEL_328;
        }
      }
    }

LABEL_365:
    re::internal::assertLog(4, v164, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_366:
    if (!v9)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The RealityFile does not have a valid file URL or file pointer.", "!Unreachable code", "parseArchive", 438);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "parseArchive", 475);
    _os_crash();
    __break(1u);
LABEL_369:
    if (v16)
    {
      *(v3 + 1688) = re::internal::getOrCreateInfo("RealityFileHeader", re::allocInfo_RealityFileHeader, re::initInfo_RealityFileHeader, &unk_1EE192028, 0);
    }
  }

  v4 = *(v54 + 12);
  v83 = v4 + 168 * v82;
  while (1)
  {
    if (!*(v4 + 16))
    {
      v208[0] = 0;
      *&v208[8] = *keys;
      *&v208[24] = keys[2];
      v209 = keys[3];
      v20 = v197;
      a3 = v198;
      goto LABEL_347;
    }

    v64 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&values, *(v4 + 32));
    if ((v64 & 1) == 0)
    {
      if (*(v4 + 80) == 1)
      {
        if (*(v4 + 96))
        {
          v84 = *(v4 + 104);
        }

        else
        {
          v84 = (v4 + 97);
        }
      }

      else
      {
        v84 = 0;
      }

      a3 = v198;
      v85 = re::globalAllocators(v64);
      v86 = (*(*v85[2] + 32))(v85[2], 112, 8);
      v87 = *(v4 + 16);
      keys[0] = *(v4 + 32);
      keys[1] = v87;
      keys[0] = re::AssetDescriptor::AssetDescriptor(v86, keys, v84);
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v54 + 23, keys);
      if (keys[0])
      {
      }

      v88 = *(v54 + 25);
      *v227 = v88 - 1;
      v89 = *(*(v54 + 27) + 8 * v88 - 8);
      keys[0] = (*(*v89 + 32))(v89);
      re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 272, keys, v227);
      v90 = *(v4 + 32);
      v91 = (*(v90 + 8) & 1) != 0 ? *(v90 + 16) : (v90 + 9);
      keys[0] = v91;
      re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 224, keys, v227);
      v64 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, *(v4 + 32));
      if (*(v4 + 16) != 1)
      {
        break;
      }
    }

LABEL_157:
    v4 += 168;
    if (v4 == v83)
    {
      goto LABEL_158;
    }
  }

  v92 = *(v4 + 32) + 32;
  while (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&values, v92))
  {
    if (*(v92 + 8))
    {
      v93 = *(v92 + 16);
    }

    else
    {
      v93 = (v92 + 9);
    }

    keys[0] = v93;
    re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(v54 + 224, keys, v227);
    v64 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, v92);
    v92 += 32;
    if (v92 == *(v4 + 32) + 32 * *(v4 + 16))
    {
      goto LABEL_157;
    }
  }

  if (*(v92 + 8))
  {
    v152 = *(v92 + 16);
  }

  else
  {
    v152 = v92 + 9;
  }

  re::DynamicString::format("FileName '%s' is used by more than one asset in the assetMap.", keys, v152);
  v208[0] = 0;
  *&v208[8] = *keys;
  *&v208[24] = keys[2];
  v209 = keys[3];
  v20 = v197;
LABEL_347:
  v191.n128_f64[0] = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&values);
  v57 = v208[0];
  if (v208[0])
  {
    v56 = *(&v210[0] + 1);
    if (*(&v210[0] + 1))
    {
      v192 = (*(&v210[0] + 1) + 8);
    }
  }

  else
  {
    v56 = keys[0];
    keys[0] = 0;
  }

  if (v208[0] & 1) == 0 && *&v208[8] && (v208[16])
  {
    (*(**&v208[8] + 40))(v191);
  }

LABEL_250:
  if (LOBYTE(v210[0]) == 1)
  {
    if (*(&v210[0] + 1))
    {
    }
  }

  else if (*(&v210[0] + 1) && (v210[1] & 1) != 0)
  {
    (*(**(&v210[0] + 1) + 40))(*(&v210[0] + 1), *(&v210[1] + 1));
  }

LABEL_256:
  if (v212 & 1) == 0 && cf && (v214)
  {
    (*(*cf + 40))(cf, v215);
  }

  if (v57)
  {
    v148 = v7[14];
    if (v148 != v56)
    {
      if (v56)
      {
        v149 = v56 + 8;
        v148 = v7[14];
      }

      if (v148)
      {
      }

      v7[14] = v56;
    }

    *a3 = 1;
    if (v56)
    {
    }
  }

  else
  {
    v150 = v56;
    *a3 = 0;
    a3[1] = v150;
  }

  if (v20)
  {
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v204);
}