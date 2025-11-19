void re::VideoASEFrameMeasurement::create(re::VideoASEFrameMeasurement *this@<X0>, void *a2@<X8>)
{
  re::VideoASEFrameMeasurement::VideoASEFrameMeasurement(v3);
  *a2 = v4;
}

void anonymous namespace::videoASEFrameMeasurementAllocator(_anonymous_namespace_ *this)
{
  {
  }
}

double re::VideoASEFrameMeasurement::VideoASEFrameMeasurement(re::VideoASEFrameMeasurement *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D1BA38;
  *(this + 6) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 396) = 0u;
  *(this + 780) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 26) = 0u;
  return result;
}

void re::VideoASEProcessor::completionCallback(int a1, id *location)
{
  if (location)
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      os_unfair_lock_lock(WeakRetained + 4);
      memcpy(&v4[102], location + 1, 0x17CuLL);
      atomic_store(1u, &v4[5]);
      os_unfair_lock_unlock(v4 + 4);
    }

    v5 = location[49];
    if (v5)
    {
      CFRelease(v5);
    }

    objc_destroyWeak(location);
    *location = 0;
    v7 = *(qword_1EE1C49D0[0] + 40);

    v7();
  }
}

void anonymous namespace::videoASECompletionContextAllocator(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_581, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_581))
  {
    re::Allocator::Allocator(qword_1EE1C49D0, "VideoASECompletionContextAllocator", 1);
    qword_1EE1C49D0[0] = &unk_1F5CCF7F8;

    __cxa_guard_release(&_MergedGlobals_581);
  }
}

uint64_t re::VideoASEProcessor::createConfig(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  *&v32 = 0x400000001;
  *(&v32 + 1) = __PAIR64__(a3, a2);
  v33 = __PAIR64__(a5, a4);
  v12 = re::Hash<re::VideoASEConfigurationKey>::operator()(&v32);
  re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::findEntry<re::VideoASEConfigurationKey>(&buf, a1, &v32, v12);
  if (HIDWORD(buf) == 0x7FFFFFFF)
  {
    v13 = [objc_alloc(MEMORY[0x1E6986508]) initWithConfig:&v32];
    [v13 setDestinationWidth:v33];
    [v13 setDestinationHeight:HIDWORD(v33)];
    buf = 0uLL;
    v35 = 0;
    v14 = re::Hash<re::VideoASEConfigurationKey>::operator()(&v32);
    re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::findEntry<re::VideoASEConfigurationKey>(&buf, a1, &v32, v14);
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v15 = re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::allocEntry(a1, DWORD2(buf), buf);
      *(v15 + 4) = v32;
      *(v15 + 20) = v33;
      *(v15 + 32) = v13;
      ++*(a1 + 40);
    }

    v16 = v13;

    if (v16)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = *(*(a1 + 16) + 48 * HIDWORD(buf) + 32);
    v16 = v17;
    if (v17)
    {
LABEL_5:
      v18 = (*(qword_1EE1C49D0[0] + 32))(qword_1EE1C49D0, 400, 0);
      *v18 = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 176) = 0u;
      *(v18 + 192) = 0u;
      *(v18 + 208) = 0u;
      *(v18 + 224) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0u;
      *(v18 + 304) = 0u;
      *(v18 + 320) = 0u;
      *(v18 + 336) = 0u;
      *(v18 + 352) = 0u;
      *(v18 + 368) = 0u;
      *(v18 + 384) = 0u;
      objc_initWeak(v18, 0);
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0u;
      *(v18 + 72) = 0u;
      *(v18 + 88) = 0u;
      *(v18 + 104) = 0u;
      *(v18 + 120) = 0u;
      *(v18 + 136) = 0u;
      *(v18 + 152) = 0u;
      *(v18 + 168) = 0u;
      *(v18 + 184) = 0u;
      *(v18 + 200) = 0u;
      *(v18 + 216) = 0u;
      *(v18 + 232) = 0u;
      *(v18 + 248) = 0u;
      *(v18 + 372) = 0u;
      *(v18 + 264) = 0u;
      *(v18 + 280) = 0u;
      *(v18 + 296) = 0u;
      *(v18 + 312) = 0u;
      *(v18 + 328) = 0u;
      *(v18 + 344) = 0u;
      *(v18 + 360) = 0u;
      *(v18 + 392) = 0;
      if (*a6)
      {
        v19 = (*a6 + 8);
      }

      else
      {
        v19 = 0;
      }

      objc_storeWeak(v18, v19);
      v20 = *a6;
      v21 = atomic_load((v20 + 28));
      if (v21)
      {
        os_unfair_lock_lock((v20 + 24));
        v22 = atomic_load((v20 + 28));
        if (v22)
        {
          memcpy((v20 + 32), (v20 + 416), 0x17CuLL);
          atomic_store(0, (v20 + 28));
        }

        os_unfair_lock_unlock((v20 + 24));
      }

      memcpy((v18 + 8), (v20 + 32), 0x17CuLL);
      v31 = 0;
      v23 = [(_anonymous_namespace_ *)v16 processFrameWithInput:v18 + 8 outputData:&v31];
      v24 = v31;
      v25 = v24;
      if (v23 == -18000)
      {
        CFRetain(v24);
        v26 = 0;
        *(v18 + 392) = v25;
        *a7 = v25;
        a7[1] = v18 + 8;
        a7[3] = re::VideoASEProcessor::completionCallback;
        a7[4] = v18;
      }

      else
      {
        v28 = *re::videoLogObjects(v24);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (v29)
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v23;
          _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Unable to process ASE (%ld).", &buf, 0xCu);
        }

        (*(qword_1EE1C49D0[0] + 40))(qword_1EE1C49D0, v18);
        v26 = 1;
      }

      goto LABEL_22;
    }
  }

  v27 = *re::videoLogObjects(v17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 67109376;
    DWORD1(buf) = a2;
    WORD4(buf) = 1024;
    *(&buf + 10) = a3;
    _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Unable to create ASE Processor for config %d x %d.", &buf, 0xEu);
  }

  v26 = 1;
LABEL_22:

  return v26;
}

void re::VideoASEFrameMeasurement::~VideoASEFrameMeasurement(re::VideoASEFrameMeasurement *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::findEntry<re::VideoASEConfigurationKey>(uint64_t result, uint64_t a2, int *a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v9 = a3[2];
    v10 = a3[3];
    v12 = *a3;
    v11 = a3[1];
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    v13 = a3[4];
    v14 = a3[5];
    while (1)
    {
      v15 = v6;
      v16 = (v8 + 48 * v6);
      if (v16[3] == v9 && v16[4] == v10 && v16[2] == v11 && v16[1] == v12 && v16[5] == v13 && v16[6] == v14)
      {
        break;
      }

      v6 = *(v8 + 48 * v15) & 0x7FFFFFFF;
      v7 = v15;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v15;
        goto LABEL_13;
      }
    }

    v5 = v15;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_13:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

unint64_t re::Hash<re::VideoASEConfigurationKey>::operator()(_DWORD *a1)
{
  v1 = 73244475 * (a1[2] ^ HIWORD(a1[2]));
  v2 = 73244475 * (a1[3] ^ HIWORD(a1[3]));
  v3 = (73244475 * (v2 ^ HIWORD(v2))) ^ ((73244475 * (v2 ^ HIWORD(v2))) >> 16);
  v4 = 73244475 * (a1[1] ^ HIWORD(a1[1]));
  v5 = (73244475 * (v4 ^ HIWORD(v4))) ^ ((73244475 * (v4 ^ HIWORD(v4))) >> 16);
  v6 = 73244475 * (*a1 ^ HIWORD(*a1));
  v7 = (73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16);
  v8 = 73244475 * (a1[4] ^ HIWORD(a1[4]));
  v9 = (73244475 * (v8 ^ HIWORD(v8))) ^ ((73244475 * (v8 ^ HIWORD(v8))) >> 16);
  v10 = 73244475 * ((73244475 * (a1[5] ^ HIWORD(a1[5]))) ^ ((73244475 * (a1[5] ^ HIWORD(a1[5]))) >> 16));
  return re::hashCombine((73244475 * (v1 ^ HIWORD(v1))) ^ ((73244475 * (v1 ^ HIWORD(v1))) >> 16), v3, v5, v7, v9, v10 ^ HIWORD(v10));
}

uint64_t re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                v20 = *(v18 - 28);
                *(v19 + 20) = *(v18 - 12);
                *(v19 + 4) = v20;
                v21 = *v18;
                *v18 = 0;
                *(v19 + 32) = v21;
              }

              ++v17;
              v18 += 6;
            }

            while (v17 < v16);
          }

          re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::deinit(v28);
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

re::AcousticMeshAssetImporter *re::AcousticMeshAssetImporter::AcousticMeshAssetImporter(re::AcousticMeshAssetImporter *this, re::AssetManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D1BA80;
  re::GeomMesh::GeomMesh((this + 24), 0);
  *(this + 99) = 0;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 202) = 1065353216;
  *(this + 51) = 0u;
  *(this + 104) = a2;
  *(this + 109) = 0;
  *(this + 105) = 0;
  *(this + 107) = 0;
  *(this + 106) = 0;
  *(this + 216) = 0;
  *(this + 100) = re::AcousticMeshAsset::kMaterialAttributeName;
  return this;
}

void re::AcousticMeshAssetImporter::~AcousticMeshAssetImporter(re::AcousticMeshAssetImporter *this)
{
  *this = &unk_1F5D1BA80;
  re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::deinit(this + 840);

  re::AssetHandle::~AssetHandle((this + 760));
  re::GeomMesh::~GeomMesh(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AcousticMeshAssetImporter::~AcousticMeshAssetImporter(this);

  JUMPOUT(0x1E6906520);
}

_BYTE *re::AcousticMeshAssetImporter::addGeomModelDescriptor(uint64_t a1, re *this, uint64_t *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v41 = *MEMORY[0x1E69E9840];
  re::makeGeomModelFromModelDescriptor(this, v17);
  if (v17[0] == 1)
  {
    re::DynamicString::DynamicString(buf, v18);
    re::DynamicArray<re::GeomMesh>::DynamicArray(v28, v20);
    re::DynamicArray<float>::DynamicArray(v29, v21);
    v32 = v22;
    if (v22 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::DynamicArray(v33, v23);
    }

    v34 = v24;
    if (v24 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::DynamicArray(v35, v25);
    }

    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::DynamicArray(v36, v26);
    v36[3] = a4;
    v36[4] = a5;
    v36[5] = a6;
    v36[6] = a7;
    re::DynamicArray<NSString * {__strong}>::DynamicArray(v37, a3);
    v40 = 0;
    memset(v38, 0, sizeof(v38));
    v39 = 0;
    re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::add(a1 + 840, buf);
    re::DynamicArray<re::ObjCObject>::deinit(v38);
    re::DynamicArray<re::ObjCObject>::deinit(v37);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v36);
    if (v34 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v35);
    }

    if (v32 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v33);
    }

    if (v29[0])
    {
      if (v31)
      {
        (*(*v29[0] + 40))();
      }

      v31 = 0;
      memset(v29, 0, sizeof(v29));
      ++v30;
    }

    re::DynamicArray<re::GeomMesh>::deinit(v28);
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }
  }

  else
  {
    v10 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (v18[24])
      {
        v12 = v20[0];
      }

      else
      {
        v12 = v19;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to import geom model descriptor. Error: %s", buf, 0xCu);
    }
  }

  return re::Result<re::GeomModel,re::DetailedError>::~Result(v17);
}

void re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  re::ObjectHelper::moveConstruct<re::AcousticMeshAssetImporter::InputModel>(*(a1 + 32) + 400 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
}

void re::AcousticMeshAssetImporter::InputModel::~InputModel(re::AcousticMeshAssetImporter::InputModel *this)
{
  re::DynamicArray<re::ObjCObject>::deinit(this + 360);
  re::DynamicArray<re::ObjCObject>::deinit(this + 320);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(this + 208);
  if (*(this + 160) == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(this + 168);
  }

  if (*(this + 112) == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(this + 120);
  }

  re::DynamicArray<unsigned long>::deinit(this + 72);
  re::DynamicArray<re::GeomMesh>::deinit(this + 32);
  re::DynamicString::deinit(this);
}

uint64_t re::AcousticMeshAssetImporter::loadUSKMeshNodes(uint64_t a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (!v7)
  {
    goto LABEL_22;
  }

  [MEMORY[0x1E69DED88] localTransformWithNode:v7 time:0.0];
  v8 = 0;
  v50[0] = v9;
  v50[1] = v10;
  v51 = v11;
  v52 = v12;
  do
  {
    *&buf[v8 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v50[v8])), a4, *&v50[v8], 1), a5, v50[v8], 2), a6, v50[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  v47 = v57;
  v49 = *buf;
  v43 = v59;
  v45 = v58;
  if ([MEMORY[0x1E69DED88] isSceneGraphNode:v7])
  {
    if ([MEMORY[0x1E69DED88] isTransformNode:v7])
    {
      v13 = [v7 type];
      v14 = *MEMORY[0x1E69DEE70];

      if (v13 == v14)
      {
        re::internal::createGeomModelFromUSKNode(v7, buf, 0, 0, 1, v50);
        v16 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v16 = (*(**buf + 40))();
        }

        if (LOBYTE(v50[0]) == 1)
        {
          v17 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v7];
          v18 = [v17 count];
          v19 = *(&v52 + 1);
          if (*(&v52 + 1))
          {
            v20 = v18;
            re::GeomModel::GeomModel(buf, v50 + 8);
            v21 = 0;
            v60 = v49;
            v61 = v47;
            v62 = v45;
            v63 = v43;
            memset(v64, 0, sizeof(v64));
            v65 = 0;
            v69 = 0;
            v66 = 0u;
            v67 = 0u;
            v68 = 0;
            do
            {
              v22 = v7;
              if (v17 && v21 < v20)
              {
                v23 = [v17 objectAtIndexedSubscript:v21];

                v22 = v23;
              }

              v24 = [v22 inheritedMaterialBinding];
              v25 = [v24 name];
              v26 = [v25 stringValue];
              v27 = v26;
              v28 = @"none";
              if (v26)
              {
                v28 = v26;
              }

              *v53 = v28;

              re::DynamicArray<NSString * {__strong}>::add(v64, v53);
              ++v21;
            }

            while (v19 != v21);
            re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::add(a1 + 840, buf);
            re::AcousticMeshAssetImporter::InputModel::~InputModel(buf);
          }

          else
          {
            v31 = *re::audioLogObjects(v18);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v31;
              v33 = [v7 path];
              v34 = [v33 stringValue];
              *buf = 138412290;
              *&buf[4] = v34;
              _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Node at path %@ did not produce any mesh parts.", buf, 0xCu);
            }
          }

          re::Result<re::GeomModel,re::DetailedError>::~Result(v50);
          goto LABEL_26;
        }

        v29 = *re::audioLogObjects(v16);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          std::error_code::message(buf, (v50 + 8));
          v40 = v57.n128_i8[7] >= 0 ? buf : *buf;
          v41 = (v51 & 1) != 0 ? *(&v51 + 1) : (&v51 + 1);
          *v53 = 136315394;
          *&v53[4] = v40;
          v54 = 2080;
          v55 = v41;
          _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Error importing from USD: %s\nDetails: %s", v53, 0x16u);
          if (v57.n128_i8[7] < 0)
          {
            operator delete(*buf);
          }
        }

        re::Result<re::GeomModel,re::DetailedError>::~Result(v50);
LABEL_22:
        USKMeshNodes = 0;
        goto LABEL_33;
      }
    }
  }

LABEL_26:
  v35 = [v7 childIterator];
  v36 = [v35 nextObject];
  if (v36)
  {
    v37 = v36;
    do
    {
      USKMeshNodes = re::AcousticMeshAssetImporter::loadUSKMeshNodes(a1, v37, v49, v47, v45, v43);
      if (!USKMeshNodes)
      {
        break;
      }

      v38 = [v35 nextObject];

      v37 = v38;
    }

    while (v38);
  }

  else
  {
    USKMeshNodes = 1;
  }

LABEL_33:
  return USKMeshNodes;
}

uint64_t re::GeomModel::GeomModel(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 8);
  *a1 = *a2;
  *a2 = 0;
  v5 = *(a2 + 16);
  *(a2 + 24) = 0;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v10;
  ++*(a2 + 56);
  ++*(a1 + 56);
  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  v11 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v12 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v12;
  v13 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  ++*(a2 + 96);
  ++*(a1 + 96);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 112, (a2 + 112));
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 160, (a2 + 160));
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v14;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v15 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v15;
  v16 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v16;
  ++*(a2 + 232);
  ++*(a1 + 232);
  return a1;
}

id re::DynamicArray<NSString * {__strong}>::add(_anonymous_namespace_ *this, id *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<USKNode * {__strong}>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4);
  result = *a2;
  *(v5 + 8 * v4) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t *re::AcousticMeshAssetImporter::processInputModels(re::AcousticMeshAssetImporter *this)
{
  v73 = *MEMORY[0x1E69E9840];
  bzero(&v46, 0x2D0uLL);
  v3 = 1;
  re::DynamicArray<re::BlendNode>::setCapacity(&v48, 1uLL);
  ++v49;
  re::internal::GeomAttributeManager::GeomAttributeManager(v51);
  re::internal::GeomAttributeManager::addAttribute(v51, "vertexPosition", 1, 7);
  v4 = [MEMORY[0x1E695DF70] array];
  v41 = v4;
  v5 = *(this + 109);
  v6 = *(this + 107);
  if (v6)
  {
    v7 = 0;
    v8 = 400 * v6;
    v9 = v5 + 3;
    do
    {
      v7 += v9->i64[0];
      v9 += 25;
      v8 -= 400;
    }

    while (v8);
    v3 = v7 + 1;
  }

  if (*(this + 102))
  {
    v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v3];
    v4 = [*(this + 102) addChild:v10 withPendingUnitCount:1];
    v5 = *(this + 109);
    v6 = *(this + 107);
    if (!v6)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v10 = 0;
    if (!v6)
    {
      goto LABEL_40;
    }
  }

  v11 = 0;
  v12 = 0;
  v39 = &v5[25 * v6];
  do
  {
    v13 = *re::audioLogObjects(v4);
    v4 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_debug_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEBUG, "Importing model #%u", buf, 8u);
    }

    v40 = v12;
    if (v5[3].i64[0])
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = @"none";
        if (v5[21].i64[0] > v14)
        {
          v16 = *(v5[22].i64[0] + 8 * v14);
        }

        v17 = *re::audioLogObjects([v41 addObject:v16]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *&buf[4] = v15;
          *v56 = 2112;
          *&v56[2] = v16;
          _os_log_debug_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEBUG, "Importing material #%u '%@'", buf, 0x12u);
        }

        v18 = v5[3].u64[0];
        if (v18 <= v14)
        {
          goto LABEL_46;
        }

        v19 = (v5[4].i64[0] + 736 * v14);
        *buf = 0;
        *v56 = 0;
        bzero(&v56[8], 0x2C8uLL);
        re::internal::GeomBaseMesh::GeomBaseMesh(&v56[8]);
        v60 = 0;
        re::GeomMesh::copy(v19, buf);
        v44 = v5[17];
        v45 = v5[16];
        v42 = v5[19];
        v43 = v5[18];
        v20 = re::GeomMesh::modifyVertexPositions(buf);
        v22 = *&v56[8];
        if (*&v56[8])
        {
          break;
        }

LABEL_23:
        *&v54[2] = 0;
        memset(v52, 0, sizeof(v52));
        if (v59)
        {
          for (i = 0; i < v59; ++i)
          {
            v27 = *(re::internal::GeomAttributeManager::attributeByIndex(v58, i) + 8);
            if (strcmp(v27, "vertexPosition"))
            {
              *&v68 = v27;
              re::DynamicArray<re::TransitionCondition *>::add(v52, &v68);
            }
          }

          if (*&v52[16])
          {
            v28 = *&v54[2];
            v29 = 8 * *&v52[16];
            do
            {
              v30 = *v28++;
              re::internal::GeomAttributeManager::deleteAttribute(v58, v30);
              v29 -= 8;
            }

            while (v29);
          }
        }

        v31 = v57;
        v14 = re::GeomMesh::addAttribute(buf, *(this + 100), 2, 2);
        (*(*v14 + 24))(v14, v31);
        v32 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v14);
        if (v31)
        {
          v34 = v31;
          v18 = v33;
          v35 = v33;
          while (v35)
          {
            *v32++ = v11;
            --v35;
            if (!--v34)
            {
              goto LABEL_35;
            }
          }

LABEL_45:
          v51[83] = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v61 = 136315906;
          *&v61[4] = "operator[]";
          v62 = 1024;
          v63 = 621;
          v64 = 2048;
          v65 = v18;
          v66 = 2048;
          v67 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_46:
          *v61 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v52 = 136315906;
          *&v52[4] = "operator[]";
          *&v52[12] = 1024;
          *&v52[14] = 797;
          *&v52[18] = 2048;
          *&v52[20] = v14;
          v53 = 2048;
          *v54 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_35:
        re::GeomMeshBuilder::appendMesh(&v46, buf);
        incrementProgress(v10, *(this + 103));
        if (*v52 && *&v54[2])
        {
          (*(**v52 + 40))();
        }

        re::GeomMesh::~GeomMesh(buf);

        ++v11;
        v14 = ++v15;
        if (v5[3].i64[0] <= v15)
        {
          goto LABEL_39;
        }
      }

      v18 = v21;
      v23 = v21;
      while (v23)
      {
        v24.i64[0] = *v20;
        v24.i32[2] = *(v20 + 8);
        v24.i32[3] = 1.0;
        v25 = vmulq_n_f32(v24, *(this + 202));
        *v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, v25.f32[0]), v44, *v25.f32, 1), v43, v25, 2), v42, v25, 3);
        v20 += 16;
        --v23;
        if (!--v22)
        {
          goto LABEL_23;
        }
      }

      *v61 = 0;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v52 = 136315906;
      *&v52[4] = "operator[]";
      *&v52[12] = 1024;
      *&v52[14] = 621;
      *&v52[18] = 2048;
      *&v52[20] = v18;
      v53 = 2048;
      *v54 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_45;
    }

LABEL_39:
    v12 = v40 + 1;
    v5 += 25;
  }

  while (v5 != v39);
LABEL_40:
  re::GeomMesh::operator=(this + 24, &v47);
  re::GeomMesh::setName((this + 24), v46);
  re::GeomMesh::freeName(&v46);
  incrementProgress(v10, *(this + 103));
  v36 = [v41 copy];
  v37 = *(this + 98);
  *(this + 98) = v36;

  re::GeomMesh::freeName(&v46);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v51);
  result = v48;
  if (v48)
  {
    if (v50)
    {
      return (*(*v48 + 40))();
    }
  }

  return result;
}

void incrementProgress(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a2;
    v4 = a1;
    [v4 setCompletedUnitCount:{objc_msgSend(v4, "completedUnitCount") + 1}];
    v3[2](v3, v4);
  }
}

void re::AcousticMeshAssetImporter::createAcousticMeshAsset(re::AcousticMeshAssetImporter *this)
{
  if (*(this + 104))
  {
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 760, 8);
    bzero(v3 + 1, 0x2F0uLL);
    *v3 = &unk_1F5CC6700;
    re::GeomMesh::GeomMesh((v3 + 2), 0);
    v3[94] = 0;
    re::GeomMesh::copy(this + 3, v3 + 2);
    *(v3 + 2) = 1;
    v4 = *(this + 104);
    v6 = re::AcousticMeshAsset::assetType(v5);
    (*(*v4 + 424))(&v9, v4, v3, v6, 0, 0, 0);
    v7 = *(this + 760);
    *(this + 760) = v9;
    v9 = v7;
    v8 = *(this + 97);
    *(this + 97) = v10;
    v10 = v8;
    re::AssetHandle::~AssetHandle(&v9);
  }
}

BOOL re::AcousticMeshAssetImporter::importFromUSDFile(float *a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  v6 = v5;
  if (v5)
  {
    v36 = 0;
    v7 = [v5 checkResourceIsReachableAndReturnError:&v36];
    v5 = v36;
    v8 = v5;
    if (v7)
    {
      v35 = v5;
      v9 = [objc_alloc(MEMORY[0x1E69DED78]) initSceneFromURL:v6 error:&v35];
      v10 = v35;

      v12 = v9 != 0;
      if (v9)
      {
        v13 = [v9 metadata];
        v14 = [v13 objectForKeyedSubscript:@"metersPerUnit"];

        if (v14)
        {
          [v14 floatValue];
          if (v15 <= 0.0)
          {
            v15 = 0.01;
          }
        }

        else
        {
          v15 = 0.01;
        }

        a1[202] = v15;
        v20 = [v9 metadata];
        v21 = [v20 objectForKeyedSubscript:@"upAxis"];

        if (v21)
        {
          v22 = [v21 stringValue];
          v23 = v22;
          if (v22 && [v22 isEqualToString:@"Z"])
          {
            v24 = 0;
            v37[0] = xmmword_1E310B3B0;
            v37[1] = xmmword_1E310B3C0;
            v37[2] = xmmword_1E310B3D0;
            v37[3] = xmmword_1E30474D0;
            do
            {
              *&buf[v24 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(v37[v24])), v31, *&v37[v24], 1), v29, v37[v24], 2), v27, v37[v24], 3);
              ++v24;
            }

            while (v24 != 4);
            v31 = v39;
            v33 = *buf;
            v27 = v41;
            v29 = v40;
          }
        }

        v25 = [v9 rootNode];
        re::AcousticMeshAssetImporter::loadUSKMeshNodes(a1, v25, v34, v32, v30, v28);

        re::AcousticMeshAssetImporter::processInputModels(a1);
        goto LABEL_25;
      }

      v18 = *re::audioLogObjects(v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to load the USKScene. Error: %@", buf, 0xCu);
        if (!a3)
        {
          goto LABEL_25;
        }
      }

      else if (!a3)
      {
LABEL_25:

        goto LABEL_28;
      }

      v19 = v10;
      *a3 = v10;
      goto LABEL_25;
    }

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v16 = *re::audioLogObjects(v5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "File URL is either not there or unreachable. Error: %@", buf, 0xCu);
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (!a3)
  {
    goto LABEL_27;
  }

LABEL_12:
  v17 = v10;
  v12 = 0;
  *a3 = v10;
LABEL_28:

  return v12;
}

uint64_t re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 400 * v4;
        do
        {
          v7 = v3 + v5;
          re::DynamicArray<re::ObjCObject>::deinit(v3 + v5 + 360);
          re::DynamicArray<re::ObjCObject>::deinit(v3 + v5 + 320);
          re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v3 + v5 + 208);
          if (*(v3 + v5 + 160) == 1)
          {
            re::DynamicArray<re::GeomIndexMap>::deinit(v7 + 168);
          }

          if (*(v7 + 112) == 1)
          {
            re::DynamicArray<re::GeomIndexMap>::deinit(v3 + v5 + 120);
          }

          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 72);
          re::DynamicArray<re::GeomMesh>::deinit(v3 + v5 + 32);
          re::DynamicString::deinit((v3 + v5));
          v5 += 400;
        }

        while (v6 != v5);
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

uint64_t re::DynamicArray<NSString * {__strong}>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<NSString * {__strong}>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<NSString * {__strong}>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*,NSString * {__strong}*>(&v15, *(a2 + 32), (*(a2 + 32) + 8 * *(a1 + 16)), *(a1 + 32));
    v9 = *(a1 + 16);
    if (v9 != v4)
    {
      v10 = (*(a2 + 32) + 8 * v9);
      v11 = (*(a1 + 32) + 8 * v9);
      v12 = 8 * v4 - 8 * v9;
      do
      {
        v13 = *v10++;
        *v11++ = v13;
        v12 -= 8;
      }

      while (v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*,NSString * {__strong}*>(&v14, *(a2 + 32), (*(a2 + 32) + 8 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 8 * v4);
      v7 = 8 * v5 - 8 * v4;
      do
      {
        v8 = *v6++;

        v7 -= 8;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void **std::__copy_impl::operator()[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*,NSString * {__strong}*>(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__n128 re::ObjectHelper::moveConstruct<re::AcousticMeshAssetImporter::InputModel>(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 8);
  *a1 = *a2;
  *a2 = 0;
  v5 = *(a2 + 16);
  *(a2 + 24) = 0;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v10;
  ++*(a2 + 56);
  ++*(a1 + 56);
  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  v11 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v12 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v12;
  v13 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  ++*(a2 + 96);
  ++*(a1 + 96);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 112, (a2 + 112));
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 160, (a2 + 160));
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v14;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v15 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v15;
  v16 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v16;
  ++*(a2 + 232);
  ++*(a1 + 232);
  result = *(a2 + 256);
  v18 = *(a2 + 272);
  v19 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v19;
  *(a1 + 256) = result;
  *(a1 + 272) = v18;
  *(a1 + 352) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  v20 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v20;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  v21 = *(a1 + 336);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 336) = v21;
  v22 = *(a1 + 352);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = v22;
  ++*(a2 + 344);
  ++*(a1 + 344);
  *(a1 + 392) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  v23 = *(a2 + 368);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = v23;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  v24 = *(a1 + 376);
  *(a1 + 376) = *(a2 + 376);
  *(a2 + 376) = v24;
  v25 = *(a1 + 392);
  *(a1 + 392) = *(a2 + 392);
  *(a2 + 392) = v25;
  ++*(a2 + 384);
  ++*(a1 + 384);
  return result;
}

void *re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AcousticMeshAssetImporter::InputModel>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x190uLL))
        {
          v2 = 400 * a2;
          result = (*(*result + 32))(result, 400 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 400, a2);
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
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 400 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::moveConstruct<re::AcousticMeshAssetImporter::InputModel>(v11, v8);
          re::DynamicArray<re::ObjCObject>::deinit(v8 + 360);
          re::DynamicArray<re::ObjCObject>::deinit(v8 + 320);
          v12 = v8 + 208;
          re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v8 + 208);
          if (*(v8 + 160) == 1)
          {
            re::DynamicArray<re::GeomIndexMap>::deinit(v8 + 168);
          }

          if (*(v8 + 112) == 1)
          {
            re::DynamicArray<re::GeomIndexMap>::deinit(v8 + 120);
          }

          re::DynamicArray<unsigned long>::deinit(v8 + 72);
          re::DynamicArray<re::GeomMesh>::deinit(v8 + 32);
          re::DynamicString::deinit(v8);
          v11 += 400;
          v8 = (v8 + 400);
        }

        while (v12 + 192 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void init_block_size_descriptor(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    operator new();
  }

  operator new();
}

void assign_kmeans_texels(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3);
  if (v2 > 0x40)
  {
    bzero(v24, v2);
    v19 = 0;
    v20 = 0xFAF9E171CEA1EC6BLL;
    v21 = 0xF1B318CC06AF5D71;
    do
    {
      v22 = (v20 + v21) % v2;
      if ((v24[v22] & 1) == 0)
      {
        *(a1 + 14666800 + v19++) = v22;
        v24[v22] = 1;
      }

      v23 = v20 ^ v21;
      v20 = __ROR8__(v20, 40) ^ (v23 << 16) ^ v23;
      v21 = __ROR8__(v23, 27);
    }

    while (v19 < 0x40);
  }

  else if (*(a1 + 3))
  {
    v3 = 0;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = a1 + 14666807;
    v6 = xmmword_1E30903C0;
    v7 = xmmword_1E30903D0;
    v8 = xmmword_1E30903E0;
    v9 = xmmword_1E30903F0;
    v10 = xmmword_1E305F210;
    v11 = xmmword_1E3049660;
    v12 = xmmword_1E3049640;
    v13 = xmmword_1E3049620;
    v14 = vdupq_n_s64(0x10uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v4, v13));
      if (vuzp1_s8(vuzp1_s16(v15, *v4.i8), *v4.i8).u8[0])
      {
        *(v5 + v3 - 7) = v3;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v4), *&v4).i8[1])
      {
        *(v5 + v3 - 6) = v3 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v12))), *&v4).i8[2])
      {
        *(v5 + v3 - 5) = v3 | 2;
        *(v5 + v3 - 4) = v3 | 3;
      }

      v16 = vmovn_s64(vcgeq_u64(v4, v11));
      if (vuzp1_s8(*&v4, vuzp1_s16(v16, *&v4)).i32[1])
      {
        *(v5 + v3 - 3) = v3 | 4;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v16, *&v4)).i8[5])
      {
        *(v5 + v3 - 2) = v3 | 5;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v10)))).i8[6])
      {
        *(v5 + v3 - 1) = v3 | 6;
        *(v5 + v3) = v3 | 7;
      }

      v17 = vmovn_s64(vcgeq_u64(v4, v9));
      if (vuzp1_s8(vuzp1_s16(v17, *v4.i8), *v4.i8).u8[0])
      {
        *(v5 + v3 + 1) = v3 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v4), *&v4).i8[1])
      {
        *(v5 + v3 + 2) = v3 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v8))), *&v4).i8[2])
      {
        *(v5 + v3 + 3) = v3 | 0xA;
        *(v5 + v3 + 4) = v3 | 0xB;
      }

      v18 = vmovn_s64(vcgeq_u64(v4, v7));
      if (vuzp1_s8(*&v4, vuzp1_s16(v18, *&v4)).i32[1])
      {
        *(v5 + v3 + 5) = v3 | 0xC;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v18, *&v4)).i8[5])
      {
        *(v5 + v3 + 6) = v3 | 0xD;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v6)))).i8[6])
      {
        *(v5 + v3 + 7) = v3 | 0xE;
        *(v5 + v3 + 8) = v3 | 0xF;
      }

      v11 = vaddq_s64(v11, v14);
      v3 += 16;
      v12 = vaddq_s64(v12, v14);
      v13 = vaddq_s64(v13, v14);
      v10 = vaddq_s64(v10, v14);
      v9 = vaddq_s64(v9, v14);
      v8 = vaddq_s64(v8, v14);
      v7 = vaddq_s64(v7, v14);
      v6 = vaddq_s64(v6, v14);
    }

    while (((v2 + 15) & 0xF0) != v3);
  }
}

