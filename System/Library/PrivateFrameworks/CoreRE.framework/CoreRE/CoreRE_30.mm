uint64_t re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t anonymous namespace::gatherDependencies(uint64_t result, const re::AssetHandle *a2, uint64_t a3, uint64_t a4, _anonymous_namespace_ *a5, uint64_t *a6)
{
  v6 = result;
  if (!*(a2 + 1) || (result = re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::contains(a4, a2), result))
  {
LABEL_3:
    *v6 = 1;
    return result;
  }

  if ((v45[0] & 1) == 0)
  {
    *v6 = v45[0];
    v14 = v46;
    v46 = 0;
    *(v6 + 8) = v14;
    return result;
  }

  v12 = *(a2 + 1);
  if (v12)
  {
    v13 = *(v12 + 24);
  }

  else
  {
    v13 = 0;
  }

  result = re::AssetManager::isDeviceAsset(v13, a2, a3);
  if (result)
  {
    goto LABEL_3;
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    v16 = *(v15 + 792);
  }

  else
  {
    v16 = 0;
  }

  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  v18 = v16 ^ (v17 >> 31) ^ v17;
  v19 = *(a4 + 24);
  if (v19)
  {
    v20 = v18 % v19;
    v21 = *(*(a4 + 8) + 4 * (v18 % v19));
    if (v21 != 0x7FFFFFFF)
    {
      v22 = *(a4 + 16);
      while (*(v22 + 40 * v21 + 24) != v15)
      {
        v21 = *(v22 + 40 * v21 + 8) & 0x7FFFFFFF;
        if (v21 == 0x7FFFFFFF)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

LABEL_20:
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsCopy(a4, v20, v18, a2, a2);
  ++*(a4 + 40);
LABEL_21:
  re::DynamicArray<re::AssetHandle>::add(a5, a2);
  re::AssetManager::findDependencies(v13, a2, v42);
  if (v43)
  {
    v23 = v44;
    v24 = 24 * v43;
    while (1)
    {
      v25 = *a6;
      if ((*(*a6 + 40) & 1) == 0)
      {
        v26 = *(v23 + 1);
        if (v26)
        {
          if (*(v26 + 24) != v13)
          {
            break;
          }
        }
      }

      v33 = *a6;
      v27 = (v25 + 8);

      v33 = 0;
      if (*v6 != 1)
      {
        return re::DynamicArray<re::AssetHandle>::deinit(v42);
      }

      v23 = (v23 + 24);
      v24 -= 24;
      if (!v24)
      {
        goto LABEL_28;
      }
    }

    v28 = re::AssetHandle::legacy_assetPath(v23);
    re::AssetPath::fullAssetPath(v28, &v37);
    if (v38)
    {
      v29 = *&v39[7];
    }

    else
    {
      v29 = v39;
    }

    v30 = re::AssetHandle::legacy_assetPath(a2);
    re::AssetPath::fullAssetPath(v30, &v34);
    if (v35)
    {
      v31 = *&v36[7];
    }

    else
    {
      v31 = v36;
    }

    re::DynamicString::format("The dependent asset (%s) does not come from the same engine as (%s)", v40, v29, v31);
    v32 = v41;
    v41 = 0;
    *v6 = 0;
    *(v6 + 8) = v32;

    if (*&v40[0])
    {
      if (BYTE8(v40[0]))
      {
        (*(**&v40[0] + 40))();
      }

      memset(v40, 0, sizeof(v40));
    }

    if (v34 && (v35 & 1) != 0)
    {
      (*(*v34 + 40))();
    }

    if (v37)
    {
      if (v38)
      {
        (*(*v37 + 40))();
      }
    }
  }

  else
  {
LABEL_28:
    *v6 = 1;
  }

  return re::DynamicArray<re::AssetHandle>::deinit(v42);
}

uint64_t re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(uint64_t a1, const re::AssetHandle *a2, const re::AssetHandle *a3)
{
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 792);
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v7 ^ (v8 >> 31) ^ v8, &v10);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    return re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addInternal<re::AssetHandle const&,re::AssetHandle const&>(a1, &v10, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v11) << 6) + 32;
  }
}

unint64_t re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(v3 + 792);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v4 ^ (v5 >> 31) ^ v5, v7);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v8 << 6) + 32;
  }
}

uint64_t re::RealityFileWriter::getAssetInfo(re::RealityFileWriter *this, const re::AssetHandle *a2, re::AssetHandle *a3)
{
  v5 = re::AssetHandle::legacy_assetPath(a3);
  v6 = *(v5 + 1);
  v10 = 0;
  v11 = 0;
  v8 = v6;
  v9 = 0;
  re::DynamicString::setCapacity(&v8, 0);
  re::AssetPath::fullAssetPath(v5, &v8);
  re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo((a2 + 24), &v8, this);
  result = v8;
  if (v8)
  {
    if (v9)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(uint64_t a1, const re::AssetHandle *a2, const re::DynamicString *a3)
{
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 792);
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v7 ^ (v8 >> 31) ^ v8, &v10);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    return re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addInternal<re::AssetHandle const&,re::DynamicString const&>(a1, &v10, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v11) + 32;
  }
}

uint64_t re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(uint64_t a1, re::AssetHandle *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = *(v4 + 792);
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v7 = v5 ^ (v6 >> 31) ^ v6;
  v8 = *(a1 + 24);
  if (!v8)
  {
    LODWORD(v9) = 0;
    goto LABEL_11;
  }

  v9 = v7 % v8;
  v10 = *(*(a1 + 8) + 4 * (v7 % v8));
  if (v10 == 0x7FFFFFFF)
  {
LABEL_11:
    v12 = re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsCopy(a1, v9, v7, a2, a2);
    ++*(a1 + 40);
    v13 = *(a1 + 16) + 40 * v12;
    return v13 + 16;
  }

  v11 = *(a1 + 16);
  while (*(v11 + 40 * v10 + 24) != v4)
  {
    v10 = *(v11 + 40 * v10 + 8) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }
  }

  v13 = v11 + 40 * v10;
  return v13 + 16;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  result = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicArray<re::DynamicString>>(a1, &v8, a2, a3);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  return *(a1 + 16) + 88 * v7 + 40;
}

double re::DynamicArray<re::DynamicString>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicString>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 32 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = a2[3];
  v7 = a2[1];
  *v5 = *a2;
  *a2 = 0;
  v8 = a2[2];
  a2[3] = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  a2[1] = v10;
  a2[2] = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 792);
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(v6, a1, a2, v3 ^ (v4 >> 31) ^ v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 160 * v7 + 32;
  }
}

void re::RealityFileWriter::saveAssetToArchive(uint64_t a1, re::AssetPathMapping *a2, re::AssetHandle *this, uint64_t *a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v15 = *(this + 1);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_5;
  }

  v16 = atomic_load((v15 + 896));
  if (v16 != 2)
  {
    v17 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v17, 0);
  }

  v18 = *(this + 1);
  if (v18)
  {
    v19 = atomic_load((v18 + 896));
    if (v19 == 2)
    {
      (*(*a8 + 64))(&v73, a8, this);
      if ((v73 & 1) == 0)
      {
        v29 = v74;
        *a1 = 0;
        *(a1 + 8) = v29;
        goto LABEL_76;
      }

      v20 = *(a2 + 47);
      v21 = *(v20 + 24);
      v22 = *(v20 + 36);
      if (v22 - 1 >= 5)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      if (((*(*a8 + 56))(a8, this, v21, v23) & 1) == 0)
      {
        v30 = *a4;
        if (*(*a4 + 40))
        {
          v31 = *(v30 + 48);
        }

        else
        {
          v31 = v30 + 41;
        }

        re::DynamicString::format("This asset (%s) is not supported by this version of RealityKit.", &v58, v31);
        v34 = 18;
        goto LABEL_31;
      }

      v24 = *a4;
      if (*(*a4 + 24) == 1)
      {
        if (*(v24 + 40))
        {
          v25 = *(v24 + 48);
        }

        else
        {
          v25 = v24 + 41;
        }

        re::DynamicString::format("The asset (%s) has already been written.", &v58, v25);
        v34 = 2;
LABEL_31:
        v35 = v72[0];
        v72[0] = 0;
        *a1 = 0;
        *(a1 + 8) = v35;

        if (v58 && (v59 & 1) != 0)
        {
          (*(*v58 + 40))();
        }

        goto LABEL_76;
      }

      v32 = *(this + 1);
      if (v32)
      {
        v33 = *(v32 + 24);
      }

      else
      {
        v33 = 0;
      }

      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::HashTable(v72, a5);
      v36 = re::AssetHandle::legacy_assetPath(this);
      re::RealityFileWriter::customizeAssetPathMapping(&v70, a2, v72, v36, v33);
      if (v70 == 1)
      {
        v69 = 0u;
        memset(v68, 0, sizeof(v68));
        DWORD1(v69) = 0x7FFFFFFF;
        v37 = &v56;
        v38 = std::to_string(&v56, *(*(a2 + 47) + 24));
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v56.__r_.__value_.__r.__words[0];
        }

        v58 = v63[0];
        v60 = v63[3];
        v59 = *&v63[1];
        memset(v63, 0, sizeof(v63));
        v61 = 0;
        re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v68, "DeploymentTarget", &v58);
        if (v61 != -1)
        {
          (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix + v61))(v67, &v58);
        }

        v61 = -1;
        v39 = v63[0];
        if (v63[0])
        {
          if (v63[1])
          {
            v39 = (*(*v63[0] + 40))();
          }

          memset(v63, 0, sizeof(v63));
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        v40 = *(*(a2 + 47) + 24);
        if (*a7)
        {
          v41 = a7[1];
        }

        else
        {
          v41 = v40 > 5;
        }

        if (v41)
        {
          if (v40 <= 5)
          {
            v43 = v63[0];
            v63[0] = 0;

            if (v58 && (v59 & 1) != 0)
            {
              (*(*v58 + 40))();
            }

            v44 = v43;
            *a1 = 0;
            *(a1 + 8) = v44;

            re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v68);
            goto LABEL_75;
          }

          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v67[1] = 0;
        v67[2] = 0;
        v46 = *(v33 + 1808);
        v67[0] = v46;
        v63[0] = v67;
        v63[1] = 0;
        v64 = v45;
        v65 = v40 > 6;
        v63[2] = v72;
        v63[3] = v68;
        v66 = 0;
        v47 = *(this + 1);
        if (v47)
        {
          v47 = *(v47 + 280);
        }

        v58 = v47;
        v48 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v46, &v58);
        (*(**v48 + 128))(*v48);
        (*(**v48 + 312))(&v58);
        if (v58)
        {
          if (v60)
          {
            v49 = &v61;
          }

          else
          {
            v49 = v62;
          }

          if (*(&v59 + 1))
          {
            v50 = 32 * *(&v59 + 1);
            while (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(a2 + 120, v49))
            {
              re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a2 + 120, v49);
              v49 += 8;
              v50 -= 32;
              if (!v50)
              {
                goto LABEL_68;
              }
            }

            if (v49[2])
            {
              v54 = *(v49 + 2);
            }

            else
            {
              v54 = v49 + 9;
            }

            re::DynamicString::format("An archive entry named '%s' has already been written to the reality file.", &v56, v54);
            v55 = v57;
            v57 = 0;
            *a1 = 0;
            *(a1 + 8) = v55;

            if (v56.__r_.__value_.__r.__words[0] && (v56.__r_.__value_.__s.__data_[8] & 1) != 0)
            {
              (*(*v56.__r_.__value_.__l.__data_ + 40))();
            }
          }

          else
          {
LABEL_68:
            v51 = *a4;
            *(v51 + 24) = 1;
            re::DynamicOverflowArray<re::DynamicString,2ul>::operator=(v51 + 64, &v59);
            *a1 = 1;
          }
        }

        else
        {
          v52 = v59;
          *a1 = 0;
          *(a1 + 8) = v52;
        }

        if (v58 == 1)
        {
          re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(&v59);
        }

        else
        {
        }

        v53 = v70;
        re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v68);
        if (v53)
        {
          goto LABEL_75;
        }
      }

      else
      {
        *a1 = v70;
        v42 = v71;
        v71 = 0;
        *(a1 + 8) = v42;
      }

LABEL_75:
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v72);
LABEL_76:
      if ((v73 & 1) == 0)
      {
      }

      return;
    }
  }

  v26 = re::AssetHandle::assetInfo(this);
  if (v26[17])
  {
    v27 = v26[18];
  }

  else
  {
    v27 = v26 + 137;
  }

  re::DynamicString::format("Asset '%s' failed to load", &v58, v27);
  v28 = v72[0];
  v72[0] = 0;
  *a1 = 0;
  *(a1 + 8) = v28;

  if (v58 && (v59 & 1) != 0)
  {
    (*(*v58 + 40))();
  }
}

uint64_t re::RealityFileWriter::editAssetLabel@<X0>(re::RealityFileWriter *this@<X0>, const re::AssetHandle *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = re::AssetHandle::legacy_assetPath(a2);
  v8 = *(v7 + 1);
  v21 = 0;
  v22 = 0;
  v19 = v8;
  v20 = 0;
  re::DynamicString::setCapacity(&v19, 0);
  re::AssetPath::fullAssetPath(v7, &v19);
  re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo((this + 24), &v19, &v18);
  v9 = v18;
  if (v18)
  {
    v14 = v18;
    v10 = (v18 + 8);
    re::RealityFileWriter::assignLabelToAssetInfo(this, &v14, a3, a4);
  }

  else
  {
    if (v20)
    {
      v12 = v21;
    }

    else
    {
      v12 = &v20 + 1;
    }

    re::DynamicString::format("The asset (%s) is not registered with this RealityFileWriter.", &v15, v12);
    v13 = v17;
    v17 = 0;
    *a4 = 0;
    *(a4 + 8) = v13;

    if (v15 && (v16 & 1) != 0)
    {
      (*(*v15 + 40))();
    }
  }

  result = v19;
  if (v19)
  {
    if (v20)
    {
      return (*(*v19 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::FixedArray<re::DynamicString>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::DynamicString>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::DynamicString>::copy(a1, a2);
    }
  }

  return a1;
}

void re::RealityFileWriter::checkAssetIsWritable(uint64_t a1, const re::AssetHandle *a2, uint64_t a3)
{
  if (v16[0] == 1)
  {
    if (*(*a3 + 24) == 1)
    {
      v6 = re::AssetHandle::legacy_assetPath(a2);
      v7 = *(v6 + 1);
      v12 = 0;
      v13 = 0;
      v10 = v7;
      v11 = 0;
      re::DynamicString::setCapacity(&v10, 0);
      re::AssetPath::fullAssetPath(v6, &v10);
      if (v11)
      {
        v8 = v12;
      }

      else
      {
        v8 = &v11 + 1;
      }

      re::DynamicString::format("The asset (%s) has already been written.", v14, v8);
      v9 = v15;
      v15 = 0;
      *a1 = 0;
      *(a1 + 8) = v9;

      if (*&v14[0])
      {
        if (BYTE8(v14[0]))
        {
          (*(**&v14[0] + 40))();
        }

        memset(v14, 0, sizeof(v14));
      }

      if (v10)
      {
        if (v11)
        {
          (*(*v10 + 40))();
        }
      }
    }

    else
    {
      *a1 = 1;
    }
  }

  else
  {
    *a1 = v16[0];
    *(a1 + 8) = v17;
  }
}

void re::RealityFileWriter::addDependentAssets(uint64_t a1, const re::AssetHandle *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = (*(a4 + 16) + 8);
    while (1)
    {
      v11 = *v10;
      v10 += 10;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 == v8)
  {
LABEL_22:
    *a1 = 1;
  }

  else
  {
    v12 = *(a4 + 16);
    while (1)
    {
      re::AssetHandle::AssetHandle(v22, (v12 + 40 * v9 + 16));
      re::RealityFileWriter::getOrMakeAssetInfo(v20, a2, v22);
      v13 = v20[0];
      if (v20[0])
      {
        v14 = *a3;
        v15 = v21;
        v19 = v21;
        if (v21)
        {
          v16 = v21 + 8;
          re::DynamicArray<re::SharedPtr<re::AssetLoadRequest>>::add((v14 + 184), &v19);

          v19 = 0;
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::AssetLoadRequest>>::add((v14 + 184), &v19);
        }
      }

      else
      {
        v17 = v21;
        *a1 = 0;
        *(a1 + 8) = v17;
      }

      re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v20);
      re::AssetHandle::~AssetHandle(v22);
      if (!v13)
      {
        break;
      }

      v18 = *(a4 + 32);
      v12 = *(a4 + 16);
      if (v18 <= v9 + 1)
      {
        v18 = v9 + 1;
      }

      while (v18 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(v12 + 40 * v9 + 8) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v9) = v18;
LABEL_21:
      if (v9 == v8)
      {
        goto LABEL_22;
      }
    }
  }
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v11 = 0;
  v12 = a2;
  v9 = 0;
  v10 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v12, v5, &v9);
  v6 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,std::variant<re::DynamicString,re::Data>>(a1, &v9, &v12, a3);
  }

  ++*(a1 + 40);
  v7 = *(a1 + 16) + 88 * v6 + 40;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1>>(v7, a3);
  return v7;
}

