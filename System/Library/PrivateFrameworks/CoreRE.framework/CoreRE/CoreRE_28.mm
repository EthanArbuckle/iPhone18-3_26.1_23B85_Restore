uint64_t re::AssetManager::assetNonSharedDataByteSize_entryStateLocked(re::AssetManager *this, re::internal::AssetEntry *a2)
{
  v4 = atomic_load(a2 + 224);
  if (v4 != 2)
  {
    return 0;
  }

  v14[3] = v2;
  v14[4] = v3;
  v6 = *(this + 226);
  v14[0] = *(a2 + 35);
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, v14);
  (*(**v7 + 128))(*v7);
  v8 = *v7;
  if ((*(a2 + 384) & 1) == 0)
  {
    v9 = re::internal::AssetEntry::assetPointer(a2);
    v10 = (*(*v8 + 56))(v8, v9);
    if ((*(a2 + 384) & 1) == 0)
    {
      *(a2 + 384) = 1;
    }

    *(a2 + 49) = v10;
  }

  if (*(a2 + 368) == 1)
  {
    v11 = *(a2 + 47);
  }

  else
  {
    v13 = re::internal::AssetEntry::assetPointer(a2);
    v11 = (*(*v8 + 64))(v8, v13);
    if ((*(a2 + 368) & 1) == 0)
    {
      *(a2 + 368) = 1;
    }

    *(a2 + 47) = v11;
  }

  return *(a2 + 49) + v11;
}

uint64_t re::AssetManager::performPreloadOnLocalPeerSyncAction(re::AssetManager *this, const re::AssetHandle *a2)
{
  if (!*(a2 + 1))
  {
LABEL_24:
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  v2 = a2;
  os_unfair_lock_lock(this + 608);
  re::DynamicOverflowArray<unsigned long long,1ul>::DynamicOverflowArray(&v18, this + 305);
  os_unfair_lock_unlock(this + 608);
  if (!v19)
  {
    goto LABEL_18;
  }

  if (*(this + 2220) != 1)
  {
    v13 = *(this + 240);
    if (v20)
    {
      v14 = v21;
    }

    else
    {
      v14 = v21[1];
    }

    v16 = v14;
    v17 = v19;
    if (!(*(*v13 + 16))(v13, v2, &v16))
    {
LABEL_19:
      LOBYTE(v2) = 0;
      v12 = 0;
      goto LABEL_20;
    }

LABEL_18:
    v12 = 1;
    goto LABEL_20;
  }

  v5 = *(this + 230);
  if (!v5)
  {
    goto LABEL_18;
  }

  if ((*(this + 2584) & 1) == 0)
  {
    *(this + 2584) = 1;
    v6 = re::MaterialAsset::assetType(v4);
    v7 = *(this + 226);
    v16 = v6;
    v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v16);
    (*(**v8 + 128))(*v8);
    re::AssetHandle::AssetHandle(&v16, (*v8 + 80));
    if (v17)
    {
      (*(*v5 + 24))(v5, &v16, 1);
    }

    re::AssetHandle::~AssetHandle(&v16);
  }

  v9 = *(v2 + 1);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = atomic_load((v9 + 896));
  if (v10 != 2)
  {
    goto LABEL_19;
  }

  v11 = *(v2 + 1);
  if (v11)
  {
    LOBYTE(v11) = *(v11 + 272);
  }

  (*(*v5 + 24))(v5, v2, v11 & 1);
  v12 = 0;
  LOBYTE(v2) = 1;
LABEL_20:
  if (v18 && (v20 & 1) == 0)
  {
    (*(*v18 + 40))();
  }

  if (v12)
  {
    goto LABEL_24;
  }

  return v2 & 1;
}

void re::AssetManager::internalUnloadSharedAssetPointer(re::AssetManager *this, void *a2, const re::ExistingAssetInformation *a3, const re::AssetType *a4)
{
  v8 = *(this + 226);
  v12 = a4;
  v9 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v8, &v12);
  (*(**v9 + 128))(*v9);
  (*(**v9 + 104))(*v9, a2, a3);
  if (*(a3 + 17))
  {
    v10 = *(a3 + 18);
  }

  else
  {
    v10 = a3 + 137;
  }

  if (*(a3 + 10) == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a3 + 10);
  }

  re::AssetManager::unloadAssetPointer(this, a4, a2, v10, v11);
}

void re::AssetManager::internalAssetEntryUnloadAssetPointer_entryStateLocked(re::AssetManager *this, const re::AssetType **a2)
{
  if (!re::internal::AssetEntry::hasAssetPointer(a2))
  {
LABEL_38:

    re::internal::AssetEntry::LoadState::resetAssetPointer_locked((a2 + 112));
    return;
  }

  atomic_load(this + 2177);
  if (objc_isUniquelyReferenced())
  {
    v4 = *(this + 226);
    v17 = a2[35];
    v5 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v4, &v17);
    (*(**v5 + 128))(*v5);
    v6 = *v5;
    v7 = atomic_load(this + 2177);
    if ((v7 & 1) != 0 || (v8 = re::internal::AssetEntry::assetPointer(a2), !(*(*v6 + 88))(v6, v8)))
    {
      v16 = re::internal::AssetEntry::assetPointer(a2);
      re::AssetManager::internalUnloadSharedAssetPointer(this, v16, (a2 + 4), a2[35]);
    }

    else
    {
      v9 = re::internal::AssetEntry::assetPointer(a2);
      v10 = a2[35];
      v11 = re::globalAllocators(v9);
      v12 = (*(*v11[2] + 32))(v11[2], 248, 8);
      LODWORD(v17) = *(a2 + 8);
      re::DynamicString::DynamicString(v18, (a2 + 5));
      re::DynamicString::DynamicString(v19, (a2 + 9));
      v13 = a2[14];
      v20 = a2[13];
      v21 = v13;
      v22 = *(a2 + 30);
      re::DynamicString::DynamicString(v23, (a2 + 16));
      re::DynamicString::DynamicString(v24, (a2 + 20));
      re::DynamicString::DynamicString(v25, (a2 + 24));
      re::DynamicString::DynamicString(v26, (a2 + 28));
      *(v12 + 8) = v17;
      re::DynamicString::DynamicString((v12 + 16), v18);
      re::DynamicString::DynamicString((v12 + 48), v19);
      *(v12 + 80) = v20;
      v14 = v22;
      *(v12 + 88) = v21;
      *(v12 + 96) = v14;
      re::DynamicString::DynamicString((v12 + 104), v23);
      re::DynamicString::DynamicString((v12 + 136), v24);
      re::DynamicString::DynamicString((v12 + 168), v25);
      re::DynamicString::DynamicString((v12 + 200), v26);
      if (v26[0])
      {
        if (v26[1])
        {
          (*(*v26[0] + 40))();
        }

        memset(v26, 0, sizeof(v26));
      }

      if (v25[0])
      {
        if (v25[1])
        {
          (*(*v25[0] + 40))();
        }

        memset(v25, 0, sizeof(v25));
      }

      if (v24[0])
      {
        if (v24[1])
        {
          (*(*v24[0] + 40))();
        }

        memset(v24, 0, sizeof(v24));
      }

      if (v23[0])
      {
        if (v23[1])
        {
          (*(*v23[0] + 40))();
        }

        memset(v23, 0, sizeof(v23));
      }

      if (v19[0])
      {
        if (v19[1])
        {
          (*(*v19[0] + 40))();
        }

        memset(v19, 0, sizeof(v19));
      }

      if (v18[0])
      {
        if (v18[1])
        {
          (*(*v18[0] + 40))();
        }

        memset(v18, 0, sizeof(v18));
      }

      v27 = v12;
      *v12 = v9;
      *(v12 + 232) = v10;
      *(v12 + 240) = 0;
      os_unfair_lock_lock(this + 160);
      re::DynamicArray<re::RigDataValue *>::add((this + 648), &v27);
      os_unfair_lock_unlock(this + 160);
    }

    re::internal::AssetEntry::LoadState::clearAndResetAssetPointer_locked((a2 + 112));
    goto LABEL_38;
  }

  re::internal::AssetEntry::LoadState::resetAssetPointer_locked((a2 + 112));
  if (a2[14] == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2[14];
  }

  re::AssetManager::onUnloadComplete(this, v15);
}

void re::AssetManager::internalAssetEntryUnloadLoadingAssetPointer_entryStateLocked(re::AssetManager *this, re::internal::AssetEntry *a2)
{
  if (re::internal::AssetEntry::hasLoadingAssetPointer(a2))
  {
    atomic_load(this + 2177);
    if (objc_isUniquelyReferenced())
    {
      re::AssetManager::internalUnloadSharedAssetPointer(this, *(*(a2 + 114) + 24), (a2 + 32), *(a2 + 35));
      re::internal::AssetEntry::LoadState::clearAndResetLoadingAssetPointer_locked((a2 + 896));
    }
  }

  re::internal::AssetEntry::LoadState::resetLoadingAssetPointer_locked((a2 + 896));
}

uint64_t re::AssetManager::processAssetRegistration_entryStateLocked(re::AssetManager *this, re::internal::AssetEntry *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(this + 226);
  buf.__r_.__value_.__r.__words[0] = *(a2 + 35);
  v5 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v4, &buf);
  (*(**v5 + 128))(*v5);
  v6 = *v5;
  v7 = *(this + 2234);
  if (v7 == 1 && (*(a2 + 544) & 1) == 0 && re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    kdebug_trace();
  }

  v8 = (*(*v6 + 96))(v6, *(*(a2 + 114) + 24), a2 + 32);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyTracing(0, 0);
    if (result)
    {
      result = kdebug_trace();
    }
  }

  if (!v8)
  {
    re::AssetManager::internalAssetEntryUnloadAssetPointer_entryStateLocked(this, a2);
    *(a2 + 904) = vextq_s8(*(a2 + 904), *(a2 + 904), 8uLL);
    refreshed = re::internal::AssetEntry::LoadState::refreshLoadState_locked(a2 + 896);
    if (*(a2 + 544) == 1)
    {
      v16.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v17 = (v16.__d_.__rep_ - *(a2 + 67)) / 1000;
      if (v17 > *(this + 280))
      {
        v18 = *re::assetsLogObjects(v16.__d_.__rep_);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 21))
          {
            v19 = *(a2 + 22);
          }

          else
          {
            v19 = a2 + 169;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v19;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Registration completed for asset '%s' in %llu milliseconds.", &buf, 0x16u);
        }

        goto LABEL_55;
      }

      if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
      }

      if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog != 1)
      {
        goto LABEL_55;
      }

      v25 = *re::assetsLogObjects(v16.__d_.__rep_);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_55;
      }

      if (*(a2 + 21))
      {
        v36 = *(a2 + 22);
      }

      else
      {
        v36 = a2 + 169;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v36;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
      v22 = "Registration completed for asset '%s' in %llu milliseconds.";
      v23 = v25;
      v24 = 22;
    }

    else
    {
      if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
      }

      if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog != 1)
      {
        goto LABEL_55;
      }

      v20 = *re::assetsLogObjects(refreshed);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_55;
      }

      if (*(a2 + 21))
      {
        v21 = *(a2 + 22);
      }

      else
      {
        v21 = a2 + 169;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v21;
      v22 = "Registration completed for asset '%s'";
      v23 = v20;
      v24 = 12;
    }

    _os_log_debug_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEBUG, v22, &buf, v24);
LABEL_55:
    *(a2 + 544) = 0;
    re::internal::AssetEntry::setIsLoading_locked(a2, 0);
    if (*(this + 2200) == 1)
    {
      v26 = re::AssetManager::assetByteSize_entryLocked(this, a2);
      v27 = std::to_string(&buf, v26);
      v37 = 0;
      v38 = &str_67;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      re::internal::AssetEntry::setOrClearMetadata_stateLocked(a2, &v37, p_buf);
      if (v37)
      {
        if (v37)
        {
        }
      }

      re::internal::AssetEntry::updateMetadata(a2, 1);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (v7)
    {
      if ((*(this + 2200) & 1) == 0)
      {
        re::AssetManager::assetByteSize_entryLocked(this, a2);
      }

      if (re::internal::enableSignposts(0, 0))
      {
        kdebug_trace();
      }
    }

    if (*(this + 2217) == 1)
    {
      v30 = re::AssetManager::assetNonSharedDataByteSize_entryStateLocked(this, a2);
      v31 = *re::assetsLogObjects(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 21))
        {
          v35 = *(a2 + 22);
        }

        else
        {
          v35 = a2 + 169;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v35;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v30;
        _os_log_debug_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEBUG, "Asset: %s has Non shared data size of %zu bytes", &buf, 0x16u);
      }
    }

LABEL_71:
    if (*(a2 + 14) == -1)
    {
      LODWORD(v32) = 0;
    }

    else
    {
      v32 = *(a2 + 14);
    }

    v33 = *(a2 + 35);
    if (v33)
    {
      v34 = *v33;
    }

    else
    {
      v34 = 0;
    }

    return re::AssetSignpost::fireImpulse(0x811, v32, v34, v10);
  }

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      if (*(a2 + 21))
      {
        v11 = *(a2 + 22);
      }

      else
      {
        v11 = a2 + 169;
      }

      if (*(a2 + 14) == -1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a2 + 14);
      }

      re::AssetManager::unloadAssetPointer(this, *(a2 + 35), *(*(a2 + 114) + 24), v11, v12);
      re::internal::AssetEntry::LoadState::clearAndResetLoadingAssetPointer_locked((a2 + 896));
      re::AssetManager::internalAssetEntryUnloadAssetPointer_entryStateLocked(this, a2);
      *(a2 + 544) = 0;
      re::internal::AssetEntry::setIsLoading_locked(a2, 0);
      re::AssetManager::putEntryInFailedState_entryStateLocked(v14, a2, 304, v39);
      if (*&v39[0])
      {
        if (BYTE8(v39[0]))
        {
          (*(**&v39[0] + 40))();
        }

        memset(v39, 0, sizeof(v39));
      }

      if (v7 && re::internal::enableSignposts(0, 0))
      {
        kdebug_trace();
      }
    }

    else if ((v8 & 0xFFFFFFFD) != 0)
    {
      return result;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if ((*(a2 + 544) & 1) == 0)
    {
      result = re::internal::enableSignposts(0, 0);
      if (result)
      {
        result = kdebug_trace();
      }
    }
  }

  if ((*(a2 + 544) & 1) == 0)
  {
    result = std::chrono::system_clock::now().__d_.__rep_;
    *(a2 + 67) = result;
  }

  *(a2 + 544) = 1;
  return result;
}

uint64_t re::AssetManager::assetByteSize_entryLocked(re::AssetManager *this, re::internal::AssetEntry *a2)
{
  if (*(a2 + 352) == 1)
  {
    return *(a2 + 45);
  }

  v4 = atomic_load(a2 + 224);
  if (v4 != 2)
  {
    return 0;
  }

  v5 = *(this + 226);
  v9 = *(a2 + 35);
  v6 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v5, &v9);
  (*(**v6 + 128))(*v6);
  v7 = *v6;
  v8 = re::internal::AssetEntry::assetPointer(a2);
  result = (*(*v7 + 48))(v7, v8);
  if ((*(a2 + 352) & 1) == 0)
  {
    *(a2 + 352) = 1;
  }

  *(a2 + 45) = result;
  return result;
}

uint64_t re::AssetManager::isDeviceAsset(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  re::AssetManager::deviceAssetPath(a1, a2, 0, a3, v5);
  v3 = v5[0];
  if (v5[0] == 1 && v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return v3;
}

uint64_t re::AssetManager::putEntryInLoadingState_entryStateLocked(re::AssetManager *this, const re::AssetType **a2, char a3)
{
  v67 = *MEMORY[0x1E69E9840];
  re::internal::AssetEntry::setIsLoading_locked(a2, 1);
  v61 = *(a2 + 30);
  re::DynamicString::DynamicString(&v62, (a2 + 5));
  v6 = re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::computeHash<re::internal::AssetLoadingRoot>(&v61);
  v7 = re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::findEntry<re::internal::AssetLoadingRoot>(this + 1848, &v61, v6, &v47);
  if (HIDWORD(v48) == 0x7FFFFFFF)
  {
    v8 = *(a2 + 30);
    if (v8 != 8)
    {
      if (v8 == 4)
      {
        isAssetEntryShareableAndFetchable_entryStateLocked = re::AssetManager::isAssetEntryShareableAndFetchable_entryStateLocked(this, a2);
        if (isAssetEntryShareableAndFetchable_entryStateLocked)
        {
          *(a2 + 545) = 1;
          re::AssetManager::fromPeerID(v57, this, a2, 0);
          re::DynamicString::format("%llu", &v47, v57[1]);
          v10 = *(this + 229);
          if (v48)
          {
            v11 = v49;
          }

          else
          {
            v11 = &v48 + 1;
          }

          inited = objc_initWeak(&location, a2 + 1);
          v55 = this;
          v65[2] = re::globalAllocators(inited)[2];
          v66 = 0;
          v64 = &unk_1F5CB8A68;
          v65[0] = 0;
          objc_moveWeak(v65, &location);
          v65[1] = v55;
          v66 = &v64;
          (*(*v10 + 72))(&v56, v10, v11, a2 + 32, &v64);
          v13 = a2[65];
          a2[65] = v56;
          v56 = v13;
          if (v13)
          {
            re::details::release<re::ResourceRequest>(v13);
            v56 = 0;
          }

          re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(&v64);
          objc_destroyWeak(&location);
          if (v47 && (v48 & 1) != 0)
          {
            (*(*v47 + 40))();
          }
        }

        else if (*(this + 228))
        {
          dispatch_assert_queue_V2(*(this + 97));
          v47 = 0;
          if (a2[6])
          {
            v26 = a2[7];
          }

          else
          {
            v26 = a2 + 49;
          }

          v27 = sscanf(v26, "%llu", &v47);
          v28 = *(this + 228);
          v29 = v47;
          if (a2[17])
          {
            v30 = a2[18];
          }

          else
          {
            v30 = a2 + 137;
          }

          re::internal::AssetNetworkLoader::sendRequestToNetworkPeer_entryStateLocked(v28, a2, v29, v53);
          if (*&v53[0])
          {
            if (BYTE8(v53[0]))
            {
              (*(**&v53[0] + 40))();
            }

            memset(v53, 0, sizeof(v53));
          }
        }

        else
        {
          re::AssetManager::putEntryInFailedState_entryStateLocked(v32, a2, 302, v52);
          if (*&v52[0])
          {
            if (BYTE8(v52[0]))
            {
              (*(**&v52[0] + 40))();
            }

            memset(v52, 0, sizeof(v52));
          }
        }
      }

      else
      {
        v19 = re::globalAllocators(v7);
        v20 = (*(*v19[2] + 32))(v19[2], 56, 8);
        *v20 = 0u;
        *(v20 + 1) = 0u;
        *(v20 + 2) = 0u;
        v20[6] = 0;
        re::CancellationTokenSource::CancellationTokenSource((v20 + 3));
        v47 = v20;
        *v20 = 0;
        *(v20 + 4) = 0;
        re::internal::AssetBackgroundLoader::loadAssetAsync(*(this + 225), v20, a2[35], (a2 + 4), v57);
        v21 = v20[1];
        v20[1] = v57[0];
        v57[0] = v21;
        if (v21)
        {
        }

        os_unfair_lock_lock(this + 512);
        a2[66] = v20;
        re::DynamicArray<re::RigDataValue *>::add((this + 2056), &v47);
        os_unfair_lock_unlock(this + 512);
      }

      goto LABEL_70;
    }

    v17 = a2[14];
    if ((v17 + 1) < 2)
    {
      re::AssetManager::putEntryInFailedState_entryStateLocked(v18, a2, 200, v42);
      if (*&v42[0])
      {
        if (BYTE8(v42[0]))
        {
          (*(**&v42[0] + 40))();
        }

        memset(v42, 0, sizeof(v42));
      }

      goto LABEL_70;
    }

    os_unfair_lock_lock(this + 32);
    v47 = v17;
    v31 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 184, &v47);
    if (v31)
    {
      re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(&v47, v31);
    }

    else
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v47 = 0;
      v50 = 0;
    }

    os_unfair_lock_unlock(this + 32);
    if (v49)
    {
      v34 = v51;
      if (*(v51 + 8))
      {
        v35 = *(v51 + 16);
      }

      else
      {
        v35 = (v51 + 9);
      }

      v36 = strcmp(v35, "NetworkAsset");
      if (v36)
      {
        v37 = strcmp(v35, "PeerAsset");
        if (v37)
        {
          re::AssetManager::reuseExistingOrLoadNewAsset_locked(this, a2, &v47);
        }

        else if (*(this + 228) && *(this + 240))
        {
          re::AssetLoadDescriptor::AssetLoadDescriptor(v44, v34);
          re::NetworkActionQueue::queueSyncActionPeerLoad(this + 1152, v17, v44);
          re::AssetLoadDescriptor::~AssetLoadDescriptor(v44);
        }

        else
        {
          re::AssetManager::putEntryInFailedState_entryStateLocked(v40, a2, 302, v43);
          if (*&v43[0])
          {
            if (BYTE8(v43[0]))
            {
              (*(**&v43[0] + 40))();
            }

            memset(v43, 0, sizeof(v43));
          }
        }

        goto LABEL_69;
      }

      if (!*(this + 240))
      {
        re::AssetManager::putEntryInFailedState_entryStateLocked(v41, a2, 302, v45);
        if (*&v45[0])
        {
          if (BYTE8(v45[0]))
          {
            (*(**&v45[0] + 40))();
          }

          memset(v45, 0, sizeof(v45));
        }

        goto LABEL_69;
      }
    }

    else if (!*(this + 240) || (a3 & 1) != 0)
    {
      re::AssetManager::putEntryInFailedState_entryStateLocked(v38, a2, 302, v46);
      if (*&v46[0])
      {
        if (BYTE8(v46[0]))
        {
          (*(**&v46[0] + 40))();
        }

        memset(v46, 0, sizeof(v46));
      }

      goto LABEL_69;
    }

    re::AssetManager::queueSyncActionNetworkLoad(this, v17, a2);
LABEL_69:
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v47);
    goto LABEL_70;
  }

  if (*(this + 228))
  {
    v14 = *(this + 233) + 88 * HIDWORD(v48) + 48;
    dispatch_assert_queue_V2(*(this + 97));
    v47 = 0;
    if (*(v14 + 8))
    {
      v15 = *(v14 + 16);
    }

    else
    {
      v15 = (v14 + 9);
    }

    v22 = sscanf(v15, "%llu", &v47);
    v23 = *(this + 228);
    v24 = v47;
    if (a2[17])
    {
      v25 = a2[18];
    }

    else
    {
      v25 = a2 + 137;
    }

    re::internal::AssetNetworkLoader::sendRequestToNetworkPeer_entryStateLocked(v23, a2, v24, v60);
    if (*&v60[0])
    {
      if (BYTE8(v60[0]))
      {
        (*(**&v60[0] + 40))();
      }

      memset(v60, 0, sizeof(v60));
    }
  }

  else
  {
    re::AssetManager::putEntryInFailedState_entryStateLocked(v16, a2, 302, &v58);
    if (v58)
    {
      if (BYTE8(v58))
      {
        (*(*v58 + 40))(v58, v59);
      }

      v58 = 0u;
      v59 = 0u;
    }
  }