unint64_t compress_block(int *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, double a5, double a6, double a7, int32x4_t a8, float32x4_t a9)
{
  v11 = a1;
  v263 = *MEMORY[0x1E69E9840];
  v12 = 30720.0;
  if (!*(a2 + 3770))
  {
    v12 = 65535.0;
  }

  if (*(a2 + 3500) == v12)
  {
    v13 = *(a2 + 3532);
    v14 = (a2 + 3552);
    if (v13 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 3552);
    }

    if ((*(a2 + 3552) & (v13 == v12)) != 0)
    {
      v16 = 0.66667;
    }

    else
    {
      v16 = 1.0;
    }
  }

  else
  {
    v14 = (a2 + 3552);
    v15 = *(a2 + 3552);
    v16 = 1.0;
  }

  v17 = *(a1 + 16);
  v18 = *a1;
  v19 = a1[11];
  v233 = *(a1 + 6);
  v234 = a1[14];
  v231 = *(a1 + 9);
  v232 = a1[20];
  v20 = *(a2 + 3488);
  v21 = *(a2 + 3520);
  {
    v212 = v21;
    v213 = v20;
    v21 = v212;
    v20 = v213;
    if (v183)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v21 = v212;
      v20 = v213;
    }
  }

  v22 = vceqq_f32(v20, v21);
  v23.i64[0] = 0x100000001;
  v23.i64[1] = 0x100000001;
  v24 = vshlq_u32(vandq_s8(v22, v23), mask(vmask4)::shift);
  if (vaddvq_s32(v24) == 15)
  {
    BYTE1(v235) = 0;
    v25 = *(a2 + 3472);
    if ((v18 & 0xFFFFFFFE) == 2)
    {
      v26 = vmovl_u16(vcvt_f16_f32(v25));
      v27 = 1;
    }

    else
    {
      __asm { FMOV            V1.4S, #1.0 }

      v38 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v25, 0), _Q1), vdupq_n_s32(0x477FFF00u));
      _Q1.i64[0] = 0x3F0000003F000000;
      _Q1.i64[1] = 0x3F0000003F000000;
      v26 = vcvtq_s32_f32(vaddq_f32(v38, _Q1));
      v27 = 2;
    }

    LOBYTE(v235) = v27;
    *&v236[4] = v26;
    v39 = v17;
    v40 = a3;
    return symbolic_to_physical(v39, &v235, v40);
  }

  v28 = *(a2 + 3536);
  v29 = vextq_s8(v28, v28, 8uLL).u64[0];
  *v28.i8 = vadd_f32(v29, *v28.i8);
  v29.i8[0] = *(v17 + 3);
  a8.i32[0] = v11[22];
  v30 = *(v11 + 21) * (v29.u32[0] * vpadd_f32(*v28.i8, *v28.i8).f32[0]);
  v230 = xmmword_1E310F6C0;
  v31 = *(v11 + 23);
  v228 = v31;
  if (v15)
  {
    v32 = 0.95238;
  }

  else
  {
    v32 = 1.0;
  }

  *v236 = 1900671690;
  LOBYTE(v235) = 0;
  v227 = 0;
  v229 = 0;
  v226[0] = 1.0 / *a8.i32;
  v226[1] = 1.0;
  if ((atomic_load_explicit(qword_1EE1C49F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1EE1C49F0))
  {
    *&_MergedGlobals_582 = 1.0 / *(v11 + 22);
    __cxa_guard_release(qword_1EE1C49F0);
  }

  LODWORD(v31) = v11[26];
  v29.i32[0] = 1062836634;
  v189 = a3;
  v185 = v19;
  v33 = *&v31 < 0.85 || *(v17 + 2) != 1;
  v41 = v32 * (v16 * v30);
  v42 = v17 + 11300848;
  v43 = *&v230;
  v193 = v17;
  v194 = v17 + 11304944;
  v202 = a4;
  v214 = v11;
  do
  {
    v44 = v33;
    v45 = v41 * v226[v33];
    *v24.i32 = v45 * *&_MergedGlobals_582;
    *v24.i32 = compress_symbolic_block_for_partition_1plane(v11, v17, a2, !v33, 1u, 0, &v235, a4, *v24.i64, v31, *&v29, *a8.i64, a9, 11);
    if (*v24.i32 < v45)
    {
      goto LABEL_118;
    }

    if (v43 >= *v24.i32)
    {
      v43 = *v24.i32;
    }

    v33 = 1;
    v17 = v193;
    a4 = v202;
    v11 = v214;
  }

  while (!v44);
  v190 = *(v194 + 6 * *(v42 + 2 * WORD2(v235)) + 3);
  *&v230 = v43;
  v47 = a2;
  v48 = vadd_f32(*&vextq_s8(*(a2 + 3536), *(a2 + 3536), 8uLL), *(a2 + 3536));
  v49 = 0.25 * vpadd_f32(v48, v48).f32[0];
  v50 = 0uLL;
  _D4 = 0;
  v52 = *(v193 + 3);
  v53.i32[1] = 0;
  v54 = 0.0;
  v55.i32[1] = 0;
  _D6 = 0;
  v57.i64[0] = 0;
  a8.i64[0] = 0;
  do
  {
    v54 = v49 + v54;
    v58 = v47[432];
    _Q19.i32[0] = v47[648];
    _D20.i32[0] = v47[216];
    _D20.i32[1] = *v47++;
    *_Q21.f32 = vmul_n_f32(_D20, v49);
    __asm { FMLA            S2, S17, V21.S[1] }

    _D6 = vadd_f32(_D6, *_Q21.f32);
    *v57.f32 = vmla_f32(*v57.f32, *_Q21.f32, _D20);
    v62 = _Q19;
    v62.i32[1] = v58;
    _D20 = vmul_n_f32(*v62.i8, v49);
    __asm { FMLA            S1, S19, V20.S[1] }

    _Q19.i32[1] = v58;
    _Q21.i64[1] = _Q21.i64[0];
    v50 = vmlaq_f32(v50, _Q21, vzip1q_s32(_Q19, _Q19));
    _D4 = vadd_f32(_D4, _D20);
    *a8.i8 = vmla_f32(*a8.i8, _D20, *v62.i8);
    --v52;
  }

  while (v52);
  v65 = 1.0 / fmaxf(v54, 0.0000001);
  *v66.f32 = vneg_f32(_D6);
  *v62.i8 = vneg_f32(_D4);
  *v67.f32 = vmul_n_f32(_D6, v65);
  _S19 = v67.i32[1];
  v67.i64[1] = v67.i64[0];
  __asm { FMLS            S2, S19, V6.S[0] }

  v66.i64[1] = v66.i64[0];
  v57.i64[1] = v57.i64[0];
  v70 = vmlaq_f32(v57, v67, v66);
  v71 = vmul_n_f32(_D4, v65);
  _S7 = v71.i32[1];
  __asm { FMLS            S1, S7, V4.S[0] }

  *a8.i8 = vmls_f32(*a8.i8, v71, _D4);
  v74 = _S2 * (1.0 / sqrtf(vmuls_lane_f32(v70.f32[0], *v70.f32, 1)));
  v75 = vsqrtq_f32(vmulq_f32(v70, vzip1q_s32(a8, a8)));
  __asm { FMOV            V5.4S, #1.0 }

  v184 = _Q5;
  v81 = vdivq_f32(_Q5, v75);
  v77 = vmulq_f32(vmlaq_f32(v50, v67, vzip1q_s32(v62, v62)), v81);
  v78 = _S1 * (1.0 / sqrtf(vmuls_lane_f32(*a8.i32, *a8.i8, 1)));
  v79 = vmovn_s32(vmvnq_s8(vceqq_f32(v77, v77)));
  v80 = fabsf(v74);
  v81.f32[0] = fabsf(v77.f32[3]);
  if (v79.i8[6])
  {
    v81.f32[0] = 1.0;
  }

  if (v80 >= v81.f32[0])
  {
    v80 = v81.f32[0];
  }

  v82 = fabsf(v77.f32[1]);
  if (v79.i8[2])
  {
    v82 = 1.0;
  }

  if (v80 >= v82)
  {
    v80 = v82;
  }

  v81.f32[0] = fabsf(v77.f32[2]);
  if (v79.i8[4])
  {
    v81.f32[0] = 1.0;
  }

  if (v80 >= v81.f32[0])
  {
    v80 = v81.f32[0];
  }

  v77.f32[0] = fabsf(v77.f32[0]);
  if (v79.i8[0])
  {
    v77.f32[0] = 1.0;
  }

  if (v80 < v77.f32[0])
  {
    v77.f32[0] = v80;
  }

  *v53.i32 = fabsf(v78);
  v55.f32[0] = *v53.i32;
  if (v77.f32[0] >= *v53.i32)
  {
    v83 = *v53.i32;
  }

  else
  {
    v83 = v77.f32[0];
  }

  v84 = v190;
  if (v190 >= 0xB)
  {
    v84 = 11;
  }

  v191 = v202 + 3776;
  v200 = v202 + 26048;
  v192 = v84;
  v186 = ~(-2 << v84);
  v201 = v193 + 592;
  v85 = 3;
  v86 = "S_4ecs215EntityAssetDataEEE";
  v87 = *(v214 + 25);
  v88.i64[0] = 0x100000001;
  v88.i64[1] = 0x100000001;
  v187 = v14;
  while (1)
  {
    v89 = v85;
    if (v83 <= v87 && (v85 == 3 || (*v14 & 1) == 0))
    {
      v90 = *(a2 + 3488);
      v55 = *(a2 + 3520);
      {
        v207 = v55;
        v211 = v90;
        v55 = v207;
        v90 = v211;
        v88.i64[0] = 0x100000001;
        v88.i64[1] = 0x100000001;
        if (v168)
        {
          mask(vmask4)::shift = v86[210];
          v55 = v207;
          v90 = v211;
          v88.i64[0] = 0x100000001;
          v88.i64[1] = 0x100000001;
        }
      }

      v53 = vceqq_s32(vdupq_n_s32(v89), v86[210]);
      v91 = vandq_s8(vandq_s8(vceqq_f32(v90, v55), v88), v53);
      v55.i64[0] = mask(vmask4)::shift;
      v77 = vshlq_u32(v91, mask(vmask4)::shift);
      v77.i32[0] = vaddvq_s32(v77);
      if (!v77.i32[0])
      {
        break;
      }
    }

LABEL_113:
    v85 = v89 - 1;
    if (!v89)
    {
      goto LABEL_117;
    }
  }

  v197 = v53;
  v92 = *&_MergedGlobals_582;
  v93 = v202;
  v94 = v193;
  v203 = v89;
  compute_ideal_colors_and_weights_2planes(v193, a2, v89, v202, v202 + 1888, *v77.i64, *&mask(vmask4)::shift, *v53.i64, v88, v81);
  v95 = *(v193 + 8);
  if (v95)
  {
    v96 = 0;
    v97 = 0;
    v98 = (v193 + 68);
    v99 = (v193 + 592);
    do
    {
      v100 = *v98;
      v98 += 3;
      if ((v100 & v186) != 0)
      {
        compute_ideal_weights_for_decimation(v202, v99, (v191 + 4 * (v96 & 0xFFFFFFC0)));
        compute_ideal_weights_for_decimation((v202 + 1888), v99, (v191 + 4 * (v96 & 0xFFFFFFC0) + 128));
        v95 = *(v193 + 8);
      }

      ++v97;
      v96 += 64;
      v99 += 8118;
    }

    while (v97 < v95);
  }

  v204 = *(v202 + 96);
  v208 = *(v202 + 32);
  v195 = *(v202 + 1920);
  v188 = *(v202 + 1984);
  compute_angular_endpoints_2planes(v193, v191, v192, v202);
  v101 = *(v193 + 20);
  v102 = *(v193 + 24);
  v103 = v102 - v101;
  if (v102 > v101)
  {
    v104 = vdivq_f32(vsubq_f32(v184, v195), vsubq_f32(v188, v195));
    v105.i64[0] = 0x3F0000003F000000;
    v105.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V2.4S, #10.0 }

    v106 = vdupq_n_s32(0x7149F2CAu);
    v104.f32[0] = vminvq_f32(vbslq_s8(v197, vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v104, v105)), vcgtq_f32(_Q2, v104)), _Q2, v104), v106));
    v107 = vdivq_f32(vsubq_f32(v184, v208), vsubq_f32(v204, v208));
    v108 = vmvnq_s8(vcgtq_f32(v107, v105));
    v109 = vcgtq_f32(_Q2, v107);
    v110 = vornq_s8(v108, v109);
    v111 = vbslq_s8(v197, v106, vbslq_s8(v110, _Q2, v107));
    _Q2.i32[0] = 1065520988;
    v113 = vminvq_f32(v111) * 1.02;
    v114 = v104.f32[0] * 1.02;
    v115 = 4 * v101 + 179648;
    v116 = 4 * v101 + 209792;
    v117 = v101 << 6;
    v118 = 4 * v101 + 217984;
    v119 = 4 * v101 + 196032;
    v120 = v101 + 177600;
    v121 = (v193 + 11304948 + 6 * v101);
    do
    {
      if (v192 >= *(v121 - 1))
      {
        v93->i8[v120] = 109 - *v121;
        v111.i32[0] = *(v93->i32 + v119);
        if (v111.f32[0] > v113)
        {
          *(v93->i32 + v119) = 1065353216;
          v111.i32[0] = 1.0;
        }

        if (*(v93->i32 + v118) > v114)
        {
          *(v93->i32 + v118) = 1065353216;
        }

        v122 = (v201 + 129888 * *(v121 - 2));
        v209 = (v93->i32 + v115);
        v205 = (v191 + (*(v121 - 2) << 8));
        compute_quantized_weights_for_decimation(v122, v205, &v254, v200 + (v117 & 0xFFFFFFC0), *(v121 - 1), *(v93[512].i32 + v115), *v111.i64, *_Q2.i64, *v106.i64, *v110.i64, *v109.i64);
        LODWORD(v123) = *(v202 + v118);
        v93 = v202;
        compute_quantized_weights_for_decimation(v122, v205 + 8, v262, v200 + (v117 & 0xFFFFFFC0) + 32, *(v121 - 1), *(v202 + v116), v123, v124, v125, v126, v127);
        *v209 = compute_error_of_weight_set_2planes(v202, (v202 + 1888), v122, &v254, v262, v128, v129, v130).u32[0];
      }

      else
      {
        *(v93->i32 + v115) = 2123789977;
      }

      v115 += 4;
      v116 += 4;
      v117 += 64;
      v118 += 4;
      v119 += 4;
      ++v120;
      v121 += 6;
      --v103;
    }

    while (v103);
    v94 = v193;
    v101 = *(v193 + 20);
    v102 = *(v193 + 24);
  }

  v254.i32[0] = v93[1].i32[0];
  v131 = vbslq_s8(v197, v93[124], v93[6]);
  v255 = vbslq_s8(v197, v93[120], v93[2]);
  v259 = v131;
  v198 = compute_ideal_endpoint_formats(v94 + 14659568, a2, &v254, v93[11100].i64, v93[11228].i64, v214[17], v101, v102, v253, v252, v251, v250, v93);
  if (v198)
  {
    v133 = 0;
    v134 = v41 * v92;
    v135 = *v236;
    v136 = 1.0e30;
    v137 = v214;
    do
    {
      v138 = v252[v133];
      v210 = v194 + 6 * v138;
      v139 = v201 + 129888 * *(v210 + 2);
      v140 = *(v139 + 2);
      v141 = v133;
      v221 = v260;
      v222 = v261;
      v223 = v262[0];
      v217 = v256;
      v218 = v257;
      v219 = v258;
      v220 = v259;
      v55.i64[0] = v254.i64[0];
      v77.i64[0] = v255.i64[0];
      v215 = v254;
      v216 = v255;
      v142 = (v200 + (v138 << 6) + 32);
      v143 = &v247 + 4;
      do
      {
        *(v143 - 32) = *(v142 - 32);
        v144 = *v142++;
        *v143++ = v144;
        --v140;
      }

      while (v140);
      if (v137[16])
      {
        v196 = v133;
        v206 = &v253[4 * v133];
        v145 = 1;
        v146 = -1;
        while (1)
        {
          recompute_ideal_colors_2planes(a2, v94, v139, &v245 + 4, &v247 + 4, &v215, &v225, &v224, *v77.i64, *v55.i64, *v53.i8, *v132.i8, v203);
          BYTE8(v242) = pack_color_endpoints(*v206, &v243.i8[4], v251[v141], v216, v220, v225, v224, v147, v148, v149);
          WORD3(v242) = 0;
          HIDWORD(v242) = v251[v141];
          BYTE2(v242) = 0;
          WORD2(v242) = *v210;
          BYTE3(v242) = v203;
          LOWORD(v242) = 259;
          if (v145 != 1)
          {
            goto LABEL_89;
          }

          v154 = compute_symbolic_block_difference_2plane(v137, v94, &v242, a2, *v77.i64, *v55.i64, *v53.i64, *v132.i64, v150, v151, v152, v153);
          if (v154 == -1.0e30)
          {
            LOBYTE(v242) = 0;
            v154 = 1.0e30;
          }

          if (v154 < v136)
          {
            v136 = v154;
          }

          v55.i32[0] = 1066024305;
          v53.i32[0] = 1027101164;
          v77.f32[0] = v135 * ((v137[16] * 0.045) + 1.08);
          if (v154 > v77.f32[0])
          {
            goto LABEL_106;
          }

          if (v154 < v135)
          {
            v243.f32[0] = v154;
            v53 = v248;
            v238 = v246;
            v239 = v247;
            v240 = v248;
            v241 = v249;
            *&v236[16] = v244;
            v237 = v245;
            v77.i64[0] = v242;
            v55 = v243;
            v235 = v242;
            *v236 = v243;
            if (v154 < v134)
            {
              v133 = v198;
              v135 = v154;
              goto LABEL_108;
            }
          }

          else
          {
LABEL_89:
            v154 = v135;
          }

          v155 = *v137;
          if (*(v139 + 2) == *(v94 + 3))
          {
            v156 = realign_weights_undecimated(v155, v94, a2, &v242, *v77.i64, v55, v53, v132);
          }

          else
          {
            v156 = realign_weights_decimated(v155, v94, a2, &v242, *v77.i64, v55, v53, v132);
          }

          v165 = v156;
          v77.f32[0] = compute_symbolic_block_difference_2plane(v214, v94, &v242, a2, v157, v158, v159, v160, v161, v162, v163, v164);
          if (v77.f32[0] == -1.0e30)
          {
            LOBYTE(v242) = 0;
            v77.i32[0] = 1900671690;
          }

          if (v77.f32[0] < v136)
          {
            v136 = v77.f32[0];
          }

          v166 = v214[16];
          v53.i32[0] = 1027101164;
          v55.f32[0] = v154 * (((v146 + v166) * 0.045) + 1.0);
          if (v77.f32[0] > v55.f32[0])
          {
            v135 = v154;
            v137 = v214;
LABEL_106:
            v133 = v196;
            goto LABEL_108;
          }

          v135 = v154;
          if (v77.f32[0] < v154)
          {
            v243.i32[0] = v77.i32[0];
            v238 = v246;
            v239 = v247;
            v240 = v248;
            *&v236[16] = v244;
            v237 = v245;
            v55.i64[0] = v242;
            v53.i64[0] = v243.i64[0];
            v235 = v242;
            *v236 = v243;
            v135 = v77.f32[0];
            v241 = v249;
            if (v77.f32[0] < v134)
            {
              break;
            }
          }

          if (v145 < v166)
          {
            v167 = v165;
          }

          else
          {
            v167 = 0;
          }

          ++v145;
          --v146;
          v137 = v214;
          if ((v167 & 1) == 0)
          {
            goto LABEL_106;
          }
        }

        v133 = v198;
        v135 = v77.f32[0];
        v137 = v214;
      }

LABEL_108:
      ++v133;
    }

    while (v133 < v198);
  }

  else
  {
    v136 = 1.0e30;
  }

  v55.i32[0] = 1072483533;
  v77.f32[0] = *&v230 * 1.85;
  v14 = v187;
  v86 = ("N2re25IntrospectionDynamicArrayINS_4ecs215EntityAssetDataEEE" + 33);
  v88.i64[0] = 0x100000001;
  v88.i64[1] = 0x100000001;
  if (v136 <= (*&v230 * 1.85))
  {
    v89 = v203;
    if (v136 < v41)
    {
      goto LABEL_118;
    }

    goto LABEL_113;
  }

LABEL_117:
  if (v185 >= 2)
  {
    v172 = 2;
    while (1)
    {
      v173 = 4 * v172 - 8;
      v174 = *(&v233 + v173);
      v175 = *(&v231 + v173) >= v174 ? *(&v233 + v173) : *(&v231 + v173);
      best_partition_candidates = find_best_partition_candidates(v193, a2, v172, v174, &v254, v175, *v77.i64, *v55.i64, *v53.i64, *v88.i64);
      v178 = *(&v230 + v173);
      v179 = v172 - 1;
      if (best_partition_candidates)
      {
        break;
      }

      v53.i32[0] = *(&v227 + v179);
      v55.i32[0] = *(&v230 + v179);
LABEL_135:
      v77.f32[0] = v178 * *v53.i32;
      ++v172;
      if (v55.f32[0] > (v178 * *v53.i32) || v172 == v185 + 1)
      {
        goto LABEL_118;
      }
    }

    v180 = 0;
    v181 = 4 * best_partition_candidates;
    while (1)
    {
      v77.f32[0] = v41 * *&_MergedGlobals_582;
      v77.f32[0] = compress_symbolic_block_for_partition_1plane(v214, v193, a2, 0, v172, v254.u32[v180 / 4], &v235, v202, *v77.i64, *v55.i64, *v53.i64, *v88.i64, v177, v190);
      v55.i32[0] = *(&v230 + v179);
      if (v55.f32[0] >= v77.f32[0])
      {
        v55.f32[0] = v77.f32[0];
      }

      *(&v230 + v179) = v55.i32[0];
      v53.i32[0] = *(&v227 + v179);
      *v88.i32 = v178 * (*v53.i32 * 1.85);
      if (v55.f32[0] > *v88.i32 || v77.f32[0] < v41)
      {
        break;
      }

      v180 += 4;
      if (v181 == v180)
      {
        goto LABEL_135;
      }
    }
  }

LABEL_118:
  if (!v235)
  {
    LOBYTE(v235) = 2;
    __asm { FMOV            V1.4S, #1.0 }

    v170 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(*(a2 + 3472), 0), _Q1), vdupq_n_s32(0x477FFF00u));
    _Q1.i64[0] = 0x3F0000003F000000;
    _Q1.i64[1] = 0x3F0000003F000000;
    *&v236[4] = vcvtq_s32_f32(vaddq_f32(v170, _Q1));
  }

  v39 = v193;
  v40 = v189;
  return symbolic_to_physical(v39, &v235, v40);
}

float compress_symbolic_block_for_partition_1plane(int *a1, uint64_t a2, float32x4_t *a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7, int32x2_t *a8, double a9, double a10, double a11, double a12, float32x4_t a13, int a14)
{
  v16 = *&a9;
  v149 = *MEMORY[0x1E69E9840];
  if (a14 >= 11)
  {
    v18 = 11;
  }

  else
  {
    v18 = a14;
  }

  _ZF = (a1[1] & 0x40) == 0 && a5 == 1;
  v20 = compute_symbolic_block_difference_1plane;
  if (_ZF)
  {
    v20 = compute_symbolic_block_difference_1plane_1partition;
  }

  v124 = v20;
  v118 = a6;
  if (a5 < 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(a2 + ((a5 - 2) << 11) + 2 * a6 + 14660656);
  }

  v22 = (a5 << 10) - 2048;
  v130 = a5 - 1;
  if (a5 == 1)
  {
    v22 = 3072;
  }

  v119 = a2 + 1088 * v22 + 1088 * v21;
  compute_ideal_colors_and_weights_1plane(a3, (v119 + 11317232), a8, a9, a10, a11, a12, a13);
  v23 = 0;
  v24 = a8 + 472;
  v25 = 8;
  if (a4)
  {
    v25 = 4;
  }

  v123 = a2;
  v26 = (a2 + 592);
  v27 = *(a2 + v25) << 6;
  v28 = 66;
  v116 = a2 + 592;
  do
  {
    if ((*(a2 + v28) & ~(-2 << v18)) != 0)
    {
      compute_ideal_weights_for_decimation(a8, v26, (v24 + 4 * (v23 & 0xFFFFFFC0)));
    }

    v23 += 64;
    v26 += 8118;
    v28 += 6;
  }

  while (v27 != v23);
  v29 = &a8[12];
  __asm
  {
    FMOV            V0.4S, #10.0
    FMOV            V1.4S, #1.0
  }

  v35.i64[0] = 0x3F0000003F000000;
  v35.i64[1] = 0x3F0000003F000000;
  v36 = a5;
  do
  {
    v37 = v29[-4];
    v38 = *v29++;
    v39 = vdivq_f32(vsubq_f32(_Q1, v37), vsubq_f32(v38, v37));
    _Q0 = vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v39, v35)), vcgtq_f32(_Q0, v39)), _Q0, v39);
    --v36;
  }

  while (v36);
  v115 = a8 + 3256;
  v40 = vminvq_f32(_Q0);
  compute_angular_endpoints_1plane(a4, a2, &a8[472], v18, a8);
  v46 = 0;
  v114 = a8;
  v47 = a8 + 22456;
  v48 = 20;
  if (a4)
  {
    v48 = 16;
  }

  v49 = v40 * 1.02;
  v126 = *(a2 + v48);
  v128 = &a8[22456];
  v50 = (a2 + 11304948);
  v51 = 177600;
  v52 = v47;
  do
  {
    if (v18 < *(v50 - 1) || (v53 = compress_symbolic_block_for_partition_1plane(astcenc_config const&,block_size_descriptor const&,image_block const&,BOOL,float,unsigned int,unsigned int,symbolic_compressed_block &,compression_working_buffers &,int)::free_bits_for_partition_count[v130], v54 = *v50, _VF = __OFSUB__(v53, v54), v55 = v53 - v54, (v55 < 0) ^ _VF | (v55 == 0)))
    {
      v52->i32[0] = 2123789977;
    }

    else
    {
      v56 = v52 + 2048;
      if (*v52[2048].i32 > v49)
      {
        v56->i32[0] = 1065353216;
      }

      v57 = *(v50 - 2);
      v114->i8[v51] = v55;
      v58 = (v116 + 129888 * v57);
      LODWORD(v41) = v56->i32[0];
      compute_quantized_weights_for_decimation(v58, &v24[32 * v57], v147, v115 + (v46 & 0xFFFFFFC0), *(v50 - 1), *v52[1024].i32, v41, v42, v43, v44, v45);
      v52->i32[0] = compute_error_of_weight_set_1plane(v114, v58, v147, v59, v60, v61, v62).u32[0];
    }

    v46 += 64;
    v52 = (v52 + 4);
    ++v51;
    v50 += 6;
  }

  while (v126 << 6 != v46);
  v64 = a1;
  v63 = a3;
  v65 = v114;
  v113 = compute_ideal_endpoint_formats(v119 + 11317232, a3, &v114[1], &v114[11100], v128, a1[17], 0, v126, v146, v145, v144, v143, v114);
  if (!v113)
  {
    return 1.0e30;
  }

  v66 = 0;
  v67 = *(a7 + 16);
  v68 = 1.0e30;
  do
  {
    v69 = v145[v66];
    v122 = v123 + 11304944 + 6 * v69;
    v127 = v116 + 129888 * *(v122 + 2);
    v70 = *(v127 + 2);
    v71 = v65[8];
    v148[1] = v65[7];
    v148[2] = v71;
    v148[3] = v65[9];
    v72 = v65[4];
    v147[2] = v65[3];
    v147[3] = v72;
    v73 = v65[6];
    v147[4] = v65[5];
    v148[0] = v73;
    v74 = v65[2];
    v147[0] = v65[1];
    v147[1] = v74;
    memcpy(&v136[2] + 4, v115 + (v69 << 6), v70);
    if (!v64[16])
    {
      goto LABEL_76;
    }

    v129 = 0;
    v112 = v66;
    v79 = v66;
    v80 = &v144[v66];
    v131 = &v143[v79];
    v81 = &v146[4 * v79];
    while (1)
    {
      recompute_ideal_colors_1plane(v63, (v119 + 11317232), v127, &v136[2] + 4, v147, v142, v141, v75, v76, *&v77, v78);
      v85 = 0;
      v86 = *v80 != *v131;
      v87 = v148;
      v88 = 20;
      do
      {
        v89 = v87[-4];
        v90 = *v87++;
        v91 = pack_color_endpoints(*(v81 + v85), &v136[-1] + v88, *v80, v89, v90, v142[v85], v141[v85], v82, v83, v84);
        *(&v136[-1] + v85 + 8) = v91;
        v86 &= v91 == BYTE8(v135);
        ++v85;
        v88 += 8;
      }

      while (a5 != v85);
      BYTE2(v135) = 0;
      v96 = v80;
      if (((a5 > 1) & v86) != 0)
      {
        v97 = 0;
        v132 = 0;
        v98 = &v133;
        v99 = v148;
        while (1)
        {
          v100 = pack_color_endpoints(*(v81 + v97), v98, *v131, v99[-4], *v99, v142[v97], v141[v97], v82, v83, v84);
          *(&v132 + v97) = v100;
          if (v100 != v132)
          {
            break;
          }

          ++v97;
          v98 = (v98 + 8);
          ++v99;
          if (a5 == v97)
          {
            BYTE2(v135) = 1;
            DWORD2(v135) = v132;
            v92 = *&v133;
            v93 = v134;
            *(v136 + 4) = v133;
            *(&v136[1] + 4) = v134;
            v96 = v131;
            goto LABEL_45;
          }
        }

        v96 = v131;
        if (!BYTE2(v135))
        {
          v96 = v80;
        }
      }

LABEL_45:
      BYTE1(v135) = a5;
      WORD3(v135) = v118;
      BYTE3(v135) = -1;
      HIDWORD(v135) = *v96;
      v63 = a3;
      WORD2(v135) = *v122;
      LOBYTE(v135) = 3;
      v64 = a1;
      if (v129)
      {
        goto LABEL_55;
      }

      *&v92 = v124(a1, v123, &v135, a3);
      if (*&v92 == -1.0e30)
      {
        LOBYTE(v135) = 0;
        v101 = 1.0e30;
      }

      else
      {
        v101 = *&v92;
      }

      if (v101 < v68)
      {
        v68 = v101;
      }

      v93.i32[0] = 1066024305;
      *&v92 = v67 * ((a1[16] * 0.045) + 1.08);
      if (v101 > *&v92)
      {
        goto LABEL_73;
      }

      if (v101 >= v67)
      {
LABEL_55:
        v101 = v67;
      }

      else
      {
        *v136 = v101;
        v102 = v138;
        *(a7 + 64) = v137;
        *(a7 + 80) = v102;
        *(a7 + 96) = v139;
        *(a7 + 112) = v140;
        v103 = v136[2];
        *(a7 + 32) = v136[1];
        *(a7 + 48) = v103;
        v92 = *&v135;
        v93 = v136[0];
        *a7 = v135;
        *(a7 + 16) = v93;
        if (v101 < v16)
        {
          v66 = v113;
          v67 = v101;
          goto LABEL_75;
        }
      }

      v104 = *a1;
      if (*(v127 + 2) == *(v123 + 3))
      {
        v105 = realign_weights_undecimated(v104, v123, a3, &v135, v92, v93, v94, v95);
      }

      else
      {
        v105 = realign_weights_decimated(v104, v123, a3, &v135, v92, v93, v94, v95);
      }

      v106 = v105;
      *&v75 = v124(a1, v123, &v135, a3);
      if (*&v75 == -1.0e30)
      {
        LOBYTE(v135) = 0;
        LODWORD(v75) = 1900671690;
      }

      if (*&v75 < v68)
      {
        v68 = *&v75;
      }

      v107 = a1[16];
      *&v76 = v101 * (((v107 + ~v129) * 0.045) + 1.0);
      if (*&v75 > *&v76)
      {
        v67 = v101;
LABEL_73:
        v65 = v114;
        v66 = v112;
        goto LABEL_76;
      }

      v67 = v101;
      if (*&v75 < v101)
      {
        break;
      }

LABEL_67:
      if (++v129 < v107)
      {
        v110 = v106;
      }

      else
      {
        v110 = 0;
      }

      if ((v110 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    LODWORD(v136[0]) = LODWORD(v75);
    v108 = v138;
    *(a7 + 64) = v137;
    *(a7 + 80) = v108;
    *(a7 + 96) = v139;
    *(a7 + 112) = v140;
    v109 = v136[2];
    *(a7 + 32) = v136[1];
    *(a7 + 48) = v109;
    v76 = *&v135;
    v77 = v136[0];
    *a7 = v135;
    *(a7 + 16) = v77;
    if (*&v75 >= v16)
    {
      v107 = a1[16];
      v67 = *&v75;
      goto LABEL_67;
    }

    v66 = v113;
    v67 = *&v75;
LABEL_75:
    v65 = v114;
LABEL_76:
    ++v66;
  }

  while (v66 < v113);
  return v68;
}

uint64_t realign_weights_decimated(int a1, uint64_t a2, float32x4_t *a3, uint64_t a4, double a5, int32x4_t a6, int32x4_t a7, int32x4_t a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v10 = *(a4 + 1);
  if (v10 < 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + ((v10 - 2) << 11) + 2 * *(a4 + 6) + 14660656);
  }

  v12 = 0;
  v82 = (v10 << 10) - 2048;
  v93 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11300848) + 11304947);
  v86 = *(a4 + 1);
  v13 = a2 + 129888 * *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11300848) + 11304946);
  v14 = v13 + 592;
  v15 = *(v13 + 594);
  v78 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11300848) + 11304949);
  v16 = vdupq_n_s32(*(a4 + 3));
  v80 = v16;
  v17 = (a4 + 8);
  v94 = 0;
  v18 = (a4 + 20);
  v84 = 16 * v10;
  do
  {
    v19 = *v17++;
    unpack_color_endpoints(a1, v19, v18, &v94 + 1, &v94, &v95[v12 / 4 + 112], &v95[v12 / 4 + 96], v16, a6, a7, a8);
    v20 = v84;
    v12 += 16;
    v18 += 8;
  }

  while (v84 != v12);
  v85 = 0;
  v21 = 0;
  v22 = 3072;
  if (v86 != 1)
  {
    v22 = v82;
  }

  v23 = v78 & 1;
  v24 = a2 + 1088 * v22 + 11317232;
  v25 = vceqq_s32(v80, xmmword_1E3062D20);
  v26 = a4 + 52;
  v89 = v14 + 5408;
  v81 = (v14 + 5472);
  v79 = (v14 + 74592);
  v27 = v14 + 222;
  v28 = v14 + 1952;
  v29 = v14 + 438;
  v30 = v14 + 2816;
  v31 = v14 + 654;
  v32 = v14 + 3680;
  v33 = v14 + 870;
  v34 = v14 + 4544;
  v77 = v23 + 1;
  v35 = vdupq_n_s32(0x3C800000u);
  v87 = &quant_and_xfer_tables + 226 * v93;
  v90 = v15;
  do
  {
    v36 = 0;
    v25 = vmvnq_s8(v25);
    do
    {
      v37 = *&v95[v36 / 4 + 112];
      v38 = vandq_s8(vsubq_s32(*&v95[v36 / 4 + 96], v37), v25);
      *&v95[v36 / 4 + 80] = vcvtq_f32_s32(v37);
      *&v95[v36 / 4 + 64] = vmulq_f32(vcvtq_f32_s32(v38), v35);
      v36 += 16;
    }

    while (v20 != v36);
    v83 = v21;
    v39 = 0;
    v40 = v95;
    do
    {
      v41 = (v26 + v39);
      v42 = vld1_dup_f32(v41);
      *v40++ = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v42)));
      v39 += 4;
    }

    while (v39 < v15);
    v43 = 0;
    v45 = v79;
    v44 = v81;
    v92 = v26;
    do
    {
      v46 = *(v26 + v43);
      v47 = *&v87[2 * *(v26 + v43) + 96];
      v48 = *&v95[v43];
      v49 = *&v87[2 * *(v26 + v43) + 96];
      v50 = (v47 >> 8);
      v51 = v49 - v48;
      v52 = *(v89 + v43);
      v53 = v50 - v48;
      v54 = 0uLL;
      v55 = v44;
      v56 = v45;
      v57 = 0uLL;
      v58 = 0uLL;
      do
      {
        v59 = *v55;
        v55 += 64;
        v60 = ((*&v95[*(v29 + v59)] * *(v30 + 4 * v59)) + (*&v95[*(v27 + v59)] * *(v28 + 4 * v59))) + ((*&v95[*(v33 + v59)] * *(v34 + 4 * v59)) + (*&v95[*(v31 + v59)] * *(v32 + 4 * v59)));
        v61 = *(v24 + 1088 * v11 + v59 + 8);
        v62 = *&v95[4 * v61 + 64];
        v63 = (v60 + (v51 * *v56)) - v60;
        v64.i32[0] = a3->i32[v59];
        v64.i32[1] = a3[54].i32[v59];
        v65 = (v60 + (v53 * *v56)) - v60;
        v64.i32[2] = a3[108].i32[v59];
        v64.i32[3] = a3[162].i32[v59];
        v66 = vsubq_f32(vaddq_f32(*&v95[4 * v61 + 80], vmulq_n_f32(v62, v60)), v64);
        v67 = vaddq_f32(vmulq_n_f32(v62, v63), v66);
        v68 = vaddq_f32(vmulq_n_f32(v62, v65), v66);
        v54 = vaddq_f32(v54, vmulq_f32(v66, v66));
        v57 = vaddq_f32(v57, vmulq_f32(v67, v67));
        v58 = vaddq_f32(v58, vmulq_f32(v68, v68));
        v56 += 64;
        --v52;
      }

      while (v52);
      v69 = a3[221];
      v70 = vmulq_f32(v54, v69);
      *v70.i8 = vadd_f32(*&vextq_s8(v70, v70, 8uLL), *v70.i8);
      v71 = vpadd_f32(*v70.i8, *v70.i8);
      v72 = vmulq_f32(v57, v69);
      *v72.i8 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.i8);
      v73 = vpadd_f32(*v72.i8, *v72.i8);
      v74 = vmulq_f32(v58, v69);
      *v74.i8 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.i8);
      v75 = vpadd_f32(*v74.i8, *v74.i8);
      if (vcgt_f32(v71, v75).u8[0] & 1) != 0 && v46 <= 0x3F && (vcgt_f32(v73, v75).u8[0])
      {
        *&v95[v43] = v50;
        v15 = v90;
        v26 = v92;
        v47 >>= 8;
LABEL_23:
        *(v26 + v43) = v47;
        v85 = 1;
        goto LABEL_24;
      }

      v15 = v90;
      v26 = v92;
      if (v46 && (vcgt_f32(v71, v73).u8[0] & 1) != 0)
      {
        *&v95[v43] = v49;
        goto LABEL_23;
      }

