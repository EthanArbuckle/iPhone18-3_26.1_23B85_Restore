double re::AssetManager::AssetManager(re::AssetManager *this)
{
  *this = &unk_1F5CB86B8;
  *(this + 1) = &unk_1F5CB8898;
  *(this + 7) = 0;
  *(this + 2) = &unk_1F5CB88B0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 172) = 0x7FFFFFFFLL;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  *(this + 220) = 0x7FFFFFFFLL;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 268) = 0x7FFFFFFFLL;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 43) = 0;
  *(this + 88) = 0;
  *(this + 328) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 388) = 0u;
  *(this + 404) = 0x7FFFFFFFLL;
  *(this + 128) = 0;
  *(this + 69) = 0;
  *(this + 67) = 0;
  *(this + 136) = 0;
  *(this + 520) = 0u;
  *(this + 160) = 0;
  *(this + 85) = 0;
  *(this + 168) = 0;
  *(this + 83) = 0;
  *(this + 648) = 0u;
  *(this + 768) = 0;
  *(this + 97) = 0;
  *(this + 224) = 0;
  *(this + 118) = 0;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 234) = 0;
  *(this + 128) = 0;
  *(this + 1032) = 0;
  *(this + 320) = 0;
  *(this + 165) = 0;
  *(this + 163) = 0;
  *(this + 328) = 0;
  *(this + 1288) = 0u;
  *(this + 176) = 0;
  *(this + 384) = 0;
  *(this + 197) = 0;
  *(this + 392) = 0;
  *(this + 195) = 0;
  *(this + 1544) = 0u;
  *(this + 416) = 0;
  *(this + 213) = 0;
  *(this + 424) = 0;
  *(this + 211) = 0;
  *(this + 1672) = 0u;
  *(this + 448) = 0;
  *(this + 65) = 0u;
  *(this + 470) = 0;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 1816) = 0u;
  *(this + 1832) = 0u;
  *(this + 1800) = 0u;
  *(this + 1884) = 0x7FFFFFFFLL;
  *(this + 512) = 0;
  *(this + 261) = 0;
  *(this + 520) = 0;
  *(this + 259) = 0;
  *(this + 2056) = 0u;
  *(this + 1088) = 0;
  *(this + 2178) = 0;
  *(this + 253) = 0;
  *(this + 1992) = 0u;
  *(this + 2008) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 1896) = 0u;
  *(this + 1912) = 0u;
  *(this + 2200) = 0;
  *(this + 2184) = 0u;
  *(this + 276) = -1;
  *(this + 2220) = 0;
  *(this + 554) = 0;
  *(this + 278) = -1;
  *(this + 1116) = 0;
  *(this + 2234) = 0;
  *(this + 140) = xmmword_1E3058110;
  *(this + 2256) = 0;
  *(this + 2264) = 0;
  *(this + 584) = 0;
  *(this + 145) = 0u;
  *(this + 144) = 0u;
  *(this + 143) = 0u;
  *(this + 142) = 0u;
  *(this + 2340) = 0x7FFFFFFFLL;
  *(this + 298) = 0;
  *(this + 594) = 0;
  *(this + 296) = 0;
  *(this + 147) = 0u;
  *(this + 608) = 0;
  *(this + 2440) = 0u;
  *(this + 614) = 1;
  *(this + 154) = 0u;
  *(this + 1280) = 0;
  *(this + 2584) = 0;
  *(this + 2568) = 0u;
  return result;
}

void re::AssetManager::~AssetManager(re::AssetManager *this)
{
  v2 = *(this + 321);
  if (v2)
  {

    *(this + 321) = 0;
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2440);
  v3 = *(this + 294);
  if (v3)
  {
    v4 = *(this + 298);
    if (v4)
    {
      v5 = *(this + 296);
      if (v5)
      {
        v6 = 40 * v5;
        do
        {
          re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v4);
          v4 += 40;
          v6 -= 40;
        }

        while (v6);
        v3 = *(this + 294);
        v4 = *(this + 298);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 298) = 0;
    *(this + 295) = 0;
    *(this + 296) = 0;
    *(this + 294) = 0;
    ++*(this + 594);
  }

  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 2056);
  v7 = *(this + 250);
  if (v7)
  {

    *(this + 250) = 0;
  }

  v8 = *(this + 249);
  if (v8)
  {

    *(this + 249) = 0;
  }

  v9 = *(this + 247);
  if (v9)
  {

    *(this + 247) = 0;
  }

  v10 = *(this + 246);
  if (v10)
  {

    *(this + 246) = 0;
  }

  v11 = *(this + 245);
  if (v11)
  {

    *(this + 245) = 0;
  }

  v12 = *(this + 243);
  if (v12)
  {

    *(this + 243) = 0;
  }

  v13 = *(this + 239);
  if (v13)
  {

    *(this + 239) = 0;
  }

  v14 = *(this + 237);
  if (v14)
  {

    *(this + 237) = 0;
  }

  re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::deinit(this + 231);
  re::DynamicArray<unsigned long>::deinit(this + 1672);
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 1544);

  re::DynamicArray<re::NetworkActionQueue::Action>::deinit(this + 1288);
  v15 = *(this + 131);
  if (v15)
  {

    *(this + 131) = 0;
  }

  re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::deinit(this + 113);

  v16 = *(this + 81);
  if (v16)
  {
    if (*(this + 85))
    {
      (*(*v16 + 40))(v16);
    }

    *(this + 85) = 0;
    *(this + 82) = 0;
    *(this + 83) = 0;
    *(this + 81) = 0;
    ++*(this + 168);
  }

  v17 = *(this + 65);
  if (v17)
  {
    v18 = *(this + 69);
    if (v18)
    {
      v19 = *(this + 67);
      if (v19)
      {
        v20 = 32 * v19;
        do
        {
          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v18);
          v18 += 32;
          v20 -= 32;
        }

        while (v20);
        v17 = *(this + 65);
        v18 = *(this + 69);
      }

      (*(*v17 + 40))(v17, v18);
    }

    *(this + 69) = 0;
    *(this + 66) = 0;
    *(this + 67) = 0;
    *(this + 65) = 0;
    ++*(this + 136);
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 46);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 328);
  re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(this + 35);
  re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(this + 29);
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 23);
  re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 17);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 24);
}

void re::AssetManager::init(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*a2);
  {
    if (v4)
    {
      re::introspect<re::AssetMap>(BOOL)::info = re::introspect_AssetMap(0);
    }
  }

  {
    if (v4)
    {
      re::introspect<re::DeduplicationInformation>(BOOL)::info = re::introspect_DeduplicationInformation(0);
    }
  }

  {
    if (v4)
    {
      re::introspect<re::RealityFileHeader>(BOOL)::info = re::introspect_RealityFileHeader(0);
    }
  }

  re::AssetUtilities::init(v4);
  *(a1 + 2200) = *(a2 + 40);
  *(a1 + 2208) = *(a2 + 48);
  *(a1 + 2216) = *(a2 + 68);
  if (*(a2 + 64))
  {
    v6 = 1;
  }

  else
  {
    re::Defaults::BOOLValue("calculateAssetNonSharedDataSize", v5, buf);
    v6 = buf[0] & buf[1] & 1;
  }

  *(a1 + 2217) = v6;
  *(a1 + 2218) = *(a2 + 67);
  re::Defaults::BOOLValue("preloadAssetsOnResourceSharingClients", v5, buf);
  if (buf[0])
  {
    v8 = buf[1];
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 2219) = v8;
  re::Defaults::BOOLValue("useXPCAssetPushLoading", v7, buf);
  if (buf[0])
  {
    v10 = buf[1];
  }

  else
  {
    v10 = 1;
  }

  *(a1 + 2220) = v10;
  if (*(a2 + 66) == 1)
  {
    *(a1 + 2220) = 0;
  }

  re::Defaults::BOOLValue("loadPeerAssetsOnlyFromDirectPeers", v9, buf);
  if (buf[0])
  {
    v12 = buf[1];
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 2232) = v12;
  re::Defaults::BOOLValue("loadPayloadOnEngineQueue", v11, buf);
  if (buf[0])
  {
    v14 = buf[1];
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 2233) = v14;
  re::Defaults::uint64Value("longRegistrationLogThresholdMilliseconds", v13, buf);
  v15 = 1000;
  if (buf[0])
  {
    v15 = v155;
  }

  *(a1 + 2240) = v15;
  v16 = *(a2 + 8);
  *(a1 + 1984) = v16;
  re::ObjCObject::operator=((a1 + 776), a2);
  v153 = *(a1 + 776);
  re::internal::EngineQueueCheck::init((a1 + 1408), &v153);

  v18 = re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::setCapacity((a1 + 904), 0x20uLL);
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  v19 = re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity((a1 + 1544), 0x20uLL);
  ++*(a1 + 1568);
  v20 = re::DynamicArray<float *>::setCapacity((a1 + 2056), 0x10uLL);
  ++*(a1 + 2080);
  v21 = re::globalAllocators(v20);
  v22 = (*(*v21[2] + 32))(v21[2], 136, 8);
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 36) = 0x7FFFFFFF;
  *(v22 + 80) = 0x7FFFFFFF00000000;
  *(v22 + 128) = 0;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 120) = 0;
  *(v22 + 112) = 0;
  *(a1 + 1808) = v22;
  v23 = re::globalAllocators(v22);
  v24 = (*(*v23[2] + 32))(v23[2], 96, 8);
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = &unk_1F5D0DF40;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 68) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 84) = 0x7FFFFFFF;
  *(a1 + 1816) = v24;
  *(a1 + 1832) = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(v16);
  v25 = re::AssetHelper::registerDefaultAssetCompilers(*(a1 + 1816), v16, *(a2 + 24) | 0x100u);
  v26 = re::globalAllocators(v25);
  v27 = (*(*v26[2] + 32))(v26[2], 256, 128);
  *(v27 + 192) = 0u;
  *(v27 + 208) = 0u;
  *(v27 + 160) = 0u;
  *(v27 + 176) = 0u;
  *(v27 + 224) = 0u;
  *(v27 + 240) = 0u;
  *(v27 + 128) = 0u;
  *(v27 + 144) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 112) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 172) = 0x7FFFFFFF;
  *(v27 + 200) = 0u;
  *(v27 + 184) = 0u;
  *(v27 + 216) = 0;
  *(v27 + 220) = 0x7FFFFFFF;
  *(a1 + 1904) = v27;
  *v27 = *(a1 + 1808);
  *(v27 + 16) = v27;
  v28 = *(a2 + 56);
  if (!v28)
  {
    if (*(a1 + 1832))
    {
      v28 = 10000000;
    }

    else
    {
      v28 = 500000000;
    }
  }

  *(a1 + 2224) = v28;
  *(a1 + 1936) = *(a2 + 32);
  v29 = re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(v16);
  *(a1 + 1920) = v29;
  if (v29)
  {
    v30 = re::globalAllocators(v29);
    v31 = (*(*v30[2] + 32))(v30[2], 16, 8);
    *v31 = &unk_1F5CB89C0;
    v31[1] = a1;
    *(a1 + 1040) = v31;
    (*(**(a1 + 1920) + 208))(*(a1 + 1920), v31);
  }

  else
  {
    v32 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "No NetworkAssetService available! Cannot share dependencies over network.", buf, 2u);
    }
  }

  Request = re::ServiceLocator::serviceOrNull<re::NetworkSendBlockingAssetLoadRequestService>(v16);
  *(a1 + 1928) = Request;
  v34 = re::globalAllocators(Request);
  v35 = (*(*v34[2] + 32))(v34[2], 48, 8);
  v36 = re::NetworkAssetProvider::NetworkAssetProvider(v35, *(a1 + 1920), *(a1 + 1904), *(a1 + 1808));
  v37 = *(a1 + 1912);
  *(a1 + 1912) = v36;
  if (v37)
  {

    v36 = *(a1 + 1912);
  }

  v38 = *(a1 + 1904);
  v152 = v36;
  if (v36)
  {
    v39 = v36 + 8;
    v40 = v152;
    v41 = re::AssetProviderRegistry::registerAssetProvider(v38, &v152);
    if (v40)
    {

      v152 = 0;
    }
  }

  else
  {
    v41 = re::AssetProviderRegistry::registerAssetProvider(v38, &v152);
  }

  v42 = re::globalAllocators(v41);
  v43 = (*(*v42[2] + 32))(v42[2], 128, 128);
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *(v43 + 64) = 0u;
  *(v43 + 80) = 0u;
  *(v43 + 96) = 0u;
  *(v43 + 112) = 0u;
  *(v43 + 44) = 0x7FFFFFFF;
  *(a1 + 2016) = v43;
  v44 = re::globalAllocators(v43);
  v45 = (*(*v44[2] + 32))(v44[2], 56, 8);
  v46 = re::FrameworkAssetProvider::FrameworkAssetProvider(v45, *(a1 + 1904), *(a1 + 1808), *(a1 + 1816), *(a1 + 2016));
  v47 = *(a1 + 1944);
  *(a1 + 1944) = v46;
  if (v47)
  {

    v46 = *(a1 + 1944);
  }

  v48 = *(a1 + 1904);
  v151 = v46;
  if (v46)
  {
    v49 = v46 + 8;
    v50 = v151;
    v51 = re::AssetProviderRegistry::registerAssetProvider(v48, &v151);
    if (v50)
    {

      v151 = 0;
    }
  }

  else
  {
    v51 = re::AssetProviderRegistry::registerAssetProvider(v48, &v151);
  }

  v52 = re::globalAllocators(v51);
  v53 = (*(*v52[2] + 32))(v52[2], 128, 128);
  *v53 = 0u;
  *(v53 + 16) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 96) = 0u;
  *(v53 + 112) = 0u;
  *(v53 + 44) = 0x7FFFFFFF;
  *(a1 + 2008) = v53;
  v54 = re::globalAllocators(v53);
  v55 = (*(*v54[2] + 32))(v54[2], 56, 8);
  v56 = re::NamedFileAssetProvider::NamedFileAssetProvider(v55, *(a1 + 2008), *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v57 = *(a1 + 2000);
  *(a1 + 2000) = v56;
  if (v57)
  {

    v56 = *(a1 + 2000);
  }

  v58 = *(a1 + 1904);
  v150 = v56;
  if (v56)
  {
    v59 = v56 + 8;
    v60 = v150;
    v61 = re::AssetProviderRegistry::registerAssetProvider(v58, &v150);
    if (v60)
    {

      v150 = 0;
    }
  }

  else
  {
    v61 = re::AssetProviderRegistry::registerAssetProvider(v58, &v150);
  }

  v62 = re::globalAllocators(v61);
  v63 = (*(*v62[2] + 32))(v62[2], 80, 8);
  *(v63 + 16) = 0u;
  *(v63 + 32) = 0u;
  *v63 = 0u;
  *(v63 + 36) = 0x7FFFFFFF;
  *(v63 + 72) = 0;
  *(v63 + 64) = 0;
  *(v63 + 48) = 0;
  *(v63 + 56) = v63 + 64;
  *(a1 + 2024) = v63;
  v64 = re::globalAllocators(v63);
  v65 = (*(*v64[2] + 32))(v64[2], 48, 8);
  v66 = re::NamedAssetProvider::NamedAssetProvider(v65, *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v67 = *(a1 + 1992);
  *(a1 + 1992) = v66;
  if (v67)
  {

    v66 = *(a1 + 1992);
  }

  v68 = *(a1 + 1904);
  v149 = v66;
  if (v66)
  {
    v69 = v66 + 8;
    v70 = v149;
    v71 = re::AssetProviderRegistry::registerAssetProvider(v68, &v149);
    if (v70)
    {

      v149 = 0;
    }
  }

  else
  {
    v71 = re::AssetProviderRegistry::registerAssetProvider(v68, &v149);
  }

  v72 = re::globalAllocators(v71);
  v73 = (*(*v72[2] + 32))(v72[2], 136, 8);
  *v73 = 0u;
  *(v73 + 16) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 48) = 0u;
  *(v73 + 96) = 0u;
  *(v73 + 112) = 0u;
  *(v73 + 64) = 0u;
  *(v73 + 80) = 0u;
  *(v73 + 128) = 0;
  *(v73 + 8) = v73 + 8;
  *(v73 + 16) = v73 + 8;
  *(v73 + 52) = 0u;
  *(v73 + 40) = 0u;
  *(v73 + 24) = 0u;
  *(v73 + 68) = 0x7FFFFFFF;
  *(v73 + 108) = 0u;
  *(v73 + 124) = 0x7FFFFFFF;
  *(a1 + 1952) = v73;
  re::RealityFileRegistry::init(v73);
  v75 = re::globalAllocators(v74);
  v76 = (*(*v75[2] + 32))(v75[2], 280, 8);
  v77 = re::RealityFileAssetProvider::RealityFileAssetProvider(v76, *(a1 + 1952), *(a1 + 1808), *(a1 + 1904), *(a1 + 2008), *(a1 + 2016));
  v78 = *(a1 + 1960);
  *(a1 + 1960) = v77;
  if (v78)
  {

    v77 = *(a1 + 1960);
  }

  v79 = *(a1 + 1904);
  v148 = v77;
  if (v77)
  {
    v80 = (v77 + 8);
    v81 = v148;
    v82 = re::AssetProviderRegistry::registerAssetProvider(v79, &v148);
    if (v81)
    {

      v148 = 0;
    }
  }

  else
  {
    v82 = re::AssetProviderRegistry::registerAssetProvider(v79, &v148);
  }

  v83 = re::globalAllocators(v82);
  v84 = (*(*v83[2] + 32))(v83[2], 48, 8);
  v85 = re::FileAssetProvider::FileAssetProvider(v84, *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v86 = *(a1 + 1968);
  *(a1 + 1968) = v85;
  if (v86)
  {

    v85 = *(a1 + 1968);
  }

  v87 = *(a1 + 1904);
  v147 = v85;
  if (v85)
  {
    v88 = v85 + 8;
    v89 = v147;
    v90 = re::AssetProviderRegistry::registerAssetProvider(v87, &v147);
    if (v89)
    {

      v147 = 0;
    }
  }

  else
  {
    v90 = re::AssetProviderRegistry::registerAssetProvider(v87, &v147);
  }

  v91 = re::globalAllocators(v90);
  v92 = (*(*v91[2] + 32))(v91[2], 48, 8);
  v93 = re::FallbackAssetProvider::FallbackAssetProvider(v92, *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v94 = *(a1 + 1976);
  *(a1 + 1976) = v93;
  if (v94)
  {

    v93 = *(a1 + 1976);
  }

  v95 = *(a1 + 1904);
  v146 = v93;
  if (v93)
  {
    v96 = v93 + 8;
    v97 = v146;
    v98 = re::AssetProviderRegistry::registerAssetProvider(v95, &v146);
    if (v97)
    {

      v146 = 0;
    }
  }

  else
  {
    v98 = re::AssetProviderRegistry::registerAssetProvider(v95, &v146);
  }

  v99 = re::globalAllocators(v98);
  v100 = (*(*v99[2] + 32))(v99[2], 24, 8);
  ArcSharedObject::ArcSharedObject(v100, 0);
  *v100 = &unk_1F5CB8AE8;
  {
    re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v142);
  }

  MemoryAssetProvider::s_loadDescriptorParametersIntrospect = re::introspect<re::DynamicString>(BOOL)::info;
  v101 = *(a1 + 1904);
  v145 = v100;
  v102 = v100 + 1;
  re::AssetProviderRegistry::registerAssetProvider(v101, &v145);

  v145 = 0;
  v104 = re::globalAllocators(v103);
  v105 = (*(*v104[2] + 32))(v104[2], 24, 8);
  v106 = re::PeerAssetProvider::PeerAssetProvider(v105);
  v107 = *(a1 + 1904);
  v144 = v106;
  if (v106)
  {
    v108 = (v105 + 8);
    re::AssetProviderRegistry::registerAssetProvider(v107, &v144);

    v144 = 0;
  }

  else
  {
    re::AssetProviderRegistry::registerAssetProvider(v107, &v144);
  }

  re::MeshPrimitiveProvider::init(*(a1 + 1904), *(a1 + 1808), v109);
  v111 = re::globalAllocators(v110);
  v112 = (*(*v111[2] + 32))(v111[2], 768, 128);
  v114 = re::internal::AssetBackgroundLoader::AssetBackgroundLoader(v112, v113);
  *(a1 + 1800) = v114;
  v115 = re::internal::AssetBackgroundLoader::init(v114, *(a1 + 1808), a1 + 8, *(a1 + 1904), *(a1 + 1936), a1 + 16);
  if (*(a2 + 16))
  {
    v116 = re::globalAllocators(v115);
    v117 = (*(*v116[2] + 32))(v116[2], 512, 128);
    *v117 = 0u;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = 0u;
    *(v117 + 64) = 0u;
    *(v117 + 80) = 0u;
    *(v117 + 96) = 0u;
    *(v117 + 112) = 0u;
    *(v117 + 160) = 0u;
    *(v117 + 176) = 0u;
    *(v117 + 192) = 0u;
    *(v117 + 208) = 0u;
    *(v117 + 224) = 0u;
    *(v117 + 240) = 0u;
    *(v117 + 256) = 0u;
    *(v117 + 272) = 0u;
    *(v117 + 288) = 0u;
    *(v117 + 304) = 0u;
    *(v117 + 320) = 0u;
    *(v117 + 336) = 0u;
    *(v117 + 352) = 0u;
    *(v117 + 368) = 0u;
    *(v117 + 384) = 0u;
    *(v117 + 400) = 0u;
    *(v117 + 416) = 0u;
    *(v117 + 432) = 0u;
    *(v117 + 448) = 0u;
    *(v117 + 464) = 0u;
    *(v117 + 480) = 0u;
    *(v117 + 496) = 0u;
    *(v117 + 100) = 0x7FFFFFFF;
    *(v117 + 112) = 0u;
    *(v117 + 128) = 0u;
    *(v117 + 128) = 0u;
    *(v117 + 144) = 0u;
    *(v117 + 144) = 0x7FFFFFFF00000000;
    *(v117 + 296) = 0;
    *(v117 + 272) = 0;
    *(v117 + 280) = 0;
    *(v117 + 264) = 0;
    *(v117 + 288) = 0;
    *(v117 + 392) = 0;
    *(v117 + 400) = 0;
    *(a1 + 1824) = v117;
    v118 = *(a2 + 16);
    {
      re::introspect<re::NetworkAssetSerializationService>(BOOL)::info = re::introspect_NetworkAssetSerializationService(0);
    }

    v119 = re::introspect<re::NetworkAssetSerializationService>(BOOL)::info;
    re::StringID::invalid(buf);
    v120 = (*(*v16 + 16))(v16, v119, buf);
    v121 = v120;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    v115 = re::internal::AssetNetworkLoader::init(v117, a1, v118, v121);
  }

  *(a1 + 2176) = *(a2 + 24);
  if (*(a1 + 1832))
  {
    v122 = re::globalAllocators(v115);
    v123 = (*(*v122[2] + 32))(v122[2], 88, 8);
    v124 = *(a1 + 1832);
    ArcSharedObject::ArcSharedObject(v123, 0);
    *v123 = &unk_1F5CB9520;
    *(v123 + 24) = 0u;
    *(v123 + 40) = 0u;
    *(v123 + 56) = 0;
    *(v123 + 60) = 0x7FFFFFFFLL;
    *(v123 + 72) = a1;
    *(v123 + 80) = v124;
    v125 = *(a1 + 1048);
    *(a1 + 1048) = v123;
    if (v125)
    {

      v123 = *(a1 + 1048);
      v126 = *(a1 + 1832);
      v143 = v123;
      if (!v123)
      {
LABEL_89:
        (*(*v126 + 120))(v126, &v143);
        if (v143)
        {

          v143 = 0;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v126 = *(a1 + 1832);
      v143 = v123;
    }

    v127 = (v123 + 8);
    goto LABEL_89;
  }

LABEL_91:
  *(a1 + 1152) = re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(v16) != 0;
  v128 = dispatch_group_create();

  v129 = *(a1 + 2576);
  *(a1 + 2576) = v128;

  v131 = re::globalAllocators(v130);
  v132 = (*(*v131[2] + 32))(v131[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v132, 0);
  *(v132 + 3) = a1;
  *v132 = &unk_1F5CB8B88;
  *(v132 + 4) = a1 + 2576;
  dispatch_group_enter(*(a1 + 2576));
  v134 = *(a1 + 2568);
  *(a1 + 2568) = v132;
  if (v134)
  {
  }

  v135 = re::globalAllocators(v133);
  v136 = (*(*v135[2] + 32))(v135[2], 120, 8);
  *v136 = 0u;
  *(v136 + 16) = 0u;
  *(v136 + 32) = 0u;
  *(v136 + 48) = 0u;
  *(v136 + 64) = 0u;
  *(v136 + 80) = 0u;
  *(v136 + 96) = 0u;
  *(v136 + 112) = 0;
  ArcSharedObject::ArcSharedObject(v136, 0);
  *v136 = &unk_1F5CB8240;
  *(v136 + 24) = 0u;
  *(v136 + 40) = 0u;
  *(v136 + 56) = 0;
  *(v136 + 60) = 0x7FFFFFFFLL;
  *(v136 + 72) = 0u;
  *(v136 + 88) = 0u;
  *(v136 + 104) = 0;
  *(v136 + 108) = 0x7FFFFFFFLL;
  v137 = *(a1 + 1896);
  *(a1 + 1896) = v136;
  if (v137)
  {
  }

  v138 = re::ServiceLocator::serviceOrNull<re::EntitlementService>(v16);
  if (v138)
  {
    v139 = v138;
    v140 = *(a1 + 1896);
    *buf = v140;
    if (v140)
    {
      v141 = (v140 + 8);
    }

    (*(*v139 + 104))(v139, buf);
    if (*buf)
    {
    }
  }

  if (v105)
  {
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(uint64_t a1)
{
  {
    re::introspect<re::ResourceFetchService>(BOOL)::info = re::introspect_ResourceFetchService(0);
  }

  v2 = re::introspect<re::ResourceFetchService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(uint64_t a1)
{
  {
    re::introspect<re::NetworkAssetService>(BOOL)::info = re::introspect_NetworkAssetService(0);
  }

  v2 = re::introspect<re::NetworkAssetService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::NetworkSendBlockingAssetLoadRequestService>(uint64_t a1)
{
  {
    re::introspect<re::NetworkSendBlockingAssetLoadRequestService>(BOOL)::info = re::introspect_NetworkSendBlockingAssetLoadRequestService(0);
  }

  v2 = re::introspect<re::NetworkSendBlockingAssetLoadRequestService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::EntitlementService>(uint64_t a1)
{
  {
    re::introspect<re::EntitlementService>(BOOL)::info = re::introspect_EntitlementService(0);
  }

  v2 = re::introspect<re::EntitlementService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

void re::AssetManager::deinit(re::AssetManager *this)
{
  v174 = *MEMORY[0x1E69E9840];
  atomic_store(1u, this + 2177);
  v2 = *(this + 240);
  if (v2)
  {
    v2 = (*(*v2 + 208))(v2, 0);
  }

  v3 = *(this + 130);
  if (v3)
  {
    v4 = re::globalAllocators(v2);
    (*(*v4[2] + 40))(v4[2], v3);
    *(this + 130) = 0;
  }

  *(this + 240) = 0;
  *(this + 242) = 0;
  re::MemoryAttributionIDMap::deinit(*(this + 237));
  v5 = *(this + 237);
  if (v5)
  {

    *(this + 237) = 0;
  }

  while (1)
  {
    os_unfair_lock_lock(this + 160);
    v6 = *(this + 83);
    os_unfair_lock_unlock(this + 160);
    if (!v6)
    {
      break;
    }

    re::AssetManager::processDeferredPointerUnload(this);
  }

  *v173 = 0;
  *&buf[8] = 0;
  *&v172 = 0;
  DWORD2(v172) = 0;
  os_unfair_lock_lock(this + 32);
  v7 = *(this + 41);
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(buf, v7);
  v9 = ++DWORD2(v172);
  v10 = *(this + 42);
  if (v10)
  {
    v11 = 0;
    v12 = *(this + 19);
    while (1)
    {
      v13 = *v12;
      v12 += 14;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(this + 42);
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
    v14 = *(this + 42);
    do
    {
      v15 = *(*(this + 19) + 56 * v11 + 40);
      if (v15)
      {
        v16 = (v15 + 8);
        v17 = v172;
        if (v172 >= *&buf[8])
        {
          v18 = v172 + 1;
          if (*&buf[8] < (v172 + 1))
          {
            if (*buf)
            {
              if (*&buf[8])
              {
                v19 = 2 * *&buf[8];
              }

              else
              {
                v19 = 8;
              }

              if (v19 <= v18)
              {
                v20 = v172 + 1;
              }

              else
              {
                v20 = v19;
              }

              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(buf, v20);
              v9 = DWORD2(v172);
            }

            else
            {
              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(buf, v18);
              v9 = DWORD2(v172) + 1;
            }
          }

          v17 = v172;
        }

        *(*v173 + 8 * v17) = v15;
        v21 = (v15 + 8);
        *&v172 = v17 + 1;
        DWORD2(v172) = ++v9;

        v14 = *(this + 42);
      }

      if (v14 <= v11 + 1)
      {
        v22 = v11 + 1;
      }

      else
      {
        v22 = v14;
      }

      while (v22 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(*(this + 19) + 56 * v11) & 0x80000000) != 0)
        {
          goto LABEL_38;
        }
      }

      LODWORD(v11) = v22;
LABEL_38:
      ;
    }

    while (v11 != v10);
  }

  os_unfair_lock_unlock(this + 32);
  v23 = *v173;
  if (v172)
  {
    v24 = 0;
    v25 = 8 * v172;
    do
    {
      v26 = *(v23 + v24);
      if (v26)
      {
        v27 = (v26 + 8);
        os_unfair_lock_lock((v26 + 512));
        v28 = *(v26 + 528);
        if (v28 && !*(v28 + 16) && !*(v26 + 912))
        {
          atomic_store(1u, (*(v28 + 48) + 24));
        }

        os_unfair_lock_unlock((v26 + 512));
      }

      else
      {
        os_unfair_lock_lock(0x200);
        if (MEMORY[0x210] && !*(MEMORY[0x210] + 16) && !MEMORY[0x390])
        {
          atomic_store(1u, (*(MEMORY[0x210] + 48) + 24));
        }

        os_unfair_lock_unlock(0x200);
      }

      v24 += 8;
    }

    while (v25 != v24);
    v29 = *buf;
    if (*buf && v23)
    {
      v30 = v23;
      do
      {
        if (*v30)
        {

          *v30 = 0;
        }

        v30 += 8;
        v25 -= 8;
      }

      while (v25);
      goto LABEL_62;
    }
  }

  else
  {
    v29 = *buf;
    if (*buf && *v173)
    {
LABEL_62:
      (*(*v29 + 40))(v29, v23);
    }
  }

  v31 = *(this + 225);
  atomic_store(1u, (*(v31 + 736) + 24));
  dispatch_group_wait(*(v31 + 704), 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock(this + 512);
  v32 = *(this + 259);
  os_unfair_lock_unlock(this + 512);
  if (v32)
  {
    do
    {
      re::internal::AssetBackgroundLoader::waitForActiveLoadItemsToComplete(*(this + 225));
      *buf = &unk_1F5CB8C60;
      *&buf[8] = this;
      *&v172 = 0;
      *(&v172 + 1) = buf;
      re::runInLocalAutoreleasePool(buf);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](buf);
      os_unfair_lock_lock(this + 512);
      v33 = *(this + 259);
      os_unfair_lock_unlock(this + 512);
    }

    while (v33);
  }

  if ((*(this + 2178) & 1) == 0)
  {
    *(this + 2178) = 1;
    v34 = *(this + 321);
    if (v34)
    {
      v35 = (v34 + 8);
      v36 = *(this + 321);
      if (v36)
      {

        *(this + 321) = 0;
      }
    }

    v37 = *(this + 228);
    if (v37)
    {
      v38 = re::internal::AssetNetworkLoader::deinit(v37);
      v39 = *(this + 228);
      if (v39)
      {
        v40 = re::globalAllocators(v38)[2];

        re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(v39 + 264);
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v39 + 112));
        v41.n128_f64[0] = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v39 + 64));
        v42 = *(v39 + 24);
        if (v42)
        {
          v43 = *(v39 + 56);
          if (v43)
          {
            v44 = *(v39 + 40);
            if (v44)
            {
              v45 = v44 << 6;
              v46 = (v43 + 40);
              do
              {
                re::AssetHandle::~AssetHandle(v46);
                v41.n128_f64[0] = re::DynamicString::deinit((v46 - 32));
                v46 = (v46 + 64);
                v45 -= 64;
              }

              while (v45);
              v42 = *(v39 + 24);
              v43 = *(v39 + 56);
            }

            (*(*v42 + 40))(v42, v43, v41);
          }

          *(v39 + 56) = 0;
          *(v39 + 32) = 0;
          *(v39 + 40) = 0;
          *(v39 + 24) = 0;
          ++*(v39 + 48);
        }

        (*(*v40 + 40))(v40, v39, v41);
      }

      *(this + 228) = 0;
    }

    v47 = *(this + 229);
    if (v47)
    {
      v170 = 0;
      (*(*v47 + 120))(v47, &v170);
      if (v170)
      {

        v170 = 0;
      }
    }

    v48 = *(this + 131);
    if (v48)
    {

      *(this + 131) = 0;
    }

    v154 = v34;
    os_unfair_lock_lock(this + 32);
    *(this + 230) = 0;
    v49 = *(this + 5);
    *(this + 5) = 0;
    if (v49)
    {
      v50 = *(this + 7);
      v51 = 8 * v49;
      do
      {
        if (*v50)
        {

          *v50 = 0;
        }

        v50 += 8;
        v51 -= 8;
      }

      while (v51);
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    ++*(this + 12);
    *v173 = 0;
    *buf = 0u;
    v172 = 0u;
    *&v173[4] = 0x7FFFFFFFLL;
    while (1)
    {
      v169 = 0;
      v166 = 0;
      v167 = 0;
      v165 = 0;
      v168 = 0;
      v56 = *(this + 42);
      if (v56)
      {
        v57 = 0;
        v58 = *(this + 19);
        while (1)
        {
          v59 = *v58;
          v58 += 14;
          if (v59 < 0)
          {
            break;
          }

          if (v56 == ++v57)
          {
            LODWORD(v57) = *(this + 42);
            break;
          }
        }
      }

      else
      {
        LODWORD(v57) = 0;
      }

      v155 = v53;
      if (v57 == v56)
      {
        v60 = 0;
        v61 = 0;
      }

      else
      {
        v162 = 0;
        v160 = 0;
        v60 = 0;
        v158 = v55;
        v157 = v52;
        v159 = v54;
        v156 = *(this + 42);
        do
        {
          v62 = *(this + 19) + 56 * v57;
          v63 = *(v62 + 40);
          if (v63 && !re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(buf, *(v62 + 40)))
          {
            v64 = *(v63 + 304);
            if (!v64)
            {
              goto LABEL_109;
            }

            v161 = v60;
            v65 = *(v63 + 320);
            v66 = 8 * v64 - 8;
            v67 = 1;
            do
            {
              WeakRetained = objc_loadWeakRetained(v65);
              if (WeakRetained)
              {
                v69 = WeakRetained;
                v70 = re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(buf, WeakRetained - 8);
                v71 = !v70;
                v67 &= v70;

                if (v71)
                {
                  break;
                }
              }

              ++v65;
              v72 = v66;
              v66 -= 8;
            }

            while (v72);
            v55 = v158;
            v52 = v157;
            LODWORD(v56) = v156;
            v60 = v161;
            if ((v67 & 1) == 0)
            {
              v54 = v159;
            }

            else
            {
LABEL_109:
              re::AssetManager::unloadAssetAsync(this, v63, 0);
              re::internal::AssetEntry::removeFromAssetManager(v63);
              if (v60 >= v166)
              {
                v76 = v60 + 1;
                v54 = v159;
                v74 = v162;
                if (v166 < v76)
                {
                  if (v165)
                  {
                    v77 = 8;
                    if (v166)
                    {
                      v77 = 2 * v166;
                    }

                    if (v77 <= v76)
                    {
                      v78 = v76;
                    }

                    else
                    {
                      v78 = v77;
                    }

                    re::DynamicArray<float *>::setCapacity(&v165, v78);
                    v74 = v168;
                  }

                  else
                  {
                    re::DynamicArray<float *>::setCapacity(&v165, v76);
                    v74 = v168 + 1;
                  }
                }

                v60 = v167;
                v75 = v169;
              }

              else
              {
                v54 = v159;
                v74 = v162;
                v75 = v160;
              }

              v160 = v75;
              v75[v60++] = v63;
              v167 = v60;
              v162 = v74 + 1;
              v168 = v74 + 1;
            }
          }

          v79 = *(this + 42);
          if (v79 <= v57 + 1)
          {
            v79 = v57 + 1;
          }

          while (v79 - 1 != v57)
          {
            LODWORD(v57) = v57 + 1;
            if ((*(*(this + 19) + 56 * v57) & 0x80000000) != 0)
            {
              goto LABEL_129;
            }
          }

          LODWORD(v57) = v79;
LABEL_129:
          ;
        }

        while (v57 != v56);
        v61 = v169;
      }

      os_unfair_lock_unlock(this + 32);
      v164[0] = dispatch_time(0, 0);
      v164[1] = -1;
      v164[2] = -1;
      re::AssetManager::processUnreferencedUnloadRequests(this, v164);
      re::AssetManager::waitForLoadQueueToComplete(this, 0);
      v163 = v61;
      if (v60)
      {
        break;
      }

      v53 = v155;
LABEL_148:
      os_unfair_lock_lock(this + 224);
      v93 = *(this + 115);
      if (v93)
      {
        v94 = 0;
        for (i = 0; i != v93; ++i)
        {
          v94 |= re::AssetLoadRequest::Data::tryStopRequest(*(*(this + 118) + 8 * ((i + *(this + 116)) % *(this + 114)))) ^ 1;
        }
      }

      else
      {
        LOBYTE(v94) = 0;
      }

      os_unfair_lock_unlock(this + 224);
      os_unfair_lock_lock(this + 32);
      if (v165 && v163)
      {
        (*(*v165 + 40))();
      }

      if (!((v52 != *(this + 41)) | v94 & 1))
      {
        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 1544);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
        if (v154)
        {
        }

        v97 = *re::assetsLogObjects(v96);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v97, OS_LOG_TYPE_DEFAULT, "Waiting for Asset Manager Alive Token to stop being used", buf, 2u);
        }

        v98 = dispatch_group_wait(*(this + 322), 0xFFFFFFFFFFFFFFFFLL);
        v99 = *re::assetsLogObjects(v98);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v99, OS_LOG_TYPE_DEFAULT, "Asset Manager Alive Token is gone, continuing deinit()", buf, 2u);
        }

        v100 = *(this + 296);
        *(this + 296) = 0;
        if (v100)
        {
          v101 = *(this + 298);
          v102 = 40 * v100;
          do
          {
            re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v101);
            v101 += 40;
            v102 -= 40;
          }

          while (v102);
        }

        ++*(this + 594);
        os_unfair_lock_lock(this + 224);
        re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::deinit(this + 113);
        os_unfair_lock_unlock(this + 224);
        os_unfair_lock_lock(this + 128);
        v103 = *(this + 67);
        if (v103)
        {
          v104 = 32 * v103;
          v105 = (*(this + 69) + 24);
          do
          {
            if (!*v105)
            {
              std::__throw_bad_function_call[abi:nn200100]();
            }

            (*(**v105 + 48))(*v105);
            v105 += 4;
            v104 -= 32;
          }

          while (v104);
          v106 = *(this + 67);
          v107 = *(this + 69);
          *(this + 67) = 0;
          if (v106)
          {
            v108 = 32 * v106;
            do
            {
              v107 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v107) + 32;
              v108 -= 32;
            }

            while (v108);
          }
        }

        ++*(this + 136);
        os_unfair_lock_unlock(this + 128);
        *buf = &unk_1F5CB8BD0;
        *&buf[8] = this;
        *(&v172 + 1) = buf;
        re::NetworkActionQueue::deinit(this + 1152, buf);
        if (*(&v172 + 1) == buf)
        {
          (*(**(&v172 + 1) + 32))(*(&v172 + 1));
        }

        else if (*(&v172 + 1))
        {
          (*(**(&v172 + 1) + 40))();
        }

        re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 17);
        *(this + 229) = 0;
        v109 = *(this + 247);
        if (v109)
        {

          *(this + 247) = 0;
        }

        v110 = *(this + 246);
        if (v110)
        {

          *(this + 246) = 0;
        }

        v111 = *(this + 245);
        if (v111)
        {

          *(this + 245) = 0;
        }

        v112 = *(this + 244);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v112 + 32));
        std::__list_imp<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>>::clear((v112 + 8));
        v114 = *(this + 244);
        if (v114)
        {
          v115 = re::globalAllocators(v113)[2];
          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v114 + 88));
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v114 + 32));
          std::__list_imp<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>>::clear((v114 + 8));

          (*(*v115 + 40))(v115, v114);
        }

        *(this + 244) = 0;
        v116 = *(this + 250);
        if (v116)
        {

          *(this + 250) = 0;
        }

        v117 = *(this + 251);
        os_unfair_lock_lock(v117);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(&v117[2]);
        os_unfair_lock_unlock(v117);
        v119 = *(this + 251);
        if (v119)
        {
          v120 = re::globalAllocators(v118)[2];
          v121 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v119 + 8));
          v118 = (*(*v120 + 40))(v120, v119, v121);
        }

        *(this + 251) = 0;
        v122 = *(this + 253);
        if (v122)
        {
          v123 = re::globalAllocators(v118)[2];
          std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(*(v122 + 64));
          v124 = re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::deinit(v122);
          (*(*v123 + 40))(v123, v122, v124);
        }

        *(this + 253) = 0;
        v125 = *(this + 249);
        if (v125)
        {

          *(this + 249) = 0;
        }

        v126 = *(this + 239);
        if (v126)
        {

          *(this + 239) = 0;
        }

        v127 = *(this + 243);
        if (v127)
        {

          *(this + 243) = 0;
        }

        v128 = *(this + 252);
        os_unfair_lock_lock(v128);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(&v128[2]);
        os_unfair_lock_unlock(v128);
        v130 = *(this + 252);
        if (v130)
        {
          v131 = re::globalAllocators(v129)[2];
          v132 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v130 + 8));
          (*(*v131 + 40))(v131, v130, v132);
        }

        *(this + 252) = 0;
        re::DynamicArray<unsigned long>::deinit(this + 2056);
        v133 = *(this + 225);
        atomic_store(1u, (*(v133 + 736) + 24));
        v134 = dispatch_group_wait(*(v133 + 704), 0xFFFFFFFFFFFFFFFFLL);
        v135 = *(this + 225);
        if (v135)
        {
          v136 = re::globalAllocators(v134)[2];
          re::internal::AssetBackgroundLoader::~AssetBackgroundLoader(v135);
          (*(*v136 + 40))(v136, v135);
        }

        *(this + 225) = 0;
        v137 = *(this + 227);
        re::DynamicArray<std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>>::clear((v137 + 8));
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v137 + 48);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v137 + 48));
        v139 = *(this + 227);
        if (v139)
        {
          v140 = re::globalAllocators(v138)[2];
          *v139 = &unk_1F5D0DF40;
          v141.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v139 + 48));
          v142 = *(v139 + 8);
          if (v142)
          {
            v143 = *(v139 + 40);
            if (v143)
            {
              v144 = *(v139 + 24);
              if (v144)
              {
                v145 = 40 * v144;
                do
                {
                  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](v143);
                  v143 += 5;
                  v145 -= 40;
                }

                while (v145);
                v142 = *(v139 + 8);
                v143 = *(v139 + 40);
              }

              (*(*v142 + 40))(v142, v143, v141);
            }

            *(v139 + 40) = 0;
            *(v139 + 16) = 0;
            *(v139 + 24) = 0;
            *(v139 + 8) = 0;
            ++*(v139 + 32);
          }

          (*(*v140 + 40))(v140, v139, v141);
        }

        *(this + 227) = 0;
        v146 = *(this + 238);
        re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v146 + 136);
        re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v146 + 184);
        v148 = *(this + 238);
        if (v148)
        {
          v149 = re::globalAllocators(v147)[2];
          re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v148 + 184));
          v150 = re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v148 + 136));
          (*(*v149 + 40))(v149, v148, v150);
        }

        *(this + 238) = 0;
        re::internal::AssetTypeRegistry::deinit(*(this + 226));
        v152 = *(this + 226);
        if (v152)
        {
          v153 = re::globalAllocators(v151)[2];
          re::internal::AssetTypeRegistry::~AssetTypeRegistry(v152);
          (*(*v153 + 40))(v153, v152);
        }

        *(this + 226) = 0;
        re::internal::EngineQueueCheck::deinit(this + 176);
        os_unfair_lock_unlock(this + 32);
        return;
      }
    }

    v80 = &v61[v60];
    v53 = v155;
    while (1)
    {
      v81 = *v61;
      v82 = 0xBF58476D1CE4E5B9 * (*v61 ^ (*v61 >> 30));
      v83 = (0x94D049BB133111EBLL * (v82 ^ (v82 >> 27))) ^ ((0x94D049BB133111EBLL * (v82 ^ (v82 >> 27))) >> 31);
      if (v55)
      {
        v84 = v83 % v55;
        v85 = *(*&buf[8] + 4 * v84);
        if (v85 != 0x7FFFFFFF)
        {
          while (*(v172 + 24 * v85 + 16) != v81)
          {
            LODWORD(v85) = *(v172 + 24 * v85 + 8) & 0x7FFFFFFF;
            if (v85 == 0x7FFFFFFF)
            {
              goto LABEL_139;
            }
          }

          goto LABEL_145;
        }
      }

      else
      {
        v84 = 0;
      }

LABEL_139:
      v86 = *&v173[4];
      if (*&v173[4] == 0x7FFFFFFF)
      {
        v87 = v54;
        if (v54 == v55)
        {
          re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::setCapacity(buf, 2 * v52);
          v55 = DWORD2(v172);
          v52 = HIDWORD(v172);
          v84 = v83 % DWORD2(v172);
          v81 = *v61;
          v87 = *v173;
          v53 = *&v173[8];
        }

        v88 = (v87 + 1);
        *v173 = v88;
        v89 = v172;
        v86 = v54;
        v90 = *(v172 + 24 * v54 + 8);
      }

      else
      {
        v89 = v172;
        v90 = *(v172 + 24 * *&v173[4] + 8);
        *&v173[4] = v90 & 0x7FFFFFFF;
        v88 = v54;
        LODWORD(v54) = v86;
      }

      v91 = v89 + 24 * v86;
      *(v91 + 8) = v90 | 0x80000000;
      v92 = *&buf[8];
      *(v91 + 8) = *(*&buf[8] + 4 * v84) | 0x80000000;
      *v91 = v83;
      *(v91 + 16) = v81;
      *(v92 + 4 * v84) = v54;
      ++v52;
      ++v53;
      HIDWORD(v172) = v52;
      *&v173[8] = v53;
      v54 = v88;
LABEL_145:
      if (++v61 == v80)
      {
        goto LABEL_148;
      }
    }
  }
}