LABEL_70:
  result = v62;
  if (v62)
  {
    if (v63)
    {
      return (*(*v62 + 40))();
    }
  }

  return result;
}

uint64_t *re::AssetManager::queueSyncActionNetworkLoad(re::AssetManager *this, uint64_t a2, const re::internal::AssetEntry *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  *v12 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v6 = re::DynamicString::setCapacity(&v13, 0);
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  re::DynamicString::setCapacity(&v17, 0);
  v19 = 0;
  if (*(a3 + 14) == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 14);
  }

  inited = re::AssetPath::initAssetIdAssetPath(v12, v7, *(a3 + 35));
  if (*(this + 240))
  {
    v21 = 0;
    v22 = 0;
    buf = v13;
    re::DynamicString::setCapacity(&buf, 0);
    re::AssetPath::fullAssetPath(v12, &buf);
    re::NetworkActionQueue::queueSyncActionNetworkLoad((this + 1152), a2, &buf);
    if (buf && (BYTE8(buf) & 1) != 0)
    {
      (*(*buf + 40))(buf);
    }
  }

  else
  {
    v9 = *re::assetsLogObjects(inited);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 21))
      {
        v10 = *(a3 + 22);
      }

      else
      {
        v10 = a3 + 169;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Trying to queue network load for %s when NetworkAssetService not available!", &buf, 0xCu);
    }
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))(v17);
    }

    v18 = 0u;
    v17 = 0u;
  }

  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))(v13);
    }
  }

  return result;
}

void re::AssetManager::findDependencies(re::AssetManager *this@<X0>, const re::AssetHandle *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 1);
  if (v5 && (v6 = atomic_load((v5 + 896)), v6 == 2))
  {
    v7 = *(a2 + 1);

    re::AssetManager::findDependencies(this, v7, a3);
  }

  else
  {
    v8 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = re::AssetHandle::assetInfo(a2);
      if (v9[17])
      {
        v10 = v9[18];
      }

      else
      {
        v10 = v9 + 137;
      }

      v11 = 136315138;
      v12 = v10;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Tried to get dependencies for unloaded asset '%s'", &v11, 0xCu);
    }

    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

void re::AssetManager::loadAssetFromDescriptorsOnBackgroundTask_entryStateLocked(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 56, 8);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  re::CancellationTokenSource::CancellationTokenSource((v7 + 24));
  v16 = v7;
  if (a2[14] == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2[14];
  }

  *v7 = v8;
  *(v7 + 16) = 0;
  v9 = *(a1 + 1800);
  v10 = a2[35];
  v11 = *(v7 + 48);
  v14 = v11;
  if (v11)
  {
    v12 = (v11 + 8);
  }

  re::internal::AssetBackgroundLoader::loadAssetAsync(v9, v7, v10, v8, a3, &v14, &v15);
  v13 = *(v7 + 8);
  *(v7 + 8) = v15;
  v15 = v13;
  if (v13)
  {

    v15 = 0;
  }

  if (v14)
  {

    v14 = 0;
  }

  os_unfair_lock_lock((a1 + 2048));
  a2[66] = v7;
  re::DynamicArray<re::RigDataValue *>::add((a1 + 2056), &v16);
  os_unfair_lock_unlock((a1 + 2048));
}

unsigned __int8 *re::AssetManager::loadAssetAsync_entryStateLocked(unsigned __int8 *this, re::internal::AssetEntry *a2, char a3)
{
  if (atomic_load(a2 + 224))
  {
    return this;
  }

  v5 = atomic_load(this + 2177);
  if (v5)
  {
    re::AssetManager::putEntryInFailedState_entryStateLocked(v6, a2, 100, &v16);
    this = v16;
    if (!v16 || (v17 & 1) == 0)
    {
      return this;
    }

    v7 = v18;
    return (*(*this + 40))(this, v7);
  }

  if (!*(a2 + 35))
  {
    re::AssetManager::putEntryInFailedState_entryStateLocked(v9, a2, 200, &v13);
    this = v13;
    if (!v13 || (v14 & 1) == 0)
    {
      return this;
    }

    v7 = v15;
    return (*(*this + 40))(this, v7);
  }

  if (*(a2 + 328) == 1)
  {
    re::AssetManager::putEntryInFailedState_entryStateLocked(v8, a2, 200, &v10);
    this = v10;
    if (!v10 || (v11 & 1) == 0)
    {
      return this;
    }

    v7 = v12;
    return (*(*this + 40))(this, v7);
  }

  return re::AssetManager::putEntryInLoadingState_entryStateLocked(this, a2, a3);
}

void re::AssetManager::loadAssetAsync(re::AssetManager *this, os_unfair_lock_s *a2, char a3)
{
  os_unfair_lock_lock(a2 + 128);
  re::AssetManager::loadAssetAsync_entryStateLocked(this, a2, a3);

  os_unfair_lock_unlock(a2 + 128);
}

void re::AssetManager::loadAssetFromPayload_entryStateLocked(uint64_t a1, atomic_uint **this, uint64_t a3, unsigned int **a4)
{
  v5 = atomic_load((a1 + 2177));
  if (v5)
  {
    re::AssetManager::putEntryInFailedState_entryStateLocked(v6, this, 100, &v44);
    v7 = v44;
    if (v44 && (v45 & 1) != 0)
    {
      v8 = v46;
LABEL_31:
      (*(*v7 + 40))(v7, v8);
    }
  }

  else if (this[35])
  {
    re::internal::AssetEntry::setIsLoading_locked(this, 1);
    if (!*(a1 + 1832) || *(this + 137) == 2)
    {
      re::AssetManager::putEntryInFailedState_entryStateLocked(v21, this, 100, &v38);
      v7 = v38;
      if (v38 && (v39 & 1) != 0)
      {
        v8 = v40;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = *(a1 + 1808);
      v29 = this[35];
      v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, &v29);
      (*(**v14 + 128))(*v14);
      v15 = (*(**v14 + 208))();
      if (v15)
      {
        v16 = re::internal::AssetEntry::fromPeerID(this, v33);
        if (v33[0] == 1 && v34)
        {
          re::DynamicString::format("%llu", &v29, v34);
          if (v30)
          {
            v17 = v32;
          }

          else
          {
            v17 = v31;
          }

          v18 = (*(**(a1 + 1832) + 32))(*(a1 + 1832), v17);
          if (v18)
          {
            if (v29 && (v30 & 1) != 0)
            {
              (*(*v29 + 40))();
            }

            *(this + 545) = 1;
            re::SharedPtr<re::ResourceRequest>::reset(this + 65, *a4);
            re::AssetManager::processUpdatedResourcePayload_entryStateLocked(a1, this, a3, v19);
          }

          else
          {
            re::AssetManager::putEntryInFailedState_entryStateLocked(v24, this, 100, v28);
            if (*&v28[0])
            {
              if (BYTE8(v28[0]))
              {
                (*(**&v28[0] + 40))();
              }

              memset(v28, 0, sizeof(v28));
            }

            v7 = v29;
            if (v29 && (v30 & 1) != 0)
            {
              v8 = v32;
              goto LABEL_31;
            }
          }
        }

        else
        {
          re::AssetManager::putEntryInFailedState_entryStateLocked(v23, this, 100, &v25);
          v7 = v25;
          if (v25 && (v26 & 1) != 0)
          {
            v8 = v27;
            goto LABEL_31;
          }
        }
      }

      else
      {
        re::AssetManager::putEntryInFailedState_entryStateLocked(v22, this, 100, &v35);
        v7 = v35;
        if (v35 && (v36 & 1) != 0)
        {
          v8 = v37;
          goto LABEL_31;
        }
      }
    }
  }

  else
  {
    re::AssetManager::putEntryInFailedState_entryStateLocked(v20, this, 200, &v41);
    v7 = v41;
    if (v41 && (v42 & 1) != 0)
    {
      v8 = v43;
      goto LABEL_31;
    }
  }
}

void re::AssetManager::processUpdatedResourcePayload_entryStateLocked(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v80 = *MEMORY[0x1E69E9840];
  if (*(a2 + 112) == -1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = *(a2 + 112);
  }

  v8 = *(a2 + 280);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = re::AssetSignpost::fireImpulse(0x80F, v7, v9, a4);
  if ((*a3 & 1) == 0)
  {
    v16 = *(a3 + 8);
    v15 = (a3 + 8);
    v17 = CFErrorCopyDescription(v16);
    v18 = *(a1 + 1808);
    *buf = *(a2 + 280);
    v19 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v18, buf);
    (*(**v19 + 128))(*v19);
    re::internal::AssetEntry::LoadState::unloadAssetPointer_locked(a2 + 896, *v19);
    v20 = re::WrappedError::domain(v15);
    if (CFStringCompare(v20, @"REResourceSharingErrorDomain", 0) || [*v15 code] != 600)
    {
      CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
      v22 = v75;
      v23 = re::DynamicString::format("Failed to fetch asset: %s", v75, CStringPtr);
      v24 = v75;
      v25 = a2;
      v26 = 302;
    }

    else
    {
      v21 = CFStringGetCStringPtr(v17, 0x8000100u);
      v22 = v76;
      v23 = re::DynamicString::format("Resource Memory limit hit for asset: %s", v76, v21);
      v24 = v76;
      v25 = a2;
      v26 = 400;
    }

    re::AssetManager::putEntryInFailedState_entryStateLocked(v23, v25, v26, v24);
    re::DynamicString::deinit(v22);
    CFRelease(v17);
    return;
  }

  v11 = atomic_load((a2 + 896));
  if (*(a2 + 336) == 1)
  {
    v12 = *re::assetsLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Asset memory attribution is currently not supported through resource sharing, only through network loading.", buf, 2u);
    }
  }

  v13 = (*(**(a1 + 1920) + 104))(*(a1 + 1920));
  re::DynamicString::format("%llu", &v73, v13);
  re::AssetHandle::AssetHandle(v71, a2);
  if (v72)
  {
    v14 = *(v72 + 272);
  }

  else
  {
    v14 = 0;
  }

  re::DefaultAssetSerialize::DefaultAssetSerialize(buf, v71);
  *buf = &unk_1F5CB9868;
  v69 = 1;
  v28 = re::DynamicString::DynamicString(v70, &v73);
  v70[4] = a1;
  if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
  {
    v29 = *re::assetsLogObjects(v28);
    v28 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (v28)
    {
      v57 = *(a2 + 112);
      if (v57 == -1)
      {
        v57 = 0;
      }

      *v79 = 134218240;
      *&v79[4] = v57;
      *&v79[12] = 1024;
      *&v79[14] = v11;
      _os_log_debug_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEBUG, "processUpdatedResourcePayload for '%llu', loadState is '%d'", v79, 0x12u);
    }
  }

  if (v11 == 2)
  {
    v39 = *(a1 + 1808);
    *v79 = *(a2 + 280);
    v40 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v39, v79);
    (*(**v40 + 128))(*v40);
    v41 = *v40;
    *(a2 + 256) = 1;
    ++*(a2 + 276);
    v42 = re::internal::AssetEntry::assetPointer(a2);
    v43 = *(a3 + 8);
    *(a3 + 8) = 0;
    v58 = v43;
    (*(*v41 + 248))(v41, v42, &v58, buf);

    if (*(a1 + 2217) == 1)
    {
      re::AssetManager::assetNonSharedDataByteSize_entryStateLocked(a1, a2);
    }

    goto LABEL_59;
  }

  if (v11 != 1)
  {
    v44 = *re::assetsLogObjects(v28);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 168))
      {
        v45 = *(a2 + 176);
      }

      else
      {
        v45 = a2 + 169;
      }

      *v79 = 136315138;
      *&v79[4] = v45;
      _os_log_debug_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEBUG, "Updated payload for asset '%s' was ignored (asset is not currently loaded)", v79, 0xCu);
    }

    goto LABEL_59;
  }

  v30 = *(a1 + 1808);
  *v79 = *(a2 + 280);
  v31 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v30, v79);
  v32 = (*(**v31 + 128))(*v31);
  if ((*(a1 + 2233) & 1) == 0)
  {
    v46 = *(a3 + 8);
    *(a3 + 8) = 0;
    v62 = v46;
    v47 = re::globalAllocators(v32);
    v48 = (*(*v47[2] + 32))(v47[2], 56, 8);
    *v48 = 0u;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0u;
    *(v48 + 48) = 0;
    re::CancellationTokenSource::CancellationTokenSource((v48 + 24));
    *v79 = v48;
    if (*(a2 + 112) == -1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(a2 + 112);
    }

    *v48 = v49;
    *(v48 + 16) = 0;
    v50 = *(a1 + 1800);
    v51 = *(a2 + 280);
    v52 = *(v48 + 48);
    v77 = v52;
    if (v52)
    {
      v53 = (v52 + 8);
    }

    re::internal::AssetBackgroundLoader::loadAssetAsync(v50, v48, v51, v49, &v62, &v77, v14 & 1, &v78);
    v54 = *(v48 + 8);
    *(v48 + 8) = v78;
    v78 = v54;
    if (v54)
    {

      v78 = 0;
    }

    if (v52)
    {
    }

    os_unfair_lock_lock((a1 + 2048));
    *(a2 + 528) = v48;
    re::DynamicArray<re::RigDataValue *>::add((a1 + 2056), v79);
    os_unfair_lock_unlock((a1 + 2048));

    goto LABEL_59;
  }

  v33 = *v31;
  v34 = (*(*v33 + 136))(v33);
  v79[0] = 0;
  v61 = *(a3 + 8);
  v35 = (*(*v33 + 224))(v33, &v61, v34, buf, v79, 0);

  if (!v35)
  {
    goto LABEL_55;
  }

  v36 = *(a3 + 8);
  *(a3 + 8) = 0;
  v60 = v36;
  if (*(a2 + 168))
  {
    v37 = *(a2 + 176);
  }

  else
  {
    v37 = a2 + 169;
  }

  v38 = (*(*v33 + 240))(v33, &v60, v34, v37);

  if (*(a2 + 384))
  {
    if ((v79[0] & 1) == 0)
    {
      *(a2 + 384) = 0;
      goto LABEL_53;
    }
  }

  else
  {
    if ((v79[0] & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a2 + 384) = 1;
  }

  *(a2 + 392) = *&v79[8];
LABEL_53:
  if ((v38 & 1) == 0)
  {
LABEL_55:
    v55 = (*(*v33 + 16))(v33, v34);
    re::AssetManager::putEntryInFailedState_entryStateLocked(v56, a2, 302, v59);
    if (*&v59[0])
    {
      if (BYTE8(v59[0]))
      {
        (*(**&v59[0] + 40))();
      }

      memset(v59, 0, sizeof(v59));
    }

    goto LABEL_59;
  }

  *(a2 + 545) = 0;
  re::AssetManager::processLoadedAsset_entryStateLocked(a1, a2, v34, 0);
LABEL_59:
  *buf = &unk_1F5CB9868;
  if (v70[0])
  {
    if (v70[1])
    {
      (*(*v70[0] + 40))();
    }

    memset(v70, 0, 32);
  }

  *buf = &unk_1F5CB98A0;
  if (v64 == 1)
  {
    if (v67)
    {
      if (BYTE8(v67))
      {
        (*(*v67 + 40))();
      }

      v68 = 0u;
      v67 = 0u;
    }

    if (v65 && (v66 & 1) != 0)
    {
      (*(*v65 + 40))();
    }
  }

  re::AssetHandle::~AssetHandle(v71);
  if (v73)
  {
    if (v74)
    {
      (*(*v73 + 40))();
    }
  }
}

void re::AssetManager::unloadAssetEntry_entryStateLocked(os_unfair_lock_s *this, re::internal::AssetEntry *a2, int a3)
{
  if (*(a2 + 544) == 1)
  {
    *(a2 + 544) = 0;
    if (a3)
    {
      v5 = this + 32;
      os_unfair_lock_lock(this + 32);
    }

    else
    {
      v5 = 0;
    }

    v6 = *&this[86]._os_unfair_lock_opaque;
    if (v6)
    {
      v7 = 0;
      while (*(*(*&this[90]._os_unfair_lock_opaque + 8 * v7) + 24) != a2)
      {
        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v7 = -1;
    }

    re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::removeAt(&this[82], v7);
    if (v5)
    {
      os_unfair_lock_unlock(v5);
    }
  }

  re::AssetManager::internalAssetEntryUnloadLoadingAssetPointer_entryStateLocked(this, a2);
  re::AssetManager::internalAssetEntryUnloadAssetPointer_entryStateLocked(this, a2);
  re::internal::AssetEntry::setIsLoading_locked(a2, 0);

  re::internal::AssetEntry::cancelResourceRequest_stateLocked(a2);
}

void re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::removeAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 8 * v2;
    v7 = *(v5 + 8 * a2);
    *(v5 + 8 * a2) = *(v6 - 8);
    *(v6 - 8) = v7;
  }

  v8 = *(a1 + 32) + 8 * v2;
  v9 = *(v8 - 8);
  if (v9)
  {

    *(v8 - 8) = 0;
    v4 = *(a1 + 16) - 1;
  }

  *(a1 + 16) = v4;
  ++*(a1 + 24);
}