LABEL_24:
      ++v43;
      ++v45;
      ++v44;
    }

    while (v43 != v15);
    v26 += 32;
    v21 = v83 + 1;
    v20 = v84;
  }

  while (v83 + 1 != v77);
  return v85 & 1;
}

uint64_t realign_weights_undecimated(int a1, uint64_t a2, float32x4_t *a3, uint64_t a4, double a5, int32x4_t a6, int32x4_t a7, int32x4_t a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v12 = *(a4 + 1);
  if (v12 < 2)
  {
    v55 = 0;
  }

  else
  {
    v55 = *(a2 + ((v12 - 2) << 11) + 2 * *(a4 + 6) + 14660656);
  }

  v13 = 0;
  v53 = (v12 << 10) - 2048;
  v54 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11300848) + 11304947);
  v51 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11300848) + 11304949);
  v14 = vdupq_n_s32(*(a4 + 3));
  v52 = v14;
  v15 = (a4 + 8);
  v57[0] = 0;
  v16 = (a4 + 20);
  v56 = v12;
  v17 = 16 * v12;
  do
  {
    v18 = *v15++;
    unpack_color_endpoints(a1, v18, v16, v57 + 1, v57, &v57[v13 / 2 + 97], &v57[v13 / 2 + 65], v14, a6, a7, a8);
    v13 += 16;
    v16 += 8;
  }

  while (v17 != v13);
  v19 = 0;
  v20 = 0;
  if (v56 == 1)
  {
    v21 = 3072;
  }

  else
  {
    v21 = v53;
  }

  v22 = vceqq_s32(v52, xmmword_1E3062D20);
  v23 = a4 + 52;
  v24 = 1088 * v55 + 1088 * v21 + a2 + 11317240;
  v25 = &quant_and_xfer_tables + 226 * v54;
  v26 = vdupq_n_s32(0x3C800000u);
  do
  {
    v27 = 0;
    v22 = vmvnq_s8(v22);
    do
    {
      v28 = *&v57[v27 / 2 + 97];
      v29 = vandq_s8(vsubq_s32(*&v57[v27 / 2 + 65], v28), v22);
      *&v57[v27 / 2 + 33] = vcvtq_f32_s32(v28);
      *&v57[v27 / 2 + 1] = vmulq_f32(vcvtq_f32_s32(v29), v26);
      v27 += 16;
    }

    while (v17 != v27);
    v30 = 0;
    v31 = *(a2 + 3);
    do
    {
      v32 = *(v23 + v30);
      v33 = HIBYTE(*&v25[2 * v32 + 96]);
      v34 = *(v24 + v30);
      v35 = *&v57[8 * v34 + 1];
      v36 = *&v57[8 * v34 + 33];
      v37 = &a3->i32[v30];
      v38.i32[0] = *v37;
      v38.i32[1] = v37[216];
      v38.i32[2] = v37[432];
      v38.i32[3] = v37[648];
      v39 = vaddq_f32(v36, vmulq_n_f32(v35, v32));
      v40 = a3[221];
      v41 = vsubq_f32(v39, v38);
      v42 = vaddq_f32(vmulq_n_f32(v35, (*&v25[2 * v32 + 96] - v32)), v41);
      v43 = vaddq_f32(vmulq_n_f32(v35, (v33 - v32)), v41);
      v44 = vmulq_f32(v40, vmulq_f32(v41, v41));
      *v44.i8 = vadd_f32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
      v45 = vpadd_f32(*v44.i8, *v44.i8);
      v46 = vmulq_f32(v40, vmulq_f32(v42, v42));
      *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
      v47 = vpadd_f32(*v46.i8, *v46.i8);
      v48 = vmulq_f32(v40, vmulq_f32(v43, v43));
      *v48.i8 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.i8);
      v49 = vpadd_f32(*v48.i8, *v48.i8);
      if (vcgt_f32(v45, v49).u8[0] & 1) != 0 && v32 <= 0x3F && (vcgt_f32(v47, v49).u8[0])
      {
        goto LABEL_19;
      }

      if (*(v23 + v30) && (vcgt_f32(v45, v47).u8[0] & 1) != 0)
      {
        LOBYTE(v33) = *&v25[2 * v32 + 96];
LABEL_19:
        *(v23 + v30) = v33;
        v31 = *(a2 + 3);
        v19 = 1;
      }

      ++v30;
    }

    while (v30 < v31);
    v23 += 32;
    ++v20;
  }

  while (v20 != (v51 & 1) + 1);
  return v19 & 1;
}

unint64_t compute_ideal_colors_and_weights_1plane(uint64_t a1, _BYTE *a2, _BYTE *a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 3488);
  v12 = *(a1 + 3520);
  {
    v61 = v12;
    v62 = v11;
    v12 = v61;
    v11 = v62;
    if (v60)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v12 = v61;
      v11 = v62;
    }
  }

  v13 = vmovn_s32(vceqq_f32(v11, v12));
  v14 = 0;
  v14.i16[3] = v13.i16[3];
  v15 = vmovl_u16(v14);
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vandq_s8(v15, v16);
  v18 = *&mask(vmask4)::shift;
  v19 = vshlq_u32(v17, mask(vmask4)::shift);
  v19.i32[0] = vaddvq_s32(v19);
  if (v19.i32[0])
  {

    return compute_ideal_colors_and_weights_3_comp(a1, a2, a3, 3, *v19.i64, v18, a6, a7, a8);
  }

  else
  {
    v21 = vadd_f32(*&vextq_s8(*(a1 + 3536), *(a1 + 3536), 8uLL), *(a1 + 3536));
    v22 = 0.25 * vpadd_f32(v21, v21).f32[0];
    v23 = a2 + 224;
    v24 = *a2;
    v25 = *(a1 + 3456);
    v30 = compute_avgs_and_dirs_4_comp(a2, a1, v63);
    v27 = 0;
    v28 = a2 + 4;
    v29 = a3 + 160;
    v30.i64[0] = 0;
    v31 = 0.0;
    v32 = 1;
    do
    {
      v33 = &v63[2 * v27];
      v34 = v33[1];
      v26.f32[0] = COERCE_FLOAT(v33[1].i64[1]) + vaddv_f32(*v34.f32);
      v35 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v30, v26), 0), vsubq_f32(0, v34), v34);
      v36 = vmulq_f32(v35, v35);
      *v36.i8 = vadd_f32(*&vextq_s8(v36, v36, 8uLL), *v36.i8);
      v37 = vpadd_f32(*v36.i8, *v36.i8);
      if (*v37.i32 == 0.0)
      {
        v38.i64[0] = 0x3F0000003F000000;
        v38.i64[1] = 0x3F0000003F000000;
      }

      else
      {
        v38 = vdivq_f32(v35, vsqrtq_f32(vdupq_lane_s32(v37, 0)));
      }

      v26 = *v33;
      result = v28[v27];
      v39 = -1.0e10;
      v40 = 1.0e10;
      if (v28[v27])
      {
        v41 = v23;
        v42 = v28[v27];
        v40 = 1.0e10;
        v39 = -1.0e10;
        do
        {
          v43 = *v41++;
          v44.i32[0] = *(a1 + 4 * v43);
          v44.i32[1] = *(a1 + 864 + 4 * v43);
          v44.i32[2] = *(a1 + 1728 + 4 * v43);
          v44.i32[3] = *(a1 + 2592 + 4 * v43);
          v45 = vmulq_f32(v38, vsubq_f32(v44, v26));
          *v45.i8 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.i8);
          v46 = vpadd_f32(*v45.i8, *v45.i8).f32[0];
          *&v29[4 * v43] = v46;
          if (v46 < v40)
          {
            v40 = v46;
          }

          if (v46 > v39)
          {
            v39 = v46;
          }

          --v42;
        }

        while (v42);
      }

      if (v39 <= v40)
      {
        v47 = 0.0000001;
      }

      else
      {
        v47 = v39;
      }

      if (v39 <= v40)
      {
        v40 = 0.0;
      }

      v48 = v47 - v40;
      if (v27)
      {
        v32 &= (v48 * v48) == v31;
      }

      else
      {
        v31 = v48 * v48;
      }

      *&a3[16 * v27 + 32] = vaddq_f32(v26, vmulq_n_f32(v38, v40));
      *&a3[16 * v27 + 96] = vaddq_f32(v26, vmulq_n_f32(v38, v47));
      if (result)
      {
        v49 = 0;
        v50 = v22 * (v48 * v48);
        v51 = 1.0 / v48;
        do
        {
          v52 = v49[v23];
          v53 = v51 * (*&v29[4 * v52] - v40);
          v54 = fmaxf(v53, 0.0);
          if (v53 <= 1.0)
          {
            v55 = v54;
          }

          else
          {
            v55 = 1.0;
          }

          *&v29[4 * v52] = v55;
          *&a3[4 * v52 + 1024] = v50;
          ++v49;
        }

        while (result != v49);
      }

      ++v27;
      v23 += 216;
    }

    while (v27 != v24);
    v56 = (v25 + 3) & 0x1FC;
    if (v56 > v25)
    {
      v57 = v25 - v56;
      v58 = &a3[4 * v25];
      do
      {
        *(v58 + 40) = 0;
        *(v58 + 256) = 0;
        v58 += 4;
      }

      while (!__CFADD__(v57++, 1));
    }

    *a3 = v32 & 1;
  }

  return result;
}

void *compute_ideal_colors_and_weights_3_comp(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v70 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  *(a3 + 16) = v13;
  v14 = *(a1 + 3456);
  v15 = *(a1 + 3536);
  if (a4 == 2)
  {
    v21.i64[0] = 0;
    v21.i64[1] = HIDWORD(v15);
    v18 = vadd_f32(*&v15, *&vextq_s8(v21, v21, 8uLL));
    v18.i32[0] = vpadd_f32(v18, v18).u32[0];
    v20 = 864;
    goto LABEL_7;
  }

  v16 = *(a1 + 3536);
  if (a4 == 1)
  {
    v16.i32[1] = *(a1 + 3544);
    v16.i64[1] = HIDWORD(v15);
    v18 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.i8);
    v18.i32[0] = vpadd_f32(v18, v18).u32[0];
    v20 = 1728;
LABEL_7:
    v19 = a1;
    goto LABEL_8;
  }

  v16.i32[3] = 0;
  v16.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
  v17 = vadd_f32(*&v15, *v16.i8);
  v18 = vpadd_f32(v17, v17);
  if (!a4)
  {
    v19 = a1 + 864;
    v20 = 1728;
LABEL_8:
    v22 = a1 + v20;
    v23 = v18.f32[0] * 0.33333;
    v24 = 2592;
    goto LABEL_9;
  }

  v22 = a1 + 864;
  v16.i32[0] = 1051372203;
  v23 = 0.33333 * v18.f32[0];
  if (a4 == 3)
  {
    v25 = compute_avgs_and_dirs_3_comp_rgb(a2, a1, v69, *&v18, *v16.i64, a7, a8, a9);
    v24 = 1728;
    v19 = a1;
    goto LABEL_10;
  }

  v24 = 1728;
  v19 = a1;
LABEL_9:
  v25 = compute_avgs_and_dirs_3_comp(a2, a1, a4, v69);
LABEL_10:
  v28 = 0;
  v29 = a2 + 4;
  v30 = a2 + 224;
  v31 = a3 + 160;
  v25.i64[0] = 0;
  v32 = a3 + 32;
  result = &unk_1E310F000;
  v34 = 1;
  v35 = 0.0;
  do
  {
    v36 = &v69[2 * v28];
    v37 = v36[1];
    v26.f32[0] = COERCE_FLOAT(v36[1].i64[1]) + vaddv_f32(*v37.f32);
    v38 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v26), 0), vsubq_f32(0, v37), v37);
    v39 = vmulq_f32(v38, v38);
    *v39.i8 = vadd_f32(*&vextq_s8(v39, v39, 8uLL), *v39.i8);
    v40 = vpadd_f32(*v39.i8, *v39.i8);
    v41 = xmmword_1E310F6E0;
    if (*v40.i32 != 0.0)
    {
      v41 = vdivq_f32(v38, vsqrtq_f32(vdupq_lane_s32(v40, 0)));
    }

    v42 = *v36;
    v43 = v29[v28];
    v44 = -1.0e10;
    v45 = 1.0e10;
    if (v29[v28])
    {
      v44 = -1.0e10;
      v45 = 1.0e10;
      v46 = v30;
      v47 = v29[v28];
      do
      {
        v48 = *v46++;
        v27.i32[0] = *(v19 + 4 * v48);
        v27.i32[1] = *(v22 + 4 * v48);
        v27.i32[2] = *(a1 + v24 + 4 * v48);
        v27 = vmulq_f32(v41, vsubq_f32(v27, v42));
        v49 = vaddv_f32(*v27.f32);
        *(v31 + 4 * v48) = v27.f32[2] + v49;
        if ((v27.f32[2] + v49) < v45)
        {
          v45 = v27.f32[2] + v49;
        }

        if ((v27.f32[2] + v49) > v44)
        {
          v44 = v27.f32[2] + v49;
        }

        --v47;
      }

      while (v47);
    }

    if (v44 <= v45)
    {
      v44 = 0.0000001;
      v45 = 0.0;
    }

    v50 = v44 - v45;
    if (v28)
    {
      v34 &= (v50 * v50) == v35;
    }

    else
    {
      v35 = v50 * v50;
    }

    if (v43)
    {
      v51 = 0;
      v52 = v23 * (v50 * v50);
      v53 = 1.0 / v50;
      do
      {
        v54 = v30[v51];
        v55 = v53 * (*(v31 + 4 * v54) - v45);
        v56 = fmaxf(v55, 0.0);
        if (v55 <= 1.0)
        {
          v57 = v56;
        }

        else
        {
          v57 = 1.0;
        }

        *(v31 + 4 * v54) = v57;
        *(a3 + 1024 + 4 * v54) = v52;
        ++v51;
      }

      while (v43 != v51);
    }

    v58 = vaddq_f32(v42, vmulq_n_f32(v41, v45));
    v59 = vaddq_f32(v42, vmulq_n_f32(v41, v44));
    v60 = *(a1 + 3488);
    v61 = *(a1 + 3520);
    if (a4)
    {
      if (a4 == 1)
      {
        v63 = vzip1q_s32(v60, v58);
        *(v32 + 16 * v28) = vtrn2q_s32(v63, vuzp1q_s32(v63, v58));
        v64 = vzip1q_s32(v61, v59);
        v26 = vtrn2q_s32(v64, vuzp1q_s32(v64, v59));
      }

      else if (a4 == 2)
      {
        v62 = vtrn1q_s32(v60, v58);
        v62.i64[0] = v58.i64[0];
        *(v32 + 16 * v28) = v62;
        v26 = vtrn1q_s32(v61, v59);
        v26.i64[0] = v59.i64[0];
      }

      else
      {
        v58.i32[3] = HIDWORD(*(a1 + 3488));
        *(v32 + 16 * v28) = v58;
        v59.i32[3] = v61.i32[3];
        v26 = v59;
      }
    }

    else
    {
      *(v32 + 16 * v28) = vextq_s8(vextq_s8(v60, v60, 4uLL), v58, 0xCuLL);
      v26 = vextq_s8(vextq_s8(v61, v61, 4uLL), v59, 0xCuLL);
    }

    *(a3 + 96 + 16 * v28++) = v26;
    v30 += 216;
  }

  while (v28 != v13);
  v65 = (v14 + 3) & 0x1FC;
  if (v65 > v14)
  {
    v66 = v14 - v65;
    v67 = a3 + 4 * v14;
    do
    {
      *(v67 + 160) = 0;
      *(v67 + 1024) = 0;
      v67 += 4;
    }

    while (!__CFADD__(v66++, 1));
  }

  *a3 = v34 & 1;
  return result;
}

uint64_t compute_ideal_colors_and_weights_2planes(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, int32x4_t a9, float32x4_t a10)
{
  v13 = *(a2 + 3488);
  v14 = *(a2 + 3520);
  {
    v31 = a4;
    v30 = a3;
    v28 = v14;
    v29 = v13;
    v14 = v28;
    v13 = v29;
    a3 = v30;
    a4 = v31;
    if (v27)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v14 = v28;
      v13 = v29;
      a3 = v30;
      a4 = v31;
    }
  }

  v15 = vmovn_s32(vceqq_f32(v13, v14));
  v16 = 0;
  v16.i16[3] = v15.i16[3];
  v17 = vmovl_u16(v16);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19 = vshlq_u32(vandq_s8(v17, v18), mask(vmask4)::shift);
  v19.i32[0] = vaddvq_s32(v19);
  switch(a3)
  {
    case 2:
      if (v19.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, (a1 + 14659568), a4, 0, 1u, *v19.i64, mask(vmask4)::shift, a8, a9);
        v21 = 2;
        goto LABEL_17;
      }

      v21 = 2;
      v22 = (a1 + 14659568);
      v23 = a2;
      v24 = a4;
      v25 = 2;
      break;
    case 1:
      if (v19.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, (a1 + 14659568), a4, 0, 2u, *v19.i64, mask(vmask4)::shift, a8, a9);
        v21 = 1;
        goto LABEL_17;
      }

      v21 = 1;
      v22 = (a1 + 14659568);
      v23 = a2;
      v24 = a4;
      v25 = 1;
      break;
    case 0:
      v20 = (a1 + 14659568);
      if (v19.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, v20, a4, 1u, 2u, *v19.i64, mask(vmask4)::shift, a8, a9);
      }

      else
      {
        compute_ideal_colors_and_weights_3_comp(a2, v20, a4, 0, *v19.i64, *&mask(vmask4)::shift, a8, *a9.i64, a10);
      }

      v21 = 0;
      goto LABEL_17;
    default:
      v21 = 3;
      v22 = (a1 + 14659568);
      v23 = a2;
      v24 = a4;
      v25 = 3;
      break;
  }

  compute_ideal_colors_and_weights_3_comp(v23, v22, v24, v25, *v19.i64, *&mask(vmask4)::shift, a8, *a9.i64, a10);
LABEL_17:

  return compute_ideal_colors_and_weights_1_comp(a2, (a1 + 14659568), a5, v21);
}

unsigned __int16 *compute_ideal_colors_and_weights_2_comp(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, unsigned int a5, double a6, __n128 a7, double a8, int32x4_t a9)
{
  v64 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  *(a3 + 16) = v14;
  v15 = *(a1 + 3456);
  if (a4 || a5 != 1)
  {
    v19 = *(a1 + 3536);
    if (a4 || a5 != 2)
    {
      v22 = vadd_f32(*&vextq_s8(v19, v19, 4uLL), 0);
      v17 = vpadd_f32(v22, v22);
      v21 = a1 + 864;
      v18 = 1728;
      goto LABEL_9;
    }

    a7 = vextq_s8(v19, v19, 8uLL);
    v20 = vadd_f32(vzip1_s32(*v19.i8, a7.n128_u64[0]), 0);
    v17 = vpadd_f32(v20, v20);
    v18 = 1728;
  }

  else
  {
    v16 = vadd_f32(*(a1 + 3536), 0);
    v17 = vpadd_f32(v16, v16);
    v18 = 864;
  }

  v21 = a1;
LABEL_9:
  v23 = a1 + v18;
  a7.n128_u64[0] = COERCE_UNSIGNED_INT(0.5);
  v24 = v17.f32[0] * 0.5;
  result = compute_avgs_and_dirs_2_comp(a2, a1, a4, a5, v63, *&v17, a7, a8, a9);
  v27 = 0;
  v28 = a2 + 2;
  v29 = a2 + 112;
  v30 = a3 + 160;
  v31.i64[0] = 0;
  v32 = 1;
  v33 = vceqq_s32(vdupq_n_s32(a5), xmmword_1E3062D20);
  v34 = vceqq_s32(vdupq_n_s32(a4), xmmword_1E3062D20);
  v35 = 0.0;
  do
  {
    v36 = &v63[2 * v27];
    v37 = v36[1];
    v38 = vextq_s8(v37, v37, 8uLL);
    *v38.f32 = vadd_f32(*v38.f32, *v37.f32);
    *v38.f32 = vpadd_f32(*v38.f32, *v38.f32);
    v39 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v31, v38), 0), vsubq_f32(0, v37), v37);
    v40 = vmulq_f32(v39, v39);
    *v40.i8 = vadd_f32(*&vextq_s8(v40, v40, 8uLL), *v40.i8);
    v41 = vpadd_f32(*v40.i8, *v40.i8);
    v42 = xmmword_1E310F6F0;
    if (*v41.i32 != 0.0)
    {
      v42 = vdivq_f32(v39, vsqrtq_f32(vdupq_lane_s32(v41, 0)));
    }

    v43 = *v36;
    v44 = *(v28 + v27);
    v45 = -1.0e10;
    v46 = 1.0e10;
    if (*(v28 + v27))
    {
      v47 = v29;
      result = *(v28 + v27);
      v46 = 1.0e10;
      v45 = -1.0e10;
      do
      {
        v48 = *v47;
        v47 = (v47 + 1);
        v26.i32[0] = *(v21 + 4 * v48);
        v26.i32[1] = *(v23 + 4 * v48);
        v26 = vmulq_f32(v42, vsubq_f32(v26, v43));
        *v26.f32 = vadd_f32(*&vextq_s8(v26, v26, 8uLL), *v26.f32);
        v26.f32[0] = vpadd_f32(*v26.f32, *v26.f32).f32[0];
        *(v30 + 4 * v48) = v26.i32[0];
        if (v26.f32[0] < v46)
        {
          v46 = v26.f32[0];
        }

        if (v26.f32[0] > v45)
        {
          v45 = v26.f32[0];
        }

        result = (result - 1);
      }

      while (result);
    }

    if (v45 <= v46)
    {
      v45 = 0.0000001;
      v46 = 0.0;
    }

    v49 = v45 - v46;
    if (v27)
    {
      v32 &= (v49 * v49) == v35;
    }

    else
    {
      v35 = v49 * v49;
    }

    if (v44)
    {
      v50 = 0;
      v51 = v24 * (v49 * v49);
      v52 = 1.0 / v49;
      do
      {
        result = *(v29 + v50);
        v53 = v52 * (*(v30 + 4 * result) - v46);
        v54 = fmaxf(v53, 0.0);
        if (v53 <= 1.0)
        {
          v55 = v54;
        }

        else
        {
          v55 = 1.0;
        }

        *(v30 + 4 * result) = v55;
        *(a3 + 1024 + 4 * result) = v51;
        ++v50;
      }

      while (v44 != v50);
    }

    v56 = vaddq_f32(v43, vmulq_n_f32(v42, v46)).u64[0];
    v57 = vaddq_f32(v43, vmulq_n_f32(v42, v45)).u64[0];
    v26 = vdupq_lane_s32(v57, 0);
    v58 = vbslq_s8(v34, v26, *(a1 + 3520));
    *(a3 + 32 + 16 * v27) = vbslq_s8(v33, vdupq_lane_s32(v56, 1), vbslq_s8(v34, vdupq_lane_s32(v56, 0), *(a1 + 3488)));
    *(a3 + 96 + 16 * v27++) = vbslq_s8(v33, vdupq_lane_s32(v57, 1), v58);
    v29 += 108;
  }

  while (v27 != v14);
  v59 = (v15 + 3) & 0x1FC;
  if (v59 > v15)
  {
    v60 = v15 - v59;
    v61 = a3 + 4 * v15;
    do
    {
      *(v61 + 160) = 0;
      *(v61 + 1024) = 0;
      v61 += 4;
    }

    while (!__CFADD__(v60++, 1));
  }

  *a3 = v32 & 1;
  return result;
}