uint64_t re::AssetManager::processDeferredPointerUnload(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 160);
  v20 = 0;
  v21 = 0;
  v17 = 0;
  v22 = 0u;
  v18 = 0u;
  v24 = 0;
  v19 = 1;
  v23 = 1;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v17, &this[162]);
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&this[162], &v21);
  if (v21 && v24)
  {
    (*(*v21 + 40))();
  }

  os_unfair_lock_unlock(this + 160);
  if (*(&v18 + 1))
  {
    v24 = 0;
    v22 = 0uLL;
    v21 = 0;
    v23 = 0;
    v2 = 8 * *(&v18 + 1);
    v3 = v20;
    do
    {
      v25 = *v3;
      v4 = v25;
      v5 = *(v25 + 240) + 1;
      *(v25 + 240) = v5;
      if (v5 < 2)
      {
        re::DynamicArray<re::RigDataValue *>::add(&v21, &v25);
      }

      else
      {
        re::AssetManager::internalUnloadSharedAssetPointer(this, *v4, (v4 + 8), *(v4 + 232));
        v7 = re::globalAllocators(v6)[2];
        re::DynamicString::deinit((v4 + 200));
        re::DynamicString::deinit((v4 + 168));
        re::DynamicString::deinit((v4 + 136));
        re::DynamicString::deinit((v4 + 104));
        re::DynamicString::deinit((v4 + 48));
        v8 = re::DynamicString::deinit((v4 + 16));
        (*(*v7 + 40))(v7, v4, v8);
      }

      ++v3;
      v2 -= 8;
    }

    while (v2);
    os_unfair_lock_lock(this + 160);
    v9 = *(&v22 + 1);
    v10 = *(&v22 + 1) + *&this[166]._os_unfair_lock_opaque;
    if (*&this[164]._os_unfair_lock_opaque < v10)
    {
      re::DynamicArray<float *>::setCapacity(&this[162]._os_unfair_lock_opaque, v10);
    }

    v11 = v24;
    if (v9)
    {
      v12 = 8 * v9;
      v13 = v24;
      do
      {
        v14 = *v13++;
        v25 = v14;
        re::DynamicArray<re::RigDataValue *>::add(&this[162], &v25);
        v12 -= 8;
      }

      while (v12);
    }

    os_unfair_lock_unlock(this + 160);
    if (v21)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      (*(*v21 + 40))();
    }
  }

  result = v17;
  if (v17)
  {
    if (v20)
    {
      return (*(*v17 + 40))();
    }
  }

  return result;
}

BOOL re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = *(*(a1 + 8) + 4 * ((v3 ^ (v3 >> 31)) % v2));
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 24 * v4 + 16) == a2)
  {
    return 1;
  }

  do
  {
    LODWORD(v4) = *(v6 + 24 * v4 + 8) & 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
  }

  while (v4 != 0x7FFFFFFF && *(v6 + 24 * v4 + 16) != a2);
  return result;
}

void re::AssetManager::unloadAssetAsync(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a2 + 512));
  v7 = atomic_load((a2 + 896));
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v11 = atomic_load((a1 + 2177));
      if ((v11 & 1) == 0 && (*(a1 + 2178) & 1) == 0)
      {
        dispatch_assert_queue_V2(*(a1 + 776));
      }
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      v8 = atomic_load((a1 + 2177));
      if ((v8 & 1) == 0 && (*(a1 + 2178) & 1) == 0)
      {
        dispatch_assert_queue_V2(*(a1 + 776));
      }

      if (*(a2 + 544) != 1)
      {
        if (*(a2 + 545) == 1)
        {
          v9 = *(a2 + 528);
          if (v9)
          {
            *(v9 + 16) = 1;
            *(a2 + 528) = 0;
          }

          re::AssetManager::putEntryInFailedState_entryStateLocked(v10, a2, 302, v13);
          if (*&v13[0])
          {
            if (BYTE8(v13[0]))
            {
              (*(**&v13[0] + 40))();
            }

            memset(v13, 0, sizeof(v13));
          }
        }

        else
        {
          re::AssetManager::cancelLoadingAsset_entryStateLocked(a1, a2, a3);
        }

        goto LABEL_23;
      }
    }

    re::AssetManager::unloadAssetEntry_entryStateLocked(a1, a2, a3);
    goto LABEL_23;
  }

  v12 = atomic_load((a1 + 2177));
  if ((v12 & 1) == 0 && (*(a1 + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(a1 + 776));
  }

  re::internal::AssetEntry::LoadState::clearLoadFailure_locked((a2 + 896));
LABEL_23:
  os_unfair_lock_unlock((a2 + 512));
}

uint64_t re::AssetManager::processUnreferencedUnloadRequests(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  atomic_load((a1 + 2177));
  from = 0;
  v33 = 0uLL;
  v32 = 0;
  v34 = 0;
  os_unfair_lock_lock((a1 + 1536));
  if (*(a1 + 1560))
  {
    memset(v44, 0, 24);
    v32 = 0;
    v33 = 0u;
    *&v45 = 0;
    from = 0;
    v34 = 1;
    DWORD2(v44[1]) = 1;
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v32, a1 + 1544);
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1 + 1544, v44);
    v4 = re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(v44);
    re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity((a1 + 1544), 0x20uLL);
    ++*(a1 + 1568);
  }

  os_unfair_lock_unlock((a1 + 1536));
  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  os_unfair_lock_lock((a1 + 128));
  while (*(&v33 + 1))
  {
    if (dispatch_time(0, 0) >= *(a2 + 8))
    {
      break;
    }

    to = 0;
    objc_moveWeak(&to, from);
    v5 = *(&v33 + 1);
    if (*(&v33 + 1) != 1)
    {
      if (!*(&v33 + 1))
      {
        v36 = 0;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        memset(v44, 0, sizeof(v44));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v37 = 136315906;
        *&v37[4] = "removeAt";
        v38 = 1024;
        v39 = 931;
        v40 = 2048;
        v41 = 0;
        v42 = 2048;
        v43 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = from;
      v7 = &from[*(&v33 + 1) - 1];
      if (v7 != from)
      {
        objc_destroyWeak(from);
        *v6 = 0;
        objc_moveWeak(v6, v7);
        v5 = *(&v33 + 1);
      }
    }

    v8 = &from[v5];
    objc_destroyWeak(v8 - 1);
    *(v8 - 1) = 0;
    --*(&v33 + 1);
    ++v34;
    v9 = objc_loadWeakRetained(&to);
    if (v9)
    {
      v10 = v9;
      WeakRetained = objc_loadWeakRetained(v9 + 127);
      if (WeakRetained)
      {
      }

      else if (v10[2])
      {
        re::AssetManager::unloadAssetAsync(a1, (v10 - 1), 0);
        re::internal::AssetEntry::removeFromAssetManager(v10 - 2);
        if (v10[16])
        {
          v12 = v10[17];
        }

        else
        {
          v12 = v10 + 129;
        }

        *v37 = v12;
        v13 = re::Hash<re::DynamicString>::operator()(v44, v12);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 136, v37, v13, v44);
        v14 = HIDWORD(v44[0]);
        if (HIDWORD(v44[0]) != 0x7FFFFFFF)
        {
          v15 = *(a1 + 152);
          v16 = *(v15 + 56 * HIDWORD(v44[0])) & 0x7FFFFFFF;
          if (LODWORD(v44[1]) == 0x7FFFFFFF)
          {
            *(*(a1 + 144) + 4 * DWORD2(v44[0])) = v16;
            v14 = HIDWORD(v44[0]);
          }

          else
          {
            *(v15 + 56 * LODWORD(v44[1])) = *(v15 + 56 * LODWORD(v44[1])) & 0x80000000 | v16;
          }

          re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v15 + 56 * v14);
          v17 = HIDWORD(v44[0]);
          *(*(a1 + 152) + 56 * HIDWORD(v44[0])) = *(*(a1 + 152) + 56 * HIDWORD(v44[0])) & 0x80000000 | *(a1 + 172);
          --*(a1 + 164);
          v18 = *(a1 + 176) + 1;
          *(a1 + 172) = v17;
          *(a1 + 176) = v18;
        }

        if (*(v10 + 28) == 8)
        {
          v19 = v10[13];
          if (v19 + 1 >= 2)
          {
            re::internal::AssetIdLoadDescriptorTable::remove((a1 + 184), v19);
          }
        }

        if (v10[13] + 1 >= 2)
        {
          *&v44[0] = v10[13];
          re::DynamicArray<re::TransitionCondition *>::add(v28, v44);
        }
      }
    }

    objc_destroyWeak(&to);
  }

  os_unfair_lock_unlock((a1 + 128));
  if (v29)
  {
    v20 = v31;
    v21 = 8 * v29;
    do
    {
      v22 = *(a1 + 1920);
      if (v22)
      {
        (*(*v22 + 8))(v22, *v20);
      }

      ++v20;
      v21 -= 8;
    }

    while (v21);
    v23 = *(a1 + 1840);
    if (v23 && *(a1 + 2220) == 1)
    {
      *&v44[0] = v31;
      *(&v44[0] + 1) = v29;
      (*(*v23 + 32))(v23, v44);
    }
  }

  if (*(&v33 + 1))
  {
    os_unfair_lock_lock((a1 + 1536));
    if (*(&v33 + 1))
    {
      v24 = from;
      v25 = 8 * *(&v33 + 1);
      do
      {
        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::add((a1 + 1544), v24++);
        v25 -= 8;
      }

      while (v25);
    }

    os_unfair_lock_unlock((a1 + 1536));
  }

  if (v28[0] && v31)
  {
    (*(*v28[0] + 40))();
  }

  return re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(&v32);
}

void re::AssetManager::waitForLoadQueueToComplete(uint64_t a1, int a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 2177));
  if ((v4 & 1) == 0 && (*(a1 + 2178) & 1) == 0)
  {
    if (a2 == 1)
    {
      dispatch_assert_queue_not_V2(*(a1 + 776));
    }

    else if (!a2)
    {
      dispatch_assert_queue_V2(*(a1 + 776));
    }
  }

  while (1)
  {
    os_unfair_lock_lock((a1 + 2048));
    v5 = *(a1 + 2072);
    os_unfair_lock_unlock((a1 + 2048));
    if (!v5)
    {
      os_unfair_lock_lock((a1 + 128));
      v6 = *(a1 + 344);
      os_unfair_lock_unlock((a1 + 128));
      if (!v6 && !*(a1 + 40))
      {
        break;
      }
    }

    re::internal::AssetBackgroundLoader::waitForActiveLoadItemsToComplete(*(a1 + 1800));
    if (a2)
    {
      usleep(0x3E8u);
    }

    else
    {
      v7[0] = &unk_1F5CB8C60;
      v7[1] = a1;
      v7[2] = 0;
      v7[3] = v7;
      re::runInLocalAutoreleasePool(v7);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
    }
  }
}

uint64_t re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(uint64_t a1)
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
          objc_destroyWeak(v3);
          *v3++ = 0;
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

double re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 56;
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