void re::AssetManager::cancelLoadingAsset_entryStateLocked(os_unfair_lock_s *a1, re::internal::AssetEntry *this, int a3)
{
  v6 = *(this + 66);
  if (v6)
  {
    *(v6 + 16) = 1;
    *(this + 66) = 0;
  }

  if (*(this + 30) == 8)
  {
    if (*(this + 14) == -1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(this + 14);
    }

    re::NetworkActionQueue::removeLoadActions(a1 + 288, v7);
  }

  if (re::internal::AssetEntry::hasAssetPointer(this) || re::internal::AssetEntry::hasLoadingAssetPointer(this))
  {
    re::AssetManager::unloadAssetEntry_entryStateLocked(a1, this, a3);
  }

  re::internal::AssetEntry::setIsLoading_locked(this, 0);
}

void re::AssetManager::setAssetPayloadRequestOptions(uint64_t a1, uint64_t a2, id *a3)
{
  os_unfair_lock_lock((a2 + 512));
  v6 = *(a1 + 1808);
  v12 = *(a2 + 280);
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, &v12);
  (*(**v7 + 128))(*v7);
  v8 = *v7;
  v9 = re::internal::AssetEntry::assetPointer(a2);
  v11 = *a3;
  (*(*v8 + 256))(v8, v9, &v11);

  v10 = *(a2 + 520);
  if (v10)
  {
    (*(**(a1 + 1832) + 88))(*(a1 + 1832), v10, a3);
  }

  os_unfair_lock_unlock((a2 + 512));
}

void re::AssetManager::assetPayloadDidChange(re::AssetManager *this, re::internal::AssetEntry *a2)
{
  if (*(a2 + 352) == 1)
  {
    *(a2 + 352) = 0;
  }

  if (*(a2 + 368) == 1)
  {
    *(a2 + 368) = 0;
  }

  if (*(a2 + 384) == 1)
  {
    *(a2 + 384) = 0;
  }

  v4 = *(this + 230);
  if (v4)
  {
    if (*(this + 176) && dispatch_get_specific(this + 1408) == this + 1408)
    {
      re::AssetHandle::AssetHandle(location, a2);
      (*(*v4 + 16))(v4, location);
      re::AssetHandle::~AssetHandle(location);
    }

    else
    {
      v5 = *(this + 321);
      if (v5)
      {
        v6 = (v5 + 8);
      }

      else
      {
        v6 = 0;
      }

      objc_initWeak(location, v6);
      objc_initWeak(&from, a2 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN2re12AssetManager21assetPayloadDidChangeERNS_8internal10AssetEntryE_block_invoke;
      block[3] = &__block_descriptor_tmp_59_0;
      v8 = 0;
      objc_copyWeak(&v8, location);
      v9[0] = 0;
      objc_copyWeak(v9, &from);
      v9[1] = v4;
      dispatch_async(*(this + 97), block);
      objc_destroyWeak(v9);
      v9[0] = 0;
      objc_destroyWeak(&v8);
      v8 = 0;
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }
  }
}

void ___ZN2re12AssetManager21assetPayloadDidChangeERNS_8internal10AssetEntryE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = *(WeakRetained + 2);
    v5 = objc_loadWeakRetained((a1 + 40));
    if (v5)
    {
      v6 = v5;
      if ((*(v4 + 2178) & 1) == 0)
      {
        v7 = *(a1 + 48);
        re::AssetHandle::AssetHandle(v8, (v5 - 8));
        (*(*v7 + 16))(v7, v8);
        re::AssetHandle::~AssetHandle(v8);
      }
    }
  }
}

void __copy_helper_block_8_32c60_ZTSN2re10ArcWeakPtrINS_8internal22AssetManagerAliveTokenEEE40c48_ZTSN2re10ArcWeakPtrINS_8internal10AssetEntryEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  objc_copyWeak((a1 + 32), (a2 + 32));
  *(a1 + 40) = 0;

  objc_copyWeak((a1 + 40), (a2 + 40));
}

void __destroy_helper_block_8_32c60_ZTSN2re10ArcWeakPtrINS_8internal22AssetManagerAliveTokenEEE40c48_ZTSN2re10ArcWeakPtrINS_8internal10AssetEntryEEE(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));
  *(a1 + 40) = 0;
  objc_destroyWeak((a1 + 32));
  *(a1 + 32) = 0;
}

void re::AssetManager::makeSharedResourcePayload(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = *(a2 + 8);
  v6 = re::AssetHandle::AssetHandle(v21, v5);
  re::DefaultAssetSerialize::DefaultAssetSerialize(&v13, v21);
  v13 = &unk_1F5CB9868;
  v19 = 0;
  re::DynamicString::DynamicString(v20, &v11);
  v20[4] = a1;
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  v7 = *(a1 + 1808);
  v11 = *(v5 + 35);
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v11);
  (*(**v8 + 128))(*v8);
  v9 = *v8;
  v10 = re::internal::AssetEntry::assetPointer(v5);
  (*(*v9 + 216))(v9, v10, &v13);
  v13 = &unk_1F5CB9868;
  if (v20[0])
  {
    if (v20[1])
    {
      (*(*v20[0] + 40))();
    }

    memset(v20, 0, 32);
  }

  v13 = &unk_1F5CB98A0;
  if (v14 == 1)
  {
    if (v17)
    {
      if (BYTE8(v17))
      {
        (*(*v17 + 40))();
      }

      v18 = 0u;
      v17 = 0u;
    }

    if (v15 && (v16 & 1) != 0)
    {
      (*(*v15 + 40))();
    }
  }

  re::AssetHandle::~AssetHandle(v21);
}

uint64_t re::AssetManager::setResourcePayloadObserver(uint64_t result, uint64_t a2)
{
  atomic_load((result + 2177));
  *(result + 1840) = a2;
  return result;
}

void re::AssetManager::cancelLoadingAssetId(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::lookupExistingAsset_assetTablesLocked(this, a2, v9);
  os_unfair_lock_unlock(this + 32);
  if (v9[0] == 1)
  {
    v4 = v11;
    os_unfair_lock_lock(v11 + 128);
    v5 = atomic_load((v4 + 896));
    if (v5 == 1)
    {
      re::internal::AssetEntry::cancelResourceRequest_stateLocked(v4);
      v6 = *(v4 + 528);
      if (v6 && !*(v6 + 16) && !*(v4 + 912))
      {
        atomic_store(1u, (*(v6 + 48) + 24));
      }

      re::AssetManager::cancelLoadingAsset_entryStateLocked(this, v4, 1);
      v7 = re::DynamicString::format("AssetId %llu has been removed over the network.", v8, a2);
      re::AssetManager::putEntryInFailedState_entryStateLocked(v7, v4, 302, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }
    }

    os_unfair_lock_unlock((v4 + 512));
    if (v9[0])
    {
      re::AssetHandle::~AssetHandle(&v10);
    }
  }
}

void re::AssetManager::entryLoadStateChanged(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 3 && *a3 != 1)
  {
    atomic_store(1u, (a1 + 1032));
  }

  if (*(a1 + 2234) != 1)
  {
    goto LABEL_16;
  }

  v6 = *a3;
  if (*a3 == 3)
  {
    if ((re::internal::enableSignposts(0, 0) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v6 == 2)
  {
    if (!re::internal::enableSignposts(0, 0))
    {
      goto LABEL_16;
    }

LABEL_15:
    kdebug_trace();
    goto LABEL_16;
  }

  if (v6 == 1 && (re::internal::enableSignposts(0, 0) & 1) != 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  v7 = *(a2 + 112);
  if ((v7 + 1) >= 2 && *(a1 + 1920))
  {

    re::NetworkActionQueue::queueSyncActionShareLoadState((a1 + 1152), v7);
  }
}

void re::AssetManager::enqueueUnreferencedUnloadRequest(os_unfair_lock_s *this, re::internal::AssetEntry *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
  {
    v4 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 168))
      {
        v5 = *(a2 + 22);
      }

      else
      {
        v5 = a2 + 169;
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Enqueue unreferenced unload request: %s", &v7, 0xCu);
    }
  }

  os_unfair_lock_lock(this + 384);
  if (a2)
  {
    v6 = a2 + 8;
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&v7, v6);
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::add(&this[386], &v7);
  objc_destroyWeak(&v7);
  os_unfair_lock_unlock(this + 384);
}

uint64_t *re::AssetManager::registerAssetType(uint64_t a1, char **a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 776));
  os_unfair_lock_lock((a1 + 2048));
  v6 = *(a1 + 2072);
  os_unfair_lock_unlock((a1 + 2048));
  if (v6)
  {
    v8 = *re::assetsLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      *buf = 136315138;
      v16 = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Registering an asset type (%s) while there are active asset loading background tasks. Tasks that are already active may fail if they expect the type to be registered. Also, this could lead to a race condition.", buf, 0xCu);
    }
  }

  v10 = *(a1 + 1808);
  v11 = *a3;
  *a3 = 0;
  v13 = v11;
  std::__function::__value_func<void ()(re::AssetLoader *)>::__value_func[abi:nn200100](&v14, (a3 + 1));
  re::internal::AssetTypeRegistry::registerAssetType(v10, a2, &v13);
  return std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v13);
}

void re::AssetManager::registerCustomAssetType(re::AssetManager *this@<X0>, const re::CustomAssetRegistrationParameters *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  re::CustomAssetRegistrationParameters::validate(a2, v20);
  if (v20[0])
  {
    v7 = re::globalAllocators(v6);
    v8 = (*(*v7[2] + 32))(v7[2], 24, 8);
    v9 = *(a2 + 8);
    if (*(a2 + 7))
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v10 = &__block_literal_global;
    }

    *v8 = &unk_1F5CB8398;
    v8[1] = v10;
    CFRetain(v10);
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &__block_literal_global_5;
    }

    v8[2] = v11;
    CFRetain(v11);
    v29 = buf;
    v27 = v26;
    *buf = &unk_1F5CB8DF0;
    v25 = v8;
    v26[0] = &unk_1F5CB8DF0;
    std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](buf);
    if (*(a2 + 4))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = a2 + 33;
    }

    v13 = v25;
    v25 = 0;
    v22 = v13;
    if (v27)
    {
      if (v27 == v26)
      {
        v24 = v23;
        (*(*v27 + 24))();
      }

      else
      {
        v24 = v27;
        v27 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    dispatch_assert_queue_V2(*(this + 97));
    os_unfair_lock_lock(this + 512);
    v15 = *(this + 259);
    os_unfair_lock_unlock(this + 512);
    if (v15)
    {
      v17 = *re::assetsLogObjects(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v12;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Registering an asset type (%s) while there are active asset loading background tasks. Tasks that are already active may fail if they expect the type to be registered. Also, this could lead to a race condition.", buf, 0xCu);
      }
    }

    v18 = *(this + 226);
    v19 = v22;
    v22 = 0;
    *buf = v19;
    if (v24)
    {
      if (v24 == v23)
      {
        v30 = &buf[8];
        (*(*v24 + 24))();
      }

      else
      {
        v30 = v24;
        v24 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    re::internal::AssetTypeRegistry::registerOwnedAssetType(v12, v18, buf, a3);
    std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](buf);
    std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v22);
    std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v25);
  }

  else
  {
    v14 = v21;
    *a3 = 0;
    *(a3 + 8) = v14;
  }

  if ((v20[0] & 1) == 0)
  {
  }
}

BOOL re::AssetManager::registerAssetProvider(re::AssetManager *this, re::AssetProvider *a2)
{
  v2 = *(this + 238);
  v7 = a2;
  if (!a2)
  {
    return re::AssetProviderRegistry::registerAssetProvider(v2, &v7);
  }

  v4 = a2 + 8;
  v5 = re::AssetProviderRegistry::registerAssetProvider(v2, &v7);

  return v5;
}

void ___ZN2re12AssetManager15makeLoadRequestEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = WeakRetained[2];
    if ((*(v3 + 2178) & 1) == 0)
    {
      re::AssetManager::updateNeedManualTicks(v3);
    }
  }
}

BOOL re::AssetManager::isLoading(re::AssetManager *this)
{
  dispatch_assert_queue_V2(*(this + 97));
  os_unfair_lock_lock(this + 512);
  v2 = *(this + 259);
  os_unfair_lock_unlock(this + 512);
  if (v2)
  {
    return 1;
  }

  os_unfair_lock_lock(this + 32);
  v3 = *(this + 43);
  os_unfair_lock_unlock(this + 32);
  if (v3)
  {
    return 1;
  }

  os_unfair_lock_lock(this + 224);
  v5 = *(this + 115);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*(this + 118) + 8 * ((v6 + *(this + 116)) % *(this + 114)));
      os_unfair_lock_lock(v7 + 64);
      os_unfair_lock_opaque = v7[100]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v7 + 64);
      if (!os_unfair_lock_opaque)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    os_unfair_lock_unlock(this + 224);
    return 1;
  }

LABEL_8:
  os_unfair_lock_unlock(this + 224);
  v9 = *(this + 228);
  if (v9)
  {
    if (*(v9 + 92))
    {
      return 1;
    }
  }

  v10 = *(this + 229);
  if (v10)
  {
    if ((*(*v10 + 24))(v10))
    {
      return 1;
    }
  }

  return re::NetworkActionQueue::hasLoadActions(this + 288);
}

BOOL re::AssetManager::isUnloading(re::AssetManager *this)
{
  dispatch_assert_queue_V2(*(this + 97));
  os_unfair_lock_lock(this + 384);
  v2 = *(this + 195) != 0;
  os_unfair_lock_unlock(this + 384);
  return v2;
}

uint64_t re::AssetManager::assetByteSize(re::AssetManager *this, re::AssetHandle *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = atomic_load((v2 + 896));
  if (v3 != 2)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  os_unfair_lock_lock(v5 + 128);
  v6 = re::AssetManager::assetByteSize_entryLocked(this, v5);
  os_unfair_lock_unlock(v5 + 128);
  return v6;
}

uint64_t re::AssetManager::assetNonSharedDataByteSize(re::AssetManager *this, re::AssetHandle *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = atomic_load((v2 + 896));
  if (v3 != 2)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  os_unfair_lock_lock(v5 + 128);
  v6 = re::AssetManager::assetNonSharedDataByteSize_entryStateLocked(this, v5);
  os_unfair_lock_unlock(v5 + 128);
  return v6;
}

double re::AssetManager::gatherAssetStatisticsByType@<D0>(re::AssetManager *this@<X0>, void *a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(this + 97));
  v4 = *(*(this + 226) + 28);
  a2[1] = v4;
  a2[2] = 0;
  if (v4)
  {
    a2[2] = v6;
    if (!v6)
    {
      goto LABEL_86;
    }

    v8 = v6;
    v9 = v6;
    v10 = v4 - 1;
    if (v4 != 1)
    {
      v9 = v6;
      do
      {
        *v9 = 0;
        *(v9 + 1) = 0;
        *(v9 + 6) = 0;
        *(v9 + 2) = 0;
        *(v9 + 2) = 0uLL;
        *(v9 + 3) = 0uLL;
        *(v9 + 4) = 0uLL;
        *(v9 + 5) = 0uLL;
        *(v9 + 12) = 0;
        v9 = (v9 + 104);
        --v10;
      }

      while (v10);
    }

    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 6) = 0;
    *(v9 + 2) = 0;
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 12) = 0;
  }

  else
  {
    v8 = 0;
  }

  v11 = *(this + 226);
  v12 = *(v11 + 32);
  if (v12)
  {
    v13 = 0;
    v14 = *(v11 + 16);
    while (1)
    {
      v15 = *v14;
      v14 += 16;
      if (v15 < 0)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *(v11 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 != v12)
  {
    v16 = 0;
    v17 = *(v11 + 16);
    while (v16 != v4)
    {
      *(v8 + 13 * v16++ + 5) = *(v17 + (v13 << 6) + 8);
      if (v12 <= v13 + 1)
      {
        v18 = v13 + 1;
      }

      else
      {
        v18 = v12;
      }

      while (v18 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(v17 + (v13 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v13) = v18;
LABEL_25:
      if (v13 == v12)
      {
        goto LABEL_26;
      }
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_86:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

LABEL_26:
  LODWORD(v54) = 0;
  v52 = 0u;
  v53 = 0u;
  *(&v54 + 4) = 0x7FFFFFFFLL;
  if (v4)
  {
    v19 = (v8 + 104 * v4);
    do
    {
      v20 = *(v8 + 5);
      v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) >> 27));
      v22 = v21 ^ (v21 >> 31);
      if (v52)
      {
        v23 = v22 % DWORD2(v53);
        v24 = *(*(&v52 + 1) + 4 * v23);
        if (v24 != 0x7FFFFFFF)
        {
          while (*(v53 + 32 * v24 + 8) != v20)
          {
            v24 = *(v53 + 32 * v24) & 0x7FFFFFFF;
            if (v24 == 0x7FFFFFFF)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_35;
        }
      }

      else
      {
        LODWORD(v23) = 0;
      }

LABEL_34:
      v25 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(&v52, v23, v22);
      *(v25 + 8) = *(v8 + 5);
      *(v25 + 16) = v8;
      ++DWORD2(v54);
LABEL_35:
      v8 = (v8 + 104);
    }

    while (v8 != v19);
  }

  os_unfair_lock_lock(this + 32);
  v27 = *(this + 42);
  if (v27)
  {
    v28 = 0;
    v29 = *(this + 19);
    while (1)
    {
      v30 = *v29;
      v29 += 14;
      if (v30 < 0)
      {
        break;
      }

      if (v27 == ++v28)
      {
        LODWORD(v28) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v28) = 0;
  }

  if (v28 != v27)
  {
    v31 = *(this + 19);
    while (1)
    {
      v32 = *(v31 + 56 * v28 + 40);
      if (v32)
      {
        v26 = (v32 + 8);
      }

      if (!v52)
      {
        break;
      }

      v33 = *(v32 + 280);
      v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) >> 27));
      v35 = (v34 ^ (v34 >> 31)) % DWORD2(v53);
      v36 = v53;
      v37 = *(*(&v52 + 1) + 4 * v35);
      if (v37 == 0x7FFFFFFF)
      {
        goto LABEL_52;
      }

      while (*(v53 + 32 * v37 + 8) != v33)
      {
        v37 = *(v53 + 32 * v37) & 0x7FFFFFFF;
        if (v37 == 0x7FFFFFFF)
        {
          goto LABEL_52;
        }
      }

LABEL_53:
      v38 = *(v36 + 32 * v37 + 16);
      v39 = *(v38 + 8);
      v40 = *(v38 + 16);
      if (v40 >= v39)
      {
        v41 = v40 + 1;
        if (v39 < v40 + 1)
        {
          if (*v38)
          {
            v42 = 2 * v39;
            v43 = v39 == 0;
            v44 = 8;
            if (!v43)
            {
              v44 = v42;
            }

            if (v44 <= v41)
            {
              v45 = v41;
            }

            else
            {
              v45 = v44;
            }

            re::DynamicArray<re::AssetPath>::setCapacity(v38, v45);
          }

          else
          {
            re::DynamicArray<re::AssetPath>::setCapacity(v38, v41);
            ++*(v38 + 24);
          }
        }

        v40 = *(v38 + 16);
      }

      v46 = *(v38 + 32) + 80 * v40;
      *v46 = *(v32 + 32);
      re::DynamicString::DynamicString((v46 + 8), (v32 + 40));
      re::DynamicString::DynamicString((v46 + 40), (v32 + 72));
      *(v46 + 72) = *(v32 + 104);
      ++*(v38 + 16);
      ++*(v38 + 24);
      ++*(v38 + 48);
      v47 = atomic_load((v32 + 896));
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          ++*(v38 + 72);
          *(v38 + 88) += *(v32 + 776);
          os_unfair_lock_lock((v32 + 512));
          v49 = re::AssetManager::assetByteSize_entryLocked(this, v32);
          os_unfair_lock_unlock((v32 + 512));
          v48 = 96;
          goto LABEL_74;
        }

        if (v47 != 3)
        {
          goto LABEL_75;
        }

        v48 = 80;
      }

      else if (v47)
      {
        if (v47 != 1)
        {
          goto LABEL_75;
        }

        v48 = 64;
      }

      else
      {
        v48 = 56;
      }

      v49 = 1;
LABEL_74:
      *(v38 + v48) += v49;
LABEL_75:

      if (*(this + 42) <= (v28 + 1))
      {
        v50 = v28 + 1;
      }

      else
      {
        v50 = *(this + 42);
      }

      v31 = *(this + 19);
      while (v50 - 1 != v28)
      {
        LODWORD(v28) = v28 + 1;
        if ((*(v31 + 56 * v28) & 0x80000000) != 0)
        {
          goto LABEL_83;
        }
      }

      LODWORD(v28) = v50;
LABEL_83:
      if (v28 == v27)
      {
        goto LABEL_84;
      }
    }

    v36 = v53;
LABEL_52:
    v37 = 0x7FFFFFFFLL;
    goto LABEL_53;
  }