uint64_t compute_ideal_colors_and_weights_1_comp(uint64_t result, unsigned __int16 *a2, uint64_t a3, unsigned int a4)
{
  v6 = *a2;
  *(a3 + 16) = v6;
  v7 = *(result + 3456);
  if (a4 == 2)
  {
    v8 = *(result + 3544);
    v9 = result + 1728;
  }

  else if (a4 == 1)
  {
    v8 = *(result + 3540);
    v9 = result + 864;
  }

  else if (a4)
  {
    v8 = *(result + 3548);
    v9 = result + 2592;
  }

  else
  {
    v8 = *(result + 3536);
    v9 = result;
  }

  v10 = 0;
  v11 = a2 + 2;
  v12 = a2 + 112;
  v13 = 1;
  v14 = vceqq_s32(vdupq_n_s32(a4), xmmword_1E3062D20);
  v15 = 0.0;
  do
  {
    v16 = *(v11 + v10);
    v4.i32[0] = -803929351;
    v5.i32[0] = 1343554297;
    if (*(v11 + v10))
    {
      v17 = v12;
      v18 = *(v11 + v10);
      v5.i32[0] = 1343554297;
      v4.i32[0] = -803929351;
      do
      {
        v19 = *v17;
        v17 = (v17 + 1);
        v20 = *(v9 + 4 * v19);
        if (v20 < *v5.i32)
        {
          *v5.i32 = v20;
        }

        if (v20 > *v4.i32)
        {
          *v4.i32 = v20;
        }

        --v18;
      }

      while (v18);
    }

    if (*v4.i32 <= *v5.i32)
    {
      *v4.i32 = 0.0000001;
      *v5.i32 = 0.0;
    }

    v21 = *v4.i32 - *v5.i32;
    if (v10)
    {
      v13 &= (v21 * v21) == v15;
    }

    else
    {
      v15 = v21 * v21;
    }

    if (*(v11 + v10))
    {
      v22 = 0;
      v23 = v8 * (v21 * v21);
      v24 = 1.0 / v21;
      do
      {
        v25 = *(v12 + v22);
        v26 = v24 * (*(v9 + 4 * v25) - *v5.i32);
        v27 = fmaxf(v26, 0.0);
        if (v26 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        *(a3 + 160 + 4 * v25) = v28;
        *(a3 + 1024 + 4 * v25) = v23;
        ++v22;
      }

      while (v16 != v22);
    }

    *(a3 + 32 + 16 * v10) = vbslq_s8(v14, vdupq_lane_s32(*v5.i8, 0), *(result + 3488));
    v5 = *(result + 3520);
    v4 = vbslq_s8(v14, vdupq_lane_s32(*v4.i8, 0), v5);
    *(a3 + 96 + 16 * v10++) = v4;
    v12 += 108;
  }

  while (v10 != v6);
  v29 = (v7 + 3) & 0x1FC;
  if (v29 > v7)
  {
    v30 = v7 - v29;
    v31 = a3 + 4 * v7;
    do
    {
      *(v31 + 160) = 0;
      *(v31 + 1024) = 0;
      v31 += 4;
    }

    while (!__CFADD__(v30++, 1));
  }

  *a3 = v13 & 1;
  return result;
}

float32x2_t compute_error_of_weight_set_1plane(float32x4_t *a1, unsigned __int8 *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, double a6, uint8x8_t a7)
{
  v10 = *a2;
  v11 = a2[1];
  if (v11 < 3)
  {
    if (v11 == 2)
    {
      v16 = 0;
      v13 = 0uLL;
      do
      {
        v25 = v13;
        *v17.i64 = bilinear_infill_vla_2(a2, a3, v16, *a4.f32, *a5.f32);
        v18 = vsubq_f32(v17, a1[10]);
        a5 = a1[64];
        a4 = vmulq_f32(a5, vmulq_f32(v18, v18));
        v13 = vaddq_f32(v25, a4);
        v16 += 4;
        ++a1;
      }

      while (v16 < v10);
    }

    else
    {
      v19 = 0;
      v13 = 0uLL;
      do
      {
        v20 = *a3++;
        v21 = vsubq_f32(v20, a1[10]);
        v13 = vaddq_f32(v13, vmulq_f32(a1[64], vmulq_f32(v21, v21)));
        v19 += 4;
        ++a1;
      }

      while (v19 < v10);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0uLL;
    do
    {
      v24 = v13;
      *v14.i64 = bilinear_infill_vla(a2, a3, v12, *a4.f32, *a5.f32, *v13.f32, a7);
      v15 = vsubq_f32(v14, a1[10]);
      a5 = a1[64];
      a4 = vmulq_f32(a5, vmulq_f32(v15, v15));
      v13 = vaddq_f32(v24, a4);
      v12 += 4;
      ++a1;
    }

    while (v12 < v10);
  }

  v22 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.f32);
  return vpadd_f32(v22, v22);
}

double bilinear_infill_vla(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint8x8_t a7)
{
  v7 = a1 + a3;
  a4.i32[0] = *(v7 + 222);
  v8 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = *(v7 + 438);
  v9 = vmovl_u16(*&vmovl_u8(a5));
  a6.i32[0] = *(v7 + 654);
  v10 = vmovl_u16(*&vmovl_u8(a6));
  a7.i32[0] = *(v7 + 870);
  v11 = vmovl_u16(*&vmovl_u8(a7));
  v8.i32[0] = *(a2 + 4 * v8.u32[0]);
  v8.i32[1] = *(a2 + 4 * v8.u32[1]);
  v8.i32[2] = *(a2 + 4 * v8.u32[2]);
  v8.i32[3] = *(a2 + 4 * v8.u32[3]);
  v9.i32[0] = *(a2 + 4 * v9.u32[0]);
  v9.i32[1] = *(a2 + 4 * v9.u32[1]);
  v9.i32[2] = *(a2 + 4 * v9.u32[2]);
  v9.i32[3] = *(a2 + 4 * v9.u32[3]);
  v10.i32[0] = *(a2 + 4 * v10.u32[0]);
  v10.i32[1] = *(a2 + 4 * v10.u32[1]);
  v10.i32[2] = *(a2 + 4 * v10.u32[2]);
  v10.i32[3] = *(a2 + 4 * v10.u32[3]);
  v11.i32[0] = *(a2 + 4 * v11.u32[0]);
  v11.i32[1] = *(a2 + 4 * v11.u32[1]);
  v11.i32[2] = *(a2 + 4 * v11.u32[2]);
  v11.i32[3] = *(a2 + 4 * v11.u32[3]);
  *&result = vaddq_f32(vaddq_f32(vmulq_f32(v8, *(a1 + 4 * a3 + 1952)), vmulq_f32(v9, *(a1 + 4 * a3 + 2816))), vaddq_f32(vmulq_f32(v10, *(a1 + 4 * a3 + 3680)), vmulq_f32(v11, *(a1 + 4 * a3 + 4544)))).u64[0];
  return result;
}

double bilinear_infill_vla_2(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5)
{
  v5 = a1 + a3;
  a4.i32[0] = *(v5 + 222);
  v6 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = *(v5 + 438);
  v7 = vmovl_u16(*&vmovl_u8(a5));
  v6.i32[0] = *(a2 + 4 * v6.u32[0]);
  v6.i32[1] = *(a2 + 4 * v6.u32[1]);
  v6.i32[2] = *(a2 + 4 * v6.u32[2]);
  v6.i32[3] = *(a2 + 4 * v6.u32[3]);
  v7.i32[0] = *(a2 + 4 * v7.u32[0]);
  v7.i32[1] = *(a2 + 4 * v7.u32[1]);
  v7.i32[2] = *(a2 + 4 * v7.u32[2]);
  v7.i32[3] = *(a2 + 4 * v7.u32[3]);
  *&result = vaddq_f32(vmulq_f32(v6, *(a1 + 4 * a3 + 1952)), vmulq_f32(v7, *(a1 + 4 * a3 + 2816))).u64[0];
  return result;
}

float32x2_t compute_error_of_weight_set_2planes(float32x4_t *a1, float32x4_t *a2, unsigned __int8 *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t a6, uint8x8_t a7, uint8x8_t a8)
{
  v13 = *a3;
  v14 = a3[1];
  if (v14 < 3)
  {
    if (v14 == 2)
    {
      v24 = 0;
      v16 = 0uLL;
      do
      {
        v40 = v16;
        *v25.i64 = bilinear_infill_vla_2(a3, a4, v24, *a6.f32, a7);
        v26 = vsubq_f32(v25, a1[10]);
        v27 = a1[64];
        v38 = vmulq_f32(v27, vmulq_f32(v26, v26));
        *v28.i64 = bilinear_infill_vla_2(a3, a5, v24, *v38.f32, *v27.f32);
        v29 = vsubq_f32(v28, a2[10]);
        a7 = *v38.f32;
        a6 = vaddq_f32(v38, vmulq_f32(a2[64], vmulq_f32(v29, v29)));
        v16 = vaddq_f32(v40, a6);
        v24 += 4;
        ++a2;
        ++a1;
      }

      while (v24 < v13);
    }

    else
    {
      v30 = 0;
      v16 = 0uLL;
      do
      {
        v31 = *a4++;
        v32 = vsubq_f32(v31, a1[10]);
        v33 = *a5++;
        v34 = vsubq_f32(v33, a2[10]);
        v16 = vaddq_f32(v16, vaddq_f32(vmulq_f32(a1[64], vmulq_f32(v32, v32)), vmulq_f32(a2[64], vmulq_f32(v34, v34))));
        v30 += 4;
        ++a2;
        ++a1;
      }

      while (v30 < v13);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0uLL;
    do
    {
      v39 = v16;
      *v17.i64 = bilinear_infill_vla(a3, a4, v15, *a6.f32, a7, a8, *v16.f32);
      v18 = vsubq_f32(v17, a1[10]);
      v19 = a1[64];
      v37 = vmulq_f32(v19, vmulq_f32(v18, v18));
      *v22.i64 = bilinear_infill_vla(a3, a5, v15, *v37.f32, *v19.f32, v20, v21);
      v23 = vsubq_f32(v22, a2[10]);
      a7 = *v37.f32;
      a6 = vaddq_f32(v37, vmulq_f32(a2[64], vmulq_f32(v23, v23)));
      v16 = vaddq_f32(v39, a6);
      v15 += 4;
      ++a2;
      ++a1;
    }

    while (v15 < v13);
  }

  v35 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
  return vpadd_f32(v35, v35);
}

int32x2_t *compute_ideal_weights_for_decimation(int32x2_t *result, float32x4_t *a2, _OWORD *a3)
{
  v3 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v5 = a2->u8[0];
  v6 = a2->u8[2];
  v7 = (a3 + 4 * ((v6 - 1) & 0xFFFFFFFC));
  *v7 = 0;
  v7[1] = 0;
  if (v5 == v6)
  {
    v8 = 0;
    v9 = result + 20;
    do
    {
      v10 = *v9->i8;
      v9 += 2;
      *v3++ = v10;
      v8 += 4;
    }

    while (v8 < v5);
  }

  else
  {
    v11 = 0;
    v12 = result->u8[0];
    v13 = result + 128;
    v14 = vdupq_lane_s32(result[128], 0);
    v15 = 5472;
    v16 = &a2[342];
    v17 = 19296;
    v18 = a2 + 1206;
    v19 = result + 20;
    v20 = vdupq_n_s32(0x2EDBE6FFu);
    do
    {
      v21 = &a2[338].f32[v11 / 4];
      v22 = vld1_dup_f32(v21);
      v23 = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v22)));
      v24 = 0uLL;
      v25 = v15;
      v26 = v17;
      v27 = v20;
      do
      {
        v28 = (a2->f32 + v25);
        v29 = vld1_dup_f32(v28);
        v30 = vmovl_u16(*&vmovl_u8(v29));
        v31 = v30.u32[0];
        v32 = v30.u32[1];
        v33 = vextq_s8(v30, v30, 8uLL).u64[0];
        if (!v12)
        {
          v14.i32[0] = v13->i32[v31];
          v14.i32[1] = v13->i32[v32];
          v14.i32[2] = v13->i32[v33];
          v14.i32[3] = v13->i32[HIDWORD(v33)];
        }

        v34 = vmulq_f32(*(a2 + v26), v14);
        v35 = v19 + v33;
        v36 = v19 + BYTE4(v33);
        v37.i32[0] = v19->i32[v31];
        v37.i32[1] = v19->i32[v32];
        v37.i32[2] = *v35;
        v37.i32[3] = *v36;
        v27 = vaddq_f32(v27, v34);
        v38 = vmulq_f32(v34, v37);
        v24 = vaddq_f32(v24, v38);
        v26 += 256;
        v25 += 64;
        --v23;
      }

      while (v23);
      v39 = vdivq_f32(v24, v27);
      a3[v11 / 4] = v39;
      v11 += 4;
      v17 += 16;
      v15 += 4;
    }

    while (v11 < v6);
    v72 = v14;
    v73 = v6;
    if (a2->u8[1] >= 3u)
    {
      v42 = 0;
      v43 = v74;
      do
      {
        *v20.i64 = bilinear_infill_vla(a2, v3, v42, *v20.i8, *v39.f32, *v27.f32, *v38.f32);
        *v43++ = v20;
        v42 += 4;
      }

      while (v42 < v5);
    }

    else
    {
      v40 = 0;
      v41 = v74;
      do
      {
        *v20.i64 = bilinear_infill_vla_2(a2, v3, v40, *v20.i8, *v39.f32);
        *v41++ = v20;
        v40 += 4;
      }

      while (v40 < v5);
    }

    v44 = 0;
    v45 = vdupq_n_s32(0x2EDBE6FFu);
    __asm
    {
      FMOV            V1.4S, #-16.0
      FMOV            V2.4S, #-0.25
      FMOV            V3.4S, #0.25
    }

    v53 = v72;
    do
    {
      v54 = &a2[338].f32[v44 / 4];
      v55 = vld1_dup_f32(v54);
      v56 = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v55)));
      v57 = 0uLL;
      v58 = v16;
      v59 = v18;
      v60 = v45;
      do
      {
        v61 = *v58;
        v58 += 16;
        v62 = vmovl_u16(*&vmovl_u8(vdup_n_s32(v61)));
        v63 = v62.u32[0];
        v64 = v62.u32[1];
        v65 = vextq_s8(v62, v62, 8uLL).u64[0];
        if (!v12)
        {
          v53.i32[0] = v13->i32[v63];
          v53.i32[1] = v13->i32[v64];
          v53.i32[2] = v13->i32[v65];
          v53.i32[3] = v13->i32[HIDWORD(v65)];
        }

        v66 = vmulq_f32(*v59, v53);
        v67 = v65;
        result = &v74[v65];
        v68 = BYTE4(v65);
        v69 = &v74[BYTE4(v65)];
        v70.i32[0] = v74[v63];
        v70.i32[1] = v74[v64];
        v70.i32[2] = result->i32[0];
        v70.i32[3] = *v69;
        v71.i32[0] = v19->i32[v63];
        v71.i32[1] = v19->i32[v64];
        v71.i32[2] = v19->i32[v67];
        v71.i32[3] = v19->i32[v68];
        v60 = vaddq_f32(v60, vmulq_f32(*v59, v66));
        v57 = vaddq_f32(v57, vmulq_f32(v66, vsubq_f32(v70, v71)));
        v59 += 16;
        --v56;
      }

      while (v56);
      v3[v44 / 4] = vaddq_f32(v3[v44 / 4], vminnmq_f32(vmaxnmq_f32(vdivq_f32(vmulq_f32(v57, _Q1), v60), _Q2), _Q3));
      v44 += 4;
      ++v18;
      ++v16;
    }

    while (v44 < v73);
  }

  return result;
}

uint64_t compute_quantized_weights_for_decimation(uint64_t result, float32x4_t *a2, float32x4_t *a3, uint64_t a4, unsigned int a5, float a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 2);
  v12 = (&quant_and_xfer_tables + 226 * a5);
  if (a5 > 0x14)
  {
    v13 = -1;
  }

  else
  {
    v13 = dword_1E310F748[a5];
  }

  v14 = vdupq_n_s32(v13);
  if (*&a7 > a6)
  {
    *&a11 = a6;
  }

  else
  {
    *&a7 = 1.0;
    *&a11 = 0.0;
  }

  v16 = *&a7 - *&a11;
  v17 = 1.0 / (*&a7 - *&a11);
  *&a7 = *&a11 * v17;
  v18 = vdupq_lane_s32(*&a7, 0);
  v15 = (&compute_quantized_weights_for_decimation(decimation_info const&,float,float,float const*,float *,unsigned char *,quant_method)::quant_levels_m1 + 4 * a5);
  v19 = vld1q_dup_f32(v15);
  v20 = v16 * 0.015625;
  v21 = vdupq_lane_s32(*&a11, 0);
  v22 = *v12;
  if (a5 - 9 >= 0xC)
  {
    v42 = 0;
    __asm { FMOV            V17.4S, #1.0 }

    v44.i64[0] = 0x100000001;
    v44.i64[1] = 0x100000001;
    v45.i64[0] = 0xFFFFFF00FFFFFF00;
    v45.i64[1] = 0xFFFFFF00FFFFFF00;
    v46.i64[0] = 0x4300000043000000;
    v46.i64[1] = 0x4300000043000000;
    do
    {
      v47 = *a2++;
      v48 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v47, v17), v18), 0), _Q17);
      v49 = vcvtq_s32_f32(vmulq_f32(v19, v48));
      v50 = vminq_s32(vaddq_s32(v49, v44), v14);
      v51 = vqtbl1q_s8(v22, vorrq_s8(v49, v45));
      v52 = vqtbl1q_s8(v22, vorrq_s8(v50, v45));
      v53 = vcvtq_f32_s32(v51);
      v54 = vcvtq_f32_s32(v52);
      v55 = vcgtq_f32(vmulq_f32(v48, v46), vaddq_f32(v53, v54));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v55, v54, v53), v20));
      *(a4 + v42) = vqtbl1q_s8(vbslq_s8(v55, v52, v51), xmmword_1E310F700).u32[0];
      v42 += 4;
    }

    while (v42 < v11);
  }

  else
  {
    v23 = 0;
    v24 = v12[1];
    __asm { FMOV            V17.4S, #1.0 }

    v30.i64[0] = 0x100000001;
    v30.i64[1] = 0x100000001;
    v31.i64[0] = 0xFFFFFF00FFFFFF00;
    v31.i64[1] = 0xFFFFFF00FFFFFF00;
    v32.i64[0] = 0x4300000043000000;
    v32.i64[1] = 0x4300000043000000;
    do
    {
      v33 = *a2++;
      v34 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v33, v17), v18), 0), _Q17);
      v35 = vcvtq_s32_f32(vmulq_f32(v19, v34));
      v36 = vminq_s32(vaddq_s32(v35, v30), v14);
      v37 = vqtbl2q_s8(*v22.i8, vorrq_s8(v35, v31));
      v38 = vqtbl2q_s8(*v22.i8, vorrq_s8(v36, v31));
      v39 = vcvtq_f32_s32(v37);
      v40 = vcvtq_f32_s32(v38);
      v41 = vcgtq_f32(vmulq_f32(v34, v32), vaddq_f32(v39, v40));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v41, v40, v39), v20));
      *(a4 + v23) = vqtbl1q_s8(vbslq_s8(v41, v38, v37), xmmword_1E310F700).u32[0];
      v23 += 4;
    }

    while (v23 < v11);
  }

  return result;
}

void *recompute_ideal_colors_1plane(float32x4_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, uint8x8_t a10, uint8x8_t a11)
{
  v19 = 0;
  v125 = *MEMORY[0x1E69E9840];
  v20 = *(a3 + 2);
  v21 = a1[216].u8[0];
  v22 = *a2;
  v23 = vdupq_n_s32(0x3C800000u);
  v24 = v124;
  do
  {
    v25 = (a4 + v19);
    v26 = vld1_dup_f32(v25);
    v27 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v26))), v23);
    *v24++ = v27;
    v19 += 4;
  }

  while (v19 < v20);
  v28 = *(a3 + 1);
  if (v28 == 1)
  {
    v29 = v124;
  }

  else
  {
    if (v28 >= 3)
    {
      v32 = 0;
      v33 = v123;
      do
      {
        *v23.i64 = bilinear_infill_vla(a3, v124, v32, *v23.f32, *v27.f32, a10, a11);
        *v33++ = v23;
        v32 += 4;
      }

      while (v32 < v21);
    }

    else
    {
      v30 = 0;
      v31 = v123;
      do
      {
        *v23.i64 = bilinear_infill_vla_2(a3, v124, v30, *v23.f32, *v27.f32);
        *v31++ = v23;
        v30 += 4;
      }

      while (v30 < v21);
    }

    v29 = v123;
  }

  v34 = 0;
  v35 = vmulq_n_f32(a1[219], v21);
  v36 = a2 + 2;
  v37 = a2 + 112;
  v38 = a1 + 54;
  v39 = a1 + 108;
  v40 = a1 + 162;
  v41 = a5 + 16;
  v42 = a5 + 80;
  v43 = vdupq_n_s32(0x233877AAu);
  result = &unk_1E310F000;
  __asm { FMOV            V7.4S, #1.0 }

  v49 = vdupq_n_s32(0x38D1B717u);
  do
  {
    v50 = *(v36 + v34);
    if (v22 >= 2)
    {
      v35 = 0uLL;
      v51 = v37;
      v52 = *(v36 + v34);
      do
      {
        v53 = *v51;
        v51 = (v51 + 1);
        v54.i32[0] = a1->i32[v53];
        v54.i32[1] = v38->i32[v53];
        v54.i32[2] = v39->i32[v53];
        v54.i32[3] = v40->i32[v53];
        v35 = vaddq_f32(v35, v54);
        --v52;
      }

      while (v52);
    }

    v55 = a1[221];
    v35 = vmulq_f32(v35, v55);
    _Q20 = vmaxnmq_f32(vmulq_n_f32(v55, v50), v43);
    v57 = vdivq_f32(v35, _Q20);
    v57.i32[3] = 0;
    v58 = vmulq_f32(v57, v57);
    *v58.i8 = vadd_f32(*&vextq_s8(v58, v58, 8uLL), *v58.i8);
    v59 = vdivq_f32(v57, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v58.i8, *v58.i8), 0)));
    v60 = COERCE_FLOAT(a1[221].i64[1]) + vaddv_f32(*v55.f32);
    if (*(v36 + v34))
    {
      v61 = 0;
      v62 = 0uLL;
      v63 = 1.0;
      v64 = 0.0;
      v65 = 1.0e-17;
      v66 = 1.0e10;
      v67 = 0.0;
      v12.i64[0] = 0;
      v68 = 0.0;
      v69 = 0.0;
      v70 = 0uLL;
      v71 = 0uLL;
      do
      {
        v72 = *(v37 + v61);
        v11.i32[0] = a1->i32[v72];
        v11.i32[1] = v38->i32[v72];
        v11.i32[2] = v39->i32[v72];
        v73 = vmulq_f32(v59, v11);
        v74 = *&v29[4 * v72];
        v75.i32[3] = v40->i32[v72];
        v76 = 1.0 - v74;
        if (v74 < v63)
        {
          v63 = *&v29[4 * v72];
        }

        if (v74 > v67)
        {
          v67 = *&v29[4 * v72];
        }

        v77 = vaddv_f32(*v73.f32);
        v73.f32[0] = v73.f32[2] + v77;
        v12.f32[0] = v12.f32[0] + (v76 * v76);
        v68 = v68 + (v76 * v74);
        if ((v73.f32[2] + v77) < v66)
        {
          v66 = v73.f32[2] + v77;
        }

        v69 = v69 + (v74 * v74);
        v65 = v65 + v74;
        v79 = vmulq_n_f32(v75, v74);
        v70 = vaddq_f32(v70, v79);
        v78 = vsubq_f32(v75, v79);
        v79.i32[3] = 0;
        if (v73.f32[0] > v64)
        {
          v64 = v73.f32[0];
        }

        v62 = vaddq_f32(v62, v78);
        *(v79.i64 + 4) = *&v29[4 * v72];
        v79.f32[0] = 1.0 - v74;
        v11 = vmulq_n_f32(v79, v60 * v73.f32[0]);
        v71 = vaddq_f32(v71, v11);
        ++v61;
      }

      while (v50 != v61);
      v80 = v67 * 0.999;
    }

    else
    {
      v63 = 1.0;
      v69 = 0.0;
      v71.i64[0] = 0;
      v70 = 0uLL;
      v62 = 0uLL;
      v65 = 1.0e-17;
      v68 = 0.0;
      v12.i64[0] = 0;
      v80 = 0.0;
      v66 = 1.0e10;
      v64 = 0.0;
    }

    v81 = vmulq_f32(v55, v62);
    v82 = vmulq_f32(v55, v70);
    v83 = v66 / fmaxf(v64, 1.0e-10);
    v84 = fmaxf(v83, 0.0);
    if (v83 <= 1.0)
    {
      v85 = v84;
    }

    else
    {
      v85 = 1.0;
    }

    v86 = vmulq_n_f32(v59, v64);
    v87 = v86;
    v87.f32[3] = v85;
    *(a6 + 16 * v34) = v87;
    if (v63 >= v80)
    {
      v104 = vdivq_f32(vaddq_f32(v82, v81), _Q20);
      v105 = vceqq_f32(v104, v104);
      *(v41 + 16 * v34) = vbslq_s8(v105, v104, *(v41 + 16 * v34));
      *(v42 + 16 * v34) = vbslq_s8(v105, v104, *(v42 + 16 * v34));
      v86.i32[3] = 1.0;
      goto LABEL_40;
    }

    v88 = v12;
    v88.f32[1] = v68;
    v88.f32[2] = v69;
    _Q31 = vmulq_n_f32(v88, v60);
    v90 = vmulq_n_f32(v55, v69);
    v91 = vmulq_n_f32(v55, v68);
    v92 = vmulq_n_f32(v55, v12.f32[0]);
    v93 = vsubq_f32(vmulq_f32(v90, v92), vmulq_f32(v91, v91));
    v94 = vdivq_f32(_Q7, v93);
    _S11 = _Q31.i32[2];
    v96 = vmuls_lane_f32(-_Q31.f32[1], *_Q31.f32, 1) + (_Q31.f32[0] * _Q31.f32[2]);
    v97 = vaddq_f32(vmulq_f32(v90, v90), vaddq_f32(vmulq_f32(v92, v92), vmulq_f32(v91, vaddq_f32(v91, v91))));
    v98 = vmulq_f32(vsubq_f32(vmulq_f32(v81, v90), vmulq_f32(v82, v91)), v94);
    v12 = vmulq_f32(vsubq_f32(vmulq_f32(v82, v92), vmulq_f32(v81, v91)), v94);
    v99 = vornq_s8(vmvnq_s8(vcgtq_f32(vmaxq_f32(v93, vsubq_f32(0, v93)), vmulq_f32(v97, v49))), vorrq_s8(vcgtq_f32(v12, v98), vcgeq_f32(v98, v12)));
    *(v41 + 16 * v34) = vbslq_s8(v99, *(v41 + 16 * v34), v98);
    __asm { FMLA            S19, S11, V31.S[2] }

    *(v42 + 16 * v34) = vbslq_s8(v99, *(v42 + 16 * v34), v12);
    v101 = (vmuls_lane_f32(-_Q31.f32[1], *v71.f32, 1) + (_Q31.f32[2] * v71.f32[0])) * (1.0 / v96);
    v102 = ((-_Q31.f32[1] * v71.f32[0]) + (_Q31.f32[0] * v71.f32[1])) * (1.0 / v96);
    if (fabsf(v96) > (_S19 * 0.0001) && v101 < v102)
    {
      v86 = vmulq_n_f32(v59, v102);
      v86.f32[3] = v101 / v102;
LABEL_40:
      *(a6 + 16 * v34) = v86;
    }

    if (a1[222].u8[2] | a1[235].u8[10])
    {
      _Q26 = vmulq_n_f32(v55, v65);
      _S22 = v60 * v69;
      v108 = vaddq_f32(v82, v81);
      v108.f32[3] = v82.f32[2] + vaddv_f32(*v82.f32);
      v109 = vmulq_f32(_Q26, _Q26).f32[0];
      __asm
      {
        FMLA            S29, S22, V20.S[2]
        FMLA            S31, S29, V20.S[1]
      }

      v112.f32[0] = vmuls_lane_f32(_Q20.f32[2], *_Q26.f32, 1) * _Q26.f32[0];
      *v113.f32 = vmul_f32(vrev64_s32(*_Q20.f32), *_Q26.f32);
      *v114.f32 = vmul_laneq_f32(*v113.f32, _Q26, 2);
      v115 = vdupq_laneq_s32(_Q20, 2);
      v115.f32[0] = -_Q20.f32[2];
      v115.f32[1] = -_Q20.f32[2];
      v115.f32[2] = -_Q26.f32[2];
      v113.i32[2] = vmuls_lane_f32(_Q20.f32[0], *_Q20.f32, 1);
      v113.i32[3] = v113.i32[2];
      v116 = vmulq_f32(v115, v113);
      v117 = vmulq_f32(_Q26, v116).f32[0];
      _Q31.i32[1] = v112.i32[0];
      _Q31.i64[1] = __PAIR64__(v116.u32[0], v114.u32[0]);
      v112.f32[1] = (-_Q20.f32[2] * v109) + (_S29 * _Q20.f32[0]);
      v112.i64[1] = __PAIR64__(v116.u32[1], v114.u32[1]);
      __asm { FMLA            S26, S22, V20.S[1] }

      v114.f32[2] = (-_Q20.f32[1] * v109) + (_Q26.f32[0] * _Q20.f32[0]);
      v114.i32[3] = v116.i32[2];
      v118 = vmulq_n_f32(v108, 1.0 / (v117 + (_Q31.f32[0] * _Q20.f32[0])));
      v119 = vmulq_f32(_Q31, v118);
      *v119.i8 = vadd_f32(*&vextq_s8(v119, v119, 8uLL), *v119.i8);
      v120 = vmulq_f32(v112, v118);
      *v120.i8 = vadd_f32(*&vextq_s8(v120, v120, 8uLL), *v120.i8);
      v121 = vmulq_f32(v114, v118);
      *v121.i8 = vadd_f32(*&vextq_s8(v121, v121, 8uLL), *v121.i8);
      v122 = vmulq_f32(v116, v118);
      *v122.i8 = vadd_f32(*&vextq_s8(v122, v122, 8uLL), *v122.i8);
      *v118.f32 = vzip1_s32(vpadd_f32(*v119.i8, *v119.i8), vpadd_f32(*v120.i8, *v120.i8));
      v118.i64[1] = __PAIR64__(vpadd_f32(*v122.i8, *v122.i8).u32[0], vpadd_f32(*v121.i8, *v121.i8).u32[0]);
      *(a7 + 16 * v34) = v118;
    }

    ++v34;
    v37 += 108;
  }

  while (v34 != v22);
  return result;
}

void recompute_ideal_colors_2planes(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6, float32x4_t *a7, int8x16_t *a8, double a9, double a10, uint8x8_t a11, uint8x8_t a12, unsigned int a13)
{
  v22 = 0;
  v23 = 0;
  v147 = *MEMORY[0x1E69E9840];
  v24 = *(a3 + 2);
  v25 = a1[216].u8[0];
  v26 = vdupq_n_s32(0x3C800000u);
  do
  {
    v27 = (a4 + v23);
    v28 = vld1_dup_f32(v27);
    *&v146[v22] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v28))), v26);
    v29 = (a5 + v23);
    v30 = vld1_dup_f32(v29);
    v31 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v30))), v26);
    *&v145[v22] = v31;
    v23 += 4;
    v22 += 16;
  }

  while (v23 < v24);
  v32 = *(a3 + 1);
  if (v32 == 1)
  {
    v33 = v146;
    v34 = v145;
  }

  else
  {
    v142 = a7;
    if (v32 >= 3)
    {
      v39 = 0;
      v40 = 0;
      do
      {
        *&v41 = bilinear_infill_vla(a3, v146, v40, *v26.f32, *v31.f32, a11, a12);
        v33 = v144;
        *&v144[v39] = v41;
        *v26.i64 = bilinear_infill_vla(a3, v145, v40, *&v41, v42, v43, v44);
        v34 = v143;
        *&v143[v39] = v26;
        v40 += 4;
        v39 += 16;
      }

      while (v40 < v25);
    }

    else
    {
      v35 = 0;
      v36 = 0;
      do
      {
        *&v37 = bilinear_infill_vla_2(a3, v146, v36, *v26.f32, *v31.f32);
        v33 = v144;
        *&v144[v35] = v37;
        *v26.i64 = bilinear_infill_vla_2(a3, v145, v36, *&v37, v38);
        v34 = v143;
        *&v143[v35] = v26;
        v36 += 4;
        v35 += 16;
      }

      while (v36 < v25);
    }

    a7 = v142;
  }

  v45 = *(a2 + 3);
  v46 = a1[221];
  v47 = vdupq_n_s32(0x233877AAu);
  v48 = a1[219];
  v48.i32[3] = 0;
  v49 = vmulq_f32(v48, v48);
  *v49.i8 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.i8);
  v50 = vmulq_n_f32(v46, v45);
  v51 = vdivq_f32(v48, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v49.i8, *v49.i8), 0)));
  v52 = vdupq_n_s32(a13);
  v53 = COERCE_FLOAT(a1[221].i64[1]) + vaddv_f32(*v46.f32);
  v54 = 1.0;
  if (*(a2 + 3))
  {
    v55 = vdupq_n_s32(0x233877AAu);
    v56 = 0uLL;
    v57 = 0.0;
    v58 = 1.0e10;
    v59 = vceqq_s32(v52, xmmword_1E3062D20);
    v60 = a1;
    v61 = 1.0;
    v62 = 0.0;
    v63 = 1.0;
    v64 = 0.0;
    v16.i64[0] = 0;
    v65 = 0.0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0uLL;
    v71 = 0uLL;
    do
    {
      v13.i32[0] = *v60;
      v13.i32[1] = v60[216];
      v13.i32[2] = v60[432];
      v72 = *v33++;
      *v14.i32 = v72;
      v73 = vmulq_f32(v51, v13);
      v74 = 1.0 - v72;
      if (v72 < v61)
      {
        v61 = *v14.i32;
      }

      v13.i32[3] = v60[648];
      v75 = vaddv_f32(*v73.f32);
      v76 = *v34;
      v34 += 4;
      v15.i32[0] = v76;
      if (*v14.i32 > v62)
      {
        v62 = *v14.i32;
      }

      v67 = v67 + ((1.0 - *v15.i32) * (1.0 - *v15.i32));
      v68 = v68 + ((1.0 - *v15.i32) * *v15.i32);
      v77 = v73.f32[2] + v75;
      v78 = vbslq_s8(v59, vdupq_lane_s32(v15, 0), vdupq_lane_s32(v14, 0));
      v79 = vmulq_f32(v13, v78);
      v70 = vaddq_f32(v70, v79);
      v80 = vsubq_f32(v13, v79);
      if (v77 < v58)
      {
        v58 = v77;
      }

      v16.f32[0] = v16.f32[0] + (v74 * v74);
      v65 = v65 + (v74 * *v14.i32);
      if (v77 > v57)
      {
        v57 = v77;
      }

      v66 = v66 + (*v14.i32 * *v14.i32);
      if (*v15.i32 < v63)
      {
        v63 = *v15.i32;
      }

      v69 = v69 + (*v15.i32 * *v15.i32);
      v56 = vaddq_f32(v56, v80);
      if (*v15.i32 > v64)
      {
        v64 = *v15.i32;
      }

      v13 = vmulq_n_f32(__PAIR64__(v14.u32[0], LODWORD(v74)), v53 * v77);
      v71 = vaddq_f32(v71, v13);
      v55 = vaddq_f32(v55, v78);
      ++v60;
      --v45;
    }

    while (v45);
    v81 = v64 * 0.999;
  }

  else
  {
    v71.i64[0] = 0;
    v58 = 1.0e10;
    v70 = 0uLL;
    v55 = v47;
    v56 = 0uLL;
    v69 = 0.0;
    v68 = 0.0;
    v67 = 0.0;
    v66 = 0.0;
    v65 = 0.0;
    v16.i64[0] = 0;
    v81 = 0.0;
    v63 = 1.0;
    v57 = 0.0;
  }

  _Q16 = vmaxnmq_f32(v50, v47);
  v83 = vmulq_n_f32(v46, v66);
  v84 = vmulq_f32(v46, v56);
  v85 = vmulq_f32(v46, v70);
  v86 = v58 / fmaxf(v57, 1.0e-10);
  v87 = fmaxf(v86, 0.0);
  if (v86 <= 1.0)
  {
    v54 = v87;
  }

  v88 = vmulq_n_f32(v51, v57);
  v89 = v88;
  v89.f32[3] = v54;
  *a7 = v89;
  __asm { FMOV            V19.4S, #1.0 }

  if (_NF == _VF)
  {
    v110 = vdivq_f32(vaddq_f32(v85, v84), _Q16);
    v111 = vornq_s8(vceqq_s32(v52, xmmword_1E3062D20), vceqq_f32(v110, v110));
    a6[1] = vbslq_s8(v111, a6[1], v110);
    a6[5] = vbslq_s8(v111, a6[5], v110);
    v88.i32[3] = 1.0;
LABEL_39:
    *a7 = v88;
    goto LABEL_40;
  }

  v94 = v16;
  v94.f32[1] = v65;
  v94.f32[2] = v66;
  _Q24 = vmulq_n_f32(v94, v53);
  v96 = vmulq_n_f32(v46, v65);
  v97 = vmulq_n_f32(v46, v16.f32[0]);
  v98 = vsubq_f32(vmulq_f32(v83, v97), vmulq_f32(v96, v96));
  v99 = vdivq_f32(_Q19, v98);
  _S28 = _Q24.i32[2];
  v101 = vmuls_lane_f32(-_Q24.f32[1], *_Q24.f32, 1) + (_Q24.f32[0] * _Q24.f32[2]);
  v102 = vaddq_f32(vmulq_f32(v83, v83), vaddq_f32(vmulq_f32(v97, v97), vmulq_f32(v96, vaddq_f32(v96, v96))));
  __asm { FMLA            S29, S28, V24.S[2] }

  v104 = vmulq_f32(vsubq_f32(vmulq_f32(v84, v83), vmulq_f32(v85, v96)), v99);
  v105 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v97), vmulq_f32(v84, v96)), v99);
  v106 = (vmuls_lane_f32(-_Q24.f32[1], *v71.f32, 1) + (_Q24.f32[2] * v71.f32[0])) * (1.0 / v101);
  v107 = ((-_Q24.f32[1] * v71.f32[0]) + (_Q24.f32[0] * v71.f32[1])) * (1.0 / v101);
  v108 = vorrq_s8(vornq_s8(vmvnq_s8(vorrq_s8(vcgtq_f32(v105, v104), vcgeq_f32(v104, v105))), vcgtq_f32(vmaxq_f32(v98, vsubq_f32(0, v98)), vmulq_f32(v102, vdupq_n_s32(0x38D1B717u)))), vceqq_s32(v52, xmmword_1E3062D20));
  a6[1] = vbslq_s8(v108, a6[1], v104);
  a6[5] = vbslq_s8(v108, a6[5], v105);
  _NF = fabsf(v101) > (_S29 * 0.0001) && v106 < v107;
  if (_NF)
  {
    v88 = vmulq_n_f32(v51, v107);
    v88.f32[3] = v106 / v107;
    goto LABEL_39;
  }