void re::AssetManager::assertOnEngineQueue(re::AssetManager *this)
{
  v1 = atomic_load(this + 2177);
  if ((v1 & 1) == 0 && (*(this + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(this + 97));
  }
}

void re::AssetManager::updateLoadRequests(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 1032));
  if (v2)
  {
    atomic_store(0, (a1 + 1032));
    atomic_load((a1 + 2177));
    os_unfair_lock_lock((a1 + 896));
    v5 = *(a1 + 920);
    if (v5)
    {
      while (1)
      {
        if (dispatch_time(0, 0) >= *(a2 + 8))
        {
          atomic_store(1u, (a1 + 1032));
          goto LABEL_17;
        }

        v7 = *(a1 + 920);
        if (!v7)
        {
          break;
        }

        v8 = *(a1 + 944);
        v9 = *(a1 + 928);
        v10 = *(v8 + 8 * v9);
        *(v8 + 8 * v9) = 0;
        if ((v9 + 1) < *(a1 + 912))
        {
          v11 = v9 + 1;
        }

        else
        {
          v11 = 0;
        }

        *(a1 + 928) = v11;
        *(a1 + 920) = v7 - 1;
        ++*(a1 + 936);
        os_unfair_lock_lock((v10 + 256));
        v12 = *(v10 + 419);
        os_unfair_lock_unlock((v10 + 256));
        if (v12)
        {
        }

        else
        {
          os_unfair_lock_unlock((a1 + 896));
          re::AssetLoadRequest::Data::update(v10);
          os_unfair_lock_lock((a1 + 896));
          v13 = *(a1 + 920);
          v14 = v13 + 1;
          v15 = *(a1 + 912);
          if (v13 + 1 >= v15)
          {
            re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::growCapacity((a1 + 904), v14);
            v13 = *(a1 + 920);
            v15 = *(a1 + 912);
            v14 = v13 + 1;
          }

          *(*(a1 + 944) + 8 * ((*(a1 + 928) + v13) % v15)) = v10;
          *(a1 + 920) = v14;
          ++*(a1 + 936);
        }

        if (!--v5)
        {
          goto LABEL_17;
        }
      }

      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569);
      _os_crash();
      __break(1u);
    }

    else
    {
LABEL_17:

      os_unfair_lock_unlock((a1 + 896));
    }
  }
}

uint64_t re::AssetManager::afterFrameUpdate(std::chrono::steady_clock::time_point *this)
{
  v42 = *MEMORY[0x1E69E9840];
  rep = this[281].__d_.__rep_;
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v4 = v3.__d_.__rep_;
  if (rep)
  {
    if (LOBYTE(this[283].__d_.__rep_))
    {
      v5 = this[282].__d_.__rep_;
    }

    else
    {
      LOBYTE(this[283].__d_.__rep_) = 1;
      this[282].__d_.__rep_ = v3.__d_.__rep_;
      v5 = v3.__d_.__rep_;
    }

    v6 = v3.__d_.__rep_ - v5;
    if (v3.__d_.__rep_ - v5 >= 1000000000)
    {
      rep_low = LODWORD(this[292].__d_.__rep_);
      if (rep_low)
      {
        v9 = 0;
        v10 = this[290].__d_.__rep_;
        while (1)
        {
          v11 = *v10;
          v10 += 10;
          if (v11 < 0)
          {
            break;
          }

          if (rep_low == ++v9)
          {
            LODWORD(v9) = this[292].__d_.__rep_;
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      if (v9 != rep_low)
      {
        do
        {
          v12 = this[290].__d_.__rep_ + 40 * v9;
          re::DynamicString::format("Registering Entries[%s]: num: %zu, time spent: %0.1f ms\n", buf, **(v12 + 8), *(v12 + 16), (*(v12 + 24) / 1000000.0));
          v13 = buf[8] & 1;
          if (buf[8])
          {
            v14 = *&buf[16];
          }

          else
          {
            v14 = &buf[9];
          }

          if (buf[8])
          {
            v15 = *&buf[8] >> 1;
          }

          else
          {
            v15 = buf[8] >> 1;
          }

          re::DynamicString::append(&v27, v14, v15);
          v7 = *buf;
          if (*buf && v13)
          {
            v7 = (*(**buf + 40))();
          }

          v16 = this[292].__d_.__rep_;
          if (v16 <= v9 + 1)
          {
            v17 = v9 + 1;
          }

          else
          {
            v17 = this[292].__d_.__rep_;
          }

          while (v17 - 1 != v9)
          {
            LODWORD(v9) = v9 + 1;
            if ((*(this[290].__d_.__rep_ + 40 * v9) & 0x80000000) != 0)
            {
              goto LABEL_32;
            }
          }

          LODWORD(v9) = v17;
LABEL_32:
          ;
        }

        while (v9 != v16);
      }

      v18 = *re::assetsLogObjects(v7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = this[281].__d_.__rep_;
        v20 = (this[278].__d_.__rep_ / 1000000.0);
        v21 = this[284].__d_.__rep_;
        v22 = (this[285].__d_.__rep_ / 1000000.0);
        v23 = this[286].__d_.__rep_;
        v24 = this[287].__d_.__rep_;
        *buf = 134219778;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = (v6 / 1000000000.0);
        *&buf[22] = 2048;
        v31 = v20;
        v32 = 2048;
        v33 = v21;
        v34 = 2048;
        v35 = v22;
        v25 = v29;
        v36 = 2048;
        v37 = v23;
        if (v28)
        {
          v25 = *&v29[7];
        }

        v38 = 2048;
        v39 = (v24 / 1000000.0);
        v40 = 2080;
        v41 = v25;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Asset Manager is overloaded: Asset Manager update timed out %zu times in the last %0.1f seconds (deadline is %0.1f ms).  Asset loading may be slower than usual due to increased load. Showing stats for timed out updates only:\nProcessed load items: %zu, time spent: %0.1f ms\nProcessed Resource Requests: %zu, time spent: %0.1f ms\n%s", buf, 0x52u);
      }

      if ((this[283].__d_.__rep_ & 1) == 0)
      {
        LOBYTE(this[283].__d_.__rep_) = 1;
      }

      this[282].__d_.__rep_ = v4;
      this[281].__d_.__rep_ = 0;
      *&this[284].__d_.__rep_ = 0u;
      *&this[286].__d_.__rep_ = 0u;
      re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::clear(&this[288]);
      if (v27 && (v28 & 1) != 0)
      {
        (*(*v27 + 40))();
      }
    }
  }

  else
  {
    if ((this[283].__d_.__rep_ & 1) == 0)
    {
      LOBYTE(this[283].__d_.__rep_) = 1;
    }

    this[282].__d_.__rep_ = v3.__d_.__rep_;
  }

  return re::AssetManager::processDeferredPointerUnload(this);
}

void re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
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

        v4 += 10;
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

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::AssetLoadRequest>>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

  v9 = *a2;
  *(*(v3 + 4) + 8 * v4) = *a2;
  if (v9)
  {
    result = (v9 + 8);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

void re::AssetManager::loadNow(re::AssetManager *this, re::internal::AssetEntry *a2, int a3)
{
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v6 = atomic_load(this + 2177);
    if ((v6 & 1) == 0 && (*(this + 2178) & 1) == 0)
    {
      dispatch_assert_queue_V2(*(this + 97));
    }

    v5 = 0;
  }

  re::AssetManager::makeLoadRequest(this, &v9);
  v7 = v9;
  re::AssetHandle::AssetHandle(v8, a2);
  re::AssetLoadRequest::addAsset(v7, v8);
  re::AssetHandle::~AssetHandle(v8);
  re::AssetLoadRequest::Data::waitForCompletion(v7[3], v5);
}

void re::AssetManager::makeLoadRequest(re::AssetManager *this@<X0>, re::AssetLoadRequest **a2@<X8>)
{
  re::AssetLoadRequest::makeAssetLoadRequest(this, a2);
  v4 = *a2;
  re::AssetLoadRequest::init(v4, this);
  if (v4)
  {
    v5 = v4 + 1;
    os_unfair_lock_lock(this + 224);
    re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::enqueue(this + 113, v4 + 3);
    os_unfair_lock_unlock(this + 224);
  }

  else
  {
    os_unfair_lock_lock(this + 224);
    re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::enqueue(this + 113, 0x18);
    os_unfair_lock_unlock(this + 224);
  }

  if (*(this + 176) && dispatch_get_specific(this + 1408) == this + 1408)
  {

    re::AssetManager::updateNeedManualTicks(this);
  }

  else
  {
    v6 = *(this + 321);
    if (v6)
    {
      v7 = (v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1174405120;
    v8[2] = ___ZN2re12AssetManager15makeLoadRequestEv_block_invoke;
    v8[3] = &__block_descriptor_tmp_63_0;
    v9 = 0;
    objc_copyWeak(&v9, &location);
    dispatch_async(*(this + 97), v8);
    objc_destroyWeak(&v9);
    v9 = 0;
    objc_destroyWeak(&location);
  }
}

void re::AssetManager::updateNeedManualTicks(re::AssetManager *this)
{
  v2 = atomic_load(this + 2177);
  if ((v2 & 1) == 0 && (*(this + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(this + 97));
  }

  os_unfair_lock_lock(this + 224);
  v3 = *(this + 115);
  os_unfair_lock_unlock(this + 224);
  if (v3 && (*(this + 2560) & 1) == 0)
  {
    *(this + 1280) = 257;
    v4 = *(this + 321);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    objc_initWeak(&location, v5);
    v6 = dispatch_time(0, 13000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1174405120;
    v7[2] = ___ZN2re12AssetManager21updateNeedManualTicksEv_block_invoke;
    v7[3] = &__block_descriptor_tmp_49;
    v8 = 0;
    objc_copyWeak(&v8, &location);
    dispatch_after(v6, *(this + 97), v7);
    objc_destroyWeak(&v8);
    v8 = 0;
    objc_destroyWeak(&location);
  }
}

void ___ZN2re12AssetManager21updateNeedManualTicksEv_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = *(WeakRetained + 2);
    v3[2560] = 0;
    if ((v3[2178] & 1) == 0 && v3[2561] == 1)
    {
      v4[0] = &unk_1F5CB8C60;
      v4[1] = v3;
      v5 = 257;
      v8 = v4;
      v6 = 0;
      v7 = 0;
      re::runInLocalAutoreleasePool(v4);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
    }
  }
}

uint64_t re::AssetManager::canShareAssetOverNetwork(os_unfair_lock_s *this, const re::AssetHandle *a2)
{
  v4 = *(a2 + 1);
  os_unfair_lock_lock(v4 + 128);
  os_unfair_lock_lock(this + 32);
  v5 = *(re::AssetHandle::assetInfo(a2) + 10);
  if (v5 == -1)
  {
    v5 = 0;
  }

  v9 = v5;
  v6 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&this[46], &v9);
  canShareAssetOverNetwork = re::AssetManager::canShareAssetOverNetwork(this, a2, v6, *(*(a2 + 1) + 548));
  os_unfair_lock_unlock(this + 32);
  os_unfair_lock_unlock(v4 + 128);
  return canShareAssetOverNetwork;
}

uint64_t re::AssetManager::canShareAssetOverNetwork(os_unfair_lock_s **a1, re::AssetHandle *a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12 = *re::assetsLogObjects(a1);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = *(re::AssetHandle::assetInfo(a2) + 10);
    if (v13 == -1)
    {
      v13 = 0;
    }

    v14 = 134217984;
    v15 = v13;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Cannot share assetId:%llu over the network, cannot find entry in the asset tables (asset was probably unloaded).", &v14, 0xCu);
    return 0;
  }

  if (a4 == 2)
  {
    return 0;
  }

  if (a4)
  {
    return 1;
  }

  v4 = *(a3 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = *(a3 + 32);
  v7 = 144 * v4;
  while (1)
  {
    v8 = (*(v6 + 8) & 1) != 0 ? *(v6 + 16) : (v6 + 9);
    result = strcmp(v8, "NetworkAsset");
    if (!result)
    {
      break;
    }

    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(a1[238], v8);
    if (ProviderForScheme && ((*(*ProviderForScheme + 96))(ProviderForScheme, v6, 15) & 1) != 0)
    {
      return 0;
    }

    v6 += 144;
    v7 -= 144;
    if (!v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2, re::Allocator *a3)
{
  v5 = a2;
  v6 = &unk_1EE187000;
  {
    v13 = a1;
    v12 = a3;
    v6 = &unk_1EE187000;
    v5 = a2;
    a3 = v12;
    v10 = v9;
    a1 = v13;
    if (v10)
    {
      re::introspect<re::RealityFileAssetLoadDescriptorParameters>(BOOL)::info = re::introspect_RealityFileAssetLoadDescriptorParameters(0);
      v6 = &unk_1EE187000;
      a1 = v13;
      v5 = a2;
      a3 = v12;
    }
  }

  v7 = *(v6 + 169);

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v7, v5, a3);
}

re::AssetLoadDescriptor *re::AssetLoadDescriptor::AssetLoadDescriptor(re::AssetLoadDescriptor *this, const re::AssetLoadDescriptor *a2)
{
  v4 = re::DynamicString::DynamicString(this, a2);
  re::DynamicArray<BOOL>::DynamicArray(v4 + 32, a2 + 4);
  re::DynamicArray<BOOL>::DynamicArray(this + 72, a2 + 9);
  re::DynamicString::DynamicString((this + 112), (a2 + 112));
  return this;
}

re::DynamicString *re::DynamicArray<re::AssetLoadDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AssetLoadDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 144 * v4;
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicArray<BOOL>::DynamicArray(v5 + 32, a2 + 4);
  re::DynamicArray<BOOL>::DynamicArray(v5 + 72, a2 + 9);
  result = re::DynamicString::DynamicString((v5 + 112), (a2 + 112));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::AssetLoadDescriptor::~AssetLoadDescriptor(re::AssetLoadDescriptor *this)
{
  re::DynamicString::deinit((this + 112));
  re::DynamicArray<unsigned long>::deinit(this + 72);
  re::DynamicArray<unsigned long>::deinit(this + 32);
  re::DynamicString::deinit(this);
}

void *re::AssetManager::convertToLoadDescriptor@<X0>(void *this@<X0>, const re::AssetPath *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = this;
  v6 = *a2;
  if (*a2 <= 4)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 != 2 || (ProviderForScheme = this[243]) == 0)
        {
LABEL_44:
          v12 = *(*v4[247] + 112);

          return v12();
        }

LABEL_41:
        this = (*(*ProviderForScheme + 112))(ProviderForScheme, a2);
        if (*a3)
        {
          return this;
        }

        re::Optional<re::AssetLoadDescriptor>::~Optional(a3);
        goto LABEL_44;
      }

LABEL_36:
      *a3 = 0;
      return this;
    }

    if (v6 == 3)
    {
      v10 = this[238];
      v11 = "MemoryAsset";
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_44;
      }

      v10 = this[238];
      v11 = "PeerAsset";
    }

LABEL_40:
    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(v10, v11);
    if (!ProviderForScheme)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v6 > 7)
  {
    if (v6 == 8)
    {
      goto LABEL_36;
    }

    if (v6 != 9)
    {
      goto LABEL_44;
    }

    v10 = this[238];
    if (*(a2 + 2))
    {
      v11 = *(a2 + 3);
    }

    else
    {
      v11 = a2 + 17;
    }

    goto LABEL_40;
  }

  if (v6 == 5)
  {
    ProviderForScheme = this[246];
    if (!ProviderForScheme)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v6 != 6)
  {
    goto LABEL_44;
  }

  v8 = **(a2 + 9);
  re::AssetProviderRegistry::makeDescriptorForResolver((a2 + 8), (a2 + 40), &v13, &v15);
  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  v9.n128_f64[0] = re::Optional<re::AssetLoadDescriptor>::Optional(a3, &v15);
  if (v27)
  {
    if (BYTE8(v27))
    {
      (*(*v27 + 40))(v9.n128_f64[0]);
    }

    v9 = 0uLL;
    v27 = 0u;
    v28 = 0u;
  }

  if (v22)
  {
    if (v26)
    {
      (*(*v22 + 40))(v9);
    }

    v26 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    ++v25;
  }

  if (v17)
  {
    if (v21)
    {
      (*(*v17 + 40))(v9);
    }

    v21 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    ++v20;
  }

  this = v15;
  if (v15 && (v16 & 1) != 0)
  {
    return (*(*v15 + 40))(v9);
  }

  return this;
}

double re::Optional<re::AssetLoadDescriptor>::Optional(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 32) = *(a2 + 24);
  v3 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *a2 = 0;
  v4 = *(a2 + 16);
  *(a2 + 24) = 0;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v7 = *(a2 + 40);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a2 + 48) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 64);
  *(a2 + 64) = v9;
  ++*(a2 + 56);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 88) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v11 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 88);
  *(a2 + 88) = v11;
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 104);
  *(a2 + 104) = v12;
  ++*(a2 + 96);
  ++*(a1 + 104);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 144) = *(a2 + 136);
  v13 = *(a2 + 120);
  *(a1 + 120) = *(a2 + 112);
  *(a2 + 112) = 0;
  v14 = *(a2 + 128);
  *(a2 + 136) = 0;
  v16 = *(a1 + 128);
  v15 = *(a1 + 136);
  *(a1 + 128) = v13;
  *(a1 + 136) = v14;
  *(a2 + 120) = v16;
  *(a2 + 128) = v15;
  return result;
}

__n128 re::AssetManager::convertToAssetPath@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 1904);
  v6 = a2 + 9;
  if (*(a2 + 8))
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = (a2 + 9);
  }

  ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(v5, v7);
  if (ProviderForScheme)
  {
    v9 = *(*ProviderForScheme + 104);

    v9();
  }

  else
  {
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = v6;
    }

    re::DynamicString::format("Unsupported AssetLoadDescriptor type '%s'", &v14, v11);
    result = v14;
    v12 = v15;
    v13 = v16;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
  }

  return result;
}

uint64_t re::AssetManager::testingGetAssetPathString@<X0>(re::AssetManager *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, _BYTE *a3@<X8>)
{
  re::AssetManager::convertToAssetPath(this, a2, v5);
  if (v5[0] == 1)
  {
    *a3 = v5[0];
    re::DynamicString::DynamicString((a3 + 8), &v6);
  }

  else
  {
    *a3 = 0;
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

void re::AssetManager::tryGetImmutableRealityFileAsset(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57[0] = a2;
  v57[1] = a3;
  v56[0] = a4;
  v56[1] = a5;
  os_unfair_lock_lock((a1 + 128));
  v9 = *(a1 + 264);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 248);
    while (1)
    {
      v12 = *v11;
      v11 += 42;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(a1 + 264);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (!*(a1 + 260))
  {
LABEL_63:
    *a6 = 0;
    goto LABEL_64;
  }

  v13 = 0;
  v40 = &v45;
  if (a5)
  {
    v14 = a5 + 1;
  }

  else
  {
    v14 = 0;
  }

  __n = v14;
  if (a3)
  {
    v15 = a3 + 1;
  }

  else
  {
    v15 = 0;
  }

  v37 = v15;
  while (1)
  {
    v16 = (*(a1 + 248) + 168 * v10);
    if (v16[2])
    {
      v17 = v16[3];
    }

    else
    {
      v17 = v16 + 17;
    }

    v18 = strcmp(v17, "RealityFileAsset");
    if (v18)
    {
      goto LABEL_56;
    }

    memset(v49, 0, sizeof(v49));
    v19 = re::DynamicString::setCapacity(v49, 0);
    v51 = 0u;
    v50 = 0u;
    v20 = re::DynamicString::setCapacity(&v50, 0);
    v53 = 0u;
    v52 = 0u;
    re::DynamicString::setCapacity(&v52, 0);
    v54 = 0;
    v55 = 1;
    v21 = re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>((v16 + 1), &v48, 0);
    if (v21)
    {
      v45 = 0;
      v46 = 0;
      v47[0] = 0;
      re::DynamicString::setCapacity(&v44, __n);
      re::DynamicString::operator=(&v44, v56);
      if (BYTE8(v52))
      {
        v23 = v53;
      }

      else
      {
        v23 = &v52 + 9;
      }

      v24 = v45 & 1;
      if (v45)
      {
        v25 = v46;
      }

      else
      {
        v25 = &v45 + 1;
      }

      v26 = strcmp(v23, v25);
      if (v44 && v24)
      {
        (*(*v44 + 40))();
      }

      if (!v26)
      {
        break;
      }
    }

LABEL_44:
    if (v52)
    {
      if (BYTE8(v52))
      {
        (*(*v52 + 40))(v22);
      }

      v22 = 0uLL;
      v53 = 0u;
      v52 = 0u;
    }

    if (v50)
    {
      if (BYTE8(v50))
      {
        (*(*v50 + 40))(v22);
      }

      v22 = 0uLL;
      v51 = 0u;
      v50 = 0u;
    }

    if (v49[0] && (v49[1] & 1) != 0)
    {
      (*(*v49[0] + 40))(v22);
    }

    LODWORD(v9) = *(a1 + 264);
LABEL_56:
    ++v13;
    v33 = v10 + 1;
    if (v9 <= v10 + 1)
    {
      LODWORD(v10) = v10 + 1;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    while (v10 != v33)
    {
      v34 = v33;
      v35 = *(*(a1 + 248) + 168 * v33++);
      if (v35 < 0)
      {
        LODWORD(v10) = v34;
        break;
      }
    }

    if (v13 >= *(a1 + 260))
    {
      goto LABEL_63;
    }
  }

  re::RealityFileAssetProvider::getFileName(*(a1 + 1960), &v44);
  v27 = &v45;
  if (v44 != 1)
  {
LABEL_43:
    v22.n128_f64[0] = re::DynamicString::deinit(v27);
    goto LABEL_44;
  }

  *(&v41 + 1) = 0;
  v42 = 0;
  v43 = 0;
  re::DynamicString::setCapacity(&v41, v37);
  re::DynamicString::operator=(&v41, v57);
  if (v47[0])
  {
    v28 = v47[1];
  }

  else
  {
    v28 = v47 + 1;
  }

  v29 = BYTE8(v41) & 1;
  if (BYTE8(v41))
  {
    v30 = v42;
  }

  else
  {
    v30 = &v41 + 9;
  }

  v31 = strcmp(v28, v30);
  v32 = v41;
  if (v41 && v29)
  {
    v32 = (*(*v41 + 40))();
  }

  if (v31)
  {
    v27 = &v45;
    if (v44)
    {
      v27 = &v46;
      if (v45 != 1)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_43;
  }

  *a6 = 1;
  *(a6 + 8) = v41;
  v41 = 0uLL;
  *(a6 + 24) = v42;
  v42 = 0;
  re::AssetHandle::~AssetHandle(&v41);
  if (v44 != 1 || (v40 = &v46, v45 == 1))
  {
    v36.n128_f64[0] = re::DynamicString::deinit(v40);
  }

  if (v52)
  {
    if (BYTE8(v52))
    {
      (*(*v52 + 40))(v36);
    }

    v36 = 0uLL;
    v53 = 0u;
    v52 = 0u;
  }

  if (v50)
  {
    if (BYTE8(v50))
    {
      (*(*v50 + 40))(v36);
    }

    v36 = 0uLL;
    v51 = 0u;
    v50 = 0u;
  }

  if (v49[0] && (v49[1] & 1) != 0)
  {
    (*(*v49[0] + 40))(v36);
  }

LABEL_64:
  os_unfair_lock_unlock((a1 + 128));
}

uint64_t re::AssetManager::assetHandleFromId_assetTablesLocked(re::AssetManager *this, re::Allocator *a2, re::Allocator *a3, const re::DynamicString *a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = *(a5 + 8);
  v24 = 0;
  v25 = 0;
  if (v10)
  {
    v11 = v10 >> 1;
  }

  else
  {
    v11 = v10 >> 1;
  }

  v22 = a3;
  v23 = 0;
  re::DynamicString::setCapacity(&v22, v11 + 39);
  re::DynamicString::append(&v22, "assetId:", 8uLL);
  snprintf(__str, 0x16uLL, "%llu", a4);
  v12 = strlen(__str);
  re::DynamicString::append(&v22, __str, v12);
  re::DynamicString::append(&v22, ".compiled", 9uLL);
  if (v23)
  {
    v13 = v23 >> 1;
  }

  else
  {
    v13 = v23 >> 1;
  }

  if (*(a5 + 8))
  {
    v14 = *(a5 + 16);
  }

  else
  {
    v14 = (a5 + 9);
  }

  v15 = strlen(v14);
  re::DynamicString::append(&v22, v14, v15);
  while (1)
  {
    v16 = v23 >> 1;
    if (v23)
    {
      v16 = v23 >> 1;
    }

    if (v13 >= v16)
    {
      break;
    }

    v17 = re::DynamicString::operator[](&v22, v13);
    v18 = __tolower(*v17);
    *re::DynamicString::operator[](&v22, v13++) = v18;
  }

  if (v23)
  {
    v19 = v24;
  }

  else
  {
    v19 = &v23 + 1;
  }

  v20 = re::AssetManager::assetHandle(a2, a3, v19, 0, 0, this);
  result = v22;
  if (v22)
  {
    if (v23)
    {
      return (*(*v22 + 40))(v20);
    }
  }

  return result;
}

os_unfair_lock_s *re::AssetManager::assetHandle@<X0>(re::AssetPath *a1@<X2>, os_unfair_lock_s *result@<X0>, int a3@<W3>, uint64_t *a4@<X8>)
{
  if (!*a1)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v7 = result;
  re::AssetManager::convertToLoadDescriptor(result, a1, v8);
  if (v8[0] == 1)
  {
    if (!a3)
    {
      re::AssetManager::assetHandle_assetTablesLocked(v7, v9);
      return re::Optional<re::AssetLoadDescriptor>::~Optional(v8);
    }

    os_unfair_lock_lock(v7 + 32);
    re::AssetManager::assetHandle_assetTablesLocked(v7, v9);
  }

  else
  {
    if (!a3)
    {
      re::AssetManager::getOrAddAssetEntry_assetTablesLocked(v7, a1, 0, 0, a4);
      return re::Optional<re::AssetLoadDescriptor>::~Optional(v8);
    }

    os_unfair_lock_lock(v7 + 32);
    re::AssetManager::getOrAddAssetEntry_assetTablesLocked(v7, a1, 0, 0, a4);
  }

  os_unfair_lock_unlock(v7 + 32);
  return re::Optional<re::AssetLoadDescriptor>::~Optional(v8);
}

uint64_t re::AssetManager::assetHandle_assetTablesLocked(re::AssetManager *this, const re::AssetLoadDescriptor *a2)
{
  v4 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(this + 232, a2);
  if (v4)
  {
    v5 = *v4;

    return re::AssetManager::assetHandle_assetTablesLocked(this, a2, v5);
  }

  else
  {
    if (*(a2 + 1))
    {
      v7 = *(a2 + 2);
    }

    else
    {
      v7 = a2 + 9;
    }

    if (!strcmp(v7, "NetworkAsset"))
    {
      re::AssetLoadDescriptor::getIntrospectableData<re::NetworkAssetLoadDescriptorParameters>(a2, v9, 0);
      v8 = v9[0];
    }

    else
    {
      uuid_generate_random(v9);
      v8 = (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];
    }

    return re::AssetManager::assetHandle_assetTablesLocked(this, a2, v8);
  }
}

void re::AssetManager::assetHandle(os_unfair_lock_s *this, const re::AssetLoadDescriptor *a2)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::assetHandle_assetTablesLocked(this, a2);

  os_unfair_lock_unlock(this + 32);
}

uint64_t re::AssetManager::getOrAddAssetEntry_assetTablesLocked@<X0>(_anonymous_namespace_ *a1@<X0>, char *a2@<X1>, char a3@<W2>, _anonymous_namespace_ *a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  re::DynamicString::setCapacity(&v24, 0);
  re::AssetPath::fullAssetPath(a2, &v24);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 136, &v24);
  if (v10)
  {
    re::AssetHandle::AssetHandle(a5, *v10);
  }

  else
  {
    re::internal::AssetEntry::makeAssetEntry(a4, &v23);
    v22 = 0;
    re::AssetPath::getAssetId(a2, &v22);
    v28 = v22;
    v11 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 184, &v28);
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + 32);
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = (v13 + 9);
      if (v14)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      v18 = strcmp(v17, "MemoryAsset") == 0;
      v19 = v23;
      *(v23 + 328) = v18;
      re::AssetManager::assignInitialMetadata(a1, v19, v12);
    }

    else
    {
      v19 = v23;
    }

    re::internal::AssetEntry::addToAssetManager_assetTablesLocked(v19, a1, a2, a3);
    v20 = re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 136, &v24, &v23);
    re::AssetHandle::AssetHandle(a5, *v20);
    if (v19)
    {
    }
  }

  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

double re::AssetManager::assetHandle@<D0>(re::AssetManager *a1@<X0>, re::Allocator *a2@<X1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = re::AssetManager::parseAssetPath(a1, a2, a3, 0, a5, v15);
  v11 = v18;
  if (v15[0])
  {
    re::AssetManager::assetHandle(&v16, a1, a4, a6);
  }

  else
  {
    v12 = *re::assetsLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (v18[8])
      {
        v14 = *&v19[7];
      }

      else
      {
        v14 = v19;
      }

      *buf = 136315394;
      v23 = a3;
      v24 = 2080;
      v25 = v14;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "asset string '%s' parse failed: %s", buf, 0x16u);
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

  if (v15[0] == 1)
  {
    v11 = &v17;
    if (v20)
    {
      if (BYTE8(v20))
      {
        (*(*v20 + 40))();
      }

      v20 = 0u;
      v21 = 0u;
    }
  }

  return re::DynamicString::deinit(v11);
}