void re::RealityFileWriter::close(re::RealityFileWriter *this@<X0>, uint64_t a2@<X8>)
{
  v227 = *MEMORY[0x1E69E9840];
  if (*(this + 40))
  {
    v4 = this;
    v5 = *(this + 14);
    if (v5)
    {
      v6 = 0;
      v7 = *(this + 5);
      while (1)
      {
        v8 = *v7;
        v7 += 14;
        if (v8 < 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          v6 = *(this + 14);
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
      while (1)
      {
        v10 = *(*(v4 + 5) + 56 * v6 + 40);
        if (v10)
        {
          v11 = (v10 + 8);
        }

        v2 = *(v10 + 24);

        if (v2 != 1)
        {
          break;
        }

        v4 = this;
        LODWORD(v12) = *(this + 14);
        if (v12 <= v6 + 1)
        {
          v12 = (v6 + 1);
        }

        else
        {
          v12 = v12;
        }

        while (v12 - 1 != v6)
        {
          v6 = (v6 + 1);
          if ((*(*(this + 5) + 56 * v6) & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        v6 = v12;
LABEL_20:
        if (v6 == v5)
        {
          goto LABEL_21;
        }
      }

      v39 = v213;
      *&v213 = 0;
      *a2 = 0;
      *(a2 + 8) = v39;
      goto LABEL_64;
    }

LABEL_21:
    v13 = *(v4 + 73);
    v213 = 0u;
    memset(v214, 0, 20);
    *&v214[20] = 0x7FFFFFFFLL;
    if (v13)
    {
      if (v13 >= 0x555555555555556)
      {
        goto LABEL_387;
      }

      if (!v15)
      {
LABEL_388:
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
LABEL_389:
        re::internal::assertLog(4, v114, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
        _os_crash();
        __break(1u);
        goto LABEL_390;
      }

      v17 = v15;
      v18 = v15;
      v19 = v13 - 1;
      if (v13 != 1)
      {
        v18 = v15;
        do
        {
          *(v18 + 16) = 0uLL;
          *(v18 + 32) = 0uLL;
          *v18 = 0uLL;
          *(v18 + 36) = 0x7FFFFFFF;
          v18 += 48;
          --v19;
        }

        while (v19);
      }

      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      *(v18 + 36) = 0x7FFFFFFF;
    }

    else
    {
      v17 = 0;
    }

    v2 = *(v4 + 14);
    if (v2)
    {
      v20 = 0;
      v21 = *(v4 + 5);
      while (1)
      {
        v22 = *v21;
        v21 += 14;
        if (v22 < 0)
        {
          break;
        }

        if (v2 == ++v20)
        {
          LODWORD(v20) = *(v4 + 14);
          break;
        }
      }
    }

    else
    {
      LODWORD(v20) = 0;
    }

    if (v20 == v2)
    {
      goto LABEL_53;
    }

    do
    {
      v23 = *(v4 + 5);
      v24 = *(v23 + 56 * v20 + 40);
      if (v24)
      {
        v25 = v24 + 1;
      }

      v26 = v24[45];
      if (!v26)
      {
        goto LABEL_46;
      }

      if (v26 != v13)
      {
        v44 = v23 + 56 * v20;
        if (*(v44 + 16))
        {
          v45 = *(v44 + 24);
        }

        else
        {
          v45 = v44 + 17;
        }

        re::DynamicString::format("Asset '%s' has %zu configuration names, but there are %zu configuration set names.", &v183, v45, v24[45], v13);
        v2 = *v217;
        *v217 = 0;

        if (v183 && (BYTE8(v183) & 1) != 0)
        {
          (*(*v183 + 40))();
        }

        goto LABEL_110;
      }

      v27 = 0;
      v28 = 0;
      *&v174 = 1;
      v29 = v17;
      v30 = v17;
      do
      {
        v31 = v24[45];
        if (v31 <= v28)
        {
          *&v178 = 0;
          memset(v186, 0, 32);
          v184 = 0u;
          v185 = 0u;
          v183 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v217 = 136315906;
          *&v217[4] = "operator[]";
          *&v217[12] = 1024;
          *&v217[14] = 476;
          *&v217[18] = 2048;
          *&v217[20] = v28;
          *&v217[28] = 2048;
          *&v217[30] = v31;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_308:
          *&v178 = 0;
          memset(v186, 0, 32);
          v184 = 0u;
          v185 = 0u;
          v183 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v217 = 136315906;
          *&v217[4] = "operator[]";
          *&v217[12] = 1024;
          *&v217[14] = 468;
          *&v217[18] = 2048;
          *&v217[20] = v13;
          *&v217[28] = 2048;
          *&v217[30] = v13;
          LODWORD(v157) = 38;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_309;
        }

        v169 = re::Hash<re::DynamicString>::operator()(&v166, v24[46] + v27);
        if (v13 == v28)
        {
          goto LABEL_308;
        }

        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v30, &v169);
        *&v174 = v174 * (v28 + v169);
        ++v28;
        v30 += 48;
        v27 += 32;
      }

      while (v13 != v28);
      v32 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v213, &v174);
      if (v32)
      {
        v46 = v24[45];
        v17 = v29;
        if (v46)
        {
          v47 = v24[46];
          v48 = 32 * v46;
          do
          {
            re::DynamicString::operator+(v47, ", ", v217);
            if (v217[8])
            {
              v49 = *&v217[16];
            }

            else
            {
              v49 = &v217[9];
            }

            if (v217[8])
            {
              v50 = *&v217[8] >> 1;
            }

            else
            {
              v50 = v217[8] >> 1;
            }

            re::DynamicString::append(&v183, v49, v50);
            if (*v217 && (v217[8] & 1) != 0)
            {
              (*(**v217 + 40))();
            }

            v47 = (v47 + 32);
            v48 -= 32;
          }

          while (v48);
        }

        if (BYTE8(v183))
        {
          v51 = v184;
        }

        else
        {
          v51 = &v183 + 9;
        }

        re::DynamicString::format("This combination of configuration names is not unique in the reality file: %s", v217, v51);
        v2 = v178;
        *&v178 = 0;

        if (*v217 && (v217[8] & 1) != 0)
        {
          (*(**v217 + 40))();
        }

        if (v183 && (BYTE8(v183) & 1) != 0)
        {
          (*(*v183 + 40))();
        }

        if (!v24)
        {
LABEL_111:
          if (v13)
          {
            goto LABEL_112;
          }

          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v213);
LABEL_292:
          v130 = v2;
          *a2 = 0;
          *(a2 + 8) = v130;

          return;
        }

LABEL_110:

        goto LABEL_111;
      }

      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(&v213, &v174);
      v4 = this;
      v17 = v29;
LABEL_46:

      v33 = *(v4 + 14);
      if (v33 <= v20 + 1)
      {
        v33 = v20 + 1;
      }

      while (v33 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(*(v4 + 5) + 56 * v20) & 0x80000000) != 0)
        {
          goto LABEL_52;
        }
      }

      LODWORD(v20) = v33;
LABEL_52:
      ;
    }

    while (v20 != v2);
LABEL_53:
    if (!v13)
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v213);
      goto LABEL_116;
    }

    v34 = 0;
    v2 = 0;
    v35 = 1;
    v36 = v17;
    v37 = v17;
    while (2)
    {
      v38 = *(v37 + 28);
      if (v2 < *(this + 76))
      {
        *&v174 = re::Hash<re::DynamicString>::operator()(&v166, *(this + 77) + v34);
        if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v37, &v174))
        {
          v6 = *(this + 76);
          if (v6 > v2)
          {
            v41 = *(this + 77) + v34;
            if (*(v41 + 8))
            {
              v42 = *(v41 + 16);
            }

            else
            {
              v42 = v41 + 9;
            }

            v17 = v36;
            re::DynamicString::format("A default configuration name of '%s' was specified for configuration set at index %zu, but no matching configurations were added to the set.", &v183, v42, v2);
            v2 = *v217;
            *v217 = 0;

            if (v183 && (BYTE8(v183) & 1) != 0)
            {
              (*(*v183 + 40))();
            }

            goto LABEL_111;
          }

LABEL_390:
          *&v178 = 0;
          memset(v186, 0, 32);
          v184 = 0u;
          v185 = 0u;
          v183 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v217 = 136315906;
          *&v217[4] = "operator[]";
          *&v217[12] = 1024;
          *&v217[14] = 476;
          *&v217[18] = 2048;
          *&v217[20] = v2;
          *&v217[28] = 2048;
          *&v217[30] = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      v35 *= v38;
      ++v2;
      v34 += 32;
      v37 += 48;
      if (v13 != v2)
      {
        continue;
      }

      break;
    }

    if (v35 == *&v214[12])
    {
      if (v35 > 0x40000)
      {
        re::DynamicString::format("There are %zu scenes in the reality file addressed by configurations, which exceeds the maximum number %u.", &v183, v35, 0x40000);
        v2 = *v217;
        *v217 = 0;

        v17 = v36;
        if (v183 && (BYTE8(v183) & 1) != 0)
        {
          (*(*v183 + 40))();
        }

LABEL_112:
        v43 = 0;
LABEL_113:
        v52 = 48 * v13;
        v53 = v17;
        do
        {
          v54 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v53);
          v53 += 6;
          v52 -= 48;
        }

        while (v52);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v213);
        v4 = this;
        if ((v43 & 1) == 0)
        {
          goto LABEL_292;
        }

LABEL_116:
        v158 = *(v4 + 568) == 1 && *(*(v4 + 47) + 24) > 7;
        ArcSharedObject::ArcSharedObject(&v183, 0);
        *(&v184 + 1) = 0;
        *&v183 = &unk_1F5CB9CA0;
        v185 = 0uLL;
        v188 = 0;
        v189 = 0;
        memset(&v186[8], 0, 32);
        *v186 = 0;
        v187 = 0;
        memset(v190, 0, sizeof(v190));
        v191 = 0u;
        v192 = 0u;
        v193 = 0u;
        v194 = 0;
        v195 = 0u;
        memset(v196, 0, sizeof(v196));
        v197 = 0x7FFFFFFFLL;
        v198 = 0u;
        v199 = 0u;
        v200 = 0;
        v201 = 0x7FFFFFFFLL;
        v202 = 0u;
        v203 = 0u;
        v204 = 0;
        v205 = 0x7FFFFFFFLL;
        v206 = 0u;
        v207 = 0u;
        v208 = 0;
        v209 = 0x7FFFFFFFLL;
        v212 = 0;
        v210 = 0;
        v211 = 0;
        v180 = 0;
        v178 = 0u;
        v179 = 0u;
        v181 = 0x7FFFFFFFLL;
        v177 = 0;
        v175 = 0;
        v174 = 0uLL;
        v176 = 0;
        v55 = *(v4 + 14);
        if (v55)
        {
          v56 = 0;
          v57 = *(v4 + 5);
          while (1)
          {
            v58 = *v57;
            v57 += 14;
            if (v58 < 0)
            {
              break;
            }

            if (v55 == ++v56)
            {
              LODWORD(v56) = *(v4 + 14);
              break;
            }
          }
        }

        else
        {
          LODWORD(v56) = 0;
        }

        v6 = v217;
        if (v56 == v55)
        {
          v163 = 0;
          v59 = *(v4 + 14);
LABEL_227:
          if (v59)
          {
            v96 = 0;
            v97 = *(v4 + 5);
            while (1)
            {
              v98 = *v97;
              v97 += 14;
              if (v98 < 0)
              {
                break;
              }

              if (v59 == ++v96)
              {
                LODWORD(v96) = v59;
                break;
              }
            }
          }

          else
          {
            LODWORD(v96) = 0;
          }

          v160 = v59;
          if (v96 != v59)
          {
            v2 = 0;
            v13 = *(&v178 + 1);
            v99 = v179;
            v100 = DWORD2(v179);
            v6 = v178;
            do
            {
              v101 = *(*(v4 + 5) + 56 * v96 + 40);
              if (v101)
              {
                v102 = v101 + 1;
              }

              v103 = *&v186[32];
              if (*&v186[32] <= v2)
              {
                v169 = 0;
                memset(v214, 0, 64);
                v213 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v217 = 136315906;
                *&v217[4] = "operator[]";
                *&v217[12] = 1024;
                *&v217[14] = 789;
                *&v217[18] = 2048;
                *&v217[20] = v2;
                *&v217[28] = 2048;
                *&v217[30] = v103;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_387:
                re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v13);
                _os_crash();
                __break(1u);
                goto LABEL_388;
              }

              v164 = v2;
              v104 = v188 + 168 * v2;
              v105 = v101[25];
              if (*(v104 + 48) < v105)
              {
                re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((v104 + 40), v105);
                v105 = v101[25];
              }

              if (v105)
              {
                v162 = v101;
                v106 = v101[27];
                v107 = &v106[v105];
                do
                {
                  if (v6 && (v108 = 0xBF58476D1CE4E5B9 * (*v106 ^ (*v106 >> 30)), v109 = *(v13 + 4 * (((0x94D049BB133111EBLL * (v108 ^ (v108 >> 27))) ^ ((0x94D049BB133111EBLL * (v108 ^ (v108 >> 27))) >> 31)) % v100)), v109 != 0x7FFFFFFF))
                  {
                    v110 = *(v99 + 32 * v109 + 8);
                    for (i = v109; v110 != *v106; v109 = i)
                    {
                      i = *(v99 + 32 * i) & 0x7FFFFFFF;
                      v109 = 0x7FFFFFFFLL;
                      if (i == 0x7FFFFFFF)
                      {
                        break;
                      }

                      v110 = *(v99 + 32 * i + 8);
                    }
                  }

                  else
                  {
                    v109 = 0x7FFFFFFFLL;
                  }

                  *&v213 = *(v99 + 32 * v109 + 16);
                  re::DynamicArray<unsigned long>::add((v104 + 40), &v213);
                  ++v106;
                }

                while (v106 != v107);
                v2 = v164 + 1;
                v101 = v162;
                if (!v162)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                v2 = v164 + 1;
              }

LABEL_255:
              v4 = this;
              v112 = *(this + 14);
              if (v112 <= v96 + 1)
              {
                v112 = v96 + 1;
              }

              while (v112 - 1 != v96)
              {
                LODWORD(v96) = v96 + 1;
                if ((*(*(this + 5) + 56 * v96) & 0x80000000) != 0)
                {
                  goto LABEL_261;
                }
              }

              LODWORD(v96) = v112;
LABEL_261:
              ;
            }

            while (v96 != v160);
          }

          v189 = v158;
          re::FixedArray<re::DynamicString>::operator=(v190, v4 + 576);
          v113 = re::FixedArray<re::DynamicString>::operator=((&v190[1] + 8), v4 + 600);
          v115 = v177;
          if (!v191)
          {
            v6 = v163;
            if (v163)
            {
              goto LABEL_265;
            }

LABEL_269:
            v121 = v174;
            if (v174 && v177)
            {
              if (v175)
              {
                v122 = 32 * v175;
                v123 = v177 + 1;
                do
                {
                  re::FixedArray<re::DynamicString>::deinit(v123);
                  v123 += 4;
                  v122 -= 32;
                }

                while (v122);
                v121 = v174;
              }

              (*(*v121 + 40))(v121);
            }

            re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::deinit(&v178);
            {
              re::introspect<re::AssetMap>(BOOL)::info = re::introspect_AssetMap(0);
            }

            v178 = *(re::introspect<re::AssetMap>(BOOL)::info + 2);
            v124 = v178;
            if (!v178)
            {
              re::DynamicString::format("Type of object for file %s has not been registered", &v213, "assetMap.json");
              v127 = *v217;
              *v217 = 0;

              if (v213 && (BYTE8(v213) & 1) != 0)
              {
                (*(*v213 + 40))();
              }

LABEL_299:
              *a2 = 0;
              *(a2 + 8) = v127;
              goto LABEL_300;
            }

            Mutable = CFDataCreateMutable(0, 0);
            re::IntrospectionSharedLock::IntrospectionSharedLock(&v169);
            re::TypeRegistry::typeInfo(v124, &v178, &v213);
            v126 = re::TypeInfo::TypeInfo(v217, &v213 + 8);
            if (v213 == 1)
            {
              re::IntrospectionSharedLock::~IntrospectionSharedLock(&v169);
              goto LABEL_289;
            }

            v128 = v174;
            *&v174 = 0;

            if (v213 & 1) == 0 && *&v214[8] && (v214[16])
            {
              (*(**&v214[8] + 40))();
            }

            re::IntrospectionSharedLock::~IntrospectionSharedLock(&v169);
            if (v128)
            {
              CFRelease(Mutable);
              goto LABEL_298;
            }

LABEL_289:
            re::RealityArchiveWriter::writeEntry(this + 296, "assetMap.json", Mutable, 1, 0, 0, &v213);
            if (v213 == 1)
            {
              CFRelease(Mutable);
              goto LABEL_302;
            }

            v128 = *v217;
            *v217 = 0;

            if (v213 & 1) == 0 && *(&v213 + 1) && (v214[0])
            {
              (*(**(&v213 + 1) + 40))();
            }

            CFRelease(Mutable);
            if (v128)
            {
LABEL_298:
              v127 = v128;

              goto LABEL_299;
            }

LABEL_302:
            if (!*(this + 69))
            {
              goto LABEL_328;
            }

            {
              re::introspect<re::DeduplicationInformation>(BOOL)::info = re::introspect_DeduplicationInformation(0);
            }

            v178 = *(re::introspect<re::DeduplicationInformation>(BOOL)::info + 2);
            v131 = v178;
            if (v178)
            {
              v132 = CFDataCreateMutable(0, 0);
              re::IntrospectionSharedLock::IntrospectionSharedLock(&v169);
              re::TypeRegistry::typeInfo(v131, &v178, &v213);
              v133 = re::TypeInfo::TypeInfo(v217, &v213 + 8);
              if (v213 == 1)
              {
                re::IntrospectionSharedLock::~IntrospectionSharedLock(&v169);
                goto LABEL_318;
              }

              v137 = v174;
              *&v174 = 0;

              if (v213 & 1) == 0 && *&v214[8] && (v214[16])
              {
                (*(**&v214[8] + 40))();
              }

              re::IntrospectionSharedLock::~IntrospectionSharedLock(&v169);
              if (v137)
              {
                CFRelease(v132);
                goto LABEL_325;
              }

LABEL_318:
              re::RealityArchiveWriter::writeEntry(this + 296, "dedupe.json", v132, 0, 0, 0, &v213);
              if (v213 == 1)
              {
                CFRelease(v132);
                goto LABEL_326;
              }

              v137 = *v217;
              *v217 = 0;

              if (v213 & 1) == 0 && *(&v213 + 1) && (v214[0])
              {
                (*(**(&v213 + 1) + 40))();
              }

              CFRelease(v132);
              if (v137)
              {
LABEL_325:
                v138 = v137;
                v139 = a2;
                *a2 = 0;
                *(a2 + 8) = v138;
              }

              else
              {
LABEL_326:
                v138 = 0;
                v139 = a2;
                *a2 = 1;
              }

              if ((*v139 & 1) == 0)
              {
                goto LABEL_300;
              }

LABEL_328:
              v140 = *(this + 47);
              v141 = *(v140 + 24);
              if (v141 <= 6 && (v142 = *(v140 + 36), v142 >= 2))
              {
                re::DynamicString::format("The target platform %u cannot be used for reality file version %lld, because older REKit builds did not recognize target platform specificatons.", &v213, v142, v141);
                v149 = *v217;
                *v217 = 0;

                if (v213 && (BYTE8(v213) & 1) != 0)
                {
                  (*(*v213 + 40))();
                }

                LOBYTE(v151) = 0;
              }

              else
              {
                ArcSharedObject::ArcSharedObject(&v213, 0);
                *&v213 = &unk_1F5CB9160;
                memset(&v214[8], 0, 32);
                v144 = re::DynamicString::setCapacity(&v214[8], 0);
                memset(&v214[40], 0, 32);
                re::DynamicString::setCapacity(&v214[40], 0);
                memset(&v215[2], 0, 36);
                LODWORD(v215[0]) = 2;
                *(&v215[6] + 4) = 0x7FFFFFFFLL;
                LODWORD(v215[8]) = 0;
                *v217 = "com.apple.RealityKit";
                *&v217[8] = 20;
                re::DynamicString::operator=(&v214[8], v217);
                re::Bundle::realityKitFramework(v217);
                if (v217[0])
                {
                  v145 = *&v217[8];
                }

                else
                {
                  v145 = 0;
                }

                v146 = v145;
                v166 = v146;
                if (v217[0] == 1)
                {
                }

                if (v166)
                {
                  re::Bundle::versionString(&v166, v217);
                }

                else
                {
                }

                re::DynamicString::operator=(&v214[40], v217);
                if (*v217 && (v217[8] & 1) != 0)
                {
                  (*(**v217 + 40))();
                }

                v147 = *(this + 47);
                v215[1] = *(v147 + 24);
                LODWORD(v215[8]) = *(v147 + 36);
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(&v215[2], this + 520);
                {
                  re::introspect<re::RealityFileHeader>(BOOL)::info = re::introspect_RealityFileHeader(0);
                }

                v174 = *(re::introspect<re::RealityFileHeader>(BOOL)::info + 2);
                v148 = v174;
                if (v174)
                {
                  v149 = CFDataCreateMutable(0, 0);
                  re::IntrospectionSharedLock::IntrospectionSharedLock(&v182);
                  re::TypeRegistry::typeInfo(v148, &v174, v217);
                  v150 = re::TypeInfo::TypeInfo(&v178, &v217[8]);
                  if (v217[0] == 1)
                  {
                    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v182);
                    goto LABEL_358;
                  }

                  v152 = v169;
                  v169 = 0;

                  if (v217[0] & 1) == 0 && *&v217[24] && (v217[32])
                  {
                    (*(**&v217[24] + 40))();
                  }

                  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v182);
                  if (v152)
                  {
                    CFRelease(v149);
                    goto LABEL_365;
                  }

LABEL_358:
                  re::RealityArchiveWriter::writeEntry(this + 296, "header.json", v149, 1, 0, 0, v217);
                  if (v217[0] == 1)
                  {
                    CFRelease(v149);
                    goto LABEL_367;
                  }

                  v152 = v178;
                  *&v178 = 0;

                  if (v217[0] & 1) == 0 && *&v217[8] && (v217[16])
                  {
                    (*(**&v217[8] + 40))();
                  }

                  CFRelease(v149);
                  if (v152)
                  {
LABEL_365:
                    v149 = v152;

                    goto LABEL_366;
                  }

LABEL_367:
                  v151 = 1;
                }

                else
                {
                  re::DynamicString::format("Type of object for file %s has not been registered", v217, "header.json");
                  v149 = v178;
                  *&v178 = 0;

                  if (*v217 && (v217[8] & 1) != 0)
                  {
                    (*(**v217 + 40))();
                  }

LABEL_366:
                  v151 = 0;
                }

                *&v213 = &unk_1F5CB9160;
                v153.n128_f64[0] = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v215[2]);
                if (*&v214[40])
                {
                  if (v214[48])
                  {
                    (*(**&v214[40] + 40))(v153.n128_f64[0]);
                  }

                  v153 = 0uLL;
                  memset(&v214[40], 0, 32);
                }

                if (*&v214[8])
                {
                  if (v214[16])
                  {
                    (*(**&v214[8] + 40))(v153);
                  }

                  memset(&v214[8], 0, 32);
                }

                *&v213 = &unk_1F5CCF868;
                objc_destructInstance(&v213 + 8);
                if (v151)
                {
                  re::RealityArchiveWriter::close((this + 296), &v213);
                  if (v213)
                  {
                    re::RealityFileWriter::onClosed(this);
                    v154 = 1;
                    v155 = a2;
                  }

                  else
                  {
                    v156 = *v217;
                    *v217 = 0;
                    v155 = a2;
                    *(a2 + 8) = v156;

                    v154 = 0;
                  }

                  *v155 = v154;
                  if ((v213 & 1) == 0)
                  {
                    v135 = *(&v213 + 1);
                    if (*(&v213 + 1))
                    {
                      if (v214[0])
                      {
                        v136 = *&v214[8];
LABEL_385:
                        (*(*v135 + 40))(v135, v136);
                      }
                    }
                  }

                  goto LABEL_300;
                }
              }

              *a2 = v151;
              *(a2 + 8) = v149;
              goto LABEL_300;
            }