LABEL_40:
  v112 = vmulq_n_f32(v46, v69);
  if (v63 >= v81)
  {
    v122 = vdivq_f32(vaddq_f32(v85, v84), _Q16);
    v123 = vandq_s8(vceqq_f32(v122, v122), vceqq_s32(v52, xmmword_1E3062D20));
    a6[1] = vbslq_s8(v123, v122, a6[1]);
    v121 = vbslq_s8(v123, v122, a6[5]);
  }

  else
  {
    v113 = vmulq_n_f32(v46, v67);
    v114 = vmulq_n_f32(v46, v68);
    v115 = vsubq_f32(vmulq_f32(v112, v113), vmulq_f32(v114, v114));
    v116 = vdivq_f32(_Q19, v115);
    v117 = vaddq_f32(vmulq_f32(v112, v112), vaddq_f32(vmulq_f32(v113, v113), vmulq_f32(v114, vaddq_f32(v114, v114))));
    v118 = vmulq_f32(vsubq_f32(vmulq_f32(v84, v112), vmulq_f32(v85, v114)), v116);
    v119 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v113), vmulq_f32(v84, v114)), v116);
    v120 = vandq_s8(vandq_s8(vorrq_s8(vcgtq_f32(v119, v118), vcgeq_f32(v118, v119)), vceqq_s32(v52, xmmword_1E3062D20)), vcgtq_f32(vmaxq_f32(v115, vsubq_f32(0, v115)), vmulq_f32(v117, vdupq_n_s32(0x38D1B717u))));
    a6[1] = vbslq_s8(v120, v118, a6[1]);
    v121 = vbslq_s8(v120, v119, a6[5]);
  }

  a6[5] = v121;
  if (a1[222].u8[2] | a1[235].u8[10])
  {
    v124 = vmulq_f32(v46, v55);
    v125 = vmulq_f32(v46, vbslq_s8(vceqq_s32(v52, xmmword_1E3062D20), v112, v83));
    _S1 = v125.f32[2] + vaddv_f32(*v125.f32);
    v127 = vaddq_f32(v85, v84);
    v127.f32[3] = v85.f32[2] + vaddv_f32(*v85.f32);
    v128 = vmulq_f32(v124, v124).f32[0];
    __asm
    {
      FMLA            S7, S1, V16.S[2]
      FMLA            S18, S7, V16.S[1]
    }

    *v131.f32 = vmul_f32(vrev64_s32(*_Q16.f32), *v124.f32);
    *v132.f32 = vmul_laneq_f32(*v131.f32, v124, 2);
    v133 = vdupq_laneq_s32(_Q16, 2);
    v133.f32[0] = -_Q16.f32[2];
    v133.f32[1] = -_Q16.f32[2];
    v133.f32[2] = -v124.f32[2];
    v131.i32[2] = vmuls_lane_f32(_Q16.f32[0], *_Q16.f32, 1);
    v134.f32[0] = vmuls_lane_f32(_Q16.f32[2], *v124.f32, 1) * v124.f32[0];
    v131.i32[3] = v131.i32[2];
    v135 = vmulq_f32(v133, v131);
    _Q18.i32[1] = v134.i32[0];
    _Q18.i64[1] = __PAIR64__(v135.u32[0], v132.u32[0]);
    v134.f32[1] = (-_Q16.f32[2] * v128) + (_S7 * _Q16.f32[0]);
    v134.i64[1] = __PAIR64__(v135.u32[1], v132.u32[1]);
    __asm { FMLA            S6, S1, V16.S[1] }

    v132.f32[2] = (-_Q16.f32[1] * v128) + (_S6 * _Q16.f32[0]);
    v132.i32[3] = v135.i32[2];
    v137 = vmulq_n_f32(v127, 1.0 / (vmulq_f32(v124, v135).f32[0] + (_Q18.f32[0] * _Q16.f32[0])));
    v138 = vmulq_f32(_Q18, v137);
    *v138.i8 = vadd_f32(*&vextq_s8(v138, v138, 8uLL), *v138.i8);
    v139 = vmulq_f32(v134, v137);
    *v139.i8 = vadd_f32(*&vextq_s8(v139, v139, 8uLL), *v139.i8);
    v140 = vmulq_f32(v132, v137);
    *v140.i8 = vadd_f32(*&vextq_s8(v140, v140, 8uLL), *v140.i8);
    v141 = vmulq_f32(v135, v137);
    *v141.i8 = vadd_f32(*&vextq_s8(v141, v141, 8uLL), *v141.i8);
    *v138.i8 = vzip1_s32(vpadd_f32(*v138.i8, *v138.i8), vpadd_f32(*v139.i8, *v139.i8));
    v138.i64[1] = __PAIR64__(vpadd_f32(*v141.i8, *v141.i8).u32[0], vpadd_f32(*v140.i8, *v140.i8).u32[0]);
    *a8 = v138;
  }
}

void load_image_block(__int32 a1, int *a2, int8x16_t *a3, unsigned __int8 *a4, unsigned int a5, int a6, int a7, _DWORD *a8, float a9)
{
  v10 = a3;
  v11 = a2[1];
  v84 = *a2;
  v12 = a2[2];
  a3[249].i32[1] = a5;
  a3[249].i32[2] = a6;
  a3[249].i32[3] = a7;
  if (a8[3] == 3 && a8[2] == 2 && a8[1] == 1 && *a8 == 0)
  {
    v16 = swz_texel_skip;
  }

  else
  {
    v16 = swz_texel;
  }

  LOBYTE(a9) = a4[3];
  v17 = 1.0 / LODWORD(a9);
  v18.i32[0] = a1 & 0xFFFFFFFE;
  v18.i32[1] = a1;
  v19 = vceq_s32(v18, 0x300000002);
  v20 = v19.i8[0] & 1;
  v21 = vuzp1_s16(v19, v18);
  v22 = vzip1_s16(v21, v21);
  v22.i16[2] = v21.i16[0];
  v23.i64[0] = 0x100000001;
  v23.i64[1] = 0x100000001;
  v75 = vmovl_u16(v22);
  v24 = vandq_s8(v75, v23);
  v25 = a2[3];
  v26 = load_texel_u8;
  if (v25 == 2)
  {
    v26 = load_texel_f32;
  }

  if (v25 == 1)
  {
    v27 = load_texel_f16;
  }

  else
  {
    v27 = v26;
  }

  v28 = &unk_1ECF17000;
  {
    v70 = a4;
    v71 = v19.i8[0] & 1;
    v91 = v17;
    v72 = v27;
    v99 = v22;
    v102 = v19.i8[4];
    v97 = v24;
    v24 = v97;
    v22 = v99;
    v19.i8[4] = v102;
    v23.i64[0] = 0x100000001;
    v23.i64[1] = 0x100000001;
    v27 = v72;
    v17 = v91;
    v20 = v71;
    a4 = v70;
    if (v73)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v24 = v97;
      v22 = v99;
      v19.i8[4] = v102;
      v23.i64[0] = 0x100000001;
      v23.i64[1] = 0x100000001;
      v27 = v72;
      v17 = v91;
      v20 = v71;
      a4 = v70;
    }
  }

  v29 = encode_texel_lns;
  if (!vaddvq_s32(vshlq_u32(v24, mask(vmask4)::shift)))
  {
    v29 = encode_texel_unorm;
  }

  v30 = a4[2];
  if (a4[2])
  {
    v89 = v29;
    v92 = a8;
    v31 = 0;
    v32 = 0;
    v33 = v19.i8[4] & 1;
    v77 = v12 - 1;
    v80 = v11 - 1;
    v34 = a4[1];
    v35 = vdupq_n_s32(0xFE967699);
    v36 = vdupq_n_s32(0x7E967699u);
    v79 = &v10[222].i8[2];
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    v38 = 0uLL;
    v39 = v34;
    v81 = v10;
    v90 = v17;
    v88 = v16;
    v87 = vmovl_s16(v22);
    do
    {
      v40 = v32 + a7;
      if (v32 + a7 >= v77)
      {
        v40 = v77;
      }

      if (v39)
      {
        v41 = 0;
        v42 = *(*(a2 + 2) + 8 * v40);
        v43 = *a4;
        v85 = v32;
        do
        {
          if (v43)
          {
            v44 = 0;
            v86 = v41;
            v45 = v41 + a6;
            if (v41 + a6 >= v80)
            {
              v45 = v80;
            }

            v93 = v45 * v84;
            v46 = &v79[v31];
            v47 = &v10->i32[v31];
            v48 = a5;
            do
            {
              v94 = v31;
              v100 = v37;
              v95 = v38;
              v96 = v36;
              v98 = v35;
              if (v48 >= v84 - 1)
              {
                v49 = v84 - 1;
              }

              else
              {
                v49 = v48;
              }

              v50 = a4;
              v51 = v20;
              v52 = v27;
              v27(v42, 4 * (v49 + v93));
              v53 = (v88)(v92);
              *v54.i64 = v89(v53, v87);
              v27 = v52;
              v20 = v51;
              a4 = v50;
              v36 = vminnmq_f32(v96, v54);
              v38 = vaddq_f32(v95, vmulq_n_f32(v54, v90));
              v35 = vmaxnmq_f32(v98, v54);
              v55 = vextq_s8(v54, v54, 4uLL);
              v37 = vandq_s8(v100, vceqq_f32(vdupq_lane_s32(*v54.f32, 0), vzip1q_s32(v55, v55)));
              *v47 = v54.i32[0];
              v47[216] = v54.i32[1];
              v47[432] = v54.i32[2];
              v47[648] = v54.i32[3];
              *v46 = v51;
              v46[216] = v33;
              ++v44;
              v31 = v94 + 1;
              v43 = *v50;
              ++v48;
              ++v46;
              ++v47;
            }

            while (v44 < v43);
            v34 = v50[1];
            v10 = v81;
            v32 = v85;
            v41 = v86;
          }

          ++v41;
        }

        while (v41 < v34);
        v30 = a4[2];
        v39 = v34;
      }

      ++v32;
    }

    while (v32 < v30);
    v23 = vshrq_n_u32(v37, 0x1FuLL);
    v28 = &unk_1ECF17000;
  }

  else
  {
    v36 = vdupq_n_s32(0x7E967699u);
    v35 = vdupq_n_s32(0xFE967699);
    v38 = 0uLL;
  }

  v56 = *v10;
  v56.i32[1] = v10[54].i32[0];
  v56.i32[2] = v10[108].i32[0];
  v56.i32[3] = v10[162].i32[0];
  v57 = vdivq_f32(v56, vdupq_n_s32(0x477FFF00u));
  v58 = 0uLL;
  if (v20)
  {
    v59 = vcvtq_s32_f32(v56);
    v60.i64[0] = 0x700000007;
    v60.i64[1] = 0x700000007;
    v61 = vandq_s8(v59, v60);
    v62 = vmovn_s32(v61);
    v63.i64[0] = 0x100000001;
    v63.i64[1] = 0x100000001;
    v64 = vcgtq_u32(v61, v63);
    v65.i64[0] = 0x100000001;
    v65.i64[1] = 0x100000001;
    v66 = vaddq_s32(vshlq_n_s32(v61, 2uLL), v65);
    v65.i64[0] = 0x500000005;
    v65.i64[1] = 0x500000005;
    v67 = vcgtq_u32(v61, v65);
    v65.i16[1] = 5;
    v65.i16[3] = 5;
    v68.i64[0] = 0x700000007;
    v68.i64[1] = 0x700000007;
    v69 = vorrq_s8(vshrq_n_u32(vbslq_s8(v64, vbslq_s8(v67, vmlal_u16(v68, v62, *v65.i8), v66), vmull_u16(v62, 0x3000300030003)), 3uLL), vshlq_n_s32(vshrq_n_u32(v59, 0xBuLL), 0xAuLL));
    v67.i64[0] = 0x7B0000007BLL;
    v67.i64[1] = 0x7B0000007BLL;
    v58 = vcvtq_f32_f16(vmovn_s32(vminq_s32(v69, v67)));
  }

  v10[217] = vbslq_s8(vcltzq_s32(vshlq_n_s32(v75, 0x1FuLL)), v58, v57);
  v10[218] = v36;
  v10[219] = v38;
  v10[220] = v35;
  {
    v101 = v23;
    v23 = v101;
    if (v74)
    {
      v28[208] = xmmword_1E3062D20;
      v23 = v101;
    }
  }

  v10[222].i8[0] = vaddvq_s32(vshlq_u32(v23, v28[208])) == 15;
}

double load_texel_u8(char *a1, int a2)
{
  v2 = &a1[a2];
  v3 = vld1_dup_f32(v2);
  *&result = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v3))), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

__n64 swz_texel(unsigned int *a1, __n128 a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0x3F80000000000000;
  result.n64_u32[0] = v3.n128_u32[*a1];
  result.n64_u32[1] = v3.n128_u32[a1[1]];
  return result;
}

double encode_texel_lns(float32x4_t a1, int8x16_t a2)
{
  v2 = vdupq_n_s32(0x477FFF00u);
  v3 = vmulq_f32(a1, v2);
  v4 = *&vshrq_n_u32(a1, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL);
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v6 = *&vandq_s8(a1, vnegq_f32(v5)) | __PAIR128__(0x3F0000003F000000, 0x3F0000003F000000);
  v7 = vcgtq_f32(a1, vdupq_n_s32(0x32800000u));
  v8 = vcgeq_f32(a1, vdupq_n_s32(0x47800000u));
  v9.i64[0] = 0x7000000070;
  v9.i64[1] = 0x7000000070;
  v10.i64[0] = 0x4C0000004C000000;
  v10.i64[1] = 0x4C0000004C000000;
  v11 = vmulq_f32(a1, v10);
  v10.i64[0] = 0xBF000000BF000000;
  v10.i64[1] = 0xBF000000BF000000;
  v12 = vbslq_s8(vcgtq_u32(v4, v9), vmulq_f32(vaddq_f32(v6, v10), vdupq_n_s32(0x45800000u)), v11);
  v10.i64[0] = 0x4300000043000000;
  v10.i64[1] = 0x4300000043000000;
  v13.i64[0] = 0x4400000044000000;
  v13.i64[1] = 0x4400000044000000;
  v14 = vaddq_f32(vbslq_s8(vcgtq_f32(vdupq_n_s32(0x43C00000u), v12), vmulq_f32(v12, vdupq_n_s32(0x3FAAAAABu)), vbslq_s8(vcgeq_f32(vdupq_n_s32(0x44B00000u), v12), vaddq_f32(v12, v10), vmulq_f32(vaddq_f32(v12, v13), vdupq_n_s32(0x3F4CCCCDu)))), vcvtq_f32_u32(vshlq_n_s32(vqsubq_u32(v4, v9), 0xBuLL)));
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vbslq_s8(a2, vandq_s8(vbslq_s8(v8, v2, vaddq_f32(v14, _Q4)), v7), v3).u64[0];
  return result;
}

void load_image_block_fast_ldr(double a1, double a2, double a3, double a4, double a5, float32x4_t a6, uint64_t a7, int *a8, float32x4_t *a9, unsigned __int8 *a10, unsigned int a11, unsigned __int32 a12, __int32 a13)
{
  v14 = *a8;
  v13 = a8[1];
  a9[249].i32[1] = a11;
  a9[249].i32[2] = a12;
  a9[249].i32[3] = a13;
  v15 = a10[1] + a12;
  if (v15 <= a12)
  {
    v22 = vdupq_n_s32(0xFE967699);
    v21 = vdupq_n_s32(0x7E967699u);
    v33.i64[0] = 0x100000001;
    v33.i64[1] = 0x100000001;
    v24 = 0uLL;
  }

  else
  {
    v16 = 0;
    v17 = **(a8 + 2);
    v18 = 4 * v14;
    v19 = v13 - 1;
    v20 = *a10;
    v21 = vdupq_n_s32(0x7E967699u);
    v22 = vdupq_n_s32(0xFE967699);
    v23 = v14 - 1;
    v24 = 0uLL;
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    do
    {
      if (v20 + a11 > a11)
      {
        if (a12 >= v19)
        {
          v26 = v19;
        }

        else
        {
          v26 = a12;
        }

        v27 = v17 + v18 * v26;
        v28 = &a9->i32[v16];
        v29 = v20;
        v30 = a11;
        do
        {
          if (v30 >= v23)
          {
            v31 = v23;
          }

          else
          {
            v31 = v30;
          }

          a6.i32[0] = *(v27 + 4 * v31);
          a6 = vcvtq_f32_u32(vmovl_u16(vmul_s16(*&vmovl_u8(*a6.f32), 0x101010101010101)));
          v21 = vminnmq_f32(v21, a6);
          v24 = vaddq_f32(v24, a6);
          v22 = vmaxnmq_f32(v22, a6);
          v32 = vextq_s8(a6, a6, 4uLL);
          v25 = vandq_s8(v25, vceqq_f32(vdupq_lane_s32(*a6.f32, 0), vzip1q_s32(v32, v32)));
          *v28 = a6.i32[0];
          v28[216] = a6.i32[1];
          v28[432] = a6.i32[2];
          v28[648] = a6.i32[3];
          ++v30;
          ++v16;
          ++v28;
          --v29;
        }

        while (v29);
      }

      ++a12;
    }

    while (a12 != v15);
    v33 = vshrq_n_u32(v25, 0x1FuLL);
  }

  v34 = *a9;
  v34.i32[1] = a9[54].i32[0];
  v34.i32[2] = a9[108].i32[0];
  v34.i32[3] = a9[162].i32[0];
  a9[217] = vdivq_f32(v34, vdupq_n_s32(0x477FFF00u));
  a9[222].i8[2] = 0;
  a9[235].i8[10] = 0;
  a9[218] = v21;
  v21.i8[0] = a10[3];
  v21.f32[0] = v21.u32[0];
  a9[219] = vdivq_f32(v24, vdupq_lane_s32(*v21.f32, 0));
  a9[220] = v22;
  v35 = &unk_1ECF17000;
  {
    v38 = a9;
    v37 = v33;
    v33 = v37;
    v35 = &unk_1ECF17000;
    a9 = v38;
    if (v36)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v33 = v37;
      v35 = &unk_1ECF17000;
      a9 = v38;
    }
  }

  a9[222].i8[0] = vaddvq_s32(vshlq_u32(v33, v35[208])) == 15;
}

uint64_t astcenc_config_init(unsigned int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, float a7)
{
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  *(a6 + 112) = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  *a6 = 0uLL;
  result = validate_block_size(a2, a3, v13);
  if (!result)
  {
    *(a6 + 8) = a2;
    *(a6 + 12) = a3;
    *(a6 + 16) = v13;
    v15 = a3 * a2 * v13;
    v16 = logf(v15);
    result = 6;
    if (a7 >= 0.0 && a7 <= 100.0)
    {
      v19 = 0;
      v20 = &preset_configs_low;
      if (v15 < 0x40)
      {
        v20 = &preset_configs_mid;
      }

      v21 = &preset_configs_high;
      if (v15 >= 25)
      {
        v21 = v20;
      }

      v22 = v21;
      v23 = v16 / 2.3026;
      do
      {
        if (*v22 >= a7)
        {
          break;
        }

        ++v19;
        v22 += 18;
      }

      while (v19 != 6);
      v24 = v19 - 1;
      if (!v19)
      {
        v24 = 0;
      }

      if (v24 == v19)
      {
        v25 = &v21[18 * v19];
        *(a6 + 44) = *(v25 + 1);
        *(a6 + 60) = *(v25 + 5);
        *(a6 + 76) = *(v25 + 9);
        v26 = v25[11] + (v23 * -35.0);
        v27 = v25[12] + (v23 * -19.0);
        if (v26 > v27)
        {
          v27 = v26;
        }

        v28 = *(v25 + 13);
        *(a6 + 84) = v27;
        *(a6 + 88) = v28;
        v29 = *(v25 + 14);
        *(a6 + 92) = v29;
        v30 = *(v25 + 16);
      }

      else
      {
        v31 = &v21[18 * v24];
        v32 = &v21[18 * v19];
        v33 = *v32 - *v31;
        *v17.i32 = (*v32 - a7) / v33;
        *v18.i32 = (a7 - *v31) / v33;
        v34 = vdupq_lane_s32(v18, 0).u64[0];
        v35 = vdupq_lane_s32(v17, 0).u64[0];
        v36.i64[0] = 0x3F0000003F000000;
        v36.i64[1] = 0x3F0000003F000000;
        *(a6 + 44) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v32 + 1)), *v18.i32), vcvtq_f32_u32(*(v31 + 1)), *v17.i32), v36));
        *(a6 + 60) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v32 + 5)), *v18.i32), vcvtq_f32_u32(*(v31 + 5)), *v17.i32), v36));
        *(a6 + 76) = vcvt_s32_f32(vadd_f32(vmla_f32(vmul_f32(v34, vcvt_f32_u32(*(v32 + 9))), v35, vcvt_f32_u32(*(v31 + 9))), 0x3F0000003F000000));
        v37 = vmla_n_f32(vmla_f32(vmul_f32(v34, *(v32 + 11)), v35, *(v31 + 11)), 0xC1980000C20C0000, v23);
        v27 = v37.f32[1];
        if (v37.f32[0] > v37.f32[1])
        {
          v27 = v37.f32[0];
        }

        v38 = (*v18.i32 * v32[13]) + (v31[13] * *v17.i32);
        *(a6 + 84) = v27;
        *(a6 + 88) = v38;
        v29 = vmla_f32(vmul_f32(v34, *(v32 + 14)), v35, *(v31 + 14));
        *(a6 + 92) = v29;
        v30 = vmla_f32(vmul_f32(v34, *(v32 + 16)), v35, *(v31 + 16));
      }

      *(a6 + 100) = v30;
      __asm { FMOV            V2.4S, #1.0 }

      *(a6 + 20) = _Q2;
      *(a6 + 36) = 0;
      *a6 = a1;
      if (a1 >= 2)
      {
        if (a1 - 2 > 1)
        {
          return 5;
        }

        *(a6 + 84) = 1148829696;
        *(a6 + 104) = 0;
        v27 = 999.0;
      }

      LODWORD(_Q2) = a5 & 0xFFFFFF80;
      *&_Q2 = vcnt_s8(*&_Q2);
      LOWORD(_Q2) = vaddlv_u8(*&_Q2);
      if (_Q2)
      {
        return 8;
      }

      LODWORD(_Q2) = a5 & 0x41;
      if ((vaddlv_u8(vcnt_s8(*&_Q2)) & 0x7FE) != 0)
      {
        return 8;
      }

      else if ((a1 & 0xFFFFFFFE) == 2 && (a5 & 2) != 0)
      {
        return 11;
      }

      else
      {
        if (a5)
        {
          v44 = *(a6 + 44);
          if ((v44 + 1) < 4)
          {
            v45 = v44 + 1;
          }

          else
          {
            v45 = 4;
          }

          *(a6 + 44) = v45;
          *(a6 + 24) = 0;
          __asm { FMOV            V2.2S, #1.5 }

          *(a6 + 92) = vmul_f32(v29, _D2);
          *(a6 + 100) = 1065185444;
          *(a6 + 84) = v27 * 1.03;
        }

        else if ((a5 & 0x40) != 0)
        {
          *(a6 + 40) = 1084227584;
          *(a6 + 32) = 1092616192;
        }

        else if ((a5 & 8) != 0)
        {
          *(a6 + 20) = 0x3FA9EB853F2CCCCDLL;
          *(a6 + 28) = 1048408228;
        }

        result = 0;
        *(a6 + 4) = a5;
      }
    }
  }

  return result;
}

uint64_t validate_block_size(int a1, int a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (!is_legal_3d_block_size(a1, a2, a3))
    {
      return 4;
    }
  }

  else if ((is_legal_2d_block_size(a1, a2) & 1) == 0)
  {
    return 4;
  }

  if (a2 * a1 * a3 >= 0xD9)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t astcenc_context_alloc(uint64_t a1, int a2)
{
  LODWORD(memptr) = 1075880919;
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  if (a2)
  {
    operator new();
  }

  return 3;
}

uint64_t astcenc_context_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 144));
    free(*(v1 + 128));
    std::mutex::~mutex((v1 + 816));
    std::condition_variable::~condition_variable((v1 + 744));
    std::mutex::~mutex((v1 + 672));
    std::mutex::~mutex((v1 + 600));
    std::condition_variable::~condition_variable((v1 + 528));
    std::mutex::~mutex((v1 + 456));
    std::mutex::~mutex((v1 + 384));
    std::condition_variable::~condition_variable((v1 + 312));
    std::mutex::~mutex((v1 + 240));

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t astcenc_compress_image(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v54 = v6;
  v51 = v2;
  v69 = *MEMORY[0x1E69E9840];
  if ((*(v1 + 4) & 0x10) != 0)
  {
    return 9;
  }

  v7 = v3;
  v8.i64[0] = 0x500000005;
  v8.i64[1] = 0x500000005;
  if (vmaxv_u16(vmovn_s32(vcgtq_u32(*v3, v8))))
  {
    return 7;
  }

  v10 = v5;
  v11 = v1;
  v12 = *(v1 + 120);
  if (v12 <= v5)
  {
    return 3;
  }

  if (16 * (*(v1 + 8) + *v2 - 1) / *(v1 + 8) * ((*(v1 + 12) + v2[1] - 1) / *(v1 + 12)) * ((*(v1 + 16) + v2[2] - 1) / *(v1 + 16)) > v4)
  {
    return 1;
  }

  if (v12 == 1)
  {
    astcenc_compress_reset(v1);
  }

  if (*(v11 + 36))
  {
    operator new();
  }

  ParallelManager::wait((v11 + 240));
  v13 = *(v11 + 128);
  v49 = *v11;
  v14 = *v13;
  v48 = v13;
  v55 = v13[1];
  v56 = v13[2];
  v61 = v55 * v14 * v56;
  v15 = *v51;
  v16 = v51[2];
  v57 = v14;
  v17 = (v14 + *v51 - 1) / v14;
  v47 = v51[1];
  v53 = (v55 + v47 - 1) / v55;
  v18 = v53 * v17;
  v68 = (*(v11 + 4) & 2) != 0;
  v66 = *(v11 + 20);
  v19 = *(v11 + 144);
  v20 = *(v11 + 112);
  std::mutex::lock((v11 + 456));
  if ((*(v11 + 520) & 1) == 0)
  {
    v21 = (v56 + v16 - 1) / v56 * v18;
    *(v11 + 592) = v20;
    *(v11 + 584) = v21;
    *(v11 + 520) = 1;
    *(v11 + 664) = fmaxf((4096.0 / v21) * 100.0, 1.0);
  }

  std::mutex::unlock((v11 + 456));
  *&v25 = 0x100000000;
  v26 = vmvnq_s8(vceqq_s32(*v7, xmmword_1E3062D20));
  v26.n128_u64[0] = vmovn_s32(v26);
  v26.n128_u16[0] = vmaxv_u16(v26.n128_u64[0]);
  v50 = load_image_block;
  if ((v26.n128_u8[0] & 1) == 0)
  {
    v50 = load_image_block;
    if ((v49 & 0xFFFFFFFE) != 2 && v56 == 1)
    {
      v27 = load_image_block;
      if (!v51[3])
      {
        v27 = load_image_block_fast_ldr;
      }

      v50 = v27;
    }
  }

  add_explicit = atomic_fetch_add_explicit((v11 + 576), 0x10u, memory_order_relaxed);
  v29 = *(v11 + 584);
  v30 = v29 >= add_explicit;
  v31 = v29 - add_explicit;
  if (v31 != 0 && v30)
  {
    v52 = (v19 + 231744 * v10);
    if (v31 >= 0x10)
    {
      v32 = 16;
    }

    else
    {
      v32 = v31;
    }

    do
    {
      v46 = v32;
      v33 = v32 + add_explicit;
      if (add_explicit < v32 + add_explicit)
      {
        do
        {
          v34 = add_explicit % v18 / v17;
          v35 = add_explicit % v18 % v17;
          v36 = v35 * v57;
          if (v56 != 1)
          {
            goto LABEL_42;
          }

          v37 = *(v11 + 36);
          if (!v37)
          {
            goto LABEL_42;
          }

          v38 = v36 + v57;
          if (v15 < v36 + v57)
          {
            v38 = v15;
          }

          v39 = v34 * v55 + v55;
          if (v47 < v39)
          {
            v39 = v47;
          }

          if (v47 <= (v34 * v55))
          {
            goto LABEL_41;
          }

          v40 = 0;
          LODWORD(v25) = 1132396544;
          v26.n128_f32[0] = 0.9 / (((2 * v37 - 2 + v57) * (2 * v37 - 2 + v55)) * 255.0);
          v41 = v34 * v55;
          do
          {
            v42 = v35 * v57;
            if (v15 > v36)
            {
              do
              {
                LODWORD(v25) = *(*(v11 + 136) + 4 * (v42 + v41 * v15));
                if (*&v25 > v26.n128_f32[0])
                {
                  v42 = v38;
                  v41 = v39;
                }

                v40 |= *&v25 > v26.n128_f32[0];
                ++v42;
              }

              while (v42 < v38);
            }

            ++v41;
          }

          while (v41 < v39);
          if ((v40 & 1) == 0)
          {
LABEL_41:
            v43 = 0.0;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v67 = 1;
          }

          else
          {
LABEL_42:
            (v50)(v49, v51, &v60, v48, v26);
            if ((*(v11 + 4) & 4) != 0)
            {
              *&v25 = vmul_n_f32(*(v11 + 20), *(&v65 + 3) * 0.000015259);
              LODWORD(v22) = *(v11 + 28);
              *&v43 = (*(&v65 + 3) * 0.000015259) * *&v22;
              *(&v25 + 2) = *&v43;
              HIDWORD(v25) = *(v11 + 32);
              v66 = v25;
            }
          }

          compress_block(v11, &v60, v54 + (16 * (v35 + (v34 + add_explicit / v18 * v53) * v17)), v52, v43, *&v25, v22, v23, v24);
          ++add_explicit;
        }

        while (add_explicit != v33);
      }

      ParallelManager::complete_task_assignment((v11 + 456), v46);
      add_explicit = atomic_fetch_add_explicit((v11 + 576), 0x10u, memory_order_relaxed);
      v44 = *(v11 + 584);
      v32 = v44 - add_explicit;
      if (v44 - add_explicit >= 0x10)
      {
        v32 = 16;
      }
    }

    while (v44 > add_explicit);
  }

  ParallelManager::wait((v11 + 456));
  v58[0] = &unk_1F5D1BB68;
  v58[1] = v11;
  v59 = v58;
  std::mutex::lock((v11 + 456));
  if (*(v11 + 521))
  {
    goto LABEL_51;
  }

  if (v59)
  {
    (*(*v59 + 48))(v59);
    *(v11 + 521) = 1;
LABEL_51:
    std::mutex::unlock((v11 + 456));
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v58);
    return 0;
  }

  v45 = std::__throw_bad_function_call[abi:nn200100]();
  return astcenc_compress_reset(v45);
}

uint64_t astcenc_compress_reset(uint64_t a1)
{
  if ((*(a1 + 4) & 0x10) != 0)
  {
    return 9;
  }

  result = 0;
  *(a1 + 304) = 0;
  atomic_store(0, (a1 + 360));
  *(a1 + 364) = 0;
  *(a1 + 448) = 1065353216;
  *(a1 + 520) = 0;
  atomic_store(0, (a1 + 576));
  *(a1 + 580) = 0;
  *(a1 + 664) = 1065353216;
  return result;
}

void ParallelManager::wait(std::mutex *this)
{
  m = this;
  v2.__m_ = this;
  v2.__owns_ = 1;
  std::mutex::lock(this);
  if (*&m[1].__m_.__opaque[52] == LODWORD(m[2].__m_.__sig))
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait(m[1].__m_.__opaque, &v2);
  }

  while (*&m[1].__m_.__opaque[52] != LODWORD(m[2].__m_.__sig));
  if (v2.__owns_)
  {
    m = v2.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }
}