LABEL_84:
  os_unfair_lock_unlock(this + 32);
  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v52);
}

void re::AssetManager::findAssetHandlesOfType(os_unfair_lock_s *this@<X0>, const re::AssetType *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 32);
  os_unfair_lock_opaque = this[42]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v8 = 0;
    v9 = *&this[38]._os_unfair_lock_opaque;
    while (1)
    {
      v10 = *v9;
      v9 += 14;
      if (v10 < 0)
      {
        break;
      }

      if (os_unfair_lock_opaque == ++v8)
      {
        LODWORD(v8) = this[42];
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 == os_unfair_lock_opaque)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *&this[38]._os_unfair_lock_opaque;
    v13 = this[42]._os_unfair_lock_opaque;
    do
    {
      v14 = *(v12 + 56 * v8 + 40);
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = *(v14 + 280);

        v13 = this[42]._os_unfair_lock_opaque;
        v12 = *&this[38]._os_unfair_lock_opaque;
      }

      else
      {
        v16 = MEMORY[0x118];
      }

      if (v16 == a2)
      {
        ++v11;
      }

      if (v13 <= v8 + 1)
      {
        v17 = v8 + 1;
      }

      else
      {
        v17 = v13;
      }

      while (v17 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v12 + 56 * v8) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v8) = v17;
LABEL_22:
      ;
    }

    while (v8 != os_unfair_lock_opaque);
  }

  v35 = 0uLL;
  v36 = 0;
  v18 = this[42]._os_unfair_lock_opaque;
  if (v18)
  {
    v19 = 0;
    v20 = *&this[38]._os_unfair_lock_opaque;
    while (1)
    {
      v21 = *v20;
      v20 += 14;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = this[42];
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
    v22 = 0;
    v23 = *&this[38]._os_unfair_lock_opaque;
    do
    {
      v24 = *(v23 + 56 * v19 + 40);
      if (v24)
      {
        v25 = v24 + 1;
      }

      if (v24[35] == a2)
      {
        re::AssetHandle::AssetHandle(&v32, v24);
        v26 = *(&v35 + 1);
        if (*(&v35 + 1) <= v22)
        {
          v37 = 0;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
          v46 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v38 = 136315906;
          v39 = "operator[]";
          v40 = 1024;
          v41 = 468;
          v42 = 2048;
          v43 = v22;
          v44 = 2048;
          v45 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v27 = (v36 + 24 * v22);
        v28 = v27[1];
        v27[1] = v33;
        v33 = v28;
        v29 = *v27;
        *v27 = 0;
        *v27 = v32;
        v32 = v29;
        v30 = v27[2];
        v27[2] = v34;
        v34 = v30;
        re::AssetHandle::~AssetHandle(&v32);
        ++v22;
      }

      if (this[42]._os_unfair_lock_opaque <= (v19 + 1))
      {
        v31 = v19 + 1;
      }

      else
      {
        v31 = this[42]._os_unfair_lock_opaque;
      }

      v23 = *&this[38]._os_unfair_lock_opaque;
      while (v31 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v23 + 56 * v19) & 0x80000000) != 0)
        {
          goto LABEL_44;
        }
      }

      LODWORD(v19) = v31;
LABEL_44:
      ;
    }

    while (v19 != v18);
  }

  *a3 = v35;
  v35 = 0uLL;
  *(a3 + 16) = v36;
  v36 = 0;
  re::FixedArray<re::AssetHandle>::deinit(&v35);
  os_unfair_lock_unlock(this + 32);
}

BOOL re::AssetManager::runTaskInBackgroundLoadingGroup(uint64_t a1, id *a2, uint64_t a3)
{
  v3 = atomic_load((a1 + 2177));
  if (v3)
  {
    return 0;
  }

  v4 = *(a1 + 1800);
  if (!v4)
  {
    return 0;
  }

  v8 = *a2;
  v6 = re::internal::AssetBackgroundLoader::runTaskInBackgroundLoadingGroup(v4, &v8, a3);

  return v6;
}

uint64_t re::AssetManager::enableBackgroundLoading(uint64_t this, char a2)
{
  v2 = *(this + 1800);
  *(v2 + 4) = a2;
  *(v2 + 5) = a2;
  return this;
}

uint64_t re::AssetManager::enableNetworkLoadingRedirector(uint64_t a1, int a2, const char *a3, const char *a4)
{
  dispatch_assert_queue_V2(*(a1 + 776));
  v13 = a2;
  re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::addOrReplace(a1 + 1848, &v13, &v11);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  result = v14;
  if (v14)
  {
    if (v15)
    {
      return (*(*v14 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::addOrReplace(uint64_t a1, _DWORD *a2, re::DynamicString *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::computeHash<re::internal::AssetLoadingRoot>(a2);
  re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::findEntry<re::internal::AssetLoadingRoot>(a1, a2, v6, &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::addInternal<re::internal::AssetLoadingRoot const&,re::DynamicString>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 88 * v7 + 48), a3);
}

uint64_t re::AssetManager::disableNetworkLoadingRedirector(uint64_t a1, int a2, const char *a3)
{
  dispatch_assert_queue_V2(*(a1 + 776));
  v8 = a2;
  re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::remove(a1 + 1848, &v8);
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

BOOL re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::remove(uint64_t a1, _DWORD *a2)
{
  v4 = re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::computeHash<re::internal::AssetLoadingRoot>(a2);
  re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::findEntry<re::internal::AssetLoadingRoot>(a1, a2, v4, v6);
  return re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::removeInternal(a1, v6);
}

void re::AssetManager::findDependencies(re::AssetManager *this@<X0>, os_unfair_lock_s *a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock(a2 + 128);
  v6 = atomic_load(&a2[224]._os_unfair_lock_opaque);
  if (v6 == 2)
  {
    v7 = *(this + 226);
    v11 = *&a2[70]._os_unfair_lock_opaque;
    v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v11);
    (*(**v8 + 128))(*v8);
    v9 = *v8;
    v10 = re::internal::AssetEntry::assetPointer(a2);
    (*(*v9 + 120))(v9, v10);
  }

  else
  {
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  os_unfair_lock_unlock(a2 + 128);
}

char *re::AssetManager::deviceAssetPathFromAssetLoadDescriptor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = re::AssetProviderRegistry::deviceAssetPath(*(a1 + 1904), a2, a4, a5);
  if (*a5 == 1 && (a3 & 1) == 0)
  {
    if (*(a2 + 120))
    {
      v10 = *(a2 + 128);
    }

    else
    {
      v10 = (a2 + 121);
    }

    v11 = re::internal::AssetTypeRegistry::assetTypeWithName(*(a1 + 1808), v10);

    return re::AssetPath::updateWithCompiledExtension(a5 + 8, v11);
  }

  return result;
}

void re::AssetManager::deviceAssetPath(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = *(*(a2 + 8) + 112);
  if ((v6 + 1) >= 2 && (os_unfair_lock_lock(a1 + 32), v14 = v6, v10 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&a1[46], &v14), os_unfair_lock_unlock(a1 + 32), v10) && (v11 = *(v10 + 16)) != 0)
  {
    v12 = *(v10 + 32);
    v13 = 144 * v11;
    while (1)
    {
      re::AssetManager::deviceAssetPathFromAssetLoadDescriptor(a1, v12, a3, a4, a5);
      if (*a5)
      {
        break;
      }

      v12 += 144;
      v13 -= 144;
      if (!v13)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    *a5 = 0;
  }
}

uint64_t re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(uint64_t a1)
{
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerFrameStatisticsProcessor>();
  os_unfair_lock_lock((a1 + 16));
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 480), &v5);
  if (v2)
  {
    v3 = *(v2[3] + 8);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3 & 1;
}

void re::AssetManager::registeredAssetTypes(re::AssetManager *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  v3 = *(this + 226);
  v4 = *(v3 + 28);
  a2[1] = v4;
  if (v4)
  {
    v5 = 2 * v4;
    a2[2] = v6;
    if (!v6)
    {
      goto LABEL_28;
    }

    v8 = v6;
    v9 = v6;
    if (v4 != 1)
    {
      bzero(v6, v5 * 8 - 16);
      v9 = &v8[v5 - 2];
    }

    *v9 = 0;
    v9[1] = 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v3 + 32);
  if (v10)
  {
    v11 = 0;
    v12 = *(v3 + 16);
    while (1)
    {
      v13 = *v12;
      v12 += 16;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(v3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v14 = 0;
    v15 = *(v3 + 16);
    while (1)
    {
      v16 = v15 + (v11 << 6);
      v17 = *(v16 + 8);
      v18 = (*(**(v16 + 16) + 128))(*(v16 + 16));
      if (v14 == v4)
      {
        break;
      }

      v19 = &v8[2 * v14];
      *v19 = v17;
      v19[1] = v18;
      ++v14;
      if (*(v3 + 32) <= (v11 + 1))
      {
        v20 = v11 + 1;
      }

      else
      {
        v20 = *(v3 + 32);
      }

      v15 = *(v3 + 16);
      while (v20 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v15 + (v11 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v11) = v20;
LABEL_25:
      if (v11 == v10)
      {
        return;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::AssetManager::pathStringfromAssetId(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *v9 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v6 = re::DynamicString::setCapacity(&v10, 0);
  *(&v14 + 1) = 0;
  v15 = 0uLL;
  re::DynamicString::setCapacity(&v14, 0);
  v16 = 0;
  re::AssetPath::initAssetIdAssetPath(v9, a2, a3);
  v7 = v10;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = v7;
  *(a1 + 1) = 0;
  re::DynamicString::setCapacity(a1, 0);
  re::AssetPath::fullAssetPath(v9, a1);
  if (v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))(v14);
    }

    v15 = 0u;
    v14 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))(v10);
    }
  }

  return result;
}

void re::AssetManager::lookupAssetPathString(os_unfair_lock_s *this@<X0>, char *a2@<X1>, const re::AssetPath *a3@<X2>, uint64_t a4@<X8>)
{
  os_unfair_lock_lock(this + 32);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&this[34], a2);
  os_unfair_lock_unlock(this + 32);
  if (v8)
  {
    v10 = *v65;
    v11 = *&v65[16];
    v12 = v66;
    *a4 = 1;
    *(a4 + 8) = v10;
    *(a4 + 24) = v11;
    *(a4 + 32) = v12;
    return;
  }

  v13 = &v75;
  v14 = re::StackScratchAllocator::StackScratchAllocator(v86);
  re::AssetPath::invalidAssetPath(v14, &v80);
  re::AssetManager::parseAssetPath(this, v86, a2, &v80, 0, v72);
  v15 = a2;
  if (v72[0] != 1)
  {
    goto LABEL_24;
  }

  *&v56[16] = 0;
  v57 = 0;
  *v56 = v74;
  re::DynamicString::setCapacity(v56, 0);
  re::AssetPath::fullAssetPath(&v73, v56);
  os_unfair_lock_lock(this + 32);
  v16 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&this[34], v56);
  os_unfair_lock_unlock(this + 32);
  if (!v16)
  {
    v17 = v73;
    if (v73 != v80 || ((v75 & 1) != 0 ? (v18 = *&v76[7]) : (v18 = v76), (v82 & 1) != 0 ? (v19 = *&v83[7]) : (v19 = v83), v15 = a2, strcmp(v18, v19)))
    {
      if (v17 != 5)
      {
        Descriptor = re::AssetManager::convertToLoadDescriptor(this, &v73, v65);
        if (v65[0] == 1 && (Descriptor = re::ThreadSafeValue<re::AssetManager::AssetTables,re::UnfairLock>::read<re::AssetManager::lookupAssetPathString(char const*,re::AssetPath const&)::$_2>(this + 32, v65)) != 0)
        {
          re::AssetManager::pathStringfromAssetId(&v62, *Descriptor, v79);
          v35 = v62;
          v36 = v63;
          v37 = v64;
          *a4 = 1;
          *(a4 + 8) = v35;
          *(a4 + 24) = v36;
          *(a4 + 32) = v37;
        }

        else
        {
          re::DynamicString::operator+(&v58, a2, &v62);
          v43 = v62;
          v62 = 0uLL;
          v44 = v63;
          v45 = v64;
          v63 = 0;
          v64 = 0;
          *a4 = 0;
          *(a4 + 8) = v43;
          *(a4 + 24) = v44;
          *(a4 + 32) = v45;
          if (v58 && (v59 & 1) != 0)
          {
            (*(*v58 + 40))();
          }
        }

        re::Optional<re::AssetLoadDescriptor>::~Optional(v65);
        goto LABEL_6;
      }

      v20 = strrchr(a2, 47);
      if (v20)
      {
        v15 = v20 + 1;
      }

      else
      {
        v15 = a2;
      }
    }

    if (*v56 && (v56[8] & 1) != 0)
    {
      (*(**v56 + 40))();
    }

LABEL_24:
    v21 = &v66;
    re::AssetManager::parseAssetPath(this, v86, v15, a3, 0, v65);
    if ((v65[0] & 1) == 0)
    {
      if (v67)
      {
        v26 = *&v68[7];
      }

      else
      {
        v26 = v68;
      }

      re::DynamicString::format("Unexpected error parsing unknown path '%s': %s", v56, a2, v26);
      v27 = *v56;
      v28 = *&v56[16];
      v29 = v57;
      *a4 = 0;
      *(a4 + 8) = v27;
      *(a4 + 24) = v28;
      *(a4 + 32) = v29;
      goto LABEL_31;
    }

    *&v56[16] = 0;
    v57 = 0;
    *v56 = *&v65[16];
    re::DynamicString::setCapacity(v56, 0);
    re::AssetPath::fullAssetPath(&v65[8], v56);
    os_unfair_lock_lock(this + 32);
    v22 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&this[34], v56);
    os_unfair_lock_unlock(this + 32);
    v23 = *v56;
    if (v22)
    {
      v24 = v57;
      v25 = *&v56[8];
      *a4 = 1;
      *(a4 + 8) = v23;
      *(a4 + 32) = v24;
      *(a4 + 16) = v25;
      goto LABEL_31;
    }

    if (*v56 && (v56[8] & 1) != 0)
    {
      v23 = (*(**v56 + 40))();
    }

    if (*a3 == 8)
    {
      re::AssetManager::resolveChildLoadDescriptors(a3, this, v56);
      if (v56[0] == 1)
      {
        re::AssetManager::lookupExistingImmutableAssetId(this, &v56[8], v54);
        if (v54[0])
        {
          re::AssetManager::pathStringfromAssetId(&v62, v55, *v71);
          v31 = v62;
          v32 = v63;
          v33 = v64;
          *a4 = 1;
          *(a4 + 8) = v31;
          *(a4 + 24) = v32;
          *(a4 + 32) = v33;
        }

        else
        {
          re::AssetPath::fullAssetPath(a3, &v58);
          if (v59)
          {
            v50 = v61;
          }

          else
          {
            v50 = v60;
          }

          re::DynamicString::format("Failed to find a registered AssetId for load descriptors resolved from relative path %s from parent %s. The resolved load descriptors must already be registered with an AssetId.", &v62, a2, v50);
          v51 = v62;
          v52 = v63;
          v53 = v64;
          *a4 = 0;
          *(a4 + 8) = v51;
          *(a4 + 24) = v52;
          *(a4 + 32) = v53;
          if (v58 && (v59 & 1) != 0)
          {
            (*(*v58 + 40))();
          }
        }

        re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v56[8]);
        goto LABEL_31;
      }

      re::AssetPath::fullAssetPath(a3, &v58);
      if (v59)
      {
        v46 = v61;
      }

      else
      {
        v46 = v60;
      }

      re::DynamicString::format("Failed to resolve child load descriptors with relative path %s from parent %s.", &v62, a2, v46);
      v47 = v62;
      v48 = v63;
      v49 = v64;
      *a4 = 0;
      *(a4 + 8) = v47;
      *(a4 + 24) = v48;
      *(a4 + 32) = v49;
      v41 = v58;
      if (!v58 || (v59 & 1) == 0)
      {
LABEL_31:
        if (v65[0] == 1)
        {
          v21 = &v65[16];
          if (v69)
          {
            if (BYTE8(v69))
            {
              (*(*v69 + 40))();
            }

            v69 = 0u;
            v70 = 0u;
          }
        }

        re::DynamicString::deinit(v21);
        goto LABEL_37;
      }

      v42 = v61;
    }

    else
    {
      re::DynamicString::operator+(&v62, a2, v56);
      v38 = *v56;
      memset(v56, 0, sizeof(v56));
      v39 = *&v56[16];
      v40 = v57;
      v57 = 0;
      *a4 = 0;
      *(a4 + 8) = v38;
      *(a4 + 24) = v39;
      *(a4 + 32) = v40;
      v41 = v62;
      if (!v62 || (BYTE8(v62) & 1) == 0)
      {
        goto LABEL_31;
      }

      v42 = v63;
    }

    (*(*v41 + 40))(v41, v42);
    goto LABEL_31;
  }

  re::DynamicString::DynamicString(v65, v56);
  *a4 = 1;
  *(a4 + 8) = *v65;
  *(a4 + 32) = v66;
  *(a4 + 16) = *&v65[8];
LABEL_6:
  if (*v56 && (v56[8] & 1) != 0)
  {
    (*(**v56 + 40))();
  }

LABEL_37:
  if (v72[0] == 1)
  {
    v13 = &v74;
    if (v77)
    {
      if (BYTE8(v77))
      {
        (*(*v77 + 40))();
      }

      v77 = 0u;
      v78 = 0u;
    }
  }

  v30.n128_f64[0] = re::DynamicString::deinit(v13);
  if (v84)
  {
    if (BYTE8(v84))
    {
      (*(*v84 + 40))(v30.n128_f64[0]);
    }

    v30 = 0uLL;
    v85 = 0u;
    v84 = 0u;
  }

  if (v81)
  {
    if (v82)
    {
      (*(*v81 + 40))(v30);
    }
  }

  re::StackScratchAllocator::~StackScratchAllocator(v86);
}

uint64_t re::ThreadSafeValue<re::AssetManager::AssetTables,re::UnfairLock>::read<re::AssetManager::lookupAssetPathString(char const*,re::AssetPath const&)::$_2>(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(&a1[26], a2 + 8);
  os_unfair_lock_unlock(a1);
  return v4;
}

void re::AssetManager::getDescription(os_unfair_lock_s *this@<X0>, const re::internal::AssetEntry *a2@<X1>, char a3@<W2>, re::DynamicString *a4@<X8>)
{
  os_unfair_lock_lock(this + 32);

  os_unfair_lock_unlock(this + 32);
}