LABEL_309:
            re::DynamicString::format("Type of object for file %s has not been registered", &v213, "dedupe.json", v157);
            v134 = *v217;
            *v217 = 0;
            *a2 = 0;
            *(a2 + 8) = v134;

            v135 = v213;
            if (v213 && (BYTE8(v213) & 1) != 0)
            {
              v136 = *v214;
              goto LABEL_385;
            }

LABEL_300:
            re::AssetMap::~AssetMap(&v183);
            return;
          }

LABEL_265:
          if (*(&v191 + 1) == v163)
          {
            if (v163)
            {
              v116 = &v115[4 * v163];
              v117 = v192;
              v118 = v115;
              v119 = v192;
              do
              {
                v120 = *v118;
                v118 += 4;
                *v119 = v120;
                v119 += 4;
                re::FixedArray<re::DynamicString>::operator=((v117 + 1), (v115 + 1));
                v117 = v119;
                v115 = v118;
              }

              while (v118 != v116);
            }

            goto LABEL_269;
          }

          goto LABEL_389;
        }

        v161 = 0;
        v163 = 0;
        v2 = 0;
        while (1)
        {
          v60 = *(*(v4 + 5) + 56 * v56 + 40);
          v61 = (v60 + 8);
          memset(v217, 0, 28);
          v220 = 0;
          v221[0] = 0;
          v223 = 0u;
          v224 = 0u;
          v225 = 0;
          *&v217[32] = 0u;
          v218 = 0u;
          v219 = 0;
          v226 = 0x7FFFFFFFLL;
          v62 = *(v60 + 72);
          if (v62)
          {
            v63 = v2;
            if (*(v60 + 80))
            {
              v64 = (v60 + 88);
            }

            else
            {
              v64 = *(v60 + 96);
            }

            re::DynamicArray<re::DynamicString>::setCapacity(v217, v62);
            ++*&v217[24];
            v65 = v64;
            v2 = v63;
            re::DynamicArray<re::DynamicString>::copy(v217, 0, v65, v62);
          }

          v66 = *(v60 + 160);
          if (v66)
          {
            v67 = v66 >> 1;
          }

          else
          {
            v67 = v66 >> 1;
          }

          if (v67)
          {
            LOBYTE(v213) = 1;
            re::DynamicString::DynamicString((&v213 + 8), (v60 + 152));
          }

          else
          {
            LOBYTE(v213) = 0;
          }

          re::Optional<re::DynamicString>::operator=(v221, &v213);
          if (v213 == 1 && *(&v213 + 1) && (v214[0] & 1) != 0)
          {
            (*(**(&v213 + 1) + 40))();
          }

          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(&v223, v60 + 296);
          v68 = *&v186[32];
          if (*&v186[32] >= *&v186[24])
          {
            re::DynamicArray<re::AssetMapAssetDescriptor>::growCapacity(&v186[16], *&v186[32] + 1);
            v68 = *&v186[32];
          }

          v69 = v188 + 168 * v68;
          re::DynamicArray<re::DynamicString>::DynamicArray(v69, v217);
          re::DynamicArray<unsigned long>::DynamicArray(v69 + 40, &v217[40]);
          v70 = v221[0];
          *(v69 + 80) = v221[0];
          if (v70 == 1)
          {
            re::DynamicString::DynamicString((v69 + 88), v222);
          }

          *(v69 + 120) = 0u;
          v71 = v69 + 120;
          *(v71 + 32) = 0;
          *(v71 + 16) = 0u;
          *(v71 + 36) = 0x7FFFFFFFLL;
          if (v223)
          {
            if (HIDWORD(v224) <= 3)
            {
              v72 = 3;
            }

            else
            {
              v72 = HIDWORD(v224);
            }

            re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v71, v223, v72);
            re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(v71, &v223);
          }

          ++*&v186[32];
          ++v187;
          if (*(v60 + 344) == 1)
          {
            re::SceneDescriptor::SceneDescriptor(&v213);
            re::DynamicString::operator=(&v214[8], (v60 + 32));
            re::DynamicString::operator=(&v214[40], (v60 + 152));
            v73 = *(v60 + 232);
            if (v73)
            {
              v74 = v73 >> 1;
            }

            else
            {
              v74 = v73 >> 1;
            }

            if (v74)
            {
              LOBYTE(v169) = 1;
              re::DynamicString::DynamicString(&v170, (v60 + 224));
              re::Optional<re::DynamicString>::operator=(v215, &v169);
              if (v169 == 1 && v170 && (v171 & 1) != 0)
              {
                (*(*v170 + 40))();
              }
            }

            v75 = v2;
            v76 = v55;
            v173 = 0;
            v170 = 0;
            v171 = 0;
            v169 = 0;
            LODWORD(v172) = 0;
            if (*(v60 + 256))
            {
              v77 = *(v60 + 272);
              v169 = *(v60 + 256);
              re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(&v169, v77);
              LODWORD(v172) = v172 + 1;
              re::DynamicArray<re::SceneCompatibilityVariant>::copy(&v169, v60 + 256);
              if (v171)
              {
                v78 = 40 * v171;
                v79 = (v173 + 8);
                do
                {
                  LODWORD(v166) = *(v79 - 2);
                  re::DynamicString::DynamicString(&v167, v79);
                  re::DynamicArray<re::SceneCompatibilityVariant>::add(v216, &v166);
                  if (v167 && (v168 & 1) != 0)
                  {
                    (*(*v167 + 40))();
                  }

                  v79 = (v79 + 40);
                  v78 -= 40;
                }

                while (v78);
              }
            }

            re::DynamicArray<re::SceneCompatibilityVariant>::deinit(&v169);
            v80 = *(&v185 + 1);
            if (*(&v185 + 1) >= v185)
            {
              re::DynamicArray<re::SceneDescriptor>::growCapacity(&v184 + 1, *(&v185 + 1) + 1);
              v80 = *(&v185 + 1);
            }

            re::SceneDescriptor::SceneDescriptor((*&v186[8] + 200 * v80), &v213);
            ++*(&v185 + 1);
            ++*v186;
            *&v213 = &unk_1F5CB9C10;
            re::DynamicArray<re::SceneCompatibilityVariant>::deinit(v216);
            if (v215[5])
            {
              if (v215[6])
              {
                (*(*v215[5] + 40))();
              }

              memset(&v215[5], 0, 32);
            }

            v55 = v76;
            v2 = v75;
            if (LOBYTE(v215[0]) == 1 && v215[1])
            {
              if (v215[2])
              {
                (*(*v215[1] + 40))();
              }

              memset(&v215[1], 0, 32);
            }

            if (*&v214[40])
            {
              if (v214[48])
              {
                (*(**&v214[40] + 40))();
              }

              memset(&v214[40], 0, 32);
            }

            if (*&v214[8])
            {
              if (v214[16])
              {
                (*(**&v214[8] + 40))();
              }

              memset(&v214[8], 0, 32);
            }

            *&v213 = &unk_1F5CCF868;
            objc_destructInstance(&v213 + 8);
          }

          v81 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v60 ^ (v60 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v60 ^ (v60 >> 30))) >> 27));
          v82 = v81 ^ (v81 >> 31);
          if (v178)
          {
            v83 = v82 % DWORD2(v179);
            v84 = *(*(&v178 + 1) + 4 * v83);
            if (v84 != 0x7FFFFFFF)
            {
              v4 = this;
              if (*(v179 + 32 * v84 + 8) == v60)
              {
                goto LABEL_196;
              }

              while (1)
              {
                v84 = *(v179 + 32 * v84) & 0x7FFFFFFF;
                if (v84 == 0x7FFFFFFF)
                {
                  break;
                }

                if (*(v179 + 32 * v84 + 8) == v60)
                {
                  goto LABEL_196;
                }
              }
            }
          }

          else
          {
            LODWORD(v83) = 0;
          }

          v85 = re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::allocEntry(&v178, v83, v82);
          *(v85 + 8) = v60;
          v86 = (v60 + 8);
          *(v85 + 16) = v2;
          ++HIDWORD(v181);
          v4 = this;