re::Allocator *re::AssetManager::parseAssetPath@<X0>(re::AssetManager *this@<X0>, re::Allocator *a2@<X1>, char *a3@<X2>, const re::AssetPath *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v40 = 0;
  v41 = 0;
  v38 = a2;
  v39 = 0;
  re::DynamicString::setCapacity(&v38, 0);
  v43 = 0uLL;
  v42 = a2;
  re::DynamicString::setCapacity(&v42, 0);
  v44 = 0;
  v12.n128_f64[0] = re::AssetPath::parse(&v37, a3, a4, *(this + 226), *(this + 238), v33);
  if ((v33[0] & 1) == 0)
  {
    v12 = v35;
    *(a6 + 8) = v34;
    v25 = v36;
    v35 = 0u;
    v36 = 0u;
    *a6 = 0;
    *(a6 + 24) = v12;
    *(a6 + 40) = v25;
    goto LABEL_19;
  }

  if (!a5 || *(this + 768) != 1)
  {
    goto LABEL_17;
  }

  v31 = 0;
  v32 = 0;
  v29 = v38;
  v30 = 0;
  re::DynamicString::setCapacity(&v29, 0);
  re::AssetPath::fullAssetPath(&v37, &v29);
  if (v30)
  {
    v13 = v31;
  }

  else
  {
    v13 = &v30 + 1;
  }

  v14 = re::AssetManager::remapDeserializedAssetPath(this, v13);
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = *re::assetsLogObjects(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (v30)
    {
      v28 = v31;
    }

    else
    {
      v28 = &v30 + 1;
    }

    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = v15;
  }

  re::AssetPath::parse(&v37, v15, 0, *(this + 226), *(this + 238), buf);
  re::Result<re::Unit,re::DetailedError>::operator=(v33, buf);
  if (buf[0] & 1) == 0 && v46.n128_u64[0] && (v46.n128_u8[8])
  {
    (*(*v46.n128_u64[0] + 40))(v46.n128_u64[0], v47);
  }

  if (v33[0])
  {
LABEL_15:
    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }

LABEL_17:
    v17 = v37;
    v18 = v40;
    v19 = v41;
    v20 = v38;
    v21 = v39;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v22 = v43;
    v23 = v42;
    v43 = 0uLL;
    v42 = 0uLL;
    v24 = v44;
    *a6 = 1;
    *(a6 + 8) = v17;
    *(a6 + 32) = v18;
    *(a6 + 40) = v19;
    *(a6 + 16) = v20;
    *(a6 + 24) = v21;
    *(a6 + 64) = v22;
    *(a6 + 48) = v23;
    *(a6 + 80) = v24;
    goto LABEL_19;
  }

  *buf = v34;
  re::DynamicString::DynamicString(&buf[16], &v35);
  *a6 = 0;
  *(a6 + 8) = *buf;
  v27 = v47;
  *(a6 + 24) = *&buf[16];
  *(a6 + 48) = v27;
  v12 = v46;
  *(a6 + 32) = v46;
  if (v29 && (v30 & 1) != 0)
  {
    (*(*v29 + 40))();
  }

LABEL_19:
  if (v33[0] & 1) == 0 && v35.n128_u64[0] && (v35.n128_u8[8])
  {
    (*(*v35.n128_u64[0] + 40))(v12);
  }

  if (v42)
  {
    if (BYTE8(v42))
    {
      (*(*v42 + 40))(v12);
    }

    v12 = 0uLL;
    v43 = 0u;
    v42 = 0u;
  }

  result = v38;
  if (v38)
  {
    if (v39)
    {
      return (*(*v38 + 40))(v12);
    }
  }

  return result;
}

void re::AssetManager::assetHandle(re::AssetManager *this@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  re::StackScratchAllocator::StackScratchAllocator(v6);
  re::AssetManager::assetHandle(this, v6, a2, 1, 0, a3);
  re::StackScratchAllocator::~StackScratchAllocator(v6);
}

void re::AssetManager::assetHandle(re::AssetManager *this@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  re::StackScratchAllocator::StackScratchAllocator(v8);
  re::AssetManager::assetHandle(this, v8, a2, 1, a3, a4);
  re::StackScratchAllocator::~StackScratchAllocator(v8);
}

void re::AssetManager::assetHandleWithParentAssetPath(re::AssetManager *this@<X0>, char *a2@<X1>, const re::AssetPath *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  re::StackScratchAllocator::StackScratchAllocator(v49);
  re::AssetPath::invalidAssetPath(v49, &v43);
  v10 = re::AssetManager::parseAssetPath(this, v49, a2, &v43, 0, v37);
  v11 = v39;
  if ((v37[0] & 1) == 0)
  {
    v16 = *re::assetsLogObjects(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (v39[8])
      {
        v25 = *&v39[16];
      }

      else
      {
        v25 = &v39[9];
      }

      *buf = 136315394;
      *v60 = a2;
      *&v60[8] = 2080;
      *&v60[10] = v25;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "asset string '%s' unparsable: %s", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v12 = v61;
  if (v38 != v43 || ((v39[0] & 1) != 0 ? (v13 = *&v39[8]) : (v13 = &v39[1]), (v45 & 1) != 0 ? (v14 = *&v46[7]) : (v14 = v46), strcmp(v13, v14)))
  {
    if (!a4 || *(this + 768) != 1)
    {
LABEL_52:
      re::AssetManager::assetHandle(&v38, this, 1, a5);
      goto LABEL_53;
    }

    re::AssetManager::parseAssetPath(this, v49, a2, 0, 1, buf);
    if (v37[0])
    {
      if ((buf[0] & 1) == 0)
      {
        if (v40)
        {
          if (BYTE8(v40))
          {
            (*(*v40 + 40))();
          }

          v40 = 0u;
          v41 = 0u;
        }

        if (*(&v38 + 1) && (v39[0] & 1) != 0)
        {
          (*(**(&v38 + 1) + 40))();
        }

        v37[0] = 0;
        v38 = *&v60[4];
        *v39 = *v61;
        *&v40 = *&v61[24];
        *&v39[8] = *&v61[8];
        memset(v61, 0, 32);
        goto LABEL_45;
      }

      LODWORD(v38) = *&v60[4];
      re::DynamicString::operator=((&v38 + 8), &v60[12]);
      re::DynamicString::operator=(&v40, &v61[24]);
      v15 = v63;
    }

    else
    {
      if ((buf[0] & 1) == 0)
      {
        v38 = *&v60[4];
        re::DynamicString::operator=(v39, v61);
        goto LABEL_45;
      }

      if (*v39 && (v39[8] & 1) != 0)
      {
        (*(**v39 + 40))();
      }

      v37[0] = 1;
      LODWORD(v38) = *&v60[4];
      *(&v38 + 1) = *&v60[12];
      v20 = *&v61[16];
      v19 = *&v61[24];
      v21 = *v61;
      memset(v61, 0, sizeof(v61));
      *v39 = v21;
      *&v39[16] = v20;
      v40 = __PAIR128__(*&v61[32], v19);
      v23 = *(&v62 + 1);
      v22 = v62;
      v62 = 0uLL;
      v41 = __PAIR128__(v23, v22);
      *&v60[12] = 0;
      v15 = v63;
    }

    *v42 = v15;
LABEL_45:
    if (buf[0] == 1)
    {
      if (*&v61[24])
      {
        if (v61[32])
        {
          (*(**&v61[24] + 40))();
        }

        *&v61[24] = 0u;
        v62 = 0u;
      }

      v12 = &v60[12];
    }

    re::DynamicString::deinit(v12);
    goto LABEL_52;
  }

  if (*a3 == 8)
  {
    re::AssetManager::resolveChildLoadDescriptors(a3, this, buf);
    if (buf[0] == 1)
    {
      v53[0] = 0;
      v17 = *&v61[16];
      if (*(*&v61[16] + 8))
      {
        v18 = *(*&v61[16] + 16);
      }

      else
      {
        v18 = (*&v61[16] + 9);
      }

      if (!strcmp(v18, "NetworkAsset"))
      {
        re::AssetLoadDescriptor::getIntrospectableData<re::NetworkAssetLoadDescriptorParameters>(v17, v36, 0);
        re::AssetManager::assetHandle(this, &v60[4], v36[0], v50);
      }

      else
      {
        re::AssetManager::assetHandle(this, &v60[4], v50);
      }

      re::Optional<re::AssetHandle>::operator=(v53, v50);
      if (v50[0] == 1)
      {
        re::AssetHandle::~AssetHandle(&v50[8]);
      }

      if (a4 && *(this + 768) == 1 && v53[0] == 1)
      {
        v28 = re::AssetHandle::assetInfo((&v54 + 4));
        v29 = (v28[13] & 1) != 0 ? v28[14] : v28 + 105;
        v30 = re::AssetManager::remapDeserializedAssetPath(this, v29);
        if (v30)
        {
          v31 = v30;
          re::AssetManager::assetHandle(this, v30, v36);
          if (v36[1])
          {
            v50[0] = 1;
            re::AssetHandle::AssetHandle(&v50[8], v36);
            re::Optional<re::AssetHandle>::operator=(v53, v50);
            if (v50[0] == 1)
            {
              re::AssetHandle::~AssetHandle(&v50[8]);
            }
          }

          else
          {
            v35 = *re::assetsLogObjects(v32);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *v50 = 136315394;
              *&v50[4] = v31;
              v51 = 2080;
              *v52 = v29;
              _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Asset not found: '%s', remapped from '%s'", v50, 0x16u);
            }
          }

          re::AssetHandle::~AssetHandle(v36);
        }
      }

      if (v53[0] == 1)
      {
        re::AssetHandle::AssetHandle(a5, (&v54 + 4));
        if (v53[0])
        {
          re::AssetHandle::~AssetHandle((&v54 + 4));
        }
      }

      else
      {
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
      }

      if (buf[0])
      {
        re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v60[4]);
      }

      goto LABEL_53;
    }

LABEL_16:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_53;
  }

  v24 = re::AssetManager::parseAssetPath(this, v49, a2, a3, a4, buf);
  if (buf[0])
  {
    re::AssetManager::assetHandle(&v60[4], this, 1, a5);
  }

  else
  {
    v27 = *re::assetsLogObjects(v24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      re::AssetPath::fullAssetPath(a3, v50);
      v33 = (v50[8] & 1) != 0 ? *&v52[2] : &v50[9];
      v34 = (v61[8] & 1) != 0 ? *&v61[16] : &v61[9];
      *v53 = 136315650;
      v54 = a2;
      v55 = 2080;
      v56 = v33;
      v57 = 2080;
      v58 = v34;
      _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "asset string '%s' parent '%s' parse failed: %s", v53, 0x20u);
      if (*v50)
      {
        if (v50[8])
        {
          (*(**v50 + 40))();
        }
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  if (buf[0] == 1)
  {
    if (*&v61[24])
    {
      if (v61[32])
      {
        (*(**&v61[24] + 40))();
      }

      *&v61[24] = 0u;
      v62 = 0u;
    }

    v12 = &v60[12];
  }

  re::DynamicString::deinit(v12);
LABEL_53:
  if (v37[0] == 1)
  {
    if (v40)
    {
      if (BYTE8(v40))
      {
        (*(*v40 + 40))();
      }

      v40 = 0u;
      v41 = 0u;
    }

    v11 = (&v38 + 8);
  }

  v26.n128_f64[0] = re::DynamicString::deinit(v11);
  if (v47)
  {
    if (BYTE8(v47))
    {
      (*(*v47 + 40))(v26.n128_f64[0]);
    }

    v26 = 0uLL;
    v48 = 0u;
    v47 = 0u;
  }

  if (v44 && (v45 & 1) != 0)
  {
    (*(*v44 + 40))(v26);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v49);
}

void re::AssetManager::assetHandleWithParentAssetHandle(re::AssetManager *this@<X0>, char *a2@<X1>, const re::AssetHandle *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = re::AssetHandle::legacy_assetPath(a3);

  re::AssetManager::assetHandleWithParentAssetPath(this, a2, v7, 0, a4);
}

void re::AssetManager::resolveChildLoadDescriptors(re::AssetPath *this@<X3>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v31 = 0;
  AssetId = re::AssetPath::getAssetId(this, &v31);
  if (!AssetId)
  {
    v19 = *re::assetsLogObjects(AssetId);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_42:
      *a3 = 0;
      return;
    }

    LOWORD(v34) = 0;
    v20 = "Failed to get assetId from an asset path with type kAssetId.";
    v21 = v19;
    v22 = 2;
LABEL_45:
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v20, &v34, v22);
    goto LABEL_42;
  }

  os_unfair_lock_lock((a2 + 128));
  *&v34 = v31;
  v6 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 184, &v34);
  os_unfair_lock_unlock((a2 + 128));
  if (!v6 || (v8 = *(v6 + 16)) == 0)
  {
    v23 = *re::assetsLogObjects(v7);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    LODWORD(v34) = 134217984;
    *(&v34 + 4) = v31;
    v20 = "Failed to find AssetLoadDescriptors registered for assetId %llu.";
    v21 = v23;
    v22 = 12;
    goto LABEL_45;
  }

  v30 = 0;
  v28 = 0uLL;
  v27 = 0;
  v29 = 0;
  v9 = *(v6 + 32);
  v10 = 144 * v8;
  do
  {
    if (*(v9 + 8))
    {
      v11 = *(v9 + 16);
    }

    else
    {
      v11 = (v9 + 9);
    }

    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(a2 + 1904), v11);
    if (ProviderForScheme)
    {
      v13 = (*(*ProviderForScheme + 48))(&v34);
      if (v34)
      {
        v14.n128_f64[0] = re::DynamicArray<re::AssetLoadDescriptor>::add(&v27, &v34 + 8);
      }

      else
      {
        v17 = *re::assetsLogObjects(v13);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if (v35)
          {
            v18 = *&v36[7];
          }

          else
          {
            v18 = v36;
          }

          *buf = 136315138;
          v33 = v18;
          _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Failed to resolve child AssetLoadDescriptor with error: %s.", buf, 0xCu);
        }
      }

      if (v34 == 1)
      {
        if (v47)
        {
          if (BYTE8(v47))
          {
            (*(*v47 + 40))(v14);
          }

          v14 = 0uLL;
          v48 = 0u;
          v47 = 0u;
        }

        if (v42)
        {
          if (v46)
          {
            (*(*v42 + 40))(v14);
          }

          v46 = 0;
          v43 = 0;
          v44 = 0;
          v42 = 0;
          ++v45;
        }

        if (v37)
        {
          if (v41)
          {
            (*(*v37 + 40))(v14);
          }

          v41 = 0;
          v38 = 0;
          v39 = 0;
          v37 = 0;
          ++v40;
        }
      }

      if (*(&v34 + 1))
      {
        if (v35)
        {
          (*(**(&v34 + 1) + 40))(v14);
        }
      }
    }

    else
    {
      v15 = *re::assetsLogObjects(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if (*(v9 + 8))
        {
          v16 = *(v9 + 16);
        }

        else
        {
          v16 = v9 + 9;
        }

        LODWORD(v34) = 136315138;
        *(&v34 + 4) = v16;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to find a registered AssetProvider for scheme %s.", &v34, 0xCu);
      }
    }

    v9 += 144;
    v10 -= 144;
  }

  while (v10);
  v24 = v29;
  v25 = v30;
  v26 = v27;
  *a3 = 1;
  *(a3 + 8) = v26;
  *(a3 + 16) = v28;
  v27 = 0;
  v28 = 0uLL;
  *(a3 + 40) = v25;
  v30 = 0;
  v29 = v24 + 1;
  *(a3 + 32) = 1;
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v27);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::NetworkAssetLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2, re::Allocator *a3)
{
  v5 = a2;
  v6 = &unk_1EE187000;
  {
    v13 = a1;
    v12 = a3;
    v6 = &unk_1EE187000;
    v5 = a2;
    a3 = v12;
    v10 = v9;
    a1 = v13;
    if (v10)
    {
      re::introspect<re::NetworkAssetLoadDescriptorParameters>(BOOL)::info = re::introspect_NetworkAssetLoadDescriptorParameters(0);
      v6 = &unk_1EE187000;
      a1 = v13;
      v5 = a2;
      a3 = v12;
    }
  }

  v7 = *(v6 + 170);

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v7, v5, a3);
}

void re::AssetManager::assetHandle(os_unfair_lock_s *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  os_unfair_lock_lock(a1 + 32);
  re::AssetManager::assetHandle_assetTablesLocked(a1, a2, a3, &v8);
  *a4 = 1;
  *(a4 + 8) = v8;
  v8 = 0uLL;
  *(a4 + 24) = v9;
  v9 = 0;
  re::AssetHandle::~AssetHandle(&v8);
  os_unfair_lock_unlock(a1 + 32);
}

uint64_t re::Optional<re::AssetHandle>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::AssetHandle::~AssetHandle((a1 + 8));
      *a1 = 0;
      return a1;
    }

    v3 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
LABEL_6:
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
  }

  return a1;
}

uint64_t re::AssetManager::remapDeserializedAssetPath(re::AssetManager *this, char *a2)
{
  if (*(this + 768) != 1)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 32);
  v4 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(this + 368, a2);
  if (v4)
  {
    if (*(v4 + 8))
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = v4 + 9;
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v5;
}

double re::DynamicArray<re::AssetLoadDescriptor>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AssetLoadDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 144 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v11 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v13;
  ++*(a2 + 56);
  ++*(v5 + 56);
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  v14 = *(a2 + 80);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 80) = v14;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v15 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v15;
  v16 = *(v5 + 104);
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 104) = v16;
  ++*(a2 + 96);
  ++*(v5 + 96);
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 136) = *(a2 + 136);
  v17 = *(a2 + 120);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  v18 = *(a2 + 128);
  *(a2 + 136) = 0;
  v20 = *(v5 + 120);
  v19 = *(v5 + 128);
  *(v5 + 120) = v17;
  *(v5 + 128) = v18;
  *(a2 + 120) = v20;
  *(a2 + 128) = v19;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::Allocator *re::AssetManager::parseAssetPath@<X0>(re::AssetManager *this@<X0>, char *a2@<X1>, const re::AssetPath *a3@<X2>, uint64_t a4@<X8>)
{
}

void re::AssetManager::assetHandle(os_unfair_lock_s *this, const re::AssetLoadDescriptor *a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::assetHandle_assetTablesLocked(this, a2, a3);

  os_unfair_lock_unlock(this + 32);
}

uint64_t re::AssetManager::assetHandle_assetTablesLocked(re::AssetManager *this, const re::AssetLoadDescriptor *a2, uint64_t a3)
{
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  re::DynamicArray<re::AssetLoadDescriptor>::add(v6, a2);
  re::AssetManager::assetHandle_assetTablesLocked(this, v6, a3);
  return re::DynamicArray<re::AssetLoadDescriptor>::deinit(v6);
}

uint64_t re::AssetManager::assetHandle_assetTablesLocked@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, re::AssetManager *a4@<X8>)
{
  v8 = *(a1 + 184);
  v7 = (a1 + 184);
  v9 = a2[4];
  if (!v8 || (v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27)), v11 = *(*(a1 + 192) + 4 * ((v10 ^ (v10 >> 31)) % *(a1 + 208))), v11 == 0x7FFFFFFF))
  {
LABEL_6:
    v7 = re::internal::AssetIdLoadDescriptorTable::addNewImmutable(v7, a3, a2);
    if (*(a1 + 1920))
    {
      re::NetworkActionQueue::queueSyncActionShareAsset(a1 + 1152, a3, 0);
    }
  }

  else
  {
    v12 = *(a1 + 200);
    while (*(v12 + (v11 << 6) + 8) != a3)
    {
      v11 = *(v12 + (v11 << 6)) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t re::internal::AssetIdLoadDescriptorTable::addNewImmutable(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v16 = a2;
  if (!*a1 || (v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27)), v6 = *(*(a1 + 8) + 4 * ((v5 ^ (v5 >> 31)) % *(a1 + 24))), v6 == 0x7FFFFFFF))
  {
LABEL_6:
    v8 = a3[2];
    if (!v8)
    {
LABEL_13:
      re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1, &v16, a3);
      return 1;
    }

    v9 = a3[4];
    v10 = 144 * v8;
    while (1)
    {
      v11 = re::Hash<re::AssetLoadDescriptor>::operator()(v17, v9);
      re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(a1 + 48, v9, v11, v17);
      if (v18 != 0x7FFFFFFF)
      {
        break;
      }

      v9 += 144;
      v10 -= 144;
      if (!v10)
      {
        v12 = a3[2];
        if (v12)
        {
          v13 = a3[4];
          v14 = 144 * v12;
          do
          {
            re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::add(a1 + 48, v13, &v16);
            v13 += 18;
            v14 -= 144;
          }

          while (v14);
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = *(a1 + 16);
    while (*(v7 + (v6 << 6) + 8) != a2)
    {
      v6 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

uint64_t re::AssetManager::createNewImmutableAssetHandle@<X0>(uint64_t a1@<X0>, re::DynamicString *a2@<X1>, _anonymous_namespace_ *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  re::DynamicArray<re::AssetLoadDescriptor>::add(v8, a2);
  uuid_generate_random(out);
  re::AssetManager::createNewImmutableAssetHandle(a1, v8, (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out, a3, a4);
  return re::DynamicArray<re::AssetLoadDescriptor>::deinit(v8);
}

void re::AssetManager::createNewImmutableAssetHandle(uint64_t a1@<X0>, uint64_t *a2@<X1>, _anonymous_namespace_ *a3@<X2>, uint64_t a4@<X8>)
{
  uuid_generate_random(v9);
  v8 = (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];

  re::AssetManager::createNewImmutableAssetHandle(a1, a2, v8, a3, a4);
}

void re::AssetManager::createNewImmutableAssetHandle(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, _anonymous_namespace_ *a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    *a5 = 0;
    return;
  }

  os_unfair_lock_lock((a1 + 128));
  if (*(a1 + 184))
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    v12 = *(*(a1 + 192) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 208)));
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(a1 + 200);
      while (*(v13 + (v12 << 6) + 8) != a3)
      {
        v12 = *(v13 + (v12 << 6)) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_7;
        }
      }

      v21 = *re::assetsLogObjects(v10);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      LODWORD(v24) = 134217984;
      *(&v24 + 4) = a3;
      v22 = "Can't create new immutable asset. AssetId:%llu already exists.";
      v23 = v21;
      goto LABEL_22;
    }
  }

LABEL_7:
  v14 = a2[2];
  if (v14)
  {
    v15 = a2[4];
    v16 = 144 * v14;
    while (1)
    {
      v17 = re::Hash<re::AssetLoadDescriptor>::operator()(&v24, v15);
      v18 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(a1 + 232, v15, v17, &v24);
      if (HIDWORD(v24) != 0x7FFFFFFF)
      {
        break;
      }

      v15 += 144;
      v16 -= 144;
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    v19 = *re::assetsLogObjects(v18);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    if (*(v15 + 8))
    {
      v20 = *(v15 + 16);
    }

    else
    {
      v20 = v15 + 9;
    }

    LODWORD(v24) = 136315138;
    *(&v24 + 4) = v20;
    v22 = "Can't create new immutable asset. An asset with specified load descriptor %s already exists.";
    v23 = v19;
LABEL_22:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v22, &v24, 0xCu);
LABEL_17:
    *a5 = 0;
    goto LABEL_18;
  }

LABEL_11:
  re::AssetManager::addNewAssetEntry_assetTablesLocked(&v24, a1, a2, a3, 0, a4);
  *a5 = 1;
  *(a5 + 8) = v24;
  v24 = 0uLL;
  *(a5 + 24) = v25;
  v25 = 0;
  re::AssetHandle::~AssetHandle(&v24);
LABEL_18:
  os_unfair_lock_unlock((a1 + 128));
}

uint64_t re::AssetManager::createNewImmutableAssetHandle@<X0>(uint64_t a1@<X0>, re::DynamicString *a2@<X1>, unint64_t a3@<X2>, _anonymous_namespace_ *a4@<X3>, uint64_t a5@<X8>)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::DynamicArray<re::AssetLoadDescriptor>::add(v10, a2);
  re::AssetManager::createNewImmutableAssetHandle(a1, v10, a3, a4, a5);
  return re::DynamicArray<re::AssetLoadDescriptor>::deinit(v10);
}

void re::AssetManager::addNewAssetEntry_assetTablesLocked(_anonymous_namespace_ *a1, uint64_t a2, uint64_t *a3, unint64_t a4, int a5, _anonymous_namespace_ *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a2 + 184;
  if (!*(a2 + 184) || (v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27)), v14 = *(*(a2 + 192) + 4 * ((v13 ^ (v13 >> 31)) % *(a2 + 208))), v14 == 0x7FFFFFFF))
  {
LABEL_6:
    *v38 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v16 = re::DynamicString::setCapacity(&v39[4], 0);
    *(&v43 + 1) = 0;
    v44 = 0uLL;
    re::DynamicString::setCapacity(&v43, 0);
    v45 = 0;
    v17 = a3[4];
    if (*(v17 + 120))
    {
      v18 = *(v17 + 128);
    }

    else
    {
      v18 = (v17 + 121);
    }

    v19 = re::internal::AssetTypeRegistry::assetTypeWithName(*(a2 + 1808), v18);
    re::AssetPath::initAssetIdAssetPath(v38, a4, v19);
    v35 = 0;
    v36 = 0;
    v33 = *&v39[4];
    v34 = 0;
    re::DynamicString::setCapacity(&v33, 0);
    re::AssetPath::fullAssetPath(v38, &v33);
    if (v34)
    {
      v20 = v35;
    }

    else
    {
      v20 = &v34 + 1;
    }

    v21 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v12 - 48, v20);
    if (v21)
    {
      v22 = *re::assetsLogObjects(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (v34)
        {
          v32 = v35;
        }

        else
        {
          v32 = &v34 + 1;
        }

        *buf = 136315138;
        *&buf[4] = v32;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Can't create new immutable asset. An immutable asset %s already exists.", buf, 0xCu);
      }

      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
    }

    else
    {
      if (a5)
      {
        re::internal::AssetIdLoadDescriptorTable::addNewMutable(v12, a4, a3);
      }

      else
      {
        re::internal::AssetIdLoadDescriptorTable::addNewImmutable(v12, a4, a3);
      }

      if (*(a2 + 1920))
      {
        re::NetworkActionQueue::queueSyncActionShareAsset(a2 + 1152, a4, a6);
      }

      re::internal::AssetEntry::makeAssetEntry(a6, buf);
      v24 = a3[4];
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = (v24 + 9);
      if (v25)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      v29 = strcmp(v28, "MemoryAsset") == 0;
      v30 = *buf;
      *(*buf + 328) = v29;
      re::internal::AssetEntry::addToAssetManager_assetTablesLocked(v30, a2, v38, a5);
      re::AssetManager::assignInitialMetadata(a2, v30, a3);
      v31 = re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v12 - 48, &v33, buf);
      re::AssetHandle::AssetHandle(a1, *v31);
    }

    if (v33 && (v34 & 1) != 0)
    {
      (*(*v33 + 40))();
    }

    if (v43)
    {
      if (BYTE8(v43))
      {
        (*(*v43 + 40))();
      }

      v44 = 0u;
      v43 = 0u;
    }

    if (*&v39[4])
    {
      if (v40)
      {
        (*(**&v39[4] + 40))();
      }
    }
  }

  else
  {
    v15 = *(a2 + 200);
    while (*(v15 + (v14 << 6) + 8) != a4)
    {
      v14 = *(v15 + (v14 << 6)) & 0x7FFFFFFF;
      if (v14 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    v23 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v38 = 134217984;
      *v39 = a4;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Can't add new assetEntry. AssetId:%llu already exists.", v38, 0xCu);
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

void re::AssetManager::existingImmutableAssetHandle(re::AssetManager *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock(this + 32);
  v6 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(this + 232, a2);
  if (v6)
  {
    v7 = v6;
    if (*(a2 + 120))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = a2 + 121;
    }

    v9 = re::internal::AssetTypeRegistry::assetTypeWithName(*(this + 226), v8);
    *v20 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v10 = re::DynamicString::setCapacity(&v21, 0);
    *(&v25 + 1) = 0;
    v26 = 0uLL;
    re::DynamicString::setCapacity(&v25, 0);
    v27 = 0;
    re::AssetPath::initAssetIdAssetPath(v20, *v7, v9);
    v18 = 0;
    v19 = 0;
    v16 = v21;
    v17 = 0;
    re::DynamicString::setCapacity(&v16, 0);
    re::AssetPath::fullAssetPath(v20, &v16);
    if (v17)
    {
      v11 = v18;
    }

    else
    {
      v11 = &v17 + 1;
    }

    v12 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(this + 136, v11);
    if (v12)
    {
      re::AssetHandle::AssetHandle(&v14, *v12);
      *(a3 + 8) = v14;
      v14 = 0uLL;
      *(a3 + 24) = v15;
      v15 = 0;
      re::AssetHandle::~AssetHandle(&v14);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
    if (v16 && (v17 & 1) != 0)
    {
      (*(*v16 + 40))();
    }

    if (v25)
    {
      if (BYTE8(v25))
      {
        (*(*v25 + 40))();
      }

      v26 = 0u;
      v25 = 0u;
    }

    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }
  }

  else
  {
    *a3 = 0;
  }

  os_unfair_lock_unlock(this + 32);
}

uint64_t re::AssetManager::createNewMutableAssetHandle@<X0>(uint64_t a1@<X0>, re::DynamicString *a2@<X1>, _anonymous_namespace_ *a3@<X2>, int a4@<W3>, re::AssetHandle *a5@<X8>)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  re::DynamicArray<re::AssetLoadDescriptor>::add(v15, a2);
  re::AssetManager::createNewMutableAssetHandle(a1, v15, a3, a4, &v10);
  v12 = 1;
  v13 = v10;
  v10 = 0uLL;
  v14 = v11;
  v11 = 0;
  re::AssetHandle::~AssetHandle(&v10);
  re::AssetHandle::AssetHandle(a5, &v13);
  re::AssetHandle::~AssetHandle(&v13);
  return re::DynamicArray<re::AssetLoadDescriptor>::deinit(v15);
}

void re::AssetManager::createNewMutableAssetHandle(uint64_t a1@<X0>, uint64_t *a2@<X1>, _anonymous_namespace_ *a3@<X2>, int a4@<W3>, re::AssetHandle *a5@<X8>)
{
  uuid_generate_random(&v10);
  re::AssetManager::createNewMutableAssetHandle(a1, a2, (v11[0] + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9) ^ v10, a3, a4, &v10);
  re::AssetHandle::AssetHandle(a5, v11);
  if (v10 == 1)
  {
    re::AssetHandle::~AssetHandle(v11);
  }
}

void re::AssetManager::createNewMutableAssetHandle(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, _anonymous_namespace_ *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    *a6 = 0;
    return;
  }

  if (a5)
  {
    v11 = (a1 + 128);
    os_unfair_lock_lock((a1 + 128));
  }

  else
  {
    v11 = 0;
  }

  if (!*(a1 + 184) || (v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27)), v13 = *(*(a1 + 192) + 4 * ((v12 ^ (v12 >> 31)) % *(a1 + 208))), v13 == 0x7FFFFFFF))
  {
LABEL_11:
    re::AssetManager::addNewAssetEntry_assetTablesLocked(&v16, a1, a2, a3, 1, a4);
    *a6 = 1;
    *(a6 + 8) = v16;
    v16 = 0uLL;
    *(a6 + 24) = v17;
    v17 = 0;
    re::AssetHandle::~AssetHandle(&v16);
    if (!v11)
    {
      return;
    }

    goto LABEL_12;
  }

  v14 = *(a1 + 200);
  while (*(v14 + (v13 << 6) + 8) != a3)
  {
    v13 = *(v14 + (v13 << 6)) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }
  }

  v15 = *re::assetsLogObjects(a1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v16) = 134217984;
    *(&v16 + 4) = a3;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Can't create new mutable asset. AssetId:%llu already exists.", &v16, 0xCu);
  }

  *a6 = 0;
  if (v11)
  {
LABEL_12:
    os_unfair_lock_unlock(v11);
  }
}