re::DynamicString *re::AssetManager::getDescription_assetTablesLocked@<X0>(re::AssetManager *this@<X0>, re::Allocator *a2@<X1>, const re::internal::AssetEntry *a3@<X2>, char a4@<W3>, re::DynamicString *a5@<X8>)
{
  v7 = *(a3 + 14);
  if ((v7 + 1) >= 2 && (v12 = this, *&v30 = *(a3 + 14), (this = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 184, &v30)) != 0))
  {
    v13 = this;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    *a5 = a2;
    *(a5 + 1) = 0;
    re::DynamicString::setCapacity(a5, 0);
    if ((a4 & 1) == 0)
    {
      re::DynamicString::format(a2, "%llu ", &v30, v7);
      re::DynamicString::operator=(a5, &v30);
      if (v30)
      {
        if (BYTE8(v30))
        {
          (*(*v30 + 40))();
        }
      }
    }

    v14 = **(a3 + 35);
    v15 = strlen(v14);
    re::DynamicString::append(a5, v14, v15);
    result = re::DynamicString::append(a5, " ", 1uLL);
    v16 = *(v13 + 2);
    if (v16)
    {
      v17 = *(v13 + 4);
      v18 = 144 * v16;
      v19 = v16 - 1;
      do
      {
        re::DynamicString::append(a5, "(", 1uLL);
        v20 = *(v17 + 8);
        v21 = (v17 + 9);
        if (v20)
        {
          v22 = *(v17 + 16);
        }

        else
        {
          v22 = (v17 + 9);
        }

        v23 = v20 >> 1;
        v24 = v20 >> 1;
        if (*(v17 + 8))
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        re::DynamicString::append(a5, v22, v25);
        re::DynamicString::append(a5, ")", 1uLL);
        if (*(v17 + 8))
        {
          v21 = *(v17 + 16);
        }

        ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(v12 + 238), v21);
        if (ProviderForScheme)
        {
          v27 = ProviderForScheme;
          v30 = 0u;
          v31 = 0u;
          re::DynamicString::setCapacity(&v30, 0);
          (*(*v27 + 72))(v27, v17, &v30);
          if (BYTE8(v30))
          {
            v28 = v31;
          }

          else
          {
            v28 = &v30 + 9;
          }

          if (BYTE8(v30))
          {
            v29 = *(&v30 + 1) >> 1;
          }

          else
          {
            v29 = BYTE8(v30) >> 1;
          }

          re::DynamicString::append(a5, v28, v29);
          result = v30;
          if (v30 && (BYTE8(v30) & 1) != 0)
          {
            result = (*(*v30 + 40))();
          }
        }

        else
        {
          result = re::DynamicString::append(a5, "<no registered provider>", 0x18uLL);
        }

        if (v19)
        {
          result = re::DynamicString::append(a5, ";", 1uLL);
        }

        v17 += 144;
        --v19;
        v18 -= 144;
      }

      while (v18);
    }
  }

  else
  {
    if (*(a3 + 17))
    {
      v8 = *(a3 + 18);
    }

    else
    {
      v8 = a3 + 137;
    }
  }

  return result;
}

void re::AssetManager::tryToPerformSyncActionPreloadOnLocalPeerOrQueueForLater(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::lookupExistingAsset_assetTablesLocked(this, a2, v7);
  os_unfair_lock_unlock(this + 32);
  memset(v6, 0, sizeof(v6));
  if (v7[0])
  {
    v4 = v8;
  }

  else
  {
    v4 = v6;
  }

  v5 = re::AssetManager::performPreloadOnLocalPeerSyncAction(this, v4);
  re::AssetHandle::~AssetHandle(v6);
  if ((v5 & 1) == 0)
  {
    re::NetworkActionQueue::queueSyncActionPreloadOnLocalPeer(&this[288], a2);
  }

  if (v7[0] == 1)
  {
    re::AssetHandle::~AssetHandle(v8);
  }
}

uint64_t re::AssetManager::finalizeAssetLoad(re::AssetManager *this, void *a2, uint64_t a3, char *a4)
{
  re::AssetManager::assetHandle(this, a4, v7);
  re::AssetManager::processAssetPointer(this, a3, v7[1], 0);
  re::AssetHandle::~AssetHandle(v7);
  return 1;
}

void re::AssetManager::setDeserializedAssetPathRemapping(os_unfair_lock_s *this, char *a2, const char *a3)
{
  os_unfair_lock_lock(this + 32);
  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(&this[92], a2, &v7);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  else
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove<void>(&this[92], a2);
  }

  LOBYTE(this[192]._os_unfair_lock_opaque) = this[99]._os_unfair_lock_opaque != 0;
  os_unfair_lock_unlock(this + 32);
}

void re::AssetManager::fromPeerID(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::lookupExistingAsset_assetTablesLocked(this, a2, v8);
  os_unfair_lock_unlock(this + 32);
  if (v8[0])
  {
    if (v10 && *(v10 + 3))
    {
      re::internal::AssetEntry::fromPeerID(v10, a3);
    }

    else
    {
      *a3 = 0;
    }

    re::AssetHandle::~AssetHandle(&v9);
  }

  else
  {
    v6 = *&this[480]._os_unfair_lock_opaque;
    if (v6)
    {
      v7 = *(*v6 + 128);

      v7();
    }

    else
    {
      *a3 = 1;
      *(a3 + 8) = 0;
    }
  }
}

void re::internal::AssetIdLoadDescriptorTable::insertIntoMutableTables(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (a3)
  {
    v6 = 144 * a3;
    do
    {
      v7 = re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(a1 + 96, a4);
      if (v7)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v7, &v11);
      }

      else
      {
        v16[0] = v11;
        memset(v10, 0, 36);
        *&v10[36] = 0x7FFFFFFFLL;
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v10, v16);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v8 = re::Hash<re::AssetLoadDescriptor>::operator()(&v15, a4);
        re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(&v12, a1 + 96, a4, v8);
        if (HIDWORD(v13) == 0x7FFFFFFF)
        {
          v9 = re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::allocEntry(a1 + 96, v13, v12);
          re::DynamicString::DynamicString((v9 + 8), a4);
          re::DynamicArray<BOOL>::DynamicArray(v9 + 40, a4 + 4);
          re::DynamicArray<BOOL>::DynamicArray(v9 + 80, a4 + 9);
          re::DynamicString::DynamicString((v9 + 120), (a4 + 14));
          *(v9 + 192) = 0;
          *(v9 + 152) = *v10;
          *v10 = 0uLL;
          *(v9 + 168) = *&v10[16];
          *&v10[16] = 0;
          *(v9 + 176) = *&v10[24];
          *&v10[24] = xmmword_1E3058120;
          ++*(a1 + 136);
        }

        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v10);
      }

      a4 += 18;
      v6 -= 144;
    }

    while (v6);
  }
}

uint64_t re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::AssetLoadDescriptor>::operator()(v6, a2);
  re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 208 * v7 + 152;
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v10) << 6) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(v7 + 16, a3);
  ++*(a1 + 40);
  return result;
}

void *re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::AssetLoadDescriptor>::operator()(&v11, a2);
  re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::addInternal<re::AssetLoadDescriptor const&,unsigned long long const&>(a1, &v8, a2, a3);
  }

  else
  {
    return (*(a1 + 16) + 168 * HIDWORD(v9) + 152);
  }
}

void re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::AssetLoadDescriptor>::operator()(v10, a2);
  re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(a1, a2, v4, v10);
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 168 * v12) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
      v5 = v12;
    }

    else
    {
      *(v6 + 168 * v13) = *(v6 + 168 * v13) & 0x80000000 | v7;
    }

    re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::free(v6, v5);
    v8 = v12;
    *(*(a1 + 16) + 168 * v12) = *(*(a1 + 16) + 168 * v12) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = v8;
    *(a1 + 40) = v9;
  }
}

uint64_t re::AssetManager::addCleanupBlock(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2178) == 1)
  {
    v2 = *(a2 + 24);
    if (v2)
    {
      v3 = *(*v2 + 48);

      return v3();
    }

    else
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();
      return re::AssetManager::assetRuntimeSizeLimit(v6);
    }
  }

  else
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v7, a2);
    os_unfair_lock_lock((a1 + 512));
    re::DynamicArray<std::function<void ()(void)>>::add((a1 + 520), v7);
    os_unfair_lock_unlock((a1 + 512));
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
  }
}

double re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 208;
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

double re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::EntryBase::free(uint64_t *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v3 = a1 + 19;
    re::DynamicString::deinit((a1 + 15));
    re::DynamicArray<unsigned long>::deinit((a1 + 10));
    re::DynamicArray<unsigned long>::deinit((a1 + 5));
    re::DynamicString::deinit((a1 + 1));

    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v3);
  }

  return result;
}

double re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
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

double re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 168 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicString::deinit((v2 + 30));
    re::DynamicArray<unsigned long>::deinit((v2 + 20));
    re::DynamicArray<unsigned long>::deinit((v2 + 10));

    return re::DynamicString::deinit((v2 + 2));
  }

  return result;
}

double re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::AssetLoadDescriptor>::deinit(v6 + v4 + 16);
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

double re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          v6 = (i + a1[3]) % a1[1];
          v7 = a1[5];
          v8 = *(v7 + 8 * v6);
          if (v8)
          {

            *(v7 + 8 * v6) = 0;
            v4 = a1[2];
          }
        }

        v2 = *a1;
        v3 = a1[5];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::DynamicArray<unsigned long long>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<char const*>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<float *>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<char const*>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(uint64_t a1))(void)
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

unint64_t re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + (v6 << 6) + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::DynamicOverflowArray<unsigned long long,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<unsigned long long,1ul>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<unsigned long long,1ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

void *re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
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
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::AssetLoadDescriptor>::operator()(v6, a2);
  re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 168 * v7 + 152;
  }
}

uint64_t re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v8) = 0;
    goto LABEL_6;
  }

  v7 = result;
  v8 = a3 % *(result + 24);
  v9 = *(*(result + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_6:
    v9 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  result = re::EqualTo<re::AssetLoadDescriptor>::operator()(&v14, *(result + 16) + 168 * v9 + 8, a2);
  if (result)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v11 = *(v7 + 16);
  v12 = *(v11 + 168 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = re::EqualTo<re::AssetLoadDescriptor>::operator()(&v14, v11 + 168 * v12 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v7 + 16);
      v12 = *(v11 + 168 * v13) & 0x7FFFFFFF;
      v9 = v13;
      if (v12 == 0x7FFFFFFF)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    v6 = v13;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 12) = v6;
  *(a4 + 16) = v9;
  return result;
}

BOOL re::EqualTo<re::AssetLoadDescriptor>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::DynamicString::operator==(a2, a3);
  if (result)
  {
    result = re::DynamicString::operator==(a2 + 112, a3 + 112);
    if (result)
    {
      v6 = *(a2 + 48);
      return v6 == *(a3 + 48) && memcmp(*(a2 + 64), *(a3 + 64), v6) == 0;
    }
  }

  return result;
}

unint64_t re::Hash<re::AssetLoadDescriptor>::operator()(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = re::Hash<re::DynamicString>::operator()(v9, a2);
  v4 = re::Hash<re::DynamicString>::operator()(v9, a2 + 112);
  v5 = *(a2 + 48);
  if (v5)
  {
    MurmurHash3_x64_128(*(a2 + 64), v5, 0, v9);
    v6 = ((v9[1] - 0x61C8864680B583E9 + (v9[0] << 6) + (v9[0] >> 2)) ^ v9[0]) - 0x61C8864680B583E9;
  }

  else
  {
    v6 = 0x9E3779B97F4A7C17;
  }

  v7 = ((v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + v4) ^ v3;
  return ((v7 >> 2) + (v7 << 6) + v6) ^ v7;
}

BOOL re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v8) = 0;
    goto LABEL_6;
  }

  v8 = a4 % *(a2 + 24);
  v9 = *(*(a2 + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_6:
    v9 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  result = re::EqualTo<re::AssetLoadDescriptor>::operator()(&v14, *(a2 + 16) + 208 * v9 + 8, a3);
  if (result)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v11 = *(a2 + 16);
  v12 = *(v11 + 208 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = re::EqualTo<re::AssetLoadDescriptor>::operator()(&v14, v11 + 208 * v12 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(a2 + 16);
      v12 = *(v11 + 208 * v13) & 0x7FFFFFFF;
      v9 = v13;
      if (v12 == 0x7FFFFFFF)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    v6 = v13;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v8;
  *(v5 + 12) = v6;
  *(v5 + 16) = v9;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,1ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<unsigned long long,1ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 8);
  *(v5 + 8 * v6) = *a2;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::DynamicOverflowArray<unsigned long long,1ul>::indexOf@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 24);
  }

  else
  {
    v4 = *(result + 32);
  }

  v5 = *(result + 8);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = &v4[v5];
    while (*v4 != *a2)
    {
      ++v4;
      v6 -= 8;
      if (!v6)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v3)
  {
    v8 = result + 24;
  }

  else
  {
    v8 = *(result + 32);
  }

  if (v4 == (v8 + 8 * v5))
  {
    *a3 = 0;
  }

  else
  {
    *a3 = 1;
    *(a3 + 8) = (v4 - v8) >> 3;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,1ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<unsigned long long,1ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,1ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 1)
    {
      return result;
    }

    v5 = 2;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(result, a2);
}

uint64_t re::internal::Callable<re::AssetManager::tryLoadAssetOverNetwork_entryStateLocked(re::internal::AssetEntry &)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CB8A00;
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::Callable<re::AssetManager::tryLoadAssetOverNetwork_entryStateLocked(re::internal::AssetEntry &)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CB8A00;
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::AssetManager::tryLoadAssetOverNetwork_entryStateLocked(re::internal::AssetEntry &)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator()(uint64_t a1, uint64_t a2)
{
  v10[0] = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = v2;
  v11 = v2;
  v3 = *(a1 + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = &WeakRetained[-2];
    os_unfair_lock_lock(WeakRetained + 126);
    re::AssetManager::processUpdatedResourcePayload_entryStateLocked(v3, v6, v10, v7);
    os_unfair_lock_unlock(v5 + 126);

    v8 = v11;
  }

  else
  {
    v8 = v9;
  }
}

uint64_t re::internal::Callable<re::AssetManager::tryLoadAssetOverNetwork_entryStateLocked(re::internal::AssetEntry &)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB8A00;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::Callable<re::AssetManager::tryLoadAssetOverNetwork_entryStateLocked(re::internal::AssetEntry &)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB8A00;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::DynamicArray<re::internal::DeferredUnregister *>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*result)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        result = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *a2 = 0;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::Callable<re::AssetManager::putEntryInLoadingState_entryStateLocked(re::internal::AssetEntry &,BOOL)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CB8A68;
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::Callable<re::AssetManager::putEntryInLoadingState_entryStateLocked(re::internal::AssetEntry &,BOOL)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CB8A68;
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::AssetManager::putEntryInLoadingState_entryStateLocked(re::internal::AssetEntry &,BOOL)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator()(uint64_t a1, uint64_t a2)
{
  v10[0] = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = v2;
  v11 = v2;
  v3 = *(a1 + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = &WeakRetained[-2];
    os_unfair_lock_lock(WeakRetained + 126);
    re::AssetManager::processUpdatedResourcePayload_entryStateLocked(v3, v6, v10, v7);
    os_unfair_lock_unlock(v5 + 126);

    v8 = v11;
  }

  else
  {
    v8 = v9;
  }
}

uint64_t re::internal::Callable<re::AssetManager::putEntryInLoadingState_entryStateLocked(re::internal::AssetEntry &,BOOL)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB8A68;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::Callable<re::AssetManager::putEntryInLoadingState_entryStateLocked(re::internal::AssetEntry &,BOOL)::$_0,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB8A68;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

re::CancellationTokenSource *re::CancellationTokenSource::CancellationTokenSource(re::CancellationTokenSource *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CB8E80;
  re::make::shared::object<re::CancellationToken>(v2, &v5);
  v3 = *(this + 3);
  *(this + 3) = v5;
  v5 = v3;
  if (v3)
  {
  }

  return this;
}

void re::CancellationTokenSource::~CancellationTokenSource(re::CancellationTokenSource *this)
{
  *this = &unk_1F5CB8E80;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB8E80;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::make::shared::object<re::CancellationToken>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 32, 8);
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CB8EC8;
  *(v4 + 24) = 0;
  *a2 = v4;
}

void re::CancellationToken::~CancellationToken(re::CancellationToken *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::add(_anonymous_namespace_ *this, id *from)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 8 * v4);
  *v5 = 0;
  objc_moveWeak(v5, from);
  ++*(this + 2);
  ++*(this + 6);
}

void *re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(v5, a2);
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
        v12 = v7;
        do
        {
          *v12++ = 0;
          objc_moveWeak(v11, v8);
          objc_destroyWeak(v8);
          *v8++ = 0;
          v11 = v12;
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

void *re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::enqueue(void *this, uint64_t *a2)
{
  v3 = this;
  v5 = this[1];
  v4 = this[2];
  if (v4 + 1 >= v5)
  {
    this = re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::growCapacity(this, v4 + 1);
    v5 = v3[1];
    v4 = v3[2];
  }

  v6 = (v3[3] + v4) % v5;
  v7 = *a2;
  *(v3[5] + 8 * v6) = *a2;
  if (v7)
  {
    this = (v7 + 8);
    v4 = v3[2];
  }

  v3[2] = v4 + 1;
  ++*(v3 + 8);
  return this;
}

void *re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::setCapacity(v4, v3);
      v4[2] = 0;
      v4[3] = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

void *re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v8 = result;
            v3 = v5[1];
            if (!v3)
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v9 = v5[2];
      v10 = v5[5];
      if (v9)
      {
        v11 = v5[3];
        v12 = v11;
        do
        {
          v8[v12] = *(v10 + 8 * (v11 % v3));
          *(v10 + 8 * (v11 % v3)) = 0;
          if (v12 + 1 < a2)
          {
            ++v12;
          }

          else
          {
            v12 = 0;
          }

          ++v11;
          --v9;
        }

        while (v9);
      }

      result = (*(**v5 + 40))(*v5, v10);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::AssetPath>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AssetPath>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = &v8[10 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 3) = 0u;
          v12 = (v8 + 1);
          v11[1] = v8[1];
          v8[1] = 0;
          v11[4] = v8[4];
          v8[4] = 0;
          v14 = v11[2];
          v13 = v11[3];
          v15 = v8[3];
          v11[2] = v8[2];
          v11[3] = v15;
          v8[2] = v14;
          v8[3] = v13;
          *(v11 + 7) = 0u;
          *(v11 + 5) = 0u;
          v17 = v8[5];
          v16 = (v8 + 5);
          v11[5] = v17;
          *v16 = 0;
          v11[8] = *(v16 + 3);
          *(v16 + 3) = 0;
          v19 = v11[6];
          v18 = v11[7];
          v20 = *(v16 + 2);
          v11[6] = *(v16 + 1);
          v11[7] = v20;
          *(v16 + 1) = v19;
          *(v16 + 2) = v18;
          v11[9] = *(v16 + 4);
          re::DynamicString::deinit(v16);
          re::DynamicString::deinit(v12);
          v11 += 10;
          v8 = (v16 + 40);
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

void *re::FixedArray<re::AssetHandle>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 24 * v2;
      do
      {
        re::AssetHandle::~AssetHandle(v4);
        v4 = (v6 + 24);
        v5 -= 24;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::AssetPath *,re::AssetPath *,re::AssetPath *>(re::DynamicString *result, re::DynamicString *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 40);
    v5 = (result + 40);
    do
    {
      *(v4 - 10) = *(v5 - 10);
      re::DynamicString::operator=((v4 - 4), (v5 - 4));
      result = re::DynamicString::operator=(v4, v5);
      v4[4] = v5[4];
      v4 += 10;
      v6 = (v5 + 5);
      v5 += 10;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::AssetPath>::deinit(uint64_t a1)
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
        v5 = 80 * v4;
        v6 = (v3 + 40);
        do
        {
          re::DynamicString::deinit(v6);
          re::DynamicString::deinit((v6 - 32));
          v6 = (v6 + 80);
          v5 -= 80;
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

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re23AssetNetworkSharingModeENS8_9HashTableINS8_13DynamicStringEyNS8_4HashISB_EENS8_7EqualToISB_EELb1ELb0EEENS8_19AssetLoadDescriptorESB_NS8_18NetworkActionQueue6Action15NetworkLoadDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SG_SH_SB_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t a2)
{
  re::DynamicString::deinit((a2 + 112));
  re::DynamicArray<unsigned long>::deinit(a2 + 72);
  re::DynamicArray<unsigned long>::deinit(a2 + 32);

  return re::DynamicString::deinit(a2);
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(uint64_t a1, char *a2, re::DynamicString *a3)
{
  v10 = 0;
  v11 = a2;
  v8 = 0;
  v9 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v11, v5, &v8);
  v6 = HIDWORD(v9);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicString>(a1, &v8, &v11, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 80 * v6 + 40), a3);
}

BOOL re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove<void>(uint64_t a1, char *a2)
{
  v6 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v6, v3, v5);
  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(a1, v5);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicString>(uint64_t a1, uint64_t a2, const char **a3, void *a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 40) = 0u;
  v7 += 40;
  *(v7 + 16) = 0u;
  *(v7 + 24) = a4[3];
  v9 = a4[1];
  *v7 = *a4;
  *a4 = 0;
  v10 = a4[2];
  a4[3] = 0;
  v12 = *(v7 + 8);
  v11 = *(v7 + 16);
  *(v7 + 8) = v9;
  *(v7 + 16) = v10;
  a4[1] = v12;
  a4[2] = v11;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_17;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_17:
    v8 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v9 = *(result + 16);
  v10 = *a2;
  v11 = v9 + 80 * v8;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = (v11 + 17);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = strcmp(v15, *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v16 = *(v9 + 80 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 80 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 80 * v17) & 0x7FFFFFFF;
      v8 = v17;
      if (v16 == 0x7FFFFFFF)
      {
        v8 = v17;
        goto LABEL_18;
      }
    }

    v6 = v17;
  }

LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 72) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 32) % *(v4 + 24));
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
        v13 = (*(a2 + 16) + v6);
        *(result + 56) = 0u;
        *(result + 40) = 0u;
        *(result + 64) = v13[3];
        v14 = v13[1];
        *(result + 40) = *v13;
        *v13 = 0;
        v15 = v13[2];
        v13[3] = 0;
        v17 = *(result + 48);
        v16 = *(result + 56);
        *(result + 48) = v14;
        *(result + 56) = v15;
        v13[1] = v17;
        v13[2] = v16;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 80;
    }

    while (v5 < v2);
  }

  return result;
}