LABEL_196:
          if (*(v60 + 360))
          {
            *&v213 = v2;
            v87 = re::FixedArray<re::DynamicString>::FixedArray((&v213 + 8), v60 + 352);
            v88 = v163;
            if (v163 >= *(&v174 + 1))
            {
              v90 = v163 + 1;
              if (*(&v174 + 1) < v163 + 1)
              {
                if (v174)
                {
                  v91 = 8;
                  if (*(&v174 + 1))
                  {
                    v91 = 2 * *(&v174 + 1);
                  }

                  if (v91 <= v90)
                  {
                    v92 = v163 + 1;
                  }

                  else
                  {
                    v92 = v91;
                  }

                  re::DynamicArray<re::RealityFileConfigurationEntryDescriptor>::setCapacity(&v174, v92);
                }

                else
                {
                  re::DynamicArray<re::RealityFileConfigurationEntryDescriptor>::setCapacity(&v174, v90);
                  ++v176;
                }
              }

              v88 = v175;
              v89 = v177;
              v6 = v217;
            }

            else
            {
              v89 = v161;
            }

            v161 = v89;
            v93 = &v89[4 * v88];
            *v93 = v213;
            re::FixedArray<re::DynamicString>::FixedArray((v93 + 1), &v213 + 8);
            v163 = ++v175;
            ++v176;
            re::FixedArray<re::DynamicString>::deinit(&v213 + 1);
          }

          v94.n128_f64[0] = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v223);
          if (v221[0] == 1 && v222[0])
          {
            if (v222[1])
            {
              (*(*v222[0] + 40))(v94.n128_f64[0]);
            }

            v94 = 0uLL;
            memset(v222, 0, sizeof(v222));
          }

          if (*&v217[40])
          {
            if (v220)
            {
              (*(**&v217[40] + 40))(v94);
            }

            v220 = 0;
            v218 = 0uLL;
            *&v217[40] = 0;
            ++v219;
          }

          ++v2;
          re::DynamicArray<re::DynamicString>::deinit(v217);

          v59 = *(v4 + 14);
          if (v59 <= v56 + 1)
          {
            v95 = v56 + 1;
          }

          else
          {
            v95 = *(v4 + 14);
          }

          while (v95 - 1 != v56)
          {
            LODWORD(v56) = v56 + 1;
            if ((*(*(v4 + 5) + 56 * v56) & 0x80000000) != 0)
            {
              goto LABEL_226;
            }
          }

          LODWORD(v56) = v95;
LABEL_226:
          if (v56 == v55)
          {
            goto LABEL_227;
          }
        }
      }

      v43 = 1;
    }

    else
    {
      re::DynamicString::format("There are %zu possible combinations of configuration names in the reality file, but only %u combinations were utilized.", &v183, v35, *&v214[12]);
      v2 = *v217;
      *v217 = 0;

      if (v183 && (BYTE8(v183) & 1) != 0)
      {
        (*(*v183 + 40))();
      }

      v43 = 0;
    }

    v17 = v36;
    goto LABEL_113;
  }

  v9 = v213;
  *&v213 = 0;
  *a2 = 0;
  *(a2 + 8) = v9;
LABEL_64:

  if (v183 && (BYTE8(v183) & 1) != 0)
  {
    (*(*v183 + 40))();
  }
}

void re::RealityFileWriter::onClosed(void **this)
{
  if (*(this + 49))
  {
    v2 = *(this + 48);
    if (v2)
    {
      memset_pattern16(this[22], &memset_pattern_99, 4 * v2);
    }

    v3 = *(this + 50);
    if (v3)
    {
      v4 = this[23];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    *(this + 49) = 0;
    *(this + 50) = 0;
    v5 = *(this + 52) + 1;
    *(this + 51) = 0x7FFFFFFF;
    *(this + 52) = v5;
  }

  if (this[28])
  {
    this[28] = 1;
    v6 = this[29];
  }

  else
  {
    *(this + 224) = 0;
    v6 = this + 225;
  }

  *v6 = 0;
}

BOOL re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v10, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*(a1 + 8) + 4 * (v4 % v5));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = 0x7FFFFFFFLL;
  while (!re::DynamicString::operator==(v8 + 48 * v6 + 16, a2))
  {
    v6 = *(v8 + 48 * v6 + 8) & 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      return v9 != 0x7FFFFFFF;
    }
  }

  v9 = v6;
  return v9 != 0x7FFFFFFF;
}

id re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    result = re::DynamicString::DynamicString((v8 + 8), a2);
    v9 = *a3;
    *(v8 + 40) = *a3;
    if (v9)
    {
      result = (v9 + 8);
    }

    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, re::DynamicString *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v11 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return *(a1 + 16) + 48 * v11 + 16;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = v9 + 48 * v8 + 16;
    if (re::DynamicString::operator==(v10, a2))
    {
      return v10;
    }

    v8 = *(v9 + 48 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }
}

void re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v10, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v10);
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v12) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
      v5 = v12;
    }

    else
    {
      *(v6 + 56 * v13) = *(v6 + 56 * v13) & 0x80000000 | v7;
    }

    re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v6 + 56 * v5);
    v8 = v12;
    *(*(a1 + 16) + 56 * v12) = *(*(a1 + 16) + 56 * v12) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = v8;
    *(a1 + 40) = v9;
  }
}

void re::RealityFileHeader::~RealityFileHeader(re::RealityFileHeader *this)
{
  *this = &unk_1F5CB9160;
  v2 = (this + 56);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 13);
  re::DynamicString::deinit(v2);
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9160;
  v2 = (this + 56);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 13);
  re::DynamicString::deinit(v2);
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

uint64_t re::Optional<re::DynamicString>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::DynamicString::operator=(v3, (a2 + 8));
    }

    else
    {
      re::DynamicString::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 32) = *(a2 + 32);
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    v5 = *(a2 + 24);
    *(a2 + 32) = 0;
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }

  return a1;
}

re::DynamicString *re::DynamicArray<re::SceneCompatibilityVariant>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SceneCompatibilityVariant>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 40 * v4);
  *v5 = *a2;
  result = re::DynamicString::DynamicString((v5 + 2), (a2 + 8));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
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

_DWORD *re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 10);
    re::DynamicString::deinit((result + 2));

    return re::DynamicArray<re::DynamicString>::deinit(v2);
  }

  return result;
}

double re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicString::deinit((v6 + v5 + 8));
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 48;
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

re::AssetHandle *re::DynamicArray<re::AssetHandle>::clear(re::AssetHandle *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 24 * v2;
    do
    {
      re::AssetHandle::~AssetHandle(result);
      result = (v4 + 24);
      v3 -= 24;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

double re::DynamicArray<re::SceneCompatibilityVariant>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SceneCompatibilityVariant>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = *a2;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 32) = *(a2 + 32);
  v7 = *(a2 + 16);
  *(v5 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *(a2 + 24);
  *(a2 + 32) = 0;
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  *(v5 + 16) = v7;
  *(v5 + 24) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::SceneCompatibilityVariant>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 3) = 0u;
          v13 = v8[1];
          v12 = (v8 + 1);
          v11[1] = v13;
          *v12 = 0;
          v11[4] = *(v12 + 3);
          *(v12 + 3) = 0;
          v15 = v11[2];
          v14 = v11[3];
          v16 = *(v12 + 2);
          v11[2] = *(v12 + 1);
          v11[3] = v16;
          *(v12 + 1) = v15;
          *(v12 + 2) = v14;
          re::DynamicString::deinit(v12);
          v11 += 5;
          v8 = (v12 + 32);
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

uint64_t re::DynamicOverflowArray<re::DynamicString,2ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicOverflowArray<re::DynamicString,2ul>::copy(a1, a2);
        *(a1 + 16) += 2;
      }

      else
      {
        re::DynamicOverflowArray<re::DynamicString,2ul>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, v5);
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<re::DynamicString,2ul>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicOverflowArray<re::DynamicString,2ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 < *(a1 + 8))
  {
    if (*(a2 + 16))
    {
      v5 = (a2 + 24);
    }

    else
    {
      v5 = *(a2 + 32);
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 24);
      if (!v4)
      {
LABEL_7:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          v8 = *(a1 + 32);
          goto LABEL_21;
        }

LABEL_20:
        v8 = a1 + 24;
LABEL_21:
        v16 = *(a1 + 8);
        if (v4 != v16)
        {
          v17 = (v8 + 32 * v4);
          v18 = 32 * v16 - 32 * v4;
          do
          {
            re::DynamicString::deinit(v17);
            v17 = (v17 + 32);
            v18 -= 32;
          }

          while (v18);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v14 = 32 * v4;
    do
    {
      v15 = re::DynamicString::operator=(v7, v5);
      v5 = (v5 + 32);
      v7 = (v15 + 32);
      v14 -= 32;
    }

    while (v14);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, *(a2 + 8));
  if (*(a2 + 16))
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_26:
    v19 = 32 * v10;
    do
    {
      v20 = re::DynamicString::operator=(v12, v9);
      v9 = (v9 + 32);
      v12 = (v20 + 32);
      v19 -= 32;
    }

    while (v19);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v13 = a1 + 24;
    goto LABEL_30;
  }

  v12 = (a1 + 24);
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (v11)
  {
    goto LABEL_29;
  }

LABEL_15:
  v13 = *(a1 + 32);
LABEL_30:
  v21 = *(a1 + 8);
  v22 = *(a2 + 32);
  if (*(a2 + 16))
  {
    v22 = a2 + 24;
  }

  if (v21 != v4)
  {
    v23 = (v22 + 32 * v21);
    v24 = (v13 + 32 * v21);
    v25 = 32 * v4 - 32 * v21;
    do
    {
      v26 = re::DynamicString::DynamicString(v24, v23);
      v23 = (v23 + 32);
      v24 = (v26 + 32);
      v25 -= 32;
    }

    while (v25);
  }

LABEL_35:
  *(a1 + 8) = v4;
}

void re::DynamicOverflowArray<re::DynamicString,2ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 24);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v5 = 32 * v2;
  do
  {
    re::DynamicString::deinit(v4);
    v4 = (v4 + 32);
    v5 -= 32;
  }

  while (v5);
  v3 = *(a1 + 16);
LABEL_8:
  *(a1 + 16) = v3 + 2;
}

void re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v15 = a1 + 3;
        v16 = a1[4];
        if (v7)
        {
          v17 = (a1 + 3);
        }

        else
        {
          v17 = a1[4];
        }

        if (v9)
        {
          v18 = (v17 + 32 * v9);
          do
          {
            *v15 = 0u;
            *(v15 + 1) = 0u;
            v15[3] = *(v17 + 3);
            v19 = *(v17 + 1);
            *v15 = *v17;
            *v17 = 0;
            v20 = *(v17 + 2);
            *(v17 + 3) = 0;
            v22 = v15[1];
            v21 = v15[2];
            v15[1] = v19;
            v15[2] = v20;
            *(v17 + 1) = v22;
            *(v17 + 2) = v21;
            re::DynamicString::deinit(v17);
            v17 = (v17 + 32);
            v15 += 4;
          }

          while (v17 != v18);
          v5 = *a1;
        }

        (*(*v5 + 40))(v5, v16);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 59)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 32, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 32 * a2;
        v10 = (*(*v5 + 32))(v5, 32 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = (a1 + 3);
          }

          else
          {
            v14 = a1[4];
          }

          v23 = a1[1];
          if (v23)
          {
            v24 = (v14 + 32 * v23);
            v25 = v10;
            do
            {
              *v25 = 0u;
              *(v25 + 16) = 0u;
              *(v25 + 24) = *(v14 + 3);
              v26 = *(v14 + 1);
              *v25 = *v14;
              *v14 = 0;
              v27 = *(v14 + 2);
              *(v14 + 3) = 0;
              v29 = *(v25 + 8);
              v28 = *(v25 + 16);
              *(v25 + 8) = v26;
              *(v25 + 16) = v27;
              *(v14 + 1) = v29;
              *(v14 + 2) = v28;
              re::DynamicString::deinit(v14);
              v14 = (v14 + 32);
              v25 += 32;
            }

            while (v14 != v24);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  v8 = *(a2 + 8);
  if (*(v7 + 72 * v6 + 16) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v9 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 72 * v9 + 16) == v8)
      {
        break;
      }

      v9 = *(v7 + 72 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(a1, v4, v5);
    re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

re::DynamicString *re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24), *(v7 + v5 + 64));
        re::AssetHandle::AssetHandle((v8 + 8), (*(a2 + 16) + v5 + 8));
        result = re::DynamicString::DynamicString((v8 + 32), (*(a2 + 16) + v5 + 32));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::move(a1, v9);
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 32) & 0x80000000) != 0)
      {
        result = re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(v4, *(v7 + 32) % *(v4 + 24));
        v8 = *(a2 + 16) + v6;
        *(result + 16) = 0;
        *(result + 24) = 0;
        *(result + 8) = 0;
        *(result + 16) = *(v8 - 16);
        *(v8 - 16) = 0;
        v9 = *(result + 8);
        *(result + 8) = 0;
        *(result + 8) = *(v8 - 24);
        *(v8 - 24) = v9;
        v10 = *(result + 24);
        *(result + 24) = *(v8 - 8);
        *(v8 - 8) = v10;
        v11 = (*(a2 + 16) + v6);
        *(result + 32) = 0u;
        *(result + 48) = 0u;
        *(result + 56) = v11[3];
        v12 = v11[1];
        *(result + 32) = *v11;
        *v11 = 0;
        v13 = v11[2];
        v11[3] = 0;
        v15 = *(result + 40);
        v14 = *(result + 48);
        *(result + 40) = v12;
        *(result + 48) = v13;
        v11[1] = v15;
        v11[2] = v14;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 72;
    }

    while (v5 < v2);
  }

  return result;
}

double re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free((a1[2] + v3));
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

double re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 8);
    re::AssetHandle::~AssetHandle((a1 + 2));

    return re::DynamicString::deinit(v2);
  }

  return result;
}

void re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_99, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 72;
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

uint64_t re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetPath const&,re::AssetService *)>::destroyCallable(uint64_t a1))(void)
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

re::SceneDescriptor *re::SceneDescriptor::SceneDescriptor(re::SceneDescriptor *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9C10;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v3 = re::DynamicString::setCapacity(this + 3, 0);
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  v4 = re::DynamicString::setCapacity(this + 7, 0);
  *(this + 88) = 0;
  *(this + 9) = 0u;
  *(this + 8) = 0u;
  re::DynamicString::setCapacity(this + 16, 0);
  *(this + 24) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 46) = 0;
  return this;
}

void re::DynamicArray<re::SceneCompatibilityVariant>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = (v14 + 8);
      v16 = 40 * v13;
      v17 = (v12 + 8);
      do
      {
        *(v15 - 2) = *(v17 - 2);
        v15 = (re::DynamicString::operator=(v15, v17) + 40);
        v17 = (v17 + 40);
        v16 -= 40;
      }

      while (v16);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v18 = 40 * v4 - 40 * v13;
      v19 = 40 * v13 + 8;
      v20 = (v12 + v19);
      v21 = (v14 + v19);
      do
      {
        *(v21 - 2) = *(v20 - 2);
        v22 = re::DynamicString::DynamicString(v21, v20);
        v20 = (v20 + 40);
        v21 = (v22 + 40);
        v18 -= 40;
      }

      while (v18);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = (v6 + 8);
      v8 = 40 * v4;
      v9 = (*(a2 + 32) + 8);
      do
      {
        *(v7 - 2) = *(v9 - 2);
        v7 = (re::DynamicString::operator=(v7, v9) + 40);
        v9 = (v9 + 40);
        v8 -= 40;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = 40 * v5 - 40 * v4;
      v11 = (v6 + 40 * v4 + 8);
      do
      {
        re::DynamicString::deinit(v11);
        v11 = (v11 + 40);
        v10 -= 40;
      }

      while (v10);
    }
  }

  a1[2] = v4;
}

void re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(void *a1)
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

      v4 = 32 * v2;
      do
      {
        re::DynamicString::deinit(v3);
        v3 = (v3 + 32);
        v4 -= 32;
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

uint64_t re::DynamicArray<re::SceneCompatibilityVariant>::deinit(uint64_t a1)
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
        v6 = (v3 + 8);
        do
        {
          re::DynamicString::deinit(v6);
          v6 = (v6 + 40);
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

void *re::FixedArray<re::DynamicString>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 32 * v2;
      do
      {
        v6 = re::DynamicString::deinit(v4);
        v4 = (v4 + 32);
        v5 -= 32;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t *re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  LODWORD(v4) = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  ++*(result + 10);
  return result;
}

void *re::FixedArray<re::DynamicString>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 32 * a3, 8);
  v4[2] = v5;
  if (!v5)
  {
LABEL_11:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    *v7 = 0u;
    *(v7 + 1) = 0u;
    v5 = re::DynamicString::setCapacity(v7, 0);
    v7 = (v7 + 32);
  }

  *v7 = 0u;
  *(v7 + 1) = 0u;

  return re::DynamicString::setCapacity(v7, 0);
}