void ParallelManager::complete_task_assignment(ParallelManager *this, int a2)
{
  std::mutex::lock(this);
  v4 = *(this + 32);
  v5 = *(this + 31) + a2;
  *(this + 31) = v5;
  v6 = *(this + 53);
  if (v5 == v4)
  {
    if (*(this + 17))
    {
      std::mutex::lock((this + 144));
      (*(this + 17))(100.0);
      *(this + 53) = 1120403456;
      std::mutex::unlock((this + 144));
    }

    std::mutex::unlock(this);
    std::condition_variable::notify_all((this + 72));
  }

  else
  {
    std::mutex::unlock(this);
  }

  if (*(this + 17))
  {
    v7 = (v5 / *(this + 32)) * 100.0;
    if ((v7 - v6) > *(this + 52))
    {
      std::mutex::lock((this + 144));
      if ((v7 - *(this + 53)) > *(this + 52))
      {
        (*(this + 17))(v7);
        *(this + 53) = v7;
      }

      std::mutex::unlock((this + 144));
    }
  }
}

char *astcenc_get_error_string(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E8722580[a1];
  }
}

void astcenc_context::~astcenc_context(astcenc_context *this)
{
  std::mutex::~mutex((this + 816));
  std::condition_variable::~condition_variable((this + 744));
  std::mutex::~mutex((this + 672));
  std::mutex::~mutex((this + 600));
  std::condition_variable::~condition_variable(this + 11);
  std::mutex::~mutex((this + 456));
  std::mutex::~mutex(this + 6);
  std::condition_variable::~condition_variable((this + 312));
  std::mutex::~mutex((this + 240));
}

__n128 std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0>,unsigned int ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1BAD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D1BB68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 136);
  if (result)
  {
    result = MEMORY[0x1E69064F0](result, 0x1000C8052888210);
    v2 = *(a1 + 8);
  }

  *(v2 + 136) = 0;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t is_legal_2d_block_size(int a1, int a2)
{
  v2 = a2 | (a1 << 8);
  result = 1;
  if (v2 > 2564)
  {
    v4 = (v2 - 2565) > 5 || ((1 << (v2 - 5)) & 0x2B) == 0;
    if (v4 && v2 != 3082 && v2 != 3084)
    {
      return 0;
    }
  }

  else if (v2 > 2052)
  {
    v5 = v2 - 2053;
    if (v5 > 3 || v5 == 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1284) >= 2 && (v2 - 1541) >= 2 && v2 != 1028)
  {
    return 0;
  }

  return result;
}

uint64_t is_legal_3d_block_size(int a1, int a2, int a3)
{
  v3 = (a2 << 8) | (a1 << 16) | a3;
  result = 1;
  if (v3 > 328963)
  {
    v5 = (v3 - 328964) >= 2 && (v3 - 394757) >= 2;
    v6 = 394501;
LABEL_8:
    if (v5 && v3 != v6)
    {
      return 0;
    }

    return result;
  }

  if (v3 > 263170)
  {
    v5 = (v3 - 263171) >= 2;
    v6 = 328708;
    goto LABEL_8;
  }

  if (v3 != 197379 && v3 != 262915)
  {
    return 0;
  }

  return result;
}

unint64_t symbolic_to_physical(unint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (v5 == 2)
  {
    v8 = 0;
    *a3 = -516;
    v9 = a3 + 9;
    do
    {
      *(v9 - 1) = *&a2[v8 + 20];
      v9 += 2;
      v8 += 4;
    }

    while (v8 != 16);
    return result;
  }

  if (v5 == 1)
  {
    v6 = 0;
    *a3 = -4;
    v7 = a3 + 9;
    do
    {
      *(v7 - 1) = *&a2[v6 + 20];
      v7 += 2;
      v6 += 4;
    }

    while (v6 != 16);
    return result;
  }

  v10 = a2[1];
  v11 = *(result + 2 * *(a2 + 2) + 11300848);
  v70 = 0uLL;
  v12 = result + 6 * v11 + 11304944;
  v13 = *(result + 129888 * *(result + 6 * v11 + 11304946) + 594);
  v14 = *(v12 + 3);
  v15 = -1.0;
  if (v14 <= 0x14)
  {
    v15 = flt_1E3113190[v14];
  }

  v16 = *(v12 + 5) & 1;
  v17 = v13 << v16;
  if (v14 > 0x14)
  {
    v18 = -896;
  }

  else
  {
    v18 = 128 - (((ise_sizes[v14] >> 5) | 1) + v17 * (ise_sizes[v14] & 0x3F) - 1) / ((ise_sizes[v14] >> 5) | 1u);
  }

  v19 = &quant_and_xfer_tables + 226 * *(v12 + 3);
  if (*(v12 + 5))
  {
    if (v13)
    {
      v24 = v19 + 32;
      v25 = a2 + 84;
      v26 = v69;
      do
      {
        v27 = ((v15 * vcvts_n_f32_u32(*(v25 - 32), 6uLL)) + 0.5);
        v28 = *v25++;
        *(v26 - 1) = v24[v27];
        *v26 = v24[((v15 * vcvts_n_f32_u32(v28, 6uLL)) + 0.5)];
        v26 += 2;
        --v13;
      }

      while (v13);
    }
  }

  else if (v13)
  {
    v20 = a2 + 52;
    v21 = v19 + 32;
    v22 = &v68;
    do
    {
      v23 = *v20++;
      *v22++ = v21[((v15 * vcvts_n_f32_u32(v23, 6uLL)) + 0.5)];
      --v13;
    }

    while (v13);
  }

  encode_ise(v14, v17, &v68, &v70, 0);
  v29 = vrev64q_s8(v70);
  *a3 = vrbitq_s8(vextq_s8(v29, v29, 8uLL));
  v30 = *(a2 + 2);
  *a3 = v30;
  v31 = (v30 >> 8) & 7;
  v32 = (8 * v10 + 24) & 0x18;
  *(a3 + 1) = *(a3 + 1) & 0xE0 | v32 | BYTE1(v30) & 7;
  v33 = *(a3 + 2);
  if (v10 >= 2)
  {
    v34 = *(a2 + 3);
    *(a3 + 1) = v32 | (32 * v34) | v31;
    v35 = (v34 >> 3) & 7;
    v36 = v33 & 0xF8 | (v34 >> 3) & 7;
    *(a3 + 2) = v36;
    v37 = (*(a2 + 3) >> 3) & 0x78;
    *(a3 + 2) = v36 & 0x87 | (*(a2 + 3) >> 3) & 0x78;
    v38 = *(a3 + 3);
    v39 = (a2 + 8);
    if (a2[2])
    {
      v40 = *v39;
      *(a3 + 2) = v37 | v35;
      *(a3 + 3) = v38 & 0xE0 | (2 * (v40 & 0xF));
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v53 = 4;
      v54 = a2 + 8;
      v55 = v10;
      do
      {
        v56 = *v54++;
        v57 = v56 >> 2;
        if ((v56 >> 2) < v53)
        {
          v53 = v57;
        }

        --v55;
      }

      while (v55);
      v58 = 2;
      if (v53 == 3)
      {
        v59 = 2;
      }

      else
      {
        v59 = v53;
      }

      v60 = v59 + 1;
      v61 = a2 + 8;
      v62 = v10;
      do
      {
        v63 = *v61++;
        v60 |= ((v63 >> 2) - v59) << v58++;
        --v62;
      }

      while (v62);
      v64 = v10 + 2;
      v65 = v10;
      do
      {
        v66 = *v39++;
        v60 |= (v66 & 3) << v64;
        v64 += 2;
        --v65;
      }

      while (v65);
      v18 -= 3 * v10 - 4;
      *(a3 + 2) = v35 | (v60 << 7) | v37;
      *(a3 + 3) = v38 & 0xE0 | (v60 >> 1) & 0x1F;
      *(a3 + (v18 >> 3)) = *(a3 + (v18 >> 3)) & ~(~(-1 << (3 * v10 - 4)) << (v18 & 7)) | (((v60 >> 6) & ~(-1 << (3 * v10 - 4))) << (v18 & 7));
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v41 = a2[8];
  *(a3 + 1) = v32 | (32 * v41) | v31;
  *(a3 + 2) = v33 & 0xFE | ((v41 & 8) != 0);
  if (v16)
  {
LABEL_27:
    *(a3 + ((v18 - 2) >> 3)) = *(a3 + ((v18 - 2) >> 3)) & ~(3 << ((v18 - 2) & 7)) | ((a2[3] & 3) << ((v18 - 2) & 7));
  }

LABEL_28:
  v42 = *(a2 + 3);
  v43 = a2[1];
  if (a2[1])
  {
    v44 = 0;
    v45 = 0;
    v46 = a2 + 20;
    do
    {
      v47 = ((a2[v44 + 8] >> 1) & 0x7E) + 2;
      v48 = &v67[v45];
      v49 = v46;
      v50 = v47;
      do
      {
        v51 = *v49++;
        *v48++ = color_uquant_to_scrambled_pquant_tables[256 * v42 - 1024 + v51];
        --v50;
      }

      while (v50);
      v45 += v47;
      ++v44;
      v46 += 8;
    }

    while (v44 != v43);
  }

  else
  {
    v45 = 0;
  }

  if (v43 == 1)
  {
    v52 = 17;
  }

  else
  {
    v52 = 29;
  }

  return encode_ise(v42, v45, v67, a3, v52);
}

int32x4_t rgba_delta_unpack(int32x4_t *a1, int32x4_t *a2, uint32x4_t a3, int8x16_t a4)
{
  v4.i64[0] = 0x8000000080;
  v4.i64[1] = 0x8000000080;
  v5 = vorrq_s8(vshrq_n_u32(a3, 1uLL), vandq_s8(a4, v4));
  v6 = vshrq_n_u32(a4, 1uLL);
  v4.i64[0] = 0x3F0000003FLL;
  v4.i64[1] = 0x3F0000003FLL;
  v7.i64[0] = 0x2000000020;
  v7.i64[1] = 0x2000000020;
  v8 = vorrq_s8((*&vtstq_s32(v6, v7) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), vandq_s8(v6, v4));
  v9 = vaddq_s32(v8, v5);
  if (v8.i32[0] + v8.i32[1] + v8.i32[2] < 0)
  {
    v10.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v5, 2), v5), 1uLL).u64[0];
    v10.i64[1] = v5.i64[1];
    v5.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v9, 2), v9), 1uLL).u64[0];
    v5.i64[1] = v9.i64[1];
    v9 = v10;
  }

  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  *a1 = vminq_s32(vmaxq_s32(v5, 0), v11);
  result = vminq_s32(vmaxq_s32(v9, 0), v11);
  *a2 = result;
  return result;
}

void unpack_color_endpoints(int a1, int a2, unsigned __int8 *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, __n128 *a7, __n128 a8, int32x4_t a9, int32x4_t a10, int32x4_t a11)
{
  *a4 = 0;
  *a5 = 0;
  switch(a2)
  {
    case 0:
      v17 = *a3;
      v18 = a3[1];
      goto LABEL_102;
    case 1:
      v113 = a3[1];
      v17 = v113 & 0xC0 | (*a3 >> 2);
      v18 = v17 + (v113 & 0x3F);
      if (v18 >= 0xFF)
      {
        v18 = 255;
      }

LABEL_102:
      a8.n128_u32[3] = 255;
      LODWORD(v114) = v17;
      DWORD1(v114) = v17;
      *(&v114 + 1) = v17 | 0xFF00000000;
      a8.n128_u32[0] = v18;
      *a6 = v114;
      a8.n128_u32[1] = v18;
      a8.n128_u32[2] = v18;
      goto LABEL_108;
    case 2:
      *a4 = 1;
      v37 = *a3;
      v38 = a3[1];
      v39 = 16 * v37 - 8;
      v40 = v38 >= v37;
      if (v38 >= v37)
      {
        v41 = v37 << 8;
      }

      else
      {
        v41 = (v38 << 8) | 0x80;
      }

      if (v40)
      {
        v42 = 16 * v38;
      }

      else
      {
        v42 = v39;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = v41;
      a8.n128_u32[1] = v41;
      v43.n128_u32[3] = 30720;
      a8.n128_u32[2] = v41;
      v44 = 16 * v42;
      goto LABEL_42;
    case 3:
      *a4 = 1;
      v57 = *a3;
      v58 = *a3;
      v59 = a3[1];
      v60 = (16 * v59) & 0xF00 | (2 * v58);
      v61 = (16 * v59) & 0xE00 | (4 * (v58 & 0x7F));
      v62 = v57 >= 0;
      if (v57 < 0)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      if (v62)
      {
        v64 = 30;
      }

      else
      {
        v64 = 124;
      }

      if (v62)
      {
        v61 = v60;
      }

      v65 = ((v59 << v63) & v64) + v61;
      if (v65 >= 0xFFF)
      {
        v65 = 4095;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * v61;
      a8.n128_u32[1] = 16 * v61;
      v43.n128_u32[3] = 30720;
      a8.n128_u32[2] = 16 * v61;
      v44 = 16 * v65;
LABEL_42:
      v43.n128_u32[0] = v44;
      *a6 = a8;
      v43.n128_u32[1] = v44;
      goto LABEL_95;
    case 4:
      a8.n128_u8[0] = *a3;
      v21 = a8.n128_u64[0];
      v21.i8[2] = a3[2];
      v22 = vzip1_s16(v21, v21);
      v22.i16[2] = a8.n128_u16[0];
      a8.n128_u8[0] = a3[1];
      v23 = a8.n128_u64[0];
      v23.i8[2] = a3[3];
      v24 = vzip1_s16(v23, v23);
      v24.i16[2] = a8.n128_u16[0];
      v25 = vmovl_u16(v22);
      v26.i64[0] = 0xFF000000FFLL;
      v26.i64[1] = 0xFF000000FFLL;
      *a6 = vandq_s8(v25, v26);
      a8 = vandq_s8(vmovl_u16(v24), v26);
      goto LABEL_108;
    case 5:
      a8.n128_u8[0] = a3[1];
      a8.n128_u8[4] = a3[3];
      v115 = *&vtst_s32(a8.n128_u64[0], 0x4000000040) & 0xFFFFFF80FFFFFF80;
      *a9.i8 = vorr_s8(v115, vand_s8(a8.n128_u64[0], 0x7E0000007ELL));
      LOBYTE(v115) = *a3;
      BYTE4(v115) = a3[2];
      a8.n128_u64[0] = vorr_s8(vand_s8(vadd_s32(a8.n128_u64[0], a8.n128_u64[0]), 0x10000000100), vand_s8(v115, 0xFF000000FFLL));
      *a9.i8 = vmin_s32(vmax_s32(vsra_n_u32(vshr_n_s32(*a9.i8, 1uLL), a8.n128_u64[0], 1uLL), 0), 0xFF000000FFLL);
      v116 = vzip1q_s32(a9, a9);
      v116.i32[2] = a9.i32[0];
      a8.n128_u64[0] = vshr_n_u32(a8.n128_u64[0], 1uLL);
      v117 = vzip1q_s32(a8, a8);
      v117.i32[2] = a8.n128_u32[0];
      *a6 = v117;
      *a7 = v116;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 6:
      v126.i32[0] = *a3;
      v126.i32[1] = a3[1];
      v126.i64[1] = a3[2];
      v127 = v126;
      v127.n128_u32[3] = 255;
      v128 = vmulq_s32(vdupq_n_s32(a3[3]), v126);
      *a7 = v127;
      a8 = vshrq_n_s32(v128, 8uLL);
      a8.n128_u32[3] = 255;
      goto LABEL_112;
    case 7:
      *a4 = 1;
      v66 = *a3;
      v67 = a3[1];
      v68 = a3[2];
      v69 = a3[3];
      v70 = (v68 >> 4) & 8 | (v67 >> 5) & 4;
      v71 = v66 >> 6 == 3;
      if (v66 >> 6 == 3)
      {
        v72 = 5;
      }

      else
      {
        v72 = 4;
      }

      if (v66 >> 6 == 3)
      {
        v73 = 0;
      }

      else
      {
        v73 = v66 >> 6;
      }

      v62 = v70 == 12;
      v74 = v70 == 12;
      v75 = v70 >> 2;
      if (v62)
      {
        v75 = v73;
      }

      else
      {
        v72 = v66 >> 6;
      }

      v76 = (v67 >> 6) & 1;
      v77 = (v67 >> 5) & 1;
      v78 = (v68 >> 6) & 1;
      v79 = (v68 >> 5) & 1;
      v80 = (v69 >> 6) & 1;
      v81 = 1 << v72;
      v82 = v76 << 6;
      if (((1 << v72) & 0x30) == 0)
      {
        v82 = 0;
      }

      v83 = v82 & 0xFFFFFFE0 | v67 & 0x1F;
      v84 = 32 * v77;
      v85 = v78 << 6;
      if ((v81 & 0x30) == 0)
      {
        v85 = 0;
      }

      if ((v81 & 0x3A) == 0)
      {
        v84 = 0;
      }

      v86 = v83 | v84;
      v87 = v85 & 0xFFFFFFE0 | v68 & 0x1F;
      v88 = 32 * v79;
      if ((v81 & 0x3A) == 0)
      {
        v88 = 0;
      }

      v89 = v87 | v88;
      v90 = (16 * v81) & (v79 << 6);
      v91 = (v69 >> 1) & 0x40;
      if ((v81 & 0x3B) == 0)
      {
        v91 = 0;
      }

      v92 = v78 << 7;
      if (v72 > 3)
      {
        v92 = 0;
      }

      v93 = v77 << 8;
      v94 = v76 << 8;
      if ((v81 & 0xA) == 0)
      {
        v94 = 0;
      }

      if ((v81 & 5) == 0)
      {
        v93 = 0;
      }

      v95 = v76 << 9;
      if ((v81 & 5) == 0)
      {
        v95 = 0;
      }

      v96 = v79 << 10;
      if (v72)
      {
        v96 = 0;
      }

      v97 = hdr_rgbo_unpack(unsigned char const*,vint4 &,vint4 &)::shamts[v72];
      v98 = (v92 & 0xFFFFFFC0 | v66 & 0x3F | v96 | v91 | v90 | (8 * v81) & (v80 << 7) | v93 | v94 | v95 | (16 * v69) & (v81 << 8) & 0x200 | (v81 << 9) & (v80 << 10)) << v97;
      v99 = v86 << v97;
      v100 = v89 << v97;
      v101 = !v74 || !v71;
      if (v74 && v71)
      {
        v102 = v100;
      }

      else
      {
        v102 = v98 - v100;
      }

      if (v101)
      {
        v103 = v98 - v99;
      }

      else
      {
        v103 = v99;
      }

      if (v75 == 1)
      {
        v104 = v98;
      }

      else
      {
        v104 = v103;
      }

      if (v75 == 1)
      {
        v105 = v103;
      }

      else
      {
        v105 = v98;
      }

      v106 = v75 == 2;
      if (v75 == 2)
      {
        v107 = v98;
      }

      else
      {
        v107 = v102;
      }

      if (!v106)
      {
        v103 = v104;
        v102 = v105;
      }

      if ((v81 & 0x3D) != 0)
      {
        v108 = 63;
      }

      else
      {
        v108 = 31;
      }

      v109 = v108 & v69;
      v110 = v80 << 6;
      if ((v81 & 0x2D) == 0)
      {
        v110 = 0;
      }

      v111 = (v69 & (32 * v81) & 0x80 | v110 | v109) << v97;
      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * ((v102 - v111) & ~((v102 - v111) >> 31));
      a8.n128_u32[1] = 16 * ((v103 - v111) & ~((v103 - v111) >> 31));
      a8.n128_u32[2] = 16 * ((v107 - v111) & ~((v107 - v111) >> 31));
      v43.n128_u32[3] = 30720;
      *a6 = a8;
      v43.n128_u32[0] = 16 * (v102 & ~(v102 >> 31));
      v44 = 16 * (v107 & ~(v107 >> 31));
      v43.n128_u32[1] = 16 * (v103 & ~(v103 >> 31));
LABEL_95:
      v43.n128_u32[2] = v44;
      *a7 = v43;
      goto LABEL_96;
    case 8:
      a8.n128_u32[3] = 0;
      a8.n128_u32[0] = *a3;
      a8.n128_u32[1] = a3[2];
      a8.n128_u32[2] = a3[4];
      v138.i32[0] = a3[1];
      v138.i32[1] = a3[3];
      v138.i64[1] = a3[5];
      if (a8.n128_u32[1] + a8.n128_u32[0] + a8.n128_u32[2] > v138.i32[1] + v138.i32[0] + v138.i32[2])
      {
        v139.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a8, 2), a8), 1uLL).u64[0];
        v139.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v138, 2), v138), 1uLL).u64[0];
        a8.n128_u64[1] = a3[5];
        v138 = v139;
      }

      *a6 = a8;
      *a7 = v138;
      goto LABEL_125;
    case 9:
      v29.i32[0] = *a3;
      v29.i32[1] = a3[2];
      v29.i64[1] = a3[4];
      v30.i32[0] = a3[1];
      v30.i32[1] = a3[3];
      v30.i64[1] = a3[5];
      v31 = vshrq_n_u32(v30, 1uLL);
      v32 = vsraq_n_u32((*&v30 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v29, 1uLL);
      v33 = vorrq_s8((*&vtstq_s32((*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v31 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v34 = vaddq_s32(v33, v32);
      if (v33.i32[0] + v33.i32[1] + v33.i32[2] < 0)
      {
        v35.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v32, 2), v32), 1uLL).u64[0];
        v35.i64[1] = v32.i64[1];
        v32.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v34, 2), v34), 1uLL).u64[0];
        v32.i64[1] = v34.i64[1];
        v34 = v35;
      }

      v36.i64[0] = 0xFF000000FFLL;
      v36.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v32, 0), v36);
      a8 = vminq_s32(vmaxq_s32(v34, 0), v36);
      *a7 = a8;
LABEL_125:
      *(a6 + 12) = 255;
      a7->n128_u32[3] = 255;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 10:
      v129.i32[0] = *a3;
      v129.i32[1] = a3[1];
      v130 = a3[4];
      v129.i32[2] = a3[2];
      v129.i32[3] = v130;
      v131 = v129;
      v131.n128_u32[3] = a3[5];
      v132 = vmulq_s32(vdupq_n_s32(a3[3]), v129);
      *a7 = v131;
      a8 = vshrq_n_s32(v132, 8uLL);
      a8.n128_u32[3] = v130;
LABEL_112:
      *a6 = a8;
      goto LABEL_113;
    case 11:
      *a4 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
LABEL_96:
      if (a1 == 3)
      {
        *(a6 + 12) = 30720;
        a7->n128_u32[3] = 30720;
        v112 = 1;
        *a5 = 1;
        goto LABEL_120;
      }

      *(a6 + 12) = 255;
      a7->n128_u32[3] = 255;
      *a5 = 0;
      if (a1)
      {
LABEL_114:
        if (a1 == 1)
        {
          if ((*a4 & 1) != 0 || *a5 == 1)
          {
            *a6 = xmmword_1E31131F0;
            *a7 = xmmword_1E31131F0;
            *a4 = 0;
            *a5 = 0;
          }

          v133 = vdupq_n_s32(0x101u);
          *a6 = vmulq_s32(*a6, v133);
          v134 = *a7;
          goto LABEL_121;
        }

        v112 = *a5;
LABEL_120:
        a8.n128_u32[0] = *a4;
        a8.n128_u32[1] = v112;
        a8.n128_u64[0] = vneg_s32(a8.n128_u64[0]);
        v135 = vzip1q_s32(a8, a8);
        v135.i32[2] = a8.n128_u32[0];
        v136.i64[0] = 0x100000001;
        v136.i64[1] = 0x100000001;
        v134 = vbslq_s8(v135, v136, vdupq_n_s32(0x101u));
        *a6 = vmulq_s32(v134, *a6);
        v133 = *a7;
LABEL_121:
        v137 = vmulq_s32(v134, v133);
        goto LABEL_130;
      }

LABEL_126:
      if ((*a4 & 1) != 0 || *a5 == 1)
      {
        *a6 = xmmword_1E31131F0;
        *a7 = xmmword_1E31131F0;
        *a4 = 0;
        *a5 = 0;
      }

      v140 = vshlq_n_s32(*a6, 8uLL);
      v140.i64[0] |= 0x8000000080uLL;
      v140.i32[2] |= 0x80u;
      v141 = vdupq_n_s32(0x101u);
      v140.i32[3] = vmulq_s32(*a6, v141).i32[3];
      *a6 = v140;
      v142 = vshlq_n_s32(*a7, 8uLL);
      v137.i64[0] = v142.i64[0] | 0x8000000080;
      v137.i32[2] = v142.i32[2] | 0x80;
      v137.i32[3] = vmulq_s32(*a7, v141).i32[3];
LABEL_130:
      *a7 = v137;
      return;
    case 12:
      a10.i32[0] = *a3;
      a10.i32[1] = a3[2];
      a10.i32[2] = a3[4];
      a8 = a10;
      a8.n128_u32[3] = a3[6];
      a11.i32[0] = a3[1];
      a11.i32[1] = a3[3];
      a11.i32[2] = a3[5];
      v27 = a11;
      v27.i32[3] = a3[7];
      if (a10.i32[1] + a10.i32[0] + a10.i32[2] > (a11.i32[1] + a11.i32[0] + a11.i32[2]))
      {
        v28.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a10, 2), a8), 1uLL).u64[0];
        v28.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a11, 2), v27), 1uLL).u64[0];
        a8.n128_u64[1] = v27.u64[1];
        v27 = v28;
      }

      *a6 = a8;
      *a7 = v27;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 13:
      v118.i32[0] = *a3;
      v118.i32[1] = a3[2];
      v118.i32[2] = a3[4];
      v118.i32[3] = a3[6];
      v119.i32[0] = a3[1];
      v119.i32[1] = a3[3];
      v119.i32[2] = a3[5];
      v119.i32[3] = a3[7];
      v120 = vshrq_n_u32(v119, 1uLL);
      v121 = vsraq_n_u32((*&v119 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v118, 1uLL);
      v122 = vorrq_s8((*&vtstq_s32((*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v120 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v123 = vaddq_s32(v122, v121);
      if (v122.i32[0] + v122.i32[1] + v122.i32[2] < 0)
      {
        v124.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v121, 2), v121), 1uLL).u64[0];
        v124.i64[1] = v121.i64[1];
        v121.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v123, 2), v123), 1uLL).u64[0];
        v121.i64[1] = v123.i64[1];
        v123 = v124;
      }

      v125.i64[0] = 0xFF000000FFLL;
      v125.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v121, 0), v125);
      a8 = vminq_s32(vmaxq_s32(v123, 0), v125);
LABEL_108:
      *a7 = a8;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 14:
      *a4 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
      v19 = a3[6];
      v20 = a3[7];
      goto LABEL_29;
    case 15:
      *a4 = 1;
      *a5 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
      v45 = a3[6];
      v46 = a3[7];
      v47 = (v46 >> 6) & 2 | (v45 >> 7);
      v48 = v45 & 0x7F;
      v49 = v46 & 0x7F;
      v50 = (v49 << (v47 + 1)) & 0x780 | v48;
      v51 = v50 << (4 - v47);
      v52 = ((0x3Fu >> v47) & v46 ^ (0x20u >> v47)) - (0x20u >> v47) + v50;
      v53 = v52 << (4 - v47);
      if (v53 >= 4095)
      {
        v53 = 4095;
      }

      if (v52 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v55 = 32 * v48;
      v56 = 32 * v49;
      if (v47 == 3)
      {
        v54 = v56;
      }

      else
      {
        v55 = v51;
      }

      v19 = 16 * v55;
      v20 = 16 * v54;
LABEL_29:
      *(a6 + 12) = v19;
      a7->n128_u32[3] = v20;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    default:
LABEL_113:
      if (a1)
      {
        goto LABEL_114;
      }

      goto LABEL_126;
  }
}