uint64_t re::AssetManager::createNewMutableAssetHandle@<X0>(uint64_t a1@<X0>, re::DynamicString *a2@<X1>, unint64_t a3@<X2>, _anonymous_namespace_ *a4@<X3>, uint64_t a5@<X8>)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::DynamicArray<re::AssetLoadDescriptor>::add(v10, a2);
  re::AssetManager::createNewMutableAssetHandle(a1, v10, a3, a4, 1, a5);
  return re::DynamicArray<re::AssetLoadDescriptor>::deinit(v10);
}

void re::AssetManager::existingMutableAssetHandles(os_unfair_lock_s *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetManager *a3@<X8>)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::existingMutableAssetHandles_assetTablesLocked(a3, this, a2);

  os_unfair_lock_unlock(this + 32);
}

uint64_t re::AssetManager::existingMutableAssetHandles_assetTablesLocked(re::AssetManager *this, re::internal::AssetTypeRegistry **a2, uint64_t a3)
{
  result = re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet((a2 + 35), a3);
  if (result)
  {
    v7 = result;
    if (*(a3 + 120))
    {
      v8 = *(a3 + 128);
    }

    else
    {
      v8 = (a3 + 121);
    }

    v9 = re::internal::AssetTypeRegistry::assetTypeWithName(a2[226], v8);
    *v24 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v10 = re::DynamicString::setCapacity(&v25, 0);
    *(&v29 + 1) = 0;
    v30 = 0uLL;
    re::DynamicString::setCapacity(&v29, 0);
    v31 = 0;
    *(this + 4) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = 0;
    *(this + 6) = 0;
    v11 = *(v7 + 32);
    if (v11)
    {
      v12 = 0;
      v13 = (*(v7 + 16) + 8);
      while (1)
      {
        v14 = *v13;
        v13 += 6;
        if (v14 < 0)
        {
          break;
        }

        if (v11 == ++v12)
        {
          LODWORD(v12) = *(v7 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    if (v12 != v11)
    {
      do
      {
        re::AssetPath::initAssetIdAssetPath(v24, *(*(v7 + 16) + 24 * v12 + 16), v9);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v20 = v25;
        re::DynamicString::setCapacity(&v20, 0);
        re::AssetPath::fullAssetPath(v24, &v20);
        if (v21)
        {
          v15 = v22;
        }

        else
        {
          v15 = &v21 + 1;
        }

        v16 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>((a2 + 17), v15);
        if (v16)
        {
          re::AssetHandle::AssetHandle(v19, *v16);
          re::DynamicArray<re::AssetHandle>::add(this, v19);
          re::AssetHandle::~AssetHandle(v19);
        }

        v17 = *(v7 + 32);
        if (v17 <= v12 + 1)
        {
          v18 = v12 + 1;
        }

        else
        {
          v18 = *(v7 + 32);
        }

        while (v18 - 1 != v12)
        {
          LODWORD(v12) = v12 + 1;
          if ((*(*(v7 + 16) + 24 * v12 + 8) & 0x80000000) != 0)
          {
            goto LABEL_25;
          }
        }

        LODWORD(v12) = v18;
LABEL_25:
        if (v20 && (v21 & 1) != 0)
        {
          (*(*v20 + 40))();
          v17 = *(v7 + 32);
        }
      }

      while (v12 != v17);
    }

    if (v29)
    {
      if (BYTE8(v29))
      {
        (*(*v29 + 40))();
      }

      v30 = 0u;
      v29 = 0u;
    }

    result = v25;
    if (v25)
    {
      if (v26)
      {
        return (*(*v25 + 40))();
      }
    }
  }

  else
  {
    *(this + 4) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = 0;
    *(this + 6) = 0;
  }

  return result;
}

void *re::DynamicArray<re::AssetHandle>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::AssetHandle>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 24 * v4);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v5[1] = a2[1];
  a2[1] = 0;
  v6 = *v5;
  *v5 = 0;
  *v5 = *a2;
  *a2 = v6;
  v7 = v5[2];
  v5[2] = a2[2];
  a2[2] = v7;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::AssetManager::convertToMutable(os_unfair_lock_s *this, const re::AssetHandle *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 257))
  {
    return 1;
  }

  v4 = *(v2 + 112);
  if ((v4 + 1) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_lock(this + 32);
  v20 = v5;
  v6 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&this[46], &v20);
  os_unfair_lock_unlock(this + 32);
  if (!v6 || (v7 = *(v6 + 16)) == 0)
  {
LABEL_26:
    os_unfair_lock_lock(this + 32);
    re::AssetManager::lookupExistingAsset_assetTablesLocked(this, v5, &v20);
    if (v20 == 1)
    {
      *buf = v5;
      v12 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&this[46], buf);
      v13 = *(v12 + 32);
      v14 = *(v12 + 16);
      if (v14)
      {
        v15 = v12;
        v16 = 144 * v14;
        do
        {
          re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::remove(&this[58], v13);
          v13 += 18;
          v16 -= 144;
        }

        while (v16);
        v17 = *(v15 + 16);
        v13 = *(v15 + 32);
      }

      else
      {
        v17 = 0;
      }

      re::internal::AssetIdLoadDescriptorTable::insertIntoMutableTables(&this[46], v5, v17, v13);
      *(v22 + 257) = 1;
      re::AssetHandle::~AssetHandle(v21);
    }

    os_unfair_lock_unlock(this + 32);
    return 1;
  }

  v8 = *(v6 + 32);
  v9 = 144 * v7;
  while (1)
  {
    re::DynamicString::DynamicString(&v20, v8);
    re::DynamicArray<BOOL>::DynamicArray(&v23, v8 + 4);
    re::DynamicArray<BOOL>::DynamicArray(&v28, v8 + 9);
    re::DynamicString::DynamicString(&v33, (v8 + 14));
    isEngineAssetDescriptor = re::FrameworkAssetProvider::isEngineAssetDescriptor(&v20, v10);
    if (isEngineAssetDescriptor)
    {
      break;
    }

    if (v33)
    {
      if (BYTE8(v33))
      {
        (*(*v33 + 40))();
      }

      v33 = 0u;
      v34 = 0u;
    }

    if (v28)
    {
      if (v32)
      {
        (*(*v28 + 40))();
      }

      v32 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      ++v31;
    }

    if (v23)
    {
      if (v27)
      {
        (*(*v23 + 40))();
      }

      v27 = 0;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      ++v26;
    }

    if (v20 && (v21[0] & 1) != 0)
    {
      (*(*v20 + 40))();
    }

    v8 += 18;
    v9 -= 144;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v19 = *re::assetsLogObjects(isEngineAssetDescriptor);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Engine assets cannot be mutated.", buf, 2u);
  }

  if (v33)
  {
    if (BYTE8(v33))
    {
      (*(*v33 + 40))();
    }

    v33 = 0u;
    v34 = 0u;
  }

  if (v28)
  {
    if (v32)
    {
      (*(*v28 + 40))();
    }

    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    ++v31;
  }

  if (v23)
  {
    if (v27)
    {
      (*(*v23 + 40))();
    }

    v27 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    ++v26;
  }

  if (v20 && (v21[0] & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return 0;
}

unint64_t re::AssetManager::lookupExistingAsset_assetTablesLocked@<X0>(re::internal::AssetTypeRegistry **this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v15 = a2;
  result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 23), &v15);
  if (result && *(result + 16))
  {
    v7 = *(result + 32);
    if (*(v7 + 120))
    {
      v8 = *(v7 + 128);
    }

    else
    {
      v8 = (v7 + 121);
    }

    v9 = re::internal::AssetTypeRegistry::assetTypeWithName(this[226], v8);
    LODWORD(v15) = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v10 = re::DynamicString::setCapacity(&v16, 0);
    *(&v20 + 1) = 0;
    v21 = 0uLL;
    re::DynamicString::setCapacity(&v20, 0);
    v22 = 0;
    re::AssetPath::initAssetIdAssetPath(&v15, a2, v9);
    v13 = 0;
    v14 = 0;
    v11 = v16;
    v12 = 0;
    re::DynamicString::setCapacity(&v11, 0);
    re::AssetPath::fullAssetPath(&v15, &v11);
    re::AssetManager::lookupExistingAsset_assetTablesLocked(this, &v11, a3);
    if (v11 && (v12 & 1) != 0)
    {
      (*(*v11 + 40))();
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

    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))();
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void re::AssetManager::lookupExistingAsset(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::lookupExistingAsset_assetTablesLocked(this, a2, a3);

  os_unfair_lock_unlock(this + 32);
}

void re::AssetManager::lookupExistingAsset_assetTablesLocked(re::AssetManager *this@<X0>, const re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 136, a2);
  if (v4)
  {
    re::AssetHandle::AssetHandle(&v6, *v4);
    *(a3 + 8) = v6;
    v6 = 0uLL;
    *(a3 + 24) = v7;
    v7 = 0;
    re::AssetHandle::~AssetHandle(&v6);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

void re::AssetManager::lookupExistingAsset(re::AssetManager *this, os_unfair_lock_s *a2, uint64_t a3)
{
  os_unfair_lock_lock(a2 + 32);
  v6 = *(a3 + 8);
  v9 = 0;
  v10 = 0;
  v7 = v6;
  v8 = 0;
  re::DynamicString::setCapacity(&v7, 0);
  re::AssetPath::fullAssetPath(a3, &v7);
  re::AssetManager::lookupExistingAsset_assetTablesLocked(a2, &v7, this);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  os_unfair_lock_unlock(a2 + 32);
}

void re::AssetManager::lookupExistingAsset(os_unfair_lock_s *this@<X0>, const re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::lookupExistingAsset_assetTablesLocked(this, a2, a3);

  os_unfair_lock_unlock(this + 32);
}

void re::AssetManager::lookupExistingImmutableAssetId(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16))
  {
    os_unfair_lock_lock(a1 + 32);
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = *(a2 + 32);
      v8 = 144 * v6;
      while (1)
      {
        v9 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(&a1[58], v7);
        if (v9)
        {
          break;
        }

        v7 += 144;
        v8 -= 144;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      *a3 = 1;
      *(a3 + 8) = *v9;
    }

    else
    {
LABEL_6:
      *a3 = 0;
    }

    os_unfair_lock_unlock(a1 + 32);
  }

  else
  {
    *a3 = 0;
  }
}

void re::AssetManager::loadDescriptorsFromAssetId(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  os_unfair_lock_lock(this + 32);
  v7 = a2;
  v6 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&this[46], &v7);
  os_unfair_lock_unlock(this + 32);
  if (v6)
  {
    *a3 = 1;
    re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray((a3 + 8), v6);
  }

  else
  {
    *a3 = 0;
  }
}

void re::AssetManager::readLoadDescriptorsForAsset(os_unfair_lock_s *a1, re::AssetHandle *this, uint64_t a3)
{
  v5 = *(re::AssetHandle::assetInfo(this) + 10);
  if ((v5 + 1) >= 2)
  {
    os_unfair_lock_lock(a1 + 32);
    v7 = v5;
    v6 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&a1[46], &v7);
    if (v6)
    {
      (*(**(a3 + 32) + 16))(*(a3 + 32), v6);
    }

    os_unfair_lock_unlock(a1 + 32);
  }
}

int *re::internal::AssetIdLoadDescriptorTable::remove(int *this, unint64_t a2)
{
  v27 = a2;
  if (*this)
  {
    v2 = this;
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = v3 ^ (v3 >> 31);
    v5 = *(*(this + 1) + 4 * (v4 % this[6]));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(this + 2);
      while (*(v6 + (v5 << 6) + 8) != a2)
      {
        v5 = *(v6 + (v5 << 6)) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          return this;
        }
      }

      re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this, &v27, v4, v28);
      v7 = *(v2 + 16) + (v30 << 6);
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = *(v7 + 48);
        v10 = 144 * v8;
        do
        {
          v11 = re::Hash<re::AssetLoadDescriptor>::operator()(v28, v9);
          re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(v2 + 48, v9, v11, v28);
          if (v30 != 0x7FFFFFFF && *(*(v2 + 64) + 168 * v30 + 152) == v27)
          {
            re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::remove(v2 + 48, v9);
          }

          v12 = re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(v2 + 96, v9);
          if (v12)
          {
            v13 = v12;
            if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v12, &v27))
            {
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v13, &v27);
              if (!*(v13 + 28))
              {
                v14 = re::Hash<re::AssetLoadDescriptor>::operator()(v28, v9);
                re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::findEntry<re::AssetLoadDescriptor>(v28, v2 + 96, v9, v14);
                v15 = v30;
                if (v30 != 0x7FFFFFFF)
                {
                  v16 = *(v2 + 112);
                  v17 = (v16 + 208 * v30);
                  v18 = *v17 & 0x7FFFFFFF;
                  if (v31 == 0x7FFFFFFF)
                  {
                    *(*(v2 + 104) + 4 * v29) = v18;
                  }

                  else
                  {
                    *(v16 + 208 * v31) = *(v16 + 208 * v31) & 0x80000000 | v18;
                  }

                  re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::EntryBase::free(v17);
                  *(*(v2 + 112) + 208 * v15) = *(*(v2 + 112) + 208 * v15) & 0x80000000 | *(v2 + 132);
                  --*(v2 + 124);
                  v19 = *(v2 + 136) + 1;
                  *(v2 + 132) = v15;
                  *(v2 + 136) = v19;
                }
              }
            }
          }

          v9 += 144;
          v10 -= 144;
        }

        while (v10);
      }

      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
      this = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v2, &v27, v20 ^ (v20 >> 31), v28);
      v21 = v30;
      if (v30 != 0x7FFFFFFF)
      {
        v22 = *(v2 + 16);
        v23 = *(v22 + (v30 << 6)) & 0x7FFFFFFF;
        if (v31 == 0x7FFFFFFF)
        {
          *(*(v2 + 8) + 4 * v29) = v23;
          v21 = v30;
        }

        else
        {
          *(v22 + (v31 << 6)) = *(v22 + (v31 << 6)) & 0x80000000 | v23;
        }

        this = (v22 + (v21 << 6));
        v24 = *this;
        if (*this < 0)
        {
          *this = v24 & 0x7FFFFFFF;
          this = re::DynamicArray<re::AssetLoadDescriptor>::deinit((this + 4));
          v25 = v30;
          v22 = *(v2 + 16);
          v24 = *(v22 + (v30 << 6));
          LODWORD(v21) = v30;
        }

        else
        {
          v25 = v21;
        }

        *(v22 + (v25 << 6)) = *(v2 + 36) | v24 & 0x80000000;
        --*(v2 + 28);
        v26 = *(v2 + 40) + 1;
        *(v2 + 36) = v21;
        *(v2 + 40) = v26;
      }
    }
  }

  return this;
}

uint64_t re::internal::AssetIdLoadDescriptorTable::addNewMutable(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  v8 = a2;
  if (!*result || (v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27)), v6 = *(*(result + 8) + 4 * ((v5 ^ (v5 >> 31)) % *(result + 24))), v6 == 0x7FFFFFFF))
  {
LABEL_6:
    re::internal::AssetIdLoadDescriptorTable::insertIntoMutableTables(result, a2, *(a3 + 16), *(a3 + 32));
    return re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v4, &v8, a3);
  }

  else
  {
    v7 = *(result + 16);
    while (*(v7 + (v6 << 6) + 8) != a2)
    {
      v6 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

double re::AssetManager::assetTypeFromString@<D0>(os_unfair_lock_s *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock(this + 32);
  v6 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&this[34], a2);
  os_unfair_lock_unlock(this + 32);
  if (v6)
  {
    v9 = *(*v6 + 280);
    *a3 = 1;
    *(a3 + 8) = v9;
  }

  else
  {
    if (v16[0])
    {
      v10 = (&v17 + 8);
      *a3 = 1;
      v11 = v19;
      *(a3 + 8) = v21;
      if (v11)
      {
        if (BYTE8(v19))
        {
          (*(*v11 + 40))(v11, v20);
        }

        v19 = 0u;
        v20 = 0u;
      }
    }

    else
    {
      v10 = v18;
      v12 = v17;
      re::DynamicString::DynamicString(&v13, v18);
      *a3 = 0;
      *(a3 + 8) = v12;
      *(a3 + 24) = v13;
      *(a3 + 48) = v15;
      *(a3 + 32) = v14;
    }

    return re::DynamicString::deinit(v10);
  }

  return result;
}

double re::AssetManager::assignInitialMetadata(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  if (a3 && *(a3 + 16))
  {
    v4 = *(a3 + 32);
    v5 = *(a1 + 1904);
    v6 = (*(v4 + 8) & 1) != 0 ? *(v4 + 16) : (v4 + 9);
    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(v5, v6);
    if (ProviderForScheme)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v20 = 0x7FFFFFFFLL;
      (*(*ProviderForScheme + 80))(ProviderForScheme, v4, &v17);
      v9 = v19;
      if (v19)
      {
        v10 = 0;
        v11 = v18;
        while (1)
        {
          v12 = *v11;
          v11 += 14;
          if (v12 < 0)
          {
            break;
          }

          if (v19 == ++v10)
          {
            LODWORD(v10) = v19;
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 != v19)
      {
        v13 = v18;
        do
        {
          v14 = v13 + 56 * v10;
          if (*(v14 + 32))
          {
            v15 = *(v14 + 40);
          }

          else
          {
            v15 = (v14 + 33);
          }

          os_unfair_lock_lock(a2 + 128);
          re::internal::AssetEntry::setOrClearMetadata_stateLocked(a2, (v14 + 8), v15);
          os_unfair_lock_unlock(a2 + 128);
          if (v19 <= v10 + 1)
          {
            v16 = v10 + 1;
          }

          else
          {
            v16 = v19;
          }

          v13 = v18;
          while (v16 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(v18 + 56 * v10) & 0x80000000) != 0)
            {
              goto LABEL_26;
            }
          }

          LODWORD(v10) = v16;
LABEL_26:
          ;
        }

        while (v10 != v9);
      }

      return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v17);
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  if (HIDWORD(v13) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v13) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
  re::DynamicString::DynamicString((v7 + 8), a2);
  v8 = *a3;
  *(v7 + 40) = *a3;
  v9 = v7 + 40;
  if (v8)
  {
    v10 = (v8 + 8);
  }

  ++*(a1 + 40);
  return v9;
}

uint64_t re::AssetManager::assignCompiledAssetDataToAssetHandle(uint64_t a1, re::internal::SharedAssetPointer *a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 8);
  if (atomic_load((v8 + 896)))
  {
    re::AssetManager::unloadAssetAsync(a1, *(a3 + 8), 1);
  }

  v10 = *(a1 + 1808);
  v22[0] = *(v8 + 280);
  v11 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v10, v22);
  (*(**v11 + 128))(*v11);
  v12 = *v11;
  os_unfair_lock_lock((v8 + 512));
  re::internal::AssetEntry::setIsLoading_locked(v8, 1);
  os_unfair_lock_unlock((v8 + 512));
  re::AssetManager::processAssetPointer(a1, a2, v8, 0);
  if (*(v8 + 112) == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v8 + 112);
  }

  re::AssetSignpost::ScopeGuard::ScopeGuard(v22, 2056, v13, **(*(a3 + 8) + 280));
  v14 = (*(*v12 + 24))(v12, a2, 0, 0);
  if (v14)
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v22);
    os_unfair_lock_lock((v8 + 512));
    re::internal::SharedAssetPointer::makeSharedAssetPointer(a2, v22);
    if (*(v8 + 112) == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v8 + 112);
    }

    re::internal::AssetEntry::LoadState::setLoadingAssetPointer_locked(v8 + 896, v22, v15);
    if (v22[0])
    {
    }

    if (a4)
    {
      re::AssetManager::queueEntryForRegistration_entryStateLocked(a1, v8);
    }

    else
    {
      re::AssetManager::entryReadyForRegistration_entryStateLocked(a1, v8, v16, v17);
    }

    os_unfair_lock_unlock((v8 + 512));
  }

  else
  {
    os_unfair_lock_lock((v8 + 512));
    v18 = (*(*v12 + 16))(v12, a2);
    re::AssetManager::putEntryInFailedState_entryStateLocked(v19, v8, 303, v21);
    if (*&v21[0])
    {
      if (BYTE8(v21[0]))
      {
        (*(**&v21[0] + 40))();
      }

      memset(v21, 0, sizeof(v21));
    }

    os_unfair_lock_unlock((v8 + 512));
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v22);
  }

  return v14;
}

uint64_t re::AssetManager::processAssetPointer(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a3 + 33, a4);
  v6 = *(a1 + 1808);
  v58 = a3;
  *buf = a3[35];
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, buf);
  (*(**v7 + 128))(*v7);
  v59 = *v7;
  (*(**v7 + 176))(&v65);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v64 = 0x7FFFFFFFLL;
  if (v66)
  {
    v8 = v67;
    v9 = &v67[v66];
    do
    {
      v10 = *v8;
      re::AssetHandle::getOrBuildSerializationString(*v8, buf);
      if (buf[8])
      {
        v11 = *&buf[8] >> 1;
      }

      else
      {
        v11 = buf[8] >> 1;
      }

      if (v11)
      {
        v12 = re::Hash<re::DynamicString>::operator()(&v71, buf);
        v13 = v12;
        if (v61)
        {
          v14 = v12 % DWORD2(v62);
          v15 = *(*(&v61 + 1) + 4 * v14);
          if (v15 != 0x7FFFFFFF)
          {
            v16 = v62;
            while (!re::DynamicString::operator==(v16 + 56 * v15 + 8, buf))
            {
              v17 = *(v16 + 56 * v15);
              v15 = v17 & 0x7FFFFFFF;
              if ((v17 & 0x7FFFFFFF) == 0x7FFFFFFF)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_15;
          }
        }

        else
        {
          LODWORD(v14) = 0;
        }

LABEL_14:
        v18 = re::HashTable<re::DynamicString,re::AssetHandle const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v61, v14, v13);
        re::DynamicString::DynamicString((v18 + 8), buf);
        *(v18 + 40) = v10;
        ++HIDWORD(v64);
      }

LABEL_15:
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      ++v8;
    }

    while (v8 != v9);
  }

  re::AssetHandle::AssetHandle(v60, v58);
  v19 = v67;
  *v70 = 0;
  v69 = 0u;
  *buf = 0u;
  *&v70[4] = 0x7FFFFFFFLL;
  if (v66)
  {
    v20 = 8 * v66;
    do
    {
      v21 = *v19;
      if (!(*v19)[1])
      {
        v22 = v21[2];
        if (v22)
        {
          if (*(v22 + 8))
          {
            v23 = *(v22 + 16);
          }

          else
          {
            v23 = (v22 + 9);
          }

          v24 = re::AssetHandle::legacy_assetPath(v60);
          re::AssetManager::assetHandleWithParentAssetPath(a1, v23, v24, 1, &v71);
          v25 = v21[1];
          v26 = v21[2];
          v21[1] = v72;
          v72 = v25;
          v27 = *v21;
          *v21 = 0;
          *v21 = v71;
          v21[2] = v73;
          v71 = v27;
          v73 = v26;
          re::AssetHandle::~AssetHandle(&v71);
        }
      }

      ++v19;
      v20 -= 8;
    }

    while (v20);
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
  re::AssetHandle::~AssetHandle(v60);
  re::AssetHandle::AssetHandle(v60, v58);
  if (*(a1 + 1920))
  {
    v28 = re::AssetHandle::assetInfo(v60);
    if (*(v28 + 22) == 8)
    {
      if (HIDWORD(v62))
      {
        v29 = re::AssetHandle::assetInfo(v60);
        if ((v29[10] + 1) >= 2)
        {
          v30 = v29[10];
        }

        else
        {
          v30 = 0;
        }

        os_unfair_lock_lock((a1 + 128));
        *buf = v30;
        v31 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 184, buf);
        if (v31 && ((v32 = *(v31 + 32), v33 = *(v32 + 8), v34 = *(v32 + 16), v35 = (v32 + 9), (v33 & 1) != 0) ? (v36 = v34) : (v36 = v35), !strcmp(v36, "NetworkAsset")))
        {
          os_unfair_lock_unlock((a1 + 128));
        }

        else
        {
          os_unfair_lock_unlock((a1 + 128));
          *v70 = 0;
          v69 = 0u;
          *buf = 0u;
          *&v70[4] = 0x7FFFFFFFLL;
          v37 = v63;
          if (v63)
          {
            v38 = 0;
            v39 = v62;
            while (1)
            {
              v40 = *v39;
              v39 += 14;
              if (v40 < 0)
              {
                break;
              }

              if (v63 == ++v38)
              {
                LODWORD(v38) = v63;
                break;
              }
            }
          }

          else
          {
            LODWORD(v38) = 0;
          }

          if (v38 != v63)
          {
            v42 = v62;
            v43 = v63;
            do
            {
              v44 = v42 + 56 * v38;
              v47 = *(v44 + 40);
              v46 = (v44 + 40);
              v45 = v47;
              if (v47 && *(v45 + 8) && (re::AssetManager::isDeviceAsset(a1, v45, 15) & 1) == 0)
              {
                v48 = (v46 - 4);
                v49 = *(re::AssetHandle::assetInfo(*v46) + 10);
                v71 = 0;
                v72 = 0;
                v73 = 0;
                v50 = re::Hash<re::DynamicString>::operator()(v74, v48);
                re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v48, v50, &v71);
                if (HIDWORD(v72) == 0x7FFFFFFF)
                {
                  if (v49 == -1)
                  {
                    v49 = 0;
                  }

                  v51 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(buf, v72, v71);
                  re::DynamicString::DynamicString((v51 + 8), v48);
                  *(v51 + 40) = v49;
                  ++*&v70[8];
                }

                v43 = v63;
                v42 = v62;
              }

              if (v43 <= v38 + 1)
              {
                v52 = v38 + 1;
              }

              else
              {
                v52 = v43;
              }

              while (v52 - 1 != v38)
              {
                LODWORD(v38) = v38 + 1;
                if ((*(v42 + 56 * v38) & 0x80000000) != 0)
                {
                  goto LABEL_64;
                }
              }

              LODWORD(v38) = v52;
LABEL_64:
              ;
            }

            while (v38 != v37);
            if (HIDWORD(v69))
            {
              re::NetworkActionQueue::queueSyncActionShareDependencies(a1 + 1152, v30, buf);
            }
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
        }
      }
    }

    else
    {
      v41 = *re::assetsLogObjects(v28);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Cannot share dependencies over network. Only supported for AssetId based assets.", buf, 2u);
      }
    }
  }

  re::AssetHandle::~AssetHandle(v60);
  (*(*v59 + 184))(buf);
  if (v69)
  {
    v53 = *v70;
    v54 = 24 * v69;
    do
    {
      v55 = re::AssetHandle::AssetHandle(&v71, v53);
      re::AssetHandle::loadAsync(v55);
      re::AssetHandle::~AssetHandle(&v71);
      v53 = (v53 + 24);
      v54 -= 24;
    }

    while (v54);
  }

  re::DynamicArray<re::AssetHandle>::deinit(buf);
  v56 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v61);
  result = v65;
  if (v65)
  {
    if (v67)
    {
      return (*(*v65 + 40))(v56);
    }
  }

  return result;
}