re::DynamicString *re::FixedArray<re::DynamicString>::copy(re::DynamicString *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = *(result + 2);
      v4 = 32 * v2;
      do
      {
        v5 = re::DynamicString::operator=(result, v3);
        v3 = (v3 + 32);
        result = (v5 + 32);
        v4 -= 32;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::make::shared::object<re::RealityFileWritingParameters>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 48, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CB90B0;
  *(v4 + 24) = 2;
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
  *(v4 + 40) = 0;
  *(v4 + 42) = 0;
  *(v4 + 44) = 0;
  *a2 = v4;
}

void re::RealityFileWritingParameters::~RealityFileWritingParameters(re::RealityFileWritingParameters *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_28;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          if (v8 != v11)
          {
            re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicString>(uint64_t a1, uint64_t a2, const StringID *a3, void *a4)
{
  v7 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  *(v7 + 24) = 0u;
  v7 += 24;
  *(v7 + 16) = 0u;
  *(v7 + 24) = a4[3];
  v8 = a4[1];
  *v7 = *a4;
  *a4 = 0;
  v9 = a4[2];
  a4[3] = 0;
  v11 = *(v7 + 8);
  v10 = *(v7 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  a4[1] = v11;
  a4[2] = v10;
  ++*(a1 + 40);
  return v7;
}

BOOL re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((v6 + 56 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 56 * v9) = *(*(a1 + 16) + 56 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*a1 == 1)
  {
    if (v2)
    {

      *(a1 + 8) = 0;
    }
  }

  else
  {
  }

  return a1;
}

void re::DynamicOverflowArray<re::DynamicString,2ul>::ensureCapacity(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v3 = 2;
    }

    else
    {
      v3 = *(a1 + 24);
    }

    if (v2 >= v3)
    {

      re::DynamicOverflowArray<re::DynamicString,2ul>::growCapacity(a1, v2 + 1);
    }
  }

  else
  {
    v4 = *(a1 + 8);
    re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, v4 + 1);
    *(a1 + 16) += 2;
  }
}

void re::DynamicOverflowArray<re::DynamicString,2ul>::growCapacity(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (!*a1)
  {
    re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, v2);
    *(a1 + 16) += 2;
    return;
  }

  if (*(a1 + 16))
  {
    if (a2 <= 2)
    {
      return;
    }

    v5 = 4;
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4 >= a2)
    {
      return;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, a2);
}

re::DynamicString *re::FixedArray<re::DynamicString>::FixedArray(re::DynamicString *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::DynamicString>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::DynamicString>::copy(a1, a2);
  }

  return a1;
}

double re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = (v6 + v4 + 56);
          re::AssetHandle::~AssetHandle((v6 + v4 + 8));
          re::FixedArray<re::DynamicString>::deinit(v8 + 16);
          re::DynamicString::deinit((v8 + 11));
          re::DynamicString::deinit(v9);
          re::AssetHandle::~AssetHandle((v8 + 4));
          v3 = *(a1 + 8);
        }

        v4 += 160;
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

uint64_t re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 160 * v6 + 16) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 160 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 160 * v8 + 16) == a3)
      {
        break;
      }

      v8 = *(v7 + 160 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
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

uint64_t re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v40, 0, 36);
          *&v40[36] = 0x7FFFFFFFLL;
          re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(v40, v9, v8);
          v11 = *v40;
          *v40 = *a1;
          *a1 = v11;
          v12 = *&v40[16];
          v13 = *(a1 + 16);
          *&v40[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v40[24];
          *&v40[24] = *(a1 + 24);
          v14 = *&v40[32];
          *(a1 + 24) = v15;
          ++*&v40[40];
          if (v14)
          {
            v16 = 0;
            v17 = 160 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(v13 + v16 + 152) % *(a1 + 24));
                *(v19 + 16) = 0;
                *(v19 + 24) = 0;
                *(v19 + 8) = 0;
                *(v19 + 16) = *(v13 + v16 + 16);
                *(v18 + 16) = 0;
                v20 = *(v19 + 8);
                *(v19 + 8) = 0;
                *(v19 + 8) = *(v13 + v16 + 8);
                *(v18 + 8) = v20;
                v21 = *(v19 + 24);
                *(v19 + 24) = *(v13 + v16 + 24);
                *(v18 + 24) = v21;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 48) = 0;
                *(v19 + 40) = *(v13 + v16 + 40);
                *(v18 + 40) = 0;
                v22 = *(v19 + 32);
                *(v19 + 32) = 0;
                *(v19 + 32) = *(v13 + v16 + 32);
                *(v18 + 32) = v22;
                v23 = *(v19 + 48);
                *(v19 + 48) = *(v13 + v16 + 48);
                *(v18 + 48) = v23;
                *(v19 + 72) = 0u;
                *(v19 + 56) = 0u;
                *(v19 + 80) = *(v13 + v16 + 80);
                v24 = *(v13 + v16 + 64);
                *(v19 + 56) = *(v13 + v16 + 56);
                *(v18 + 56) = 0;
                v25 = *(v13 + v16 + 72);
                *(v18 + 80) = 0;
                v27 = *(v19 + 64);
                v26 = *(v19 + 72);
                *(v19 + 64) = v24;
                *(v19 + 72) = v25;
                *(v18 + 64) = v27;
                *(v18 + 72) = v26;
                *(v19 + 104) = 0u;
                *(v19 + 88) = 0u;
                *(v19 + 112) = *(v13 + v16 + 112);
                v28 = *(v13 + v16 + 96);
                *(v19 + 88) = *(v13 + v16 + 88);
                *(v18 + 88) = 0;
                v29 = *(v13 + v16 + 104);
                *(v18 + 112) = 0;
                v31 = *(v19 + 96);
                v30 = *(v19 + 104);
                *(v19 + 96) = v28;
                *(v19 + 104) = v29;
                *(v18 + 96) = v31;
                *(v18 + 104) = v30;
                *(v19 + 120) = *(v13 + v16 + 120);
                LODWORD(v29) = *(v13 + v16 + 122);
                *(v19 + 122) = v29;
                if (v29 == 1)
                {
                  *(v19 + 123) = *(v18 + 123);
                }

                *(v19 + 128) = 0;
                *(v19 + 136) = 0;
                *(v19 + 144) = 0;
                v32 = *(v18 + 136);
                *(v19 + 128) = *(v18 + 128);
                *(v19 + 136) = v32;
                *(v18 + 128) = 0;
                *(v18 + 136) = 0;
                v33 = *(v19 + 144);
                *(v19 + 144) = *(v18 + 144);
                *(v18 + 144) = v33;
              }

              v16 += 160;
            }

            while (v17 != v16);
          }

          re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v40);
        }
      }

      else
      {
        if (v8)
        {
          v36 = 2 * v7;
        }

        else
        {
          v36 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v34 = *(a1 + 16);
    v35 = *(v34 + 160 * v5);
  }

  else
  {
    v34 = *(a1 + 16);
    v35 = *(v34 + 160 * v5);
    *(a1 + 36) = v35 & 0x7FFFFFFF;
  }

  v37 = v34 + 160 * v5;
  *v37 = v35 | 0x80000000;
  v38 = *(a1 + 8);
  *v37 = *(v38 + 4 * a2) | 0x80000000;
  *(v38 + 4 * a2) = v5;
  *(v37 + 152) = a3;
  ++*(a1 + 28);
  return v34 + 160 * v5;
}

void re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 160 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

double re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 64;
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

void re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 8);
    re::AssetHandle::~AssetHandle((a1 + 2));

    re::AssetHandle::~AssetHandle(v2);
  }
}

void re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_99, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 64;
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

void re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::move(a1, v9);
      re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v9);
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

void *re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::move(void *result, uint64_t a2)
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
        result = re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24), *(v7 + v5 + 56));
        v8 = (*(a2 + 16) + v5);
        result[2] = 0;
        result[3] = 0;
        result[1] = 0;
        result[2] = v8[2];
        v8[2] = 0;
        v9 = result[1];
        result[1] = 0;
        result[1] = v8[1];
        v8[1] = v9;
        v10 = result[3];
        result[3] = v8[3];
        v8[3] = v10;
        v11 = (*(a2 + 16) + v5);
        result[5] = 0;
        result[6] = 0;
        result[4] = 0;
        result[5] = v11[5];
        v11[5] = 0;
        v12 = result[4];
        result[4] = 0;
        result[4] = v11[4];
        v11[4] = v12;
        v13 = result[6];
        result[6] = v11[6];
        v11[6] = v13;
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

void re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

uint64_t re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  v8 = *(a2 + 8);
  if (*(v7 + (v6 << 6) + 16) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v9 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + (v9 << 6) + 16) == v8)
      {
        break;
      }

      v9 = *(v7 + (v9 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = v10;
      if (v9 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v10;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addInternal<re::AssetHandle const&,re::AssetHandle const&>(uint64_t a1, uint64_t a2, const re::AssetHandle *a3, const re::AssetHandle *a4)
{
  v7 = re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::AssetHandle::AssetHandle((v7 + 8), a3);
  re::AssetHandle::AssetHandle((v7 + 32), a4);
  ++*(a1 + 40);
  return v7 + 32;
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addInternal<re::AssetHandle const&,re::DynamicString const&>(uint64_t a1, uint64_t a2, const re::AssetHandle *a3, const re::DynamicString *a4)
{
  v7 = re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::AssetHandle::AssetHandle((v7 + 8), a3);
  re::DynamicString::DynamicString((v7 + 32), a4);
  ++*(a1 + 40);
  return v7 + 32;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 88 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 88 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 88 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 88 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicArray<re::DynamicString>>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = 0;
  v7 += 40;
  *(v7 + 32) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v8 = *(a4 + 8);
  *v7 = *a4;
  *(v7 + 8) = v8;
  *a4 = 0;
  *(a4 + 8) = 0;
  v9 = *(v7 + 16);
  *(v7 + 16) = *(a4 + 16);
  *(a4 + 16) = v9;
  v10 = *(v7 + 32);
  *(v7 + 32) = *(a4 + 32);
  *(a4 + 32) = v10;
  ++*(a4 + 24);
  ++*(v7 + 24);
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 40) % *(v4 + 24), *(v7 + 40));
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

void re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void *re::DynamicArray<re::DynamicString>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DynamicString>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DynamicString>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DynamicString>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicString>::setCapacity(v5, a2);
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
        v10 = (v8 + 32 * v9);
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 3);
          v12 = *(v8 + 1);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 2);
          *(v8 + 3) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 1) = v15;
          *(v8 + 2) = v14;
          re::DynamicString::deinit(v8);
          v8 = (v8 + 32);
          v11 += 4;
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

double re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
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

void re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(int *a1)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    v8 = v1;
    v9 = v2;
    *a1 = v3 & 0x7FFFFFFF;
    v5 = re::DynamicString::deinit((a1 + 2));
    v6 = a1[18];
    if (v6 != -1)
    {
      (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix + v6))(&v7, a1 + 10, v5);
    }

    a1[18] = -1;
  }
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,std::variant<re::DynamicString,re::Data>>(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 40) = 0;
  v7 += 40;
  *(v7 + 32) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1>>(v7, a4);
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v11 = v9 + 88 * v8;
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

  v16 = *(v9 + 88 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 88 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 88 * v17) & 0x7FFFFFFF;
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

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix + v3))(&v6, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_12__assignmentINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentIS9_LNS0_6_TraitE1EEEEEvOT_EUlRSF_OT0_E_JRSA_SE_EEEDcmSG_DpOT0____fdiagonal[v4])(&v5, result, a2);
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__assign_alt[abi:nn200100]<0ul,re::DynamicString,re::DynamicString>(uint64_t a1, re::DynamicString *this, re::DynamicString *a3)
{
  if (*(a1 + 32))
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__emplace[abi:nn200100]<0ul,re::DynamicString>(a1, a3);
  }

  else
  {
    return re::DynamicString::operator=(this, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__emplace[abi:nn200100]<0ul,re::DynamicString>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix + v4))(&v10, a1);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = a2[3];
  v5 = a2[1];
  *a1 = *a2;
  *a2 = 0;
  v6 = a2[2];
  a2[3] = 0;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  a2[1] = v8;
  a2[2] = v7;
  *(a1 + 32) = 0;
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__assign_alt[abi:nn200100]<1ul,re::Data,re::Data>(re::DynamicString *a1, void **a2, void **a3)
{
  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix + v5))(&v9, a1);
LABEL_8:
    *(a1 + 8) = -1;
    v8 = *a3;
    *a3 = 0;
    *a1 = v8;
    *(a1 + 8) = 1;
    return;
  }

  if (a2 != a3)
  {
    v6 = *a3;
    *a3 = 0;
    v7 = *a2;
    *a2 = v6;
  }
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

unsigned int *re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(unsigned int *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % v4[6]);
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        v8 += 40;
        *(v8 + 32) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1>>(v8, v14 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1>>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = result[8];
  if (v4 != -1)
  {
    result = (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix + v4))(&v7, result);
  }

  v3[8] = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_6__ctorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEEE19__generic_constructB8nn200100INS0_18__move_constructorIS9_LNS0_6_TraitE1EEEEEvRSA_OT_EUlSH_E_JSE_EEEDcmSH_DpOT0____fdiagonal[v5])(&v6, a2);
    v3[8] = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::Data> &&>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 24) = a2[3];
  v4 = a2[1];
  *v2 = *a2;
  *a2 = 0;
  v5 = a2[2];
  a2[3] = 0;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::Data> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void re::RealityFileWriter::AssetInfo::~AssetInfo(re::RealityFileWriter::AssetInfo *this)
{
  *this = &unk_1F5CB9118;
  v2 = (this + 32);
  re::FixedArray<re::DynamicString>::deinit(this + 44);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 37);
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 256);
  re::DynamicString::deinit((this + 224));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 184);
  re::DynamicString::deinit((this + 152));
  re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(this + 8);
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9118;
  v2 = (this + 32);
  re::FixedArray<re::DynamicString>::deinit(this + 44);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 37);
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 256);
  re::DynamicString::deinit((this + 224));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 184);
  re::DynamicString::deinit((this + 152));
  re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(this + 8);
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = v17[1];
                v19 = *(v17 - 1);
                *(v18 + 8) = *(v17 - 2);
                *(v17 - 2) = 0;
                v20 = *v17;
                v17[1] = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 1) = v22;
                *v17 = v21;
                *(v18 + 40) = v17[2];
                v17[2] = 0;
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 56 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 56 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 56 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 48) = a3;
  ++*(a1 + 28);
  return v23 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, int a4, re::DynamicString *a5)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 48 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 48 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 48 * v9 + 8) = v12 | 0x80000000;
  *(*(a1 + 16) + 48 * v9 + 8) = *(*(a1 + 16) + 48 * v9 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 48 * v9) = a3;
  re::DynamicString::DynamicString((*(a1 + 16) + 48 * v9 + 16), a5);
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

void re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 48;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v13);
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

void re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 48 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 48 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 48 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 48 * v8 + 8) = *(*(a1 + 16) + 48 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 48 * v8) = a3;
  v12 = *(a1 + 16) + 48 * v8;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 40) = a5[3];
  v13 = a5[1];
  *(v12 + 16) = *a5;
  *a5 = 0;
  v14 = a5[2];
  a5[3] = 0;
  v16 = *(v12 + 24);
  v15 = *(v12 + 32);
  *(v12 + 24) = v13;
  *(v12 + 32) = v14;
  a5[1] = v16;
  a5[2] = v15;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

unint64_t re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(uint64_t a1, uint64_t a2, const char **a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  result = strlen(*a3);
  if (result)
  {
    result = MurmurHash3_x64_128(v6, result, 0, v16);
    v8 = (v16[1] + (v16[0] << 6) + (v16[0] >> 2) - 0x61C8864680B583E9) ^ v16[0];
    v6 = *a3;
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v9) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v10) = 0;
    LODWORD(v11) = 0x7FFFFFFF;
    goto LABEL_12;
  }

  v10 = v8 % *(a2 + 24);
  v11 = *(*(a2 + 8) + 4 * v10);
  if (v11 == 0x7FFFFFFF)
  {
LABEL_11:
    LODWORD(v11) = 0x7FFFFFFF;
    goto LABEL_12;
  }

  v12 = *(a2 + 16);
  result = strcmp(*(v12 + 32 * v11 + 8), v6);
  if (!result)
  {
    LODWORD(v9) = v11;
    goto LABEL_11;
  }

  v13 = *(v12 + 32 * v11);
  v9 = v13 & 0x7FFFFFFF;
  if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v9) = 0x7FFFFFFF;
  }

  else
  {
    result = strcmp(*(v12 + 32 * v9 + 8), v6);
    if (result)
    {
      LODWORD(v14) = v9;
      while (1)
      {
        LODWORD(v11) = v14;
        v15 = *(v12 + 32 * v9);
        v14 = v15 & 0x7FFFFFFF;
        LODWORD(v9) = 0x7FFFFFFF;
        if ((v15 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = strcmp(*(v12 + 32 * v14 + 8), v6);
        v9 = v14;
        if (!result)
        {
          LODWORD(v9) = v14;
          break;
        }
      }
    }
  }

LABEL_12:
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 12) = v9;
  *(a1 + 16) = v11;
  return result;
}

uint64_t re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
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
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, *&v13[16] + v10 + 16);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
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

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_99, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