BOOL re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 80 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 80 * v5) = *(v6 + 80 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((v6 + 80 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 80 * v9) = *(*(a1 + 16) + 80 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

double re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 10);
    re::DynamicString::deinit((a1 + 2));

    return re::DynamicString::deinit(v2);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v7 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v7, v3, v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 80 * v6 + 40;
  }
}

uint64_t re::DynamicArray<std::function<void ()(void)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<std::function<void ()(void)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](*(this + 4) + 32 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<std::function<void ()(void)>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<std::function<void ()(void)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<std::function<void ()(void)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<std::function<void ()(void)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<std::function<void ()(void)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_21;
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
LABEL_21:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          v12 = *(v8 + 24);
          if (v12)
          {
            if (v8 == v12)
            {
              v11[3] = v11;
              (*(**(v8 + 24) + 24))(*(v8 + 24), v11);
            }

            else
            {
              v11[3] = v12;
              *(v8 + 24) = 0;
            }
          }

          else
          {
            v11[3] = 0;
          }

          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v8);
          v8 += 32;
          v11 += 4;
          v10 -= 32;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 80;
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

uint64_t re::DynamicArray<re::DynamicString>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 32);
          v5 -= 32;
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

uint64_t re::DynamicArray<re::AssetHandle>::deinit(uint64_t a1)
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
        v5 = 24 * v4;
        do
        {
          re::AssetHandle::~AssetHandle(v3);
          v3 = (v3 + 24);
          v5 -= 24;
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

void *re::DynamicArray<re::AssetHandle>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::AssetHandle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AssetHandle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::AssetHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AssetHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = 24 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v11[1] = *(v8 + 1);
          *(v8 + 1) = 0;
          v12 = *v11;
          *v11 = 0;
          *v11 = *v8;
          *v8 = v12;
          v13 = v11[2];
          v11[2] = *(v8 + 2);
          *(v8 + 2) = v13;
          re::AssetHandle::~AssetHandle(v8);
          v8 = (v8 + 24);
          v11 += 3;
          v10 -= 24;
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

uint64_t re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        do
        {
          re::DynamicArray<re::AssetLoadDescriptor>::deinit(v3);
          v3 += 40;
          v5 -= 40;
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

uint64_t re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, int a4, re::AssetHandle *a5)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 40 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 40 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 40 * v9 + 8) = v12 | 0x80000000;
  *(*(a1 + 16) + 40 * v9 + 8) = *(*(a1 + 16) + 40 * v9 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 40 * v9) = a3;
  re::AssetHandle::AssetHandle((*(a1 + 16) + 40 * v9 + 16), a5);
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

void re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 40;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 40 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 40 * v8 + 8) = *(*(a1 + 16) + 40 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 40 * v8) = a3;
  v12 = (*(a1 + 16) + 40 * v8);
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = 0;
  v12[3] = a5[1];
  a5[1] = 0;
  v13 = v12[2];
  v12[2] = 0;
  v12[2] = *a5;
  *a5 = v13;
  v14 = v12[4];
  v12[4] = a5[2];
  a5[2] = v14;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

double re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v5);
        if (v7 < 0)
        {
          *(v6 + v5) = v7 & 0x7FFFFFFF;
          re::AssetHandle::~AssetHandle((v6 + v5 + 8));
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 40;
      }

      while (v4 < v3);
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

double re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::EntryBase::free((a1[2] + v3));
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

double re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 12);
    re::DynamicString::deinit((a1 + 4));

    return re::DynamicString::deinit(v2);
  }

  return result;
}

void MemoryAssetProvider::~MemoryAssetProvider(MemoryAssetProvider *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void MemoryAssetProvider::load(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Can't load a memory asset", "!Unreachable code", "load", 246);
  _os_crash();
  __break(1u);
}

re::DynamicString *MemoryAssetProvider::resolveChild@<X0>(const re::AssetLoadDescriptor *a1@<X1>, re::AssetProvider *a2@<X2>, const re::DynamicString *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {
    v9 = *(a1 + 2);
  }

  else
  {
    v9 = a1 + 9;
  }

  v10 = strcmp(v9, "MemoryAsset");
  if (v10)
  {
    result = re::DynamicString::format("Scheme %s does not match scheme %s.", &v28, v9, "MemoryAsset");
    v12 = v28;
    v13 = v29;
    v14 = v30;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    re::DynamicString::setCapacity(&v40, 0);
    v15 = re::AssetLoadDescriptor::getIntrospectableData<re::DynamicString>(a1, &v40);
    if (v15)
    {
      if (v41)
      {
        v16 = v42;
      }

      else
      {
        v16 = (&v41 + 1);
      }

      re::AssetProvider::resolveChildPath(a2, v16, v39);
      MemoryAssetProvider::makeDescriptor(v39, a3, &v28);
      v17 = v28;
      *(a4 + 48) = v31;
      v18 = v34;
      *(a4 + 72) = v33;
      v28 = 0u;
      v19 = v29;
      v20 = v30;
      v29 = 0;
      v21 = *(&v30 + 1);
      v30 = 0u;
      ++v32;
      v23 = v37;
      v22 = v38;
      v24 = v36;
      *a4 = 1;
      *(a4 + 24) = v19;
      *(a4 + 32) = v20;
      *(a4 + 8) = v17;
      *(a4 + 40) = v21;
      v31 = 0u;
      *(a4 + 64) = 1;
      v33 = 0u;
      v34 = 0u;
      *(a4 + 88) = v18;
      *(a4 + 104) = 1;
      *(a4 + 112) = v35;
      *(a4 + 136) = v23;
      *(a4 + 144) = v22;
      *(a4 + 128) = v24;
      if (*&v39[0])
      {
        if (BYTE8(v39[0]))
        {
          (*(**&v39[0] + 40))();
        }

        memset(v39, 0, sizeof(v39));
      }
    }

    else
    {
      v25 = v28;
      v26 = v29;
      v27 = v30;
      *a4 = 0;
      *(a4 + 8) = v25;
      *(a4 + 24) = v26;
      *(a4 + 32) = v27;
    }

    result = v40;
    if (v40)
    {
      if (v41)
      {
        return (*(*v40 + 40))();
      }
    }
  }

  return result;
}

re::DynamicString *MemoryAssetProvider::getDescription(MemoryAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::DynamicString::setCapacity(&v6, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::DynamicString>(a2, &v6))
  {
    re::DynamicString::operator=(a3, &v6);
  }

  else
  {
    v10[0] = "mangled";
    v10[1] = 7;
    re::DynamicString::operator=(a3, v10);
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

re::DynamicString *MemoryAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, char *a2@<X1>, re::internal::AssetTypeRegistry *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  re::DynamicString::setCapacity(&v26, 0);
  re::AssetLoadDescriptor::getIntrospectableData<re::DynamicString>(a2, &v26);
  if (*(a2 + 15))
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = a2 + 121;
  }

  v8 = re::internal::AssetTypeRegistry::assetTypeWithName(a3, v7);
  LODWORD(v18) = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v9 = re::DynamicString::setCapacity(&v19, 0);
  *(&v23 + 1) = 0;
  v24 = 0uLL;
  re::DynamicString::setCapacity(&v23, 0);
  v25 = 0;
  if (v27)
  {
    v10 = v28;
  }

  else
  {
    v10 = &v27 + 1;
  }

  re::AssetPath::initMemoryAssetPath(&v18, v10, v8);
  v16 = 0;
  v17 = 0;
  v15 = v19;
  re::DynamicString::setCapacity(&v15, 0);
  re::AssetPath::fullAssetPath(&v18, &v15);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  *a4 = 1;
  *(a4 + 8) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  if (v23)
  {
    if (BYTE8(v23))
    {
      (*(*v23 + 40))();
    }

    v24 = 0u;
    v23 = 0u;
  }

  if (v19 && (v20 & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  result = v26;
  if (v26)
  {
    if (v27)
    {
      return (*(*v26 + 40))();
    }
  }

  return result;
}

uint64_t MemoryAssetProvider::makeDescriptorFromAssetPath@<X0>(const re::DynamicString ***a1@<X1>, uint64_t a2@<X8>)
{
  MemoryAssetProvider::makeDescriptor((a1 + 5), *a1[9], &v6);
  v4.n128_f64[0] = re::Optional<re::AssetLoadDescriptor>::Optional(a2, &v6);
  if (v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))(v4.n128_f64[0]);
    }

    v4 = 0uLL;
    v18 = 0u;
    v19 = 0u;
  }

  if (v13)
  {
    if (v17)
    {
      (*(*v13 + 40))(v4);
    }

    v17 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    ++v16;
  }

  if (v8)
  {
    if (v12)
    {
      (*(*v8 + 40))(v4);
    }

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    ++v11;
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))(v4);
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::DynamicString>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  v4 = &unk_1EE187000;
  {
    v11 = a1;
    v4 = &unk_1EE187000;
    v9 = v7;
    v3 = a2;
    a1 = v11;
    if (v9)
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v8);
      v4 = &unk_1EE187000;
      v3 = a2;
      a1 = v11;
    }
  }

  v5 = *(v4 + 231);

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v5, v3, 0);
}

void re::internal::AssetManagerAliveToken::~AssetManagerAliveToken(dispatch_group_t **this)
{
  *this = &unk_1F5CB8B88;
  dispatch_group_leave(*this[4]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5CB8B88;
  dispatch_group_leave(*this[4]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        v6 = v3 + 64;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicString::deinit((v6 - 32));
          re::AssetHandle::~AssetHandle((v6 - 56));
          v6 += 112;
          v5 -= 112;
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

double re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 88;
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

double re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 80;
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

void re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 12);
    re::DynamicString::deinit((a1 + 2));

    re::AssetHandle::~AssetHandle(v2);
  }
}

void re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      v7 = *(a1 + 16);
      *&v13[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v8 = *&v13[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::addAsMove(a1, *(v11 - 2) % *(a1 + 24), *(v11 - 2), v11);
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::addAsMove(uint64_t result, unsigned int a2, unint64_t a3, void *a4)
{
  v6 = result;
  v7 = *(result + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(result + 32);
    v8 = v7;
    if (v7 == *(result + 24))
    {
      result = re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::setCapacity(result, (2 * *(result + 28)));
      a2 = a3 % *(v6 + 24);
      v8 = *(v6 + 32);
    }

    *(v6 + 32) = v8 + 1;
    v9 = *(v6 + 16);
    v10 = *(v9 + 24 * v7 + 8);
  }

  else
  {
    v9 = *(result + 16);
    v10 = *(v9 + 24 * v7 + 8);
    *(result + 36) = v10 & 0x7FFFFFFF;
  }

  *(v9 + 24 * v7 + 8) = v10 | 0x80000000;
  *(*(v6 + 16) + 24 * v7 + 8) = *(*(v6 + 16) + 24 * v7 + 8) & 0x80000000 | *(*(v6 + 8) + 4 * a2);
  *(*(v6 + 16) + 24 * v7) = a3;
  *(*(v6 + 16) + 24 * v7 + 16) = *a4;
  *(*(v6 + 8) + 4 * a2) = v7;
  ++*(v6 + 28);
  return result;
}

uint64_t std::__function::__func<re::AssetManager::deinit(void)::$_3,std::allocator<re::AssetManager::deinit(void)::$_3>,void ()(re::NetworkActionQueue::Action const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB8BD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::AssetManager::deinit(void)::$_3,std::allocator<re::AssetManager::deinit(void)::$_3>,void ()(re::NetworkActionQueue::Action const&)>::operator()(uint64_t result, uint64_t a2)
{
  if (*(a2 + 160) == 8)
  {
    if (*(a2 + 144) == 4)
    {
      v2 = *(*(result + 8) + 1808);
      v6 = *(a2 + 8);
      v3 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v2, &v6);
      (*(**v3 + 128))(*v3);
      v4 = *(**v3 + 16);

      return v4();
    }

    else
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return std::__function::__func<re::AssetManager::deinit(void)::$_3,std::allocator<re::AssetManager::deinit(void)::$_3>,void ()(re::NetworkActionQueue::Action const&)>::target(v5);
    }
  }

  return result;
}

uint64_t std::__function::__func<re::AssetManager::deinit(void)::$_3,std::allocator<re::AssetManager::deinit(void)::$_3>,void ()(re::NetworkActionQueue::Action const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 8));
    v2 = *(a1 + 40);
    if (v2)
    {

      *(a1 + 40) = 0;
    }
  }
}

void std::__list_imp<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:nn200100]<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

double std::__destroy_at[abi:nn200100]<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,0>(re::DynamicString *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  return re::DynamicString::deinit(this);
}

void std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(*a1);
    std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

double re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 72;
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

void re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::FixedArray<CoreIKTransform>::deinit((a1 + 32));
    re::FixedArray<CoreIKTransform>::deinit((a1 + 8));
    objc_destroyWeak((a1 + 56));
    *(a1 + 56) = 0;
  }
}

__n128 std::__function::__func<re::AssetManager::update(BOOL,BOOL)::$_0,std::allocator<re::AssetManager::update(BOOL,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB8C60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 22) = 0;
  *(a2 + 18) = 0;
  return result;
}

void std::__function::__func<re::AssetManager::update(BOOL,BOOL)::$_0,std::allocator<re::AssetManager::update(BOOL,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v298 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = re::internal::enableSignposts(0, 0);
  if (v4)
  {
    v4 = re::internal::enableHighFrequencyTracing(0, 0);
    if (v4)
    {
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(buf, 2000, v3);
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(buf);
    }
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v4);
  if (isStatisticCollectionEnabled)
  {
    rep = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(rep + 152))
    {
      v258 = mach_absolute_time();
    }
  }

  else
  {
    rep = 0;
  }

  if (*(a1 + 17) == 1)
  {
    *(v3 + 2561) = 0;
  }

  v271 = *(v3 + 2272);
  v272 = *(v3 + 2288);
  v273 = 0u;
  v274 = 0u;
  v275 = 0;
  v276 = 0x7FFFFFFFLL;
  v7 = *(v3 + 2304);
  if (v7)
  {
    if (*(v3 + 2332) <= 3u)
    {
      v8 = 3;
    }

    else
    {
      v8 = *(v3 + 2332);
    }

    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v273, v7, v8);
    re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::copy(&v273, v3 + 2304);
  }

  v263 = (v3 + 2304);
  v260 = rep;
  if (*(a1 + 16))
  {
    v9 = *(v3 + 2224);
    v10 = dispatch_time(0, 0);
    v11 = v10;
    if (v9 != -1)
    {
      v12 = dispatch_time(v10, v9);
      goto LABEL_20;
    }
  }

  else
  {
    v11 = dispatch_time(0, 0);
    v9 = -1;
  }

  v12 = -1;