__n128 hdr_rgb_unpack(unsigned __int8 *a1, _OWORD *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = (v8 >> 6) & 2 | (v7 >> 7);
  if (v9 == 3)
  {
    HIDWORD(v10) = 30720;
    LODWORD(v10) = v3 << 8;
    DWORD1(v10) = v5 << 8;
    DWORD2(v10) = (v7 & 0x7F) << 9;
    v11 = v4 << 8;
    *a2 = v10;
    v12 = v6 << 8;
    v13 = (v8 & 0x7F) << 9;
  }

  else
  {
    v14 = (v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4;
    v15 = v7 & 0x7F;
    v16 = v8 & 0x7F;
    v17 = (v6 >> 6) & 1;
    v18 = (v7 >> 6) & 1;
    v19 = (v8 >> 6) & 1;
    v20 = (v7 >> 5) & 1;
    v21 = (v8 >> 5) & 1;
    v22 = 1 << ((v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4);
    v23 = (8 * v5) & 0x200;
    if ((v22 & 0xA4) == 0)
    {
      v23 = 0;
    }

    v24 = v20 << 9;
    if ((v22 & 0x50) == 0)
    {
      v24 = 0;
    }

    v25 = v21 << 10;
    if ((v22 & 0x50) == 0)
    {
      v25 = 0;
    }

    v26 = v17 << 10;
    if ((v22 & 0xA0) == 0)
    {
      v26 = 0;
    }

    v27 = v18 << 11;
    if (v14 < 6)
    {
      v27 = 0;
    }

    v28 = v27 & 0xFFFFFEFF | (((v4 >> 6) & 1) << 8) | v23 | (v22 << 6) & (v18 << 9) | v24 | v25 | v26 | v3;
    v29 = (16 * v22) & (v17 << 6) & 0xFFFFFFC0 | v4 & 0x3F;
    v30 = v19 << 6;
    if ((v22 & 0xE8) != 0)
    {
      v31 = v19 << 6;
    }

    else
    {
      v31 = 0;
    }

    v32 = v29 | v31 | (4 * v22) & (v18 << 7);
    if ((v22 & 0x5B) != 0)
    {
      v33 = 127;
    }

    else
    {
      v33 = 63;
    }

    v34 = v33 & v6;
    v35 = v33 & v5;
    v36 = v19 << 7;
    if ((v22 & 0x12) == 0)
    {
      v36 = 0;
    }

    v37 = v34 | v36;
    if ((v22 & 0x12) != 0)
    {
      v38 = v18 << 7;
    }

    else
    {
      v38 = 0;
    }

    v39 = v35 | v38;
    v40 = 32 * v20;
    v41 = 32 * v21;
    if ((v22 & 0xAF) == 0)
    {
      v41 = 0;
    }

    v42 = v41 | v16;
    if ((v22 & 0xAF) == 0)
    {
      v40 = 0;
    }

    v43 = v40 | v15;
    v44 = v18 << 6;
    if ((v22 & 5) == 0)
    {
      v30 = 0;
    }

    v45 = v42 | v30;
    if ((v22 & 5) != 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = -hdr_rgb_unpack(unsigned char const*,vint4 &,vint4 &)::dbits_tab[v14];
    v48 = (v43 | v46) << v47 >> v47;
    v49 = v45 << v47 >> v47;
    v50 = (v14 >> 1) ^ 3;
    v51 = v28 << v50;
    v52 = v28 - v39;
    v53 = v52 << v50;
    v54 = v28 - v37;
    v55 = v54 << v50;
    v56 = (v52 - (v32 + v48)) << v50;
    v57 = (v54 - (v32 + v49)) << v50;
    v58 = ((v28 - v32) << v50) & ~(((v28 - v32) << v50) >> 31);
    if (v58 >= 4095)
    {
      v58 = 4095;
    }

    v59 = v56 & ~(v56 >> 31);
    if (v59 >= 4095)
    {
      v59 = 4095;
    }

    v60 = v57 & ~(v57 >> 31);
    if (v60 >= 4095)
    {
      v60 = 4095;
    }

    if (v51 >= 0xFFF)
    {
      v51 = 4095;
    }

    v61 = v53 & ~(v53 >> 31);
    if (v61 >= 4095)
    {
      v61 = 4095;
    }

    if ((v55 & ~(v55 >> 31)) >= 4095)
    {
      v62 = 4095;
    }

    else
    {
      v62 = v55 & ~(v55 >> 31);
    }

    if (v9 == 1)
    {
      v63 = v61;
    }

    else
    {
      v63 = v51;
    }

    if (v9 == 1)
    {
      v64 = v51;
    }

    else
    {
      v64 = v61;
    }

    if (v9 == 1)
    {
      v65 = v59;
    }

    else
    {
      v65 = v58;
    }

    if (v9 == 1)
    {
      v66 = v58;
    }

    else
    {
      v66 = v59;
    }

    v67 = v9 == 2;
    if (v9 == 2)
    {
      v68 = v62;
    }

    else
    {
      v68 = v63;
    }

    if (v67)
    {
      v62 = v51;
    }

    else
    {
      v61 = v64;
    }

    if (v67)
    {
      v69 = v60;
    }

    else
    {
      v69 = v65;
    }

    if (v67)
    {
      v60 = v58;
    }

    else
    {
      v59 = v66;
    }

    HIDWORD(v70) = 30720;
    LODWORD(v70) = 16 * v69;
    DWORD1(v70) = 16 * v59;
    v11 = 16 * v68;
    DWORD2(v70) = 16 * v60;
    *a2 = v70;
    v12 = 16 * v61;
    v13 = 16 * v62;
  }

  result.n128_u64[0] = __PAIR64__(v12, v11);
  result.n128_u64[1] = v13 | 0x780000000000;
  *a3 = result;
  return result;
}

uint64_t compute_ideal_endpoint_formats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v379 = v14;
  v375 = v15;
  v376 = v16;
  v377 = v17;
  v378 = v18;
  v20 = v19;
  v22 = v21;
  v23 = v13;
  v425[44] = *MEMORY[0x1E69E9840];
  v25 = v13 + 224;
  v24 = *v13;
  v394 = *(v21 + 3554);
  v382 = *(v21 + 3770);
  compute_avgs_and_dirs_3_comp_rgb(v13, v21, v420, v26, v27, v28, v29, v30);
  v31 = v24;
  v32 = 0;
  v33 = v23 + 4;
  v34 = v22 + 324;
  v35 = v22 + 108;
  v36 = v22 + 216;
  v37 = v20 + 16;
  v38 = v20 + 80;
  v39 = xmmword_1E310F6E0;
  v40 = vdupq_n_s32(0x3F13CD3Au);
  v41.i64[0] = 0x400000004;
  v41.i64[1] = 0x400000004;
  v42 = 0uLL;
  v43 = &unk_1ECF17000;
  v44.i64[0] = 0x100000001;
  v44.i64[1] = 0x100000001;
  v391 = v23 + 4;
  v393 = v31;
  v387 = v20 + 80;
  v389 = v20 + 16;
  do
  {
    v45 = &v420[2 * v32];
    v46 = v45[1];
    v47 = vmulq_f32(v46, v46);
    *v47.i8 = vadd_f32(*&vextq_s8(v47, v47, 8uLL), *v47.i8);
    v48 = vpadd_f32(*v47.i8, *v47.i8);
    v49 = v39;
    if (*v48.i32 != 0.0)
    {
      v49 = vdivq_f32(v46, vsqrtq_f32(vdupq_lane_s32(v48, 0)));
    }

    v50 = *v45;
    v51 = vmulq_f32(v50, v50);
    *v51.i8 = vadd_f32(*&vextq_s8(v51, v51, 8uLL), *v51.i8);
    v52 = vpadd_f32(*v51.i8, *v51.i8);
    v53 = v39;
    if (*v52.i32 != 0.0)
    {
      v53 = vdivq_f32(v50, vsqrtq_f32(vdupq_lane_s32(v52, 0)));
    }

    v54 = 0;
    v55 = vmulq_f32(v50, v49);
    v55.f32[0] = v55.f32[2] + vaddv_f32(*v55.f32);
    v56 = vdupq_lane_s32(*v55.f32, 0);
    v56.i32[3] = 0;
    v57 = vsubq_f32(v50, vmulq_f32(v49, v56));
    v58 = vmulq_f32(v50, v40);
    v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
    v59 = vdupq_lane_s32(*v58.f32, 0);
    v59.i32[3] = 0;
    v60 = vaddq_f32(v50, vmulq_f32(v59, xmmword_1E3113240));
    v61 = v33[v32];
    v62 = *v22[442].f32;
    v50.i32[0] = 1190133760;
    if (!v22[471].i8[2])
    {
      v50.f32[0] = 65535.0;
    }

    v63 = vdupq_lane_s32(*v50.f32, 0);
    v64 = vdupq_lane_s32(*v57.i8, 0);
    v65 = vdupq_lane_s32(*v57.i8, 1);
    v66 = vdupq_laneq_s32(v57, 2);
    v67 = vdupq_lane_s32(*v60.i8, 0);
    v68 = vdupq_lane_s32(*v60.i8, 1);
    v69 = vdupq_laneq_s32(v60, 2);
    v70 = vdupq_n_s32(v61);
    v71 = 0uLL;
    v72 = xmmword_1E3062D20;
    v73 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v404 = *v22[442].f32;
    do
    {
      v397 = v73;
      v400 = v74;
      v74.i32[0] = *&v25[v54];
      v77 = vmovl_u16(*&vmovl_u8(*v74.i8));
      v78 = v77.u32[2];
      v79 = v77.u32[1];
      v80 = v77.u32[3];
      v81 = vcgtq_s32(v70, v72);
      v82 = v77.i32[0];
      v83.i32[0] = v34->i32[v77.u32[0]];
      v83.i32[1] = v34->i32[v77.u32[1]];
      v83.i32[2] = v34->i32[v77.u32[2]];
      v77.i32[0] = v22->i32[v77.u32[0]];
      v77.i32[1] = v22->i32[v77.u32[1]];
      v77.i32[2] = v22->i32[v77.u32[2]];
      v84.i32[0] = v35->i32[v82];
      v83.i32[3] = v34->i32[v77.u32[3]];
      v84.i32[1] = v35->i32[v79];
      v85 = v35 + v77.u32[3];
      v77.i32[3] = v22->i32[v77.u32[3]];
      v84.i32[2] = v35->i32[v78];
      v84.i32[3] = *v85;
      v86 = vsubq_f32(v83, v63);
      v83.i32[0] = v36->i32[v82];
      v83.i32[1] = v36->i32[v79];
      v83.i32[2] = v36->i32[v78];
      v83.i32[3] = v36->i32[v80];
      v87 = vaddq_f32(vaddq_f32(vmulq_n_f32(v77, v49.f32[0]), vmulq_lane_f32(v84, *v49.f32, 1)), vmulq_laneq_f32(v83, v49, 2));
      v396 = vaddq_f32(v71, vandq_s8(vmulq_f32(v86, v86), v81));
      v88 = vsubq_f32(vaddq_f32(v64, vmulq_n_f32(v87, v49.f32[0])), v77);
      v89 = vsubq_f32(vaddq_f32(v65, vmulq_lane_f32(v87, *v49.f32, 1)), v84);
      v90 = vsubq_f32(vaddq_f32(v66, vmulq_laneq_f32(v87, v49, 2)), v83);
      v91 = vaddq_f32(vaddq_f32(vmulq_n_f32(v77, v53.f32[0]), vmulq_lane_f32(v84, *v53.f32, 1)), vmulq_laneq_f32(v83, v53, 2));
      v92 = vmulq_n_f32(vmulq_f32(v88, v88), v62.f32[0]);
      v93 = vsubq_f32(vmulq_n_f32(v91, v53.f32[0]), v77);
      v94 = vsubq_f32(vmulq_lane_f32(v91, *v53.f32, 1), v84);
      v95 = vsubq_f32(vmulq_laneq_f32(v91, v53, 2), v83);
      v96 = vaddq_f32(v92, vmulq_lane_f32(vmulq_f32(v89, v89), *v404.f32, 1));
      v97 = vmulq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v77, v40), vmulq_f32(v84, v40)), vmulq_f32(v83, v40)), v40);
      v98 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v95, v95), v404, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v93, v93), v404.f32[0]), vmulq_lane_f32(vmulq_f32(v94, v94), *v404.f32, 1)));
      v99 = vsubq_f32(vaddq_f32(v67, v97), v77);
      v100 = vsubq_f32(vaddq_f32(v68, v97), v84);
      v101 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v90, v90), v404, 2), v96);
      v102 = vmulq_f32(v100, v100);
      v62 = *v22[442].f32;
      v72 = vaddq_s32(v72, v41);
      v75 = vaddq_f32(v75, vandq_s8(v98, v81));
      v103 = vsubq_f32(vaddq_f32(v69, v97), v83);
      v104 = vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v103, v103), v404, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v99, v99), v404.f32[0]), vmulq_lane_f32(v102, *v404.f32, 1))), v81);
      v105 = vsubq_f32(v97, v77);
      v106 = vsubq_f32(v97, v84);
      v107 = vsubq_f32(v97, v83);
      v71 = v396;
      v398 = vaddq_f32(v397, vandq_s8(v101, v81));
      v73 = v398;
      v76 = vaddq_f32(v76, v104);
      v401 = vaddq_f32(v400, vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v107, v107), v404, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v105, v105), v404.f32[0]), vmulq_lane_f32(vmulq_f32(v106, v106), *v404.f32, 1))), v81));
      v74 = v401;
      v54 += 4;
    }

    while (v54 < v61);
    v108 = *(v37 + 16 * v32);
    v109 = *(v38 + 16 * v32);
    {
      v380 = v39;
      v374 = v40;
      v373 = v108;
      v372 = v109;
      v109 = v372;
      v108 = v373;
      v71 = v396;
      v73 = v398;
      v74 = v401;
      v62 = v404;
      v44.i64[0] = 0x100000001;
      v44.i64[1] = 0x100000001;
      v43 = &unk_1ECF17000;
      v42 = 0uLL;
      v41.i64[0] = 0x400000004;
      v41.i64[1] = 0x400000004;
      v40 = v374;
      v39 = v380;
      v38 = v20 + 80;
      v37 = v20 + 16;
      v33 = v23 + 4;
      v31 = v393;
      if (v122)
      {
        mask(vmask4)::shift = xmmword_1E3062D20;
        v109 = v372;
        v108 = v373;
        v71 = v396;
        v73 = v398;
        v74 = v401;
        v62 = v404;
        v44.i64[0] = 0x100000001;
        v44.i64[1] = 0x100000001;
        v43 = &unk_1ECF17000;
        v42 = 0uLL;
        v41.i64[0] = 0x400000004;
        v41.i64[1] = 0x400000004;
        v40 = v374;
        v39 = v380;
        v38 = v20 + 80;
        v37 = v20 + 16;
        v33 = v23 + 4;
        v31 = v393;
      }
    }

    v110 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.f32);
    v111 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.i8);
    v112 = vpadd_f32(v111, v111);
    v113 = vadd_f32(*&vextq_s8(v75, v75, 8uLL), *v75.f32);
    v114 = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v76.f32);
    v115 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.i8);
    v116 = vsubq_f32(v109, v108);
    v117 = (~vaddvq_s32(vshlq_u32(vandq_s8(vcgtq_f32(vdupq_n_s32(0x45F5C199u), vmaxq_f32(v116, vsubq_f32(v42, v116))), v44), v43[208])) & 7) == 0;
    *v118.f32 = vsub_f32(vzip1_s32(vpadd_f32(v113, v113), vpadd_f32(v114, v114)), vdup_lane_s32(v112, 0));
    v119 = vsub_f32(vpadd_f32(v115, v115), v112);
    v118.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(vpadd_f32(v110, v110).f32[0], v62, 3)), v119.u32[0]);
    v120 = (&v425[34] + 20 * v32);
    *v120 = vmulq_f32(v118, xmmword_1E3113250);
    v120[1].i8[0] = v117;
    v121 = 30720.0;
    if (!v22[471].i8[2])
    {
      v121 = 65535.0;
    }

    v120[1].i8[1] = v22[444].i8[0] ^ 1 | (v22[437].f32[1] != v121) | (v22[441].f32[1] != v121);
    ++v32;
    v25 += 216;
  }

  while (v32 != v31);
  v123 = 0;
  v124 = COERCE_FLOAT(*&v22[443]) + vaddv_f32(v22[442]);
  v125 = 61440.0;
  if (v394)
  {
    *v119.i32 = 61440.0;
  }

  else
  {
    *v119.i32 = 65535.0;
  }

  v126 = v382 == 0;
  if (!v382)
  {
    v125 = 65535.0;
  }

  v127 = vdupq_lane_s32(v119, 0);
  *&v127.i32[3] = v125;
  v383 = v127;
  v385 = *v22[442].f32;
  if (v126)
  {
    v128 = 14;
  }

  else
  {
    v128 = 15;
  }

  v129.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v129.i8[8] = v128;
  v129.i8[9] = v128;
  v129.i8[10] = v128;
  v129.i8[11] = v128;
  v129.i8[12] = v128;
  v129.i8[13] = v128;
  v129.i8[14] = v128;
  v129.i8[15] = v128;
  v130 = v422;
  v131 = v416;
  v405 = &v421;
  v402 = v415;
  v132 = 0uLL;
  v133 = 0.5;
  v381 = vdupq_lane_s32(201852416, 0);
  v399 = v129;
  do
  {
    v134 = &v420[21 * v123];
    v135 = &v425[34] + 5 * v123;
    v136 = *(v37 + 16 * v123);
    v137 = *(v38 + 16 * v123);
    v138 = vmaxnmq_f32(vsubq_f32(v136, v383), v132);
    v139 = vmaxnmq_f32(vsubq_f32(v137, v383), v132);
    v140 = vminnmq_f32(v136, v132);
    v141 = vminnmq_f32(v137, v132);
    v143 = vaddq_f32(vmulq_f32(v140, v140), vmulq_f32(v141, v141));
    v142 = vmulq_f32(v385, vaddq_f32(vmulq_f32(v139, v139), vaddq_f32(vmulq_f32(v138, v138), v143)));
    v143.i32[0] = v142.i32[2];
    v143.i8[0] = v33[v123];
    v144 = v143.u32[0];
    v145 = ((v142.f32[2] + vaddv_f32(*v142.f32)) * v133) * v143.u32[0];
    v146 = vmuls_lane_f32(v133, v142, 3) * v143.u32[0];
    if (v394)
    {
      v147 = *(v38 + 16 * v123);
      v147.i32[3] = v147.i32[0];
      v148 = fmaxf(vminvq_f32(v147), 0.0);
      LODWORD(v149) = HIDWORD(*(v38 + 16 * v123));
      v150 = v137.f32[0] > v137.f32[1];
      v151 = v137.f32[0] > v137.f32[2];
      if (v137.f32[1] > v137.f32[2])
      {
        v152 = 1;
      }

      else
      {
        v152 = 2;
      }

      if (v149 <= v137.f32[2])
      {
        LODWORD(v149) = *(v38 + 16 * v123 + 8);
      }

      v153 = !v150 || !v151;
      if (v150 && v151)
      {
        v154 = 0;
      }

      else
      {
        v154 = v152;
      }

      v155 = (v407 | (4 * v154));
      if (!v153)
      {
        LODWORD(v149) = *(v38 + 16 * v123);
      }

      v407[0] = *(v37 + 16 * v123);
      v143.f32[0] = v149 - *v155;
      v156 = (v149 - v148);
      v157 = v143.f32[0];
      v158 = v156 < 0x2000;
      v159 = v156 < 2048;
      v160 = v156 < 1024;
      v161 = v143.f32[0] < 2048 && v156 < 0x2000;
      v162 = v157 < 2048 && v156 < 2048;
      v163 = v157 < 2048 && v156 < 1024;
      v164 = v157 < 0x2000 && v156 < 0x2000;
      v165 = v157 < 0x2000 && v156 < 2048;
      v166 = v156 < 4096;
      if (v157 >= 0x2000)
      {
        v166 = 0;
      }

      v167 = v156 < 0x8000;
      v168 = v157 < 0x2000 && v156 < 0x8000;
      v169 = v156 < 0x4000;
      v170 = vsubq_f32(v137, vdupq_lane_s32(*v143.f32, 0));
      v170.i32[3] = 0;
      v171 = v136;
      v171.i32[3] = 0;
      v172 = vsubq_f32(v170, v171);
      v173 = vmaxvq_f32(vmaxq_f32(v172, vsubq_f32(v132, v172)));
      if (v157 >= 0x2000)
      {
        v169 = 0;
      }

      v174 = v157 < 0x4000;
      if (v167 && v174)
      {
        v175 = 4;
      }

      else
      {
        v175 = 5;
      }

      v176 = &v425[34] + 5 * v123;
      if (v158 && v174)
      {
        v177 = 3;
      }

      else
      {
        v177 = v175;
      }

      v178 = v157 < 1024;
      if (v159 && v174)
      {
        v177 = 2;
      }

      v179 = v157 < 4096;
      if (v159 && v178)
      {
        v177 = 1;
      }

      if (v169 && v173 < 0x2000)
      {
        v180 = 0;
      }

      else
      {
        v180 = 8;
      }

      v181 = v173 < 4096;
      if (v168 && v181)
      {
        v180 = 1;
      }

      if (v166 && v181)
      {
        v180 = 2;
      }

      if (v164 && v173 < 2048)
      {
        v180 = 3;
      }

      v182 = v173 < 512;
      if (v161 && v182)
      {
        v183 = 4;
      }

      else
      {
        v183 = v180;
      }

      if (v165 && v173 < 1024)
      {
        v183 = 5;
      }

      if (v162 && v173 < 256)
      {
        v184 = 6;
      }

      else
      {
        v184 = v183;
      }

      v126 = !v163 || !v182;
      v185 = 7;
      if (v126)
      {
        v185 = v184;
      }

      if (v160 && v179)
      {
        v186 = 0;
      }

      else
      {
        v186 = v177;
      }

      v187 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::rgbo_error_scales[v186];
      v188 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::rgb_error_scales[v185];
      v189 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v137, v137, 8uLL), *&vextq_s8(v136, v136, 8uLL)), vadd_f32(vzip1_s32(*v137.f32, *v136.f32), vzip2_s32(*v137.f32, *v136.f32))), vdup_n_s32(0x3EAAAAABu));
      v395 = vsub_f32(v189, vdup_lane_s32(v189, 1)).f32[0];
      memset_pattern16(v134, &xmmword_1E310F6C0, 0x80uLL);
      v191 = 0;
      v192 = 0x202020202020202;
      v193 = 0x707070707070707;
      v194 = v399;
      v195 = vextq_s8(v194, v194, 8uLL).u64[0];
      v196 = &v414[84 * v123 + 884];
      vst4_s8(v196, *&v192);
      v197 = flt_1E3113268[v395 < 3968.0];
      v198 = v188 * 0.01;
      v133 = 0.5;
      if (v395 < 960.0)
      {
        v197 = 0.002;
      }

      v200 = v176[2];
      v199 = v176[3];
      v201 = v176[1];
      v202 = v131;
      v203 = v130;
      do
      {
        v204 = *&compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::baseline_quant_error[v191 + 4] * v144;
        v205 = (v124 * v204) + (v124 * v204);
        *v202 = v128;
        *(v202 - 1) = 11;
        *(v203 - 1) = v199 + (v145 + (v205 * v198));
        *v203 = v146 + (v145 + (v205 + ((v385.f32[3] * v204) + (v385.f32[3] * v204))));
        *(v203 - 3) = v200 + (v199 + (v145 + (v205 * v197)));
        *(v203 - 2) = v201 + (v199 + (v145 + (v205 * (v187 * 0.0015))));
        *(v202 - 3) = 1794;
        ++v191;
        v203 += 4;
        v202 += 4;
      }

      while (v191 != 13);
    }

    else
    {
      memset_pattern16(v134, &xmmword_1E310F6C0, 0x40uLL);
      *&v414[84 * v123 + 884] = v381;
      v206 = 0.625;
      if (*(v135 + 17))
      {
        v207 = v133;
      }

      else
      {
        v206 = 1.0;
        v207 = 1.0;
      }

      if (*(v135 + 16))
      {
        v208 = v133;
      }

      else
      {
        v208 = 1.0;
      }

      v209 = 0.25;
      if (!*(v135 + 16))
      {
        v209 = 1.0;
      }

      v210 = *v135;
      v212 = v135[2];
      v211 = v135[3];
      v213 = v402;
      v214 = v405;
      v215 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::baseline_quant_error;
      for (i = 4; i != 21; ++i)
      {
        if (i > 0x12)
        {
          v208 = 1.0;
        }

        v217 = *v215++;
        v218 = v217;
        if (i > 0x12)
        {
          v209 = 1.0;
        }

        v219 = (v124 * v144) * v218;
        v220 = ((v385.f32[3] * v144) + (v124 * v144)) * v218;
        *v213 = 12;
        v221 = v146 + (v145 + ((v206 * v220) * v208));
        v222 = v211 + (v145 + ((v207 * v219) * v209));
        if ((v146 + (v145 + (v210 + v220))) >= v222)
        {
          v223 = 8;
        }

        else
        {
          v222 = v146 + (v145 + (v210 + v220));
          v223 = 10;
        }

        v224 = v211 + (v145 + v219);
        *(v213 - 1) = v223;
        v225 = v212 + (v146 + (v145 + v220));
        *(v214 - 1) = v222;
        *v214 = v221;
        if ((v210 + v224) >= v225)
        {
          v226 = 4;
        }

        else
        {
          v225 = v210 + v224;
          v226 = 6;
        }

        *(v213 - 2) = v226;
        *(v214 - 3) = v212 + v224;
        *(v214 - 2) = v225;
        *(v213 - 3) = 0;
        v214 += 4;
        v213 += 4;
      }
    }

    ++v123;
    v130 += 84;
    v131 += 84;
    v405 += 84;
    v402 += 84;
    v33 = v391;
    v227 = v393;
    v38 = v387;
    v37 = v389;
    v132 = 0uLL;
  }

  while (v123 != v393);
  v228 = a13 + 157120;
  v229 = a13 + 165312;
  v230 = a13 + 167360;
  v231 = v376 & 0xFFFFFFFC;
  v232 = vdupq_n_s32(0x7149F2CAu);
  *(v228 + 4 * v231) = v232;
  *(v229 + v231) = 0;
  *(v230 + v231) = 0;
  v233 = v379;
  v234 = (v379 - 1) & 0xFFFFFFFC;
  *(v228 + 4 * v234) = v232;
  *(v229 + v234) = 0;
  *(v230 + v234) = 0;
  if (v393 == 3)
  {
    v392 = v376 & 0xFFFFFFFC;
    v384 = a13 + 157120;
    v386 = a13 + 167360;
    v388 = a13 + 165312;
    for (j = 0; j != 210; j += 10)
    {
      memset_pattern16(&v411[j], &xmmword_1E310F6C0, 0x28uLL);
    }

    v284 = &v418;
    v285 = &v424;
    v286 = &v413;
    v287 = v409;
    v288 = 4;
    do
    {
      v289 = 0;
      v290 = v287;
      v291 = v286;
      do
      {
        v292 = 0;
        v293 = v290;
        v294 = v291;
        do
        {
          if (v289 >= v292)
          {
            v295 = v292;
          }

          else
          {
            v295 = v289;
          }

          if (v289 <= v292)
          {
            v296 = v292;
          }

          else
          {
            v296 = v289;
          }

          if (v296 - v295 <= 1)
          {
            v297 = 0;
            v298 = v293;
            do
            {
              if (v297 >= v295)
              {
                v299 = v295;
              }

              else
              {
                v299 = v297;
              }

              if (v297 <= v296)
              {
                v300 = v296;
              }

              else
              {
                v300 = v297;
              }

              if (v300 - v299 <= 1)
              {
                v301 = fminf((*(&v420[v288] + v289) + *&v422[16 * v288 + 196 + 4 * v292]) + v285[v297], 1.0e10);
                if (v301 <= *&v294[v297])
                {
                  *&v294[v297] = v301;
                  *(v298 - 2) = v414[4 * v288 + 884 + v289];
                  *(v298 - 1) = v416[4 * v288 + 49 + v292];
                  *v298 = *(v284 + v297);
                }
              }

              ++v297;
              v298 += 3;
            }

            while (v297 != 4);
          }

          ++v292;
          ++v294;
          v293 += 3;
        }

        while (v292 != 4);
        ++v289;
        ++v291;
        v290 += 3;
      }

      while (v289 != 4);
      ++v288;
      v284 = (v284 + 4);
      v285 += 4;
      v286 += 10;
      v287 += 30;
    }

    while (v288 != 21);
    if (v379)
    {
      v302 = 0;
      v241 = -1;
      v303 = 1.0e30;
      v235 = v377;
      v237 = a11;
      v236 = a12;
      v239 = a9;
      v238 = a10;
      v227 = v393;
      v229 = a13 + 165312;
      v230 = a13 + 167360;
      v228 = a13 + 157120;
      do
      {
        if (*(v375 + 4 * v302) >= 1.0e30)
        {
          *(v384 + 4 * v302) = 1900671690;
        }

        else
        {
          v304 = 0;
          v305 = *(v378 + v302);
          v306 = a13 + 169408 + 4 * v302;
          v307 = &quant_mode_table[v305 + 384];
          v308 = -7;
          v309 = v411;
          v310 = 1.0e30;
          do
          {
            v312 = *v307;
            v307 += 128;
            v311 = v312;
            if (v312 < 4)
            {
              break;
            }

            v313 = 10 * v311;
            if (*&v309[v313] < v310)
            {
              v310 = *&v309[v313];
              v304 = v308 + 10;
            }

            ++v309;
            v279 = __CFADD__(v308++, 1);
          }

          while (!v279);
          v314 = &quant_mode_table[128 * v304 + v305];
          v315 = *v314;
          LOBYTE(v314) = v314[5];
          *(v388 + v302) = v315;
          *(v386 + v302) = v314;
          if (v315 <= 3)
          {
            *(v306 + 2) = 0;
            *v306 = 0;
          }

          else
          {
            v316 = v407 + 30 * v315 + 3 * v304 + 15;
            *v306 = *v316;
            *(v306 + 2) = v316[2];
          }

          v317 = v310 + *(v375 + 4 * v302);
          *(v384 + 4 * v302) = v317;
          if (v317 < v303)
          {
            v241 = v302;
            v303 = v317;
          }
        }

        ++v302;
      }

      while (v302 != v379);
      goto LABEL_266;
    }

LABEL_263:
    v241 = -1;
    v235 = v377;
    v237 = a11;
    v236 = a12;
    v239 = a9;
    v238 = a10;
    v227 = v393;
    v229 = v388;
    v230 = v386;
    v228 = v384;
LABEL_266:
    LODWORD(v231) = v392;
    goto LABEL_267;
  }

  if (v393 == 2)
  {
    v392 = v376 & 0xFFFFFFFC;
    for (k = 0; k != 147; k += 7)
    {
      memset_pattern16(&v411[k], &xmmword_1E310F6C0, 0x1CuLL);
    }

    v254 = v417;
    v255 = v423;
    v256 = v408;
    v257 = &v412;
    v258 = 4;
    v235 = v377;
    v237 = a11;
    v236 = a12;
    v239 = a9;
    v238 = a10;
    do
    {
      v259 = 0;
      v260 = v257;
      v261 = v256;
      do
      {
        v262 = 0;
        v263 = v259;
        v264 = v261;
        do
        {
          if (v263 >= 0)
          {
            v265 = v263;
          }

          else
          {
            v265 = -v263;
          }

          if (v265 <= 1)
          {
            v266 = fminf(*(&v420[v258] + v259) + *&v255[4 * v262], 1.0e10);
            if (v266 <= *&v260[v262])
            {
              *&v260[v262] = v266;
              *(v264 - 1) = v414[4 * v258 + 884 + v259];
              *v264 = v254[v262];
            }
          }

          ++v262;
          v264 += 2;
          --v263;
        }

        while (v262 != 4);
        ++v259;
        v261 += 2;
        ++v260;
      }

      while (v259 != 4);
      ++v258;
      v254 += 4;
      v255 += 16;
      v256 += 14;
      v257 += 7;
    }

    while (v258 != 21);
    if (v379)
    {
      v267 = 0;
      v241 = -1;
      v268 = 1.0e30;
      LODWORD(v231) = v376 & 0xFFFFFFFC;
      v227 = v393;
      do
      {
        if (*(v375 + 4 * v267) >= 1.0e30)
        {
          *(v228 + 4 * v267) = 1900671690;
        }

        else
        {
          v269 = 0;
          v270 = *(v378 + v267);
          v271 = (a13 + 169408 + 4 * v267);
          v272 = &quant_mode_table[v270 + 256];
          v273 = -7;
          v274 = v411;
          v275 = 1.0e30;
          do
          {
            v277 = *v272;
            v272 += 128;
            v276 = v277;
            if (v277 < 4)
            {
              break;
            }

            v278 = 7 * v276;
            if (*&v274[v278] < v275)
            {
              v275 = *&v274[v278];
              v269 = v273 + 9;
            }

            ++v274;
            v279 = __CFADD__(v273++, 1);
          }

          while (!v279);
          v280 = &quant_mode_table[128 * v269 + v270];
          v281 = *v280;
          LOBYTE(v280) = v280[2];
          *(v229 + v267) = v281;
          *(v230 + v267) = v280;
          if (v281 <= 3)
          {
            *v271 = 0;
          }

          else
          {
            *v271 = *(&v407[1] + 7 * v281 + v269 + 2);
          }

          v282 = v275 + *(v375 + 4 * v267);
          *(v228 + 4 * v267) = v282;
          if (v282 < v268)
          {
            v241 = v267;
            v268 = v282;
          }
        }

        ++v267;
      }

      while (v267 != v379);
      goto LABEL_267;
    }

    v241 = -1;
    v227 = v393;
    goto LABEL_266;
  }

  if (v393 != 1)
  {
    v390 = a13 + 169408;
    v392 = v376 & 0xFFFFFFFC;
    v384 = a13 + 157120;
    v386 = a13 + 167360;
    v388 = a13 + 165312;
    for (m = 0; m != 273; m += 13)
    {
      memset_pattern16(&v411[m], &xmmword_1E310F6C0, 0x34uLL);
    }

    v319 = &v419;
    v320 = v425;
    v321 = v414;
    v322 = v410;
    v323 = 4;
    do
    {
      v324 = 0;
      v403 = v322;
      v406 = v321;
      do
      {
        v325 = 0;
        v326 = v322;
        v327 = v321;
        do
        {
          if (v324 >= v325)
          {
            v328 = v325;
          }

          else
          {
            v328 = v324;
          }

          if (v324 <= v325)
          {
            v329 = v325;
          }

          else
          {
            v329 = v324;
          }

          if (v329 - v328 <= 1)
          {
            v330 = 0;
            v331 = v326;
            v332 = v327;
            do
            {
              if (v330 >= v328)
              {
                v333 = v328;
              }

              else
              {
                v333 = v330;
              }

              if (v330 <= v329)
              {
                v334 = v329;
              }

              else
              {
                v334 = v330;
              }

              if (v334 - v333 <= 1)
              {
                v335 = 0;
                v336 = v331;
                do
                {
                  if (v335 >= v333)
                  {
                    v337 = v333;
                  }

                  else
                  {
                    v337 = v335;
                  }

                  if (v335 <= v334)
                  {
                    v338 = v334;
                  }

                  else
                  {
                    v338 = v335;
                  }

                  if (v338 - v337 <= 1)
                  {
                    v339 = fminf(((*(&v420[v323] + v324) + *&v422[16 * v323 + 196 + 4 * v325]) + *&v423[16 * v323 + 272 + 4 * v330]) + v320[v335], 1.0e10);
                    if (v339 <= *&v332[4 * v335])
                    {
                      *&v332[4 * v335] = v339;
                      *(v336 - 3) = v414[4 * v323 + 884 + v324];
                      *(v336 - 2) = v416[4 * v323 + 49 + v325];
                      *(v336 - 1) = v417[4 * v323 + 68 + v330];
                      *v336 = *(v319 + v335);
                    }
                  }

                  ++v335;
                  v336 += 4;
                }

                while (v335 != 4);
              }

              ++v330;
              v332 += 4;
              v331 += 4;
            }

            while (v330 != 4);
          }

          ++v325;
          v327 += 4;
          v326 += 4;
        }

        while (v325 != 4);
        ++v324;
        v321 += 4;
        v322 += 4;
      }

      while (v324 != 4);
      ++v323;
      ++v319;
      v320 += 4;
      v321 = v406 + 52;
      v322 = v403 + 52;
    }

    while (v323 != 21);
    v233 = v379;
    if (v379)
    {
      v340 = 0;
      v241 = -1;
      v341 = 1.0e30;
      v235 = v377;
      v237 = a11;
      v236 = a12;
      v239 = a9;
      v238 = a10;
      LODWORD(v231) = v376 & 0xFFFFFFFC;
      v227 = v393;
      v229 = a13 + 165312;
      v230 = a13 + 167360;
      v228 = a13 + 157120;
      do
      {
        if (*(v375 + 4 * v340) >= 1.0e30)
        {
          *(v384 + 4 * v340) = 1900671690;
        }

        else
        {
          v342 = 0;
          v343 = *(v378 + v340);
          v344 = &quant_mode_table[v343 + 512];
          v345 = -6;
          v346 = v411;
          v347 = 1.0e30;
          do
          {
            v349 = *v344;
            v344 += 128;
            v348 = v349;
            if (v349 < 4)
            {
              break;
            }

            v350 = 13 * v348;
            if (*&v346[v350] < v347)
            {
              v347 = *&v346[v350];
              v342 = v345 + 10;
            }

            ++v346;
            v279 = __CFADD__(v345++, 1);
          }

          while (!v279);
          v351 = &quant_mode_table[128 * v342 + v343];
          v352 = *v351;
          LOBYTE(v351) = v351[8];
          *(v388 + v340) = v352;
          *(v386 + v340) = v351;
          if (v352 <= 3)
          {
            *(v390 + 4 * v340) = 0;
          }

          else
          {
            *(v390 + 4 * v340) = *(v407 + 13 * v352 + v342 + 2);
          }

          v353 = v347 + *(v375 + 4 * v340);
          *(v384 + 4 * v340) = v353;
          if (v353 < v341)
          {
            v241 = v340;
            v341 = v353;
          }
        }

        ++v340;
      }

      while (v340 != v379);
      goto LABEL_267;
    }

    goto LABEL_263;
  }

  v235 = v377;
  v237 = a11;
  v236 = a12;
  v239 = a9;
  v238 = a10;
  if (v376 >= v379)
  {
    v411[0] = -1;
    goto LABEL_269;
  }

  v240 = v376;
  v241 = -1;
  v242 = 1.0e30;
  do
  {
    if (*(v375 + 4 * v240) >= 1.0e30)
    {
      *(v228 + 4 * v240) = 1900671690;
    }

    else
    {
      v243 = 0;
      v244 = 0;
      v245 = *(v378 + v240);
      v246 = &quant_mode_table[v245 + 128];
      v247 = 1.0e30;
      do
      {
        v249 = *v246;
        v246 += 128;
        v248 = v249;
        if (v249 >= 4 && *(&v420[v248] + v243) < v247)
        {
          v247 = *(&v420[v248] + v243);
          v244 = v243;
        }

        ++v243;
      }

      while (v243 != 4);
      v250 = quant_mode_table[128 * v244 + 128 + v245];
      v251 = (a13 + 169408 + 4 * v240);
      *(v229 + v240) = v250;
      *v251 = 0;
      if (v250 > 3)
      {
        *v251 = v414[4 * v250 + 884 + v244];
      }

      v252 = v247 + *(v375 + 4 * v240);
      *(v228 + 4 * v240) = v252;
      *(v230 + v240) = *(v229 + v240);
      if (v252 < v242)
      {
        v241 = v240;
        v242 = v252;
      }
    }

    ++v240;
  }

  while (v240 != v379);