double re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 8);
          if (v9)
          {

            *(v8 + 8) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 32;
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

void re::DynamicArray<re::DynamicString>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 32 * v2;
    do
    {
      re::DynamicString::deinit(v3);
      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicArray<re::DynamicString>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      re::DynamicString::deinit((*(v3 + 4) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::DynamicString>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::DynamicArray<re::DynamicString>::copy(void *this, unint64_t a2, re::DynamicString *a3, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v22 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v23) = 136315906;
    *(&v23 + 4) = "copy";
    WORD6(v23) = 1024;
    HIWORD(v23) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v22, v23);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_18;
  }

  if (v7 >= v8)
  {
    this = (this[4] + 32 * a2);
    v20 = 32 * a4;
    do
    {
      v21 = re::DynamicString::operator=(this, a3);
      a3 = (a3 + 32);
      this = (v21 + 32);
      v20 -= 32;
    }

    while (v20);
  }

  else
  {
    this = re::DynamicArray<re::DynamicString>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v6[4];
    v12 = a2;
    v13 = v10 - a2;
    if (v10 != a2)
    {
      this = (v11 + 32 * a2);
      v14 = a3;
      v15 = 32 * v10 - 32 * a2;
      do
      {
        v16 = re::DynamicString::operator=(this, v14);
        v14 = (v14 + 32);
        this = (v16 + 32);
        v15 -= 32;
      }

      while (v15);
      v11 = v6[4];
      v12 = v6[2];
    }

    if (v13 != v4)
    {
      v17 = (a3 + 32 * v13);
      this = (v11 + 32 * v12);
      v18 = 32 * v4 + 32 * a2 - 32 * v10;
      do
      {
        v19 = re::DynamicString::DynamicString(this, v17);
        v17 = (v17 + 32);
        this = (v19 + 32);
        v18 -= 32;
      }

      while (v18);
    }

    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void *re::DynamicArray<re::AssetMapAssetDescriptor>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
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
        v10 = 168 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::AssetMapAssetDescriptor>(v8, v11);
          v8 += 168;
          v11 += 168;
          v10 -= 168;
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

uint64_t re::ObjectHelper::move<re::AssetMapAssetDescriptor>(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = v5;
  ++*(a1 + 24);
  ++*(a2 + 24);
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = 0;
  v6 = *(a1 + 48);
  v7 = a1 + 40;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v8 = *(a2 + 56);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = v8;
  v9 = *(a2 + 72);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 72) = v9;
  ++*(a1 + 64);
  ++*(a2 + 64);
  LODWORD(v9) = *(a1 + 80);
  *(a2 + 80) = v9;
  if (v9 == 1)
  {
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 112) = *(a1 + 112);
    v10 = *(a1 + 96);
    *(a2 + 88) = *(a1 + 88);
    *(a1 + 88) = 0;
    v11 = *(a1 + 104);
    *(a1 + 112) = 0;
    v13 = *(a2 + 96);
    v12 = *(a2 + 104);
    *(a2 + 96) = v10;
    *(a2 + 104) = v11;
    *(a1 + 96) = v13;
    *(a1 + 104) = v12;
  }

  *(a2 + 120) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  *(a2 + 156) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a2 + 120), (a1 + 120));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 120));
  if (*(a1 + 80) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::DynamicArray<unsigned long>::deinit(v7);

  return re::DynamicArray<re::DynamicString>::deinit(a1);
}

uint64_t re::DynamicArray<re::DynamicString>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::DynamicString>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DynamicString>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::DynamicString>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::DynamicString>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 32 * v13;
      do
      {
        v16 = re::DynamicString::operator=(v14, v12);
        v12 = (v12 + 32);
        v14 = (v16 + 32);
        v15 -= 32;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = (v12 + 32 * v13);
      v18 = (v14 + 32 * v13);
      v19 = 32 * v4 - 32 * v13;
      do
      {
        v20 = re::DynamicString::DynamicString(v18, v17);
        v17 = (v17 + 32);
        v18 = (v20 + 32);
        v19 -= 32;
      }

      while (v19);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 32 * v4;
      do
      {
        v9 = re::DynamicString::operator=(v6, v7);
        v7 = (v7 + 32);
        v6 = (v9 + 32);
        v8 -= 32;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = (v6 + 32 * v4);
      v11 = 32 * v5 - 32 * v4;
      do
      {
        re::DynamicString::deinit(v10);
        v10 = (v10 + 32);
        v11 -= 32;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::SceneDescriptor>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SceneDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SceneDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SceneDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SceneDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC8uLL))
        {
          v2 = 200 * a2;
          result = (*(*result + 32))(result, 200 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 200, a2);
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
        v10 = 200 * v9;
        v11 = v5[4];
        v12 = v7;
        v13 = v11;
        do
        {
          re::SceneDescriptor::SceneDescriptor(v12, v8);
          v14 = *v13;
          v13 = (v13 + 200);
          (*v14)(v8);
          v12 = (v12 + 200);
          v11 = (v11 + 200);
          v8 = v13;
          v10 -= 200;
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

uint64_t re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v26, v9, v8);
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
                v18 = re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v17 - 1) = 0;
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::deinit(v26);
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

void *re::DynamicArray<re::RealityFileConfigurationEntryDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RealityFileConfigurationEntryDescriptor>::setCapacity(v5, a2);
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
          *v11 = *v8;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v13;
          *v12 = 0;
          v14 = v11[3];
          v15 = v12[2];
          v11[2] = v12[1];
          v11[3] = v15;
          v12[1] = 0;
          v12[2] = v14;
          re::FixedArray<re::DynamicString>::deinit(v12);
          v11 += 4;
          v8 = v12 + 3;
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

void re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 32 * a3;
  v6 = (*(*a2 + 32))(a2, 32 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 32);
    v8 = (v8 + v5 - 32);
  }

  *v8 = 0u;
  v8[1] = 0u;
}

uint64_t zip_save_manifest(uint64_t a1, const char *a2, void **a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x800uLL);
  if (a4 > 0x40)
  {
    return 0;
  }

  if (a4)
  {
    v9 = __src;
    v10 = a4;
    do
    {
      zip_calculate_signature(*a3, v17);
      v11 = v17[1];
      *v9 = v17[0];
      *(v9 + 1) = v11;
      if (!(*v9 | *(v9 + 1) | *(v9 + 2) | *(v9 + 3)))
      {
        return 0;
      }

      v9 += 32;
      ++a3;
    }

    while (--v10);
  }

  if (a2)
  {
    v12 = strlen(a2) + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 + 32 * a4;
  v14 = malloc_type_malloc(v13 + 10, 0x30E4C224uLL);
  v15 = v14;
  *v14 = 21250386;
  *(v14 + 2) = 2;
  *(v14 + 3) = v12;
  *(v14 + 4) = a4;
  v16 = v14 + 10;
  if (v12)
  {
    memcpy(v14 + 10, a2, v12);
    v16 += v12;
  }

  if (a4)
  {
    memcpy(v16, __src, 32 * a4);
  }

  zip_set_comment(a1, v15, v13 + 10);
  free(v15);
  return 1;
}

re::internal::AssetLoadItem *re::internal::AssetLoadItem::AssetLoadItem(re::internal::AssetLoadItem *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB91A8;
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 112) = 1;
  *(this + 15) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 192) = 0;
  *(this + 256) = 0;
  *(this + 352) = 0;
  *(this + 96) = 0;
  *(this + 49) = this;
  v3 = this + 8;
  *(this + 50) = 0;
  *(this + 102) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 52) = 0;
  *(this + 440) = 0;
  return this;
}

void re::internal::AssetLoadItem::~AssetLoadItem(id *this)
{
  *this = &unk_1F5CB91A8;

  v2 = this[49];
  if (v2)
  {

    this[49] = 0;
  }

  re::Optional<re::internal::AssetLoadItem::PayloadSource>::~Optional((this + 44));
  if (*(this + 256) == 1)
  {
    re::DynamicString::deinit((this + 38));
    re::DynamicString::deinit((this + 34));
  }

  re::Optional<re::internal::AssetLoadItem::DescriptorSource>::~Optional((this + 24));
  if (*(this + 152) == 1)
  {
    re::DynamicString::deinit((this + 20));
  }

  v3 = this[13];
  if (v3)
  {

    this[13] = 0;
  }

  re::DynamicString::deinit((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::internal::AssetLoadItem::~AssetLoadItem(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Optional<re::internal::AssetLoadItem::PayloadSource>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {

      *(a1 + 24) = 0;
    }
  }

  return a1;
}

uint64_t re::Optional<re::internal::AssetLoadItem::DescriptorSource>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {

      *(a1 + 48) = 0;
    }

    re::DynamicArray<re::AssetLoadDescriptor>::deinit(a1 + 8);
  }

  return a1;
}

re::internal::AssetBackgroundLoader *re::internal::AssetBackgroundLoader::AssetBackgroundLoader(re::internal::AssetBackgroundLoader *this, const char *a2)
{
  re::Defaults::intValue("assetBackgroundLoaderTaskLimit", a2, v5);
  if (v5[0])
  {
    v3 = v6;
  }

  else
  {
    v3 = 8;
  }

  *this = v3;
  *(this + 2) = 257;
  *(this + 16) = this + 680;
  *(this + 22) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 32) = this + 680;
  *(this + 38) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 74) = 0;
  *(this + 53) = 0;
  *(this + 48) = this + 680;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 104) = 0;
  *(this + 64) = this + 680;
  *(this + 70) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 0;
  *(this + 88) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 668) = 0u;
  re::CancellationTokenSource::CancellationTokenSource((this + 712));
  return this;
}

void re::internal::AssetBackgroundLoader::~AssetBackgroundLoader(re::internal::AssetBackgroundLoader *this)
{
  dispatch_release(*(this + 86));
  dispatch_release(*(this + 87));
  *(this + 89) = &unk_1F5CB8E80;
  v2 = *(this + 92);
  if (v2)
  {

    *(this + 92) = 0;
  }

  *(this + 89) = &unk_1F5CCF868;
  objc_destructInstance(this + 720);

  v3 = *(this + 65);
  if (v3)
  {
    if (*(this + 70))
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 70) = 0;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 138) = 0;
  }

  v4 = *(this + 49);
  if (v4)
  {
    if (*(this + 53))
    {
      (*(*v4 + 40))(v4);
    }

    *(this + 53) = 0;
    *(this + 50) = 0;
    *(this + 51) = 0;
    *(this + 49) = 0;
    ++*(this + 104);
  }

  v5 = *(this + 33);
  if (v5)
  {
    if (*(this + 38))
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 38) = 0;
    *(this + 264) = 0u;
    *(this + 280) = 0u;
    *(this + 74) = 0;
  }

  v6 = *(this + 17);
  if (v6)
  {
    if (*(this + 22))
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 22) = 0;
    *(this + 136) = 0u;
    *(this + 152) = 0u;
    *(this + 42) = 0;
  }
}

const char *re::internal::AssetBackgroundLoader::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 640) = a2;
  *(a1 + 648) = a3;
  *(a1 + 656) = a4;
  *(a1 + 664) = a5;
  *(a1 + 672) = a6;
  v7 = MEMORY[0x1E69E96A8];
  v8 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, -15);
  global_queue = dispatch_get_global_queue(25, 0);
  *(a1 + 688) = dispatch_queue_create_with_target_V2("com.apple.re.AssetBackgroundLoader", v8, global_queue);
  v10 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 696) = dispatch_queue_create_with_target_V2("com.apple.re.AssetBackgroundLoaderPriority", v10, global_queue);
  v11 = dispatch_group_create();

  v12 = *(a1 + 704);
  *(a1 + 704) = v11;

  v13 = getenv("RE_ASSET_BACKGROUND_LOADING_ENABLE");
  if (v13)
  {
    *(a1 + 4) = atoi(v13) != 0;
  }

  result = getenv("RE_ASSET_BACKGROUND_UNLOADING_ENABLE");
  if (result)
  {
    result = atoi(result);
    *(a1 + 5) = result != 0;
  }

  return result;
}

BOOL re::internal::AssetBackgroundLoader::runTaskInBackgroundLoadingGroup(uint64_t a1, id *a2, uint64_t a3)
{
  v6 = *(a1 + 736);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  v8 = atomic_load((v6 + 24));

  if ((v8 & 1) == 0)
  {
    v9 = *a2;
    v11[5] = a1;
    v12 = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN2re8internal21AssetBackgroundLoader31runTaskInBackgroundLoadingGroupENS_8dispatch5QueueEU13block_pointerFvNS_9SharedPtrIKNS_17CancellationTokenEEEE_block_invoke;
    v11[3] = &unk_1E871AA08;
    v11[4] = a3;
    re::dispatch::Group::async((a1 + 704), &v12, v11);
  }

  return (v8 & 1) == 0;
}

void ___ZN2re8internal21AssetBackgroundLoader31runTaskInBackgroundLoadingGroupENS_8dispatch5QueueEU13block_pointerFvNS_9SharedPtrIKNS_17CancellationTokenEEEE_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 736);
  if (v2)
  {
    v3 = (v2 + 8);
    v4 = *(a1 + 32);
    v5 = (v2 + 8);
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v6 = v2;
  (*(v4 + 16))(v4, &v6);
  if (v6)
  {

    v6 = 0;
  }

  if (v2)
  {
  }
}

void re::internal::AssetBackgroundLoader::runIfNeeded(re::internal::AssetBackgroundLoader *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 102);
  v5 = atomic_load(&a2[96]._os_unfair_lock_opaque);
  if (v5 == 2)
  {
    re::internal::AssetBackgroundLoader::unloadAsset(a2, v4);
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    re::internal::AssetBackgroundLoader::loadAsset(a2, *(this + 83));
  }

  atomic_store(4u, &a2[96]._os_unfair_lock_opaque);
  re::internal::AssetBackgroundLoader::onActiveTaskDone(this, a2, 1);
LABEL_6:
  re::internal::AssetBackgroundLoader::startPendingLoadItems(this, 1);

  os_unfair_lock_unlock(a2 + 102);
}

void re::internal::AssetBackgroundLoader::loadAsset(uint64_t a1, uint64_t a2)
{
  v113 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    (*(*a2 + 88))(a2, *(a1 + 64), a1);
  }

  v4 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v99, 2002, a1);
  v5 = *re::assetsLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 40))
    {
      v55 = *(a1 + 48);
    }

    else
    {
      v55 = a1 + 41;
    }

    buf[0].numer = 136315138;
    *&buf[0].denom = v55;
    _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "Loading asset '%s'", buf, 0xCu);
  }

  v6 = mach_absolute_time();
  v7 = v6;
  v98 = &unk_1F5CB9778;
  if (*(a1 + 352) == 1)
  {
    if (*(a1 + 64))
    {
      v8 = *(a1 + 72);
      buf[0] = *(a1 + 64);
      v9 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v8, buf);
      v10 = (*(**v9 + 128))(*v9);
      v11 = *v9;
      v12 = *re::assetsLogObjects(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 40))
        {
          v90 = *(a1 + 48);
        }

        else
        {
          v90 = a1 + 41;
        }

        buf[0].numer = 136315138;
        *&buf[0].denom = v90;
        _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "Loading asset '%s' from payload", buf, 0xCu);
      }

      v13 = (*(*v11 + 136))(v11);
      memset(buf, 0, 36);
      *&buf[4].denom = 0x7FFFFFFFLL;
      re::SharedResourcePayload::clientObject((a1 + 360), &v107);
      v14 = v107;

      if (v14)
      {
        re::SharedResourcePayload::clientObject((a1 + 360), &cf);
        v15 = cf;
        if (cf)
        {
          v15 = CFHash(cf);
        }

        *&v107 = v15;
        LODWORD(v110) = 2;
        re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(buf, "client", &v107);
        if (v110 != -1)
        {
          (*(&off_1F5CB91E0 + v110))(v106, &v107);
        }
      }

      v97 = *(a1 + 360);
      v16 = (*(*v11 + 224))(v11, &v97, v13, &v98, a1 + 112, buf);

      if (v16)
      {
        *(a1 + 96) = v13;
      }

      else
      {
        v41 = *re::assetsLogObjects(v17);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 40))
          {
            v42 = *(a1 + 48);
          }

          else
          {
            v42 = a1 + 41;
          }

          LODWORD(v107) = 136315138;
          *(&v107 + 4) = v42;
          _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "rdar://102632350 Asset '%s' failed to load from payload.", &v107, 0xCu);
        }

        v43 = (*(*v11 + 16))(v11, v13);
        re::internal::AssetLoadItem::setFailure(a1, &v107);
        if (v107 && (BYTE8(v107) & 1) != 0)
        {
          (*(*v107 + 40))();
        }
      }

      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
      goto LABEL_188;
    }

    re::internal::AssetLoadItem::setFailure(a1, buf);
    v39 = buf[0];
    if (!*buf || (buf[1].numer & 1) == 0)
    {
      goto LABEL_188;
    }

    v40 = buf[2];