void re::AssetManager::putEntryInFailedState_entryStateLocked(re *a1, uint64_t a2, int a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *re::assetsLogObjects(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a2 + 176);
    if ((*(a2 + 168) & 1) == 0)
    {
      v8 = a2 + 169;
    }

    if (*(a4 + 8))
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = a4 + 9;
    }

    v10 = 136315394;
    v11 = v8;
    v12 = 2080;
    v13 = v9;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Asset %s failure: %s", &v10, 0x16u);
  }

  *(a2 + 545) = 0;
  re::internal::AssetEntry::LoadState::setLoadFailure_locked(a2 + 896, a3, a4);
  re::internal::AssetEntry::setIsLoading_locked(a2, 0);
  re::internal::AssetEntry::cancelResourceRequest_stateLocked(a2);
}

void re::AssetManager::queueEntryForRegistration_entryStateLocked(os_unfair_lock_s *this, std::chrono::system_clock::time_point *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *re::assetsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2[21].__d_.__rep_)
    {
      rep = a2[22].__d_.__rep_;
    }

    else
    {
      rep = &a2[21].__d_.__rep_ + 1;
    }

    *v10 = 136315138;
    *&v10[4] = rep;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Asset '%s' queued for registration.", v10, 0xCu);
  }

  if (a2[14].__d_.__rep_ == -1)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = a2[14].__d_.__rep_;
  }

  v7 = a2[35].__d_.__rep_;
  if (v7)
  {
    v8 = *v7;
  }

  else
  {
    v8 = 0;
  }

  re::AssetSignpost::fireImpulse(0x810, v6, v8, v5);
  a2[67].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  LOBYTE(a2[68].__d_.__rep_) = 1;
  os_unfair_lock_lock(this + 32);
  re::internal::AssetEntry::makeAssetReference(a2, v10);
  re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::add(&this[82], v10);
  if (*v10)
  {
  }

  os_unfair_lock_unlock(this + 32);
}

void re::AssetManager::entryReadyForRegistration_entryStateLocked(os_unfair_lock_s *this, re::internal::AssetEntry *a2, uint64_t a3, const char *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
  {
    v6 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 21))
      {
        v10 = *(a2 + 22);
      }

      else
      {
        v10 = a2 + 169;
      }

      *v11 = 136315138;
      *&v11[4] = v10;
      _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "Registering asset '%s'", v11, 0xCu);
    }
  }

  if (*(a2 + 14) == -1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = *(a2 + 14);
  }

  v8 = *(a2 + 35);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::AssetSignpost::fireImpulse(0x810, v7, v9, a4);
  re::AssetManager::processAssetRegistration_entryStateLocked(this, a2);
  if (*(a2 + 544) == 1)
  {
    os_unfair_lock_lock(this + 32);
    re::internal::AssetEntry::makeAssetReference(a2, v11);
    re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::add(&this[82], v11);
    if (*v11)
    {
    }

    os_unfair_lock_unlock(this + 32);
  }
}

void re::AssetManager::createAssetEntryForNamedAsset(os_unfair_lock_s *this@<X0>, re::internal::SharedAssetPointer *a2@<X1>, const re::AssetPath *a3@<X3>, uint64_t *a4@<X8>)
{
  re::AssetManager::assetHandle(a3, this, 1, a4);
  re::AssetHandle::AssetHandle(v8, a4);
  re::AssetManager::assignCompiledAssetDataToAssetHandle(this, a2, v8, 0);
  re::AssetHandle::~AssetHandle(v8);
}

void re::AssetManager::setAssetPointerForExistingAsset(re::AssetManager *this, re::internal::SharedAssetPointer *a2, const re::AssetHandle *a3, int a4, int a5)
{
  v42 = *MEMORY[0x1E69E9840];
  re::AssetHandle::AssetHandle(v28, a3);
  re::AssetManager::assignCompiledAssetDataToAssetHandle(this, a2, v28, a4);
  re::AssetHandle::~AssetHandle(v28);
  if (a5)
  {
    v10 = *(re::AssetHandle::assetInfo(a3) + 10);
    v11 = re::AssetHandle::legacy_assetPath(a3);
    re::DynamicString::DynamicString(&v26, (v11 + 40));
    os_unfair_lock_lock(this + 32);
    *buf = v10;
    v12 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 184, buf);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v12 + 32);
      v15 = (v14 + 144 * v13);
      while (1)
      {
        if (*(*(a3 + 1) + 328) == 1)
        {
          v16 = (*(v14 + 1) & 1) != 0 ? *(v14 + 2) : v14 + 9;
          if (!strcmp(v16, "MemoryAsset"))
          {
            break;
          }
        }

        if (re::AssetProviderRegistry::hasResolverForScheme(*(this + 238), v14))
        {
          break;
        }

        v17 = *(v14 + 1);
        v18 = *(v14 + 2);
        v19 = v14 + 9;
        v20 = (v17 & 1) != 0 ? v18 : v19;
        v12 = strcmp(v20, "NamedAsset");
        if (!v12)
        {
          break;
        }

        v14 = (v19 + 135);
        if (v14 == v15)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      if (*(*(a3 + 1) + 328) == 1)
      {
        v21 = *re::assetsLogObjects(v12);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v10;
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "No memory load descriptor for MemoryAsset with id:%llu", buf, 0xCu);
        }
      }

      re::internal::AssetIdLoadDescriptorTable::remove(this + 46, v10);
      MemoryAssetProvider::makeDescriptor(&v26, **(*(a3 + 1) + 280), buf);
      v25 = 0;
      memset(v23, 0, sizeof(v23));
      v24 = 0;
      re::DynamicArray<re::AssetLoadDescriptor>::add(v23, buf);
      v22 = this + 184;
      if (*(*(a3 + 1) + 257) == 1)
      {
        re::internal::AssetIdLoadDescriptorTable::addNewMutable(v22, v10, v23);
      }

      else
      {
        re::internal::AssetIdLoadDescriptorTable::addNewImmutable(v22, v10, v23);
      }

      re::DynamicArray<re::AssetLoadDescriptor>::deinit(v23);
      if (v40)
      {
        if (BYTE8(v40))
        {
          (*(*v40 + 40))();
        }

        v40 = 0u;
        v41 = 0u;
      }

      if (v35)
      {
        if (v39)
        {
          (*(*v35 + 40))();
        }

        v39 = 0;
        v36 = 0;
        v37 = 0;
        v35 = 0;
        ++v38;
      }

      if (v30)
      {
        if (v34)
        {
          (*(*v30 + 40))();
        }

        v34 = 0;
        v31 = 0;
        v32 = 0;
        v30 = 0;
        ++v33;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }
    }

    os_unfair_lock_unlock(this + 32);
    if (v26)
    {
      if (v27)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

const re::IntrospectionBase *MemoryAssetProvider::makeDescriptor@<X0>(MemoryAssetProvider *this@<X0>, const re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v7 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  re::DynamicString::setCapacity((a3 + 112), 0);
  v12 = "MemoryAsset";
  v13 = 11;
  re::DynamicString::operator=(a3, &v12);
  v8 = strlen(a2);
  v12 = a2;
  v13 = v8;
  re::DynamicString::operator=((a3 + 112), &v12);
  re::DynamicString::DynamicString(&v10, this);
  re::AssetLoadDescriptor::setIntrospectableData(a3, MemoryAssetProvider::s_loadDescriptorParametersIntrospect, &v10, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::AssetManager::createNewImmutableAssetHandleFromExistingAssetData(uint64_t a1@<X0>, uint64_t *a2@<X1>, _anonymous_namespace_ *a3@<X2>, re::AssetHandle *a4@<X3>, int a5@<W4>, _BYTE *a6@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(*(a4 + 1) + 328))
  {
    uuid_generate_random(&v20);
    re::AssetManager::createNewImmutableAssetHandle(a1, a2, (*(&v20 + 1) + (v20 << 6) + (v20 >> 2) - 0x61C8864680B583E9) ^ v20, a3, a6);
    if (*a6)
    {
      re::AssetManager::transferAssetHandleDataToEmptyAssetHandle(a1, a4, (a6 + 8));
      if (a5)
      {
        v13 = atomic_load((a1 + 2177));
        if ((v13 & 1) == 0 && (*(a1 + 2178) & 1) == 0)
        {
          dispatch_assert_queue_V2(*(a1 + 776));
        }

        re::AssetHandle::internalRegisterAsset((a6 + 8));
      }
    }

    else
    {
      v15 = *re::assetsLogObjects(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = re::AssetHandle::assetInfo(a4);
        if (v18[17])
        {
          v19 = v18[18];
        }

        else
        {
          v19 = v18 + 137;
        }

        LODWORD(v20) = 136315138;
        *(&v20 + 4) = v19;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to create new immutable handle from given existingAsset '%s'", &v20, 0xCu);
      }
    }
  }

  else
  {
    v14 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = re::AssetHandle::assetInfo(a4);
      if (v16[17])
      {
        v17 = v16[18];
      }

      else
      {
        v17 = v16 + 137;
      }

      LODWORD(v20) = 136315138;
      *(&v20 + 4) = v17;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Can't create new immutable handle from given non memory asset '%s'", &v20, 0xCu);
    }

    *a6 = 0;
  }
}

void re::AssetManager::transferAssetHandleDataToEmptyAssetHandle(re::AssetManager *this, re::AssetHandle *a2, re::AssetHandle *a3)
{
  re::AssetManager::copyAssetHandleDataToEmptyAssetHandle(this, a2, a3);
  re::AssetHandle::internalUnregisterAsset(a2);
  v5 = *(a2 + 1);
  v6 = *(this + 226);
  if (v5)
  {
    v7 = *(v5 + 280);
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, &v11);
  (*(**v8 + 128))(*v8);
  v9 = *v8;
  os_unfair_lock_lock((v5 + 512));
  v10 = re::internal::AssetEntry::LoadState::clearAndReturnAssetPointer_locked((v5 + 896));
  (*(*v9 + 16))(v9, v10);

  os_unfair_lock_unlock((v5 + 512));
}

void re::AssetManager::copyNewImmutableAssetHandleFromExistingAssetData(uint64_t a1@<X0>, uint64_t *a2@<X1>, _anonymous_namespace_ *a3@<X2>, re::AssetHandle *a4@<X3>, _BYTE *a5@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = atomic_load((a1 + 2177));
  if ((v10 & 1) == 0 && (*(a1 + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(a1 + 776));
  }

  uuid_generate_random(&v15);
  re::AssetManager::createNewImmutableAssetHandle(a1, a2, (*(&v15 + 1) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583E9) ^ v15, a3, a5);
  if (*a5)
  {
    re::AssetManager::copyAssetHandleDataToEmptyAssetHandle(a1, a4, (a5 + 8));

    re::AssetHandle::internalRegisterAsset((a5 + 8));
  }

  else
  {
    v12 = *re::assetsLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = re::AssetHandle::assetInfo(a4);
      if (v13[17])
      {
        v14 = v13[18];
      }

      else
      {
        v14 = v13 + 137;
      }

      LODWORD(v15) = 136315138;
      *(&v15 + 4) = v14;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to create new immutable handle from given existingAsset '%s'", &v15, 0xCu);
    }
  }
}

void re::AssetManager::copyAssetHandleDataToEmptyAssetHandle(re::AssetManager *this, re::AssetHandle *a2, re::AssetHandle *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 1);
  os_unfair_lock_lock((v5 + 512));
  v6 = *(a3 + 1);
  os_unfair_lock_lock((v6 + 512));
  v7 = *(this + 226);
  *v25 = *(v6 + 280);
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, v25);
  (*(**v8 + 128))(*v8);
  v9 = *v8;
  v10 = re::internal::AssetEntry::assetPointer(v5);
  v11 = re::AssetLoader::cloneAsset(v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = re::internal::AssetEntry::LoadState::clearAndReturnAssetPointer_locked((v6 + 896));
    if (v13)
    {
      (*(*v9 + 16))(v9, v13);
    }

    re::internal::SharedAssetPointer::makeSharedAssetPointer(v12, v25);
    re::internal::AssetEntry::LoadState::setAssetPointer_locked(v6 + 896, v25);
    if (*v25)
    {
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v6 + 264), *(v5 + 264));
    if (*(v6 + 112) == -1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v6 + 112);
    }

    re::AssetSignpost::ScopeGuard::ScopeGuard(v22, 2056, v14, **(v6 + 280));
    if (((*(*v9 + 24))(v9, *(*(v6 + 904) + 24), 0, 0) & 1) == 0)
    {
      if (*(v6 + 168))
      {
        v15 = *(v6 + 176);
      }

      else
      {
        v15 = v6 + 169;
      }

      v18 = re::DynamicString::format("Failed to create runtime data for asset '%s'", v25, v15);
      v19 = *re::assetsLogObjects(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (v25[8])
        {
          v20 = *&v27[2];
        }

        else
        {
          v20 = &v25[9];
        }

        *buf = 136315138;
        v24 = v20;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      if (*v25 && (v25[8] & 1) != 0)
      {
        (*(**v25 + 40))();
      }
    }

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v22);
  }

  else
  {
    v16 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (*(v5 + 168))
      {
        v17 = *(v5 + 176);
      }

      else
      {
        v17 = v5 + 169;
      }

      if (*(v6 + 168))
      {
        v21 = *(v6 + 176);
      }

      else
      {
        v21 = v6 + 169;
      }

      *v25 = 136315394;
      *&v25[4] = v17;
      v26 = 2080;
      *v27 = v21;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to clone asset '%s' to empty handle '%s'", v25, 0x16u);
    }
  }

  os_unfair_lock_unlock((v6 + 512));
  os_unfair_lock_unlock((v5 + 512));
}

uint64_t re::AssetManager::createNewMutableAssetHandleFromExistingAssetData@<X0>(re::AssetManager *a1@<X0>, uint64_t *a2@<X1>, _anonymous_namespace_ *a3@<X2>, re::AssetHandle *a4@<X3>, re::AssetHandle *a5@<X8>)
{
  re::AssetManager::createNewMutableAssetHandle(a1, a2, a3, 1, a5);
  re::AssetManager::transferAssetHandleDataToEmptyAssetHandle(a1, a4, a5);

  return re::AssetHandle::internalRegisterAsset(a5);
}

uint64_t re::AssetManager::assetHandleMemoryPath(os_unfair_lock_s *this, const char *a2, const re::DynamicString **a3)
{
  MemoryAssetProvider::makeDescriptor(&v7, *a3, &v9);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  os_unfair_lock_lock(this + 32);
  re::AssetManager::assetHandle_assetTablesLocked(this, &v9);
  os_unfair_lock_unlock(this + 32);
  if (v21)
  {
    if (BYTE8(v21))
    {
      (*(*v21 + 40))();
    }

    v21 = 0u;
    v22 = 0u;
  }

  if (v16)
  {
    if (v20)
    {
      (*(*v16 + 40))();
    }

    v20 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    ++v19;
  }

  if (v11)
  {
    if (v15)
    {
      (*(*v11 + 40))();
    }

    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    ++v14;
  }

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

uint64_t re::AssetManager::createOrUpdateAssetEntryForNamedAssetDescriptor@<X0>(uint64_t a1@<X0>, re::internal::SharedAssetPointer *a2@<X1>, const char **a3@<X2>, const char *a4@<X3>, _anonymous_namespace_ *a5@<X4>, int a6@<W5>, char a7@<W6>, const re::AssetHandle *a8@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  *a8 = 0;
  *(a8 + 1) = 0;
  *(a8 + 2) = 0;
  v17 = *a3;
  re::NamedAssetProvider::makeDescriptor(v45, v28, &v29);
  if (*&v28[0])
  {
    if (BYTE8(v28[0]))
    {
      (*(**&v28[0] + 40))();
    }

    memset(v28, 0, sizeof(v28));
  }

  if (*v45 && (v45[8] & 1) != 0)
  {
    (*(**v45 + 40))(*v45, *&v47[2]);
  }

  os_unfair_lock_lock((a1 + 128));
  v18 = re::AssetManager::existingMutableAssetHandles_assetTablesLocked(v45, a1, &v29);
  if (!*&v47[2])
  {
    re::AssetManager::createNewMutableAssetHandle(a1, &v29, a5, 0, &v26);
    buf[0] = 1;
    *&v44[1] = v26;
    v26 = 0uLL;
    *&v44[5] = v27;
    v27 = 0;
    re::AssetHandle::~AssetHandle(&v26);
    re::AssetHandle::operator=(a8, &v44[1]);
    re::AssetHandle::~AssetHandle(&v44[1]);
    re::DynamicArray<re::AssetHandle>::deinit(v45);
    os_unfair_lock_unlock((a1 + 128));
LABEL_19:
    re::AssetManager::setAssetPointerForExistingAsset(a1, a2, a8, a6, 0);
    goto LABEL_20;
  }

  if (*&v47[2] != 1)
  {
    v19 = *re::assetsLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v44 = a4;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "createOrUpdateAssetEntryForNamedAssetDescriptor found more than one existing asset registered with name '%s'.", buf, 0xCu);
    }
  }

  re::AssetHandle::operator=(a8, v48);
  re::DynamicArray<re::AssetHandle>::deinit(v45);
  os_unfair_lock_unlock((a1 + 128));
  if ((a7 & 1) == 0)
  {
    goto LABEL_19;
  }

  v21 = *re::assetsLogObjects(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(re::AssetHandle::assetInfo(a8) + 10);
    if (v22 == -1)
    {
      v22 = 0;
    }

    *v45 = 134218242;
    *&v45[4] = v22;
    v46 = 2080;
    *v47 = a4;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Not replacing contents of asset '%llu' with named asset descriptor value '%s' because preserveOriginalInNameCollision was set.", v45, 0x16u);
  }

  v23 = *(a1 + 1808);
  *v45 = a3;
  v24 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v23, v45);
  (*(**v24 + 128))(*v24);
  (*(**v24 + 16))(*v24, a2);
LABEL_20:
  if (v41)
  {
    if (BYTE8(v41))
    {
      (*(*v41 + 40))();
    }

    v41 = 0u;
    v42 = 0u;
  }

  if (v36)
  {
    if (v40)
    {
      (*(*v36 + 40))();
    }

    v40 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    ++v39;
  }

  if (v31)
  {
    if (v35)
    {
      (*(*v31 + 40))();
    }

    v35 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    ++v34;
  }

  result = v29;
  if (v29)
  {
    if (v30)
    {
      return (*(*v29 + 40))();
    }
  }

  return result;
}

uint64_t re::AssetManager::assetLoaderWithAssetType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1808);
  v5 = a2;
  v3 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v2, &v5);
  (*(**v3 + 128))(*v3);
  return *v3;
}

uint64_t re::AssetManager::newAssetEntryForNamedMemoryAsset@<X0>(MemoryAssetProvider *this@<X3>, uint64_t a2@<X0>, re::internal::SharedAssetPointer *a3@<X1>, const re::DynamicString **a4@<X2>, int a5@<W4>, _anonymous_namespace_ *a6@<X5>, int a7@<W6>, const re::AssetHandle *a8@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  *a8 = 0;
  *(a8 + 1) = 0;
  *(a8 + 2) = 0;
  MemoryAssetProvider::makeDescriptor(this, *a4, &v25);
  if (a5)
  {
    re::AssetManager::createNewMutableAssetHandle(a2, &v25, a6, 1, buf);
    v22[0] = 1;
    v23 = *buf;
    memset(buf, 0, sizeof(buf));
    v24 = v41;
    v41 = 0;
    re::AssetHandle::~AssetHandle(buf);
    re::AssetHandle::operator=(a8, &v23);
LABEL_5:
    re::AssetHandle::~AssetHandle(&v23);
    goto LABEL_15;
  }

  NewImmutableAssetHandle = re::AssetManager::createNewImmutableAssetHandle(a2, &v25, a6, v22);
  if (v22[0])
  {
    re::AssetHandle::operator=(a8, &v23);
    goto LABEL_5;
  }

  v16 = *re::assetsLogObjects(NewImmutableAssetHandle);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 1))
    {
      v17 = *(this + 2);
    }

    else
    {
      v17 = this + 9;
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create new Immutable Memory Asset with '%s' path.", buf, 0xCu);
  }

  os_unfair_lock_lock((a2 + 128));
  v18 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(a2 + 232, &v25);
  if (v18)
  {
    re::AssetManager::lookupExistingAsset_assetTablesLocked(a2, *v18, buf);
    if (buf[0] == 1)
    {
      re::AssetHandle::operator=(a8, &buf[8]);
      re::AssetHandle::~AssetHandle(&buf[8]);
    }
  }

  os_unfair_lock_unlock((a2 + 128));
LABEL_15:
  re::AssetManager::setAssetPointerForExistingAsset(a2, a3, a8, a7, 0);
  if (v38)
  {
    if (BYTE8(v38))
    {
      (*(*v38 + 40))(v38, v39, v19, v20);
    }

    v38 = 0u;
    v39 = 0u;
  }

  if (v33)
  {
    if (v37)
    {
      (*(*v33 + 40))(v33, v37, v19, v20);
    }

    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    ++v36;
  }

  if (v28)
  {
    if (v32)
    {
      (*(*v28 + 40))(v28, v32, v19, v20);
    }

    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    ++v31;
  }

  result = v25;
  if (v25)
  {
    if (v26)
    {
      return (*(*v25 + 40))(v25, v27, v19, v20);
    }
  }

  return result;
}

uint64_t re::AssetManager::newAssetEntryForMemoryAsset@<X0>(uint64_t a1@<X0>, re::internal::SharedAssetPointer *a2@<X1>, re **a3@<X2>, int a4@<W3>, _anonymous_namespace_ *a5@<X4>, int a6@<W5>, const re::AssetHandle *a7@<X8>)
{
  re::stringToLowerCase(*a3, &v19);
  add = atomic_fetch_add((a1 + 1792), 1u);
  if (v20)
  {
    v15 = *&v21[7];
  }

  else
  {
    v15 = v21;
  }

  re::DynamicString::format("asset%d.compiled%s", &v17, add, v15);
  re::AssetManager::newAssetEntryForNamedMemoryAsset(&v17, a1, a2, a3, a4, a5, a6, a7);
  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
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

uint64_t re::AssetManager::generateRootAssetPathForImportedAsset@<X0>(atomic_uint *this@<X0>, re **a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v8 = re::stringToLowerCase(*a2, &v22);
  if (a3)
  {
    if (*a3)
    {
      re::DynamicString::format("%s/", &v16, a3);
      re::DynamicString::operator=(&v19, &v16);
      if (v16)
      {
        if (v17)
        {
          (*(*v16 + 40))();
        }
      }
    }
  }

  add = atomic_fetch_add(this + 448, 1u);
  if (v20)
  {
    v10 = *&v21[7];
  }

  else
  {
    v10 = v21;
  }

  if (v23)
  {
    v11 = *&v24[7];
  }

  else
  {
    v11 = v24;
  }

  v12 = re::DynamicString::format("imported%s%d/%sroot.compiled%s", &v16, *a2, add, v10, v11);
  if (v17)
  {
    v13 = *&v18[7];
  }

  else
  {
    v13 = v18;
  }

  *a4 = 0;
  a4[3] = 0;
  a4[4] = 0;
  a4[2] = 0;
  v14 = re::DynamicString::setCapacity(a4 + 1, 0);
  a4[6] = 0;
  a4[7] = 0;
  a4[8] = 0;
  re::DynamicString::setCapacity(a4 + 5, 0);
  a4[9] = 0;
  re::AssetPath::initMemoryAssetPath(a4, v13, a2);
  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }

  if (v19 && (v20 & 1) != 0)
  {
    (*(*v19 + 40))();
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

void re::NetworkAssetSerialization::~NetworkAssetSerialization(re::NetworkAssetSerialization *this)
{
  *this = &unk_1F5CB9868;
  re::DynamicString::deinit((this + 104));
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB9868;
  re::DynamicString::deinit((this + 104));
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

void re::AssetManager::processLoadedAsset_entryStateLocked(os_unfair_lock_s *a1, re::internal::AssetEntry *this, re::internal::SharedAssetPointer *a3, uint64_t a4)
{
  if (*(this + 30) != 8 || (re::AssetManager::ownerPeerID(&v11, a1, this, 0), v11 != 1) || !v12 || re::AssetManager::checkAssetTrust_entryStateLocked(a1, this, v12, a3, 1))
  {
    re::AssetManager::processAssetPointer(a1, a3, this, a4);
    re::internal::SharedAssetPointer::makeSharedAssetPointer(a3, &v11);
    if (*(this + 14) == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(this + 14);
    }

    re::internal::AssetEntry::LoadState::setLoadingAssetPointer_locked(this + 896, &v11, v8);
    if (v11)
    {
    }

    re::AssetManager::entryReadyForRegistration_entryStateLocked(a1, this, v9, v10);
  }
}

void re::AssetManager::unloadAssetPointer(re::AssetManager *this, const re::AssetType *a2, void *a3, const char *a4, uint64_t a5)
{
  v10 = re::globalAllocators(this);
  v11 = (*(*v10[2] + 32))(v10[2], 56, 8);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  v11[6] = 0;
  re::CancellationTokenSource::CancellationTokenSource((v11 + 3));
  v14 = v11;
  *v11 = a5;
  os_unfair_lock_lock(this + 512);
  re::DynamicArray<re::RigDataValue *>::add((this + 2056), &v14);
  *(v11 + 4) = 2;
  re::internal::AssetBackgroundLoader::unloadAssetAsync(*(this + 225), v11, a2, a3, a4, &v13);
  v12 = v11[1];
  v11[1] = v13;
  v13 = v12;
  if (v12)
  {
  }

  os_unfair_lock_unlock(this + 512);
}

void re::AssetManager::onUnloadComplete(os_unfair_lock_s *this, uint64_t a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 416);
  re::DynamicArray<re::TransitionCondition *>::add(&this[418]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 416);
}

uint64_t re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::AssetManager::updateAssetMetadataAndAttributionFromNetwork(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v26[9] = *MEMORY[0x1E69E9840];
  v10 = atomic_load((a1 + 2177));
  if ((v10 & 1) == 0 && (*(a1 + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(a1 + 776));
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  os_unfair_lock_lock((a1 + 128));
  re::AssetManager::lookupExistingAsset_assetTablesLocked(a1, a2, buf);
  if (buf[0] == 1)
  {
    re::AssetHandle::operator=(&v22, &v26[1]);
    re::AssetHandle::~AssetHandle(&v26[1]);
  }

  os_unfair_lock_unlock((a1 + 128));
  if (v23)
  {
    re::internal::AssetEntry::setMetadata(v23, a4);
    if (*a5 == 1 && *a3 == 1)
    {
      if (*(v23 + 336) == 1)
      {
        v11 = *(a5 + 8);
        if (*(v23 + 344) == v11)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v11 = *(a5 + 8);
      }

      TaskID = re::MemoryAttributionIDMap::getTaskID(*(a1 + 1896), v11, *(a3 + 8));
      if (TaskID)
      {
        if (*(v23 + 336))
        {
          v13 = *re::assetsLogObjects(TaskID);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = re::AssetHandle::assetInfo(&v22);
            if (v14[17])
            {
              v15 = v14[18];
            }

            else
            {
              v15 = v14 + 137;
            }

            *buf = 136315138;
            *v26 = v15;
            v16 = "Unsupported: asset %s has a different memory attribution ID, ignoring the new one";
LABEL_31:
            _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
          }
        }

        else
        {
          v19 = atomic_load((v23 + 896));
          if (v19 != 2)
          {
            re::AssetHandle::setMemoryAttributionID(&v22, a5);
            goto LABEL_33;
          }

          v13 = *re::assetsLogObjects(TaskID);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v20 = re::AssetHandle::assetInfo(&v22);
            if (v20[17])
            {
              v21 = v20[18];
            }

            else
            {
              v21 = v20 + 137;
            }

            *buf = 136315138;
            *v26 = v21;
            v16 = "Unsupported: memory attribution set after asset was loaded for %s";
            goto LABEL_31;
          }
        }
      }

      else
      {
        v13 = *re::assetsLogObjects(TaskID);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = re::AssetHandle::assetInfo(&v22);
          if (v17[17])
          {
            v18 = v17[18];
          }

          else
          {
            v18 = v17 + 137;
          }

          *buf = 136315138;
          *v26 = v18;
          v16 = "Ignoring unknown memory attribution ID for asset %s";
          goto LABEL_31;
        }
      }
    }
  }

LABEL_33:
  re::AssetHandle::~AssetHandle(&v22);
}

void re::AssetManager::addResourceSharingClientPeerID(os_unfair_lock_s *this, uint64_t a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 608);
  re::DynamicOverflowArray<unsigned long long,1ul>::indexOf(&this[610], &v3, v4);
  if ((v4[0] & 1) == 0)
  {
    re::DynamicOverflowArray<unsigned long long,1ul>::add(&this[610], &v3);
  }

  os_unfair_lock_unlock(this + 608);
}

void re::AssetManager::removeResourceSharingClientPeerID(re::AssetManager *this, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  os_unfair_lock_lock(this + 608);
  re::DynamicOverflowArray<unsigned long long,1ul>::indexOf(this + 2440, &v7, v8);
  if (v8[0] == 1)
  {
    v3 = v9;
    v4 = *(this + 306);
    if (v4 <= v9)
    {
      v10 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v11 = 136315906;
      v12 = "removeAt";
      v13 = 1024;
      v14 = 1000;
      v15 = 2048;
      v16 = v3;
      v17 = 2048;
      v18 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v4 - 1 > v9)
    {
      if (*(this + 2456))
      {
        v5 = this + 2464;
      }

      else
      {
        v5 = *(this + 309);
      }

      *&v5[8 * v9] = *&v5[8 * v4 - 8];
    }

    v6 = *(this + 614);
    *(this + 306) = v4 - 1;
    *(this + 614) = v6 + 2;
  }

  os_unfair_lock_unlock(this + 608);
  atomic_store(1u, this + 1032);
}