LABEL_20:
  *&v290[32] = 0;
  memset(v290, 0, 28);
  v13 = *(v3 + 40);
  if (v13)
  {
    rep = v294;
    v14 = *(v3 + 56);
    v15 = 8 * v13;
    do
    {
      v16 = *v14;
      *buf = v16;
      if (v16)
      {
        v17 = (v16 + 8);
      }

      v1 = *(v16 + 24);
      os_unfair_lock_lock((v1 + 256));
      v18 = *(v1 + 400);
      os_unfair_lock_unlock((v1 + 256));
      if (v18)
      {
        re::DynamicArray<re::SharedPtr<re::AssetLoadRequest>>::add(v290, buf);
      }

      ++v14;
      v15 -= 8;
    }

    while (v15);
    if (*&v290[16])
    {
      v19 = *&v290[32];
      v20 = *&v290[32] + 8 * *&v290[16];
      do
      {
        v21 = *v19;
        if (*v19)
        {
          v22 = (v21 + 8);
        }

        v23 = *(v3 + 56);
        v1 = *(v3 + 40);
        v24 = v23;
        if (v1)
        {
          v25 = 8 * v1;
          v24 = *(v3 + 56);
          while (*v24 != v21)
          {
            v24 += 8;
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_43;
            }
          }
        }

        v26 = &v23[8 * v1];
        if (v24 != v26)
        {
          v27 = (v24 - v23);
          v28 = (v24 - v23) >> 3;
          if (v1 <= v28)
          {
            goto LABEL_482;
          }

          v29 = v1 - 1;
          if (v1 - 1 > v28)
          {
            v30 = *&v27[v23];
            *&v27[v23] = *(v26 - 1);
            *(v26 - 1) = v30;
            v23 = *(v3 + 56);
          }

          v1 = &v23[8 * v1];
          v31 = *(v1 - 8);
          if (v31)
          {

            *(v1 - 8) = 0;
            v29 = *(v3 + 40) - 1;
          }

          *(v3 + 40) = v29;
          ++*(v3 + 48);
        }

LABEL_43:
        if (v21)
        {
        }

        ++v19;
      }

      while (v19 != v20);
    }
  }

  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v290);
  *buf = v11;
  *&buf[8] = v12;
  *&buf[16] = v9;
  re::AssetManager::updateLoadRequests(v3, buf);
  *buf = v11;
  *&buf[8] = v12;
  *&buf[16] = v9;
  v28 = buf;
  re::AssetManager::processUnreferencedUnloadRequests(v3, buf);
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(buf, 2012, 61);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(buf);
  }

  v259 = (v3 + 2272);
  atomic_load((v3 + 2177));
  v265.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v261 = v9;
  v262 = v12;
  do
  {
    LoadItemResult = re::internal::AssetBackgroundLoader::tryGetLoadItemResult(*(v3 + 1800), 1);
    if (!LoadItemResult)
    {
      break;
    }

    rep = LoadItemResult;
    v34 = *(LoadItemResult + 24);
    v35 = *(v34 + 16);
    switch(v35)
    {
      case 2:
        re::AssetManager::onUnloadComplete(v3, *v34);
        break;
      case 1:
        v37 = *(LoadItemResult + 144);
        if (v37 == 3)
        {
          v39 = *re::assetsLogObjects(LoadItemResult);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            if (*(rep + 40))
            {
              v40 = *(rep + 48);
            }

            else
            {
              v40 = rep + 41;
            }

            *buf = 136315138;
            *&buf[4] = v40;
            _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Asset load (which was cancelled) failed '%s'", buf, 0xCu);
          }

          if (*(rep + 152) == 1)
          {
            re::DynamicString::append((rep + 160), " (was also cancelled)", 0x15uLL);
          }
        }

        else
        {
          if (v37 != 2)
          {
            goto LABEL_488;
          }

          if (*(LoadItemResult + 40))
          {
            v38 = *(LoadItemResult + 48);
          }

          else
          {
            v38 = (LoadItemResult + 41);
          }

          re::AssetManager::unloadAssetPointer(v3, *(LoadItemResult + 64), *(LoadItemResult + 96), v38, *v34);
          *(rep + 96) = 0;
          v49 = *(rep + 104);
          if (v49)
          {

            *(rep + 104) = 0;
          }
        }

        break;
      case 0:
        v291[0] = 0;
        if (*(LoadItemResult + 352) == 1)
        {
          v36 = *(LoadItemResult + 368);
          goto LABEL_63;
        }

        if (*(LoadItemResult + 192) == 1)
        {
          v36 = *(LoadItemResult + 248);
LABEL_63:
          os_unfair_lock_lock((v3 + 128));
          re::AssetManager::lookupExistingAsset_assetTablesLocked(v3, v36, buf);
          os_unfair_lock_unlock((v3 + 128));
LABEL_64:
          LoadItemResult = re::Optional<re::AssetHandle>::operator=(v291, buf);
          if (buf[0] == 1)
          {
            re::AssetHandle::~AssetHandle(&buf[8]);
          }
        }

        else if (*(LoadItemResult + 256) == 1)
        {
          re::AssetManager::lookupExistingAsset(buf, v3, LoadItemResult + 264);
          goto LABEL_64;
        }

        if (v291[0])
        {
          v41 = *&v291[16];
          os_unfair_lock_lock((*&v291[16] + 512));
          *(v41 + 528) = 0;
          v44 = *(rep + 144);
          if (v44 == 3)
          {
            v1 = "Load failed";
            if (*(rep + 152) == 1)
            {
              if (*(rep + 168))
              {
                v1 = *(rep + 176);
              }

              else
              {
                v1 = rep + 169;
              }
            }

            if (*(v41 + 24))
            {
              re::AssetManager::putEntryInFailedState_entryStateLocked(v65, v41, 300, buf);
              if (*buf)
              {
                if (buf[8])
                {
                  (*(**buf + 40))();
                }

                memset(buf, 0, sizeof(buf));
              }
            }

            else
            {
              v66 = *re::assetsLogObjects(v42);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                if (*(rep + 40))
                {
                  v67 = *(rep + 48);
                }

                else
                {
                  v67 = rep + 41;
                }

                *buf = 136315394;
                *&buf[4] = v67;
                *&buf[12] = 2080;
                *&buf[14] = v1;
                _os_log_error_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_ERROR, "Failed to load asset path '%s' -- %s", buf, 0x16u);
              }
            }
          }

          else
          {
            if (v44 != 2)
            {
              goto LABEL_489;
            }

            if (*(v41 + 544) == 1)
            {
              v45 = *re::assetsLogObjects(v42);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                if (*(rep + 40))
                {
                  v46 = *(rep + 48);
                }

                else
                {
                  v46 = rep + 41;
                }

                *buf = 136315138;
                *&buf[4] = v46;
                _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "Couldn't load asset at %s as there is an existing asset being registered", buf, 0xCu);
              }

              v68 = *(v3 + 1808);
              *buf = *(rep + 64);
              v69 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v68, buf);
              (*(**v69 + 128))(*v69);
              (*(**v69 + 16))(*v69, *(rep + 96));
              *(rep + 96) = 0;
              v70 = *(rep + 104);
              if (v70)
              {

                *(rep + 104) = 0;
              }

              *(rep + 144) = 3;
              goto LABEL_150;
            }

            if (*(rep + 352) != 1)
            {
LABEL_149:
              *(v41 + 545) = 0;
              re::AssetManager::processLoadedAsset_entryStateLocked(v3, v41, *(rep + 96), *(rep + 104));
              *(v41 + 776) = *(rep + 416);
              v73 = *(rep + 136);
              *(v41 + 960) = *(rep + 128);
              *(v41 + 968) = v73;
              ++*(v3 + 1024);
              goto LABEL_150;
            }

            v52 = *re::assetsLogObjects(v42);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              if (*(rep + 40))
              {
                v86 = *(rep + 48);
              }

              else
              {
                v86 = rep + 41;
              }

              *buf = 136315138;
              *&buf[4] = v86;
              _os_log_debug_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEBUG, "Processing Payload for '%s'", buf, 0xCu);
            }

            v257 = v11;
            v53 = (*(**(v3 + 1920) + 104))(*(v3 + 1920));
            re::DynamicString::format("%llu", &v277, v53);
            re::AssetHandle::AssetHandle(&v280, v41);
            re::DefaultAssetSerialize::DefaultAssetSerialize(buf, &v280);
            v1 = &unk_1F5CB9868;
            *buf = &unk_1F5CB9868;
            BYTE8(v286) = 1;
            v28 = buf;
            re::DynamicString::DynamicString(&v287, &v277);
            v289 = v3;
            v54 = *(v3 + 1808);
            *v290 = *(rep + 64);
            v55 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v54, v290);
            (*(**v55 + 128))(*v55);
            v56 = *v55;
            (*(**v55 + 176))(v290, *v55, *(rep + 96));
            if (*&v290[16])
            {
              v57 = *&v290[32];
              v58 = 8 * *&v290[16];
              do
              {
                v59 = *v57;
                v60 = re::AssetHandle::serializationString(*v57, v294);
                if (v294[1])
                {
                  v61 = v294[1] >> 1;
                }

                else
                {
                  v61 = LOBYTE(v294[1]) >> 1;
                }

                if (v61)
                {
                  if (v294[1])
                  {
                    v62 = v294[2];
                  }

                  else
                  {
                    v62 = &v294[1] + 1;
                  }
                }

                if (v294[0] && (v294[1] & 1) != 0)
                {
                  (*(*v294[0] + 40))();
                }

                ++v57;
                v58 -= 8;
              }

              while (v58);
            }

            v63 = *(rep + 360);
            *(rep + 360) = 0;
            v294[0] = v63;
            if (*(rep + 40))
            {
              v64 = *(rep + 48);
            }

            else
            {
              v64 = rep + 41;
            }

            v71 = (*(*v56 + 240))(v56, v294, *(rep + 96), v64);

            if ((v71 & 1) == 0)
            {
              (*(*v56 + 16))(v56, *(rep + 96));
            }

            v72 = *v290;
            if (*v290 && *&v290[32])
            {
              v72 = (*(**v290 + 40))();
            }

            v12 = v262;
            v11 = v257;
            if (v71)
            {
              *buf = &unk_1F5CB9868;
              if (v287)
              {
                if (BYTE8(v287))
                {
                  (*(*v287 + 40))();
                }

                v288 = 0u;
                v28 = buf;
                v287 = 0u;
              }

              *buf = &unk_1F5CB98A0;
              if (buf[8] == 1)
              {
                if (*&v285[24])
                {
                  if (v285[32])
                  {
                    (*(**&v285[24] + 40))();
                  }

                  v28 = buf;
                  memset(&v285[24], 0, 32);
                }

                if (*&buf[24] && (v285[0] & 1) != 0)
                {
                  (*(**&buf[24] + 40))();
                }
              }

              re::AssetHandle::~AssetHandle(&v280);
              if (v277 && (v278 & 1) != 0)
              {
                (*(*v277 + 40))();
              }

              goto LABEL_149;
            }

            re::AssetManager::putEntryInFailedState_entryStateLocked(v85, v41, 303, v290);
            if (*v290)
            {
              if (v290[8])
              {
                (*(**v290 + 40))();
              }

              memset(v290, 0, 32);
            }

            *buf = &unk_1F5CB9868;
            if (v287)
            {
              if (BYTE8(v287))
              {
                (*(*v287 + 40))();
              }

              v288 = 0u;
              v28 = buf;
              v287 = 0u;
            }

            *buf = &unk_1F5CB98A0;
            if (buf[8] == 1)
            {
              if (*&v285[24])
              {
                if (v285[32])
                {
                  (*(**&v285[24] + 40))();
                }

                v28 = buf;
                memset(&v285[24], 0, 32);
              }

              if (*&buf[24] && (v285[0] & 1) != 0)
              {
                (*(**&buf[24] + 40))();
              }
            }

            re::AssetHandle::~AssetHandle(&v280);
            if (v277 && (v278 & 1) != 0)
            {
              (*(*v277 + 40))();
            }
          }

LABEL_150:
          os_unfair_lock_unlock((v41 + 512));
        }

        else
        {
          v47 = *re::assetsLogObjects(LoadItemResult);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            if (*(rep + 40))
            {
              v48 = *(rep + 48);
            }

            else
            {
              v48 = rep + 41;
            }

            *buf = 136315138;
            *&buf[4] = v48;
            _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "Existing asset not found for '%s', may have been unloaded.", buf, 0xCu);
          }

          if (*(rep + 96))
          {
            v50 = *(v3 + 1808);
            *buf = *(rep + 64);
            v51 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v50, buf);
            (*(**v51 + 128))(*v51);
            (*(**v51 + 16))(*v51, *(rep + 96));
          }
        }

        if (v291[0] == 1)
        {
          re::AssetHandle::~AssetHandle(&v291[8]);
        }

        break;
    }

    ++*(v3 + 2272);
    os_unfair_lock_lock((v3 + 2048));
    v75 = *(rep + 24);
    v76 = *(v3 + 2088);
    v77 = *(v3 + 2072);
    v78 = v76;
    if (v77)
    {
      v79 = 8 * v77;
      v78 = *(v3 + 2088);
      while (*v78 != v75)
      {
        v78 += 8;
        v79 -= 8;
        if (!v79)
        {
          goto LABEL_163;
        }
      }
    }

    v80 = &v76[8 * v77];
    if (v78 != v80)
    {
      v81 = v78 - v76;
      v82 = v81 >> 3;
      if (v77 <= v81 >> 3)
      {
        goto LABEL_480;
      }

      if (v77 - 1 > v82)
      {
        *&v76[v81] = *(v80 - 1);
      }

      *(v3 + 2072) = v77 - 1;
      ++*(v3 + 2080);
    }

LABEL_163:
    if (v75)
    {
      v1 = re::globalAllocators(v74)[2];
      v75[3] = &unk_1F5CB8E80;
      v83 = v75[6];
      if (v83)
      {

        v75[6] = 0;
      }

      v75[3] = &unk_1F5CCF868;
      objc_destructInstance(v75 + 4);
      v84 = v75[1];
      if (v84)
      {

        v75[1] = 0;
      }

      (*(*v1 + 40))(v1, v75);
    }

    re::internal::AssetBackgroundLoader::assetLoadItemFree(*(v3 + 1800), rep);
    os_unfair_lock_unlock((v3 + 2048));
  }

  while (dispatch_time(0, 0) < v12);
  *(v3 + 2280) += std::chrono::steady_clock::now().__d_.__rep_ - v265.__d_.__rep_;
  v87 = *(v3 + 1840);
  if (v87)
  {
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    *(v3 + 2288) += (*(*v87 + 40))(v87, v12);
    *(v3 + 2296) += std::chrono::steady_clock::now().__d_.__rep_ - rep;
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(buf, 2012, 61);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(buf);
  }

  atomic_load((v3 + 2177));
  memset(v290, 0, 36);
  *&v290[36] = 0x7FFFFFFFLL;
  os_unfair_lock_lock((v3 + 128));
  v297 = 0;
  memset(v294, 0, sizeof(v294));
  v295 = 0;
  if (*(v3 + 328))
  {
    v88 = *(v3 + 344);
    v294[0] = *(v3 + 328);
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v294, v88);
    ++v295;
    v89 = *(v3 + 344);
    v90 = v294[2];
    if (v89 >= v294[2])
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v294, *(v3 + 344));
      v96 = *(v3 + 360);
      v97 = v294[2];
      v98 = v297;
      if (v294[2])
      {
        v28 = 8 * v294[2];
        rep = v297;
        do
        {
          v99 = *v96++;
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(rep, v99);
          rep += 8;
          v28 -= 8;
        }

        while (v28);
        v96 = *(v3 + 360);
      }

      if (v97 != v89)
      {
        rep = &v96[v97];
        v100 = &v98[v97];
        v101 = 8 * v89 - 8 * v97;
        do
        {
          v102 = *rep;
          *v100 = *rep;
          if (v102)
          {
            v103 = (v102 + 8);
          }

          rep += 8;
          ++v100;
          v101 -= 8;
        }

        while (v101);
      }
    }

    else
    {
      v91 = v297;
      if (v89)
      {
        v92 = *(v3 + 360);
        v28 = 8 * v89;
        v93 = v297;
        do
        {
          v94 = *v92++;
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v93++, v94);
          v28 -= 8;
        }

        while (v28);
      }

      rep = &v91[v89];
      v95 = 8 * v90 - 8 * v89;
      do
      {
        if (*rep)
        {

          *rep = 0;
        }

        rep += 8;
        v95 -= 8;
      }

      while (v95);
    }

    v294[2] = v89;
    os_unfair_lock_unlock((v3 + 128));
    if (v89)
    {
      v1 = 0;
      v28 = 0x7FFFFFFFLL;
      while (1)
      {
        if (dispatch_time(0, 0) >= v12)
        {
          goto LABEL_243;
        }

        if (v89 <= v1)
        {
          goto LABEL_481;
        }

        v104 = *(v297[v1] + 24);
        *v291 = v104;
        if (v104)
        {
          v105 = (v104 + 8);
          v106 = *v291;
          if (*v291)
          {
            break;
          }
        }

LABEL_242:
        if (v89 <= ++v1)
        {
          goto LABEL_243;
        }
      }

      if (*(*v291 + 768))
      {
LABEL_241:

        v89 = v294[2];
        goto LABEL_242;
      }

      v107.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      v108 = *v291;
      os_unfair_lock_lock((*v291 + 512));
      v109 = *v291;
      *(*v291 + 768) = 1;
      *buf = &unk_1F5CB8CE0;
      *&buf[8] = v3;
      *&buf[16] = v291;
      *&buf[24] = buf;
      re::runInLocalAutoreleasePool(buf);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](buf);
      v110 = *v291;
      *(*v291 + 768) = 0;
      if ((*(v109 + 544) & 1) == 0)
      {
        *buf = v110;
        v111 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v110 ^ (v110 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v110 ^ (v110 >> 30))) >> 27));
        v112 = v111 ^ (v111 >> 31);
        if (*&v290[24])
        {
          v113 = v112 % *&v290[24];
          v114 = *(*&v290[8] + 4 * v113);
          if (v114 != 0x7FFFFFFF)
          {
            while (*(*&v290[16] + 24 * v114 + 16) != v110)
            {
              LODWORD(v114) = *(*&v290[16] + 24 * v114 + 8) & 0x7FFFFFFF;
              if (v114 == 0x7FFFFFFF)
              {
                goto LABEL_235;
              }
            }

            goto LABEL_236;
          }
        }

        else
        {
          LODWORD(v113) = 0;
        }

LABEL_235:
        re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::addAsMove(v290, v113, v112, buf);
        ++*&v290[40];
      }

LABEL_236:
      v115.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - v107.__d_.__rep_;
      rep = *(*v291 + 280);
      v116 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (rep ^ (rep >> 30))) ^ ((0xBF58476D1CE4E5B9 * (rep ^ (rep >> 30))) >> 27));
      v117 = v116 ^ (v116 >> 31);
      re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(buf, v263, rep, v117);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        memset(buf, 0, 24);
        re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(buf, v263, rep, v117);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v118 = re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(v263, *&buf[8], *buf);
          v118[1].__d_.__rep_ = rep;
          v118[2].__d_.__rep_ = 1;
          v118[3].__d_.__rep_ = v115.__d_.__rep_;
          ++*(v3 + 2344);
        }
      }

      else
      {
        v119 = (*(v3 + 2320) + 40 * *&buf[12]);
        v120.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v120.u64[1] = v115.__d_.__rep_;
        v119[1] = vaddq_s64(v119[1], v120);
      }

      v12 = v262;
      os_unfair_lock_unlock(v108 + 128);
      v106 = *v291;
      if (!*v291)
      {
        goto LABEL_242;
      }

      goto LABEL_241;
    }
  }

  else
  {
    os_unfair_lock_unlock((v3 + 128));
  }

LABEL_243:
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v294);
  os_unfair_lock_lock((v3 + 128));
  v121 = *(v3 + 344);
  if (v121)
  {
    v122 = 0;
    do
    {
      v123 = *(v3 + 360);
      while (!re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(v290, *(*(v123 + 8 * v122) + 24)))
      {
        if (v121 <= ++v122)
        {
          goto LABEL_250;
        }
      }

      re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::removeAt(v3 + 328, v122);
      v121 = *(v3 + 344);
    }

    while (v121 > v122);
  }

LABEL_250:
  os_unfair_lock_unlock((v3 + 128));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v290);
  v124 = *(v3 + 1824);
  if (v124)
  {
    re::internal::AssetNetworkLoader::update(v124);
  }

  *buf = v11;
  *&buf[8] = v12;
  *&buf[16] = v261;
  re::AssetManager::updateLoadRequests(v3, buf);
  v125 = *(v3 + 2184);
  if (v125 && v125[204] == 1 && (v125[17] & 1) == 0)
  {
    v126 = (v125[176] >> 2) & 1;
  }

  else
  {
    v126 = 0;
  }

  v127 = *(v3 + 2192);
  if (v127)
  {
    v127 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v127);
    v128 = v127;
  }

  else
  {
    v128 = 0;
  }

  if (!re::ProfilerConfig::isStatisticCollectionEnabled(v127) || ((v126 | v128) & 1) == 0)
  {
    goto LABEL_394;
  }

  v294[0] = 0;
  *v291 = 0;
  v277 = 0;
  re::AssetManager::gatherAssetStatisticsByType(v3, v290);
  if (*&v290[8])
  {
    v130 = 0;
    v28 = 0;
    v131 = 0;
    v132 = 0;
    v133 = *&v290[16];
    v264 = v3;
    v266 = *&v290[16] + 104 * *&v290[8];
    do
    {
      *v285 = 0;
      memset(buf, 0, 28);
      if (*v133)
      {
        v267 = v130;
        v269 = v28;
        v134 = v131;
        v135 = *(v133 + 16);
        *buf = *v133;
        re::DynamicArray<re::AssetPath>::setCapacity(buf, v135);
        ++*&buf[24];
        v136 = *(v133 + 16);
        v137 = *&buf[16];
        if (v136 >= *&buf[16])
        {
          re::DynamicArray<re::AssetPath>::setCapacity(buf, *(v133 + 16));
          v141 = *&buf[16];
          v142 = *v285;
          v129 = std::__copy_impl::operator()[abi:nn200100]<re::AssetPath *,re::AssetPath *,re::AssetPath *>(*(v133 + 32), (*(v133 + 32) + 80 * *&buf[16]), *v285);
          if (v141 != v136)
          {
            v143 = *(v133 + 32);
            v144 = v143 + 80 * v136;
            v145 = 80 * v141;
            do
            {
              v146 = v143 + v145;
              *(v142 + v145) = *(v143 + v145);
              re::DynamicString::DynamicString((v142 + v145 + 8), (v143 + v145 + 8));
              v129 = re::DynamicString::DynamicString((v142 + v145 + 40), (v143 + v145 + 40));
              *(v142 + v145 + 72) = *(v143 + v145 + 72);
              v143 += 80;
              v142 += 80;
            }

            while (v146 + 80 != v144);
          }
        }

        else
        {
          v138 = *v285;
          std::__copy_impl::operator()[abi:nn200100]<re::AssetPath *,re::AssetPath *,re::AssetPath *>(*(v133 + 32), (*(v133 + 32) + 80 * v136), *v285);
          v139 = 80 * v137 - 80 * v136;
          v140 = (v138 + 80 * v136 + 40);
          do
          {
            re::DynamicString::deinit(v140);
            re::DynamicString::deinit((v140 - 32));
            v140 = (v140 + 80);
            v139 -= 80;
          }

          while (v139);
        }

        *&buf[16] = v136;
        v131 = v134;
        v3 = v264;
        v28 = v269;
        v130 = v267;
      }

      *&v285[8] = *(v133 + 40);
      *&v285[24] = *(v133 + 56);
      *&v285[40] = *(v133 + 72);
      v286 = *(v133 + 88);
      v147 = *&v285[8];
      v148 = re::MeshAsset::assetType(v129);
      v149 = v147;
      do
      {
        v150 = v149;
        if (v149 == v148)
        {
          break;
        }

        v149 = v149[2];
      }

      while (v149);
      v151 = *(&v286 + 1);
      v152 = v150 == v148;
      if (v150 == v148)
      {
        v153 = *(&v286 + 1);
      }

      else
      {
        v153 = 0;
      }

      v28 += v153;
      if (v152)
      {
        ++v130;
      }

      v154 = re::TextureAsset::assetType(v148);
      while (1)
      {
        v155 = v147;
        if (v147 == v154)
        {
          break;
        }

        v147 = v147[2];
        if (!v147)
        {
          v151 = 0;
          break;
        }
      }

      if (v155 == v154)
      {
        ++v132;
      }

      v131 += v151;
      v129 = re::DynamicArray<re::AssetPath>::deinit(buf);
      v133 += 104;
    }

    while (v133 != v266);
  }

  else
  {
    v132 = 0;
    v131 = 0;
    v28 = 0;
    v130 = 0;
  }

  os_unfair_lock_lock((v3 + 128));
  v156 = *(v3 + 168);
  if (v156)
  {
    v157 = 0;
    v158 = *(v3 + 152);
    while (1)
    {
      v159 = *v158;
      v158 += 14;
      if (v159 < 0)
      {
        break;
      }

      if (v156 == ++v157)
      {
        LODWORD(v157) = *(v3 + 168);
        break;
      }
    }
  }

  else
  {
    LODWORD(v157) = 0;
  }

  if (v157 != v156)
  {
    v160 = 0;
    v268 = 0;
    v270 = 0;
    v161 = *(v3 + 152);
    while (1)
    {
      v162 = *(v161 + 56 * v157 + 40);
      if (v162)
      {
        v163 = (v162 + 8);
      }

      v164 = atomic_load((v162 + 896));
      if (v164 <= 1)
      {
        break;
      }

      if (v164 != 2)
      {
        if (v164 != 3)
        {
          goto LABEL_310;
        }

        v165 = &v277;
        goto LABEL_308;
      }

      ++v268;
      v270 += *(v162 + 776);
LABEL_310:
      ++v160;

      if (*(v3 + 168) <= (v157 + 1))
      {
        v166 = v157 + 1;
      }

      else
      {
        v166 = *(v3 + 168);
      }

      v161 = *(v3 + 152);
      while (v166 - 1 != v157)
      {
        LODWORD(v157) = v157 + 1;
        if ((*(v161 + 56 * v157) & 0x80000000) != 0)
        {
          goto LABEL_318;
        }
      }

      LODWORD(v157) = v166;
LABEL_318:
      if (v157 == v156)
      {
        goto LABEL_319;
      }
    }

    if (v164)
    {
      if (v164 != 1)
      {
        goto LABEL_310;
      }

      v165 = v291;
    }

    else
    {
      v165 = v294;
    }

LABEL_308:
    *v165 = *v165 + 1;
    goto LABEL_310;
  }

  v160 = 0;
  v268 = 0;
  v270 = 0;