LABEL_187:
    v39 = (*(*v39 + 40))(v39, v40);
    goto LABEL_188;
  }

  if (*(a1 + 192) != 1)
  {
    buf[0].numer = *(a1 + 264);
    re::DynamicString::DynamicString(&buf[1], (a1 + 272));
    re::DynamicString::DynamicString(&buf[5], (a1 + 304));
    *&buf[9].numer = *(a1 + 336);
    v34 = dyld_program_sdk_at_least();
    if (v35)
    {
      v36 = *(a1 + 64);
      v94[0] = 0;
      CompiledAsset = re::AssetUtilities::loadCompiledAsset(buf, a1 + 72, v36, &v98, v94, &v107);
      if (v107 == 1)
      {
        v38 = v108;
        *(a1 + 96) = *(&v107 + 1);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 104), v38);
      }

      else
      {
        *(a1 + 96) = 0;
        v52 = *(a1 + 104);
        if (v52)
        {

          *(a1 + 104) = 0;
        }
      }

      if (v107)
      {
        v44 = 0;
      }

      else
      {
        CompiledAsset = re::WrappedError::localizedDescription(&v107 + 1);
        v44 = CompiledAsset;
      }

      if (*(a1 + 96))
      {
        v53 = *re::assetsLogObjects(CompiledAsset);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          if (*(a1 + 40))
          {
            v54 = *(a1 + 48);
          }

          else
          {
            v54 = a1 + 41;
          }

          LODWORD(cf) = 136315138;
          *(&cf + 4) = v54;
          _os_log_debug_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEBUG, "Loaded compiled asset '%s'", &cf, 0xCu);
        }
      }

      else
      {
        if (v44)
        {
          v56 = 1;
        }

        else
        {
          v56 = v34;
        }

        if (!v56)
        {
          v44 = "Can't find source asset path";
        }
      }

      v35 = re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::WrappedError>::~Result(&v107);
      v57 = *(a1 + 96);
      if (v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = v34;
      }

      if (v58 != 1)
      {
LABEL_173:
        if (!v57 && *(a1 + 144) != 3)
        {
          if (!v44)
          {
            v44 = "Unknown failure";
          }

          re::internal::AssetLoadItem::setFailure(a1, &v107);
          if (v107 && (BYTE8(v107) & 1) != 0)
          {
            (*(*v107 + 40))();
          }
        }

        if (buf[5])
        {
          if (buf[6].numer)
          {
            (*(**&buf[5] + 40))();
          }

          memset(&buf[5], 0, 32);
        }

        v39 = buf[1];
        if (*&buf[1] && (buf[2].numer & 1) != 0)
        {
          v40 = buf[3];
          goto LABEL_187;
        }

LABEL_188:
        if (!*(a1 + 96))
        {
          if (*(a1 + 144) != 3)
          {
            re::internal::AssetLoadItem::setFailure(a1, buf);
            if (buf[0])
            {
              if (buf[1].numer)
              {
                (*(**buf + 40))();
              }
            }
          }

          goto LABEL_204;
        }

        *(a1 + 144) = 2;
        v81 = mach_absolute_time();
        v82 = v81 - v7;
        *(a1 + 416) = v81 - v7;
        v83 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
        {
          v81 = mach_timebase_info(buf);
          if (v81)
          {
            v86 = NAN;
LABEL_198:
            v87 = v86 / 1000000.0;
            if (v86 / 1000000.0 > 1000.0)
            {
              v88 = *re::assetsLogObjects(v81);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
              {
                if (*(a1 + 40))
                {
                  v89 = *(a1 + 48);
                }

                else
                {
                  v89 = a1 + 41;
                }

                buf[0].numer = 134218498;
                *&buf[0].denom = a1;
                LOWORD(buf[1].denom) = 2080;
                *(&buf[1].denom + 2) = v89;
                HIWORD(buf[2].denom) = 2048;
                buf[3] = *&v87;
                _os_log_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_DEFAULT, "Asset(%llu) '%s' took '%.0f' ms to load", buf, 0x20u);
              }
            }

LABEL_204:
            if (a2)
            {
              (*(*a2 + 96))(a2, *(a1 + 64), a1);
            }

            goto LABEL_206;
          }

          LODWORD(v84) = buf[0].numer;
          LODWORD(v85) = buf[0].denom;
          v83 = v84 / v85;
          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v83;
        }

        v86 = v83 * v82;
        goto LABEL_198;
      }
    }

    else
    {
      v44 = 0;
    }

    memset(v106, 0, 32);
    re::DynamicString::setCapacity(v106, 0);
    v59 = re::AssetPath::temp_filePathToSourceAssetInBundle(buf, v106, *(a1 + 88));
    if (!v59)
    {
      re::internal::AssetLoadItem::setFailure(a1, &v107);
      if (v107 && (BYTE8(v107) & 1) != 0)
      {
        (*(*v107 + 40))();
      }

      if (*v106 && (v106[8] & 1) != 0)
      {
        (*(**v106 + 40))();
      }

      if (buf[5])
      {
        if (buf[6].numer)
        {
          (*(**&buf[5] + 40))();
        }

        memset(&buf[5], 0, 32);
      }

      if (*&buf[1] && (buf[2].numer & 1) != 0)
      {
        (*(**&buf[1] + 40))();
      }

      goto LABEL_206;
    }

    v60 = buf[10];
    if (v106[8])
    {
      v61 = *&v106[16];
    }

    else
    {
      v61 = (v106 | 9);
    }

    v62 = strrchr(v61, 46) + 1;
    v63 = (**v60)(v60, v62);
    if (v63)
    {
      v64 = v63;
      v65 = v7;
      v66 = *(a1 + 72);
      *&v107 = *(a1 + 64);
      v67 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v66, &v107);
      (*(**v67 + 128))(*v67);
      v68 = *v67;
      v69 = (*(*v68 + 192))(v68, 0);
      (*(*v64 + 40))(&v107, v64, v61, v69, &v98);
      v70 = (*(*v64 + 56))(v64, v69);
      v71 = *re::assetsLogObjects(v70);
      v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG);
      if (v72)
      {
        if (*(a1 + 40))
        {
          v91 = *(a1 + 48);
        }

        else
        {
          v91 = a1 + 41;
        }

        LODWORD(cf) = 136315138;
        *(&cf + 4) = v91;
        _os_log_debug_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEBUG, "Compiling source asset '%s'", &cf, 0xCu);
      }

      if (v107)
      {
        v73 = *re::assetsLogObjects(v72);
        v7 = v65;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          if (*(a1 + 40))
          {
            v92 = *(a1 + 48);
          }

          else
          {
            v92 = a1 + 41;
          }

          LODWORD(cf) = 136315138;
          *(&cf + 4) = v92;
          _os_log_debug_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_DEBUG, "Compiled asset '%s'", &cf, 0xCu);
        }

        *(a1 + 96) = *(&v107 + 1);
        if (*(a1 + 352))
        {
          v74 = *(a1 + 368);
        }

        else
        {
          v74 = 0;
        }

        re::AssetSignpost::ScopeGuard::ScopeGuard(&v95, 2056, v74, **(a1 + 64));
        if (((*(*v68 + 24))(v68, *(a1 + 96), 0, 0) & 1) == 0)
        {
          v75 = (*(*v68 + 16))(v68, *(a1 + 96));
          *(a1 + 96) = 0;
          v76 = *(a1 + 104);
          if (v76)
          {

            *(a1 + 104) = 0;
          }

          re::internal::AssetLoadItem::setFailure(a1, &cf);
          if (cf && (BYTE8(cf) & 1) != 0)
          {
            (*(*cf + 40))();
          }
        }

        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&v95);
      }

      else
      {
        std::error_code::message(&v95, (&v107 + 8));
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v95;
        }

        else
        {
          v79 = v95.__r_.__value_.__r.__words[0];
        }

        if (v110)
        {
          v80 = v111;
        }

        else
        {
          v80 = &v110 + 1;
        }

        re::DynamicString::format("Failed to compile -- %s (%s)", &cf, v79, v80);
        re::internal::AssetLoadItem::setFailure(a1, &cf);
        v7 = v65;
        if (cf && (BYTE8(cf) & 1) != 0)
        {
          (*(*cf + 40))();
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }
      }

      if (v107)
      {
        goto LABEL_169;
      }

      v77 = v109;
      if (!v109 || (v110 & 1) == 0)
      {
        goto LABEL_169;
      }

      v78 = v111;
    }

    else
    {
      re::DynamicString::format("Failed to compile -- no compiler for files with extension %s", &v107, v62);
      re::internal::AssetLoadItem::setFailure(a1, &v107);
      v77 = v107;
      if (!v107 || (BYTE8(v107) & 1) == 0)
      {
        goto LABEL_169;
      }

      v78 = v108;
    }

    (*(*v77 + 40))(v77, v78);
LABEL_169:
    v35 = *v106;
    if (*v106 && (v106[8] & 1) != 0)
    {
      v35 = (*(**v106 + 40))();
    }

    v57 = *(a1 + 96);
    goto LABEL_173;
  }

  v93 = v6;
  v18 = re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(&v107, (a1 + 200));
  v19 = *(a1 + 240);
  v111 = v19;
  if (v19)
  {
    v18 = v19 + 8;
  }

  v112 = *(a1 + 248);
  v105 = 0;
  v103 = 0;
  cf = 0uLL;
  v104 = 0;
  if (v108)
  {
    v20 = v110;
    v21 = v110 + 144 * v108;
    do
    {
      if (*(v20 + 8))
      {
        v22 = *(v20 + 16);
      }

      else
      {
        v22 = (v20 + 9);
      }

      ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(a1 + 88), v22);
      if (ProviderForScheme)
      {
        v24 = ProviderForScheme;
        if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
        {
          dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
        }

        if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
        {
          v25 = *re::assetsLogObjects(ProviderForScheme);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v20 + 8))
            {
              v26 = *(v20 + 16);
            }

            else
            {
              v26 = v20 + 9;
            }

            buf[0].numer = 136315138;
            *&buf[0].denom = v26;
            _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Loading requested descriptor of type '%s'", buf, 0xCu);
          }
        }

        (*(*v24 + 40))(buf, v24, v20, v112, &v98, v111);
        numer = buf[0].numer;
        if (buf[0].numer)
        {
          *(a1 + 128) = buf[7];
          *(a1 + 136) = buf[8].numer;
          v30 = buf[6];
          *(a1 + 96) = buf[5];
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 104), v30);
        }

        else
        {
          if (*(v20 + 8))
          {
            v31 = *(v20 + 16);
          }

          else
          {
            v31 = v20 + 9;
          }

          if (buf[2].numer)
          {
            v32 = buf[3];
          }

          else
          {
            v32 = &buf[2] + 1;
          }

          re::DynamicString::format("Asset provider load failed: type '%s' -- %s", v106, v31, v32);
          v33 = re::DynamicArray<re::DynamicString>::add(&cf, v106);
          if (*v106 && (v106[8] & 1) != 0)
          {
            (*(**v106 + 40))(v33);
          }
        }

        if (LOBYTE(buf[0].numer) == 1 && *&buf[6])
        {

          buf[6] = 0;
        }

        v18 = buf[1];
        if (*&buf[1] && (buf[2].numer & 1) != 0)
        {
          v18 = (*(**&buf[1] + 40))();
        }

        if (numer)
        {
          break;
        }
      }

      else
      {
        if (*(v20 + 8))
        {
          v27 = *(v20 + 16);
        }

        else
        {
          v27 = v20 + 9;
        }

        re::DynamicString::format("No asset provider found: type '%s'", buf, v27);
        v28 = re::DynamicArray<re::DynamicString>::add(&cf, buf);
        v18 = buf[0];
        if (*buf && (buf[1].numer & 1) != 0)
        {
          v18 = (*(**buf + 40))(v28);
        }
      }

      v20 += 144;
    }

    while (v20 != v21);
  }

  if (*(a1 + 96))
  {
    re::DynamicArray<re::DynamicString>::deinit(&cf);
    if (v111)
    {

      v111 = 0;
    }

    v39 = re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v107);
    v7 = v93;
    goto LABEL_188;
  }

  v45 = v103;
  *&v95.__r_.__value_.__r.__words[1] = 0uLL;
  v96 = 0;
  re::DynamicString::setCapacity(&v95, 0);
  if (v45)
  {
    v46 = 0;
    for (i = 0; i != v45; ++i)
    {
      v48 = v103;
      if (v103 <= i)
      {
        v100 = 0;
        memset(buf, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v106 = 136315906;
        *&v106[4] = "operator[]";
        *&v106[12] = 1024;
        *&v106[14] = 789;
        *&v106[18] = 2048;
        *&v106[20] = i;
        *&v106[28] = 2048;
        *&v106[30] = v48;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v49 = v105 + v46;
      if (*(v105 + v46 + 8))
      {
        v50 = *(v49 + 16);
      }

      else
      {
        v50 = (v49 + 9);
      }

      v51 = strlen(v50);
      re::DynamicString::append(&v95, v50, v51);
      if (i < v45 - 1)
      {
        re::DynamicString::append(&v95, "; ", 2uLL);
      }

      v46 += 32;
    }
  }

  re::internal::AssetLoadItem::setFailure(a1, &v95);
  if (a2)
  {
    (*(*a2 + 96))(a2, *(a1 + 64), a1);
  }

  if (v95.__r_.__value_.__r.__words[0] && (v95.__r_.__value_.__s.__data_[8] & 1) != 0)
  {
    (*(*v95.__r_.__value_.__l.__data_ + 40))();
  }

  re::DynamicArray<re::DynamicString>::deinit(&cf);
  if (v111)
  {

    v111 = 0;
  }

  re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v107);
LABEL_206:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v99);
}

void re::internal::AssetBackgroundLoader::onActiveTaskDone(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *re::assetsLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 40))
    {
      v22 = *(a2 + 48);
    }

    else
    {
      v22 = a2 + 41;
    }

    if (*(a2 + 136))
    {
      v23 = *(a2 + 128);
    }

    else
    {
      v23 = 0;
    }

    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = v22;
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v23;
    _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "Finished background processing of asset '%s', asset file size: %llu", buf, 0x16u);
  }

  v7.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v7.__d_.__rep_ - *(a2 + 432) >= 1000000 && re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    kdebug_trace();
  }

  if (a3 == 1)
  {
    os_unfair_lock_lock((a1 + 680));
  }

  v8 = *(a1 + 424);
  v9 = *(a1 + 408);
  v10 = v8;
  if (v9)
  {
    v11 = 8 * v9;
    v10 = *(a1 + 424);
    while (*v10 != a2)
    {
      v10 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = &v8[8 * v9];
  if (v10 != v12)
  {
    v13 = v10 - v8;
    if (v9 <= v13 >> 3)
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v9 - 1 > v13 >> 3)
    {
      *&v8[v13] = *(v12 - 1);
    }

    *(a1 + 408) = v9 - 1;
    ++*(a1 + 416);
  }

LABEL_18:
  buf[0] = a2;
  v14 = re::Queue<re::internal::AssetLoadItem *>::enqueue((a1 + 520), buf);
  v15 = *(a1 + 152);
  if (v15)
  {
    v16 = *(a1 + 408);
    v17 = *(*(*(a1 + 176) + 8 * *(a1 + 160)) + 424);
    if (a3 == 1)
    {
      os_unfair_lock_unlock((a1 + 680));
    }

    if (v7.__d_.__rep_ - v17 >= 5000000)
    {
      v18 = *re::assetsLogObjects(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a2 + 40);
        v20 = *(a2 + 48);
        LODWORD(buf[0]) = 136315906;
        if (v19)
        {
          v21 = v20;
        }

        else
        {
          v21 = a2 + 41;
        }

        *(buf + 4) = v21;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = (v7.__d_.__rep_ - v17) / 1000;
        HIWORD(buf[2]) = 2048;
        buf[3] = v15;
        LOWORD(v25) = 2048;
        *(&v25 + 2) = v16;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Asset '%s' has been in pending state in Asset Background Loader for '%lld' ms, pending queue size is '%zu', active queue size is '%zu", buf, 0x2Au);
      }
    }
  }

  else if (a3 == 1)
  {
    os_unfair_lock_unlock((a1 + 680));
  }
}