void re::AssetManager::getAssetsReceivedFromPeer(re::AssetManager *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(this + 229);
  if (v6)
  {
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
    (*(*v6 + 56))(buf);
    if (v14)
    {
      re::DynamicArray<re::AssetHandle>::setCapacity(a3, v14);
    }

    os_unfair_lock_lock(this + 32);
    if (v14)
    {
      v7 = v15;
      v8 = 32 * v14;
      do
      {
        v9 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 136, v7);
        if (v9)
        {
          re::AssetHandle::AssetHandle(v11, *v9);
          re::DynamicArray<re::AssetHandle>::add(a3, v11);
          re::AssetHandle::~AssetHandle(v11);
        }

        v7 += 32;
        v8 -= 32;
      }

      while (v8);
    }

    os_unfair_lock_unlock(this + 32);
    re::DynamicArray<re::DynamicString>::deinit(buf);
  }

  else
  {
    v10 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = a2;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot get assets received from PeerID %llu, ResourceFetchService not found!", buf, 0xCu);
    }

    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

void re::AssetManager::receiveAssetLoadState(re::AssetManager *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  os_unfair_lock_lock(this + 32);
  re::AssetManager::lookupExistingAsset_assetTablesLocked(this, a2, v17);
  os_unfair_lock_unlock(this + 32);
  v12 = v17[0];
  if (v17[0] == 1 && v19 != 0)
  {
    if (a6)
    {
      v16 = a6;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v15[0] = v14;
    re::internal::AssetEntry::setResourceClientLoadState(v19, a3, a4, a5, v15);
    atomic_store(1u, this + 1032);
  }

  if (v12)
  {
    re::AssetHandle::~AssetHandle(&v18);
  }
}

uint64_t re::AssetManager::getCombinedLoadState(uint64_t a1, re::AssetHandle *this, int a3, unsigned int a4, uint64_t a5)
{
  if (*(a5 + 8))
  {
    v7 = *(a1 + 1920) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (*(re::AssetHandle::assetInfo(this) + 10) + 1) >= 2 && a3 != 0)
  {
    v18 = *(this + 1);
    os_unfair_lock_lock(v18 + 128);
    v19 = *(this + 1);
    if (*(v19 + 548) != 2)
    {
      v20 = *(a5 + 8);
      if (v20)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v21 = *a5;
        v22 = *a5 + 8 * v20;
        v23 = *(v19 + 656);
        do
        {
          v24 = v19 + 672;
          if ((*(v19 + 664) & 1) == 0)
          {
            v24 = *(v19 + 680);
          }

          if (v23)
          {
            v25 = (v24 + 8);
            v26 = 32 * v23;
            while (*(v25 - 1) != *v21)
            {
              v25 += 8;
              v26 -= 32;
              if (!v26)
              {
                goto LABEL_37;
              }
            }

            v27 = *v25;
            if (v27 == 3)
            {
              v28 = 1;
            }

            else
            {
              v28 = v14;
            }

            if (v27 == 2)
            {
              v28 = v14;
              v29 = v13 + 1;
            }

            else
            {
              v29 = v13;
            }

            if (v27 == 1)
            {
              v30 = 1;
            }

            else
            {
              v30 = v12;
            }

            if (v27)
            {
              v31 = v16;
            }

            else
            {
              v31 = 1;
            }

            if (!v27)
            {
              v30 = v12;
            }

            if (v27 > 1)
            {
              v14 = v28;
            }

            else
            {
              v16 = v31;
            }

            if (v27 <= 1)
            {
              v12 = v30;
            }

            else
            {
              v13 = v29;
            }
          }

          else
          {
LABEL_37:
            v15 = 1;
          }

          ++v21;
        }

        while (v21 != v22);
      }

      else
      {
        LOBYTE(v16) = 0;
        v15 = 0;
        LOBYTE(v14) = 0;
        v13 = 0;
        LOBYTE(v12) = 0;
      }

      os_unfair_lock_unlock(v18 + 128);
      goto LABEL_13;
    }

    os_unfair_lock_unlock(v18 + 128);
  }

  if (a4 < 4)
  {
    return dword_1E3058130[a4];
  }

  LOBYTE(v12) = 0;
  v13 = 0;
  LOBYTE(v14) = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
LABEL_13:
  result = 2;
  if (a4 < 2)
  {
    if (v14)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (a4 != 3)
  {
    if (a4 == 2)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = v13;
    }

    if (v14)
    {
      result = 2;
    }

    else
    {
      result = 0;
    }

    if ((((v14 | v15) | (v16 | v12)) & 1) == 0)
    {
      return *(a5 + 8) + 1 == v17;
    }
  }

  return result;
}

void re::AssetManager::ownerPeerID(uint64_t a1, uint64_t a2, os_unfair_lock_s *this, int a4)
{
  atomic_load((a2 + 2177));
  re::internal::AssetEntry::ownerPeerID(this, v13);
  v8 = v13[0];
  if (v13[0] == 1)
  {
LABEL_2:
    *a1 = 1;
    *(a1 + 8) = v14;
    return;
  }

  if (this[30]._os_unfair_lock_opaque == 8 && (v9 = *(a2 + 1920)) != 0)
  {
    (*(*v9 + 120))(&v11);
    if (v11 == 1)
    {
      v10 = v12;
      v14 = v12;
      if (a4)
      {
        os_unfair_lock_lock(this + 128);
      }

      re::internal::AssetEntry::ownerPeerID(this, &v11);
      if ((v11 & 1) == 0 || v12 != v10)
      {
        re::internal::AssetEntry::setOwnerPeerID(this, v10);
      }

      if (a4)
      {
        os_unfair_lock_unlock(this + 128);
      }

      goto LABEL_2;
    }

    *a1 = v8;
  }

  else
  {
    *a1 = 0;
  }
}

BOOL re::AssetManager::checkAssetTrust_entryStateLocked(re::AssetManager *this, re::internal::AssetEntry *a2, uint64_t a3, void *a4, int a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = *(this + 226);
  *&buf = *(a2 + 35);
  v11 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v10, &buf);
  (*(**v11 + 128))(*v11);
  v12 = *v11;
  re::AssetManager::ownerPeerID(&buf, this, a2, 0);
  if (buf != 1 || (v14 = *(&buf + 1), v13 = (*(**(this + 240) + 104))(*(this + 240)), v14 == v13))
  {
LABEL_3:
    v15 = *re::assetsLogObjects(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a3;
      _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "checkAssetTrust - Asset entitlement check succeeded. Asset owned by %llu is trustworthy", &buf, 0xCu);
    }

    return 1;
  }

  v17 = atomic_load(a2 + 204);
  v18 = (*(*v12 + 280))(v30, v12, a4, a2 + 32, v14, v17);
  if (v30[0] == 1)
  {
    v19 = v30[1];
    v20 = *re::assetsLogObjects(v18);
    if (v19 == 1)
    {
      v13 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      if (!v13)
      {
        goto LABEL_3;
      }

      *v31 = 134217984;
      v32 = v14;
      v21 = "Asset Entitlement success. Registration completed for asset owned by %llu.";
      v22 = v20;
LABEL_23:
      _os_log_debug_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEBUG, v21, v31, 0xCu);
      goto LABEL_3;
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *v31 = 134217984;
    v32 = v14;
    v24 = "Asset Entitlement fail. Asset owned by %llu will not be registered due to not being trustworthy.";
    v25 = v20;
LABEL_25:
    _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, v24, v31, 0xCu);
    goto LABEL_15;
  }

  v23 = *re::assetsLogObjects(v18);
  if (!a5)
  {
    v13 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (!v13)
    {
      goto LABEL_3;
    }

    *v31 = 134217984;
    v32 = v14;
    v21 = "Asset Entitlement indeterminate. Asset owned by %llu will be allowed to load and will be checked again.";
    v22 = v23;
    goto LABEL_23;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *v31 = 134217984;
    v32 = v14;
    v24 = "Asset Entitlement fail. Asset owned by %llu will not be registered due to no result from credential check.";
    v25 = v23;
    goto LABEL_25;
  }

LABEL_15:
  v26 = re::DynamicString::format("Asset originating from (ownerPeer:%llu), does not have the appropriateentitlements.", v29, a3);
  re::AssetManager::putEntryInFailedState_entryStateLocked(v26, a2, 302, v29);
  v27 = *&v29[0];
  if (*&v29[0])
  {
    if (BYTE8(v29[0]))
    {
      v27 = (*(**&v29[0] + 40))();
    }

    memset(v29, 0, sizeof(v29));
  }

  v28 = *re::assetsLogObjects(v27);
  result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "checkAssetTrust - Asset entitlement check FAIL. Asset owned by %llu is not trustworthy", &buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t re::AssetManager::isAssetEntryShareableAndFetchable_entryStateLocked(re::AssetManager *this, os_unfair_lock_s *a2)
{
  if (*(this + 229))
  {
    v2 = a2[137]._os_unfair_lock_opaque == 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  os_unfair_lock_opaque = a2[30]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != 8 && os_unfair_lock_opaque != 4)
  {
    return 0;
  }

  v7 = *(this + 226);
  v12 = *&a2[70]._os_unfair_lock_opaque;
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v12);
  (*(**v8 + 128))(*v8);
  if (!(*(**v8 + 208))())
  {
    return 0;
  }

  re::AssetManager::fromPeerID(v15, this, a2, 0);
  if (v15[0] != 1 || !v16)
  {
    return 0;
  }

  re::DynamicString::format("%llu", &v12, v16);
  if (v13)
  {
    v9 = *&v14[7];
  }

  else
  {
    v9 = v14;
  }

  v10 = (*(**(this + 229) + 32))(*(this + 229), v9);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  return v10;
}

void re::AssetManager::fromPeerID(uint64_t a1, uint64_t a2, os_unfair_lock_s *this, int a4)
{
  atomic_load((a2 + 2177));
  re::internal::AssetEntry::fromPeerID(this, v13);
  v8 = v13[0];
  if (v13[0] == 1)
  {
LABEL_2:
    *a1 = 1;
    *(a1 + 8) = v14;
    return;
  }

  if (this[30]._os_unfair_lock_opaque == 8 && (v9 = *(a2 + 1920)) != 0)
  {
    (*(*v9 + 128))(&v11);
    if (v11 == 1)
    {
      v10 = v12;
      v14 = v12;
      if (a4)
      {
        os_unfair_lock_lock(this + 128);
      }

      re::internal::AssetEntry::fromPeerID(this, &v11);
      if ((v11 & 1) == 0 || v12 != v10)
      {
        re::internal::AssetEntry::setFromPeerID(this, v10);
      }

      if (a4)
      {
        os_unfair_lock_unlock(this + 128);
      }

      goto LABEL_2;
    }

    *a1 = v8;
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t re::AssetManager::tryReuseExistingAsset_locked(os_unfair_lock_s *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v69 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 32);
  v8 = a3[2];
  if (v8)
  {
    v9 = a3[4];
    v10 = 144 * v8;
    while (1)
    {
      v11 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(&a1[58], v9);
      if (v11)
      {
        v12 = *v11;
        v13 = *(a2 + 112);
        if (v13 == -1)
        {
          v13 = 0;
        }

        if (v12 != v13)
        {
          break;
        }
      }

      v9 += 144;
      v10 -= 144;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v37 = **(a2 + 280);
    if (v64 && (v65 & 1) != 0)
    {
      (*(*v64 + 40))(v64, v66);
    }
  }

  else
  {
LABEL_8:
    v60 = 0;
    v61 = 0;
    v62 = 0;
  }

  os_unfair_lock_unlock(a1 + 32);
  if (v61)
  {
    v14 = atomic_load((v61 + 896));
    if (v14 == 2)
    {
      goto LABEL_57;
    }
  }

  os_unfair_lock_lock(a1 + 32);
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v67 = 0;
  v15 = a3[2];
  if (v15)
  {
    v49 = a4;
    v16 = a3[4];
    v50 = a3;
    v51 = v16 + 144 * v15;
    do
    {
      v17 = re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(&a1[70], v16);
      if (v17)
      {
        v18 = v17;
        v19 = *(v17 + 32);
        if (v19)
        {
          v20 = 0;
          v21 = (*(v17 + 16) + 8);
          while (1)
          {
            v22 = *v21;
            v21 += 6;
            if (v22 < 0)
            {
              break;
            }

            if (v19 == ++v20)
            {
              LODWORD(v20) = *(v17 + 32);
              break;
            }
          }
        }

        else
        {
          LODWORD(v20) = 0;
        }

        if (v20 != v19)
        {
          v23 = *(v17 + 32);
          do
          {
            v24 = *(*(v18 + 16) + 24 * v20 + 16);
            v25 = *(a2 + 112);
            if (v25 == -1)
            {
              v25 = 0;
            }

            if (v24 != v25)
            {
              v26 = **(a2 + 280);
              if (v55 && (v56 & 1) != 0)
              {
                (*(*v55 + 40))();
              }

              re::DynamicArray<re::AssetHandle>::add(&v64, v63);
              re::AssetHandle::~AssetHandle(v63);
              v23 = *(v18 + 32);
            }

            if (v23 <= v20 + 1)
            {
              v28 = v20 + 1;
            }

            else
            {
              v28 = v23;
            }

            while (v28 - 1 != v20)
            {
              LODWORD(v20) = v20 + 1;
              if ((*(*(v18 + 16) + 24 * v20 + 8) & 0x80000000) != 0)
              {
                goto LABEL_36;
              }
            }

            LODWORD(v20) = v28;
LABEL_36:
            ;
          }

          while (v20 != v19);
        }
      }

      v16 += 144;
    }

    while (v16 != v51);
    v29 = v64;
    v15 = v65;
    v30 = v66;
    v31 = v68;
    v32 = v67 + 1;
    a3 = v50;
    a4 = v49;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v32 = 1;
  }

  v55 = v29;
  v56 = v15;
  v57 = v30;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v59 = v31;
  v68 = 0;
  v67 = v32;
  v58 = 1;
  re::DynamicArray<re::AssetHandle>::deinit(&v64);
  os_unfair_lock_unlock(a1 + 32);
  if (!v30)
  {
    goto LABEL_56;
  }

  v33 = 24 * v30;
  while (1)
  {
    re::AssetHandle::AssetHandle(&v64, v31);
    if (v65)
    {
      break;
    }

LABEL_50:
    re::AssetHandle::~AssetHandle(&v64);
    v31 = (v31 + 24);
    v33 -= 24;
    if (!v33)
    {
      goto LABEL_56;
    }
  }

  v34 = atomic_load((v65 + 896));
  if (v34 != 2)
  {
    v35 = v65;
    goto LABEL_48;
  }

  if ((a4 & 1) == 0)
  {
    v35 = v65;
    if (*(v65 + 256))
    {
LABEL_48:
      v36 = atomic_load((v35 + 896));
      if (v36 == 1)
      {
        re::AssetHandle::operator=(&v60, &v64);
      }

      goto LABEL_50;
    }
  }

  re::AssetHandle::operator=(&v60, &v64);
  re::AssetHandle::~AssetHandle(&v64);
LABEL_56:
  re::DynamicArray<re::AssetHandle>::deinit(&v55);
LABEL_57:
  if (v61 && (v39 = atomic_load((v61 + 896)), v39 == 2))
  {
    re::AssetManager::findDependencies(a1, &v60, &v64);
  }

  else
  {
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v67 = 0;
  }

  if (v61)
  {
    v40 = atomic_load((v61 + 896));
    if (v40 != 2 || v66 && ((v41 = a3[4], v42 = *(v41 + 8), v43 = *(v41 + 16), v44 = (v41 + 9), (v42 & 1) != 0) ? (v45 = v43) : (v45 = v44), strcmp(v45, "AssetPath")))
    {
      if (v61)
      {
        v46 = atomic_load((v61 + 896));
        if (v46 == 1)
        {
          re::AssetManager::makeLoadRequest(a1, v63);
          re::AssetLoadRequest::addAsset(v63[0], &v60);
          re::AssetHandle::AssetHandle(&v55, a2);
          re::AssetHandle::AssetHandle(&v52, &v55);
          re::AssetHandle::AssetHandle((&v53 + 8), &v60);
          re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(v54, a3);
          v54[5] = a1;
          operator new();
        }
      }

      goto LABEL_71;
    }

    re::internal::AssetEntry::LoadState::setAssetPointer_locked(a2 + 896, (v61 + 904));
    re::internal::AssetEntry::setIsLoading_locked(a2, 0);
    v47 = 1;
  }

  else
  {
LABEL_71:
    v47 = 0;
  }

  re::DynamicArray<re::AssetHandle>::deinit(&v64);
  re::AssetHandle::~AssetHandle(&v60);
  return v47;
}

uint64_t re::DynamicArray<re::AssetLoadDescriptor>::slice(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 + 1 <= 1)
  {
    v4 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v5) = 136315906;
    *(&v5 + 4) = "slice";
    WORD6(v5) = 1024;
    HIWORD(v5) = 1119;
    _os_log_send_and_compose_impl();
    a1 = _os_crash_msg();
    __break(1u);
    goto LABEL_6;
  }

  if (a3 == -1)
  {
LABEL_6:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 1125, 1, a3, a1, v4, v5);
    a1 = _os_crash();
    __break(1u);
LABEL_7:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, 1, a3, a1);
    _os_crash();
    __break(1u);
  }

  if (a3 + 1 > a1)
  {
    goto LABEL_7;
  }

  return a2 + 144;
}

_anonymous_namespace_ *re::DynamicArray<re::AssetLoadDescriptor>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::AssetLoadDescriptor>::copy(this, *a2, v4);
      re::DynamicArray<re::AssetLoadDescriptor>::resize(this, *(a2 + 8));
    }

    else
    {
      v5 = *(this + 2);
      *(this + 2) = 0;
      if (v5)
      {
        v6 = *(this + 4);
        v7 = 144 * v5;
        do
        {
          re::DynamicString::deinit((v6 + 112));
          re::DynamicArray<unsigned long>::deinit(v6 + 72);
          re::DynamicArray<unsigned long>::deinit(v6 + 32);
          re::DynamicString::deinit(v6);
          v6 += 144;
          v7 -= 144;
        }

        while (v7);
      }

      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::AssetLoadDescriptor>::copy(this, *a2, *(a2 + 8));
  }

  return this;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2, re::Allocator *a3)
{
  v5 = a2;
  v6 = &unk_1EE187000;
  {
    v13 = a1;
    v12 = a3;
    v6 = &unk_1EE187000;
    v5 = a2;
    a3 = v12;
    v10 = v9;
    a1 = v13;
    if (v10)
    {
      re::introspect<re::PeerAssetLoadDescriptorParameters>(BOOL)::info = re::introspect_PeerAssetLoadDescriptorParameters(0);
      v6 = &unk_1EE187000;
      a1 = v13;
      v5 = a2;
      a3 = v12;
    }
  }

  v7 = *(v6 + 172);

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v7, v5, a3);
}

void re::AssetManager::reuseExistingOrLoadNewAsset_locked(os_unfair_lock_s *a1, void *a2, uint64_t *a3)
{
  if ((re::AssetManager::tryReuseExistingAsset_locked(a1, a2, a3, 0) & 1) == 0)
  {

    re::AssetManager::loadAssetFromDescriptorsOnBackgroundTask_entryStateLocked(a1, a2, a3);
  }
}

void re::ThreadSafeValue<re::AssetManager::AssetTables,re::UnfairLock>::write<re::AssetManager::loadAssetOverNetwork(re::AssetPath const&)::$_1>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  os_unfair_lock_lock(a1);
  if (!*(a1 + 56) || (v7 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30)), v8 = *(*(a1 + 64) + 4 * (((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31)) % *(a1 + 80))), v8 == 0x7FFFFFFF))
  {
LABEL_6:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v10 = re::DynamicString::setCapacity(&v18, 0);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0;
    v28 = 0;
    memset(v29, 0, sizeof(v29));
    v11 = re::DynamicString::setCapacity(&v29[1], 0);
    v12 = *a2;
    v13 = **(a3 + 280);
    re::NetworkAssetLoadDescriptor::init(&v18, v12, v17);
    if (*&v17[0])
    {
      if (BYTE8(v17[0]))
      {
        (*(**&v17[0] + 40))();
      }

      memset(v17, 0, sizeof(v17));
    }

    v16 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    re::DynamicArray<re::AssetLoadDescriptor>::add(v14, &v18);
    re::internal::AssetIdLoadDescriptorTable::addNewImmutable(a1 + 56, *a2, v14);
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(v14);
    if (v29[1])
    {
      if (v29[2])
      {
        (*(*v29[1] + 40))();
      }

      memset(&v29[1], 0, 32);
    }

    if (*(&v26 + 1))
    {
      if (v29[0])
      {
        (*(**(&v26 + 1) + 40))();
      }

      v29[0] = 0;
      v27 = 0uLL;
      *(&v26 + 1) = 0;
      ++v28;
    }

    if (v22)
    {
      if (v26)
      {
        (*(*v22 + 40))();
      }

      *&v26 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      ++v25;
    }

    if (v18 && (v19 & 1) != 0)
    {
      (*(*v18 + 40))();
    }
  }

  else
  {
    v9 = *(a1 + 72);
    while (*(v9 + (v8 << 6) + 8) != *a2)
    {
      v8 = *(v9 + (v8 << 6)) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  os_unfair_lock_unlock(a1);
}

uint64_t re::AssetManager::performQueuedSyncAction(re::AssetManager *this, uint64_t a2, re::internal::AssetEntry **a3)
{
  v212 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 160);
  if (v7 > 3)
  {
    v8 = buf;
    if (v7 > 5)
    {
      if (v7 != 6)
      {
        if (v7 == 7)
        {

          return re::AssetManager::performPreloadOnLocalPeerSyncAction(this, a3);
        }

        if (v7 != 8)
        {
          return v3 & 1;
        }

        if (*(a2 + 144) == 4)
        {
          v9 = *a2;
          v10 = a3[1];
          if (v10 && (v11 = atomic_load(v10 + 224), v11 == 1))
          {
            v12 = a3[1];
            os_unfair_lock_lock(v12 + 128);
            re::AssetManager::processLoadedAsset_entryStateLocked(this, a3[1], v9, 0);
            os_unfair_lock_unlock(v12 + 128);
          }

          else
          {
            v50 = *(this + 226);
            *buf = *(a2 + 8);
            v51 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v50, buf);
            (*(**v51 + 128))(*v51);
            (*(**v51 + 16))(*v51, v9);
          }

          goto LABEL_302;
        }

        goto LABEL_454;
      }

      if (*(a2 + 144) != 2)
      {
        goto LABEL_454;
      }

      v183 = 0;
      v184 = 0;
      v185 = 0;
      re::DynamicString::setCapacity(&v182 + 1, 0);
      Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>(a2, &v182, 0);
      if (!a3[1])
      {
        v62 = *re::assetsLogObjects(Descriptor);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = *(re::AssetHandle::assetInfo(a3) + 10);
          if (v63 == -1)
          {
            v63 = 0;
          }

          *buf = 134217984;
          *&buf[4] = v63;
          _os_log_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEFAULT, "assetId:%llu could not be loaded from peer, as the asset no longer exists locally", buf, 0xCu);
        }

        goto LABEL_142;
      }

      v35 = *(this + 240);
      v36 = re::AssetHandle::assetInfo(a3);
      if (v36[10] == -1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36[10];
      }

      (*(*v35 + 216))(v35, v37);
      v38 = a3[1];
      os_unfair_lock_lock(v38 + 128);
      v39 = atomic_load(&v38[224]._os_unfair_lock_opaque);
      if (v39 == 2)
      {
LABEL_141:
        os_unfair_lock_unlock(v38 + 128);
LABEL_142:
        v55 = *(&v182 + 1);
        if (!*(&v182 + 1) || (v183 & 1) == 0)
        {
          goto LABEL_302;
        }

        v56 = v184;
        goto LABEL_145;
      }

      dispatch_assert_queue_V2(*(this + 97));
      *buf = 0;
      *&buf[8] = 0u;
      v198 = 0u;
      v41 = re::DynamicString::setCapacity(&buf[8], 0);
      v200 = 0u;
      v199 = 0u;
      re::DynamicString::setCapacity(&v199, 0);
      *&v201 = 0;
      if (v183)
      {
        v42 = v184;
      }

      else
      {
        v42 = &v183 + 1;
      }

      v43 = re::AssetPath::parse(buf, v42, 0, *(this + 226), *(this + 238), &v189);
      if (v189)
      {
        v168 = 0;
        if (*buf == 8)
        {
          v44 = (BYTE8(v199) & 1) != 0 ? v200 : &v199 + 9;
          if (sscanf(v44, "%llu", &v168) == 1)
          {
            v45 = *(this + 240);
            v46 = re::AssetHandle::assetInfo(a3);
            if (v46[10] == -1)
            {
              v47 = 0;
            }

            else
            {
              v47 = v46[10];
            }

            (*(*v45 + 128))(&v173, v45, v47);
            if (v173 == 1)
            {
              v48 = v174;
              if (v174)
              {
                goto LABEL_354;
              }
            }

            (*(**(this + 240) + 128))(&v189);
            if (v173)
            {
              if ((v189 & 1) == 0)
              {
                LOBYTE(v173) = 0;
LABEL_332:
                if (*(this + 2232) == 1)
                {
                  goto LABEL_333;
                }

                v48 = v182;
                LOBYTE(v173) = 1;
                goto LABEL_353;
              }
            }

            else
            {
              if ((v189 & 1) == 0)
              {
                goto LABEL_332;
              }

              LOBYTE(v173) = 1;
            }

            v48 = *(&v189 + 1);
            *&v174 = *(&v189 + 1);
            if (*(&v189 + 1))
            {
LABEL_354:
              v135 = *(this + 228);
              re::DynamicString::DynamicString(&v189, (&v182 + 8));
              re::internal::AssetNetworkLoader::sendRequestToNetworkPeer_entryStateLocked(v135, v38, v48, &v189);
LABEL_355:
              re::DynamicString::deinit(&v189);
LABEL_134:
              if (v199)
              {
                if (BYTE8(v199))
                {
                  (*(*v199 + 40))();
                }

                v200 = 0u;
                v199 = 0u;
              }

              if (*&buf[8] && (buf[16] & 1) != 0)
              {
                (*(**&buf[8] + 40))();
              }

              goto LABEL_141;
            }

            if (*(this + 2232))
            {
LABEL_333:
              v127 = *(re::AssetHandle::assetInfo(a3) + 10);
              if (v127 == -1)
              {
                v127 = 0;
              }

              v128 = re::DynamicString::format("Unable to load assetId: '%llu' from any direct network peer", &v189, v127);
              re::AssetManager::putEntryInFailedState_entryStateLocked(v128, v38, 302, &v189);
              goto LABEL_355;
            }

            v48 = v182;
LABEL_353:
            *&v174 = v48;
            goto LABEL_354;
          }
        }

        if (v183)
        {
          v69 = v184;
        }

        else
        {
          v69 = &v183 + 1;
        }

        v68 = re::DynamicString::format("Invalid path '%s' only AssetId based paths supported for PeerAssets", &v189, v69);
      }

      else
      {
        if (*(&v190 + 1) && (v191 & 1) != 0)
        {
          (*(**(&v190 + 1) + 40))(v43);
        }

        if (v183)
        {
          v67 = v184;
        }

        else
        {
          v67 = &v183 + 1;
        }

        v68 = re::DynamicString::format("Invalid path '%s' requested from peer", &v189, v67);
      }

      re::AssetManager::putEntryInFailedState_entryStateLocked(v68, v38, 302, &v189);
      if (v189)
      {
        if (BYTE8(v189))
        {
          (*(*v189 + 40))();
        }

        v189 = 0u;
        v190 = 0u;
      }

      goto LABEL_134;
    }

    if (v7 == 4)
    {
      if (!*(a2 + 144))
      {
        if (*a2 != 2)
        {
          if (*a2 == 1)
          {
            (*(**(this + 240) + 32))(*(this + 240), *(a2 + 152));
          }

          goto LABEL_302;
        }

        (*(**(this + 240) + 8))(*(this + 240), *(a2 + 152));
        if (*(this + 2220) != 1)
        {
          goto LABEL_302;
        }

        v64 = *(this + 230);
        if (!v64)
        {
          goto LABEL_302;
        }

        *&v189 = *(a2 + 152);
        v3 = 1;
        *buf = &v189;
        *&buf[8] = 1;
        (*(*v64 + 32))(v64, buf);
        return v3 & 1;
      }

      goto LABEL_454;
    }

    if (*(a2 + 144) == 3)
    {
      LODWORD(v189) = 0;
      v14 = &v189;
      *&v191 = 0;
      v190 = 0uLL;
      v15 = re::DynamicString::setCapacity(&v189 + 1, 0);
      v192 = 0uLL;
      *&v193 = 0;
      re::DynamicString::setCapacity(&v191 + 1, 0);
      *(&v193 + 1) = 0;
      if (*(a2 + 8))
      {
        v16 = *(a2 + 16);
      }

      else
      {
        v16 = (a2 + 9);
      }

      v17.n128_f64[0] = re::AssetPath::parse(&v189, v16, 0, *(this + 226), *(this + 238), v161);
      if ((v161[0] & 1) == 0 && v162)
      {
        if (BYTE8(v162))
        {
          (*(*v162 + 40))(v17.n128_f64[0]);
        }

        v17 = 0uLL;
        v163 = 0u;
        v162 = 0u;
      }

      v18 = a3[1];
      if (v18)
      {
        re::AssetManager::ownerPeerID(v160, this, v18, 1);
      }

      else
      {
        (*(**(this + 240) + 120))(v160, v17);
      }

      if (LOBYTE(v160[0]) != 1 || !v160[1])
      {
        goto LABEL_426;
      }

      dispatch_assert_queue_V2(*(this + 97));
      v57 = v166;
      re::AssetManager::lookupExistingAsset(v166, this, &v189);
      if ((v166[0] & 1) == 0)
      {
        v65 = *re::assetsLogObjects(v58);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *&v198 = 0;
          *&buf[16] = 0;
          *&buf[8] = 0;
          *buf = *(&v189 + 1);
          re::DynamicString::setCapacity(buf, 0);
          re::AssetPath::fullAssetPath(&v189, buf);
          v66 = (buf[8] & 1) != 0 ? *&buf[16] : &buf[9];
          LODWORD(v182) = 136315138;
          *(&v182 + 4) = v66;
          _os_log_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_DEFAULT, "AssetHandle/AssetEntry not found for asset: '%s', cannot load this asset from over the network", &v182, 0xCu);
          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))();
            }
          }
        }

        goto LABEL_424;
      }

      v59 = v167[1];
      v60 = *(re::AssetHandle::assetInfo(v167) + 10);
      if (v60 == -1)
      {
        v60 = 0;
      }

      v165 = v60;
      os_unfair_lock_lock(this + 32);
      *buf = v165;
      v61 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 184, buf);
      if (v61)
      {
        re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(v194, v61);
      }

      else
      {
        *&v196[2] = 0;
        memset(v194, 0, sizeof(v194));
      }

      os_unfair_lock_unlock(this + 32);
      if (!*&v194[16])
      {
        re::AssetManager::ownerPeerID(buf, this, v59, 1);
        if (buf[0] != 1 || (v81 = *&buf[8]) == 0 || (v82 = *(this + 240)) == 0 || v81 == (*(*v82 + 104))(v82))
        {
          os_unfair_lock_lock(v59 + 128);
          re::AssetManager::putEntryInFailedState_entryStateLocked(v84, v59, 302, v164);
          if (*&v164[0])
          {
            if (BYTE8(v164[0]))
            {
              (*(**&v164[0] + 40))();
            }

            memset(v164, 0, sizeof(v164));
          }

          os_unfair_lock_unlock(v59 + 128);
          re::DynamicArray<re::AssetLoadDescriptor>::deinit(v194);
          re::AssetHandle::~AssetHandle(v167);
          goto LABEL_424;
        }

        re::ThreadSafeValue<re::AssetManager::AssetTables,re::UnfairLock>::write<re::AssetManager::loadAssetOverNetwork(re::AssetPath const&)::$_1>(this + 128, &v165, v59);
      }

      os_unfair_lock_lock(v59 + 128);
      v70 = atomic_load(this + 2177);
      if ((v70 & 1) == 0 && (*(this + 2178) & 1) == 0)
      {
        dispatch_assert_queue_V2(*(this + 97));
      }

      if (*(v59 + 14) == -1)
      {
        v71 = 0;
      }

      else
      {
        v71 = *(v59 + 14);
      }

      re::AssetManager::ownerPeerID(v180, this, v59, 0);
      v72 = v181;
      re::DynamicString::format("%llu", &v176, v181);
      re::internal::AssetEntry::getMetadataString(v59, "Engine/RE-debugName", 0, &v173);
      if (v173 == 1)
      {
        if (BYTE8(v174))
        {
          v73 = v175;
        }

        else
        {
          v73 = &v174 + 9;
        }

        re::ExistingAssetInformation::CachedLogName::setDebugMetadata((v59 + 10), v73);
      }

      if (!re::AssetManager::checkAssetTrust_entryStateLocked(this, v59, v72, 0, 0))
      {
        goto LABEL_414;
      }

      if (re::AssetManager::isAssetEntryShareableAndFetchable_entryStateLocked(this, v59))
      {
        *(v59 + 545) = 1;
        re::AssetManager::fromPeerID(&v168, this, v59, 0);
        re::DynamicString::format("%llu", &v182, v169);
        v74 = &v182 + 9;
        if (BYTE8(v182))
        {
          v75 = v183;
        }

        else
        {
          v75 = &v182 + 9;
        }

        if ((*(**(this + 229) + 32))(*(this + 229), v75))
        {
          v76 = *(this + 226);
          *buf = *(v59 + 35);
          v77 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v76, buf);
          (*(**v77 + 128))(*v77);
          v78 = *(this + 229);
          if (BYTE8(v182))
          {
            v74 = v183;
          }

          inited = objc_initWeak(&location, v59 + 8);
          *(&location + 1) = this;
          v198 = re::globalAllocators(inited)[2];
          *buf = &unk_1F5CB8A00;
          *&buf[8] = 0;
          objc_moveWeak(&buf[8], &location);
          *&buf[16] = *(&location + 1);
          *(&v198 + 1) = buf;
          (*(*v78 + 72))(v208, v78, v74, v59 + 2, buf);
          v80 = *(v59 + 65);
          *(v59 + 65) = *v208;
          *v208 = v80;
          if (v80)
          {
            re::details::release<re::ResourceRequest>(v80);
            *v208 = 0;
          }

          re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(buf);
          objc_destroyWeak(&location);
        }

        if (v182 && (BYTE8(v182) & 1) != 0)
        {
          (*(*v182 + 40))();
        }