LABEL_319:
  os_unfair_lock_unlock((v3 + 128));
  v168 = re::ProfilerConfig::isStatisticCollectionEnabled(v167);
  if (v168)
  {
    v168 = re::profilerThreadContext(v168);
    v169 = *(v168 + 152);
    if (v169)
    {
      v170 = v294[0];
      v171 = v169[440].i64[0];
      if (v171 >= v294[0])
      {
        v171 = v294[0];
      }

      v169[440].i64[0] = v171;
      v172 = v169[440].i64[1];
      if (v172 <= v170)
      {
        v172 = v170;
      }

      v169[440].i64[1] = v172;
      v173 = vdupq_n_s64(1uLL);
      v173.i64[0] = v170;
      v169[441] = vaddq_s64(v169[441], v173);
      *(v168 + 184) = 0;
    }
  }

  v174 = re::ProfilerConfig::isStatisticCollectionEnabled(v168);
  v12 = v262;
  if (v174)
  {
    v174 = re::profilerThreadContext(v174);
    v175 = *(v174 + 152);
    if (v175)
    {
      v176 = *v291;
      v177 = v175[448].u64[0];
      if (v177 >= *v291)
      {
        v177 = *v291;
      }

      v175[448].i64[0] = v177;
      v178 = v175[448].u64[1];
      if (v178 <= v176)
      {
        v178 = v176;
      }

      v175[448].i64[1] = v178;
      v179 = vdupq_n_s64(1uLL);
      v179.i64[0] = v176;
      v175[449] = vaddq_s64(v175[449], v179);
      *(v174 + 184) = 0;
    }
  }

  v180 = re::ProfilerConfig::isStatisticCollectionEnabled(v174);
  if (v180)
  {
    v180 = re::profilerThreadContext(v180);
    v181 = *(v180 + 152);
    if (v181)
    {
      v182 = v181[456].u64[0];
      if (v182 >= v268)
      {
        v182 = v268;
      }

      v181[456].i64[0] = v182;
      v183 = v181[456].u64[1];
      if (v183 <= v268)
      {
        v183 = v268;
      }

      v181[456].i64[1] = v183;
      v184 = vdupq_n_s64(1uLL);
      v184.i64[0] = v268;
      v181[457] = vaddq_s64(v181[457], v184);
      *(v180 + 184) = 0;
    }
  }

  v185 = re::ProfilerConfig::isStatisticCollectionEnabled(v180);
  if (v185)
  {
    v185 = re::profilerThreadContext(v185);
    v186 = *(v185 + 152);
    if (v186)
    {
      v187 = v277;
      v188 = v186[464].u64[0];
      if (v188 >= v277)
      {
        v188 = v277;
      }

      v186[464].i64[0] = v188;
      v189 = v186[464].u64[1];
      if (v189 <= v187)
      {
        v189 = v187;
      }

      v186[464].i64[1] = v189;
      v190 = vdupq_n_s64(1uLL);
      v190.i64[0] = v187;
      v186[465] = vaddq_s64(v186[465], v190);
      *(v185 + 184) = 0;
    }
  }

  v191 = re::ProfilerConfig::isStatisticCollectionEnabled(v185);
  if (v191)
  {
    v191 = re::profilerThreadContext(v191);
    v192 = *(v191 + 152);
    if (v192)
    {
      v193 = v192[472].u64[0];
      if (v193 >= v160)
      {
        v193 = v160;
      }

      v192[472].i64[0] = v193;
      v194 = v192[472].u64[1];
      if (v194 <= v160)
      {
        v194 = v160;
      }

      v192[472].i64[1] = v194;
      v195 = vdupq_n_s64(1uLL);
      v195.i64[0] = v160;
      v192[473] = vaddq_s64(v192[473], v195);
      *(v191 + 184) = 0;
    }
  }

  v196 = re::ProfilerConfig::isStatisticCollectionEnabled(v191);
  if (v196)
  {
    v196 = re::profilerThreadContext(v196);
    v197 = *(v196 + 152);
    if (v197)
    {
      v198 = v197[480].u64[0];
      if (v198 >= v270)
      {
        v198 = v270;
      }

      v197[480].i64[0] = v198;
      v199 = v197[480].u64[1];
      if (v199 <= v270)
      {
        v199 = v270;
      }

      v197[480].i64[1] = v199;
      v200 = vdupq_n_s64(1uLL);
      v200.i64[0] = v270;
      v197[481] = vaddq_s64(v197[481], v200);
      *(v196 + 184) = 0;
    }
  }

  v201 = re::ProfilerConfig::isStatisticCollectionEnabled(v196);
  if (v201)
  {
    v201 = re::profilerThreadContext(v201);
    v202 = *(v201 + 152);
    if (v202)
    {
      v203 = v202[504].u64[0];
      if (v203 >= v130)
      {
        v203 = v130;
      }

      v202[504].i64[0] = v203;
      v204 = v202[504].u64[1];
      if (v204 <= v130)
      {
        v204 = v130;
      }

      v202[504].i64[1] = v204;
      v205 = vdupq_n_s64(1uLL);
      v205.i64[0] = v130;
      v202[505] = vaddq_s64(v202[505], v205);
      *(v201 + 184) = 0;
    }
  }

  v206 = re::ProfilerConfig::isStatisticCollectionEnabled(v201);
  if (v206)
  {
    v206 = re::profilerThreadContext(v206);
    v207 = *(v206 + 152);
    if (v207)
    {
      v208 = v207[512].u64[0];
      if (v208 >= v28)
      {
        v208 = v28;
      }

      v207[512].i64[0] = v208;
      v209 = v207[512].u64[1];
      if (v209 <= v28)
      {
        v209 = v28;
      }

      v207[512].i64[1] = v209;
      v210 = vdupq_n_s64(1uLL);
      v210.i64[0] = v28;
      v207[513] = vaddq_s64(v207[513], v210);
      *(v206 + 184) = 0;
    }
  }

  v211 = re::ProfilerConfig::isStatisticCollectionEnabled(v206);
  if (v211)
  {
    v211 = re::profilerThreadContext(v211);
    v212 = *(v211 + 152);
    if (v212)
    {
      v213 = v212[520].u64[0];
      if (v213 >= v132)
      {
        v213 = v132;
      }

      v212[520].i64[0] = v213;
      v214 = v212[520].u64[1];
      if (v214 <= v132)
      {
        v214 = v132;
      }

      v212[520].i64[1] = v214;
      v215 = vdupq_n_s64(1uLL);
      v215.i64[0] = v132;
      v212[521] = vaddq_s64(v212[521], v215);
      *(v211 + 184) = 0;
    }
  }

  v216 = re::ProfilerConfig::isStatisticCollectionEnabled(v211);
  if (v216)
  {
    v217 = re::profilerThreadContext(v216);
    v218 = *(v217 + 152);
    if (v218)
    {
      v219 = v218[528].u64[0];
      if (v219 >= v131)
      {
        v219 = v131;
      }

      v218[528].i64[0] = v219;
      v220 = v218[528].u64[1];
      if (v220 <= v131)
      {
        v220 = v131;
      }

      v218[528].i64[1] = v220;
      v221 = vdupq_n_s64(1uLL);
      v221.i64[0] = v131;
      v218[529] = vaddq_s64(v218[529], v221);
      *(v217 + 184) = 0;
    }
  }

  v222 = *v290;
  if (*v290 && *&v290[8])
  {
    v223 = *&v290[16];
    v224 = 104 * *&v290[8];
    v225 = *&v290[16];
    do
    {
      re::DynamicArray<re::AssetPath>::deinit(v225);
      v225 += 104;
      v224 -= 104;
    }

    while (v224);
    (*(*v222 + 40))(v222, v223);
  }

LABEL_394:
  v226 = atomic_load((v3 + 2177));
  if ((v226 & 1) == 0 && (*(v3 + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(v3 + 776));
  }

  if (!*(v3 + 1920))
  {
    re::NetworkActionQueue::readActions((v3 + 1152), buf);
    if (*&buf[16])
    {
      v246 = *re::assetsLogObjects(v245);
      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
      {
        *v290 = 0;
        _os_log_impl(&dword_1E1C61000, v246, OS_LOG_TYPE_DEFAULT, "Found queued network actions when NetworkAssetService does not exist!, this can occur during AssetManager::deinit()", v290, 2u);
      }
    }

    v244 = buf;
    goto LABEL_443;
  }

  re::NetworkActionQueue::readActions((v3 + 1152), v290);
  v277 = 0;
  v278 = 0;
  v279 = 0;
  v280 = 0;
  v281 = 0;
  v282 = 0;
  v227 = *&v290[16];
  buf[0] = 0;
  v230 = *&v290[16];
  buf[0] = 0;
  v232 = *&v290[16];
  v297 = 0;
  v294[1] = 0;
  v294[2] = 0;
  v295 = 0;
  re::DynamicArray<re::AssetHandle>::setCapacity(v294, v232);
  ++v295;
  os_unfair_lock_lock((v3 + 128));
  if (!*&v290[16])
  {
    goto LABEL_423;
  }

  v233 = (*&v290[32] + 160);
  v234 = 168 * *&v290[16];
  do
  {
    if (*v233 == 4 || *v233 == 1)
    {
      memset(buf, 0, 24);
      re::DynamicArray<re::AssetHandle>::add(v294, buf);
      v236 = buf;
LABEL_406:
      re::AssetHandle::~AssetHandle(v236);
      goto LABEL_407;
    }

    re::AssetManager::lookupExistingAsset_assetTablesLocked(v3, *(v233 - 1), buf);
    if (buf[0] == 1)
    {
      re::DynamicArray<re::AssetHandle>::add(v294, &buf[8]);
    }

    else
    {
      memset(v291, 0, 24);
      re::DynamicArray<re::AssetHandle>::add(v294, v291);
      re::AssetHandle::~AssetHandle(v291);
    }

    if (buf[0] == 1)
    {
      v236 = &buf[8];
      goto LABEL_406;
    }

LABEL_407:
    v233 += 42;
    v234 -= 168;
  }

  while (v234);
  v237 = *&v290[16];
  if (*&v290[16])
  {
    v238 = 0;
    v239 = 0;
    rep = 0;
    while (1)
    {
      v1 = v294[2];
      if (v294[2] <= rep)
      {
        break;
      }

      if ((*(*&v290[32] + v238 + 160) - 9) <= 0xFFFFFFF7)
      {
        v240 = re::AssetManager::performQueuedSyncAction(v3, *&v290[32] + v238, &v297[v239]);
        v1 = v278;
        if (v278 <= rep)
        {
          goto LABEL_486;
        }

        *(v279 + rep) = v240;
        v1 = v281;
        if (v281 <= rep)
        {
          goto LABEL_487;
        }

        *(v282 + rep) = 1;
        if (dispatch_time(0, 0) >= v12)
        {
          goto LABEL_423;
        }

        v237 = *&v290[16];
      }

      ++rep;
      v239 += 3;
      v238 += 168;
      if (rep >= v237)
      {
        goto LABEL_423;
      }
    }

LABEL_483:
    v283 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 789;
    *&v291[18] = 2048;
    *&v291[20] = rep;
    v292 = 2048;
    v293 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_484:
    v283 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 468;
    *&v291[18] = 2048;
    *&v291[20] = rep;
    v292 = 2048;
    v293 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_485:
    v283 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 468;
    *&v291[18] = 2048;
    *&v291[20] = rep;
    v292 = 2048;
    v293 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_486:
    v283 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 468;
    *&v291[18] = 2048;
    *&v291[20] = rep;
    v292 = 2048;
    v293 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_487:
    v283 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 468;
    *&v291[18] = 2048;
    *&v291[20] = rep;
    v292 = 2048;
    v293 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_488:
    re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "processLoadItem", 2958);
    _os_crash();
    __break(1u);
LABEL_489:
    re::internal::assertLog(4, v43, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "processLoadItem", 2936);
    _os_crash();
    __break(1u);
  }

LABEL_423:
  os_unfair_lock_unlock((v3 + 128));
  v241 = *&v290[16];
  if (*&v290[16])
  {
    v242 = 0;
    v77 = 0;
    rep = 0;
    v82 = 1;
    while (1)
    {
      v1 = v294[2];
      if (v294[2] <= rep)
      {
        break;
      }

      if ((*(*&v290[32] + v242 + 160) - 9) >= 0xFFFFFFF8)
      {
        v243 = re::AssetManager::performQueuedSyncAction(v3, *&v290[32] + v242, (v297 + v77));
        v1 = v278;
        if (v278 <= rep)
        {
          goto LABEL_484;
        }

        *(v279 + rep) = v243;
        v1 = v281;
        if (v281 <= rep)
        {
          goto LABEL_485;
        }

        *(v282 + rep) = 1;
        if (dispatch_time(0, 0) >= v12)
        {
          goto LABEL_432;
        }

        v241 = *&v290[16];
      }

      ++rep;
      v77 += 24;
      v242 += 168;
      if (rep >= v241)
      {
        goto LABEL_432;
      }
    }

    v283 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 789;
    *&v291[18] = 2048;
    *&v291[20] = rep;
    v292 = 2048;
    v293 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_480:
    v294[0] = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    v89 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v290 = 136315906;
    *&v290[4] = "removeAt";
    *&v290[12] = 1024;
    *&v290[14] = 931;
    *&v290[18] = 2048;
    *&v290[20] = v82;
    *&v290[28] = 2048;
    *&v290[30] = v77;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_481:
    v277 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 789;
    *&v291[18] = 2048;
    *&v291[20] = v1;
    v292 = 2048;
    v293 = v89;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_482:
    *v291 = 0;
    memset(v285, 0, 48);
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v294[0]) = 136315906;
    *(v294 + 4) = "removeAt";
    WORD2(v294[1]) = 1024;
    *(&v294[1] + 6) = 931;
    WORD1(v294[2]) = 2048;
    *(rep + 20) = v28;
    v296 = 2048;
    *(rep + 30) = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_483;
  }

LABEL_432:
  re::NetworkActionQueue::removeActions(v3 + 1152, &v277, &v280);
  re::DynamicArray<re::AssetHandle>::deinit(v294);
  if (v280 && v281)
  {
    (*(*v280 + 40))();
  }

  if (v277 && v278)
  {
    (*(*v277 + 40))();
  }

  v244 = v290;
LABEL_443:
  re::DynamicArray<re::NetworkActionQueue::Action>::deinit(v244);
  *v285 = 0;
  memset(buf, 0, 28);
  os_unfair_lock_lock((v3 + 1664));
  re::DynamicArray<unsigned long long>::operator=(buf, (v3 + 1672));
  *(v3 + 1688) = 0;
  ++*(v3 + 1696);
  os_unfair_lock_unlock((v3 + 1664));
  v247 = *(v3 + 2368);
  if (v247)
  {
    v248 = *(v3 + 2384);
    v249 = 40 * v247;
    do
    {
      *&v290[24] = *(v248 + 24);
      *&v290[32] = 0;
      re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::operator=<24ul>(v290, v248);
      re::DynamicArray<char const*>::DynamicArray(v294, buf);
      (*(**&v290[32] + 16))(*&v290[32], v294);
      if (v294[0])
      {
        if (v297)
        {
          (*(*v294[0] + 40))();
        }

        v297 = 0;
        memset(v294, 0, sizeof(v294));
        ++v295;
      }

      re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v290);
      v248 += 40;
      v249 -= 40;
    }

    while (v249);
  }

  if (*buf && *v285)
  {
    (*(**buf + 40))();
  }

  re::AssetManager::updateNeedManualTicks(v3);
  v250 = *(v3 + 1920);
  if (v250)
  {
    (*(*v250 + 200))(v250);
  }

  if (dispatch_time(0, 0) >= v12)
  {
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    ++*(v3 + 2248);
  }

  else
  {
    *v259 = v271;
    v259[1] = v272;
    if (*v263)
    {
      re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::clear(v263);
      if (v273)
      {
        if (*(v3 + 2328) < HIDWORD(v274))
        {
          re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::setCapacity(v263, HIDWORD(v274));
        }

        re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::copy(v263, &v273);
        ++*(v3 + 2344);
      }
    }

    else if (v273)
    {
      if (HIDWORD(v274) <= 3)
      {
        v256 = 3;
      }

      else
      {
        v256 = HIDWORD(v274);
      }

      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v263, v273, v256);
      re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::copy(v263, &v273);
    }
  }

  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v273);
  if (v260)
  {
    if (*(v260 + 152))
    {
      v251 = mach_absolute_time();
      v252 = *(v260 + 152);
      if (v252)
      {
        v253 = v252[176].u64[0];
        if (v253 >= v251 - v258)
        {
          v253 = v251 - v258;
        }

        v252[176].i64[0] = v253;
        v254 = v252[176].u64[1];
        if (v254 <= v251 - v258)
        {
          v254 = v251 - v258;
        }

        v252[176].i64[1] = v254;
        v255 = vdupq_n_s64(1uLL);
        v255.i64[0] = v251 - v258;
        v252[177] = vaddq_s64(v252[177], v255);
        *(v260 + 184) = 0;
      }
    }
  }
}

uint64_t std::__function::__func<re::AssetManager::update(BOOL,BOOL)::$_0,std::allocator<re::AssetManager::update(BOOL,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v14, v4, a2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = *(a1 + 16);
      *&v14[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 24);
      v8 = *&v14[32];
      *(a1 + 24) = v9;
      ++*&v14[40];
      v10 = v8;
      if (v8)
      {
        v11 = v7 + 16;
        do
        {
          if ((*(v11 - 16) & 0x80000000) != 0)
          {
            v12 = re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, *(v11 + 16) % *(a1 + 24));
            *(v12 + 8) = *(v11 - 8);
            *(v12 + 16) = *v11;
          }

          v11 += 40;
          --v10;
        }

        while (v10);
      }

      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 3;
    }
  }
}