void re::internal::AssetBackgroundLoader::unloadAsset(re::internal::AssetBackgroundLoader *this, re::internal::AssetLoadItem *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v22, 2010, this);
  v3 = mach_absolute_time();
  if (*(this + 8))
  {
    v4 = *(this + 9);
    *info = *(this + 8);
    v5 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v4, info);
    v6 = (*(**v5 + 128))(*v5);
    v7 = *v5;
    v8 = *(this + 12);
    v9 = *re::assetsLogObjects(v6);
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        if (*(this + 5))
        {
          v20 = *(this + 6);
        }

        else
        {
          v20 = this + 41;
        }

        *info = 136315138;
        *&info[4] = v20;
        _os_log_debug_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEBUG, "Unloading asset '%s'", info, 0xCu);
      }

      (*(*v7 + 16))(v7, *(this + 12));
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 5))
      {
        v21 = *(this + 6);
      }

      else
      {
        v21 = this + 41;
      }

      *info = 136315138;
      *&info[4] = v21;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to unload asset '%s': assetPointer is NULL", info, 0xCu);
    }
  }

  v10 = mach_absolute_time();
  v11 = v10;
  v12 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale >= 0.0)
  {
    goto LABEL_10;
  }

  v10 = mach_timebase_info(info);
  if (!v10)
  {
    LODWORD(v13) = *info;
    LODWORD(v14) = *&info[4];
    v12 = v13 / v14;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v12;
LABEL_10:
    v15 = v12 * (v11 - v3);
    goto LABEL_11;
  }

  v15 = NAN;
LABEL_11:
  v16 = v15 / 1000000.0;
  if (v15 / 1000000.0 > 1000.0)
  {
    v17 = *re::assetsLogObjects(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 5))
      {
        v18 = *(this + 6);
      }

      else
      {
        v18 = this + 41;
      }

      *info = 134218498;
      *&info[4] = this;
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Asset(%llu) '%s' took '%.0f' ms to unload", info, 0x20u);
    }
  }

  *(this + 36) = 4;
  v19 = *(this + 13);
  if (v19)
  {

    *(this + 13) = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v22);
}

void re::internal::AssetBackgroundLoader::startPendingLoadItems(os_unfair_lock_s *a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    os_unfair_lock_lock(a1 + 170);
  }

  v3.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (*&a1[102]._os_unfair_lock_opaque < a1->_os_unfair_lock_opaque)
  {
    rep = v3.__d_.__rep_;
    do
    {
      v6 = *&a1[70]._os_unfair_lock_opaque;
      v7 = &a1[66];
      if (!v6)
      {
        v7 = &a1[34];
        if (!*&a1[38]._os_unfair_lock_opaque)
        {
          break;
        }
      }

      v8 = re::Queue<re::internal::AssetLoadItem *>::dequeue(v7, v4.__d_.__rep_);
      v9 = v8;
      v10 = rep - *(v8 + 53);
      if (v10 >= 300000)
      {
        v11 = *re::assetsLogObjects(v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = "";
          if (v6)
          {
            v12 = "Priority ";
          }

          if (*(v9 + 40))
          {
            v13 = *(v9 + 48);
          }

          else
          {
            v13 = v9 + 41;
          }

          v14 = *&a1[70]._os_unfair_lock_opaque;
          v15 = *&a1[38]._os_unfair_lock_opaque;
          v16 = *&a1[102]._os_unfair_lock_opaque;
          v17 = *&a1[134]._os_unfair_lock_opaque;
          *buf = 136316674;
          v20 = v12;
          v21 = 2080;
          v22 = v13;
          v23 = 2048;
          v24 = v10 / 1000;
          v25 = 2048;
          v26 = v14;
          v27 = 2048;
          v28 = v15;
          v29 = 2048;
          v30 = v16;
          v31 = 2048;
          v32 = v17;
          _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "%sAsset '%s' has been in pending state in Asset Background Loader for '%lld' ms, started loading now\nPending Priority: %zu, Pending Normal: %zu, Active: %zu, Done: %zu", buf, 0x48u);
        }
      }

      re::internal::AssetBackgroundLoader::startBackgroundTask(a1, v9, 0, v6 != 0);
    }

    while (*&a1[102]._os_unfair_lock_opaque < a1->_os_unfair_lock_opaque);
  }

  if (a2 == 1)
  {
    os_unfair_lock_unlock(a1 + 170);
  }
}

void *re::Queue<re::internal::AssetLoadItem *>::enqueue(void *this, void *a2)
{
  v3 = this;
  v5 = this[1];
  v4 = this[2];
  v6 = v4 + 1;
  if (v4 + 1 >= v5)
  {
    this = re::Queue<re::internal::AssetLoadItem *>::growCapacity(this, v6);
    v5 = v3[1];
    v4 = v3[2];
    v6 = v4 + 1;
  }

  *(v3[5] + 8 * ((v3[3] + v4) % v5)) = *a2;
  v3[2] = v6;
  ++*(v3 + 8);
  return this;
}

void re::internal::AssetBackgroundLoader::prepareBackgroundTask(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 144);
  if ((*(a1 + 4) & 1) == 0 && !v6)
  {
    re::internal::AssetBackgroundLoader::loadAsset(a2, *(a1 + 664));
    goto LABEL_7;
  }

  if ((*(a1 + 5) & 1) == 0 && v6 == 1)
  {
    re::internal::AssetBackgroundLoader::unloadAsset(a2, a2);
LABEL_7:
    if (a3 == 1)
    {
      os_unfair_lock_lock((a1 + 680));
      *v12 = a2;
      re::Queue<re::internal::AssetLoadItem *>::enqueue((a1 + 520), v12);

      os_unfair_lock_unlock((a1 + 680));
    }

    else
    {
      *v12 = a2;
      re::Queue<re::internal::AssetLoadItem *>::enqueue((a1 + 520), v12);
    }

    return;
  }

  v7 = *re::assetsLogObjects(a1);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      if (*(a2 + 40))
      {
        v10 = *(a2 + 48);
      }

      else
      {
        v10 = a2 + 41;
      }

      *v12 = 136315138;
      *&v12[4] = v10;
      v9 = 2;
      _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "Starting background unload of asset '%s'", v12, 0xCu);
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    if (v8)
    {
      if (*(a2 + 40))
      {
        v11 = *(a2 + 48);
      }

      else
      {
        v11 = a2 + 41;
      }

      *v12 = 136315138;
      *&v12[4] = v11;
      _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "Starting background load of asset '%s'", v12, 0xCu);
    }

    v9 = 1;
  }

  atomic_store(v9, (a2 + 384));
  *(a2 + 432) = std::chrono::system_clock::now();
  if (a3 == 1)
  {
    os_unfair_lock_lock((a1 + 680));
    *v12 = a2;
    re::DynamicArray<re::RigDataValue *>::add((a1 + 392), v12);
    os_unfair_lock_unlock((a1 + 680));
  }

  else
  {
    *v12 = a2;
    re::DynamicArray<re::RigDataValue *>::add((a1 + 392), v12);
  }
}

void re::internal::AssetBackgroundLoader::startBackgroundTask(uint64_t a1, uint64_t a2, int a3, int a4)
{
  re::internal::AssetBackgroundLoader::prepareBackgroundTask(a1, a2, a3);
  if (*(a1 + 4) == 1 && *(a1 + 5) == 1)
  {
    dispatch_group_enter(*(a1 + 704));
    v7 = (a2 + 8);
    v8 = 688;
    if (a4)
    {
      v8 = 696;
    }

    v9 = *(a1 + v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZN2re8internal21AssetBackgroundLoader19startBackgroundTaskERNS0_13AssetLoadItemENS1_9LockStateEb_block_invoke;
    v10[3] = &__block_descriptor_tmp_6;
    v10[4] = a1;
    v10[5] = a2;
    dispatch_async(v9, v10);
  }
}

void ___ZN2re8internal21AssetBackgroundLoader19startBackgroundTaskERNS0_13AssetLoadItemENS1_9LockStateEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  re::internal::AssetBackgroundLoader::runIfNeeded(v2, *(a1 + 40));

  v3 = *(v2 + 88);

  dispatch_group_leave(v3);
}

void re::internal::AssetBackgroundLoader::queueOrStartBackgroundTask(os_unfair_lock_s *this, std::chrono::system_clock::time_point *a2, const char *a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 170);
  if (*&this[102]._os_unfair_lock_opaque >= this->_os_unfair_lock_opaque)
  {
    if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
    }

    if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
    {
      v9 = *re::assetsLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[5].__d_.__rep_)
        {
          rep = a2[6].__d_.__rep_;
        }

        else
        {
          rep = &a2[5].__d_.__rep_ + 1;
        }

        *v12 = 136315394;
        *&v12[4] = a3;
        v13 = 2080;
        v14 = rep;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Deferring background %s of asset '%s'", v12, 0x16u);
      }
    }

    a2[53].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    *v12 = a2;
    if (a4)
    {
      v11 = this + 66;
    }

    else
    {
      v11 = this + 34;
    }

    re::Queue<re::internal::AssetLoadItem *>::enqueue(v11, v12);
    os_unfair_lock_unlock(this + 170);
  }

  else
  {
    os_unfair_lock_unlock(this + 170);

    re::internal::AssetBackgroundLoader::startBackgroundTask(this, a2, 1, a4);
  }
}

void re::internal::AssetBackgroundLoader::loadAssetAsync(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int a7@<W6>, re::internal::AssetLoadItem **a8@<X8>)
{
  re::make::shared::object<re::internal::AssetLoadItem>(a1, a8);
  v16 = *a8;
  *(v16 + 3) = a2;
  *(v16 + 8) = a3;
  *(v16 + 12) = 0;
  *(v16 + 36) = 0;
  v17 = *(a1 + 82);
  *(v16 + 9) = *(a1 + 80);
  *(v16 + 10) = 0;
  *(v16 + 11) = v17;
  v18 = *a5;
  *a5 = 0;
  v19 = *a6;
  if (v19)
  {
    v20 = (v19 + 8);
  }

  LOBYTE(v24) = 1;
  v25 = v18;
  v26 = a4;
  v27 = v19;
  re::Optional<re::internal::AssetLoadItem::PayloadSource>::operator=(*a8 + 352, &v24);
  re::Optional<re::internal::AssetLoadItem::PayloadSource>::~Optional(&v24);
  v21 = *a8;
  v22 = *(*a8 + 5);
  if (v22)
  {
    v23 = v22 >> 1;
  }

  else
  {
    v23 = v22 >> 1;
  }

  if (!v23)
  {
    re::DynamicString::format("#%llu", &v24, a4);
    re::DynamicString::operator=((*a8 + 32), &v24);
    if (v24 && (v25 & 1) != 0)
    {
      (*(*v24 + 40))();
    }

    v21 = *a8;
  }

  re::internal::AssetBackgroundLoader::queueOrStartBackgroundTask(a1, v21, "load", a7);
}

uint64_t re::Optional<re::internal::AssetLoadItem::PayloadSource>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      if (a1 != a2)
      {
        v4 = *(a2 + 8);
        *(a2 + 8) = 0;
        v5 = *(a1 + 8);
        *(a1 + 8) = v4;
      }

      v6 = *(a1 + 24);
      v7 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v7;
      *(a2 + 24) = v6;
    }

    else
    {
      v10 = *(a1 + 24);
      if (v10)
      {

        *(a1 + 24) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  return a1;
}

void re::internal::AssetBackgroundLoader::loadAssetAsync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, re::internal::AssetLoadItem **a7@<X8>)
{
  re::make::shared::object<re::internal::AssetLoadItem>(a1, a7);
  v14 = *a7;
  *(v14 + 3) = a2;
  *(v14 + 8) = a3;
  *(v14 + 12) = 0;
  *(v14 + 36) = 0;
  v15 = *(a1 + 656);
  *(v14 + 9) = *(a1 + 640);
  *(v14 + 10) = 0;
  *(v14 + 11) = v15;
  re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(&v34, a5);
  v17 = *a6;
  *(&v37 + 1) = v17;
  if (v17)
  {
    v18 = (v17 + 8);
    v17 = *(&v37 + 1);
  }

  v38 = a4;
  LOBYTE(v39) = 1;
  v19 = v34;
  v20 = v35;
  v34 = 0;
  v40 = v19;
  v21 = *(&v35 + 1);
  v41 = v35;
  v35 = 0u;
  v22 = v37;
  ++v36;
  v42 = 1;
  v43 = v37;
  v44 = v17;
  v37 = 0u;
  v45 = a4;
  v23 = *a7;
  if (*(*a7 + 192))
  {
    if ((*a7 + 192) != &v39)
    {
      v24 = *(v23 + 25);
      if (v24 && v19 && v24 != v19)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
        _os_crash();
        __break(1u);
        return;
      }

      v40 = *(v23 + 25);
      v25 = *(v23 + 13);
      *(v23 + 25) = v19;
      *(v23 + 26) = v20;
      *(v23 + 27) = v21;
      v41 = v25;
      v26 = *(v23 + 29);
      *(v23 + 29) = v22;
      v43 = v26;
      v42 = 2;
      ++*(v23 + 56);
    }

    v27 = *(v23 + 30);
  }

  else
  {
    v27 = 0;
    *(v23 + 192) = 1;
    *(v23 + 25) = v19;
    *(v23 + 26) = v20;
    *(v23 + 27) = v21;
    v41 = 0uLL;
    v40 = 0;
    *(v23 + 29) = v22;
    v43 = 0;
    v42 = 2;
    *(v23 + 56) = 1;
  }

  v44 = v27;
  *(v23 + 30) = v17;
  *(v23 + 31) = a4;
  re::Optional<re::internal::AssetLoadItem::DescriptorSource>::~Optional(&v39);
  if (*(&v37 + 1))
  {

    *(&v37 + 1) = 0;
  }

  re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v34);
  if (a5[2])
  {
    v28 = a5[4];
    v29 = (*(v28 + 8) & 1) != 0 ? *(v28 + 16) : (v28 + 9);
    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(a1 + 656), v29);
    if (ProviderForScheme)
    {
      (*(*ProviderForScheme + 72))(ProviderForScheme, v28, *a7 + 32);
    }
  }

  v31 = *a7;
  v32 = *(*a7 + 5);
  if (v32)
  {
    v33 = v32 >> 1;
  }

  else
  {
    v33 = v32 >> 1;
  }

  if (!v33)
  {
    re::DynamicString::format("#%llu", &v39, a4);
    re::DynamicString::operator=((*a7 + 32), &v39);
    if (v39)
    {
      if (v40)
      {
        (*(*v39 + 40))();
      }
    }

    v31 = *a7;
  }

  re::internal::AssetBackgroundLoader::queueOrStartBackgroundTask(a1, v31, "load", 0);
}

void re::internal::AssetBackgroundLoader::loadAssetAsync(re::internal::AssetBackgroundLoader *this@<X0>, void *a2@<X1>, const re::AssetType *a3@<X2>, const re::AssetPath *a4@<X3>, re::internal::AssetLoadItem **a5@<X8>)
{
  re::make::shared::object<re::internal::AssetLoadItem>(this, a5);
  v10 = *a5;
  *(v10 + 3) = a2;
  *(v10 + 8) = a3;
  *(v10 + 12) = 0;
  *(v10 + 36) = 0;
  v11 = *(this + 82);
  *(v10 + 9) = *(this + 80);
  *(v10 + 10) = 0;
  *(v10 + 11) = v11;
  v16 = *a4;
  re::DynamicString::DynamicString(&v17, (a4 + 8));
  re::DynamicString::DynamicString(&v20, (a4 + 40));
  v12 = *(this + 81);
  v22 = *(a4 + 9);
  v23 = v12;
  LOBYTE(v24) = 1;
  LODWORD(v25) = v16;
  v26[0] = v17;
  v13 = v19;
  *&v26[1] = v18;
  v19 = 0;
  v17 = 0;
  v18 = 0uLL;
  v26[3] = v13;
  v27 = v20;
  v14 = *(&v21 + 1);
  *&v28 = v21;
  v21 = 0uLL;
  v20 = 0uLL;
  *(&v28 + 1) = v14;
  v29 = v22;
  v30 = v12;
  re::Optional<re::internal::AssetLoadItem::LegacySource>::operator=(*a5 + 256, &v24);
  if (v24 == 1)
  {
    if (v27)
    {
      if (BYTE8(v27))
      {
        (*(*v27 + 40))();
      }

      v27 = 0u;
      v28 = 0u;
    }

    if (v26[0])
    {
      if (v26[1])
      {
        (*(*v26[0] + 40))();
      }

      memset(v26, 0, sizeof(v26));
    }
  }

  if (v20)
  {
    if (BYTE8(v20))
    {
      (*(*v20 + 40))();
    }

    v21 = 0u;
    v20 = 0u;
  }

  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  v15 = *(a4 + 1);
  v26[0] = 0;
  v26[1] = 0;
  v24 = v15;
  v25 = 0;
  re::DynamicString::setCapacity(&v24, 0);
  re::AssetPath::fullAssetPath(a4, &v24);
  re::DynamicString::operator=((*a5 + 32), &v24);
  if (v24 && (v25 & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  re::internal::AssetBackgroundLoader::queueOrStartBackgroundTask(this, *a5, "load", 0);
}