LABEL_414:
        v126 = 1;
        goto LABEL_415;
      }

      v101 = &v182;
      (*(**(this + 240) + 88))(&v182);
      if (v182 != 1)
      {
        v126 = 0;
LABEL_415:
        if (v173 == 1 && v174 && (BYTE8(v174) & 1) != 0)
        {
          (*(*v174 + 40))(v174, v175);
        }

        if (v176 && (v177 & 1) != 0)
        {
          (*(*v176 + 40))(v176, v179);
        }

        os_unfair_lock_unlock(v59 + 128);
        v150 = v166[0];
        re::DynamicArray<re::AssetLoadDescriptor>::deinit(v194);
        if (v150)
        {
          re::AssetHandle::~AssetHandle((v57 + 8));
          if (v126)
          {
LABEL_424:
            v3 = 1;
LABEL_427:
            if (*(&v191 + 1))
            {
              if (v192)
              {
                (*(**(&v191 + 1) + 40))(*(&v191 + 1), *(&v192 + 1));
              }

              *(v14 + 56) = 0u;
              *(v14 + 40) = 0u;
            }

            if (*(&v189 + 1) && (v190 & 1) != 0)
            {
              (*(**(&v189 + 1) + 40))(*(&v189 + 1), *(&v190 + 1));
            }

            return v3 & 1;
          }
        }

        else if (v126)
        {
          goto LABEL_424;
        }

LABEL_426:
        v3 = 0;
        goto LABEL_427;
      }

      re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(&v168, &v182 + 1);
      v118 = v170;
      if (!v170)
      {
        if (*(v59 + 21))
        {
          v129 = *(v59 + 22);
        }

        else
        {
          v129 = v59 + 169;
        }

        if (v177)
        {
          v130 = v179;
        }

        else
        {
          v130 = v178;
        }

        v131 = re::DynamicString::format("Asset network loading for '%s' not allowed by peer '%s'.", buf, v129, v130);
        v132 = *re::assetsLogObjects(v131);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
        {
          if (buf[8])
          {
            v133 = *&buf[16];
          }

          else
          {
            v133 = &buf[9];
          }

          LODWORD(location) = 136315138;
          *(&location + 4) = v133;
          _os_log_impl(&dword_1E1C61000, v132, OS_LOG_TYPE_INFO, "%s", &location, 0xCu);
        }

        v134 = re::DynamicString::DynamicString(&location, buf);
        re::AssetManager::putEntryInFailedState_entryStateLocked(v134, v59, 302, &location);
        if (location)
        {
          if (BYTE8(location))
          {
            (*(*location + 40))();
          }

          location = 0u;
          v211 = 0u;
        }

LABEL_408:
        v148 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v149 = *&buf[16];
LABEL_411:
          (*(*v148 + 40))(v148, v149);
          goto LABEL_412;
        }

        goto LABEL_412;
      }

      v119 = v172;
      if (*(v172 + 8))
      {
        v120 = *(v172 + 16);
      }

      else
      {
        v120 = (v172 + 9);
      }

      if (strcmp(v120, "NamedAsset"))
      {
LABEL_310:
        if (v118 == 1)
        {
          v121 = (v119[1] & 1) != 0 ? v119[2] : v119 + 9;
          if (!strcmp(v121, "PeerAsset"))
          {
            if (!*(this + 228))
            {
              re::DynamicString::DynamicString(&buf[8]);
              re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>(v119, buf, 0);
              if (buf[16])
              {
                v152 = v198;
              }

              else
              {
                v152 = &buf[17];
              }

              v153 = re::DynamicString::format("Failed to load peer asset (from peer:%llu / %s), no AssetNetworkLoader found.", &location, *buf, v152);
              re::AssetManager::putEntryInFailedState_entryStateLocked(v153, v59, 302, &location);
              if (location)
              {
                if (BYTE8(location))
                {
                  (*(*location + 40))();
                }

                location = 0u;
                v211 = 0u;
              }

              v148 = *&buf[8];
              if (!*&buf[8] || (buf[16] & 1) == 0)
              {
                goto LABEL_412;
              }

              v149 = v198;
              goto LABEL_411;
            }

            re::AssetLoadDescriptor::AssetLoadDescriptor(buf, v119);
            re::NetworkActionQueue::queueSyncActionPeerLoad(this + 1152, v71, buf);
            re::AssetLoadDescriptor::~AssetLoadDescriptor(buf);
LABEL_412:
            re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v168);
            if (v182 == 1)
            {
              re::DynamicArray<re::AssetLoadDescriptor>::deinit(v101 + 8);
            }

            goto LABEL_414;
          }
        }

        v102 = buf;
        re::DynamicString::DynamicString(buf, v119);
        re::DynamicArray<BOOL>::DynamicArray(&v198 + 8, v119 + 4);
        re::DynamicArray<BOOL>::DynamicArray(&v201, v119 + 9);
        re::DynamicString::DynamicString(&v204, (v119 + 14));
        if (buf[8])
        {
          v122 = *&buf[16];
        }

        else
        {
          v122 = &buf[9];
        }

        if (!strcmp(v122, "NetworkAsset"))
        {
          v136 = re::DynamicString::format("Invalid scheme %s, received over the network.", &location, "NetworkAsset");
          v137 = *re::assetsLogObjects(v136);
          if (!os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_389;
          }

          if (BYTE8(location))
          {
            v138 = v211;
          }

          else
          {
            v138 = &location + 9;
          }

          *v208 = 136315138;
          *&v208[4] = v138;
        }

        else
        {
          if (strcmp(v122, "FileAsset"))
          {
            re::AssetManager::reuseExistingOrLoadNewAsset_locked(this, v59, &v168);
LABEL_396:
            if (v204)
            {
              if (BYTE8(v204))
              {
                (*(*v204 + 40))(v204, v205);
              }

              *(v102 + 7) = 0u;
              *(v102 + 8) = 0u;
            }

            if (v201)
            {
              if (v203)
              {
                (*(*v201 + 40))(v201, v203);
              }

              v203 = 0;
              *(v102 + 10) = 0;
              *(v102 + 11) = 0;
              *(v102 + 9) = 0;
              ++DWORD2(v202);
            }

            if (*(&v198 + 1))
            {
              if (*(&v200 + 1))
              {
                (*(**(&v198 + 1) + 40))(*(&v198 + 1), *(&v200 + 1));
              }

              *(&v200 + 1) = 0;
              *(v102 + 5) = 0;
              *(v102 + 6) = 0;
              *(v102 + 4) = 0;
              LODWORD(v200) = v200 + 1;
            }

            goto LABEL_408;
          }

          p_location = &location;
          v146 = re::DynamicString::format("Loading via '%s' scheme sent over the network is not supported.", &location, "FileAsset");
          v137 = *re::assetsLogObjects(v146);
          if (!os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
LABEL_389:
            v147 = re::DynamicString::DynamicString(v208, &location);
            re::AssetManager::putEntryInFailedState_entryStateLocked(v147, v59, 302, v208);
            if (*v208)
            {
              if (v208[8])
              {
                (*(**v208 + 40))(*v208, v209);
              }

              *(v8 + 176) = 0u;
              *(v8 + 192) = 0u;
            }

            if (location && (BYTE8(location) & 1) != 0)
            {
              (*(*location + 40))(location, v211);
            }

            goto LABEL_396;
          }

LABEL_449:
          if (BYTE8(location))
          {
            v154 = v211;
          }

          else
          {
            v154 = p_location + 9;
          }

          *v208 = 136315138;
          *(v8 + 180) = v154;
        }

        _os_log_error_impl(&dword_1E1C61000, v137, OS_LOG_TYPE_ERROR, "%s", v208, 0xCu);
        goto LABEL_389;
      }

      *(&v198 + 1) = 0;
      memset(buf, 0, sizeof(buf));
      LODWORD(v198) = 0;
      re::DynamicArray<re::AssetLoadDescriptor>::add(buf, v119);
      if ((re::AssetManager::tryReuseExistingAsset_locked(this, v59, buf, 1) & 1) == 0)
      {
        if (v170 != 1)
        {
          *&location = re::DynamicArray<re::AssetLoadDescriptor>::slice(v170, v172, v170 - 1);
          *(&location + 1) = v151;
          re::DynamicArray<re::AssetLoadDescriptor>::operator=(&v168, &location);
          re::DynamicArray<re::AssetLoadDescriptor>::deinit(buf);
          v118 = v170;
          v119 = v172;
          goto LABEL_310;
        }

        re::DynamicString::DynamicString(&location);
        (*(**(this + 249) + 72))(*(this + 249), v172, &location);
        if (*(v59 + 21))
        {
          v139 = *(v59 + 22);
        }

        else
        {
          v139 = v59 + 169;
        }

        if (v177)
        {
          v140 = v179;
        }

        else
        {
          v140 = v178;
        }

        if (BYTE8(location))
        {
          v141 = v211;
        }

        else
        {
          v141 = &location + 9;
        }

        v142 = re::DynamicString::format("Asset network loading for '%s' from peer '%s' could not succeed because the only AssetLoadDescriptor available was from NamedAssetProvider, and this peer did not having an asset matching '%s'.", v208, v139, v140, v141);
        v143 = *re::assetsLogObjects(v142);
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          if (v208[8])
          {
            v144 = v209;
          }

          else
          {
            v144 = &v208[9];
          }

          LODWORD(v206) = 136315138;
          *(&v206 + 4) = v144;
          _os_log_impl(&dword_1E1C61000, v143, OS_LOG_TYPE_DEFAULT, "%s", &v206, 0xCu);
        }

        v145 = re::DynamicString::DynamicString(&v206, v208);
        re::AssetManager::putEntryInFailedState_entryStateLocked(v145, v59, 302, &v206);
        if (v206)
        {
          if (BYTE8(v206))
          {
            (*(*v206 + 40))();
          }

          v206 = 0u;
          v207 = 0u;
        }

        if (*v208 && (v208[8] & 1) != 0)
        {
          (*(**v208 + 40))();
        }

        if (location && (BYTE8(location) & 1) != 0)
        {
          (*(*location + 40))();
        }
      }

      re::DynamicArray<re::AssetLoadDescriptor>::deinit(buf);
      goto LABEL_412;
    }

LABEL_454:
    v155 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::AssetManager::assetNonSharedDataByteSize_entryStateLocked(v155, v156);
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v13 = a3[1];
      if (v13)
      {
        re::internal::AssetEntry::copyMetadataAndMemoryAttributionIDToNetworkAssetService(v13);
      }

      goto LABEL_302;
    }

    goto LABEL_43;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      return v3 & 1;
    }

    if (*(a2 + 144) == 1)
    {
      (*(**(this + 240) + 40))(*(this + 240), *(a2 + 152), a2);
      goto LABEL_302;
    }

    goto LABEL_454;
  }

  if (!a3[1])
  {
    goto LABEL_302;
  }

  if (*(a2 + 144))
  {
    goto LABEL_454;
  }

  v19 = *a2;
  v20 = atomic_load(this + 2177);
  if ((v20 & 1) == 0 && (*(this + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(this + 97));
  }

  if (!a3[1])
  {
    goto LABEL_302;
  }

  v21 = *(re::AssetHandle::assetInfo(a3) + 10);
  if (v21 == -1)
  {
    v21 = 0;
  }

  *buf = v21;
  v22 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 184, buf);
  canShareAssetOverNetwork = re::AssetManager::canShareAssetOverNetwork(this, a3, v22, v19);
  if (!canShareAssetOverNetwork)
  {
    goto LABEL_302;
  }

  if (v19)
  {
    if (v19 != 1)
    {
      if (v19 != 2)
      {
        goto LABEL_302;
      }

      re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) canShareAssetOverNetwork should have returned false, above.", "!Unreachable code", "processQueuedAssetForNetworkSharing_assetTablesLocked", 3745);
      _os_crash();
      __break(1u);
LABEL_43:
      v25 = a3[1];
      if (!v25)
      {
        goto LABEL_302;
      }

      v26 = atomic_load(&v25[224]._os_unfair_lock_opaque);
      re::AssetManager::fromPeerID(&v189, this, v25, 1);
      v27 = v189;
      v28 = *(&v189 + 1);
      v29 = v189 ? *(&v189 + 1) : 0;
      if ((re::DynamicString::format("%llu", buf, v29), (v27 & *(this + 2220)) == 1) && v28 && (v30 = *(this + 229)) != 0 && ((buf[8] & 1) != 0 ? (v31 = *&buf[16]) : (v31 = &buf[9]), (*(*v30 + 32))(v30, v31)))
      {
        v32 = *(this + 229);
        if (v32)
        {
          if (v26 == 3)
          {
            re::AssetHandle::loadFailedErrorCode(a3, &v182);
            if (v182)
            {
              v33 = WORD2(v182);
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }

          v123 = re::AssetHandle::assetInfo(a3);
          if (v123[10] == -1)
          {
            v124 = 0;
          }

          else
          {
            v124 = v123[10];
          }

          v125 = re::AssetManager::assetNonSharedDataByteSize_entryStateLocked(this, a3[1]);
          (*(*v32 + 128))(v32, v124, v28, v26, v125, v33);
        }
      }

      else
      {
        v52 = *(this + 240);
        v53 = re::AssetHandle::assetInfo(a3);
        v54 = v53[10] == -1 ? 0 : v53[10];
        (*(*v52 + 24))(v52, v54, v26);
      }

      v55 = *buf;
      if (!*buf || (buf[8] & 1) == 0)
      {
        goto LABEL_302;
      }

      v56 = *&buf[16];
LABEL_145:
      (*(*v55 + 40))(v55, v56);
      goto LABEL_302;
    }

    v172 = 0;
    v169 = 0;
    v170 = 0;
    v168 = 0;
    v171 = 0;
  }

  else
  {
    canShareAssetOverNetwork = re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(&v168, v22);
  }

  v85 = a3[1];
  if (v85)
  {
    v86 = *(v85 + 35);
  }

  else
  {
    v86 = 0;
  }

  v87 = atomic_load(this + 2177);
  if ((v87 & 1) == 0 && (*(this + 2178) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(this + 97));
  }

  LODWORD(v182) = 0;
  v184 = 0;
  v185 = 0;
  v183 = 0;
  v88 = re::DynamicString::setCapacity(&v182 + 1, 0);
  *(&v186 + 1) = 0;
  v187 = 0uLL;
  re::DynamicString::setCapacity(&v186, 0);
  v188 = 0;
  v89 = re::AssetHandle::assetInfo(a3);
  if (v89[10] == -1)
  {
    v90 = 0;
  }

  else
  {
    v90 = v89[10];
  }

  re::AssetPath::initAssetIdAssetPath(&v182, v90, v86);
  if (!v170)
  {
    goto LABEL_280;
  }

  v157 = 0;
  v159 = 0;
  v91 = v172;
  v92 = 144 * v170;
  v158 = v86;
  do
  {
    if (*(v91 + 1))
    {
      v93 = *(v91 + 2);
    }

    else
    {
      v93 = v91 + 9;
    }

    v94 = strcmp(v93, "MemoryAsset");
    if (!v94)
    {
      goto LABEL_215;
    }

    v94 = strcmp(v93, "FileAsset");
    if (!v94)
    {
      goto LABEL_215;
    }

    v95 = strcmp(v93, "RealityFileAsset");
    if (v95)
    {
      if (!strcmp(v93, "NamedAsset"))
      {
        v157 = 1;
      }

      else
      {
        v159 |= strcmp(v93, "PeerAsset") == 0;
      }

      goto LABEL_226;
    }

    v198 = 0u;
    *&buf[8] = 0u;
    v96 = re::DynamicString::setCapacity(&buf[8], 0);
    v200 = 0u;
    v199 = 0u;
    v97 = re::DynamicString::setCapacity(&v199, 0);
    v202 = 0u;
    v201 = 0u;
    re::DynamicString::setCapacity(&v201, 0);
    LOBYTE(v203) = 0;
    *&v204 = 1;
    re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>(v91, buf, 0);
    v98 = buf[0];
    if (v201)
    {
      if (BYTE8(v201))
      {
        (*(*v201 + 40))();
      }

      v202 = 0u;
      v201 = 0u;
    }

    if (v199)
    {
      if (BYTE8(v199))
      {
        (*(*v199 + 40))();
      }

      v200 = 0u;
      v199 = 0u;
    }

    v94 = *&buf[8];
    if (*&buf[8] && (buf[16] & 1) != 0)
    {
      v94 = (*(**&buf[8] + 40))();
    }

    v99 = v98 & 0xFFFFFFFD;
    v86 = v158;
    if (v99 == 1)
    {
LABEL_215:
      v198 = 0u;
      *&buf[8] = 0u;
      re::DynamicString::setCapacity(&buf[8], 0);
      *buf = (*(**(this + 240) + 104))(*(this + 240));
      v190 = 0uLL;
      v189 = *(&v182 + 1);
      re::DynamicString::setCapacity(&v189, 0);
      re::AssetPath::fullAssetPath(&v182, &v189);
      re::DynamicString::operator=(&buf[8], &v189);
      if (v189 && (BYTE8(v189) & 1) != 0)
      {
        (*(*v189 + 40))();
      }

      v100 = strlen(*v86);
      *&v189 = *v86;
      *(&v189 + 1) = v100;
      re::DynamicString::operator=((v91 + 112), &v189);
      *&v189 = "PeerAsset";
      *(&v189 + 1) = 9;
      re::DynamicString::operator=(v91, &v189);
      v173 = *buf;
      re::DynamicString::DynamicString(&v174, &buf[8]);
      re::AssetLoadDescriptor::setIntrospectableData(v91, re::PeerAssetProvider::s_loadDescriptorParametersIntrospect, &v173, 0);
      if (v174)
      {
        if (BYTE8(v174))
        {
          (*(*v174 + 40))();
        }

        v175 = 0u;
        v174 = 0u;
      }

      if (*&buf[8] && (buf[16] & 1) != 0)
      {
        (*(**&buf[8] + 40))();
      }

      v159 = 1;
    }

LABEL_226:
    v91 += 144;
    v92 -= 144;
  }

  while (v92);
  if (v170 >= 1)
  {
    v101 = 0;
    v102 = 0;
    v8 = v170 & 0x7FFFFFFF;
    v14 = 144 * v8;
    do
    {
      v57 = v170;
      if (v170 <= 1)
      {
        break;
      }

      p_location = v8--;
      if (v170 <= v8)
      {
        v176 = 0;
        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        v189 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v194 = 136315906;
        *&v194[4] = "operator[]";
        *&v194[12] = 1024;
        *&v194[14] = 789;
        *&v194[18] = 2048;
        *&v194[20] = v8;
        v195 = 2048;
        *v196 = v57;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_448:
        v176 = 0;
        v59 = &v182;
        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        v189 = 0u;
        v137 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v194 = 136315906;
        *&v194[4] = "removeStableAt";
        *&v194[12] = 1024;
        *&v194[14] = 969;
        *&v194[18] = 2048;
        *&v194[20] = v8;
        v195 = 2048;
        *v196 = v57;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_449;
      }

      v104 = (v172 + 144 * v8);
      re::DynamicString::DynamicString(buf, v104);
      re::DynamicArray<BOOL>::DynamicArray(&v198 + 8, v104 + 4);
      re::DynamicArray<BOOL>::DynamicArray(&v201, v104 + 9);
      re::DynamicString::DynamicString(&v204, (v104 + 14));
      if (buf[8])
      {
        v105 = *&buf[16];
      }

      else
      {
        v105 = &buf[9];
      }

      if (!strcmp(v105, "PeerAsset"))
      {
        v57 = v170;
        if (v170 <= v8)
        {
          goto LABEL_448;
        }

        v106 = v172;
        if (v170 - 1 > v8 && v172 + 144 * v8 + 144 != v172 + 144 * v170)
        {
          v107 = &v102[v172];
          v108 = &v101[9 * v170];
          do
          {
            v109 = &v107[v14];
            re::DynamicString::operator=(&v107[v14 - 144], &v107[v14]);
            re::DynamicArray<re::internal::DeferredUnregister *>::operator=((v109 - 112), (v109 + 32));
            re::DynamicArray<re::internal::DeferredUnregister *>::operator=((v109 - 72), (v109 + 72));
            re::DynamicString::operator=((v109 - 32), (v109 + 112));
            v107 += 144;
            v108 -= 9;
          }

          while (v14 != v108);
          v57 = v170;
          v106 = v172;
        }

        v110 = v106 + 144 * v57;
        re::DynamicString::deinit((v110 - 32));
        re::DynamicArray<unsigned long>::deinit(v110 - 72);
        re::DynamicArray<unsigned long>::deinit(v110 - 112);
        re::DynamicString::deinit((v110 - 144));
        --v170;
        ++v171;
        re::DynamicArray<re::AssetLoadDescriptor>::add(&v168, buf);
      }

      if (v204)
      {
        if (BYTE8(v204))
        {
          (*(*v204 + 40))();
        }

        v204 = 0u;
        v205 = 0u;
      }

      if (v201)
      {
        if (v203)
        {
          (*(*v201 + 40))();
        }

        v203 = 0;
        *&v202 = 0;
        v201 = 0uLL;
        ++DWORD2(v202);
      }

      if (*(&v198 + 1))
      {
        if (*(&v200 + 1))
        {
          (*(**(&v198 + 1) + 40))();
        }

        *(&v200 + 1) = 0;
        v199 = 0uLL;
        *(&v198 + 1) = 0;
        LODWORD(v200) = v200 + 1;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      v102 -= 144;
      v101 += 9;
    }

    while (p_location > 1);
  }

  v86 = v158;
  if (((v157 ^ 1 | v159) & 1) == 0)
  {
    v111 = (*(**(this + 240) + 104))(*(this + 240));
    v190 = 0uLL;
    v189 = *(&v182 + 1);
    re::DynamicString::setCapacity(&v189, 0);
    re::AssetPath::fullAssetPath(&v182, &v189);
    re::PeerAssetProvider::makeDescriptor(v111, *v158, &v189, buf);
    if (v189 && (BYTE8(v189) & 1) != 0)
    {
      (*(*v189 + 40))();
    }

    re::DynamicArray<re::AssetLoadDescriptor>::add(&v168, buf);
    if (v204)
    {
      if (BYTE8(v204))
      {
        (*(*v204 + 40))();
      }

      v204 = 0u;
      v205 = 0u;
    }

    if (v201)
    {
      if (v203)
      {
        (*(*v201 + 40))();
      }

      v203 = 0;
      *&v202 = 0;
      v201 = 0uLL;
      ++DWORD2(v202);
    }

    if (*(&v198 + 1))
    {
      if (*(&v200 + 1))
      {
        (*(**(&v198 + 1) + 40))();
      }

      *(&v200 + 1) = 0;
      v199 = 0uLL;
      *(&v198 + 1) = 0;
      LODWORD(v200) = v200 + 1;
    }

    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    v86 = v158;
  }

LABEL_280:
  v112 = *(this + 240);
  v113 = re::AssetHandle::assetInfo(a3);
  if (v113[10] == -1)
  {
    v114 = 0;
  }

  else
  {
    v114 = v113[10];
  }

  v115 = a3[1];
  buf[0] = *(v115 + 336);
  if (buf[0] == 1)
  {
    *&buf[8] = *(v115 + 43);
  }

  (**v112)(v112, v114, &v168, v86, 0, buf);
  if (*(this + 2219) == 1)
  {
    os_unfair_lock_lock(this + 608);
    re::DynamicOverflowArray<unsigned long long,1ul>::DynamicOverflowArray(buf, this + 305);
    os_unfair_lock_unlock(this + 608);
    if (*&buf[8])
    {
      v116 = *(this + 240);
      if (buf[16])
      {
        v117 = &v198;
      }

      else
      {
        v117 = *(&v198 + 1);
      }

      *&v189 = v117;
      *(&v189 + 1) = *&buf[8];
      (*(*v116 + 16))(v116, a3, &v189);
    }

    if (*buf && (buf[16] & 1) == 0)
    {
      (*(**buf + 40))();
    }
  }

  if (v186)
  {
    if (BYTE8(v186))
    {
      (*(*v186 + 40))();
    }

    v187 = 0u;
    v186 = 0u;
  }

  if (*(&v182 + 1) && (v183 & 1) != 0)
  {
    (*(**(&v182 + 1) + 40))();
  }

  re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v168);
LABEL_302:
  v3 = 1;
  return v3 & 1;
}