LABEL_267:
  v411[0] = v241;
  if ((v241 & 0x80000000) == 0)
  {
    *(v228 + 4 * v241) = 1900671690;
  }

LABEL_269:
  if (v235 >= 2)
  {
    v354 = vorrq_s8(vdupq_n_s32(v231), xmmword_1E3062D20);
    v355 = 1;
    v356 = vdupq_n_s32(0x7149F2CAu);
    v357.i64[0] = 0x400000004;
    v357.i64[1] = 0x400000004;
    do
    {
      v358.i64[0] = -1;
      v358.i64[1] = -1;
      v359 = v356;
      if (v231 < v233)
      {
        v360 = v231;
        v359 = v356;
        v190 = v354;
        do
        {
          v361 = *(v228 + 4 * v360);
          v362 = vcgtq_f32(v359, v361);
          v359 = vbslq_s8(v362, v361, v359);
          v358 = vbslq_s8(v362, v190, v358);
          v190 = vaddq_s32(v190, v357);
          v360 += 4;
        }

        while (v360 < v233);
      }

      *&v190 = vminvq_f32(v359);
      v363 = vceqq_f32(v359, vdupq_lane_s32(*&v190, 0));
      v190 = *&vmvnq_s8(v363) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
      v364 = vminvq_s32(vorrq_s8(v190, vandq_s8(v358, v363)));
      v411[v355] = v364;
      if ((v364 & 0x80000000) != 0)
      {
        break;
      }

      *(v228 + 4 * v364) = 1900671690;
      ++v355;
    }

    while (v355 != v235);
  }

  if (v235)
  {
    v365 = 0;
    while (1)
    {
      v366 = v411[v365];
      if ((v366 & 0x80000000) != 0)
      {
        break;
      }

      *(v238 + 4 * v365) = v366;
      *(v237 + 4 * v365) = *(v229 + v366);
      *(v236 + 4 * v365) = *(v230 + v366);
      v367 = (a13 + 169408 + 4 * v366);
      v368 = v239;
      v369 = v227;
      do
      {
        v370 = *v367++;
        *v368++ = v370;
        --v369;
      }

      while (v369);
      ++v365;
      v239 += 4;
      if (v365 == v235)
      {
        return v235;
      }
    }

    return v365;
  }

  return v235;
}

uint64_t pack_color_endpoints(int a1, _BYTE *a2, int a3, float32x4_t a4, float32x4_t a5, int8x16_t a6, float32x4_t a7, double a8, double a9, double a10)
{
  v13 = 0;
  v14 = vdupq_n_s32(0x477FFF00u);
  v15 = vdupq_n_s32(0x3B7F00FFu);
  v248 = *MEMORY[0x1E69E9840];
  v16 = vminnmq_f32(vmaxnmq_f32(a4, 0), v14);
  v17 = vminnmq_f32(vmaxnmq_f32(a5, 0), v14);
  v18 = vmulq_f32(v16, v15);
  v19 = vmulq_f32(v17, v15);
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if ((a1 - 2) >= 2)
      {
        if (!a1)
        {
          v13 = 0;
          v46 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.f32, *v19.f32), vzip2_s32(*v18.f32, *v19.f32))), vdup_n_s32(0x3EAAAAABu));
          v47 = v46.f32[1];
          v48 = vaddv_f32(v46) * 0.5;
          if (v46.f32[0] > v46.f32[1])
          {
            v46.f32[0] = v48;
            v47 = v48;
          }

          v49 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
          *a2 = v49[((v46.f32[0] - (v46.f32[0] + 0.5)) >= -0.1) | (2 * (v46.f32[0] + 0.5))];
          a2[1] = v49[((v47 - (v47 + 0.5)) >= -0.1) | (2 * (v47 + 0.5))];
        }
      }

      else
      {
        v20 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.f32, *v17.f32), vzip2_s32(*v16.f32, *v17.f32)));
        v21 = vdup_n_s32(0x3EAAAAABu);
        v22 = vmul_f32(v20, v21);
        v21.f32[0] = vaddv_f32(v22) * 0.5;
        v23 = vcvt_s32_f32(vadd_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v22.f32[1] < v22.f32[0]), 0x1FuLL)), vdup_lane_s32(v21, 0), v22), 0x3F0000003F000000));
        if (v23.i32[1] - v23.i32[0] < 2049)
        {
          if ((((v23.i32[0] + 16) >> 5) & ~((v23.i32[0] + 16) >> 31)) >= 2047)
          {
            v50 = 2047;
          }

          else
          {
            v50 = ((v23.i32[0] + 16) >> 5) & ~((v23.i32[0] + 16) >> 31);
          }

          v24 = a3 - 4;
          v51 = &color_unquant_to_uquant_tables + 512 * v24;
          v52 = v51[(2 * (v50 & 0x7F)) | 1];
          if ((v52 & 0x80000000) == 0 && ((((v23.i32[1] + 16) >> 5) & ~((v23.i32[1] + 16) >> 31)) >= 2047 ? (v53 = 2047) : (v53 = ((v23.i32[1] + 16) >> 5) & ~((v23.i32[1] + 16) >> 31)), (v54 = v53 - (v50 & 0x780 | v52), v54 <= 0xF) && (v55 = (v50 >> 3) & 0xF0, v56 = v51[(2 * (v54 | v55)) | 1], v55 == (v56 & 0xF0))) || ((((v23.i32[0] + 32) >> 6) & ~((v23.i32[0] + 32) >> 31)) >= 1023 ? (v57 = 1023) : (v57 = ((v23.i32[0] + 32) >> 6) & ~((v23.i32[0] + 32) >> 31)), (v52 = v51[(2 * (v57 & 0x7F)) | 0x101], v52 < 0) && ((((v23.i32[1] + 32) >> 6) & ~((v23.i32[1] + 32) >> 31)) >= 1023 ? (v58 = 1023) : (v58 = ((v23.i32[1] + 32) >> 6) & ~((v23.i32[1] + 32) >> 31)), (v59 = v58 - (v57 & 0x380 | v52 & 0x7F), v59 <= 0x1F) && (v60 = (v57 >> 2) & 0xE0, v56 = v51[(2 * (v59 | v60)) | 1], v60 == (v56 & 0xE0)))))
          {
            *a2 = v52;
            a2[1] = v56;
            return 3;
          }
        }

        else
        {
          v24 = a3 - 4;
        }

        v61 = vmin_s32(vmax_s32(vshr_n_s32(vadd_s32(v23, 0x8000000080), 8uLL), 0), 0xFF000000FFLL);
        v62 = vsub_s32(vshl_n_s32(v61, 8uLL), v23);
        v63 = vmul_s32(v62, v62);
        v64.i32[0] = v23.i32[0];
        v64.i32[1] = v23.i32[1] + 256;
        v65 = vmin_s32(vmax_s32(vshr_n_s32(v64, 8uLL), 0), 0xFF000000FFLL);
        v66 = vadd_s32(vsub_s32(vshl_n_s32(v65, 8uLL), v23), 0xFFFFFF8000000080);
        v67 = vmul_s32(v66, v66);
        v68 = vext_s8(v63, v67, 4uLL);
        v63.i32[1] = v67.i32[1];
        v69 = vadd_s32(v63, v68);
        v70 = vcgt_u32(vdup_lane_s32(v69, 1), v69).u8[0];
        if (v70)
        {
          v71 = v61.i32[0];
        }

        else
        {
          v71 = v65.i32[1];
        }

        v72 = v65.i32[0];
        if (v70)
        {
          v72 = v61.i32[1];
        }

        v73 = &color_unquant_to_uquant_tables + 512 * v24;
        *a2 = v73[(2 * v71) | 1];
        a2[1] = v73[(2 * v72) | 1];
        return 2;
      }

      return v13;
    }

    if (a1 == 4)
    {
      v79 = (v18.f32[2] + vaddv_f32(*v18.f32)) * 0.33333;
      v80 = (v19.f32[2] + vaddv_f32(*v19.f32)) * 0.33333;
      v81 = (v79 + 0.5);
      if (a3 >= 19)
      {
        v83 = 2 * v81;
        v85 = (a3 - 4);
        v88 = (v80 + 0.5);
        v82 = (v18.f32[3] + 0.5);
        v91 = 2 * v88;
        v84 = 2 * v82;
        v89 = (v19.f32[3] + 0.5);
        v92 = 2 * v89;
      }

      else
      {
        v82 = (v18.f32[3] + 0.5);
        v83 = 2 * v81;
        v84 = 2 * v82;
        v85 = a3 - 4;
        v86 = &color_unquant_to_uquant_tables + 512 * v85;
        v87 = v86[(4 * ((v79 + 0.5) & 0x7F)) | 1];
        v88 = (v80 + 0.5);
        v89 = (v19.f32[3] + 0.5);
        v90 = v87 | (((v81 >> 7) & 1) << 8);
        v91 = 2 * v88;
        v92 = 2 * v89;
        v93 = 2 * v88 - v90;
        if ((v93 - 64) >= 0xFFFFFF80)
        {
          v94 = v86[(4 * ((v18.f32[3] + 0.5) & 0x7F)) | 1];
          v95 = v94 & 0xFFFFFEFF | (((v82 >> 7) & 1) << 8);
          if (v92 - v95 - 64 >= 0xFFFFFF80)
          {
            v96 = v93 & 0x7F | ((v83 & 0x100) >> 1);
            v97 = v86[(2 * v96) | 1];
            if ((v96 ^ v97) <= 0x3F)
            {
              v98 = (v92 - v94) & 0x7F | ((v84 & 0x100) >> 1);
              v99 = v86[(2 * v98) | 1];
              if ((v98 ^ v99) <= 0x3F && (v97 & 0x7F) + v90 + (((v97 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF && (v99 & 0x7F) + v95 + (((v99 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF)
              {
                *a2 = v87;
                a2[1] = v97;
                a2[2] = v94;
                v13 = 5;
                a2[3] = v99;
                return v13;
              }
            }
          }
        }
      }

      if ((v79 - v81) >= -0.1)
      {
        ++v83;
      }

      v118 = &color_unquant_to_uquant_tables + 512 * v85;
      *a2 = v118[v83];
      if ((v80 - v88) < -0.1)
      {
        v119 = v91;
      }

      else
      {
        v119 = v91 + 1;
      }

      a2[1] = v118[v119];
      if ((v18.f32[3] - v82) < -0.1)
      {
        v120 = v84;
      }

      else
      {
        v120 = v84 + 1;
      }

      a2[2] = v118[v120];
      if ((v19.f32[3] - v89) < -0.1)
      {
        v121 = v92;
      }

      else
      {
        v121 = v92 + 1;
      }

      a2[3] = v118[v121];
      return 4;
    }

    if (a1 == 6)
    {
      quantize_rgbs(a2, a3, a6);
      return 6;
    }

    if (a1 != 7)
    {
      return v13;
    }

    v25.i64[0] = vaddq_f32(a7, vdupq_laneq_s32(a7, 3)).u64[0];
    v25.f32[2] = a7.f32[2] + a7.f32[3];
    v25.i32[3] = a7.i32[3];
    v26 = vminnmq_f32(vmaxnmq_f32(v25, 0), vdupq_n_s32(0x477FFF00u));
    if (*v26.i32 <= *&v26.i32[1] || *v26.i32 <= *&v26.i32[2])
    {
      if (*&v26.i32[1] <= *&v26.i32[2])
      {
        v149 = vrev64q_s32(v26);
        v117 = vextq_s8(v149, v149, 0xCuLL);
        v116 = 2;
      }

      else
      {
        v117.i64[0] = vrev64q_s32(v26).u64[0];
        v117.i64[1] = v26.i64[1];
        v116 = 1;
      }
    }

    else
    {
      v116 = 0;
      v117 = v26;
    }

    v150 = 0;
    v151 = 4 * v116;
    v152 = v116 | 0xC;
    v153 = vextq_s8(v117, v117, 4uLL).u64[0];
    v154 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v155 = vdup_n_s32(0x477FFF00u);
    while (1)
    {
      v156 = (&quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_cutoffs + 8 * v150);
      v157 = (*v117.i32 - *&v117.i32[1]) <= *v156 && (*v117.i32 - *&v117.i32[2]) <= *v156;
      if (!v157 || *&v117.i32[3] > v156[1])
      {
        goto LABEL_169;
      }

      v158 = quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_scales[v150];
      v159 = v150 == 4 ? v152 : v151 | v150;
      v160 = quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_rscales[v150];
      v161 = &quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_bits + 12 * v150;
      v163 = *(v161 + 1);
      v162 = *(v161 + 2);
      v164 = ((*v117.i32 * v158) + 0.5);
      v165 = v164 & 0x3F | (v159 << 6);
      do
      {
        v166 = v154[(2 * v165) | 1];
        v167 = v165 & 0xC0;
        v165 -= v167 != (v166 & 0xC0);
      }

      while (v167 != (v166 & 0xC0));
      *v10.i32 = v160 * (v164 & 0xFFFFFFC0 | v166 & 0x3F);
      v168 = vdup_lane_s32(v10, 0);
      v169 = vsub_f32(v168, v153);
      v170 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v169, v155), v155, vmaxnm_f32(v169, 0)), v158), 0x3F0000003F000000));
      if (1 << v163 <= v170.i32[0] || 1 << v163 <= v170.i32[1])
      {
        goto LABEL_169;
      }

      if (v150 > 5)
      {
        v172 = 0;
      }

      else if (((1 << v150) & 5) != 0)
      {
        v172 = (v164 >> 9) & 1;
      }

      else if (((1 << v150) & 0xA) != 0)
      {
        v172 = (v164 >> 8) & 1;
      }

      else
      {
        v172 = (v170.i32[0] >> 6) & 1;
      }

      if (v150 >= 4)
      {
        if ((v150 - 4) >= 2)
        {
          v173 = 0;
        }

        else
        {
          v173 = (v170.i32[1] >> 6) & 1;
        }
      }

      else
      {
        v173 = (v164 >> 7) & 1;
      }

      if (v150 > 5)
      {
        v174 = 0;
      }

      else if (((1 << v150) & 0x3A) != 0)
      {
        v174 = (v170.i32[0] >> 5) & 1;
      }

      else
      {
        v174 = (v164 >> 8) & 1;
      }

      v175 = 0;
      if (v150 > 2)
      {
        if ((v150 - 3) < 3)
        {
          goto LABEL_160;
        }
      }

      else
      {
        switch(v150)
        {
          case 0:
            v175 = (v164 >> 10) & 1;
            break;
          case 1:
LABEL_160:
            v175 = (v170.i32[1] >> 5) & 1;
            break;
          case 2:
            v175 = (v164 >> 6) & 1;
            break;
        }
      }

      v176 = 1 << v162;
      v177 = v170.i8[0] & 0x1F | (((v159 >> 2) & 1) << 7) | (v172 << 6) | (32 * v174);
      do
      {
        v178 = v154[(2 * v177) | 1];
        v179 = v177 & 0xF0;
        v177 -= v179 != (v178 & 0xF0);
      }

      while (v179 != (v178 & 0xF0));
      v180 = v170.i8[4] & 0x1F | (((v159 >> 3) & 1) << 7) | (v173 << 6) | (32 * v175);
      do
      {
        v181 = v154[(2 * v180) | 1];
        v182 = v180 & 0xF0;
        v180 -= v182 != (v181 & 0xF0);
      }

      while (v182 != (v181 & 0xF0));
      v183.i32[0] = v178 & 0x1F;
      v183.i32[1] = v181 & 0xFFFFFF1F;
      v184 = vsub_f32(vsub_f32(v168, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v170 & 0xFFFFFFE0FFFFFFE0), v183)), v160)), v153);
      v184.f32[0] = *&v117.i32[3] + ((((*v10.i32 - *v117.i32) + v184.f32[0]) + v184.f32[1]) * 0.33333);
      v185 = fmaxf(v184.f32[0], 0.0);
      if (v184.f32[0] <= 1000000000.0)
      {
        v186 = v185;
      }

      else
      {
        v186 = 1000000000.0;
      }

      v187 = ((v158 * v186) + 0.5);
      if (v176 > v187)
      {
        v225 = v164 >> 9;
        if (v150 != 1)
        {
          LOBYTE(v225) = v187 >> 5;
        }

        v226 = v164 >> 10;
        v227 = v187 >> 6;
        if (v150 == 4)
        {
          LOBYTE(v227) = v164 >> 7;
        }

        if (v150 != 1)
        {
          LOBYTE(v226) = v227;
        }

        if (v150 == 2)
        {
          v228 = v187 >> 7;
        }

        else
        {
          v228 = v164 >> 6;
        }

        v229 = ((v158 * v186) + 0.5) & 0x1F | (v228 << 7) | (32 * (v225 & 1)) & 0xBF | ((v226 & 1) << 6);
        do
        {
          v230 = v154[(2 * v229) | 1];
          v231 = v229 & 0xF0;
          v229 -= v231 != (v230 & 0xF0);
        }

        while (v231 != (v230 & 0xF0));
        *a2 = v166;
        a2[1] = v178;
        a2[2] = v181;
        v13 = 7;
        a2[3] = v230;
        return v13;
      }

LABEL_169:
      if (++v150 == 5)
      {
        v188 = 0;
        v247 = v26;
        do
        {
          v189 = *&v247.i32[v188];
          v190 = fmaxf(v189, 0.0);
          if (v189 <= 65020.0)
          {
            v191 = v190;
          }

          else
          {
            v191 = 65020.0;
          }

          *&v247.i32[v188] = v191;
          v192 = (v191 * 0.0019531) + 0.5;
          v246.i32[v188] = v192;
          *&v244.i32[v188++] = v192 * 512.0;
        }

        while (v188 != 3);
        v193 = 0;
        v194 = vsub_f32(*(v244.i64 + 4), *(v247.i64 + 4));
        v195 = *&v247.i32[3] + ((((*v244.i32 - *v247.i32) + v194.f32[0]) + v194.f32[1]) * 0.33333);
        v196 = (fmaxf(v195, 0.0) * 0.0019531) + 0.5;
        v197 = 127.49;
        if (v195 <= 65020.0)
        {
          v197 = v196;
        }

        v198.i64[0] = v246.i64[0];
        v198.i32[2] = v246.i32[2];
        v198.i32[3] = v197;
        v199.i64[0] = 0x80000000C0;
        v199.i32[2] = 128;
        v199.i32[3] = (2 * v246.i32[0]) & 0x80;
        v245 = vorrq_s8(vandq_s8(v198, xmmword_1E3113320), v199);
        do
        {
          v200 = v245.i32[v193];
          do
          {
            v201 = v154[(2 * v200) | 1];
            v202 = v200 & 0xF0;
            v200 -= v202 != (v201 & 0xF0);
          }

          while (v202 != (v201 & 0xF0));
          a2[v193++] = v201;
        }

        while (v193 != 4);
        return 7;
      }
    }
  }

  if (a1 <= 11)
  {
    if (a1 != 8)
    {
      if (a1 == 10)
      {
        v105 = vzip2_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v18, v18, 8uLL));
        v106 = vcvt_s32_f32(vadd_f32(v105, 0x3F0000003F000000));
        v107 = vcge_f32(vsub_f32(v105, vcvt_f32_s32(v106)), vdup_n_s32(0xBDCCCCCD));
        v108 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
        a2[4] = v108[2 * v106.i32[1] - v107.i32[1]];
        a2[5] = v108[2 * v106.i32[0] - v107.i32[0]];
        quantize_rgbs(a2, a3, a6);
        return 10;
      }

      else if (a1 == 11)
      {
        quantize_hdr_rgb(a2, a3, v16, v17, *a6.i64, *a7.i64, *v19.i64, *v18.i64, a10);
        return 11;
      }

      return v13;
    }

    v236 = v18;
    v239 = v19;
    if (a3 > 18)
    {
      v13 = 0;
      v234 = 1.0e30;
      if (a3 != 19)
      {
LABEL_194:
        quantize_rgb(&v245, &v244, a3, v18, v19);
        v215 = v244;
        v216 = v245;
        v217 = vadd_s32(vadd_s32(vzip1_s32(*v245.i8, *v244.i8), vzip2_s32(*v245.i8, *v244.i8)), vzip1_s32(*&vextq_s8(v216, v216, 8uLL), *&vextq_s8(v215, v215, 8uLL)));
        if (vcgt_s32(v217, vdup_lane_s32(v217, 1)).u8[0])
        {
          v218.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v245, 2), v245), 1uLL).u64[0];
          v218.i64[1] = v245.i64[1];
          v216.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v244, 2), v244), 1uLL).u64[0];
          v216.i64[1] = v244.i64[1];
          v215 = v218;
        }

        v219 = vsubq_f32(v236, vcvtq_f32_s32(v216));
        v220 = vsubq_f32(v239, vcvtq_f32_s32(v215));
        v221 = vaddq_f32(vmulq_f32(v219, v219), vmulq_f32(v220, v220));
        *v221.i8 = vadd_f32(*&vextq_s8(v221, v221, 8uLL), *v221.i8);
        if (vpadd_f32(*v221.i8, *v221.i8).f32[0] < v234)
        {
          v246 = v244;
          v247 = v245;
          v13 = 8;
        }

        v223 = v246;
        v222 = v247;
        *a2 = v247.i8[0];
        a2[1] = v223.i8[0];
        a2[2] = v222.i8[4];
        a2[3] = v223.i8[4];
        a2[4] = v222.i8[8];
        a2[5] = v223.i8[8];
        return v13;
      }
    }

    else
    {
      if (try_quantize_rgb_delta_blue_contract(&v247, &v246, a3, v18, v19))
      {
        rgba_delta_unpack(&v245, &v244, v247, v246);
        v74 = vsubq_f32(v236, vcvtq_f32_s32(v245));
        v75 = vsubq_f32(v239, vcvtq_f32_s32(v244));
        v76 = vaddq_f32(vmulq_f32(v74, v74), vmulq_f32(v75, v75));
        *v76.i8 = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v76.i8);
        LODWORD(v234) = vpadd_f32(*v76.i8, *v76.i8).u32[0];
        v13 = 9;
        v77 = v239;
        v78 = v236;
      }

      else
      {
        v13 = 0;
        v234 = 1.0e30;
        v78 = v236;
        v77 = v239;
      }

      if (try_quantize_rgb_delta(&v245, &v244, a3, v78, v77))
      {
        rgba_delta_unpack(&v243, &v242, v245, v244);
        v18 = v236;
        v19 = v239;
        v203 = vsubq_f32(v236, vcvtq_f32_s32(v243));
        v204 = vsubq_f32(v239, vcvtq_f32_s32(v242));
        v205 = vaddq_f32(vmulq_f32(v203, v203), vmulq_f32(v204, v204));
        *v205.i8 = vadd_f32(*&vextq_s8(v205, v205, 8uLL), *v205.i8);
        v206 = vpadd_f32(*v205.i8, *v205.i8).f32[0];
        if (v206 < v234)
        {
          v246 = v244;
          v247 = v245;
          v13 = 9;
          v234 = v206;
        }
      }

      else
      {
        v18 = v236;
        v19 = v239;
      }
    }

    if (try_quantize_rgb_blue_contract(&v245, &v244, a3, v18, v19))
    {
      v207 = v244;
      v208 = v245;
      v209 = vadd_s32(vadd_s32(vzip1_s32(*v245.i8, *v244.i8), vzip2_s32(*v245.i8, *v244.i8)), vzip1_s32(*&vextq_s8(v208, v208, 8uLL), *&vextq_s8(v207, v207, 8uLL)));
      if (vcgt_s32(v209, vdup_lane_s32(v209, 1)).u8[0])
      {
        v210.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v245, 2), v245), 1uLL).u64[0];
        v210.i64[1] = v245.i64[1];
        v208.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v244, 2), v244), 1uLL).u64[0];
        v208.i64[1] = v244.i64[1];
        v207 = v210;
      }

      v18 = v236;
      v19 = v239;
      v211 = vsubq_f32(v236, vcvtq_f32_s32(v208));
      v212 = vsubq_f32(v239, vcvtq_f32_s32(v207));
      v213 = vaddq_f32(vmulq_f32(v211, v211), vmulq_f32(v212, v212));
      *v213.i8 = vadd_f32(*&vextq_s8(v213, v213, 8uLL), *v213.i8);
      v214 = vpadd_f32(*v213.i8, *v213.i8).f32[0];
      if (v214 < v234)
      {
        v246 = v244;
        v247 = v245;
        v13 = 8;
        v234 = v214;
      }
    }

    else
    {
      v18 = v236;
      v19 = v239;
    }

    goto LABEL_194;
  }

  switch(a1)
  {
    case 12:
      v232 = vextq_s8(v18, v18, 8uLL).u64[0];
      v233 = vextq_s8(v19, v19, 8uLL).u64[0];
      v237 = v18;
      v240 = v19;
      if (a3 > 18)
      {
        v13 = 0;
        v235 = 1.0e30;
        if (a3 != 19)
        {
LABEL_115:
          quantize_rgb(&v245, &v244, a3, v18, v19);
          v138 = vzip2_s32(v233, v232);
          v139 = vcvt_s32_f32(vadd_f32(v138, 0x3F0000003F000000));
          v140 = vcge_f32(vsub_f32(v138, vcvt_f32_s32(v139)), vdup_n_s32(0xBDCCCCCD));
          v141 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
          v245.i32[3] = v141[2 * v139.i32[1] - v140.i32[1]];
          v244.i32[3] = v141[2 * v139.i32[0] - v140.i32[0]];
          v142 = v244;
          v143 = v245;
          v144 = vadd_s32(vadd_s32(vzip1_s32(*v245.i8, *v244.i8), vzip2_s32(*v245.i8, *v244.i8)), vzip1_s32(*&vextq_s8(v143, v143, 8uLL), *&vextq_s8(v142, v142, 8uLL)));
          if (vcgt_s32(v144, vdup_lane_s32(v144, 1)).u8[0])
          {
            v145.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v245, 2), v245), 1uLL).u64[0];
            v145.i64[1] = v245.i64[1];
            v143.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v244, 2), v244), 1uLL).u64[0];
            v143.i64[1] = v244.i64[1];
            v142 = v145;
          }

          v146 = vsubq_f32(v237, vcvtq_f32_s32(v143));
          v147 = vsubq_f32(v240, vcvtq_f32_s32(v142));
          v148 = vaddq_f32(vmulq_f32(v146, v146), vmulq_f32(v147, v147));
          *v148.i8 = vadd_f32(*&vextq_s8(v148, v148, 8uLL), *v148.i8);
          if (vpadd_f32(*v148.i8, *v148.i8).f32[0] < v235)
          {
            v246 = v244;
            v247 = v245;
            v13 = 12;
          }

          v249.val[1] = v246;
          v249.val[0] = v247;
          *a2 = vqtbl2q_s8(v249, xmmword_1E3113330).u64[0];
          return v13;
        }
      }

      else
      {
        v235 = 1.0e30;
        if (try_quantize_rgb_delta_blue_contract(&v247, &v246, a3, v18, v19) && try_quantize_alpha_delta(&v247, &v246, a3, v240, v237))
        {
          rgba_delta_unpack(&v245, &v244, v247, v246);
          v100 = vsubq_f32(v237, vcvtq_f32_s32(v245));
          v101 = vsubq_f32(v240, vcvtq_f32_s32(v244));
          v102 = vaddq_f32(vmulq_f32(v100, v100), vmulq_f32(v101, v101));
          *v102.i8 = vadd_f32(*&vextq_s8(v102, v102, 8uLL), *v102.i8);
          LODWORD(v235) = vpadd_f32(*v102.i8, *v102.i8).u32[0];
          v13 = 13;
          v103 = v240;
          v104 = v237;
        }

        else
        {
          v13 = 0;
          v104 = v237;
          v103 = v240;
        }

        if (try_quantize_rgb_delta(&v245, &v244, a3, v104, v103) && try_quantize_alpha_delta(&v245, &v244, a3, v237, v240))
        {
          rgba_delta_unpack(&v243, &v242, v245, v244);
          v18 = v237;
          v19 = v240;
          v122 = vsubq_f32(v237, vcvtq_f32_s32(v243));
          v123 = vsubq_f32(v240, vcvtq_f32_s32(v242));
          v124 = vaddq_f32(vmulq_f32(v122, v122), vmulq_f32(v123, v123));
          *v124.i8 = vadd_f32(*&vextq_s8(v124, v124, 8uLL), *v124.i8);
          v125 = vpadd_f32(*v124.i8, *v124.i8).f32[0];
          if (v125 < v235)
          {
            v246 = v244;
            v247 = v245;
            v13 = 13;
            v235 = v125;
          }
        }

        else
        {
          v18 = v237;
          v19 = v240;
        }
      }

      if (try_quantize_rgb_blue_contract(&v245, &v244, a3, v18, v19))
      {
        v126 = vzip2_s32(v232, v233);
        v127 = vcvt_s32_f32(vadd_f32(v126, 0x3F0000003F000000));
        v128 = vcge_f32(vsub_f32(v126, vcvt_f32_s32(v127)), vdup_n_s32(0xBDCCCCCD));
        v129 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
        v245.i32[3] = v129[2 * v127.i32[1] - v128.i32[1]];
        v244.i32[3] = v129[2 * v127.i32[0] - v128.i32[0]];
        v130 = v244;
        v131 = v245;
        v132 = vadd_s32(vadd_s32(vzip1_s32(*v245.i8, *v244.i8), vzip2_s32(*v245.i8, *v244.i8)), vzip1_s32(*&vextq_s8(v131, v131, 8uLL), *&vextq_s8(v130, v130, 8uLL)));
        if (vcgt_s32(v132, vdup_lane_s32(v132, 1)).u8[0])
        {
          v133.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v245, 2), v245), 1uLL).u64[0];
          v133.i64[1] = v245.i64[1];
          v131.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v244, 2), v244), 1uLL).u64[0];
          v131.i64[1] = v244.i64[1];
          v130 = v133;
        }

        v18 = v237;
        v19 = v240;
        v134 = vsubq_f32(v237, vcvtq_f32_s32(v131));
        v135 = vsubq_f32(v240, vcvtq_f32_s32(v130));
        v136 = vaddq_f32(vmulq_f32(v134, v134), vmulq_f32(v135, v135));
        *v136.i8 = vadd_f32(*&vextq_s8(v136, v136, 8uLL), *v136.i8);
        v137 = vpadd_f32(*v136.i8, *v136.i8).f32[0];
        if (v137 < v235)
        {
          v246 = v244;
          v247 = v245;
          v13 = 12;
          v235 = v137;
        }
      }

      else
      {
        v18 = v237;
        v19 = v240;
      }

      goto LABEL_115;
    case 14:
      v109 = vmul_f32(vzip2_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vdup_n_s32(0x3B7F00FFu));
      v110 = vdup_n_s32(0x437F0000u);
      v111 = vbsl_s8(vcgt_f32(v109, v110), v110, vmaxnm_f32(v109, 0));
      v112 = vcvt_s32_f32(vadd_f32(v111, 0x3F0000003F000000));
      v113 = vsub_f32(v111, vcvt_f32_s32(v112));
      v114 = COERCE_DOUBLE(vcge_f32(v113, vdup_n_s32(0xBDCCCCCD)));
      v115 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
      a2[6] = v115[2 * v112.i32[1] - HIDWORD(v114)];
      a2[7] = v115[2 * v112.i32[0] - LODWORD(v114)];
      quantize_hdr_rgb(a2, a3, v16, v17, v114, *&v113, *&v112, *&v110, a10);
      return 14;
    case 15:
      v238 = v16.f32[3];
      v241 = v17.f32[3];
      quantize_hdr_rgb(a2, a3, v16, v17, *a6.i64, *a7.i64, *v19.i64, *v18.i64, a10);
      v28 = fmaxf(v238, 0.0) + 0.5;
      v29 = fmaxf(v241, 0.0) + 0.5;
      v30 = 65280.0;
      if (v238 > 65280.0)
      {
        v28 = 65280.0;
      }

      v31 = v28;
      if (v241 <= 65280.0)
      {
        v30 = v29;
      }

      v32 = v30;
      v33 = -3;
      v34 = 256;
      v35 = 2;
      v36 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
      v37 = 0x80;
      while (1)
      {
        v38 = ((0x80u >> v35) + v31) >> (v33 + 9);
        v39 = v36[(2 * (v34 & 0x80 | v38 & 0x7F)) | 1];
        if (((v34 ^ v39) & 0x80) == 0)
        {
          v40 = (((0x80u >> v35) + v32) >> (v33 + 9)) - (v38 & 0xFFFFFF80 | v39 & 0x7F);
          v41 = 0x20u >> v35;
          if (v40 + v41 < 0 == __OFADD__(v40, v41) && v40 < v41)
          {
            v43 = (v38 >> 7 << (v33 + 7)) | v37 & 0x80 | v40 & (2 * v41 - 1);
            v44 = v36[2 * v43 + 1];
            if (((v43 ^ v44) & quantize_hdr_alpha(float,float,unsigned char *,quant_method)::testbits[v35]) == 0)
            {
              break;
            }
          }
        }

        --v35;
        v37 -= 64;
        v34 -= 128;
        if (__CFADD__(v33++, 1))
        {
          a2[6] = v36[((v31 + 256) >> 8) | 0x101];
          LOBYTE(v44) = v36[((v32 + 256) >> 8) | 0x101];
LABEL_200:
          a2[7] = v44;
          return 15;
        }
      }

      a2[6] = v39;
      goto LABEL_200;
  }

  return v13;
}